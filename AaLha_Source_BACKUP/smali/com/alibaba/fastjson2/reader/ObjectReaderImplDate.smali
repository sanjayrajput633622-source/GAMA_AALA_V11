.class public Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 11
    return-object v0
.end method

.method private readDate(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    mul-long/2addr v3, v1

    .line 26
    .line 27
    :cond_1
    new-instance p1, Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 31
    return-object p1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    return-object v3

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    return-object v3

    .line 47
    .line 48
    .line 49
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 50
    move-result v0

    .line 51
    .line 52
    const/16 v4, 0x6e

    .line 53
    .line 54
    if-ne v0, v4, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNullOrNewDate()Ljava/util/Date;

    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    .line 61
    :cond_5
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->useSimpleFormatter:Z

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object p1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .line 82
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    const-string v4, "parse error : "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    throw v2

    .line 108
    .line 109
    .line 110
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 111
    move-result v0

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    return-object v3

    .line 115
    .line 116
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 117
    .line 118
    if-nez v0, :cond_8

    .line 119
    .line 120
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    :cond_8
    move-object v7, p1

    .line 124
    .line 125
    goto/16 :goto_6

    .line 126
    .line 127
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 128
    const/4 v4, 0x0

    .line 129
    .line 130
    const-wide/16 v5, 0x0

    .line 131
    .line 132
    if-eqz v0, :cond_1c

    .line 133
    .line 134
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmmss19:Z

    .line 135
    .line 136
    if-eqz v0, :cond_d

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch()Z

    .line 140
    move-result v0

    .line 141
    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    .line 146
    move-result-wide v7

    .line 147
    goto :goto_0

    .line 148
    .line 149
    .line 150
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillis19()J

    .line 151
    move-result-wide v7

    .line 152
    .line 153
    :goto_0
    cmp-long v0, v7, v5

    .line 154
    .line 155
    if-nez v0, :cond_c

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-nez v0, :cond_b

    .line 162
    goto :goto_1

    .line 163
    .line 164
    .line 165
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    goto/16 :goto_4

    .line 169
    .line 170
    :cond_c
    :goto_1
    new-instance p1, Ljava/util/Date;

    .line 171
    .line 172
    .line 173
    invoke-direct {p1, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 174
    return-object p1

    .line 175
    .line 176
    .line 177
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getLocale()Ljava/util/Locale;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->getDateFormatter(Ljava/util/Locale;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    if-eqz v0, :cond_19

    .line 185
    .line 186
    iget-boolean v7, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 187
    .line 188
    if-eqz v7, :cond_e

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 192
    move-result v7

    .line 193
    .line 194
    if-nez v7, :cond_e

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readDate()Ljava/util/Date;

    .line 198
    move-result-object p1

    .line 199
    return-object p1

    .line 200
    .line 201
    .line 202
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 203
    move-result-object v7

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 207
    move-result v8

    .line 208
    .line 209
    if-nez v8, :cond_18

    .line 210
    .line 211
    const-string v8, "null"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    move-result v8

    .line 216
    .line 217
    if-eqz v8, :cond_f

    .line 218
    .line 219
    goto/16 :goto_3

    .line 220
    .line 221
    :cond_f
    iget-object v8, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 222
    .line 223
    const/16 v9, 0x2d

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    .line 227
    move-result v8

    .line 228
    const/4 v10, -0x1

    .line 229
    .line 230
    if-eq v8, v10, :cond_10

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    .line 234
    move-result v8

    .line 235
    .line 236
    if-ne v8, v10, :cond_10

    .line 237
    .line 238
    .line 239
    invoke-static {v7}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInteger(Ljava/lang/String;)Z

    .line 240
    move-result v8

    .line 241
    .line 242
    if-eqz v8, :cond_10

    .line 243
    .line 244
    .line 245
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 246
    move-result-wide v0

    .line 247
    .line 248
    new-instance p1, Ljava/util/Date;

    .line 249
    .line 250
    .line 251
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 252
    return-object p1

    .line 253
    .line 254
    :cond_10
    iget-boolean v8, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasHour:Z

    .line 255
    .line 256
    const/16 v11, 0x13

    .line 257
    .line 258
    if-nez v8, :cond_14

    .line 259
    .line 260
    iget-boolean v8, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasDay:Z

    .line 261
    .line 262
    if-nez v8, :cond_11

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v7, p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseDate(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;

    .line 270
    move-result-object p1

    .line 271
    return-object p1

    .line 272
    .line 273
    .line 274
    :cond_11
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 275
    move-result v8

    .line 276
    .line 277
    if-ne v8, v11, :cond_12

    .line 278
    .line 279
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    .line 283
    move-result v8

    .line 284
    .line 285
    if-eqz v8, :cond_12

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 289
    move-result v0

    .line 290
    .line 291
    .line 292
    invoke-static {v7, v4, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime(Ljava/lang/String;II)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 293
    move-result-object v0

    .line 294
    goto :goto_2

    .line 295
    .line 296
    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    .line 300
    move-result v1

    .line 301
    .line 302
    if-eq v1, v10, :cond_13

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    .line 306
    move-result v1

    .line 307
    .line 308
    if-ne v1, v10, :cond_13

    .line 309
    .line 310
    .line 311
    invoke-static {v7}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInteger(Ljava/lang/String;)Z

    .line 312
    move-result v1

    .line 313
    .line 314
    if-eqz v1, :cond_13

    .line 315
    .line 316
    .line 317
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 318
    move-result-wide v0

    .line 319
    .line 320
    new-instance p1, Ljava/util/Date;

    .line 321
    .line 322
    .line 323
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 324
    return-object p1

    .line 325
    .line 326
    .line 327
    :cond_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 328
    move-result-object p1

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v7, p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseDate(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;

    .line 332
    move-result-object p1

    .line 333
    return-object p1

    .line 334
    .line 335
    .line 336
    :cond_14
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 337
    move-result v0

    .line 338
    .line 339
    if-ne v0, v11, :cond_17

    .line 340
    .line 341
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmm16:Z

    .line 342
    .line 343
    if-nez v0, :cond_15

    .line 344
    .line 345
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    .line 349
    move-result v0

    .line 350
    .line 351
    if-eqz v0, :cond_17

    .line 352
    .line 353
    :cond_15
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmm16:Z

    .line 354
    .line 355
    if-eqz v0, :cond_16

    .line 356
    .line 357
    const/16 v11, 0x10

    .line 358
    .line 359
    .line 360
    :cond_16
    invoke-static {v7, v4, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime(Ljava/lang/String;II)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 361
    move-result-object v0

    .line 362
    .line 363
    :goto_2
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 367
    move-result-object p1

    .line 368
    .line 369
    .line 370
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 371
    move-result-object p1

    .line 372
    goto :goto_4

    .line 373
    .line 374
    :cond_17
    :try_start_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 375
    .line 376
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 383
    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    return-object p1

    .line 385
    :catch_1
    move-exception v0

    .line 386
    move-object p1, v0

    .line 387
    .line 388
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 389
    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    const-string v2, "parse format \'"

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    iget-object v2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v2, "\'"

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v1

    .line 413
    .line 414
    .line 415
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    throw v0

    .line 417
    :cond_18
    :goto_3
    return-object v3

    .line 418
    .line 419
    .line 420
    :cond_19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 421
    move-result-object p1

    .line 422
    .line 423
    :goto_4
    if-nez p1, :cond_1a

    .line 424
    return-object v3

    .line 425
    .line 426
    .line 427
    :cond_1a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochSecond()J

    .line 428
    move-result-wide v3

    .line 429
    .line 430
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 431
    .line 432
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 433
    .line 434
    iget p1, p1, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 435
    .line 436
    cmp-long v0, v3, v5

    .line 437
    .line 438
    .line 439
    const v5, 0xf4240

    .line 440
    .line 441
    if-gez v0, :cond_1b

    .line 442
    .line 443
    if-lez p1, :cond_1b

    .line 444
    .line 445
    const-wide/16 v6, 0x1

    .line 446
    add-long/2addr v3, v6

    .line 447
    mul-long/2addr v3, v1

    .line 448
    div-int/2addr p1, v5

    .line 449
    .line 450
    add-int/lit16 p1, p1, -0x3e8

    .line 451
    :goto_5
    int-to-long v0, p1

    .line 452
    add-long/2addr v3, v0

    .line 453
    goto :goto_7

    .line 454
    :cond_1b
    mul-long/2addr v3, v1

    .line 455
    div-int/2addr p1, v5

    .line 456
    goto :goto_5

    .line 457
    .line 458
    .line 459
    :cond_1c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    .line 460
    move-result v0

    .line 461
    .line 462
    if-eqz v0, :cond_1e

    .line 463
    .line 464
    const/16 v11, 0x6c

    .line 465
    .line 466
    const/16 v12, 0x22

    .line 467
    .line 468
    const/16 v8, 0x22

    .line 469
    .line 470
    const/16 v9, 0x76

    .line 471
    .line 472
    const/16 v10, 0x61

    .line 473
    move-object v7, p1

    .line 474
    .line 475
    .line 476
    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCC)Z

    .line 477
    move-result p1

    .line 478
    .line 479
    if-eqz p1, :cond_1f

    .line 480
    .line 481
    const/16 p1, 0x3a

    .line 482
    .line 483
    .line 484
    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 485
    .line 486
    .line 487
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 488
    move-result-wide v0

    .line 489
    .line 490
    .line 491
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 492
    .line 493
    .line 494
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    .line 495
    .line 496
    cmp-long p1, v0, v5

    .line 497
    .line 498
    if-nez p1, :cond_1d

    .line 499
    .line 500
    .line 501
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    .line 502
    move-result p1

    .line 503
    .line 504
    if-eqz p1, :cond_1d

    .line 505
    return-object v3

    .line 506
    :cond_1d
    move-wide v3, v0

    .line 507
    goto :goto_7

    .line 508
    :cond_1e
    move-object v7, p1

    .line 509
    .line 510
    .line 511
    :cond_1f
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->readDate()Ljava/util/Date;

    .line 512
    move-result-object p1

    .line 513
    return-object p1

    .line 514
    .line 515
    .line 516
    :goto_6
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 517
    move-result-wide v3

    .line 518
    .line 519
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 520
    .line 521
    if-eqz p1, :cond_20

    .line 522
    mul-long/2addr v3, v1

    .line 523
    .line 524
    :cond_20
    :goto_7
    new-instance p1, Ljava/util/Date;

    .line 525
    .line 526
    .line 527
    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 528
    return-object p1
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/d;->a(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->b(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->c(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->d(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->e(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->f(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->h(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->k(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->l(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getBuildFunction()Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->m(Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getFeatures()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->n(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->o(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->p(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->q(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/util/Date;

    .line 3
    return-object v0
.end method

.method public synthetic getTypeKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->s(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTypeKeyHash()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->t(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->u(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->v(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->readDate(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->x(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->y(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->readDate(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic readObject(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->z(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->A(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
