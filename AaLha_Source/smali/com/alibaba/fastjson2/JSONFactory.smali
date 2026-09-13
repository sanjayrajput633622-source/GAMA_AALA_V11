.class public final Lcom/alibaba/fastjson2/JSONFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONFactory$FJ1OjbectBuilder;,
        Lcom/alibaba/fastjson2/JSONFactory$FJ1ObjectInnerSupplier;,
        Lcom/alibaba/fastjson2/JSONFactory$CacheItem;,
        Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;
    }
.end annotation


# static fields
.field static final ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field static final BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/JSONFactory$CacheItem;",
            "[B>;"
        }
    .end annotation
.end field

.field static final CA:[C

.field static final CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field static final CACHE_THRESHOLD:I = 0x100000

.field static final CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/JSONFactory$CacheItem;",
            "[C>;"
        }
    .end annotation
.end field

.field static final DIGITS2:[I

.field static final DOUBLE_10_POW:[D

.field static final DOUBLE_ZERO:Ljava/lang/Double;

.field static final FLOAT_10_POW:[F

.field static final HIGH:Ljava/math/BigDecimal;

.field static final HIGH_BIGINT:Ljava/math/BigInteger;

.field static JSON_ARRAY_1x_SUPPLIER:Lcom/alibaba/fastjson2/function/Supplier; = null

.field static JSON_ARRAY_CLASS_1x:Ljava/lang/Class; = null

.field static JSON_OBJECT_1x_BUILDER:Lcom/alibaba/fastjson2/function/Function; = null

.field static JSON_OBJECT_1x_INNER_MAP:Lcom/alibaba/fastjson2/function/Function; = null

.field static JSON_OBJECT_1x_SUPPLIER:Lcom/alibaba/fastjson2/function/Supplier; = null

.field static JSON_OBJECT_CLASS_1x:Ljava/lang/Class; = null

.field static volatile JSON_REFLECT_1x_ERROR:Z = false

.field static final LOW:Ljava/math/BigDecimal;

.field static final LOW_BIGINT:Ljava/math/BigInteger;

.field static final NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

.field static final NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

.field static final OBJECT_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field static final UUID_LOOKUP:[C

.field static final UUID_VALUES:[B

.field static defaultArraySupplier:Lcom/alibaba/fastjson2/function/Supplier; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field static defaultDecimalMaxScale:I = 0x800

.field public static final defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field static defaultObjectSupplier:Lcom/alibaba/fastjson2/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public static final defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field static defaultReaderFeatures:J

.field static defaultReaderFormat:Ljava/lang/String;

.field static defaultReaderZoneId:Lcom/alibaba/fastjson2/time/ZoneId;

.field static defaultWriterFeatures:J

.field static defaultWriterFormat:Ljava/lang/String;

.field static defaultWriterZoneId:Lcom/alibaba/fastjson2/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x2000

    .line 3
    .line 4
    new-array v1, v0, [Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 5
    .line 6
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 7
    .line 8
    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 9
    .line 10
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v0, -0x1fffffffffffffL

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    sput-object v2, Lcom/alibaba/fastjson2/JSONFactory;->LOW:Ljava/math/BigDecimal;

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v2, 0x1fffffffffffffL

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    sput-object v4, Lcom/alibaba/fastjson2/JSONFactory;->HIGH:Ljava/math/BigDecimal;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->LOW_BIGINT:Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->HIGH_BIGINT:Ljava/math/BigInteger;

    .line 45
    .line 46
    const/16 v0, 0x40

    .line 47
    .line 48
    new-array v0, v0, [C

    .line 49
    .line 50
    .line 51
    fill-array-data v0, :array_0

    .line 52
    .line 53
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    .line 54
    .line 55
    const/16 v0, 0x67

    .line 56
    .line 57
    new-array v0, v0, [I

    .line 58
    .line 59
    .line 60
    fill-array-data v0, :array_1

    .line 61
    .line 62
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    .line 63
    .line 64
    const/16 v0, 0xb

    .line 65
    .line 66
    new-array v0, v0, [F

    .line 67
    .line 68
    .line 69
    fill-array-data v0, :array_2

    .line 70
    .line 71
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->FLOAT_10_POW:[F

    .line 72
    .line 73
    const/16 v0, 0x17

    .line 74
    .line 75
    new-array v0, v0, [D

    .line 76
    .line 77
    .line 78
    fill-array-data v0, :array_3

    .line 79
    .line 80
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    .line 81
    .line 82
    const-wide/16 v0, 0x0

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 89
    .line 90
    const/16 v0, 0x10

    .line 91
    .line 92
    new-array v1, v0, [Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 93
    const/4 v2, 0x0

    .line 94
    move v3, v2

    .line 95
    .line 96
    :goto_0
    if-ge v3, v0, :cond_0

    .line 97
    .line 98
    new-instance v4, Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 99
    .line 100
    .line 101
    invoke-direct {v4}, Lcom/alibaba/fastjson2/JSONFactory$CacheItem;-><init>()V

    .line 102
    .line 103
    aput-object v4, v1, v3

    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_0
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 109
    .line 110
    const-class v0, [C

    .line 111
    .line 112
    const-string v1, "chars"

    .line 113
    .line 114
    const-class v3, Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 115
    .line 116
    .line 117
    invoke-static {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 121
    .line 122
    const-class v0, [B

    .line 123
    .line 124
    const-string v1, "bytes"

    .line 125
    .line 126
    .line 127
    invoke-static {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 131
    .line 132
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 133
    .line 134
    .line 135
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;-><init>()V

    .line 136
    .line 137
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 138
    .line 139
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 140
    .line 141
    .line 142
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;-><init>()V

    .line 143
    .line 144
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 145
    .line 146
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->JSON_ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 147
    .line 148
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 149
    .line 150
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 151
    .line 152
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->OBJECT_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 153
    .line 154
    const/16 v0, 0x100

    .line 155
    .line 156
    new-array v1, v0, [C

    .line 157
    .line 158
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_LOOKUP:[C

    .line 159
    .line 160
    const/16 v1, 0x37

    .line 161
    .line 162
    new-array v1, v1, [B

    .line 163
    .line 164
    sput-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 165
    .line 166
    :goto_1
    if-ge v2, v0, :cond_3

    .line 167
    .line 168
    shr-int/lit8 v1, v2, 0x4

    .line 169
    .line 170
    and-int/lit8 v1, v1, 0xf

    .line 171
    .line 172
    and-int/lit8 v3, v2, 0xf

    .line 173
    .line 174
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_LOOKUP:[C

    .line 175
    .line 176
    const/16 v5, 0xa

    .line 177
    .line 178
    if-ge v1, v5, :cond_1

    .line 179
    .line 180
    add-int/lit8 v1, v1, 0x30

    .line 181
    goto :goto_2

    .line 182
    .line 183
    :cond_1
    add-int/lit8 v1, v1, 0x57

    .line 184
    .line 185
    :goto_2
    shl-int/lit8 v1, v1, 0x8

    .line 186
    .line 187
    if-ge v3, v5, :cond_2

    .line 188
    .line 189
    add-int/lit8 v3, v3, 0x30

    .line 190
    goto :goto_3

    .line 191
    .line 192
    :cond_2
    add-int/lit8 v3, v3, 0x57

    .line 193
    :goto_3
    add-int/2addr v1, v3

    .line 194
    int-to-char v1, v1

    .line 195
    .line 196
    aput-char v1, v4, v2

    .line 197
    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 199
    goto :goto_1

    .line 200
    .line 201
    :cond_3
    const/16 v0, 0x30

    .line 202
    .line 203
    :goto_4
    const/16 v1, 0x39

    .line 204
    .line 205
    if-gt v0, v1, :cond_4

    .line 206
    .line 207
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 208
    .line 209
    add-int/lit8 v2, v0, -0x30

    .line 210
    int-to-byte v3, v2

    .line 211
    .line 212
    aput-byte v3, v1, v2

    .line 213
    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 215
    int-to-char v0, v0

    .line 216
    goto :goto_4

    .line 217
    .line 218
    :cond_4
    const/16 v0, 0x61

    .line 219
    .line 220
    :goto_5
    const/16 v1, 0x66

    .line 221
    .line 222
    if-gt v0, v1, :cond_5

    .line 223
    .line 224
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 225
    .line 226
    add-int/lit8 v2, v0, -0x30

    .line 227
    .line 228
    add-int/lit8 v3, v0, -0x57

    .line 229
    int-to-byte v3, v3

    .line 230
    .line 231
    aput-byte v3, v1, v2

    .line 232
    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 234
    int-to-char v0, v0

    .line 235
    goto :goto_5

    .line 236
    .line 237
    :cond_5
    const/16 v0, 0x41

    .line 238
    .line 239
    :goto_6
    const/16 v1, 0x46

    .line 240
    .line 241
    if-gt v0, v1, :cond_6

    .line 242
    .line 243
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 244
    .line 245
    add-int/lit8 v2, v0, -0x30

    .line 246
    .line 247
    add-int/lit8 v3, v0, -0x37

    .line 248
    int-to-byte v3, v3

    .line 249
    .line 250
    aput-byte v3, v1, v2

    .line 251
    .line 252
    add-int/lit8 v0, v0, 0x1

    .line 253
    int-to-char v0, v0

    .line 254
    goto :goto_6

    .line 255
    :cond_6
    return-void

    .line 256
    nop

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static createJSONObject1(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 6
    return-object v0
.end method

.method public static createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    return-object v0
.end method

.method public static createReadContext(J)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)V

    return-object v0
.end method

.method public static createReadContext(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 11
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-object v0
.end method

.method public static varargs createReadContext(Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v0
.end method

.method public static varargs createReadContext(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;->config(Lcom/alibaba/fastjson2/filter/Filter;)V

    return-object v0
.end method

.method public static varargs createReadContext(Lcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Supplier;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/Map;",
            ">;",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/List;",
            ">;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Lcom/alibaba/fastjson2/JSONReader$Context;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 18
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setObjectSupplier(Lcom/alibaba/fastjson2/function/Supplier;)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setArraySupplier(Lcom/alibaba/fastjson2/function/Supplier;)V

    .line 20
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v0
.end method

.method public static varargs createReadContext(Lcom/alibaba/fastjson2/function/Supplier;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/Map;",
            ">;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Lcom/alibaba/fastjson2/JSONReader$Context;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 15
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setObjectSupplier(Lcom/alibaba/fastjson2/function/Supplier;)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v0
.end method

.method public static varargs createReadContext(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 1

    if-nez p0, :cond_0

    .line 8
    sget-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 9
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v0
.end method

.method public static varargs createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v0
.end method

.method public static varargs createReadContext([Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 2

    .line 6
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-object v0
.end method

.method public static createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    return-object v0
.end method

.method public static varargs createWriteContext(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    return-object v0
.end method

.method public static varargs createWriteContext([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;
    .locals 2

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    return-object v0
.end method

.method public static getBuilderJSONObject1x()Lcom/alibaba/fastjson2/function/Function;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_1x_BUILDER:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_REFLECT_1x_ERROR:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONFactory$FJ1OjbectBuilder;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONFactory$FJ1OjbectBuilder;-><init>(Lcom/alibaba/fastjson2/JSONFactory$1;)V

    .line 21
    .line 22
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_1x_BUILDER:Lcom/alibaba/fastjson2/function/Function;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    const/4 v0, 0x1

    .line 25
    .line 26
    sput-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_REFLECT_1x_ERROR:Z

    .line 27
    .line 28
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 29
    .line 30
    const-string v1, "create JSONObject1 error"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    .line 36
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_1x_BUILDER:Lcom/alibaba/fastjson2/function/Function;

    .line 37
    return-object v0
.end method

.method public static getClassJSONArray1x()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_ARRAY_CLASS_1x:Ljava/lang/Class;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_REFLECT_1x_ERROR:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-class v0, Lcom/alibaba/fastjson/JSONArray;

    .line 11
    .line 12
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_ARRAY_CLASS_1x:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    const/4 v0, 0x1

    .line 15
    .line 16
    sput-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_REFLECT_1x_ERROR:Z

    .line 17
    .line 18
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_ARRAY_CLASS_1x:Ljava/lang/Class;

    .line 19
    return-object v0
.end method

.method public static getClassJSONObject1x()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_CLASS_1x:Ljava/lang/Class;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_REFLECT_1x_ERROR:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    .line 11
    .line 12
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_CLASS_1x:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    const/4 v0, 0x1

    .line 15
    .line 16
    sput-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_REFLECT_1x_ERROR:Z

    .line 17
    .line 18
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_CLASS_1x:Ljava/lang/Class;

    .line 19
    return-object v0
.end method

.method public static getDefaultArraySupplier()Lcom/alibaba/fastjson2/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 3
    return-object v0
.end method

.method public static getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    return-object v0
.end method

.method public static getDefaultObjectSupplier()Lcom/alibaba/fastjson2/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 3
    return-object v0
.end method

.method public static getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    return-object v0
.end method

.method public static getDefaultReaderFeatures()J
    .locals 2

    .line 1
    .line 2
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 3
    return-wide v0
.end method

.method public static getInnerMap()Lcom/alibaba/fastjson2/function/Function;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_1x_INNER_MAP:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_REFLECT_1x_ERROR:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONFactory$FJ1ObjectInnerSupplier;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONFactory$FJ1ObjectInnerSupplier;-><init>(Lcom/alibaba/fastjson2/JSONFactory$1;)V

    .line 21
    .line 22
    sput-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_1x_INNER_MAP:Lcom/alibaba/fastjson2/function/Function;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    const/4 v0, 0x1

    .line 25
    .line 26
    sput-boolean v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_REFLECT_1x_ERROR:Z

    .line 27
    .line 28
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 29
    .line 30
    const-string v1, "create getInnerMap error"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    .line 36
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->JSON_OBJECT_1x_INNER_MAP:Lcom/alibaba/fastjson2/function/Function;

    .line 37
    return-object v0
.end method

.method public static getObjectReader(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$Feature;->isEnabled(J)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static getObjectWriter(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Feature;->isEnabled(J)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, v1, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static setDefaultArraySupplier(Lcom/alibaba/fastjson2/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/List;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultArraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 3
    return-void
.end method

.method public static setDefaultObjectSupplier(Lcom/alibaba/fastjson2/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectSupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 3
    return-void
.end method
