from http.server import BaseHTTPRequestHandler, HTTPServer
from urllib.parse import urlparse, parse_qs
import json
from pathlib import Path
import os

PORT = int(os.environ.get("PORT", "8080"))
BASE = Path(__file__).parent
CATALOG_FILE = BASE / "catalog.json"


def empty_catalog():
    return {
        "movies": [],
        "series": [],
        "live": [],
        "content": []
    }


def load_catalog():
    if not CATALOG_FILE.exists():
        return empty_catalog()

    try:
        data = json.loads(
            CATALOG_FILE.read_text(encoding="utf-8")
        )

        if not isinstance(data, dict):
            return empty_catalog()

        for key in ["movies", "series", "live", "content"]:
            if not isinstance(data.get(key), list):
                data[key] = []

        return data

    except Exception as e:
        print("CATALOG ERROR:", e)
        return empty_catalog()


def save_catalog(catalog):
    CATALOG_FILE.write_text(
        json.dumps(
            catalog,
            ensure_ascii=False,
            indent=2
        ),
        encoding="utf-8"
    )


def all_content(catalog):
    items = []

    for key in ["content", "movies", "series"]:
        for item in catalog.get(key, []):
            if isinstance(item, dict):
                items.append(item)

    return items


class Handler(BaseHTTPRequestHandler):

    def log_message(self, format, *args):
        print("[API]", format % args)


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


        if path == "/api/admin/content":

            try:

                body = self.read_json_body()

                tmdb_id = int(
                    body.get("tmdb_id", 0)
                )

                video_url = str(
                    body.get("video_url", "")
                ).strip()
                source_type = str(
                    body.get("source_type", "hls")
                ).strip().lower()
                source_url = str(
                    body.get("source_url", video_url)
                ).strip()

                title = str(
                    body.get("title", "")
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


                if source_type not in ("hls", "official_page", "unavailable"):
                    self.send_json(
                        {
                            "success": False,
                            "error": "Invalid source_type"
                        },
                        400
                    )
                    return

                if source_type == "unavailable":
                    video_url = ""
                    source_url = ""
                else:
                    if not source_url:
                        self.send_json(
                            {
                                "success": False,
                                "error": "Source URL required"
                            },
                            400
                        )
                        return

                    if source_type == "hls":
                        video_url = source_url
                    else:
                        video_url = ""


                catalog = load_catalog()

                updated = False


                for item in catalog["content"]:

                    if str(
                        item.get("tmdb_id", "")
                    ) == str(tmdb_id):

                        item["video_url"] = video_url
                        item["authorized"] = True

                        if title:
                            item["title"] = title

                        updated = True
                        break


                if not updated:

                    catalog["content"].append(
                        {
                            "tmdb_id": tmdb_id,
                            "title": title,
                            "video_url": video_url,
                            "authorized": True
                        }
                    )


                save_catalog(catalog)

                self.send_json(
                    {
                        "success": True,
                        "message": "Content saved"
                    }
                )


            except Exception as e:

                self.send_json(
                    {
                        "success": False,
                        "error": str(e)
                    },
                    400
                )


            return


        if path == "/api/admin/live":

            try:

                body = self.read_json_body()

                channel_id = str(
                    body.get("id", "")
                ).strip()

                title = str(
                    body.get("title", "")
                ).strip()

                video_url = str(
                    body.get("video_url", "")
                ).strip()

                lang = str(
                    body.get("lang", "")
                ).strip()

                category = str(
                    body.get(
                        "category",
                        "Live TV"
                    )
                ).strip()

                poster = str(
                    body.get("poster", "")
                ).strip()


                if not channel_id:
                    self.send_json(
                        {
                            "success": False,
                            "error": "Channel ID required"
                        },
                        400
                    )
                    return


                if not title:
                    self.send_json(
                        {
                            "success": False,
                            "error": "Channel title required"
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

                new_channel = {
                    "id": channel_id,
                    "title": title,
                    "video_url": video_url,
                    "source_type": source_type,
                    "source_url": source_url,
                    "lang": lang,
                    "category": category,
                    "poster": poster,
                    "backdrop": str(body.get("backdrop", "")).strip(),
                    "current_program": str(body.get("current_program", "")).strip(),
                    "next_program": str(body.get("next_program", "")).strip(),
                    "authorized": True
                }

                updated = False


                for i, item in enumerate(
                    catalog["live"]
                ):

                    if str(
                        item.get("id", "")
                    ) == channel_id:

                        catalog["live"][i] = new_channel

                        updated = True
                        break


                if not updated:
                    catalog["live"].append(
                        new_channel
                    )


                save_catalog(catalog)

                self.send_json(
                    {
                        "success": True,
                        "message": (
                            "Live channel updated"
                            if updated
                            else
                            "Live channel added"
                        ),
                        "channel": new_channel
                    }
                )


            except Exception as e:

                self.send_json(
                    {
                        "success": False,
                        "error": str(e)
                    },
                    400
                )


            return


        self.send_json(
            {
                "error": "Not found"
            },
            404
        )


    def do_GET(self):

        parsed = urlparse(self.path)
        path = parsed.path
        query = parse_qs(parsed.query)

        catalog = load_catalog()


        if path == "/":

            self.send_json(
                {
                    "status":
                        "GAMA AALA Content API Running",

                    "endpoints": [
                        "/api/content",
                        "/api/live",
                        "/api/admin/live"
                    ]
                }
            )

            return


        if path == "/api/content":

            live = []

            for channel in catalog.get(
                "live",
                []
            ):

                if not isinstance(
                    channel,
                    dict
                ):
                    continue

                if not channel.get(
                    "authorized",
                    False
                ):
                    continue

                if not str(
                    channel.get(
                        "video_url",
                        ""
                    )
                ).strip():
                    continue

                live.append(channel)


            self.send_json(
                {
                    "content": all_content(catalog),
                    "live": live
                }
            )

            return


        if path == "/api/live":

            channel_id = query.get(
                "id",
                [""]
            )[0]

            live = []


            for channel in catalog.get(
                "live",
                []
            ):

                if not isinstance(
                    channel,
                    dict
                ):
                    continue

                if not channel.get(
                    "authorized",
                    False
                ):
                    continue

                if not str(
                    channel.get(
                        "video_url",
                        ""
                    )
                ).strip():
                    continue

                live.append(channel)


            if not channel_id:

                self.send_json(
                    {
                        "live": live
                    }
                )

                return


            for channel in live:

                if str(
                    channel.get(
                        "id",
                        ""
                    )
                ) == channel_id:

                    self.send_json(channel)
                    return


            self.send_json(
                {
                    "error": "Channel not found"
                },
                404
            )

            return


        if path == "/api/movies":

            self.send_json(
                {
                    "movies":
                        catalog.get(
                            "movies",
                            []
                        )
                }
            )

            return


        if path == "/api/series":

            self.send_json(
                {
                    "series":
                        catalog.get(
                            "series",
                            []
                        )
                }
            )

            return


        self.send_json(
            {
                "error": "Not found"
            },
            404
        )


if __name__ == "__main__":

    print(
        "GAMA AALA API starting on port",
        PORT
    )

    HTTPServer(
        (
            "0.0.0.0",
            PORT
        ),
        Handler
    ).serve_forever()
