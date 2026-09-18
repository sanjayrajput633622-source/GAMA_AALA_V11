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

    // Voice search
    static final int VOICE_REQUEST = 1001;
    EditText lastSearchBox = null;
    LinearLayout lastSearchResults = null;
    String pendingVoiceQuery = null;
    boolean autoPlayFirstResult = false;
    android.speech.tts.TextToSpeech tts = null;
    boolean ttsReady = false;

    // 18+ PIN lock
    static final String DEFAULT_PIN = "1234";
    boolean adultUnlocked = false;
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
        String sourceType, sourceUrl;

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
            sourceType = o.optString("source_type", "hls");
            sourceUrl = o.optString("source_url", "");

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

        // Force hardware volume buttons to control media stream
        setVolumeControlStream(
            android.media.AudioManager.STREAM_MUSIC
        );

        // Initialize TTS for voice feedback
        tts = new android.speech.tts.TextToSpeech(this, status -> {
            if (status == android.speech.tts.TextToSpeech.SUCCESS) {
                try {
                    java.util.Locale hindi = new java.util.Locale("hi", "IN");
                    int result = tts.setLanguage(hindi);
                    if (result == android.speech.tts.TextToSpeech.LANG_MISSING_DATA
                        || result == android.speech.tts.TextToSpeech.LANG_NOT_SUPPORTED) {
                        tts.setLanguage(java.util.Locale.ENGLISH);
                    }
                    ttsReady = true;
                } catch (Exception ignored) {
                    ttsReady = false;
                }
            }
        });

        screen = findViewById(R.id.screen);

        prefs = getSharedPreferences("gama_aala", MODE_PRIVATE);

        // Don't load content until language selected
        if (prefs.getBoolean("lang_selected", false)) {
            load();
            loadMyList();
        }

        findViewById(R.id.navHome).setOnClickListener(v -> home());
        findViewById(R.id.navMovies).setOnClickListener(v -> movies());
        findViewById(R.id.navTv).setOnClickListener(v -> shows());
        findViewById(R.id.navDownload).setOnClickListener(v -> downloads());
        findViewById(R.id.navLive).setOnClickListener(v -> liveTvManager());
        findViewById(R.id.navMe).setOnClickListener(v -> profile());

        // First launch: language selection screen
        if (!prefs.getBoolean("lang_selected", false)) {
            languageSelection();
        } else {
            home();
        }
    }

    void languageSelection() {
        base();

        LinearLayout wrap = new LinearLayout(this);
        wrap.setOrientation(LinearLayout.VERTICAL);
        wrap.setPadding(dp(20), dp(40), dp(20), dp(20));

        // Title
        TextView title = tv(
            "Choose Preferred Languages",
            26, WHITE, true
        );
        title.setGravity(Gravity.CENTER);
        wrap.addView(title);

        // Subtitle
        TextView sub = tv(
            "Select your languages for better content suggestions",
            13, MUTED, false
        );
        sub.setGravity(Gravity.CENTER);
        sub.setPadding(0, dp(10), 0, dp(30));
        wrap.addView(sub);

        // Languages list
        String[][] langs = {
            {"हिन्दी", "Hindi", "hi"},
            {"English", "English", "en"},
            {"தமிழ்", "Tamil", "ta"},
            {"తెలుగు", "Telugu", "te"},
            {"മലയാളം", "Malayalam", "ml"},
            {"ಕನ್ನಡ", "Kannada", "kn"},
            {"বাংলা", "Bengali", "bn"},
            {"मराठी", "Marathi", "mr"},
            {"ਪੰਜਾਬੀ", "Punjabi", "pa"},
            {"ગુજરાતી", "Gujarati", "gu"}
        };

        java.util.HashSet<String> selected = new java.util.HashSet<>();
        selected.add("hi"); // Default Hindi selected
        selected.add("en"); // Default English selected

        // Grid container
        LinearLayout grid = new LinearLayout(this);
        grid.setOrientation(LinearLayout.VERTICAL);

        java.util.List<LinearLayout> langCards = new java.util.ArrayList<>();
        java.util.List<String> langCodes = new java.util.ArrayList<>();

        // 2-column rows
        for (int i = 0; i < langs.length; i += 2) {
            LinearLayout row = new LinearLayout(this);
            row.setOrientation(LinearLayout.HORIZONTAL);
            LinearLayout.LayoutParams rowP =
                new LinearLayout.LayoutParams(-1, -2);
            rowP.setMargins(0, dp(6), 0, dp(6));

            for (int j = 0; j < 2 && i + j < langs.length; j++) {
                String native_ = langs[i + j][0];
                String english = langs[i + j][1];
                String code = langs[i + j][2];

                LinearLayout card = new LinearLayout(this);
                card.setOrientation(LinearLayout.VERTICAL);
                card.setGravity(Gravity.CENTER);
                card.setPadding(dp(12), dp(18), dp(12), dp(18));
                card.setBackground(shape(
                    selected.contains(code) ? 0xFFFFBE37 : 0xFF1A1C22,
                    16
                ));

                TextView nativeTv = tv(
                    native_,
                    22,
                    selected.contains(code) ? 0xFF090A0E : WHITE,
                    true
                );
                nativeTv.setGravity(Gravity.CENTER);
                card.addView(nativeTv);

                TextView englishTv = tv(
                    english.toUpperCase(),
                    11,
                    selected.contains(code) ? 0xFF3A3A3A : 0xFFFFBE37,
                    true
                );
                englishTv.setGravity(Gravity.CENTER);
                englishTv.setPadding(0, dp(6), 0, 0);
                card.addView(englishTv);

                card.setOnClickListener(v -> {
                    if (selected.contains(code)) {
                        selected.remove(code);
                        card.setBackground(shape(0xFF1A1C22, 16));
                        nativeTv.setTextColor(WHITE);
                        englishTv.setTextColor(0xFFFFBE37);
                    } else {
                        selected.add(code);
                        card.setBackground(shape(0xFFFFBE37, 16));
                        nativeTv.setTextColor(0xFF090A0E);
                        englishTv.setTextColor(0xFF3A3A3A);
                    }
                });

                langCards.add(card);
                langCodes.add(code);

                LinearLayout.LayoutParams cp =
                    new LinearLayout.LayoutParams(0, dp(100), 1);
                cp.setMargins(dp(6), 0, dp(6), 0);
                row.addView(card, cp);
            }

            grid.addView(row, rowP);
        }

        wrap.addView(grid);

        // Clear All button
        LinearLayout btnRow = new LinearLayout(this);
        btnRow.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams btnRowP =
            new LinearLayout.LayoutParams(-1, dp(56));
        btnRowP.setMargins(0, dp(30), 0, 0);

        Button clearBtn = btn("CLEAR ALL");
        clearBtn.setTextColor(WHITE);
        clearBtn.setBackground(shape(0xFF2A2C34, 30));
        clearBtn.setOnClickListener(v -> {
            selected.clear();
            for (int k = 0; k < langCards.size(); k++) {
                langCards.get(k).setBackground(shape(0xFF1A1C22, 16));
                LinearLayout c = langCards.get(k);
                ((TextView) c.getChildAt(0)).setTextColor(WHITE);
                ((TextView) c.getChildAt(1)).setTextColor(0xFFFFBE37);
            }
        });

        LinearLayout.LayoutParams halfP =
            new LinearLayout.LayoutParams(0, dp(56), 1);
        halfP.setMargins(0, 0, dp(6), 0);
        btnRow.addView(clearBtn, halfP);

        Button continueBtn = btn("CONTINUE");
        continueBtn.setTextColor(0xFF090A0E);
        continueBtn.setBackground(shape(0xFFFFBE37, 30));
        continueBtn.setOnClickListener(v -> {
            if (selected.isEmpty()) {
                Toast.makeText(
                    this,
                    "Please select at least one language",
                    Toast.LENGTH_SHORT
                ).show();
                return;
            }
            prefs.edit()
                .putStringSet("selected_languages", selected)
                .putBoolean("lang_selected", true)
                .commit();
            Toast.makeText(
                this,
                selected.size() + " languages selected",
                Toast.LENGTH_SHORT
            ).show();
            home();
        });

        LinearLayout.LayoutParams halfP2 =
            new LinearLayout.LayoutParams(0, dp(56), 1);
        halfP2.setMargins(dp(6), 0, 0, 0);
        btnRow.addView(continueBtn, halfP2);

        wrap.addView(btnRow);

        current.addView(wrap);
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

        if (path.startsWith("/") || path.startsWith("http")) {

            new Thread(() -> {

                HttpURLConnection conn = null;
                InputStream in = null;

                try {

                    String fullUrl = path.startsWith("http")
                        ? path
                        : "https://image.tmdb.org/t/p/w500" + path;

                    URL url = new URL(fullUrl);

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
            // Genre IDs se genre names banao
            String genreStr = "";
            org.json.JSONArray gids = o.optJSONArray("genre_ids");
            if (gids != null) {
                StringBuilder gsb = new StringBuilder();
                for (int gi = 0; gi < gids.length(); gi++) {
                    int gid = gids.optInt(gi, 0);
                    String gname = tmdbGenreName(gid, kind);
                    if (!gname.isEmpty()) {
                        if (gsb.length() > 0) gsb.append(",");
                        gsb.append(gname);
                    }
                }
                genreStr = gsb.toString();
            }
            item.put("genre", genreStr);
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


    String tmdbGenreName(int id, String kind) {
        if ("Movie".equals(kind)) {
            switch (id) {
                case 28: return "Action";
                case 12: return "Adventure";
                case 16: return "Animation";
                case 35: return "Comedy";
                case 80: return "Crime";
                case 99: return "Documentary";
                case 18: return "Drama";
                case 10751: return "Family";
                case 14: return "Fantasy";
                case 36: return "History";
                case 27: return "Horror";
                case 10402: return "Music";
                case 9648: return "Mystery";
                case 10749: return "Romance";
                case 878: return "Sci-Fi";
                case 10770: return "TV Movie";
                case 53: return "Thriller";
                case 10752: return "War";
                case 37: return "Western";
            }
        } else {
            switch (id) {
                case 10759: return "Action";
                case 16: return "Animation";
                case 35: return "Comedy";
                case 80: return "Crime";
                case 99: return "Documentary";
                case 18: return "Drama";
                case 10751: return "Family";
                case 10762: return "Kids";
                case 9648: return "Mystery";
                case 10763: return "News";
                case 10764: return "Reality";
                case 10765: return "Sci-Fi";
                case 10766: return "Soap";
                case 10767: return "Talk";
                case 10768: return "War";
            }
        }
        return "";
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

                        String title =
                            entry.optString(
                                "title",
                                ""
                            );

                        String category =
                            entry.optString(
                                "category",
                                ""
                            );

                        boolean authorized =
                            entry.optBoolean(
                                "authorized",
                                false
                            );

                        // Try to match existing TMDB item
                        boolean matched = false;
                        for (Item item : data) {
                            if (item.tmdbId == tmdbId && tmdbId != 0) {
                                if (!videoUrl.trim().isEmpty()) {
                                    item.videoUrl = videoUrl;
                                }
                                matched = true;
                                break;
                            }
                        }

                        // Agar match nahi mila, toh naya item add karo
                        // (Ye 18+ content ke liye zaroori hai)
                        if (!matched && !title.trim().isEmpty()) {
                            JSONObject newItem = new JSONObject();
                            newItem.put("title", title);
                            newItem.put("kind",
                                entry.optString("kind", "Movie"));
                            newItem.put("lang",
                                entry.optString("lang", "HI"));
                            newItem.put("genre",
                                entry.optString("genre", ""));
                            newItem.put("category", category);
                            newItem.put("rating",
                                entry.optString("rating", "0.0"));
                            newItem.put("poster",
                                entry.optString("poster", ""));
                            newItem.put("backdrop",
                                entry.optString("backdrop", ""));
                            newItem.put("year",
                                entry.optString("year", ""));
                            newItem.put("duration",
                                entry.optString("duration", ""));
                            newItem.put("description",
                                entry.optString("description", ""));
                            newItem.put("trailer",
                                entry.optString("trailer", ""));
                            newItem.put("video_url", videoUrl);
                            newItem.put("tmdb_id", tmdbId);
                            newItem.put("authorized", authorized);

                            data.add(new Item(newItem));

                            android.util.Log.d(
                                "GAMA_API",
                                "NEW ITEM ADDED: "
                                + title
                                + " | Cat="
                                + category
                            );
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
                0,
                dp(54),
                1
            )
        );

        android.widget.ImageButton micBtn =
            new android.widget.ImageButton(this);
        micBtn.setImageResource(
            android.R.drawable.ic_btn_speak_now
        );
        micBtn.setBackgroundColor(0xFFFFBE37);
        micBtn.setOnClickListener(v -> startVoiceSearch());

        LinearLayout.LayoutParams mp =
            new LinearLayout.LayoutParams(dp(54), dp(54));
        mp.setMargins(dp(8), 0, 0, 0);
        r.addView(micBtn, mp);

        current.addView(r);
    }

    void startVoiceSearch() {
        try {
            android.content.Intent intent =
                new android.content.Intent(
                    android.speech.RecognizerIntent.ACTION_RECOGNIZE_SPEECH
                );
            intent.putExtra(
                android.speech.RecognizerIntent.EXTRA_LANGUAGE_MODEL,
                android.speech.RecognizerIntent.LANGUAGE_MODEL_FREE_FORM
            );
            intent.putExtra(
                android.speech.RecognizerIntent.EXTRA_LANGUAGE,
                "hi-IN"
            );
            intent.putExtra(
                android.speech.RecognizerIntent.EXTRA_PROMPT,
                "Bolo... (Hindi/English)"
            );
            intent.putExtra(
                android.speech.RecognizerIntent.EXTRA_MAX_RESULTS,
                1
            );
            startActivityForResult(intent, VOICE_REQUEST);
        } catch (Exception ex) {
            Toast.makeText(
                this,
                "Voice search not available. Install Google app.",
                Toast.LENGTH_LONG
            ).show();
        }
    }

    @Override
    protected void onActivityResult(
        int requestCode, int resultCode, android.content.Intent data
    ) {
        super.onActivityResult(requestCode, resultCode, data);

        if (
            requestCode == VOICE_REQUEST &&
            resultCode == RESULT_OK &&
            data != null
        ) {
            java.util.ArrayList<String> results =
                data.getStringArrayListExtra(
                    android.speech.RecognizerIntent.EXTRA_RESULTS
                );

            if (results != null && results.size() > 0) {
                String query = results.get(0).trim();

                // "Chalao" / "Play" keyword detect karo
                String lower = query.toLowerCase();
                boolean shouldAutoPlay =
                    lower.contains("chalao") ||
                    lower.contains("chala") ||
                    lower.contains("play") ||
                    lower.contains("dikhao") ||
                    lower.contains("sunao") ||
                    query.contains("चलाओ") ||
                    query.contains("चला") ||
                    query.contains("सुनाओ") ||
                    query.contains("दिखाओ");

                // Command words hatao query se
                String cleanQuery = query
                    .replace("चलाओ", "")
                    .replace("सुनाओ", "")
                    .replace("दिखाओ", "")
                    .replaceAll("(?i)chalao", "")
                    .replaceAll("(?i)play", "")
                    .replaceAll("(?i)dikhao", "")
                    .replaceAll("(?i)sunao", "")
                    .replaceAll("(?i)chala", "")
                    .trim();

                if (cleanQuery.isEmpty()) {
                    cleanQuery = query;
                }

                autoPlayFirstResult = shouldAutoPlay;

                Toast.makeText(
                    this,
                    shouldAutoPlay
                        ? "Playing: " + cleanQuery
                        : "Searching: " + cleanQuery,
                    Toast.LENGTH_SHORT
                ).show();

                // TTS feedback
                if (ttsReady && tts != null) {
                    try {
                        String speakText = shouldAutoPlay
                            ? cleanQuery + " चला रहे हैं"
                            : cleanQuery + " सर्च कर रहे हैं";
                        tts.speak(
                            speakText,
                            android.speech.tts.TextToSpeech.QUEUE_FLUSH,
                            null,
                            "voice_" + System.currentTimeMillis()
                        );
                    } catch (Exception ignored) {}
                }

                pendingVoiceQuery = cleanQuery;
                find();
            }
        }
    }

    void home() {

        // Block home() if language not selected yet
        if (prefs != null && !prefs.getBoolean("lang_selected", false)) {
            return;
        }

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

        footer();
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

        // Container with backdrop
        android.widget.FrameLayout heroBox =
            new android.widget.FrameLayout(this);

        // Backdrop image
        ImageView backdrop = new ImageView(this);
        backdrop.setScaleType(ImageView.ScaleType.CENTER_CROP);
        backdrop.setBackgroundColor(0xFF1A1C22);

        String backdropUrl = x.backdrop;
        if (backdropUrl == null || backdropUrl.trim().isEmpty()) {
            backdropUrl = x.poster;
        }
        loadPoster(backdrop, backdropUrl, x.backdrop);

        heroBox.addView(
            backdrop,
            new android.widget.FrameLayout.LayoutParams(-1, -1)
        );

        // Gradient overlay (black from bottom)
        android.graphics.drawable.GradientDrawable gradient =
            new android.graphics.drawable.GradientDrawable(
                android.graphics.drawable.GradientDrawable.Orientation.BOTTOM_TOP,
                new int[]{
                    0xFF090A0E,
                    0xCC090A0E,
                    0x66090A0E,
                    0x00090A0E
                }
            );
        android.view.View overlay = new android.view.View(this);
        overlay.setBackground(gradient);

        heroBox.addView(
            overlay,
            new android.widget.FrameLayout.LayoutParams(-1, -1)
        );

        // Content overlay (text + buttons)
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setGravity(Gravity.BOTTOM);
        content.setPadding(dp(20), dp(20), dp(20), dp(16));

        TextView featured = tv("FEATURED ON GAMA AALA", 11, ACCENT, true);
        featured.setLetterSpacing(0.15f);
        content.addView(featured);

        TextView title = tv(
            x.title == null ? "Untitled" : x.title,
            28, WHITE, true
        );
        title.setMaxLines(2);
        title.setEllipsize(TextUtils.TruncateAt.END);
        title.setPadding(0, dp(4), 0, dp(6));
        content.addView(title);

        String meta = "";
        if (x.year != null && !x.year.isEmpty()) meta += x.year;
        if (x.lang != null && !x.lang.isEmpty()) {
            if (!meta.isEmpty()) meta += " • ";
            meta += x.lang;
        }
        if (x.rating != null && !x.rating.isEmpty() && !x.rating.equals("0.0")) {
            if (!meta.isEmpty()) meta += " • ";
            meta += "★ " + x.rating;
        }
        TextView metaTv = tv(meta, 12, 0xFFB0B3BD, false);
        content.addView(metaTv);

        if (x.description != null && !x.description.isEmpty()) {
            TextView desc = tv(x.description, 12, 0xFFB0B3BD, false);
            desc.setMaxLines(2);
            desc.setEllipsize(TextUtils.TruncateAt.END);
            desc.setPadding(0, dp(6), 0, dp(12));
            content.addView(desc);
        }

        LinearLayout buttons = new LinearLayout(this);
        buttons.setOrientation(LinearLayout.HORIZONTAL);

        Button watch = btn("▶  WATCH NOW");
        watch.setTextColor(Color.BLACK);
        watch.setBackground(shape(ACCENT, 30));
        watch.setPadding(dp(20), 0, dp(20), 0);
        watch.setOnClickListener(v -> details(x));

        LinearLayout.LayoutParams wp =
            new LinearLayout.LayoutParams(dp(180), dp(46));
        wp.setMargins(0, 0, dp(10), 0);
        buttons.addView(watch, wp);

        Button add = btn(myList.contains(x.title) ? "♥ Saved" : "+ My List");
        add.setTextColor(WHITE);
        add.setBackground(shape(0xFF33353F, 30));
        add.setOnClickListener(v -> {
            toggleMyList(x);
            add.setText(myList.contains(x.title) ? "♥ Saved" : "+ My List");
        });
        buttons.addView(add, new LinearLayout.LayoutParams(dp(140), dp(46)));

        content.addView(buttons);

        heroBox.addView(
            content,
            new android.widget.FrameLayout.LayoutParams(-1, -1)
        );

        LinearLayout.LayoutParams p =
            new LinearLayout.LayoutParams(-1, dp(360));
        p.setMargins(dp(12), dp(8), dp(12), dp(12));

        current.addView(heroBox, p);
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

        // ===== Card container =====
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackground(shape(0xFF1A1C22, 16));
        c.setPadding(dp(6), dp(6), dp(6), dp(10));
        c.setElevation(dp(4));

        // ===== Poster container (with rating badge overlay) =====
        android.widget.FrameLayout posterBox =
            new android.widget.FrameLayout(this);

        ImageView img = new ImageView(this);
        loadPoster(img, x.poster, x.backdrop);
        img.setScaleType(ImageView.ScaleType.CENTER_CROP);
        img.setClipToOutline(true);

        // Rounded corners on poster
        android.graphics.drawable.GradientDrawable posterBg =
            new android.graphics.drawable.GradientDrawable();
        posterBg.setColor(0xFF2A2C34);
        posterBg.setCornerRadius(dp(12));
        img.setBackground(posterBg);
        img.setOutlineProvider(new android.view.ViewOutlineProvider() {
            @Override
            public void getOutline(android.view.View v, android.graphics.Outline o) {
                o.setRoundRect(0, 0, v.getWidth(), v.getHeight(), dp(12));
            }
        });

        posterBox.addView(img, new android.widget.FrameLayout.LayoutParams(-1, -1));

        // Rating badge (top-right)
        if (x.rating != null && !x.rating.isEmpty()
            && !x.rating.equals("0.0")) {
            TextView ratingBadge = new TextView(this);
            ratingBadge.setText("★ " + x.rating);
            ratingBadge.setTextSize(11);
            ratingBadge.setTextColor(0xFF090A0E);
            ratingBadge.setTypeface(null, android.graphics.Typeface.BOLD);
            ratingBadge.setBackground(shape(0xFFFFBE37, 8));
            ratingBadge.setPadding(dp(6), dp(3), dp(6), dp(3));

            android.widget.FrameLayout.LayoutParams rp =
                new android.widget.FrameLayout.LayoutParams(-2, -2);
            rp.gravity = Gravity.TOP | Gravity.END;
            rp.setMargins(0, dp(6), dp(6), 0);
            posterBox.addView(ratingBadge, rp);
        }

        c.addView(
            posterBox,
            new LinearLayout.LayoutParams(dp(140), dp(200))
        );

        // ===== Title =====
        TextView name = tv(
            x.title == null ? "Unknown" : x.title,
            14, WHITE, true
        );
        name.setMaxLines(2);
        name.setEllipsize(TextUtils.TruncateAt.END);
        name.setPadding(dp(6), dp(8), dp(6), 0);

        LinearLayout.LayoutParams np =
            new LinearLayout.LayoutParams(-1, -2);
        c.addView(name, np);

        // ===== Meta (year + rating) =====
        TextView meta = tv(
            (x.year == null ? "" : x.year),
            11, 0xFFB0B3BD, false
        );
        meta.setPadding(dp(6), 0, dp(6), 0);
        c.addView(meta);

        // ===== Click =====
        c.setOnClickListener(v -> details(x));

        LinearLayout.LayoutParams p =
            new LinearLayout.LayoutParams(
                -2,
                -2
            );

        p.setMargins(dp(4), dp(4), dp(8), dp(6));

        row.addView(c, p);
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
            dp(18), dp(18), dp(18), dp(10)
        );

        current.addView(
            title,
            new LinearLayout.LayoutParams(
                -1,
                -2
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

            b.setTextSize(13);
            b.setTextColor(WHITE);
            b.setAllCaps(false);
            b.setTypeface(null, android.graphics.Typeface.BOLD);

            b.setBackground(
                shape(
                    Color.rgb(40,42,52),
                    32
                )
            );

            b.setPadding(
                dp(20), 0, dp(20), 0
            );
            b.setMinWidth(dp(70));
            b.setMinHeight(dp(44));

            LinearLayout.LayoutParams p =
                new LinearLayout.LayoutParams(
                    -2,
                    dp(44)
                );

            p.setMargins(
                dp(6), dp(2), dp(6), dp(2)
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


    void footer() {
        LinearLayout f = new LinearLayout(this);
        f.setOrientation(LinearLayout.VERTICAL);
        f.setGravity(Gravity.CENTER);
        f.setPadding(dp(20), dp(40), dp(20), dp(40));

        android.view.View divider = new android.view.View(this);
        divider.setBackgroundColor(0xFF2A2C34);
        LinearLayout.LayoutParams dp1 =
            new LinearLayout.LayoutParams(dp(80), dp(1));
        dp1.gravity = Gravity.CENTER_HORIZONTAL;
        dp1.setMargins(0, 0, 0, dp(20));
        f.addView(divider, dp1);

        TextView appName = tv("GAMA AALA", 22, 0xFFFFBE37, true);
        appName.setLetterSpacing(0.15f);
        appName.setGravity(Gravity.CENTER);
        f.addView(appName);

        TextView tagline = tv(
            "Your Entertainment, Our Passion",
            12, 0xFF9295A0, false
        );
        tagline.setGravity(Gravity.CENTER);
        tagline.setPadding(0, dp(6), 0, dp(20));
        f.addView(tagline);

        android.view.View divider2 = new android.view.View(this);
        divider2.setBackgroundColor(0xFF2A2C34);
        LinearLayout.LayoutParams dp2 =
            new LinearLayout.LayoutParams(dp(40), dp(1));
        dp2.gravity = Gravity.CENTER_HORIZONTAL;
        dp2.setMargins(0, 0, 0, dp(16));
        f.addView(divider2, dp2);

        TextView devLabel = tv("DEVELOPED BY", 10, 0xFF6E7280, true);
        devLabel.setLetterSpacing(0.2f);
        devLabel.setGravity(Gravity.CENTER);
        f.addView(devLabel);

        TextView devName = tv("Sanjay Chauhan", 16, WHITE, true);
        devName.setGravity(Gravity.CENTER);
        devName.setPadding(0, dp(4), 0, dp(4));
        f.addView(devName);

        TextView family = tv("& (Ms Family)", 13, 0xFFFFBE37, false);
        family.setGravity(Gravity.CENTER);
        family.setPadding(0, 0, 0, dp(20));
        f.addView(family);

        TextView version = tv(
            "Version 11.0  Made in India",
            11, 0xFF6E7280, false
        );
        version.setGravity(Gravity.CENTER);
        f.addView(version);

        TextView copyright = tv(
            "Copyright 2026 GAMA AALA. All rights reserved.",
            10, 0xFF4A4D57, false
        );
        copyright.setGravity(Gravity.CENTER);
        copyright.setPadding(0, dp(10), 0, 0);
        f.addView(copyright);

        LinearLayout.LayoutParams fp =
            new LinearLayout.LayoutParams(-1, -2);
        fp.setMargins(0, dp(20), 0, 0);
        current.addView(f, fp);
    }

    void movies() {
        base();

        brandBar();

        TextView heading = tv("🎬 Movies", 26, WHITE, true);
        heading.setPadding(dp(16), dp(16), dp(16), dp(8));
        current.addView(heading);

        TextView sub = tv(
            "Popular movies • tap to watch",
            14, MUTED, false
        );
        sub.setPadding(dp(16), 0, dp(16), dp(16));
        current.addView(sub);

        EditText search = new EditText(this);
        search.setHint("Search movies...");
        search.setTextColor(WHITE);
        search.setHintTextColor(MUTED);
        search.setSingleLine(true);
        search.setBackgroundColor(0xFF1A1C22);
        search.setPadding(dp(20), dp(14), dp(20), dp(14));

        LinearLayout.LayoutParams sp =
            new LinearLayout.LayoutParams(-1, dp(54));
        sp.setMargins(dp(16), 0, dp(16), dp(12));
        current.addView(search, sp);

        final ArrayList<Item> movieItems = new ArrayList<>();
        synchronized (data) {
            for (Item x : data) {
                if ("Movie".equals(x.kind)) {
                    movieItems.add(x);
                }
            }
        }

        java.util.LinkedHashMap<String, Integer> catCounts =
            new java.util.LinkedHashMap<>();
        catCounts.put("ALL", movieItems.size());

        for (Item x : movieItems) {
            if (x.genre == null || x.genre.trim().isEmpty()) continue;
            String[] gs = x.genre.split(",");
            for (String g : gs) {
                String gen = g.trim();
                if (gen.isEmpty()) continue;
                catCounts.put(gen, catCounts.getOrDefault(gen, 0) + 1);
            }
        }

        final String[] selected = {"ALL"};

        android.widget.HorizontalScrollView chipScroll =
            new android.widget.HorizontalScrollView(this);
        chipScroll.setHorizontalScrollBarEnabled(false);
        chipScroll.setPadding(dp(12), 4, dp(12), 12);

        LinearLayout chipRow = new LinearLayout(this);
        chipRow.setOrientation(LinearLayout.HORIZONTAL);
        chipScroll.addView(chipRow);

        LinearLayout movieContainer = new LinearLayout(this);
        movieContainer.setOrientation(LinearLayout.VERTICAL);

        java.util.List<Button> chipButtons = new java.util.ArrayList<>();
        for (String cat : catCounts.keySet()) {
            String label = cat + " (" + catCounts.get(cat) + ")";
            Button chip = new Button(this);
            chip.setText(label);
            chip.setTextSize(13);
            chip.setAllCaps(false);
            chip.setPadding(30, 12, 30, 12);
            chip.setTextColor(cat.equals("ALL") ? 0xFF090A0E : WHITE);
            chip.setBackgroundColor(cat.equals("ALL") ? 0xFFFFBE37 : 0xFF1E2028);

            LinearLayout.LayoutParams cp =
                new LinearLayout.LayoutParams(-2, dp(44));
            cp.setMargins(6, 0, 6, 0);
            chip.setLayoutParams(cp);

            chip.setOnClickListener(v -> {
                selected[0] = cat;
                for (Button b : chipButtons) {
                    String bTxt = b.getText().toString();
                    boolean isSel = bTxt.startsWith(cat + " (");
                    b.setTextColor(isSel ? 0xFF090A0E : WHITE);
                    b.setBackgroundColor(isSel ? 0xFFFFBE37 : 0xFF1E2028);
                }
                renderSeriesList(movieContainer, movieItems, selected[0], "");
            });

            chipButtons.add(chip);
            chipRow.addView(chip);
        }

        current.addView(chipScroll, new LinearLayout.LayoutParams(-1, -2));
        current.addView(movieContainer, new LinearLayout.LayoutParams(-1, 0, 1));

        search.addTextChangedListener(new android.text.TextWatcher() {
            public void afterTextChanged(android.text.Editable s) {}
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {}
            public void onTextChanged(CharSequence s, int a, int b, int c) {
                renderSeriesList(movieContainer, movieItems, selected[0], s.toString());
            }
        });

        renderSeriesList(movieContainer, movieItems, "ALL", "");
    }

    void shows() {
        base();

        brandBar();

        TextView heading = tv("📺 Web Series", 26, WHITE, true);
        heading.setPadding(dp(16), dp(16), dp(16), dp(8));
        current.addView(heading);

        TextView sub = tv(
            "Popular web series • tap to watch",
            14, MUTED, false
        );
        sub.setPadding(dp(16), 0, dp(16), dp(16));
        current.addView(sub);

        // Search box
        EditText search = new EditText(this);
        search.setHint("Search web series...");
        search.setTextColor(WHITE);
        search.setHintTextColor(MUTED);
        search.setSingleLine(true);
        search.setBackgroundColor(0xFF1A1C22);
        search.setPadding(dp(20), dp(14), dp(20), dp(14));

        LinearLayout.LayoutParams sp =
            new LinearLayout.LayoutParams(-1, dp(54));
        sp.setMargins(dp(16), 0, dp(16), dp(12));
        current.addView(search, sp);

        // Series items collect karo
        final ArrayList<Item> seriesItems = new ArrayList<>();
        synchronized (data) {
            for (Item x : data) {
                if ("Series".equals(x.kind)) {
                    seriesItems.add(x);
                }
            }
        }

        // Category chips (language wise)
        java.util.LinkedHashMap<String, Integer> catCounts =
            new java.util.LinkedHashMap<>();
        catCounts.put("ALL", seriesItems.size());

        for (Item x : seriesItems) {
            String cat = x.category == null || x.category.trim().isEmpty()
                ? "General" : x.category.trim();
            catCounts.put(cat, catCounts.getOrDefault(cat, 0) + 1);
        }

        final String[] selected = {"ALL"};

        android.widget.HorizontalScrollView chipScroll =
            new android.widget.HorizontalScrollView(this);
        chipScroll.setHorizontalScrollBarEnabled(false);
        chipScroll.setPadding(dp(12), 4, dp(12), 12);

        LinearLayout chipRow = new LinearLayout(this);
        chipRow.setOrientation(LinearLayout.HORIZONTAL);
        chipScroll.addView(chipRow);

        LinearLayout seriesContainer = new LinearLayout(this);
        seriesContainer.setOrientation(LinearLayout.VERTICAL);

        java.util.List<Button> chipButtons = new java.util.ArrayList<>();
        for (String cat : catCounts.keySet()) {
            String label = cat + " (" + catCounts.get(cat) + ")";
            Button chip = new Button(this);
            chip.setText(label);
            chip.setTextSize(13);
            chip.setAllCaps(false);
            chip.setPadding(30, 12, 30, 12);
            chip.setTextColor(cat.equals("ALL") ? 0xFF090A0E : WHITE);
            chip.setBackgroundColor(cat.equals("ALL") ? 0xFFFFBE37 : 0xFF1E2028);

            LinearLayout.LayoutParams cp =
                new LinearLayout.LayoutParams(-2, dp(44));
            cp.setMargins(6, 0, 6, 0);
            chip.setLayoutParams(cp);

            chip.setOnClickListener(v -> {
                selected[0] = cat;
                for (Button b : chipButtons) {
                    String bTxt = b.getText().toString();
                    boolean isSel = bTxt.startsWith(cat + " (");
                    b.setTextColor(isSel ? 0xFF090A0E : WHITE);
                    b.setBackgroundColor(isSel ? 0xFFFFBE37 : 0xFF1E2028);
                }
                renderSeriesList(seriesContainer, seriesItems, selected[0], "");
            });

            chipButtons.add(chip);
            chipRow.addView(chip);
        }

        current.addView(chipScroll, new LinearLayout.LayoutParams(-1, -2));
        current.addView(seriesContainer, new LinearLayout.LayoutParams(-1, 0, 1));

        search.addTextChangedListener(new android.text.TextWatcher() {
            public void afterTextChanged(android.text.Editable s) {}
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {}
            public void onTextChanged(CharSequence s, int a, int b, int c) {
                renderSeriesList(seriesContainer, seriesItems, selected[0], s.toString());
            }
        });

        renderSeriesList(seriesContainer, seriesItems, "ALL", "");
    }

    void renderSeriesList(
        LinearLayout parent,
        ArrayList<Item> items,
        String category,
        String query
    ) {
        parent.removeAllViews();

        String q = query == null ? "" : query.trim().toLowerCase();
        int shown = 0;

        for (Item x : items) {
            if (!"ALL".equals(category)) {
                // Category OR Genre match (comma-separated support)
                boolean matched = false;

                // 1. Check category
                String chCat = x.category == null ? "" : x.category.trim();
                if (chCat.equalsIgnoreCase(category)) {
                    matched = true;
                }

                // 2. Check genre (comma-separated: "Action,Thriller")
                if (!matched && x.genre != null && !x.genre.trim().isEmpty()) {
                    String[] parts = x.genre.split(",");
                    for (String p : parts) {
                        if (p.trim().equalsIgnoreCase(category)) {
                            matched = true;
                            break;
                        }
                    }
                }

                if (!matched) continue;
            }

            if (!q.isEmpty()) {
                String title = x.title == null ? "" : x.title.toLowerCase();
                String lang = x.lang == null ? "" : x.lang.toLowerCase();
                String cat = x.category == null ? "" : x.category.toLowerCase();
                String gen = x.genre == null ? "" : x.genre.toLowerCase();
                String year = x.year == null ? "" : x.year.toLowerCase();
                String desc = x.description == null ? "" : x.description.toLowerCase();

                if (!title.contains(q)
                    && !lang.contains(q)
                    && !cat.contains(q)
                    && !gen.contains(q)
                    && !year.contains(q)
                    && !desc.contains(q)) {
                    continue;
                }
            }

            // Card
            LinearLayout row = new LinearLayout(this);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setBackgroundColor(0xFF1A1C22);
            row.setPadding(dp(12), dp(10), dp(12), dp(10));

            ImageView poster = new ImageView(this);
            loadPoster(poster, x.poster, x.backdrop);
            poster.setScaleType(ImageView.ScaleType.CENTER_CROP);
            poster.setBackgroundColor(0xFF2A2C34);
            row.addView(poster, new LinearLayout.LayoutParams(dp(80), dp(110)));

            LinearLayout info = new LinearLayout(this);
            info.setOrientation(LinearLayout.VERTICAL);
            info.setPadding(dp(12), 0, dp(8), 0);

            TextView name = tv(
                x.title == null ? "Unknown" : x.title,
                16, WHITE, true
            );
            name.setMaxLines(2);
            name.setEllipsize(TextUtils.TruncateAt.END);
            info.addView(name);

            String meta = "";
            if (x.year != null && !x.year.isEmpty()) meta += x.year;
            if (x.lang != null && !x.lang.isEmpty()) {
                if (!meta.isEmpty()) meta += " • ";
                meta += x.lang;
            }
            if (x.rating != null && !x.rating.isEmpty() && !x.rating.equals("0.0")) {
                if (!meta.isEmpty()) meta += " • ";
                meta += "★ " + x.rating;
            }
            info.addView(tv(meta, 12, MUTED, false));

            if (x.description != null && !x.description.isEmpty()) {
                TextView desc = tv(x.description, 12, MUTED, false);
                desc.setMaxLines(2);
                desc.setEllipsize(TextUtils.TruncateAt.END);
                desc.setPadding(0, dp(6), 0, 0);
                info.addView(desc);
            }

            row.addView(info, new LinearLayout.LayoutParams(0, -2, 1));

            TextView playIcon = tv("▶", 22, 0xFFFFBE37, true);
            row.addView(playIcon);

            row.setOnClickListener(v -> details(x));

            LinearLayout.LayoutParams rp =
                new LinearLayout.LayoutParams(-1, dp(130));
            rp.setMargins(dp(12), dp(4), dp(12), dp(4));
            parent.addView(row, rp);

            shown++;
        }

        if (shown == 0) {
            TextView empty = tv(
                "No content found.",
                14, MUTED, false
            );
            empty.setGravity(Gravity.CENTER);
            empty.setPadding(20, dp(40), 20, dp(20));
            parent.addView(empty);
        }
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

            if (x.genre == null) continue;

            String[] parts = x.genre.split(",");
            boolean matches = false;
            for (String p : parts) {
                if (p.trim().equalsIgnoreCase(g)) {
                    matches = true;
                    break;
                }
            }
            if (matches) {

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

        // ===== Header =====
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(18, 16, 12, 8);

        TextView title = tv("🔴 Live TV", 22, WHITE, true);
        header.addView(title, new LinearLayout.LayoutParams(0, -2, 1));

        Button refresh = btn("REFRESH");
        refresh.setOnClickListener(v -> {
            Toast.makeText(this, "Refreshing...", Toast.LENGTH_SHORT).show();
            loadLiveFromApi(true);
        });
        header.addView(refresh);

        current.addView(header);

        TextView help = tv(
            "Authorized Live TV channels • tap to play",
            13,
            MUTED,
            false
        );
        help.setPadding(20, 0, 20, 8);
        current.addView(help);

        // ===== Search Box =====
        EditText searchBox = new EditText(this);
        searchBox.setHint("Search live channels...");
        searchBox.setHintTextColor(0xFF9295A0);
        searchBox.setTextColor(WHITE);
        searchBox.setBackgroundColor(0xFF1A1C22);
        searchBox.setPadding(24, 16, 24, 16);
        searchBox.setSingleLine(true);
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(-1, -2);
        sp.setMargins(16, 8, 16, 12);
        current.addView(searchBox, sp);

        // ===== Category Chips (dynamic) =====
        if (liveChannels.size() == 0) {
            loadLiveChannels();
        }

        // Count channels per category
        java.util.LinkedHashMap<String, Integer> catCounts = new java.util.LinkedHashMap<>();
        catCounts.put("ALL", liveChannels.size());
        for (Item ch : liveChannels) {
            String cat = ch.category == null || ch.category.trim().isEmpty()
                ? "General" : ch.category.trim();
            catCounts.put(cat, catCounts.getOrDefault(cat, 0) + 1);
        }

        // Selected category
        final String[] selected = {"ALL"};

        // Horizontal scroll for chips
        android.widget.HorizontalScrollView chipScroll =
            new android.widget.HorizontalScrollView(this);
        chipScroll.setHorizontalScrollBarEnabled(false);
        chipScroll.setPadding(12, 4, 12, 12);

        LinearLayout chipRow = new LinearLayout(this);
        chipRow.setOrientation(LinearLayout.HORIZONTAL);
        chipScroll.addView(chipRow);

        // Container for channel list (re-rendered on chip click)
        LinearLayout channelList = new LinearLayout(this);
        channelList.setOrientation(LinearLayout.VERTICAL);

        // Build chips
        java.util.List<Button> chipButtons = new java.util.ArrayList<>();
        for (String cat : catCounts.keySet()) {
            String label = cat + " (" + catCounts.get(cat) + ")";
            Button chip = new Button(this);
            chip.setText(label);
            chip.setTextSize(13);
            chip.setAllCaps(false);
            chip.setPadding(30, 12, 30, 12);
            chip.setTextColor(cat.equals("ALL") ? 0xFF090A0E : WHITE);
            chip.setBackgroundColor(cat.equals("ALL") ? 0xFFFFBE37 : 0xFF1E2028);

            LinearLayout.LayoutParams cp =
                new LinearLayout.LayoutParams(-2, dp(44));
            cp.setMargins(6, 0, 6, 0);
            chip.setLayoutParams(cp);

            chip.setOnClickListener(v -> {
                selected[0] = cat;
                // Update chip styles
                for (Button b : chipButtons) {
                    String bTxt = b.getText().toString();
                    boolean isSel = bTxt.startsWith(cat + " (");
                    b.setTextColor(isSel ? 0xFF090A0E : WHITE);
                    b.setBackgroundColor(isSel ? 0xFFFFBE37 : 0xFF1E2028);
                }
                // Re-render channel list
                renderChannelList(channelList, selected[0], "");
            });

            chipButtons.add(chip);
            chipRow.addView(chip);
        }

        current.addView(chipScroll, new LinearLayout.LayoutParams(-1, -2));
        current.addView(channelList, new LinearLayout.LayoutParams(-1, 0, 1));

        // Search listener
        searchBox.addTextChangedListener(new android.text.TextWatcher() {
            public void afterTextChanged(android.text.Editable s) {}
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {}
            public void onTextChanged(CharSequence s, int a, int b, int c) {
                renderChannelList(channelList, selected[0], s.toString());
            }
        });

        // Initial render
        renderChannelList(channelList, "ALL", "");

        // If empty, fetch from server
        if (liveChannels.size() == 0) {
            loadLiveFromApi(true);
        }
    }

    void renderChannelList(LinearLayout parent, String category, String query) {
        parent.removeAllViews();

        String q = query == null ? "" : query.trim().toLowerCase();
        int shown = 0;

        for (Item x : liveChannels) {
            // Category filter
            if (!"ALL".equals(category)) {
                String chCat = x.category == null ? "General" : x.category.trim();
                if (!chCat.equalsIgnoreCase(category)) continue;
            }

            // Search filter
            if (!q.isEmpty()) {
                String title = x.title == null ? "" : x.title.toLowerCase();
                String lang = x.lang == null ? "" : x.lang.toLowerCase();
                String cat = x.category == null ? "" : x.category.toLowerCase();
                if (!title.contains(q) && !lang.contains(q) && !cat.contains(q))
                    continue;
            }

            // ===== Channel Row =====
            LinearLayout row = new LinearLayout(this);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setBackgroundColor(0xFF1A1C22);
            row.setPadding(dp(12), dp(10), dp(12), dp(10));

            ImageView logo = new ImageView(this);
            loadPoster(logo, x.poster, x.backdrop);
            logo.setScaleType(ImageView.ScaleType.FIT_CENTER);
            logo.setBackgroundColor(0xFF2A2C34);
            row.addView(logo, new LinearLayout.LayoutParams(dp(90), dp(60)));

            LinearLayout info = new LinearLayout(this);
            info.setOrientation(LinearLayout.VERTICAL);
            info.setPadding(dp(12), 0, dp(8), 0);

            LinearLayout topLine = new LinearLayout(this);
            topLine.setOrientation(LinearLayout.HORIZONTAL);
            topLine.setGravity(Gravity.CENTER_VERTICAL);

            TextView liveBadge = tv("● LIVE", 10, 0xFFFF3B30, true);
            liveBadge.setPadding(0, 0, dp(8), 0);
            topLine.addView(liveBadge);

            TextView name = tv(
                x.title == null ? "Unknown" : x.title,
                15, WHITE, true
            );
            name.setSingleLine(true);
            name.setEllipsize(TextUtils.TruncateAt.END);
            topLine.addView(name, new LinearLayout.LayoutParams(0, -2, 1));

            info.addView(topLine);

            String meta =
                (x.lang == null || x.lang.isEmpty() ? "Live" : x.lang)
                + " • "
                + (x.category == null || x.category.isEmpty()
                    ? "Live TV" : x.category);
            info.addView(tv(meta, 12, MUTED, false));

            row.addView(info, new LinearLayout.LayoutParams(0, -2, 1));

            TextView playIcon = tv("▶", 22, 0xFFFFBE37, true);
            row.addView(playIcon);

            row.setOnClickListener(v -> watchMovie(x));

            LinearLayout.LayoutParams rp =
                new LinearLayout.LayoutParams(-1, dp(84));
            rp.setMargins(dp(12), dp(4), dp(12), dp(4));
            parent.addView(row, rp);

            shown++;
        }

        if (shown == 0) {
            TextView empty = tv(
                "No channels found for this filter.",
                14, MUTED, false
            );
            empty.setGravity(Gravity.CENTER);
            empty.setPadding(20, dp(40), 20, dp(20));
            parent.addView(empty);
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

                        String sourceType = entry.optString(
                            "source_type", "hls"
                        ).trim().toLowerCase();

                        String url = entry.optString(
                            "video_url", ""
                        ).trim();

                        String sourceUrl = entry.optString(
                            "source_url", ""
                        ).trim();

                        if (!entry.optBoolean("authorized", false)) {
                            continue;
                        }

                        if ("official_page".equals(sourceType)) {
                            if (sourceUrl.isEmpty()) {
                                continue;
                            }
                        } else {
                            if (url.isEmpty()) {
                                continue;
                            }
                            sourceType = "hls";
                            sourceUrl = url;
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
                        o.put("source_type", sourceType);
                        o.put("source_url", sourceUrl);
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

        // Official live webpage source
        if (
            "official_page".equalsIgnoreCase(x.sourceType)
        ) {
            if (
                x.sourceUrl != null &&
                !x.sourceUrl.trim().isEmpty()
            ) {
                return x.sourceUrl.trim();
            }
            return null;
        }

        // Live HLS must use only the supplied authorized source.
        if (
            "Live".equalsIgnoreCase(x.kind) ||
            "Live TV".equalsIgnoreCase(x.kind)
        ) {
            if (
                x.videoUrl != null &&
                !x.videoUrl.trim().isEmpty()
            ) {
                return x.videoUrl.trim();
            }
            return null;
        }

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

        // Enable hardware acceleration for better audio/video
        webPlayer.setLayerType(
            android.view.View.LAYER_TYPE_HARDWARE, null
        );

        webPlayer.setInitialScale(180);

        // Audio focus for louder movie sound
        try {
            android.media.AudioManager am =
                (android.media.AudioManager) getSystemService(AUDIO_SERVICE);
            if (am != null && android.os.Build.VERSION.SDK_INT >= 26) {
                android.media.AudioAttributes attrs =
                    new android.media.AudioAttributes.Builder()
                        .setUsage(android.media.AudioAttributes.USAGE_MEDIA)
                        .setContentType(android.media.AudioAttributes.CONTENT_TYPE_MOVIE)
                        .build();
                android.media.AudioFocusRequest focusReq =
                    new android.media.AudioFocusRequest.Builder(
                        android.media.AudioManager.AUDIOFOCUS_GAIN
                    )
                        .setAudioAttributes(attrs)
                        .build();
                am.requestAudioFocus(focusReq);
            } else if (am != null) {
                am.requestAudioFocus(
                    null,
                    android.media.AudioManager.STREAM_MUSIC,
                    android.media.AudioManager.AUDIOFOCUS_GAIN
                );
            }
        } catch (Exception ignored) {}

        WebSettings ws = webPlayer.getSettings();
        ws.setJavaScriptEnabled(true);
        ws.setDomStorageEnabled(true);
        ws.setMediaPlaybackRequiresUserGesture(false);
        // Zoom-friendly settings (fix for bigger play button)
        ws.setLoadWithOverviewMode(false);
        ws.setUseWideViewPort(false);
        ws.setBuiltInZoomControls(false);
        ws.setDisplayZoomControls(false);
        ws.setSupportZoom(true);
        // Block pop-ups and new windows
        ws.setJavaScriptCanOpenWindowsAutomatically(false);
        ws.setSupportMultipleWindows(false);
        // Block ads
        ws.setBlockNetworkImage(false);

        android.webkit.CookieManager.getInstance().setAcceptCookie(true);
        android.webkit.CookieManager.getInstance().setAcceptThirdPartyCookies(webPlayer, true);

        // WebViewClient is set below (with loading indicator)

        final android.app.Dialog[] fsDialog = {null};
        final WebChromeClient.CustomViewCallback[] fsCallback = {null};

        webPlayer.setWebChromeClient(new WebChromeClient() {
            @Override
            public boolean onCreateWindow(
                WebView view, boolean isDialog,
                boolean isUserGesture, android.os.Message resultMsg
            ) {
                return true;
            }

            @Override
            public void onProgressChanged(WebView view, int newProgress) {
                super.onProgressChanged(view, newProgress);
            }

            @Override
            public void onShowCustomView(
                android.view.View view,
                WebChromeClient.CustomViewCallback callback
            ) {
                if (fsDialog[0] != null) {
                    callback.onCustomViewHidden();
                    return;
                }

                fsDialog[0] = new android.app.Dialog(
                    MainActivity.this,
                    android.R.style.Theme_Black_NoTitleBar_Fullscreen
                );

                android.widget.FrameLayout container =
                    new android.widget.FrameLayout(MainActivity.this);
                container.setBackgroundColor(Color.BLACK);
                container.addView(
                    view,
                    new android.widget.FrameLayout.LayoutParams(-1, -1)
                );

                fsDialog[0].setContentView(container);
                fsDialog[0].setOnDismissListener(d -> {
                    if (fsCallback[0] != null) {
                        fsCallback[0].onCustomViewHidden();
                        fsCallback[0] = null;
                    }
                    fsDialog[0] = null;
                    setRequestedOrientation(
                        android.content.pm.ActivityInfo
                            .SCREEN_ORIENTATION_PORTRAIT
                    );
                });
                fsDialog[0].show();
                fsCallback[0] = callback;

                setRequestedOrientation(
                    android.content.pm.ActivityInfo
                        .SCREEN_ORIENTATION_LANDSCAPE
                );
            }

            @Override
            public void onHideCustomView() {
                if (fsDialog[0] != null) {
                    fsDialog[0].dismiss();
                }
            }
        });

        webPlayer.loadUrl(sourceUrl);

        playerContainer.addView(webPlayer, new FrameLayout.LayoutParams(-1, -1));

        // Loading spinner overlay
        LinearLayout loadingOverlay = new LinearLayout(this);
        loadingOverlay.setOrientation(LinearLayout.VERTICAL);
        loadingOverlay.setGravity(Gravity.CENTER);
        loadingOverlay.setBackgroundColor(0xCC090A0E);

        android.widget.ProgressBar spinner =
            new android.widget.ProgressBar(this);
        spinner.setIndeterminate(true);
        loadingOverlay.addView(spinner);

        TextView loadingText = tv(
            "Loading player...",
            14, WHITE, false
        );
        loadingText.setPadding(0, dp(16), 0, 0);
        loadingOverlay.addView(loadingText);

        TextView loadingHint = tv(
            "This may take 10-20 seconds",
            11, MUTED, false
        );
        loadingHint.setPadding(0, dp(6), 0, 0);
        loadingOverlay.addView(loadingHint);

        playerContainer.addView(
            loadingOverlay,
            new FrameLayout.LayoutParams(-1, -1)
        );

        // BIG custom play button overlay
        LinearLayout playOverlay = new LinearLayout(this);
        playOverlay.setOrientation(LinearLayout.VERTICAL);
        playOverlay.setGravity(Gravity.CENTER);
        playOverlay.setBackgroundColor(0x66090A0E);

        // Big circular play button
        TextView bigPlay = new TextView(this);
        bigPlay.setText("\u25B6");
        bigPlay.setTextSize(52);
        bigPlay.setTextColor(0xFF090A0E);
        bigPlay.setGravity(Gravity.CENTER);
        bigPlay.setBackground(shape(0xFFFFBE37, 80));

        LinearLayout.LayoutParams playP =
            new LinearLayout.LayoutParams(dp(120), dp(120));
        playOverlay.addView(bigPlay, playP);

        TextView playHint = tv(
            "Tap to play",
            14, WHITE, true
        );
        playHint.setPadding(0, dp(20), 0, 0);
        playOverlay.addView(playHint);

        playerContainer.addView(
            playOverlay,
            new FrameLayout.LayoutParams(-1, -1)
        );

        bigPlay.setOnClickListener(v -> {
            playOverlay.setVisibility(android.view.View.GONE);

            // Simulate touch at center of WebView to hit vidsrc play button
            try {
                webPlayer.postDelayed(() -> {
                    int cx = webPlayer.getWidth() / 2;
                    int cy = webPlayer.getHeight() / 2;
                    long t = android.os.SystemClock.uptimeMillis();
                    android.view.MotionEvent down = android.view.MotionEvent.obtain(
                        t, t,
                        android.view.MotionEvent.ACTION_DOWN,
                        cx, cy, 0
                    );
                    android.view.MotionEvent up = android.view.MotionEvent.obtain(
                        t, t + 50,
                        android.view.MotionEvent.ACTION_UP,
                        cx, cy, 0
                    );
                    webPlayer.dispatchTouchEvent(down);
                    webPlayer.dispatchTouchEvent(up);
                }, 500);
            } catch (Exception ignored) {}

            // JS: play + max volume
            try {
                webPlayer.evaluateJavascript(
                    "(function(){" +
                    "  var vids=document.querySelectorAll('video');" +
                    "  for(var i=0;i<vids.length;i++){" +
                    "    var v=vids[i];" +
                    "    v.volume=1.0;" +
                    "    v.muted=false;" +
                    "    try{v.play();}catch(e){}" +
                    "  }" +
                    "  // Also try inside iframe" +
                    "  try{" +
                    "    var iframes=document.querySelectorAll('iframe');" +
                    "    for(var j=0;j<iframes.length;j++){" +
                    "      try{" +
                    "        var idoc=iframes[j].contentDocument;" +
                    "        var iv=idoc.querySelectorAll('video');" +
                    "        for(var k=0;k<iv.length;k++){" +
                    "          iv[k].volume=1.0;iv[k].muted=false;iv[k].play();" +
                    "        }" +
                    "      }catch(e){}" +
                    "    }" +
                    "  }catch(e){}" +
                    "})()",
                    null
                );
            } catch (Exception ignored) {}
        });

        // Hide overlay when page finishes loading
        webPlayer.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(
                WebView view, android.webkit.WebResourceRequest request
            ) {
                String url = request.getUrl().toString();
                if (url.contains("vidsrc") || url.contains("embed")
                    || url.contains("youtube") || url.contains(".m3u8")
                    || url.contains("about:blank")) {
                    return false;
                }
                return true;
            }

            @Override
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                runOnUiThread(() -> {
                    loadingOverlay.setVisibility(android.view.View.GONE);
                });
            }

            @Override
            public void onReceivedError(
                WebView view, android.webkit.WebResourceRequest request,
                android.webkit.WebResourceError error
            ) {
                super.onReceivedError(view, request, error);
                runOnUiThread(() -> {
                    loadingText.setText("Player unavailable");
                    loadingHint.setText("Try another content");
                });
            }
        });

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

        // Official channel page: open the channel's official webpage.
        if ("official_page".equalsIgnoreCase(x.sourceType)) {
            watchMovieWebView(x);
            return;
        }

        if ("unavailable".equalsIgnoreCase(x.sourceType)) {
            Toast.makeText(
                this,
                "Live source is currently unavailable for this channel",
                Toast.LENGTH_LONG
            ).show();
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

        // LIVE TV: use a true live-player UI instead of normal VOD controls.
        // Movies/Series keep the normal seek, rewind and fast-forward controls.
        final boolean isLiveTv =
            "Live".equalsIgnoreCase(x.kind) ||
            "Live TV".equalsIgnoreCase(x.kind);

        if (isLiveTv) {
            playerView.setShowRewindButton(false);
            playerView.setShowFastForwardButton(false);
            playerView.setShowPreviousButton(false);
            playerView.setShowNextButton(false);

            android.view.View liveProgress =
                playerView.findViewById(androidx.media3.ui.R.id.exo_progress);
            if (liveProgress != null) {
                liveProgress.setVisibility(android.view.View.GONE);
            }

            android.view.View livePosition =
                playerView.findViewById(androidx.media3.ui.R.id.exo_position);
            if (livePosition != null) {
                livePosition.setVisibility(android.view.View.GONE);
            }

            android.view.View liveDuration =
                playerView.findViewById(androidx.media3.ui.R.id.exo_duration);
            if (liveDuration != null) {
                liveDuration.setVisibility(android.view.View.GONE);
            }
        }

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
        // LIVE badge for Live TV only.
        if (isLiveTv) {
            TextView liveBadge = new TextView(this);
            liveBadge.setText("🔴 LIVE");
            liveBadge.setTextColor(Color.WHITE);
            liveBadge.setTextSize(13);
            liveBadge.setTypeface(
                android.graphics.Typeface.DEFAULT,
                android.graphics.Typeface.BOLD
            );
            liveBadge.setGravity(Gravity.CENTER);
            liveBadge.setPadding(dp(10), dp(4), dp(10), dp(4));

            android.graphics.drawable.GradientDrawable liveBg =
                new android.graphics.drawable.GradientDrawable();
            liveBg.setColor(Color.parseColor("#E60000"));
            liveBg.setCornerRadius(dp(8));
            liveBadge.setBackground(liveBg);

            android.widget.FrameLayout.LayoutParams liveParams =
                new android.widget.FrameLayout.LayoutParams(-2, dp(32));
            liveParams.gravity = Gravity.TOP | Gravity.START;
            liveParams.setMargins(dp(12), dp(12), 0, 0);

            playerView.addView(liveBadge, liveParams);
        }


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

            androidx.media3.datasource.DefaultHttpDataSource.Factory httpFactory =
                new androidx.media3.datasource.DefaultHttpDataSource.Factory()
                        .setAllowCrossProtocolRedirects(true)
                        .setUserAgent("VLC/3.0.20 LibVLC/3.0.20")
                        .setDefaultRequestProperties(
                            java.util.Map.of(
                                "Referer", "https://www.google.com/",
                                "Origin", "https://www.google.com"
                            )
                        );
        androidx.media3.exoplayer.hls.HlsMediaSource hlsSource = new androidx.media3.exoplayer.hls.HlsMediaSource.Factory(httpFactory)
                .setAllowChunklessPreparation(false)
                .createMediaSource(androidx.media3.common.MediaItem.fromUri(sourceUrl));
        player.setMediaSource(hlsSource);
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

        // Save for voice search
        lastSearchResults = results;

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

        // Voice search pending query apply karo
        if (pendingVoiceQuery != null) {
            final String vq = pendingVoiceQuery;
            pendingVoiceQuery = null;
            e.setText(vq);
            e.setSelection(vq.length());
        }
    }


    String hindiToEnglish(String query) {
        if (query == null) return "";
        String q = query.trim().toLowerCase();

        // Common Hindi → English mapping (devotional + popular)
        java.util.HashMap<String, String> map = new java.util.HashMap<>();
        map.put("रामायण", "Ramayan");
        map.put("रामायणम्", "Ramayan");
        map.put("महाभारत", "Mahabharat");
        map.put("महाभारतम्", "Mahabharat");
        map.put("भजन", "Bhajan");
        map.put("राम भजन", "Ram Bhajan");
        map.put("कृष्ण", "Krishna");
        map.put("शिव", "Shiv");
        map.put("शिव भजन", "Shiv Bhajan");
        map.put("दुर्गा", "Durga");
        map.put("दुर्गा भजन", "Durga Bhajan");
        map.put("गणेश", "Ganesh");
        map.put("हनुमान", "Hanuman");
        map.put("हनुमान चालीसा", "Hanuman Chalisa");
        map.put("भगवद गीता", "Bhagavad Gita");
        map.put("गीता", "Gita");
        map.put("राम", "Ram");
        map.put("सीता", "Sita");
        map.put("लक्ष्मण", "Lakshman");
        map.put("रावण", "Ravan");
        map.put("देवी", "Devi");
        map.put("भक्ति", "Bhakti");
        map.put("कथा", "Katha");
        map.put("प्रवचन", "Pravachan");
        map.put("सत्संग", "Satsang");
        map.put("मंदिर", "Mandir");
        map.put("पूजा", "Puja");
        map.put("आरती", "Aarti");
        map.put("चालीसा", "Chalisa");
        map.put("कॉमेडी", "Comedy");
        map.put("एक्शन", "Action");
        map.put("ड्रामा", "Drama");
        map.put("थ्रिलर", "Thriller");
        map.put("हॉरर", "Horror");
        map.put("रोमांस", "Romance");
        map.put("फिल्म", "Movie");
        map.put("मूवी", "Movie");
        map.put("सीरीज", "Series");
        map.put("गाना", "Song");
        map.put("म्यूजिक", "Music");
        map.put("न्यूज़", "News");
        map.put("खबर", "News");
        map.put("बॉलीवुड", "Bollywood");
        map.put("हिंदी", "Hindi");

        // Exact match
        if (map.containsKey(q)) {
            return map.get(q);
        }

        // Partial match - replace Hindi words with English
        String result = q;
        for (java.util.Map.Entry<String, String> e : map.entrySet()) {
            if (result.contains(e.getKey())) {
                result = result.replace(e.getKey(), e.getValue());
            }
        }

        return result;
    }

    boolean isHindi(String text) {
        if (text == null) return false;
        for (char c : text.toCharArray()) {
            if (c >= 0x0900 && c <= 0x097F) {
                return true;
            }
        }
        return false;
    }

    void searchTmdb(
        String query,
        LinearLayout results,
        int requestId,
        TextWatcher watcher
    ) {

        // Hindi detect + translate
        String finalQuery = query;
        if (isHindi(query)) {
            String translated = hindiToEnglish(query);
            if (!translated.isEmpty() && !translated.equals(query)) {
                finalQuery = translated;
            }
        }
        final String searchQ = finalQuery;

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
                        searchQ,
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

                        // TTS: No results
                        if (ttsReady && tts != null && autoPlayFirstResult) {
                            try {
                                tts.speak(
                                    "कोई रिजल्ट नहीं मिला",
                                    android.speech.tts.TextToSpeech.QUEUE_FLUSH,
                                    null,
                                    "nores_" + System.currentTimeMillis()
                                );
                            } catch (Exception ignored) {}
                        }
                        autoPlayFirstResult = false;

                        return;
                    }

                    // Auto-play first result
                    if (autoPlayFirstResult && online.size() > 0) {
                        final Item first = online.get(0);
                        autoPlayFirstResult = false;

                        new android.os.Handler(
                            android.os.Looper.getMainLooper()
                        ).postDelayed(() -> {
                            if (ttsReady && tts != null) {
                                try {
                                    tts.speak(
                                        first.title + " चला रहे हैं",
                                        android.speech.tts.TextToSpeech.QUEUE_FLUSH,
                                        null,
                                        "play_" + System.currentTimeMillis()
                                    );
                                } catch (Exception ignored) {}
                            }
                            watchMovie(first);
                        }, 800);
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

    void adultGate() {
        if (adultUnlocked) {
            adultSection();
            return;
        }

        android.app.AlertDialog.Builder builder =
            new android.app.AlertDialog.Builder(this);
        builder.setTitle("🔒 18+ Content Locked");
        builder.setMessage("Enter PIN to access adult content");

        final EditText pinInput = new EditText(this);
        pinInput.setHint("Enter 4-digit PIN");
        pinInput.setInputType(
            android.text.InputType.TYPE_CLASS_NUMBER
            | android.text.InputType.TYPE_NUMBER_VARIATION_PASSWORD
        );
        pinInput.setGravity(Gravity.CENTER);
        pinInput.setTextSize(24);
        pinInput.setPadding(30, 30, 30, 30);
        builder.setView(pinInput);

        builder.setPositiveButton("UNLOCK", (d, w) -> {
            String entered = pinInput.getText().toString().trim();
            String savedPin = prefs.getString("adult_pin", DEFAULT_PIN);
            if (entered.equals(savedPin)) {
                adultUnlocked = true;
                Toast.makeText(this, "Unlocked!", Toast.LENGTH_SHORT).show();
                adultSection();
            } else {
                Toast.makeText(this, "Wrong PIN", Toast.LENGTH_SHORT).show();
            }
        });

        builder.setNegativeButton("CANCEL", null);
        builder.create().show();
    }

    void adultSection() {
        base();
        brandBar();

        TextView heading = tv("🔞 18+ Content", 26, 0xFFFF3B30, true);
        heading.setPadding(dp(16), dp(16), dp(16), dp(8));
        current.addView(heading);

        TextView sub = tv(
            "Adult movies and web series • 18+ only",
            14, MUTED, false
        );
        sub.setPadding(dp(16), 0, dp(16), dp(16));
        current.addView(sub);

        EditText search = new EditText(this);
        search.setHint("Search adult content...");
        search.setTextColor(WHITE);
        search.setHintTextColor(MUTED);
        search.setSingleLine(true);
        search.setBackgroundColor(0xFF1A1C22);
        search.setPadding(dp(20), dp(14), dp(20), dp(14));

        LinearLayout.LayoutParams sp =
            new LinearLayout.LayoutParams(-1, dp(54));
        sp.setMargins(dp(16), 0, dp(16), dp(12));
        current.addView(search, sp);

        final ArrayList<Item> adultItems = new ArrayList<>();
        synchronized (data) {
            for (Item x : data) {
                if (x.category != null &&
                    (x.category.equalsIgnoreCase("18+")
                    || x.category.equalsIgnoreCase("Adult"))) {
                    adultItems.add(x);
                }
            }
        }

        if (adultItems.isEmpty()) {
            TextView empty = tv(
                "No adult content available yet.\n\nAdd content with category 18+ in your catalog.",
                14, MUTED, false
            );
            empty.setGravity(Gravity.CENTER);
            empty.setPadding(dp(30), dp(60), dp(30), dp(30));
            current.addView(empty);

            Button back = btn("← GO BACK");
            back.setTextColor(WHITE);
            back.setBackground(shape(0xFF2A2C34, 30));
            back.setOnClickListener(v -> profile());
            LinearLayout.LayoutParams bp =
                new LinearLayout.LayoutParams(-1, dp(54));
            bp.setMargins(dp(20), dp(20), dp(20), dp(20));
            current.addView(back, bp);
            return;
        }

        java.util.LinkedHashMap<String, Integer> catCounts =
            new java.util.LinkedHashMap<>();
        catCounts.put("ALL", adultItems.size());

        for (Item x : adultItems) {
            String cat = x.category == null || x.category.trim().isEmpty()
                ? "General" : x.category.trim();
            catCounts.put(cat, catCounts.getOrDefault(cat, 0) + 1);
        }

        final String[] selected = {"ALL"};

        android.widget.HorizontalScrollView chipScroll =
            new android.widget.HorizontalScrollView(this);
        chipScroll.setHorizontalScrollBarEnabled(false);
        chipScroll.setPadding(dp(12), 4, dp(12), 12);

        LinearLayout chipRow = new LinearLayout(this);
        chipRow.setOrientation(LinearLayout.HORIZONTAL);
        chipScroll.addView(chipRow);

        LinearLayout adultContainer = new LinearLayout(this);
        adultContainer.setOrientation(LinearLayout.VERTICAL);

        java.util.List<Button> chipButtons = new java.util.ArrayList<>();
        for (String cat : catCounts.keySet()) {
            String label = cat + " (" + catCounts.get(cat) + ")";
            Button chip = new Button(this);
            chip.setText(label);
            chip.setTextSize(13);
            chip.setAllCaps(false);
            chip.setPadding(30, 12, 30, 12);
            chip.setTextColor(cat.equals("ALL") ? 0xFF090A0E : WHITE);
            chip.setBackgroundColor(cat.equals("ALL") ? 0xFFFF3B30 : 0xFF1E2028);

            LinearLayout.LayoutParams cp =
                new LinearLayout.LayoutParams(-2, dp(44));
            cp.setMargins(6, 0, 6, 0);
            chip.setLayoutParams(cp);

            chip.setOnClickListener(v -> {
                selected[0] = cat;
                for (Button b : chipButtons) {
                    String bTxt = b.getText().toString();
                    boolean isSel = bTxt.startsWith(cat + " (");
                    b.setTextColor(isSel ? 0xFF090A0E : WHITE);
                    b.setBackgroundColor(isSel ? 0xFFFF3B30 : 0xFF1E2028);
                }
                renderSeriesList(adultContainer, adultItems, selected[0], "");
            });

            chipButtons.add(chip);
            chipRow.addView(chip);
        }

        current.addView(chipScroll, new LinearLayout.LayoutParams(-1, -2));
        current.addView(adultContainer, new LinearLayout.LayoutParams(-1, 0, 1));

        search.addTextChangedListener(new android.text.TextWatcher() {
            public void afterTextChanged(android.text.Editable s) {}
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {}
            public void onTextChanged(CharSequence s, int a, int b, int c) {
                renderSeriesList(adultContainer, adultItems, selected[0], s.toString());
            }
        });

        renderSeriesList(adultContainer, adultItems, "ALL", "");
    }

    void changePinDialog() {
        android.app.AlertDialog.Builder builder =
            new android.app.AlertDialog.Builder(this);
        builder.setTitle("Change 18+ PIN");

        LinearLayout container = new LinearLayout(this);
        container.setOrientation(LinearLayout.VERTICAL);
        container.setPadding(40, 30, 40, 30);

        final EditText oldPin = new EditText(this);
        oldPin.setHint("Current PIN");
        oldPin.setInputType(
            android.text.InputType.TYPE_CLASS_NUMBER
            | android.text.InputType.TYPE_NUMBER_VARIATION_PASSWORD
        );
        container.addView(oldPin);

        final EditText newPin = new EditText(this);
        newPin.setHint("New 4-digit PIN");
        newPin.setInputType(
            android.text.InputType.TYPE_CLASS_NUMBER
            | android.text.InputType.TYPE_NUMBER_VARIATION_PASSWORD
        );
        container.addView(newPin);

        final EditText confirmPin = new EditText(this);
        confirmPin.setHint("Confirm new PIN");
        confirmPin.setInputType(
            android.text.InputType.TYPE_CLASS_NUMBER
            | android.text.InputType.TYPE_NUMBER_VARIATION_PASSWORD
        );
        container.addView(confirmPin);

        builder.setView(container);

        builder.setPositiveButton("SAVE", (d, w) -> {
            String cur = oldPin.getText().toString().trim();
            String nw = newPin.getText().toString().trim();
            String cf = confirmPin.getText().toString().trim();
            String saved = prefs.getString("adult_pin", DEFAULT_PIN);

            if (!cur.equals(saved)) {
                Toast.makeText(this, "Current PIN wrong", Toast.LENGTH_SHORT).show();
                return;
            }
            if (nw.length() != 4) {
                Toast.makeText(this, "PIN must be 4 digits", Toast.LENGTH_SHORT).show();
                return;
            }
            if (!nw.equals(cf)) {
                Toast.makeText(this, "PINs do not match", Toast.LENGTH_SHORT).show();
                return;
            }
            prefs.edit().putString("adult_pin", nw).commit();
            Toast.makeText(this, "PIN changed", Toast.LENGTH_SHORT).show();
        });

        builder.setNegativeButton("CANCEL", null);
        builder.create().show();
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
    

        // 18+ Section button
        Button adultBtn = btn("🔞  18+ SECTION");
        adultBtn.setTextColor(0xFFFF3B30);
        adultBtn.setTextSize(15);
        adultBtn.setBackground(shape(0xFF2A1A1A, 12));
        adultBtn.setOnClickListener(v -> adultGate());
        LinearLayout.LayoutParams adultP =
            new LinearLayout.LayoutParams(-1, dp(54));
        adultP.setMargins(dp(16), dp(8), dp(16), dp(8));
        current.addView(adultBtn, adultP);

        // Change PIN button
        Button changePinBtn = btn("🔑  CHANGE 18+ PIN");
        changePinBtn.setTextColor(WHITE);
        changePinBtn.setTextSize(15);
        changePinBtn.setBackground(shape(0xFF2A2C34, 12));
        changePinBtn.setOnClickListener(v -> changePinDialog());
        LinearLayout.LayoutParams pinP =
            new LinearLayout.LayoutParams(-1, dp(54));
        pinP.setMargins(dp(16), dp(0), dp(16), dp(8));
        current.addView(changePinBtn, pinP);

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
