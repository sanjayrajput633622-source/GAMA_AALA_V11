.class final enum Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/time/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PatternType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum OTHER:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P10:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P10_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P11:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P12:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P14:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P19:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P19_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P19_2:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P19_3:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P29:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P6:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P8:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P8_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P8_2:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P8_3:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P8_4:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P8_5:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P9:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

.field public static final enum P9_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;


# instance fields
.field final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 3
    .line 4
    const-string v1, "HHmmss"

    .line 5
    .line 6
    const-string v2, "P6"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    sput-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P6:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 13
    .line 14
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 15
    .line 16
    const-string v2, "yyyyMMdd"

    .line 17
    .line 18
    const-string v4, "P8"

    .line 19
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v4, v5, v2}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    sput-object v1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 25
    .line 26
    new-instance v2, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 27
    .line 28
    const-string v4, "yyyy-M-d"

    .line 29
    .line 30
    const-string v6, "P8_1"

    .line 31
    const/4 v7, 0x2

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v6, v7, v4}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    sput-object v2, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 37
    .line 38
    new-instance v4, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 39
    .line 40
    const-string v6, "HH:mm:ss"

    .line 41
    .line 42
    const-string v8, "P8_2"

    .line 43
    const/4 v9, 0x3

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v8, v9, v6}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    sput-object v4, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_2:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 49
    .line 50
    new-instance v6, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 51
    .line 52
    const-string v8, "d-M-yyyy"

    .line 53
    .line 54
    const-string v10, "P8_3"

    .line 55
    const/4 v11, 0x4

    .line 56
    .line 57
    .line 58
    invoke-direct {v6, v10, v11, v8}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    sput-object v6, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_3:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 61
    .line 62
    new-instance v8, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 63
    .line 64
    const-string v10, "d.M.yyyy"

    .line 65
    .line 66
    const-string v12, "P8_4"

    .line 67
    const/4 v13, 0x5

    .line 68
    .line 69
    .line 70
    invoke-direct {v8, v12, v13, v10}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    sput-object v8, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_4:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 73
    .line 74
    new-instance v10, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 75
    .line 76
    const-string v12, "yyyy/M/d"

    .line 77
    .line 78
    const-string v14, "P8_5"

    .line 79
    const/4 v15, 0x6

    .line 80
    .line 81
    .line 82
    invoke-direct {v10, v14, v15, v12}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    .line 84
    sput-object v10, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_5:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 85
    .line 86
    new-instance v12, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 87
    .line 88
    const-string v14, "yyyy-M-dd"

    .line 89
    .line 90
    move/from16 v16, v3

    .line 91
    .line 92
    const-string v3, "P9"

    .line 93
    .line 94
    move/from16 v17, v5

    .line 95
    const/4 v5, 0x7

    .line 96
    .line 97
    .line 98
    invoke-direct {v12, v3, v5, v14}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    sput-object v12, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P9:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 101
    .line 102
    new-instance v3, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 103
    .line 104
    const-string v14, "yyyy-MM-d"

    .line 105
    .line 106
    move/from16 v18, v5

    .line 107
    .line 108
    const-string v5, "P9_1"

    .line 109
    .line 110
    move/from16 v19, v7

    .line 111
    .line 112
    const/16 v7, 0x8

    .line 113
    .line 114
    .line 115
    invoke-direct {v3, v5, v7, v14}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    .line 117
    sput-object v3, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P9_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 118
    .line 119
    new-instance v5, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 120
    .line 121
    const-string v14, "yyyy-MM-dd"

    .line 122
    .line 123
    move/from16 v20, v7

    .line 124
    .line 125
    const-string v7, "P10"

    .line 126
    .line 127
    move/from16 v21, v9

    .line 128
    .line 129
    const/16 v9, 0x9

    .line 130
    .line 131
    .line 132
    invoke-direct {v5, v7, v9, v14}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    .line 134
    sput-object v5, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P10:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 135
    .line 136
    new-instance v7, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 137
    .line 138
    const-string v14, "yyyy/MM/dd"

    .line 139
    .line 140
    move/from16 v22, v9

    .line 141
    .line 142
    const-string v9, "P10_1"

    .line 143
    .line 144
    move/from16 v23, v11

    .line 145
    .line 146
    const/16 v11, 0xa

    .line 147
    .line 148
    .line 149
    invoke-direct {v7, v9, v11, v14}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    .line 151
    sput-object v7, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P10_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 152
    .line 153
    new-instance v9, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 154
    .line 155
    const-string v14, "yyyy-MMM-dd"

    .line 156
    .line 157
    move/from16 v24, v11

    .line 158
    .line 159
    const-string v11, "P11"

    .line 160
    .line 161
    move/from16 v25, v13

    .line 162
    .line 163
    const/16 v13, 0xb

    .line 164
    .line 165
    .line 166
    invoke-direct {v9, v11, v13, v14}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    .line 168
    sput-object v9, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P11:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 169
    .line 170
    new-instance v11, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 171
    .line 172
    const-string v14, "yyyyMMddHHmm"

    .line 173
    .line 174
    move/from16 v26, v13

    .line 175
    .line 176
    const-string v13, "P12"

    .line 177
    .line 178
    move/from16 v27, v15

    .line 179
    .line 180
    const/16 v15, 0xc

    .line 181
    .line 182
    .line 183
    invoke-direct {v11, v13, v15, v14}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    sput-object v11, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P12:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 186
    .line 187
    new-instance v13, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 188
    .line 189
    const-string v14, "yyyyMMddHHmmss"

    .line 190
    .line 191
    move/from16 v28, v15

    .line 192
    .line 193
    const-string v15, "P14"

    .line 194
    .line 195
    move-object/from16 v29, v0

    .line 196
    .line 197
    const/16 v0, 0xd

    .line 198
    .line 199
    .line 200
    invoke-direct {v13, v15, v0, v14}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    .line 202
    sput-object v13, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P14:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 203
    .line 204
    new-instance v14, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 205
    .line 206
    const-string v15, "yyyy-MM-dd HH:mm:ss"

    .line 207
    .line 208
    move/from16 v30, v0

    .line 209
    .line 210
    const-string v0, "P19"

    .line 211
    .line 212
    move-object/from16 v31, v1

    .line 213
    .line 214
    const/16 v1, 0xe

    .line 215
    .line 216
    .line 217
    invoke-direct {v14, v0, v1, v15}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    .line 219
    sput-object v14, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P19:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 220
    .line 221
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 222
    .line 223
    const-string v15, "yyyy/MM/dd HH:mm:ss"

    .line 224
    .line 225
    move/from16 v32, v1

    .line 226
    .line 227
    const-string v1, "P19_1"

    .line 228
    .line 229
    move-object/from16 v33, v2

    .line 230
    .line 231
    const/16 v2, 0xf

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v1, v2, v15}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    .line 236
    sput-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P19_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 237
    .line 238
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 239
    .line 240
    const-string v15, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 241
    .line 242
    move/from16 v34, v2

    .line 243
    .line 244
    const-string v2, "P19_2"

    .line 245
    .line 246
    move-object/from16 v35, v0

    .line 247
    .line 248
    const/16 v0, 0x10

    .line 249
    .line 250
    .line 251
    invoke-direct {v1, v2, v0, v15}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    .line 253
    sput-object v1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P19_2:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 254
    .line 255
    new-instance v2, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 256
    .line 257
    const-string v15, "dd.MM.yyyy HH:mm:ss"

    .line 258
    .line 259
    move/from16 v36, v0

    .line 260
    .line 261
    const-string v0, "P19_3"

    .line 262
    .line 263
    move-object/from16 v37, v1

    .line 264
    .line 265
    const/16 v1, 0x11

    .line 266
    .line 267
    .line 268
    invoke-direct {v2, v0, v1, v15}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    .line 270
    sput-object v2, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P19_3:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 271
    .line 272
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 273
    .line 274
    const-string v15, "yyyy-MM-dd HH:mm:ss.SSSSSSSSS"

    .line 275
    .line 276
    move/from16 v38, v1

    .line 277
    .line 278
    const-string v1, "P29"

    .line 279
    .line 280
    move-object/from16 v39, v2

    .line 281
    .line 282
    const/16 v2, 0x12

    .line 283
    .line 284
    .line 285
    invoke-direct {v0, v1, v2, v15}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    .line 287
    sput-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P29:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 288
    .line 289
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 290
    .line 291
    const-string v15, ""

    .line 292
    .line 293
    move/from16 v40, v2

    .line 294
    .line 295
    const-string v2, "OTHER"

    .line 296
    .line 297
    move-object/from16 v41, v0

    .line 298
    .line 299
    const/16 v0, 0x13

    .line 300
    .line 301
    .line 302
    invoke-direct {v1, v2, v0, v15}, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    .line 304
    sput-object v1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->OTHER:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 305
    .line 306
    const/16 v2, 0x14

    .line 307
    .line 308
    new-array v2, v2, [Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 309
    .line 310
    aput-object v29, v2, v16

    .line 311
    .line 312
    aput-object v31, v2, v17

    .line 313
    .line 314
    aput-object v33, v2, v19

    .line 315
    .line 316
    aput-object v4, v2, v21

    .line 317
    .line 318
    aput-object v6, v2, v23

    .line 319
    .line 320
    aput-object v8, v2, v25

    .line 321
    .line 322
    aput-object v10, v2, v27

    .line 323
    .line 324
    aput-object v12, v2, v18

    .line 325
    .line 326
    aput-object v3, v2, v20

    .line 327
    .line 328
    aput-object v5, v2, v22

    .line 329
    .line 330
    aput-object v7, v2, v24

    .line 331
    .line 332
    aput-object v9, v2, v26

    .line 333
    .line 334
    aput-object v11, v2, v28

    .line 335
    .line 336
    aput-object v13, v2, v30

    .line 337
    .line 338
    aput-object v14, v2, v32

    .line 339
    .line 340
    aput-object v35, v2, v34

    .line 341
    .line 342
    aput-object v37, v2, v36

    .line 343
    .line 344
    aput-object v39, v2, v38

    .line 345
    .line 346
    aput-object v41, v2, v40

    .line 347
    .line 348
    aput-object v1, v2, v0

    .line 349
    .line 350
    sput-object v2, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->$VALUES:[Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 351
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->pattern:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->$VALUES:[Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 9
    return-object v0
.end method
