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

    androidx.media3.exoplayer.ExoPlayer activePlayer;
    WebView activeWebPlayer = null;

    // Continue Watching / Resume system
    android.os.Handler resumeHandler =
        new android.os.Handler(
            android.os.Looper.getMainLooper()
        );

    Runnable resumeSaver;
    String activeVideoKey = null;




    int BG = Color.rgb(9,10,14);
    int PANEL = Color.rgb(19,21,28);
    int CARD = Color.rgb(25,27,35);
    int WHITE = Color.rgb(248,248,250);
    int MUTED = Color.rgb(155,158,168);
    int ACCENT = Color.rgb(255,190,55);

    FrameLayout screen;
    LinearLayout current;
    ArrayList<Item> data = new ArrayList<>();
    ArrayList<Item> liveChannels = new ArrayList<>();
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

            HttpURLConnection conn = null;

            try {

                String apiUrl =
                    "https://gama-aala-v11.onrender.com/api/content";

                conn =
                    (HttpURLConnection)
                    new URL(apiUrl).openConnection();

                conn.setRequestMethod("GET");
                conn.setConnectTimeout(10000);
                conn.setReadTimeout(15000);

                InputStream input =
                    conn.getInputStream();

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

                JSONArray live =
                    root.optJSONArray("live");

                if (content == null) {
                    content = new JSONArray();
                }

                synchronized (data) {

                    liveChannels.clear();

                    if (live != null) {

                        for (
                            int i = 0;
                            i < live.length();
                            i++
                        ) {

                            JSONObject entry =
                                live.getJSONObject(i);

                            String videoUrl =
                                entry.optString(
                                    "video_url",
                                    ""
                                );

                            boolean authorized =
                                entry.optBoolean(
                                    "authorized",
                                    false
                                );

                            if (
                                videoUrl.trim().isEmpty()
                                || !authorized
                            ) {
                                continue;
                            }

                            JSONObject liveItem =
                                new JSONObject();

                            liveItem.put(
                                "tmdb_id",
                                -1000 - i
                            );

                            liveItem.put(
                                "id",
                                entry.optString(
                                    "id",
                                    "live_" + i
                                )
                            );

                            liveItem.put(
                                "title",
                                entry.optString(
                                    "title",
                                    "Live Channel"
                                )
                            );

                            liveItem.put(
                                "kind",
                                "Live"
                            );

                            liveItem.put(
                                "category",
                                entry.optString(
                                    "category",
                                    "Live TV"
                                )
                            );

                            liveItem.put(
                                "video_url",
                                videoUrl
                            );

                            liveItem.put(
                                "description",
                                "Authorized live channel"
                            );

                            liveItem.put(
                                "poster",
                                entry.optString(
                                    "poster",
                                    ""
                                )
                            );

                            liveItem.put(
                                "backdrop",
                                entry.optString(
                                    "backdrop",
                                    ""
                                )
                            );

                            liveItem.put(
                                "lang",
                                entry.optString(
                                    "lang",
                                    "Live"
                                )
                            );

                            liveItem.put(
                                "current_program",
                                entry.optString(
                                    "current_program",
                                    ""
                                )
                            );

                            liveItem.put(
                                "next_program",
                                entry.optString(
                                    "next_program",
                                    ""
                                )
                            );

                            liveItem.put(
                                "rating",
                                "LIVE"
                            );

                            liveItem.put(
                                "year",
                                ""
                            );

                            liveItem.put(
                                "duration",
                                "LIVE"
                            );

                            liveItem.put(
                                "trailer",
                                ""
                            );

                            Item liveChannel = new Item(liveItem);

                            liveChannels.add(liveChannel);
                            data.add(liveChannel);

                            android.util.Log.d(
                                "GAMA_LIVE",
                                "LIVE CHANNEL ADDED: "
                                + entry.optString(
                                    "title"
                                )
                            );
                        }
                    }

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

                        boolean authorized =
                            entry.optBoolean(
                                "authorized",
                                false
                            );

                        if (
                            videoUrl.trim().isEmpty() ||
                            !authorized
                        ) {
                            continue;
                        }


                        for (Item item : data) {

                            if (
                                item.tmdbId == tmdbId
                            ) {

                                item.videoUrl =
                                    videoUrl;

                                android.util.Log.d(
                                    "GAMA_API",
                                    "VIDEO CONNECTED: "
                                    + item.title
                                    + " | TMDB="
                                    + tmdbId
                                );
                            }
                        }
                    }
                }

                runOnUiThread(() ->
                    home()
                );

            } catch (Exception e) {

                android.util.Log.e(
                    "GAMA_API",
                    "API ERROR: "
                    + e.getMessage()
                );

                runOnUiThread(() ->
                    Toast.makeText(
                        MainActivity.this,
                        "Content server unavailable",
                        Toast.LENGTH_SHORT
                    ).show()
                );

            } finally {

                if (conn != null) {
                    conn.disconnect();
                }
            }

        }).start();
    }


    void saveContentSource(
        int tmdbId,
        String videoUrl
    ) {
        if (
            videoUrl == null ||
            videoUrl.trim().isEmpty()
        ) {
            return;
        }

        Set<String> savedIds =
            new HashSet<>(
                prefs.getStringSet(
                    "saved_video_ids",
                    new HashSet<>()
                )
            );

        savedIds.add(
            String.valueOf(tmdbId)
        );

        prefs.edit()
            .putString(
                "content_source_" + tmdbId,
                videoUrl
            )
            .putStringSet(
                "saved_video_ids",
                savedIds
            )
            .apply();
    }

    String getContentSource(
        int tmdbId
    ) {
        return prefs.getString(
            "content_source_" + tmdbId,
            ""
        );
    }

    void applySavedContentSources() {

        synchronized (data) {

            for (Item item : data) {

                String savedUrl =
                    getContentSource(
                        item.tmdbId
                    );

                if (
                    savedUrl != null &&
                    !savedUrl.trim().isEmpty()
                ) {
                    item.videoUrl =
                        savedUrl;
                }
            }
        }
    }


    // ==============================
    // LIVE TV CHANNEL SYSTEM
    // ==============================

    void addLiveChannel(
        String name,
        String streamUrl
    ) {
        if (name == null || name.trim().isEmpty()
                || streamUrl == null || streamUrl.trim().isEmpty()) {
            return;
        }

        String cleanName = name.trim();
        String cleanUrl = streamUrl.trim();

        Set<String> channels = new HashSet<>(
            prefs.getStringSet(
                "live_channels",
                new HashSet<>()
            )
        );

        channels.add(cleanName + "||" + cleanUrl);

        prefs.edit()
            .putStringSet("live_channels", channels)
            .apply();
    }

    void loadLiveChannels() {
        liveChannels.clear();

        Set<String> savedChannels = new HashSet<>(
            prefs.getStringSet(
                "live_channels",
                new HashSet<>()
            )
        );

        Set<String> validChannels = new HashSet<>();

        for (String entry : savedChannels) {
            if (entry == null || entry.trim().isEmpty()) {
                continue;
            }

            String lowerEntry = entry.toLowerCase(Locale.ROOT);

            if (lowerEntry.contains("test channel")
                    || lowerEntry.contains("bigbuckbunny")
                    || lowerEntry.contains("exoplayer-test-media")
                    || lowerEntry.contains("storage.googleapis.com/exoplayer")) {
                continue;
            }

            String[] parts = entry.split("\\|\\|", 2);

            if (parts.length < 2) {
                continue;
            }

            String channelName = parts[0].trim();
            String streamUrl = parts[1].trim();

            if (channelName.isEmpty() || streamUrl.isEmpty()) {
                continue;
            }

            try {
                JSONObject o = new JSONObject();

                o.put("id", "local_" + Math.abs(
                    (channelName + "||" + streamUrl).hashCode()
                ));
                o.put("title", channelName);
                o.put("kind", "Live");
                o.put("lang", "Live");
                o.put("genre", "Live TV");
                o.put("category", "Live TV");
                o.put("rating", "LIVE");
                o.put("video_url", streamUrl);
                o.put("authorized", true);

                liveChannels.add(new Item(o));
                validChannels.add(entry);
            } catch (Exception ignored) {
            }
        }

        prefs.edit()
            .putStringSet("live_channels", validChannels)
            .apply();
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

        // Save currently playing video's position before opening Home
        releaseActivePlayer();

        base();

        brandBar();

        searchBar();

        quickTabs();

        hero();

        
        // Load real saved Live TV channels
        loadLiveChannels();

continueWatching();

        liveTvRail();

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



    void liveTvRail() {
        if (liveChannels.size() == 0) {
            return;
        }

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(18, 18, 12, 8);

        TextView heading = tv(
            "🔴 Live TV",
            20,
            WHITE,
            true
        );

        header.addView(
            heading,
            new LinearLayout.LayoutParams(0, -2, 1)
        );

        Button all = btn("VIEW ALL");
        all.setOnClickListener(v -> liveTvManager());
        header.addView(all);

        current.addView(header);

        HorizontalScrollView scroll = new HorizontalScrollView(this);
        scroll.setHorizontalScrollBarEnabled(false);

        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setPadding(12, 0, 12, 15);
        scroll.addView(row);

        for (Item x : liveChannels) {
            LinearLayout card = new LinearLayout(this);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setPadding(6, 0, 6, 0);
            card.setBackgroundColor(CARD);

            ImageView poster = new ImageView(this);
            loadPoster(poster, x.poster, x.backdrop);
            poster.setScaleType(ImageView.ScaleType.CENTER_CROP);

            card.addView(
                poster,
                new LinearLayout.LayoutParams(dp(132), dp(92))
            );

            TextView name = tv(
                "🔴 " + x.title,
                13,
                WHITE,
                true
            );
            name.setSingleLine(true);
            name.setEllipsize(TextUtils.TruncateAt.END);
            name.setPadding(6, 7, 6, 2);

            card.addView(
                name,
                new LinearLayout.LayoutParams(dp(132), dp(34))
            );

            TextView meta = tv(
                x.lang == null || x.lang.trim().isEmpty()
                    ? "LIVE NOW"
                    : "LIVE • " + x.lang,
                10,
                MUTED,
                false
            );
            meta.setPadding(6, 0, 6, 6);
            card.addView(
                meta,
                new LinearLayout.LayoutParams(dp(132), dp(25))
            );

            card.setOnClickListener(v -> watchMovie(x));

            row.addView(card);
        }

        current.addView(
            scroll,
            new LinearLayout.LayoutParams(-1, dp(170))
        );
    }

    void continueWatching() {

        ArrayList<Item> resumeItems = new ArrayList<>();

        for (Item x : data) {

            String sourceUrl = getVideoSource(x);

            if (
                sourceUrl == null ||
                sourceUrl.trim().isEmpty()
            ) {
                continue;
            }

            String videoKey =
                Integer.toHexString(
                    (x.tmdbId + "|" + x.title).hashCode()
                );

            long position =
                prefs.getLong(
                    "resume_" + videoKey,
                    0
                );

            if (position > 5000) {
                resumeItems.add(x);
            }
        }

        if (resumeItems.size() == 0) {
            return;
        }

        TextView heading =
            tv(
                "▶ Continue Watching",
                20,
                WHITE,
                true
            );

        heading.setPadding(
            18,
            20,
            18,
            10
        );

        current.addView(heading);

        HorizontalScrollView scroll =
            new HorizontalScrollView(this);

        scroll.setHorizontalScrollBarEnabled(false);

        LinearLayout row =
            new LinearLayout(this);

        row.setOrientation(
            LinearLayout.HORIZONTAL
        );

        row.setPadding(
            12,
            0,
            12,
            10
        );

        scroll.addView(row);

        for (Item x : resumeItems) {

            LinearLayout card =
                new LinearLayout(this);

            card.setOrientation(
                LinearLayout.VERTICAL
            );

            card.setPadding(
                6,
                0,
                6,
                0
            );

            ImageView poster =
                new ImageView(this);

            loadPoster(
                poster,
                x.poster,
                x.backdrop
            );

            poster.setScaleType(
                ImageView.ScaleType.CENTER_CROP
            );

            card.addView(
                poster,
                new LinearLayout.LayoutParams(
                    dp(120),
                    dp(170)
                )
            );

            String sourceUrl =
                getVideoSource(x);

            String videoKey =
                Integer.toHexString(
                    (x.tmdbId + "|" + x.title).hashCode()
                );

            long position =
                prefs.getLong(
                    "resume_" + videoKey,
                    0
                );

            // OTT style progress bar
            int progressValue =
                (int) Math.min(
                    100,
                    Math.max(
                        5,
                        (position / 60000) * 10
                    )
                );

            LinearLayout progressTrack =
                new LinearLayout(this);

            progressTrack.setOrientation(
                LinearLayout.HORIZONTAL
            );

            progressTrack.setGravity(
                Gravity.CENTER_VERTICAL
            );

            progressTrack.setPadding(
                0, 0, 0, 0
            );

            progressTrack.setBackground(
                shape(
                    Color.rgb(55, 57, 65),
                    6
                )
            );

            android.view.View progressFill =
                new android.view.View(this);

            progressFill.setBackground(
                shape(
                    ACCENT,
                    6
                )
            );

            int fillWidth =
                (int) (
                    dp(112)
                    * progressValue
                    / 100f
                );

            progressTrack.addView(
                progressFill,
                new LinearLayout.LayoutParams(
                    fillWidth,
                    dp(5)
                )
            );

            card.addView(
                progressTrack,
                new LinearLayout.LayoutParams(
                    dp(112),
                    dp(5)
                )
            );

            TextView progress =
                tv(
                    "▶ Continue from "
                    + (position / 60000)
                    + " min",
                    11,
                    ACCENT,
                    true
                );

            progress.setPadding(
                4,
                6,
                4,
                0
            );

            card.addView(
                progress,
                new LinearLayout.LayoutParams(
                    dp(120),
                    dp(30)
                )
            );

            card.setOnClickListener(
                v -> watchMovie(x)
            );

            row.addView(card);
        }

        current.addView(
            scroll,
            new LinearLayout.LayoutParams(
                -1,
                dp(220)
            )
        );
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

        TextView heading =
            tv(
                "🔴 LIVE TV",
                26,
                WHITE,
                true
            );

        heading.setPadding(
            dp(16),
            dp(16),
            dp(16),
            dp(8)
        );

        current.addView(heading);

        TextView sub =
            tv(
                "Watch your authorized live channels",
                14,
                MUTED,
                false
            );

        sub.setPadding(
            dp(16),
            0,
            dp(16),
            dp(16)
        );

        current.addView(sub);

        EditText search =
            new EditText(this);

        search.setHint(
            "Search live channels..."
        );

        search.setTextColor(WHITE);

        search.setHintTextColor(MUTED);

        search.setSingleLine(true);

        search.setPadding(
            dp(16),
            0,
            dp(16),
            0
        );

        current.addView(
            search,
            new LinearLayout.LayoutParams(
                -1,
                dp(55)
            )
        );

        LinearLayout channelContainer =
            new LinearLayout(this);

        channelContainer.setOrientation(
            LinearLayout.VERTICAL
        );

        current.addView(
            channelContainer,
            new LinearLayout.LayoutParams(
                -1,
                -2
            )
        );

        ArrayList<Item> liveItems =
            new ArrayList<>();

        synchronized (data) {

            for (Item x : data) {

                if (
                    "Live".equals(x.kind)
                ) {

                    liveItems.add(x);

                }
            }
        }

        LinearLayout categories =
            new LinearLayout(this);

        categories.setOrientation(
            LinearLayout.HORIZONTAL
        );

        categories.setPadding(
            dp(12),
            dp(12),
            dp(12),
            dp(12)
        );

        Button allBtn =
            btn("ALL");

        Button hindiBtn =
            btn("HINDI");

        Button englishBtn =
            btn("ENGLISH");

        Button regionalBtn =
            btn("REGIONAL");

        categories.addView(
            allBtn,
            new LinearLayout.LayoutParams(
                0,
                dp(48),
                1
            )
        );

        categories.addView(
            hindiBtn,
            new LinearLayout.LayoutParams(
                0,
                dp(48),
                1
            )
        );

        categories.addView(
            englishBtn,
            new LinearLayout.LayoutParams(
                0,
                dp(48),
                1
            )
        );

        categories.addView(
            regionalBtn,
            new LinearLayout.LayoutParams(
                0,
                dp(48),
                1
            )
        );

        current.addView(
            categories
        );

        final String[] selectedCategory =
            {"ALL"};

        Runnable renderChannels =
            new Runnable() {

                @Override
                public void run() {

                    channelContainer.removeAllViews();

                    String query =
                        search.getText()
                        .toString()
                        .trim()
                        .toLowerCase();

                    boolean found = false;

                    for (Item x : liveItems) {

                        String lang =
                            x.lang == null
                            ? ""
                            : x.lang;

                        String category =
                            x.category == null
                            ? ""
                            : x.category;

                        String title =
                            x.title == null
                            ? ""
                            : x.title;

                        boolean categoryMatch =
                            selectedCategory[0]
                            .equals("ALL");

                        if (
                            selectedCategory[0]
                            .equals("HINDI")
                        ) {

                            categoryMatch =
                                lang.toLowerCase()
                                .contains("hindi")
                                ||
                                category.toLowerCase()
                                .contains("hindi");

                        }

                        if (
                            selectedCategory[0]
                            .equals("ENGLISH")
                        ) {

                            categoryMatch =
                                lang.toLowerCase()
                                .contains("english")
                                ||
                                category.toLowerCase()
                                .contains("english");

                        }

                        if (
                            selectedCategory[0]
                            .equals("REGIONAL")
                        ) {

                            categoryMatch =
                                !lang.toLowerCase()
                                .contains("hindi")
                                &&
                                !lang.toLowerCase()
                                .contains("english");

                        }

                        boolean searchMatch =
                            query.isEmpty()
                            ||
                            title.toLowerCase()
                            .contains(query)
                            ||
                            lang.toLowerCase()
                            .contains(query)
                            ||
                            category.toLowerCase()
                            .contains(query);

                        if (
                            categoryMatch &&
                            searchMatch
                        ) {

                            liveChannelCard(
                                channelContainer,
                                x
                            );

                            found = true;

                        }
                    }

                    if (!found) {

                        TextView empty =
                            tv(
                                "No live channels available",
                                16,
                                MUTED,
                                false
                            );

                        empty.setPadding(
                            dp(20),
                            dp(30),
                            dp(20),
                            dp(30)
                        );

                        channelContainer.addView(
                            empty
                        );

                    }
                }
            };

        renderChannels.run();

        allBtn.setOnClickListener(v -> {

            selectedCategory[0] = "ALL";

            renderChannels.run();

        });

        hindiBtn.setOnClickListener(v -> {

            selectedCategory[0] = "HINDI";

            renderChannels.run();

        });

        englishBtn.setOnClickListener(v -> {

            selectedCategory[0] = "ENGLISH";

            renderChannels.run();

        });

        regionalBtn.setOnClickListener(v -> {

            selectedCategory[0] = "REGIONAL";

            renderChannels.run();

        });

        search.addTextChangedListener(
            new TextWatcher() {

                @Override
                public void beforeTextChanged(
                    CharSequence s,
                    int start,
                    int count,
                    int after
                ) {
                }

                @Override
                public void onTextChanged(
                    CharSequence s,
                    int start,
                    int before,
                    int count
                ) {

                    renderChannels.run();

                }

                @Override
                public void afterTextChanged(
                    Editable s
                ) {
                }
            }
        );
    }


    void liveChannelCard(
        LinearLayout parent,
        Item x
    ) {

        LinearLayout card =
            new LinearLayout(this);

        card.setOrientation(
            LinearLayout.HORIZONTAL
        );

        card.setGravity(
            Gravity.CENTER_VERTICAL
        );

        card.setPadding(
            dp(12),
            dp(12),
            dp(12),
            dp(12)
        );

        card.setBackground(
            shape(
                CARD,
                18
            )
        );

        LinearLayout.LayoutParams cardParams =
            new LinearLayout.LayoutParams(
                -1,
                dp(90)
            );

        cardParams.setMargins(
            dp(12),
            dp(6),
            dp(12),
            dp(6)
        );

        ImageView logo =
            new ImageView(this);

        loadPoster(
            logo,
            x.poster,
            x.backdrop
        );

        logo.setScaleType(
            ImageView.ScaleType.CENTER_CROP
        );

        card.addView(
            logo,
            new LinearLayout.LayoutParams(
                dp(110),
                dp(66)
            )
        );

        LinearLayout info =
            new LinearLayout(this);

        info.setOrientation(
            LinearLayout.VERTICAL
        );

        info.setPadding(
            dp(14),
            0,
            dp(8),
            0
        );

        TextView live =
            tv(
                "🔴 LIVE",
                11,
                Color.RED,
                true
            );

        info.addView(live);

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

        info.addView(title);

        String channelInfo = "";

        if (
            x.lang != null &&
            !x.lang.trim().isEmpty()
        ) {

            channelInfo = x.lang;

        }

        if (
            x.category != null &&
            !x.category.trim().isEmpty()
        ) {

            if (
                !channelInfo.isEmpty()
            ) {

                channelInfo += " • ";

            }

            channelInfo += x.category;

        }

        info.addView(
            tv(
                channelInfo,
                12,
                MUTED,
                false
            )
        );

        card.addView(
            info,
            new LinearLayout.LayoutParams(
                0,
                -1,
                1
            )
        );

        TextView play =
            tv(
                "▶",
                28,
                ACCENT,
                true
            );

        card.addView(
            play,
            new LinearLayout.LayoutParams(
                dp(50),
                -1
            )
        );

        card.setOnClickListener(v -> {

            watchMovie(x);

        });

        parent.addView(
            card,
            cardParams
        );
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



    void liveTvManager() {
        base();

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(18, 16, 12, 8);

        TextView title = tv("🔴 Live TV", 22, WHITE, true);
        header.addView(title, new LinearLayout.LayoutParams(0, -2, 1));

        Button refresh = btn("REFRESH");
        refresh.setOnClickListener(v -> {
            Toast.makeText(
                this,
                "Refreshing Live TV...",
                Toast.LENGTH_SHORT
            ).show();
            loadLiveFromApi(true);
        });
        header.addView(refresh);

        current.addView(header);

        TextView help = tv(
            "Authorized Live TV channels • tap a channel to play",
            14,
            MUTED,
            false
        );
        help.setPadding(20, 0, 20, 16);
        current.addView(help);

        EditText nameInput = new EditText(this);
        nameInput.setHint("Channel Name");
        current.addView(nameInput);

        EditText urlInput = new EditText(this);
        urlInput.setHint("Authorized Live Stream URL");
        urlInput.setSingleLine(true);
        current.addView(urlInput);

        Button saveButton = btn("SAVE LOCAL CHANNEL");
        saveButton.setOnClickListener(v -> {
            String name = nameInput.getText().toString().trim();
            String url = urlInput.getText().toString().trim();

            if (name.isEmpty() || url.isEmpty()) {
                Toast.makeText(
                    this,
                    "Enter channel name and stream URL",
                    Toast.LENGTH_SHORT
                ).show();
                return;
            }

            addLiveChannel(name, url);
            loadLiveChannels();
            nameInput.setText("");
            urlInput.setText("");
            Toast.makeText(
                this,
                "Live channel saved",
                Toast.LENGTH_SHORT
            ).show();
            liveTvManager();
        });

        current.addView(saveButton);

        TextView savedTitle = tv(
            "AVAILABLE LIVE CHANNELS",
            18,
            WHITE,
            true
        );
        savedTitle.setPadding(20, 28, 20, 12);
        current.addView(savedTitle);

        if (liveChannels.size() == 0) {
            loadLiveChannels();
        }

        if (liveChannels.size() == 0) {
            TextView empty = tv(
                "No authorized Live TV channels available. Tap REFRESH.",
                14,
                MUTED,
                false
            );
            empty.setPadding(20, 10, 20, 20);
            current.addView(empty);
        } else {
            for (Item x : liveChannels) {
                LinearLayout row = new LinearLayout(this);
                row.setOrientation(LinearLayout.HORIZONTAL);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setPadding(16, 10, 16, 10);
                row.setBackgroundColor(PANEL);

                ImageView logo = new ImageView(this);
                loadPoster(logo, x.poster, x.backdrop);
                logo.setScaleType(ImageView.ScaleType.CENTER_CROP);
                row.addView(
                    logo,
                    new LinearLayout.LayoutParams(dp(76), dp(54))
                );

                LinearLayout info = new LinearLayout(this);
                info.setOrientation(LinearLayout.VERTICAL);
                info.setPadding(12, 0, 8, 0);

                TextView channelName = tv(
                    "🔴 " + x.title,
                    16,
                    WHITE,
                    true
                );
                info.addView(channelName);

                String metaText =
                    (x.lang == null || x.lang.isEmpty() ? "LIVE" : x.lang)
                    + " • "
                    + (x.category == null || x.category.isEmpty()
                        ? "Live TV" : x.category);

                info.addView(
                    tv(metaText, 12, MUTED, false)
                );

                row.addView(
                    info,
                    new LinearLayout.LayoutParams(0, -2, 1)
                );

                Button play = btn("PLAY");
                play.setOnClickListener(v -> watchMovie(x));
                row.addView(play);

                row.setOnClickListener(v -> watchMovie(x));

                LinearLayout.LayoutParams rp =
                    new LinearLayout.LayoutParams(-1, dp(76));
                rp.setMargins(10, 4, 10, 4);
                current.addView(row, rp);
            }
        }

        // If there are no local channels, fetch the server catalog automatically.
        if (liveChannels.size() == 0) {
            loadLiveFromApi(true);
        }
    }

    void loadLiveFromApi(boolean returnToLiveScreen) {
        new Thread(() -> {
            HttpURLConnection conn = null;

            try {
                String apiUrl =
                    "https://gama-aala-v11.onrender.com/api/live";

                conn = (HttpURLConnection)
                    new URL(apiUrl).openConnection();

                conn.setRequestMethod("GET");
                conn.setConnectTimeout(10000);
                conn.setReadTimeout(15000);

                InputStream input = conn.getInputStream();
                ByteArrayOutputStream output = new ByteArrayOutputStream();

                byte[] buffer = new byte[4096];
                int count;

                while ((count = input.read(buffer)) != -1) {
                    output.write(buffer, 0, count);
                }

                input.close();

                JSONObject root =
                    new JSONObject(output.toString("UTF-8"));
                JSONArray live = root.optJSONArray("live");

                ArrayList<Item> remote = new ArrayList<>();

                if (live != null) {
                    for (int i = 0; i < live.length(); i++) {
                        JSONObject entry = live.getJSONObject(i);

                        String url = entry.optString("video_url", "").trim();
                        if (url.isEmpty()
                                || !entry.optBoolean("authorized", false)) {
                            continue;
                        }

                        JSONObject o = new JSONObject();
                        o.put("id", entry.optString(
                            "id", "live_" + i
                        ));
                        o.put("title", entry.optString(
                            "title", "Live Channel"
                        ));
                        o.put("kind", "Live");
                        o.put("lang", entry.optString("lang", "Live"));
                        o.put("genre", "Live TV");
                        o.put("category", entry.optString(
                            "category", "Live TV"
                        ));
                        o.put("rating", "LIVE");
                        o.put("video_url", url);
                        o.put("poster", entry.optString("poster", ""));
                        o.put("backdrop", entry.optString("backdrop", ""));
                        o.put("current_program",
                            entry.optString("current_program", ""));
                        o.put("next_program",
                            entry.optString("next_program", ""));
                        o.put("authorized", true);

                        remote.add(new Item(o));
                    }
                }

                runOnUiThread(() -> {
                    liveChannels.clear();
                    liveChannels.addAll(remote);

                    if (returnToLiveScreen) {
                        liveTvManager();
                    } else {
                        home();
                    }

                    Toast.makeText(
                        this,
                        remote.size() + " live channels loaded",
                        Toast.LENGTH_SHORT
                    ).show();
                });

            } catch (Exception e) {
                runOnUiThread(() ->
                    Toast.makeText(
                        this,
                        "Live TV server unavailable",
                        Toast.LENGTH_SHORT
                    ).show()
                );
            } finally {
                if (conn != null) {
                    conn.disconnect();
                }
            }
        }).start();
    }

    void adminContentManager() {

        base();

        TextView title = tv(
            "Content Manager",
            22,
            WHITE,
            true
        );

        title.setPadding(
            20, 20, 20, 20
        );

        current.addView(title);


        TextView help = tv(
            "Add authorized video source using TMDB ID",
            14,
            MUTED,
            false
        );

        help.setPadding(
            20, 0, 20, 20
        );

        current.addView(help);


        EditText tmdbInput =
            new EditText(this);

        tmdbInput.setHint(
            "TMDB ID"
        );

        tmdbInput.setInputType(
            android.text.InputType.TYPE_CLASS_NUMBER
        );

        current.addView(
            tmdbInput
        );


        EditText urlInput =
            new EditText(this);

        urlInput.setHint(
            "Authorized Video URL"
        );

        urlInput.setSingleLine(false);

        current.addView(
            urlInput
        );


        Button saveButton =
            btn("SAVE VIDEO SOURCE");

        saveButton.setOnClickListener(v -> {

            try {

                int tmdbId =
                    Integer.parseInt(
                        tmdbInput
                            .getText()
                            .toString()
                            .trim()
                    );

                String videoUrl =
                    urlInput
                        .getText()
                        .toString()
                        .trim();

                if (
                    videoUrl.isEmpty()
                ) {

                    Toast.makeText(
                        this,
                        "Enter video URL",
                        Toast.LENGTH_SHORT
                    ).show();

                    return;
                }


                saveContentSource(
                    tmdbId,
                    videoUrl
                );

                applySavedContentSources();

                Toast.makeText(
                    this,
                    "Video source saved",
                    Toast.LENGTH_LONG
                ).show();

                tmdbInput.setText("");
                urlInput.setText("");

            } catch (Exception e) {

                Toast.makeText(
                    this,
                    "Enter valid TMDB ID",
                    Toast.LENGTH_SHORT
                ).show();
            }
        });


        current.addView(
            saveButton
        );


        TextView savedTitle =
            tv(
                "SAVED CONTENT",
                18,
                WHITE,
                true
            );

        savedTitle.setPadding(
            20,
            30,
            20,
            15
        );

        current.addView(savedTitle);


        Set<String> savedIds =
            prefs.getStringSet(
                "saved_video_ids",
                new HashSet<>()
            );


        if (
            savedIds == null ||
            savedIds.isEmpty()
        ) {

            TextView empty =
                tv(
                    "No saved video sources",
                    14,
                    MUTED,
                    false
                );

            empty.setPadding(
                20,
                10,
                20,
                20
            );

            current.addView(empty);

        } else {

            for (String id : savedIds) {

                LinearLayout row =
                    new LinearLayout(this);

                row.setOrientation(
                    LinearLayout.HORIZONTAL
                );

                row.setPadding(
                    20,
                    10,
                    20,
                    10
                );


                TextView idView =
                    tv(
                        "TMDB ID: " + id,
                        14,
                        WHITE,
                        false
                    );


                row.addView(
                    idView,
                    new LinearLayout.LayoutParams(
                        0,
                        -2,
                        1
                    )
                );


                Button editButton =
                    btn("EDIT");

                editButton.setOnClickListener(v -> {

                    String savedUrl =
                        getContentSource(
                            Integer.parseInt(id)
                        );

                    tmdbInput.setText(id);

                    urlInput.setText(
                        savedUrl
                    );

                    Toast.makeText(
                        this,
                        "Content loaded for editing",
                        Toast.LENGTH_SHORT
                    ).show();
                });

                row.addView(
                    editButton
                );


                Button deleteButton =
                    btn("DELETE");


                deleteButton.setOnClickListener(v -> {

                    Set<String> ids =
                        new HashSet<>(
                            prefs.getStringSet(
                                "saved_video_ids",
                                new HashSet<>()
                            )
                        );

                    ids.remove(id);

                    prefs.edit()
                        .remove(
                            "video_source_" + id
                        )
                        .putStringSet(
                            "saved_video_ids",
                            ids
                        )
                        .apply();

                    Toast.makeText(
                        this,
                        "Video source deleted",
                        Toast.LENGTH_SHORT
                    ).show();

                    adminContentManager();
                });


                row.addView(
                    deleteButton
                );


                current.addView(
                    row
                );
            }
        }


        Button backButton =
            btn("BACK TO HOME");

        backButton.setOnClickListener(
            v -> home()
        );

        current.addView(
            backButton
        );
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

        TextView tmdbDebug = tv(
            "TMDB ID: " + x.tmdbId,
            12,
            MUTED,
            false
        );

        current.addView(tmdbDebug);

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

        // Agar custom videoUrl diya hai toh use karo
        if (
            x.videoUrl != null &&
            !x.videoUrl.trim().isEmpty()
        ) {
            return x.videoUrl.trim();
        }

        // Warna vidsrc embed URL banao
        if (x.tmdbId <= 0) {
            return null;
        }

        if (
            "Series".equals(x.kind) ||
            "TV".equals(x.kind) ||
            "Web Series".equals(x.kind)
        ) {
            return "https://vidsrc.to/embed/tv/"
                + x.tmdbId + "/1/1";
        } else {
            return "https://vidsrc.to/embed/movie/"
                + x.tmdbId;
        }
    }

    void watchTrailer(Item x) {

        String query = x.title;

        if (
            x.year != null &&
            !x.year.trim().isEmpty()
        ) {
            query += " " + x.year;
        }

        openTrailer(
            query,
            x.kind
        );
    }



    @Override
    protected void onStop() {
        super.onStop();
        releaseActivePlayer();
    }


    void releaseActivePlayer() {
        if (activeWebPlayer != null) {
            activeWebPlayer.loadUrl("about:blank");
            activeWebPlayer.destroy();
            activeWebPlayer = null;
        }

        if (resumeSaver != null) {
            resumeHandler.removeCallbacks(resumeSaver);
            resumeSaver = null;
        }

        if (
            activePlayer != null &&
            activeVideoKey != null
        ) {

            long position =
                activePlayer.getCurrentPosition();

            long duration =
                activePlayer.getDuration();

            if (
                position > 5000 &&
                (
                    duration <= 0 ||
                    position < duration - 5000
                )
            ) {

                prefs.edit()
                    .putLong(
                        "resume_" + activeVideoKey,
                        position
                    )
                    .apply();
            }
        }

        if (activePlayer != null) {
            activePlayer.release();
            activePlayer = null;
        }

        activeVideoKey = null;
    }


    void watchMovieWebView(Item x) {
        releaseActivePlayer();

        String sourceUrl = getVideoSource(x);
        if (sourceUrl == null || sourceUrl.trim().isEmpty()) {
            Toast.makeText(this, "Video source not available for this content", Toast.LENGTH_LONG).show();
            return;
        }

        base();

        LinearLayout top = new LinearLayout(this);
        top.setGravity(Gravity.CENTER_VERTICAL);
        top.setPadding(12, 8, 12, 8);

        Button back = btn("\u2039");
        back.setTextSize(28);
        back.setTextColor(WHITE);
        back.setOnClickListener(v -> {
            releaseActivePlayer();
            details(x);
        });
        top.addView(back, new LinearLayout.LayoutParams(dp(60), dp(54)));

        TextView title = tv(x.title, 18, WHITE, true);
        title.setSingleLine(true);
        title.setEllipsize(TextUtils.TruncateAt.END);
        top.addView(title, new LinearLayout.LayoutParams(0, dp(54), 1));

        current.addView(top, new LinearLayout.LayoutParams(-1, dp(70)));

        FrameLayout playerContainer = new FrameLayout(this);
        playerContainer.setBackgroundColor(Color.BLACK);

        WebView webPlayer = new WebView(this);
        webPlayer.setBackgroundColor(Color.BLACK);

        WebSettings ws = webPlayer.getSettings();
        ws.setJavaScriptEnabled(true);
        ws.setDomStorageEnabled(true);
        ws.setMediaPlaybackRequiresUserGesture(false);
        ws.setLoadWithOverviewMode(true);
        ws.setUseWideViewPort(true);

        android.webkit.CookieManager.getInstance().setAcceptCookie(true);
        android.webkit.CookieManager.getInstance().setAcceptThirdPartyCookies(webPlayer, true);

        webPlayer.setWebViewClient(new WebViewClient());
        webPlayer.setWebChromeClient(new WebChromeClient());

        webPlayer.loadUrl(sourceUrl);

        playerContainer.addView(webPlayer, new FrameLayout.LayoutParams(-1, -1));

        current.addView(playerContainer, new LinearLayout.LayoutParams(-1, 0, 1));

        activeWebPlayer = webPlayer;
    }

    void watchMovie(Item x) {
        boolean isLive =
            "Live".equals(x.kind)
            || "Live TV".equals(x.kind);

        if (!isLive) {
            watchMovieWebView(x);
            return;
        }

        String sourceUrl = getVideoSource(x);

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
            v -> {
                releaseActivePlayer();
                details(x);
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

        LinearLayout playerContainer =
            new LinearLayout(this);

        playerContainer.setOrientation(
            LinearLayout.VERTICAL
        );

        androidx.media3.ui.PlayerView playerView =
            new androidx.media3.ui.PlayerView(this);

        playerView.setUseController(true);

        // Default: show complete video
        playerView.setResizeMode(
            androidx.media3.ui.AspectRatioFrameLayout
                .RESIZE_MODE_FILL
        );

        playerView.setShowBuffering(
            androidx.media3.ui.PlayerView
                .SHOW_BUFFERING_ALWAYS
        );

        playerView.setBackgroundColor(Color.BLACK);

        playerContainer.addView(
            playerView,
            new LinearLayout.LayoutParams(
                -1,
                dp(240)
            )
        );

        Button fullscreenButton =
            btn("⛶ FULLSCREEN");

        fullscreenButton.setOnClickListener(v -> {

            android.app.Dialog fullscreenDialog =
                new android.app.Dialog(MainActivity.this);

            fullscreenDialog.requestWindowFeature(
                android.view.Window.FEATURE_NO_TITLE
            );

            android.widget.FrameLayout fullscreenContainer =
                new android.widget.FrameLayout(
                    MainActivity.this
                );

            fullscreenContainer.setBackgroundColor(
                android.graphics.Color.BLACK
            );

                        // CLEAN FULLSCREEN VIDEO SETUP

            // Always start fullscreen in normal FIT mode
            playerView.setResizeMode(
                androidx.media3.ui.AspectRatioFrameLayout
                    .RESIZE_MODE_FILL
            );

            // Get actual video surface
            android.view.View videoSurface =
                playerView.getVideoSurfaceView();

            // Reset EVERYTHING before entering fullscreen
            playerView.setScaleX(1.0f);
            playerView.setScaleY(1.0f);
            playerView.setTranslationX(0f);
            playerView.setTranslationY(0f);

            if (videoSurface != null) {
                videoSurface.setScaleX(1.0f);
                videoSurface.setScaleY(1.0f);
                videoSurface.setTranslationX(0f);
                videoSurface.setTranslationY(0f);
            }

            // Pinch zoom level
            final float[] zoomLevel = {1.0f};

            // Real two-finger pinch zoom
            android.view.ScaleGestureDetector scaleDetector =
                new android.view.ScaleGestureDetector(
                    MainActivity.this,
                    new android.view.ScaleGestureDetector
                        .SimpleOnScaleGestureListener() {

                        @Override
                        public boolean onScale(
                            android.view.ScaleGestureDetector detector
                        ) {

                            zoomLevel[0] =
                                zoomLevel[0] *
                                detector.getScaleFactor();

                            if (zoomLevel[0] < 1.0f) {
                                zoomLevel[0] = 1.0f;
                            }

                            if (zoomLevel[0] > 3.0f) {
                                zoomLevel[0] = 3.0f;
                            }

                            if (videoSurface != null) {

                                videoSurface.setPivotX(
                                    videoSurface.getWidth() / 2f
                                );

                                videoSurface.setPivotY(
                                    videoSurface.getHeight() / 2f
                                );

                                videoSurface.setScaleX(
                                    zoomLevel[0]
                                );

                                videoSurface.setScaleY(
                                    zoomLevel[0]
                                );
                            }

                            return true;
                        }
                    }
                );

            // Forward touch events to pinch detector
            playerView.setOnTouchListener(
                (touchView, event) -> {

                    scaleDetector.onTouchEvent(event);

                    // Do not block normal player controls
                    return false;
                }
            );

            // Remove PlayerView from normal container
            if (playerView.getParent() != null) {
                ((android.view.ViewGroup)
                    playerView.getParent()
                ).removeView(playerView);
            }

            // Add PlayerView to fullscreen
            fullscreenContainer.addView(
                playerView,
                new android.widget.FrameLayout.LayoutParams(
                    -1,
                    -1
                )
            );

            // Force fresh layout
            playerView.requestLayout();

            fullscreenDialog.setContentView(
                fullscreenContainer
            );

            android.view.Window window =
                fullscreenDialog.getWindow();

            if (window != null) {

                window.setLayout(
                    -1,
                    -1
                );

                window.setBackgroundDrawable(
                    new android.graphics.drawable.ColorDrawable(
                        android.graphics.Color.BLACK
                    )
                );

                if (
                    android.os.Build.VERSION.SDK_INT >= 30
                ) {

                    window.setDecorFitsSystemWindows(
                        false
                    );

                    if (
                        window.getInsetsController() != null
                    ) {

                        window.getInsetsController().hide(
                            android.view.WindowInsets.Type.statusBars()
                            |
                            android.view.WindowInsets.Type.navigationBars()
                        );

                        window.getInsetsController()
                            .setSystemBarsBehavior(
                                android.view.WindowInsetsController
                                    .BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
                            );
                    }

                } else {

                    window.getDecorView()
                        .setSystemUiVisibility(
                            android.view.View.SYSTEM_UI_FLAG_FULLSCREEN
                            |
                            android.view.View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                            |
                            android.view.View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                        );
                }
            }

            setRequestedOrientation(
                android.content.pm.ActivityInfo
                    .SCREEN_ORIENTATION_LANDSCAPE
            );

            fullscreenDialog.setOnDismissListener(d -> {

                playerView.setOnTouchListener(null);

                android.view.View videoSurfaceReset =
                    playerView.getVideoSurfaceView();

                if (videoSurfaceReset != null) {
                    videoSurfaceReset.setScaleX(1.0f);
                    videoSurfaceReset.setScaleY(1.0f);
                    videoSurfaceReset.setTranslationX(0f);
                    videoSurfaceReset.setTranslationY(0f);
                }

                playerView.setResizeMode(
                    androidx.media3.ui.AspectRatioFrameLayout
                        .RESIZE_MODE_FILL
                );

                if (playerView.getParent() != null) {

                    ((android.view.ViewGroup) playerView.getParent())
                        .removeView(playerView);
                }

                playerContainer.addView(
                    playerView,
                    0,
                    new LinearLayout.LayoutParams(
                        -1,
                        dp(240)
                    )
                );

                setRequestedOrientation(
                    android.content.pm.ActivityInfo
                        .SCREEN_ORIENTATION_PORTRAIT
                );

                getWindow().clearFlags(
                    android.view.WindowManager.LayoutParams
                        .FLAG_FULLSCREEN
                );

                if (
                    android.os.Build.VERSION.SDK_INT >= 30
                ) {

                    if (
                        getWindow().getInsetsController() != null
                    ) {

                        getWindow()
                            .getInsetsController()
                            .show(
                                android.view.WindowInsets.Type.statusBars()
                                |
                                android.view.WindowInsets.Type.navigationBars()
                            );
                    }

                } else {

                    getWindow()
                        .getDecorView()
                        .setSystemUiVisibility(
                            android.view.View.SYSTEM_UI_FLAG_VISIBLE
                        );
                }
            });

            fullscreenDialog.show();

            if (fullscreenDialog.getWindow() != null) {

                fullscreenDialog.getWindow().setLayout(
                    -1,
                    -1
                );
            }
        });

        playerContainer.addView(
            fullscreenButton
        );

        current.addView(
            playerContainer
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

            releaseActivePlayer();

            activeVideoKey =
                Integer.toHexString(
                    (x.tmdbId + "|" + x.title).hashCode()
                );

            long savedPosition =
                prefs.getLong(
                    "resume_" + activeVideoKey,
                    0
                );

            activePlayer =
                new androidx.media3.exoplayer.ExoPlayer
                    .Builder(this)
                    .build();

            androidx.media3.exoplayer.ExoPlayer player =
                activePlayer;

            playerView.setPlayer(player);

            android.net.Uri mediaUri =
                android.net.Uri.parse(sourceUrl);

            androidx.media3.common.MediaItem mediaItem =
                androidx.media3.common.MediaItem
                    .fromUri(mediaUri);

            String lowerSource = sourceUrl.toLowerCase(Locale.ROOT);

            if (lowerSource.contains(".m3u8")) {
                mediaItem =
                    new androidx.media3.common.MediaItem.Builder()
                        .setUri(mediaUri)
                        .setMimeType(
                            androidx.media3.common.MimeTypes.APPLICATION_M3U8
                        )
                        .build();
            }

            player.setMediaItem(mediaItem);

            if (savedPosition > 5000) {
                player.seekTo(savedPosition);
                status.setText("Resuming video...");
            }

            player.addListener(
                new androidx.media3.common.Player.Listener() {

                    @Override
                    public void onPlaybackStateChanged(
                        int playbackState
                    ) {

                        if (
                            playbackState ==
                            androidx.media3.common.Player.STATE_BUFFERING
                        ) {
                            status.setText("Buffering...");
                        }

                        if (
                            playbackState ==
                            androidx.media3.common.Player.STATE_READY
                        ) {
                            status.setText("Playing");
                        }

                        if (
                            playbackState ==
                            androidx.media3.common.Player.STATE_ENDED
                        ) {
                            status.setText("Video finished");

                            if (activeVideoKey != null) {
                                prefs.edit()
                                    .remove(
                                        "resume_" +
                                        activeVideoKey
                                    )
                                    .apply();
                            }
                        }
                    }

                    @Override
                    public void onPlayerError(
                        androidx.media3.common.PlaybackException error
                    ) {

                        android.util.Log.e(
                            "GAMA_PLAYER",
                            "VIDEO ERROR: "
                            + sourceUrl,
                            error
                        );

                        status.setText(
                            "Video error: "
                            + error.getErrorCodeName()
                        );
                    }
                }
            );

            resumeSaver =
                new Runnable() {

                    @Override
                    public void run() {

                        if (
                            activePlayer != null &&
                            activeVideoKey != null
                        ) {

                            long position =
                                activePlayer
                                    .getCurrentPosition();

                            if (position > 5000) {

                                prefs.edit()
                                    .putLong(
                                        "resume_" +
                                        activeVideoKey,
                                        position
                                    )
                                    .apply();
                            }

                            resumeHandler.postDelayed(
                                this,
                                5000
                            );
                        }
                    }
                };

            resumeHandler.postDelayed(
                resumeSaver,
                5000
            );

            player.prepare();

            player.play();

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
    

        Button liveManager =
            btn("LIVE TV MANAGER");

        liveManager.setOnClickListener(
            v -> liveTvManager()
        );

        current.addView(
            liveManager
        );


        Button contentManager =
            btn("CONTENT MANAGER");

        contentManager.setOnClickListener(
            v -> adminContentManager()
        );

        current.addView(
            contentManager
        );

    }

    @Override
    public void onBackPressed() {

        home();
    }
}
