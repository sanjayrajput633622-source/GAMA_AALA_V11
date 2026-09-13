package com.gamaala.webseries;

import android.app.*;
import android.os.*;
import android.graphics.*;
import android.graphics.drawable.GradientDrawable;
import android.view.*;
import android.widget.*;
import android.text.*;
import android.content.*;

import android.webkit.*;
import java.io.*;
import java.util.*;
import java.net.*;
import org.json.*;

public class MainActivity extends Activity {

    int BG = Color.rgb(9,10,14);
    int PANEL = Color.rgb(19,21,28);
    int CARD = Color.rgb(25,27,35);
    int WHITE = Color.rgb(248,248,250);
    int MUTED = Color.rgb(155,158,168);
    int ACCENT = Color.rgb(255,190,55);

    FrameLayout screen;
    LinearLayout current;
    ArrayList<Item> data = new ArrayList<>();
    HashSet<String> myList = new HashSet<>();
    SharedPreferences prefs;

    static class Item {

        String title, kind, lang, genre, rating, poster;
        String year, duration, description, trailer;
        String videoUrl;

        String category, backdrop;
        int tmdbId;

        Item(JSONObject o) {

            title = o.optString("title");
            kind = o.optString("kind");
            lang = o.optString("lang");
            genre = o.optString("genre");
            rating = o.optString("rating");
            poster = o.optString("poster");

            year = o.optString("year");
            duration = o.optString("duration");
            description = o.optString("description");
            trailer = o.optString("trailer");
            videoUrl = o.optString("video_url");

            category = o.optString("category");
            backdrop = o.optString("backdrop");
            tmdbId = o.optInt("tmdb_id", 0);
        }
    }

    @Override
    public void onCreate(Bundle b) {
        super.onCreate(b);

        // Keep system bars visible and use app colors.
        getWindow().setStatusBarColor(BG);
        getWindow().setNavigationBarColor(Color.rgb(18,20,26));

        if (Build.VERSION.SDK_INT >= 30) {
            getWindow().setDecorFitsSystemWindows(true);
        }

        setContentView(R.layout.activity_main);

        screen = findViewById(R.id.screen);

        prefs = getSharedPreferences("gama_aala", MODE_PRIVATE);

        load();
        loadMyList();

        findViewById(R.id.navHome).setOnClickListener(v -> home());
        findViewById(R.id.navFind).setOnClickListener(v -> find());
        findViewById(R.id.navTv).setOnClickListener(v -> shows());
        findViewById(R.id.navDownload).setOnClickListener(v -> downloads());
        findViewById(R.id.navMe).setOnClickListener(v -> profile());

        home();
    }

    void load() {

        synchronized (data) {
            data.clear();
        }

        new Thread(() -> loadTmdb()).start();
    }

    void loadPoster(
        ImageView img,
        String poster,
        String backdrop
    ) {

        img.setBackgroundColor(
            Color.rgb(40, 42, 50)
        );

        String imagePath = poster;

        if (
            imagePath == null ||
            imagePath.trim().isEmpty()
        ) {
            imagePath = backdrop;
        }

        if (
            imagePath == null ||
            imagePath.trim().isEmpty()
        ) {
            return;
        }

        final String path = imagePath;

        if (path.startsWith("/")) {

            new Thread(() -> {

                HttpURLConnection conn = null;
                InputStream in = null;

                try {

                    URL url = new URL(
                        "https://image.tmdb.org/t/p/w500"
                        + path
                    );

                    conn =
                        (HttpURLConnection)
                        url.openConnection();

                    conn.setConnectTimeout(10000);
                    conn.setReadTimeout(15000);

                    in =
                        conn.getInputStream();

                    Bitmap bitmap =
                        BitmapFactory.decodeStream(in);

                    final Bitmap finalBitmap =
                        bitmap;

                    runOnUiThread(() -> {

                        if (
                            finalBitmap != null
                        ) {
                            img.setImageBitmap(
                                finalBitmap
                            );
                        }

                    });

                } catch (Exception e) {

                } finally {

                    try {

                        if (in != null) {
                            in.close();
                        }

                    } catch (Exception e) {
                    }

                    if (conn != null) {
                        conn.disconnect();
                    }
                }

            }).start();

            return;
        }

        int id =
            getResources().getIdentifier(
                path,
                "drawable",
                getPackageName()
            );

        if (id != 0) {
            img.setImageResource(id);
        }
    }

    void loadPoster(
        ImageView img,
        String poster
    ) {

        loadPoster(
            img,
            poster,
            ""
        );
    }

    void loadTmdb() {

        try {

            String apiKey = BuildConfig.TMDB_API_KEY;

            if (
                apiKey == null ||
                apiKey.trim().isEmpty()
            ) {
                return;
            }

            String key =
                URLEncoder.encode(apiKey, "UTF-8");

            // INDIAN MOVIES

            loadTmdbPage(
                "https://api.themoviedb.org/3/discover/movie?api_key="
                + key
                + "&with_original_language=hi"
                + "&sort_by=popularity.desc",
                "Movie",
                "Bollywood Movies"
            );

            loadTmdbPage(
                "https://api.themoviedb.org/3/discover/movie?api_key="
                + key
                + "&with_original_language=ta"
                + "&sort_by=popularity.desc",
                "Movie",
                "Tamil Movies"
            );

            loadTmdbPage(
                "https://api.themoviedb.org/3/discover/movie?api_key="
                + key
                + "&with_original_language=te"
                + "&sort_by=popularity.desc",
                "Movie",
                "Telugu Movies"
            );

            loadTmdbPage(
                "https://api.themoviedb.org/3/discover/movie?api_key="
                + key
                + "&with_original_language=ml"
                + "&sort_by=popularity.desc",
                "Movie",
                "Malayalam Movies"
            );

            // INDIAN WEB SERIES

            loadTmdbPage(
                "https://api.themoviedb.org/3/discover/tv?api_key="
                + key
                + "&with_original_language=hi"
                + "&sort_by=popularity.desc",
                "Series",
                "Hindi Web Series"
            );

            loadTmdbPage(
                "https://api.themoviedb.org/3/discover/tv?api_key="
                + key
                + "&with_original_language=ta"
                + "&sort_by=popularity.desc",
                "Series",
                "Tamil Web Series"
            );

            loadTmdbPage(
                "https://api.themoviedb.org/3/discover/tv?api_key="
                + key
                + "&with_original_language=te"
                + "&sort_by=popularity.desc",
                "Series",
                "Telugu Web Series"
            );

            // INTERNATIONAL CONTENT

            loadTmdbPage(
                "https://api.themoviedb.org/3/trending/movie/week?api_key="
                + key,
                "Movie",
                "Trending Movies"
            );

            loadTmdbPage(
                "https://api.themoviedb.org/3/movie/popular?api_key="
                + key,
                "Movie",
                "Popular Movies"
            );

            loadTmdbPage(
                "https://api.themoviedb.org/3/trending/tv/week?api_key="
                + key,
                "Series",
                "Trending Series"
            );

            loadVideoCatalog();

            runOnUiThread(() -> {

                Toast.makeText(
                    this,
                    "Latest content loaded",
                    Toast.LENGTH_SHORT
                ).show();
            });

        } catch (Exception e) {

            runOnUiThread(() ->
                Toast.makeText(
                    this,
                    "Online catalog unavailable",
                    Toast.LENGTH_SHORT
                ).show()
            );

        }

    }

    void loadTmdbPage(
        String urlText,
        String kind,
        String category
    ) throws Exception {

        HttpURLConnection conn =
            (HttpURLConnection)
            new URL(urlText).openConnection();

        conn.setRequestMethod("GET");
        conn.setConnectTimeout(10000);
        conn.setReadTimeout(15000);

        InputStream in = conn.getInputStream();

        ByteArrayOutputStream out =
            new ByteArrayOutputStream();

        byte[] buffer = new byte[4096];
        int n;

        while ((n = in.read(buffer)) != -1) {
            out.write(buffer, 0, n);
        }

        in.close();
        conn.disconnect();

        JSONObject root =
            new JSONObject(
                out.toString("UTF-8")
            );

        JSONArray results =
            root.getJSONArray("results");

        for (int i = 0; i < results.length(); i++) {

            JSONObject o =
                results.getJSONObject(i);

            String title =
                kind.equals("Movie")
                ? o.optString("title")
                : o.optString("name");

            String date =
                kind.equals("Movie")
                ? o.optString("release_date")
                : o.optString("first_air_date");

            String year =
                date.length() >= 4
                ? date.substring(0, 4)
                : "";

            String language =
                o.optString("original_language", "");

            JSONObject item =
                new JSONObject();

            item.put("title", title);
            item.put("kind", kind);
            item.put("lang", language.toUpperCase());
            item.put("genre", "");
            item.put(
                "rating",
                String.format(
                    java.util.Locale.US,
                    "%.1f",
                    o.optDouble("vote_average", 0)
                )
            );

            item.put(
                "poster",
                o.optString("poster_path")
            );

            item.put(
                "backdrop",
                o.optString("backdrop_path")
            );

            item.put(
                "tmdb_id",
                o.optInt("id", 0)
            );

            item.put(
                "category",
                category
            );

            item.put("year", year);
            item.put("duration", "");
            item.put(
                "description",
                o.optString("overview")
            );
            item.put("trailer", "");

            synchronized (data) {
                data.add(new Item(item));
            }

            android.util.Log.d(
                "GAMA_CONTENT",
                "TITLE=" + title
                + " | TMDB_ID="
                + o.optInt("id", 0)
                + " | KIND="
                + kind
            );
        }
    }


    void loadVideoCatalog() {

        new Thread(() -> {

            try {

                InputStream input =
                    getAssets().open(
                        "content_catalog.json"
                    );

                ByteArrayOutputStream output =
                    new ByteArrayOutputStream();

                byte[] buffer =
                    new byte[4096];

                int count;

                while (
                    (count = input.read(buffer)) != -1
                ) {

                    output.write(
                        buffer,
                        0,
                        count
                    );
                }

                input.close();

                JSONObject root =
                    new JSONObject(
                        output.toString("UTF-8")
                    );

                JSONArray content =
                    root.optJSONArray("content");

                if (content == null) {
                    return;
                }

                synchronized (data) {

                    for (
                        int i = 0;
                        i < content.length();
                        i++
                    ) {

                        JSONObject entry =
                            content.getJSONObject(i);

                        int tmdbId =
                            entry.optInt(
                                "tmdb_id",
                                0
                            );

                        String videoUrl =
                            entry.optString(
                                "video_url",
                                ""
                            );

                        if (
                            tmdbId == 0 ||
                            videoUrl.trim().isEmpty()
                        ) {
                            continue;
                        }

                        for (Item item : data) {

                            if (
                                item.tmdbId == tmdbId
                            ) {

                                item.videoUrl =
                                    videoUrl;
                            }
                        }
                    }
                }

                runOnUiThread(() ->
                    home()
                );

            } catch (Exception e) {

                runOnUiThread(() ->
                    Toast.makeText(
                        MainActivity.this,
                        "Content catalog unavailable",
                        Toast.LENGTH_SHORT
                    ).show()
                );
            }

        }).start();
    }


    void loadMyList() {
        Set<String> saved =
            prefs.getStringSet("my_list", new HashSet<>());

        myList.clear();
        myList.addAll(saved);
    }

    void saveMyList() {

        prefs.edit()
            .putStringSet(
                "my_list",
                new HashSet<>(myList)
            )
            .apply();
    }

    int dp(int v) {
        return (int) (
            v * getResources()
                .getDisplayMetrics()
                .density + 0.5f
        );
    }

    GradientDrawable shape(int color, float r) {

        GradientDrawable g =
            new GradientDrawable();

        g.setColor(color);

        g.setCornerRadius(r);

        return g;
    }

    TextView tv(
        String s,
        float size,
        int color,
        boolean bold
    ) {

        TextView t =
            new TextView(this);

        t.setText(s);

        t.setTextSize(size);

        t.setTextColor(color);

        t.setGravity(Gravity.CENTER_VERTICAL);

        if (bold) {

            t.setTypeface(
                Typeface.DEFAULT,
                Typeface.BOLD
            );
        }

        return t;
    }

    Button btn(String s) {

        Button b =
            new Button(this);

        b.setText(s);

        b.setAllCaps(false);

        b.setTextColor(WHITE);

        b.setTextSize(13);

        b.setBackgroundColor(
            Color.TRANSPARENT
        );

        b.setMinHeight(0);

        b.setMinWidth(0);

        return b;
    }

    void base() {

        screen.removeAllViews();

        ScrollView sv =
            new ScrollView(this);

        sv.setFillViewport(true);

        sv.setBackgroundColor(BG);

        LinearLayout page =
            new LinearLayout(this);

        page.setOrientation(
            LinearLayout.VERTICAL
        );

        // Safe top spacing: prevents header from going under
        // the Android status bar on edge-to-edge devices.
        page.setPadding(
            0,dp(22),0,dp(30)
        );

        sv.addView(page);

        screen.addView(sv);

        current = page;
    }

    void brandBar() {

        LinearLayout r =
            new LinearLayout(this);

        r.setPadding(
            dp(18),dp(8),dp(18),dp(6)
        );

        r.setGravity(
            Gravity.CENTER_VERTICAL
        );

        TextView logo =
            tv(
                "GAMA AALA",
                22,
                WHITE,
                true
            );

        r.addView(
            logo,
            new LinearLayout.LayoutParams(
                0,
                dp(52),
                1
            )
        );

        TextView list =
            tv(
                "♥",
                26,
                ACCENT,
                true
            );

        list.setGravity(
            Gravity.CENTER
        );

        list.setOnClickListener(
            v -> list()
        );

        r.addView(
            list,
            new LinearLayout.LayoutParams(
                dp(48),
                dp(52)
            )
        );

        TextView profile =
            tv(
                "●",
                22,
                ACCENT,
                true
            );

        profile.setGravity(
            Gravity.CENTER
        );

        profile.setOnClickListener(
            v -> profile()
        );

        r.addView(
            profile,
            new LinearLayout.LayoutParams(
                dp(48),
                dp(52)
            )
        );

        current.addView(r);
    }

    void searchBar() {

        LinearLayout r =
            new LinearLayout(this);

        r.setPadding(
            16,4,16,8
        );

        EditText e =
            new EditText(this);

        e.setHint(
            "Search movies, web series..."
        );

        e.setHintTextColor(
            Color.rgb(115,118,128)
        );

        e.setTextColor(WHITE);

        e.setTextSize(15);

        e.setSingleLine(true);

        e.setPadding(
            18,0,18,0
        );

        e.setBackground(
            shape(
                Color.rgb(28,30,38),
                55
            )
        );

        e.setOnClickListener(
            v -> find()
        );

        r.addView(
            e,
            new LinearLayout.LayoutParams(
                -1,
                dp(54)
            )
        );

        current.addView(r);
    }

    void home() {

        base();

        brandBar();

        searchBar();

        quickTabs();

        hero();

        railCategory(
            "Bollywood Movies",
            "Bollywood Movies"
        );

        railCategory(
            "Tamil Movies",
            "Tamil Movies"
        );

        railCategory(
            "Telugu Movies",
            "Telugu Movies"
        );

        railCategory(
            "Malayalam Movies",
            "Malayalam Movies"
        );

        railCategory(
            "Hindi Web Series",
            "Hindi Web Series"
        );

        railCategory(
            "Tamil Web Series",
            "Tamil Web Series"
        );

        railCategory(
            "Telugu Web Series",
            "Telugu Web Series"
        );

        railCategory(
            "Trending Movies",
            "Trending Movies"
        );

        railCategory(
            "Popular Movies",
            "Popular Movies"
        );

        railCategory(
            "Trending Series",
            "Trending Series"
        );

        sectionGenres();

    }

    void quickTabs() {

        LinearLayout r =
            new LinearLayout(this);

        r.setPadding(
            12,0,12,2
        );

        String[] names = {
            "Home",
            "Movies",
            "Series",
            "My List"
        };

        for (String n : names) {

            Button b =
                btn(n);

            b.setTextSize(14);

            b.setTextColor(
                n.equals("Home")
                ? ACCENT
                : MUTED
            );

            r.addView(
                b,
                new LinearLayout.LayoutParams(
                    0,
                    46,
                    1
                )
            );

            if (n.equals("Movies")) {
                b.setOnClickListener(
                    v -> movies()
                );
            }

            if (n.equals("Series")) {
                b.setOnClickListener(
                    v -> shows()
                );
            }

            if (n.equals("My List")) {
                b.setOnClickListener(
                    v -> list()
                );
            }
        }

        current.addView(r);
    }

    void hero() {

        if (data.size() == 0) {
            return;
        }

        Item x = data.get(0);

        LinearLayout h =
            new LinearLayout(this);

        h.setOrientation(
            LinearLayout.VERTICAL
        );

        h.setPadding(
            22,20,22,18
        );

        h.setBackground(
            shape(
                Color.rgb(34,35,42),
                24
            )
        );

        h.addView(
            tv(
                "FEATURED ON GAMA AALA",
                11,
                ACCENT,
                true
            )
        );

        h.addView(
            tv(
                x.title,
                29,
                WHITE,
                true
            )
        );

        h.addView(
            tv(
                x.year
                + " • "
                + x.lang
                + " • ★ "
                + x.rating,
                13,
                MUTED,
                false
            )
        );

        TextView desc =
            tv(
                x.description,
                13,
                MUTED,
                false
            );

        desc.setMaxLines(2);

        h.addView(desc);

        LinearLayout buttons =
            new LinearLayout(this);

        buttons.setPadding(
            0,10,0,0
        );

        Button watch =
            btn(
                "▶  DETAILS"
            );

        watch.setTextColor(
            Color.BLACK
        );

        watch.setBackground(
            shape(
                ACCENT,
                40
            )
        );

        watch.setOnClickListener(
            v -> details(x)
        );

        buttons.addView(
            watch,
            new LinearLayout.LayoutParams(
                dp(150),
                dp(48)
            )
        );

        Button add =
            btn(
                myList.contains(x.title)
                ? "♥ Saved"
                : "＋ My List"
            );

        add.setOnClickListener(
            v -> {

                toggleMyList(x);

                add.setText(
                    myList.contains(x.title)
                    ? "♥ Saved"
                    : "＋ My List"
                );
            }
        );

        buttons.addView(
            add,
            new LinearLayout.LayoutParams(
                dp(130),
                dp(48)
            )
        );

        h.addView(buttons);

        LinearLayout.LayoutParams p =
            new LinearLayout.LayoutParams(
                -1,
                dp(230)
            );

        p.setMargins(
            12,8,12,12
        );

        current.addView(h,p);
    }


    void railCategory(
        String title,
        String category
    ) {

        ArrayList<Item> items = new ArrayList<>();

        synchronized (data) {
            for (Item x : data) {
                if (category.equals(x.category)) {
                    items.add(x);
                }
            }
        }

        if (items.size() == 0) {
            return;
        }

        LinearLayout head =
            new LinearLayout(this);

        head.setPadding(
            dp(18),
            dp(12),
            dp(12),
            dp(4)
        );

        TextView h =
            tv(
                title,
                20,
                WHITE,
                true
            );

        head.addView(
            h,
            new LinearLayout.LayoutParams(
                0,
                dp(52),
                1
            )
        );

        current.addView(head);

        HorizontalScrollView hs =
            new HorizontalScrollView(this);

        hs.setHorizontalScrollBarEnabled(false);

        LinearLayout row =
            new LinearLayout(this);

        row.setPadding(
            dp(14),
            0,
            dp(10),
            dp(8)
        );

        for (Item x : items) {
            addPoster(row, x);
        }

        hs.addView(row);

        current.addView(hs);
    }

    void rail(
        String title,
        int start,
        int count
    ) {

        LinearLayout head =
            new LinearLayout(this);

        head.setPadding(
            dp(18),dp(12),dp(12),dp(4)
        );

        TextView h =
            tv(
                title,
                20,
                WHITE,
                true
            );

        head.addView(
            h,
            new LinearLayout.LayoutParams(
                0,
                dp(52),
                1
            )
        );

        current.addView(head);

        HorizontalScrollView hs =
            new HorizontalScrollView(this);

        hs.setHorizontalScrollBarEnabled(false);

        LinearLayout row =
            new LinearLayout(this);

        row.setPadding(
            14,0,10,8
        );

        for (
            int i = start;
            i < Math.min(
                start + count,
                data.size()
            );
            i++
        ) {

            addPoster(
                row,
                data.get(i)
            );
        }

        hs.addView(row);

        current.addView(hs);
    }

    void addPoster(
        LinearLayout row,
        Item x
    ) {

        LinearLayout c =
            new LinearLayout(this);

        c.setOrientation(
            LinearLayout.VERTICAL
        );

        ImageView img =
            new ImageView(this);

        loadPoster(
            img,
            x.poster,
            x.backdrop
        );

        img.setScaleType(
            ImageView.ScaleType.CENTER_CROP
        );

        c.addView(
            img,
            new LinearLayout.LayoutParams(
                dp(118),
                dp(168)
            )
        );

        TextView name =
            tv(
                x.title,
                14,
                WHITE,
                true
            );

        name.setMaxLines(1);

        name.setEllipsize(
            TextUtils.TruncateAt.END
        );

        c.addView(
            name,
            new LinearLayout.LayoutParams(
                -1,
                dp(28)
            )
        );

        c.addView(
            tv(
                x.year
                + "  •  ★ "
                + x.rating,
                10,
                ACCENT,
                false
            ),
            new LinearLayout.LayoutParams(
                -1,
                dp(24)
            )
        );

        c.setOnClickListener(
            v -> details(x)
        );

        LinearLayout.LayoutParams p =
            new LinearLayout.LayoutParams(
                dp(126),
                dp(230)
            );

        p.setMargins(
            dp(3),0,dp(6),0
        );

        row.addView(c,p);
    }

    void sectionGenres() {

        TextView title =
            tv(
                "Browse by Genre",
                20,
                WHITE,
                true
            );

        title.setPadding(
            18,10,0,0
        );

        current.addView(
            title,
            new LinearLayout.LayoutParams(
                -1,
                56
            )
        );

        LinearLayout r =
            new LinearLayout(this);

        r.setPadding(
            14,0,14,12
        );

        String[] genres = {
            "Drama",
            "Action",
            "Comedy",
            "Thriller",
            "Family",
            "Sci-Fi"
        };

        for (String g : genres) {

            Button b =
                btn(g);

            b.setTextSize(12);

            b.setTextColor(WHITE);

            b.setBackground(
                shape(
                    Color.rgb(31,33,42),
                    32
                )
            );

            LinearLayout.LayoutParams p =
                new LinearLayout.LayoutParams(
                    -2,
                    44
                );

            p.setMargins(
                4,2,4,2
            );

            r.addView(b,p);

            b.setOnClickListener(
                v -> genre(g)
            );
        }

        HorizontalScrollView hs =
            new HorizontalScrollView(this);

        hs.setHorizontalScrollBarEnabled(false);

        hs.addView(r);

        current.addView(hs);
    }

    void movies() {

        base();

        brandBar();

        searchBar();

        current.addView(
            tv(
                "Movies",
                25,
                WHITE,
                true
            ),
            new LinearLayout.LayoutParams(
                -1,
                58
            )
        );

        for (Item x : data) {

            if (
                x.kind.equals("Movie")
            ) {

                full(x);
            }
        }
    }

    void shows() {

        base();

        brandBar();

        searchBar();

        current.addView(
            tv(
                "Web Series",
                25,
                WHITE,
                true
            ),
            new LinearLayout.LayoutParams(
                -1,
                58
            )
        );

        for (Item x : data) {

            if (
                x.kind.equals("Series")
            ) {

                full(x);
            }
        }
    }

    void genre(String g) {

        base();

        brandBar();

        searchBar();

        current.addView(
            tv(
                g,
                25,
                WHITE,
                true
            ),
            new LinearLayout.LayoutParams(
                -1,
                58
            )
        );

        boolean found = false;

        for (Item x : data) {

            if (
                x.genre.equalsIgnoreCase(g)
            ) {

                full(x);

                found = true;
            }
        }

        if (!found) {

            current.addView(
                tv(
                    "No titles found in this genre.",
                    14,
                    MUTED,
                    false
                )
            );
        }
    }

    void full(Item x) {

        LinearLayout c =
            new LinearLayout(this);

        c.setOrientation(
            LinearLayout.HORIZONTAL
        );

        c.setPadding(
            10,10,10,10
        );

        c.setBackground(
            shape(
                CARD,
                18
            )
        );

        ImageView img =
            new ImageView(this);

        loadPoster(
            img,
            x.poster,
            x.backdrop
        );

        img.setScaleType(
            ImageView.ScaleType.CENTER_CROP
        );

        c.addView(
            img,
            new LinearLayout.LayoutParams(
                dp(100),
                dp(150)
            )
        );

        LinearLayout info =
            new LinearLayout(this);

        info.setOrientation(
            LinearLayout.VERTICAL
        );

        info.setPadding(
            13,0,5,0
        );

        info.addView(
            tv(
                x.lang,
                10,
                Color.CYAN,
                true
            )
        );

        info.addView(
            tv(
                x.title,
                18,
                WHITE,
                true
            )
        );

        info.addView(
            tv(
                x.year
                + " • "
                + x.genre,
                12,
                MUTED,
                false
            )
        );

        info.addView(
            tv(
                "★ " + x.rating,
                12,
                ACCENT,
                true
            )
        );

        Button b =
            btn(
                myList.contains(x.title)
                ? "♥ Saved"
                : "＋ My List"
            );

        b.setOnClickListener(
            v -> {

                toggleMyList(x);

                b.setText(
                    myList.contains(x.title)
                    ? "♥ Saved"
                    : "＋ My List"
                );
            }
        );

        info.addView(b);

        c.addView(
            info,
            new LinearLayout.LayoutParams(
                0,
                -1,
                1
            )
        );

        c.setOnClickListener(
            v -> details(x)
        );

        LinearLayout.LayoutParams p =
            new LinearLayout.LayoutParams(
                -1,
                dp(170)
            );

        p.setMargins(
            12,5,12,5
        );

        current.addView(c,p);
    }

    void details(Item x) {

        base();

        brandBar();

        Button back =
            btn("‹  Back");

        back.setTextColor(ACCENT);

        back.setOnClickListener(
            v -> home()
        );

        current.addView(
            back,
            new LinearLayout.LayoutParams(
                -1,
                dp(48)
            )
        );

        ImageView img =
            new ImageView(this);

        loadPoster(
            img,
            x.poster,
            x.backdrop
        );

        img.setScaleType(
            ImageView.ScaleType.CENTER_CROP
        );

        current.addView(
            img,
            new LinearLayout.LayoutParams(
                -1,
                dp(300)
            )
        );

        TextView title =
            tv(
                x.title,
                28,
                WHITE,
                true
            );

        title.setPadding(
            18,12,18,0
        );

        current.addView(title);

        TextView meta =
            tv(
                x.year
                + "  •  "
                + x.duration
                + "  •  "
                + x.kind,
                13,
                ACCENT,
                false
            );

        meta.setPadding(
            18,8,18,8
        );

        current.addView(meta);

        TextView info =
            tv(
                x.lang
                + "  •  "
                + x.genre
                + "  •  ★ "
                + x.rating,
                13,
                MUTED,
                false
            );

        info.setPadding(
            18,0,18,8
        );

        current.addView(info);

        TextView desc =
            tv(
                x.description,
                15,
                MUTED,
                false
            );

        desc.setPadding(
            18,8,18,18
        );

        current.addView(desc);

        Button trailer =
            btn(
                "▶  WATCH TRAILER"
            );

        trailer.setTextColor(
            Color.BLACK
        );

        trailer.setBackground(
            shape(
                ACCENT,
                38
            )
        );

        trailer.setOnClickListener(
            v -> watchTrailer(x)
        );

        LinearLayout.LayoutParams tp =
            new LinearLayout.LayoutParams(
                -1,
                dp(54)
            );

        tp.setMargins(
            18,8,18,6
        );

        current.addView(
            trailer,
            tp
        );


        Button watch =
            btn(
                "▶  WATCH NOW"
            );

        watch.setTextColor(
            Color.BLACK
        );

        watch.setBackground(
            shape(
                Color.rgb(220, 30, 30),
                38
            )
        );

        watch.setOnClickListener(
            v -> watchMovie(x)
        );

        LinearLayout.LayoutParams wp =
            new LinearLayout.LayoutParams(
                -1,
                dp(54)
            );

        wp.setMargins(
            18,
            6,
            18,
            6
        );

        current.addView(
            watch,
            wp
        );

        Button save =
            btn(
                myList.contains(x.title)
                ? "♥ Remove from My List"
                : "＋ Add to My List"
            );

        save.setTextColor(WHITE);

        save.setBackground(
            shape(
                CARD,
                38
            )
        );

        save.setOnClickListener(
            v -> {

                toggleMyList(x);

                save.setText(
                    myList.contains(x.title)
                    ? "♥ Remove from My List"
                    : "＋ Add to My List"
                );
            }
        );

        LinearLayout.LayoutParams sp =
            new LinearLayout.LayoutParams(
                -1,
                dp(54)
            );

        sp.setMargins(
            18,6,18,18
        );

        current.addView(
            save,
            sp
        );
    }


    String getVideoSource(Item x) {

        // First priority:
        // Movie's own authorized video URL
        if (
            x.videoUrl != null &&
            !x.videoUrl.trim().isEmpty()
        ) {
            return x.videoUrl.trim();
        }

        // Temporary fallback only for testing
        return
            "https://storage.googleapis.com/"
            + "exoplayer-test-media-0/"
            + "BigBuckBunny_320x180.mp4";
    }

    void watchTrailer(Item x) {

        if (
            x.trailer == null ||
            x.trailer.trim().isEmpty()
        ) {

            openTrailer(x);
            return;
        }

        openTrailer(x);
    }

    void watchMovie(Item x) {

        String sourceUrl = x.videoUrl;

        if (
            sourceUrl == null ||
            sourceUrl.trim().isEmpty()
        ) {

            Toast.makeText(
                this,
                "Video source not available for this content",
                Toast.LENGTH_LONG
            ).show();

            return;
        }

        base();

        LinearLayout top =
            new LinearLayout(this);

        top.setGravity(
            Gravity.CENTER_VERTICAL
        );

        top.setPadding(
            12, 8, 12, 8
        );

        Button back = btn("‹");

        back.setTextSize(28);
        back.setTextColor(WHITE);

        back.setOnClickListener(
            v -> details(x)
        );

        top.addView(
            back,
            new LinearLayout.LayoutParams(
                dp(60),
                dp(54)
            )
        );

        TextView title =
            tv(
                x.title,
                18,
                WHITE,
                true
            );

        title.setSingleLine(true);

        title.setEllipsize(
            TextUtils.TruncateAt.END
        );

        top.addView(
            title,
            new LinearLayout.LayoutParams(
                0,
                dp(54),
                1
            )
        );

        current.addView(
            top,
            new LinearLayout.LayoutParams(
                -1,
                dp(70)
            )
        );

        androidx.media3.ui.PlayerView playerView =
            new androidx.media3.ui.PlayerView(this);

        playerView.setUseController(true);

        playerView.setShowBuffering(
            androidx.media3.ui.PlayerView
                .SHOW_BUFFERING_ALWAYS
        );

        playerView.setBackgroundColor(Color.BLACK);

        current.addView(
            playerView,
            new LinearLayout.LayoutParams(
                -1,
                dp(240)
            )
        );

        TextView status =
            tv(
                "Preparing video...",
                14,
                MUTED,
                false
            );

        status.setGravity(Gravity.CENTER);

        status.setPadding(
            12, 20, 12, 20
        );

        current.addView(status);

        try {

            androidx.media3.exoplayer.ExoPlayer player =
                new androidx.media3.exoplayer.ExoPlayer
                    .Builder(this)
                    .build();

            playerView.setPlayer(player);

            androidx.media3.common.MediaItem mediaItem =
                androidx.media3.common.MediaItem
                    .fromUri(
                        android.net.Uri.parse(sourceUrl)
                    );

            player.setMediaItem(mediaItem);

            player.prepare();

            player.play();

            status.setText("Playing");

            player.addListener(
                new androidx.media3.common.Player.Listener() {

                    @Override
                    public void onPlayerError(
                        androidx.media3.common.PlaybackException error
                    ) {

                        status.setText(
                            "Video error: "
                            + error.getErrorCodeName()
                        );
                    }
                }
            );

        } catch (Exception e) {

            status.setText(
                "Player error"
            );
        }
    }

    void openTrailer(
        String titleText,
        String youtubeKey
    ) {

        base();


        LinearLayout top =
            new LinearLayout(this);

        top.setGravity(
            Gravity.CENTER_VERTICAL
        );

        top.setPadding(
            12,
            8,
            12,
            8
        );


        Button back =
            btn("‹");

        back.setTextSize(28);

        back.setTextColor(
            WHITE
        );

        back.setOnClickListener(
            v -> {

                for (Item item : data) {

                    if (
                        item.title.equals(titleText)
                    ) {

                        details(item);
                        return;
                    }
                }

                home();
            }
        );


        top.addView(
            back,
            new LinearLayout.LayoutParams(
                dp(60),
                dp(54)
            )
        );


        TextView title =
            tv(
                titleText,
                18,
                WHITE,
                true
            );

        title.setSingleLine(true);

        title.setEllipsize(
            TextUtils.TruncateAt.END
        );

        top.addView(
            title,
            new LinearLayout.LayoutParams(
                0,
                dp(54),
                1
            )
        );


        current.addView(
            top,
            new LinearLayout.LayoutParams(
                -1,
                dp(70)
            )
        );


        FrameLayout playerBox =
            new FrameLayout(this);

        playerBox.setBackgroundColor(
            Color.BLACK
        );


        WebView player =
            new WebView(this);

        player.setBackgroundColor(
            Color.BLACK
        );


        WebSettings settings =
            player.getSettings();

        settings.setJavaScriptEnabled(
            true
        );

        settings.setDomStorageEnabled(
            true
        );

        settings.setMediaPlaybackRequiresUserGesture(
            false
        );

        settings.setLoadWithOverviewMode(
            true
        );

        settings.setUseWideViewPort(
            true
        );


        player.setWebViewClient(
            new WebViewClient()
        );


        player.setWebChromeClient(
            new WebChromeClient()
        );


        String html =
            "<!DOCTYPE html>"
            + "<html>"
            + "<head>"

            + "<meta name='viewport' "
            + "content='width=device-width,"
            + "initial-scale=1.0,"
            + "maximum-scale=1.0,"
            + "user-scalable=no'>"

            + "<style>"

            + "*{"
            + "margin:0;"
            + "padding:0;"
            + "box-sizing:border-box;"
            + "}"

            + "html,body{"
            + "width:100%;"
            + "height:100%;"
            + "background:#000;"
            + "overflow:hidden;"
            + "}"

            + "#player{"
            + "position:absolute;"
            + "top:0;"
            + "left:0;"
            + "width:100%;"
            + "height:100%;"
            + "}"

            + "</style>"

            + "</head>"

            + "<body>"

            + "<iframe "
            + "id='player' "

            + "src='https://www.youtube-nocookie.com/embed/"
            + youtubeKey

            + "?autoplay=1"
            + "&playsinline=1"
            + "&rel=0"
            + "&modestbranding=1"
            + "&fs=1"

            + "' "

            + "frameborder='0' "

            + "allow='"
            + "autoplay;"
            + "encrypted-media;"
            + "picture-in-picture"
            + "' "

            + "allowfullscreen>"

            + "</iframe>"

            + "</body>"
            + "</html>";


        player.loadDataWithBaseURL(
            "https://www.youtube-nocookie.com",
            html,
            "text/html",
            "UTF-8",
            null
        );


        playerBox.addView(
            player,
            new FrameLayout.LayoutParams(
                -1,
                -1
            )
        );


        current.addView(
            playerBox,
            new LinearLayout.LayoutParams(
                -1,
                dp(240)
            )
        );


        TextView note =
            tv(
                "Official trailer",
                13,
                MUTED,
                false
            );

        note.setPadding(
            18,
            12,
            18,
            20
        );

        current.addView(
            note
        );
    }

    void toggleMyList(Item x) {

        if (
            myList.contains(x.title)
        ) {

            myList.remove(x.title);

        } else {

            myList.add(x.title);
        }

        saveMyList();
    }

    void find() {

        base();

        brandBar();

        TextView title =
            tv(
                "Search",
                25,
                WHITE,
                true
            );

        title.setPadding(
            18, 0, 18, 10
        );

        current.addView(title);


        EditText e =
            new EditText(this);

        e.setHint(
            "Search movies or web series..."
        );

        e.setTextColor(WHITE);

        e.setHintTextColor(
            Color.GRAY
        );

        e.setSingleLine(true);

        e.setTextSize(16);

        e.setPadding(
            18, 0, 18, 0
        );

        e.setBackground(
            shape(
                Color.rgb(28,30,38),
                45
            )
        );


        LinearLayout.LayoutParams ep =
            new LinearLayout.LayoutParams(
                -1,
                56
            );

        ep.setMargins(
            14, 0, 14, 12
        );

        current.addView(
            e,
            ep
        );


        LinearLayout results =
            new LinearLayout(this);

        results.setOrientation(
            LinearLayout.VERTICAL
        );

        current.addView(results);


        TextView hint =
            tv(
                "Search any movie or web series",
                15,
                MUTED,
                false
            );

        hint.setPadding(
            18, 20, 18, 20
        );

        results.addView(hint);


        e.addTextChangedListener(
            new TextWatcher() {

                int searchId = 0;

                public void beforeTextChanged(
                    CharSequence s,
                    int start,
                    int count,
                    int after
                ) {}


                public void onTextChanged(
                    CharSequence s,
                    int start,
                    int before,
                    int count
                ) {

                    String q =
                        s.toString()
                        .trim();

                    searchId++;

                    int currentId =
                        searchId;


                    results.removeAllViews();


                    if (
                        q.length() < 2
                    ) {

                        TextView msg =
                            tv(
                                "Type at least 2 characters to search",
                                15,
                                MUTED,
                                false
                            );

                        msg.setPadding(
                            18,
                            20,
                            18,
                            20
                        );

                        results.addView(msg);

                        return;
                    }


                    TextView loading =
                        tv(
                            "Searching...",
                            15,
                            MUTED,
                            false
                        );

                    loading.setPadding(
                        18,
                        20,
                        18,
                        20
                    );

                    results.addView(
                        loading
                    );


                    searchTmdb(
                        q,
                        results,
                        currentId,
                        this
                    );
                }


                public void afterTextChanged(
                    Editable e
                ) {}

            }
        );


        e.requestFocus();
    }


    void searchTmdb(
        String query,
        LinearLayout results,
        int requestId,
        TextWatcher watcher
    ) {

        new Thread(() -> {

            try {

                String apiKey =
                    BuildConfig.TMDB_API_KEY;


                if (
                    apiKey == null
                    ||
                    apiKey.trim().isEmpty()
                ) {
                    return;
                }


                String urlText =
                    "https://api.themoviedb.org/3/search/multi"
                    +
                    "?api_key="
                    +
                    URLEncoder.encode(
                        apiKey,
                        "UTF-8"
                    )
                    +
                    "&query="
                    +
                    URLEncoder.encode(
                        query,
                        "UTF-8"
                    );


                HttpURLConnection conn =
                    (HttpURLConnection)
                    new URL(urlText)
                    .openConnection();


                conn.setRequestMethod(
                    "GET"
                );

                conn.setConnectTimeout(
                    10000
                );

                conn.setReadTimeout(
                    15000
                );


                InputStream in =
                    conn.getInputStream();


                ByteArrayOutputStream out =
                    new ByteArrayOutputStream();


                byte[] buffer =
                    new byte[4096];

                int n;


                while (
                    (n = in.read(buffer)) != -1
                ) {

                    out.write(
                        buffer,
                        0,
                        n
                    );
                }


                in.close();


                JSONObject root =
                    new JSONObject(
                        out.toString(
                            "UTF-8"
                        )
                    );


                JSONArray array =
                    root.getJSONArray(
                        "results"
                    );


                ArrayList<Item> online =
                    new ArrayList<>();


                for (
                    int i = 0;
                    i < array.length();
                    i++
                ) {

                    JSONObject o =
                        array.getJSONObject(i);


                    String mediaType =
                        o.optString(
                            "media_type"
                        );


                    if (
                        !mediaType.equals("movie")
                        &&
                        !mediaType.equals("tv")
                    ) {
                        continue;
                    }


                    String itemTitle;

                    if (
                        mediaType.equals("movie")
                    ) {

                        itemTitle =
                            o.optString(
                                "title"
                            );

                    } else {

                        itemTitle =
                            o.optString(
                                "name"
                            );
                    }


                    String date;

                    if (
                        mediaType.equals("movie")
                    ) {

                        date =
                            o.optString(
                                "release_date"
                            );

                    } else {

                        date =
                            o.optString(
                                "first_air_date"
                            );
                    }


                    String year =
                        date.length() >= 4
                        ?
                        date.substring(
                            0,
                            4
                        )
                        :
                        "";


                    JSONObject item =
                        new JSONObject();


                    item.put(
                        "title",
                        itemTitle
                    );


                    item.put(
                        "kind",
                        mediaType.equals("movie")
                        ?
                        "Movie"
                        :
                        "Series"
                    );


                    item.put(
                        "lang",
                        o.optString(
                            "original_language",
                            ""
                        )
                        .toUpperCase()
                    );


                    item.put(
                        "genre",
                        "Search Result"
                    );


                    item.put(
                        "rating",
                        String.format(
                            java.util.Locale.US,
                            "%.1f",
                            o.optDouble(
                                "vote_average",
                                0
                            )
                        )
                    );


                    item.put(
                        "poster",
                        o.optString(
                            "poster_path"
                        )
                    );


                    item.put(
                        "backdrop",
                        o.optString(
                            "backdrop_path"
                        )
                    );


                    item.put(
                        "tmdb_id",
                        o.optInt(
                            "id",
                            0
                        )
                    );


                    item.put(
                        "year",
                        year
                    );


                    item.put(
                        "duration",
                        ""
                    );


                    item.put(
                        "description",
                        o.optString(
                            "overview"
                        )
                    );


                    item.put(
                        "trailer",
                        ""
                    );


                    item.put(
                        "category",
                        "Search"
                    );


                    online.add(
                        new Item(item)
                    );
                }


                runOnUiThread(() -> {

                    results.removeAllViews();


                    if (
                        online.size() == 0
                    ) {

                        TextView empty =
                            tv(
                                "No results found.",
                                15,
                                MUTED,
                                false
                            );


                        empty.setPadding(
                            18,
                            20,
                            18,
                            20
                        );


                        results.addView(
                            empty
                        );

                        return;
                    }


                    TextView count =
                        tv(
                            online.size()
                            +
                            " results found",
                            14,
                            ACCENT,
                            true
                        );


                    count.setPadding(
                        18,
                        10,
                        18,
                        10
                    );


                    results.addView(
                        count
                    );


                    for (
                        Item x : online
                    ) {

                        LinearLayout old =
                            current;


                        current =
                            results;


                        full(x);


                        current =
                            old;
                    }

                });

            } catch (
                Exception ex
            ) {

                runOnUiThread(() -> {

                    results.removeAllViews();


                    TextView error =
                        tv(
                            "Online search unavailable. Check internet.",
                            15,
                            MUTED,
                            false
                        );


                    error.setPadding(
                        18,
                        20,
                        18,
                        20
                    );


                    results.addView(
                        error
                    );

                });
            }

        }).start();
    }


    void list() {

        base();

        brandBar();

        TextView title =
            tv(
                "My List",
                25,
                WHITE,
                true
            );

        title.setPadding(
            18,0,18,10
        );

        current.addView(title);

        boolean any = false;

        for (Item x : data) {

            if (
                myList.contains(x.title)
            ) {

                full(x);

                any = true;
            }
        }

        if (!any) {

            TextView empty =
                tv(
                    "Your saved movies and series will appear here.",
                    14,
                    MUTED,
                    false
                );

            empty.setPadding(
                18,30,18,30
            );

            current.addView(empty);
        }
    }

    void downloads() {

        base();

        brandBar();

        TextView title =
            tv(
                "Downloads",
                25,
                WHITE,
                true
            );

        title.setPadding(
            18,0,18,10
        );

        current.addView(title);

        TextView message =
            tv(
                "Downloaded content will appear here when offline viewing is supported by an authorized content provider.",
                14,
                MUTED,
                false
            );

        message.setPadding(
            18,30,18,30
        );

        current.addView(message);
    }

    void profile() {

        base();

        brandBar();

        TextView title =
            tv(
                "Profile",
                25,
                WHITE,
                true
            );

        title.setPadding(
            18,0,18,10
        );

        current.addView(title);


        LinearLayout card =
            new LinearLayout(this);

        card.setOrientation(
            LinearLayout.VERTICAL
        );

        card.setPadding(
            dp(22),
            dp(22),
            dp(22),
            dp(22)
        );

        card.setBackground(
            shape(
                CARD,
                22
            )
        );


        TextView avatar =
            tv(
                "●",
                45,
                ACCENT,
                true
            );

        card.addView(avatar);


        TextView name =
            tv(
                "GAMA AALA Viewer",
                22,
                WHITE,
                true
            );

        name.setPadding(
            0,
            dp(12),
            0,
            0
        );

        card.addView(name);


        TextView subtitle =
            tv(
                "Your entertainment profile",
                15,
                MUTED,
                false
            );

        subtitle.setPadding(
            0,
            dp(4),
            0,
            0
        );

        card.addView(subtitle);


        TextView saved =
            tv(
                "♥  My List: "
                + myList.size()
                + " titles",
                17,
                ACCENT,
                true
            );

        saved.setPadding(
            0,
            dp(20),
            0,
            0
        );

        card.addView(saved);


        TextView libraryTitle =
            tv(
                "YOUR LIBRARY",
                11,
                MUTED,
                true
            );

        libraryTitle.setPadding(
            0,
            dp(24),
            0,
            0
        );

        card.addView(libraryTitle);


        TextView libraryInfo =
            tv(
                "Discover movies and web series you love.",
                14,
                MUTED,
                false
            );

        libraryInfo.setPadding(
            0,
            dp(4),
            0,
            0
        );

        card.addView(libraryInfo);


        LinearLayout.LayoutParams pCard =
            new LinearLayout.LayoutParams(
                -1,
                -2
            );

        pCard.setMargins(
            dp(14),
            dp(12),
            dp(14),
            dp(12)
        );

        current.addView(
            card,
            pCard
        );
    }

    @Override
    public void onBackPressed() {

        home();
    }
}
