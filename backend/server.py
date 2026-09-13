from http.server import BaseHTTPRequestHandler, HTTPServer
from urllib.parse import urlparse, parse_qs
import json
from pathlib import Path
import os

PORT = int(os.environ.get("PORT", "8080"))
BASE = Path(__file__).parent
CATALOG_FILE = BASE / "catalog.json"


def load_catalog():
    if not CATALOG_FILE.exists():
        return {
            "movies": [],
            "series": [],
            "live": [],
            "content": []
        }

    try:
        return json.loads(CATALOG_FILE.read_text(encoding="utf-8"))
    except Exception as e:
        print("CATALOG ERROR:", e)
        return {
            "movies": [],
            "series": [],
            "live": [],
            "content": []
        }


def all_content(catalog):
    items = []

    for key in ["content", "movies", "series"]:
        for item in catalog.get(key, []):
            if isinstance(item, dict):
                items.append(item)

    return items


def save_catalog(catalog):
    CATALOG_FILE.write_text(
        json.dumps(
            catalog,
            ensure_ascii=False,
            indent=2
        ),
        encoding="utf-8"
    )


class Handler(BaseHTTPRequestHandler):

    def send_json(self, data, code=200):
        body = json.dumps(
            data,
            ensure_ascii=False
        ).encode("utf-8")

        self.send_response(code)

        self.send_header(
            "Content-Type",
            "application/json; charset=utf-8"
        )

        self.send_header(
            "Access-Control-Allow-Origin",
            "*"
        )

        self.send_header(
            "Content-Length",
            str(len(body))
        )

        self.end_headers()
        self.wfile.write(body)


    def read_json_body(self):
        length = int(
            self.headers.get(
                "Content-Length",
                "0"
            )
        )

        if length <= 0:
            return {}

        body = self.rfile.read(length)

        return json.loads(
            body.decode("utf-8")
        )


    def do_POST(self):

        parsed = urlparse(self.path)
        path = parsed.path

        if path != "/api/admin/content":
            self.send_json(
                {"error": "Not found"},
                404
            )
            return

        try:

            body = self.read_json_body()

            tmdb_id = int(
                body.get(
                    "tmdb_id",
                    0
                )
            )

            video_url = str(
                body.get(
                    "video_url",
                    ""
                )
            ).strip()

            title = str(
                body.get(
                    "title",
                    ""
                )
            ).strip()

            if tmdb_id <= 0:
                self.send_json(
                    {
                        "success": False,
                        "error": "Invalid TMDB ID"
                    },
                    400
                )
                return

            if not video_url:
                self.send_json(
                    {
                        "success": False,
                        "error": "Video URL required"
                    },
                    400
                )
                return

            catalog = load_catalog()

            if not isinstance(
                catalog.get("content"),
                list
            ):
                catalog["content"] = []

            updated = False

            for item in catalog["content"]:

                if str(
                    item.get(
                        "tmdb_id",
                        ""
                    )
                ) == str(tmdb_id):

                    item["video_url"] = video_url
                    item["authorized"] = True

                    if title:
                        item["title"] = title

                    updated = True
                    break

            if not updated:

                catalog["content"].append({
                    "tmdb_id": tmdb_id,
                    "title": title,
                    "video_url": video_url,
                    "authorized": True
                })

            save_catalog(catalog)

            self.send_json({
                "success": True,
                "tmdb_id": tmdb_id,
                "message": (
                    "Content updated"
                    if updated
                    else
                    "Content added"
                )
            })

        except Exception as e:

            self.send_json({
                "success": False,
                "error": str(e)
            }, 400)


    def do_GET(self):

        parsed = urlparse(self.path)
        path = parsed.path
        query = parse_qs(parsed.query)

        catalog = load_catalog()

        if path == "/":

            self.send_json({
                "status": "GAMA AALA Content API Running",
                "version": "REAL_SOURCE_API_V1",
                "endpoints": [
                    "/api/content",
                    "/api/movies",
                    "/api/series",
                    "/api/live",
                    "/api/video?tmdb_id=123",
                    "/api/live?id=channel_id"
                ]
            })

            return


        if path == "/api/content":

            self.send_json({
                "content": all_content(catalog),
                "live": catalog.get("live", [])
            })

            return


        if path == "/api/movies":

            self.send_json({
                "movies": catalog.get("movies", [])
            })

            return


        if path == "/api/series":

            self.send_json({
                "series": catalog.get("series", [])
            })

            return


        if path == "/api/live":

            channel_id = query.get(
                "id",
                [""]
            )[0]

            live = catalog.get(
                "live",
                []
            )

            if not channel_id:

                self.send_json({
                    "live": live
                })

                return

            for channel in live:

                if str(
                    channel.get("id", "")
                ) == str(channel_id):

                    if not channel.get(
                        "authorized",
                        False
                    ):
                        self.send_json({
                            "found": False,
                            "error": "Channel is not authorized"
                        }, 403)

                        return

                    self.send_json({
                        "found": True,
                        "title": channel.get(
                            "title",
                            ""
                        ),
                        "video_url": channel.get(
                            "video_url",
                            ""
                        ),
                        "authorized": True
                    })

                    return

            self.send_json({
                "found": False,
                "video_url": ""
            }, 404)

            return


        if path == "/api/video":

            tmdb_id = query.get(
                "tmdb_id",
                [""]
            )[0]

            for item in all_content(catalog):

                if str(
                    item.get(
                        "tmdb_id",
                        ""
                    )
                ) == str(tmdb_id):

                    if not item.get(
                        "authorized",
                        False
                    ):
                        self.send_json({
                            "found": False,
                            "error": "Content source is not authorized"
                        }, 403)

                        return

                    video_url = item.get(
                        "video_url",
                        ""
                    )

                    if not video_url:
                        self.send_json({
                            "found": False,
                            "error": "No video source configured"
                        })

                        return

                    self.send_json({
                        "found": True,
                        "title": item.get(
                            "title",
                            ""
                        ),
                        "kind": item.get(
                            "kind",
                            ""
                        ),
                        "video_url": video_url,
                        "authorized": True
                    })

                    return

            self.send_json({
                "found": False,
                "video_url": ""
            }, 404)

            return


        self.send_json(
            {
                "error": "Not found"
            },
            404
        )


print("================================")
print("GAMA AALA REAL SOURCE API")
print("AUTHORIZED CONTENT ENABLED")
print("MOVIES API ENABLED")
print("SERIES API ENABLED")
print("LIVE TV API ENABLED")
print("================================")

HTTPServer(
    ("0.0.0.0", PORT),
    Handler
).serve_forever()
