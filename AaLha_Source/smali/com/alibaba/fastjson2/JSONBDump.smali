.class final Lcom/alibaba/fastjson2/JSONBDump;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static GB18030:Ljava/nio/charset/Charset;


# instance fields
.field final bytes:[B

.field final jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

.field lastReference:Ljava/lang/String;

.field offset:I

.field final raw:Z

.field strBegin:I

.field strlen:I

.field strtype:B

.field final symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

.field final symbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field type:B


# direct methods
.method public constructor <init>([BLcom/alibaba/fastjson2/SymbolTable;Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 11
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 13
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofPretty()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 14
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 4
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 5
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofPretty()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 7
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    return-void
.end method

.method private dumpAny()V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 5
    .line 6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 7
    array-length v3, v2

    .line 8
    .line 9
    if-lt v1, v3, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 13
    .line 14
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 15
    .line 16
    aget-byte v4, v2, v1

    .line 17
    .line 18
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    .line 19
    .line 20
    const/16 v5, -0x5a

    .line 21
    const/4 v6, 0x0

    .line 22
    .line 23
    if-eq v4, v5, :cond_21

    .line 24
    .line 25
    const/16 v7, 0x48

    .line 26
    .line 27
    const/16 v9, 0x10

    .line 28
    .line 29
    const/16 v10, 0x8

    .line 30
    .line 31
    if-eq v4, v7, :cond_20

    .line 32
    .line 33
    const/16 v11, -0x58

    .line 34
    .line 35
    if-eq v4, v11, :cond_1f

    .line 36
    .line 37
    const/16 v11, -0x57

    .line 38
    .line 39
    if-eq v4, v11, :cond_1e

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x1

    .line 42
    .line 43
    const-string v13, "#"

    .line 44
    .line 45
    .line 46
    packed-switch v4, :pswitch_data_0

    .line 47
    .line 48
    const/16 v5, 0x3f

    .line 49
    .line 50
    const/16 v14, 0x2f

    .line 51
    .line 52
    const/16 v15, -0x10

    .line 53
    .line 54
    const/16 v16, 0x38

    .line 55
    .line 56
    const/16 v17, 0x18

    .line 57
    .line 58
    const/16 v8, 0x30

    .line 59
    .line 60
    const-wide/16 v18, 0xff

    .line 61
    .line 62
    .line 63
    packed-switch v4, :pswitch_data_1

    .line 64
    .line 65
    .line 66
    packed-switch v4, :pswitch_data_2

    .line 67
    .line 68
    if-lt v4, v15, :cond_1

    .line 69
    .line 70
    if-gt v4, v14, :cond_1

    .line 71
    .line 72
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 76
    return-void

    .line 77
    .line 78
    :cond_1
    const/16 v6, -0x28

    .line 79
    .line 80
    if-lt v4, v6, :cond_2

    .line 81
    .line 82
    const/16 v6, -0x11

    .line 83
    .line 84
    if-gt v4, v6, :cond_2

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x20

    .line 87
    int-to-long v1, v4

    .line 88
    .line 89
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 93
    return-void

    .line 94
    .line 95
    :cond_2
    if-lt v4, v8, :cond_3

    .line 96
    .line 97
    if-gt v4, v5, :cond_3

    .line 98
    .line 99
    add-int/lit8 v4, v4, -0x38

    .line 100
    shl-int/2addr v4, v10

    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x2

    .line 103
    .line 104
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 105
    .line 106
    aget-byte v1, v2, v3

    .line 107
    .line 108
    and-int/lit16 v1, v1, 0xff

    .line 109
    add-int/2addr v4, v1

    .line 110
    .line 111
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 115
    return-void

    .line 116
    .line 117
    :cond_3
    const/16 v5, 0x40

    .line 118
    .line 119
    if-lt v4, v5, :cond_4

    .line 120
    .line 121
    const/16 v5, 0x47

    .line 122
    .line 123
    if-gt v4, v5, :cond_4

    .line 124
    .line 125
    add-int/lit8 v4, v4, -0x44

    .line 126
    shl-int/2addr v4, v9

    .line 127
    .line 128
    add-int/lit8 v5, v1, 0x2

    .line 129
    .line 130
    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 131
    .line 132
    aget-byte v3, v2, v3

    .line 133
    .line 134
    and-int/lit16 v3, v3, 0xff

    .line 135
    shl-int/2addr v3, v10

    .line 136
    add-int/2addr v4, v3

    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x3

    .line 139
    .line 140
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 141
    .line 142
    aget-byte v1, v2, v5

    .line 143
    .line 144
    and-int/lit16 v1, v1, 0xff

    .line 145
    add-int/2addr v4, v1

    .line 146
    .line 147
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 151
    return-void

    .line 152
    .line 153
    :cond_4
    const/16 v5, -0x38

    .line 154
    .line 155
    if-lt v4, v5, :cond_5

    .line 156
    .line 157
    const/16 v5, -0x29

    .line 158
    .line 159
    if-gt v4, v5, :cond_5

    .line 160
    .line 161
    add-int/lit8 v4, v4, 0x30

    .line 162
    shl-int/2addr v4, v10

    .line 163
    .line 164
    add-int/lit8 v1, v1, 0x2

    .line 165
    .line 166
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 167
    .line 168
    aget-byte v1, v2, v3

    .line 169
    .line 170
    and-int/lit16 v1, v1, 0xff

    .line 171
    add-int/2addr v4, v1

    .line 172
    .line 173
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 177
    return-void

    .line 178
    .line 179
    :cond_5
    const/16 v5, -0x40

    .line 180
    .line 181
    if-lt v4, v5, :cond_6

    .line 182
    .line 183
    const/16 v5, -0x39

    .line 184
    .line 185
    if-gt v4, v5, :cond_6

    .line 186
    .line 187
    add-int/lit8 v4, v4, 0x3c

    .line 188
    shl-int/2addr v4, v9

    .line 189
    .line 190
    add-int/lit8 v5, v1, 0x2

    .line 191
    .line 192
    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 193
    .line 194
    aget-byte v3, v2, v3

    .line 195
    .line 196
    and-int/lit16 v3, v3, 0xff

    .line 197
    shl-int/2addr v3, v10

    .line 198
    add-int/2addr v4, v3

    .line 199
    .line 200
    add-int/lit8 v1, v1, 0x3

    .line 201
    .line 202
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 203
    .line 204
    aget-byte v1, v2, v5

    .line 205
    .line 206
    and-int/lit16 v1, v1, 0xff

    .line 207
    add-int/2addr v4, v1

    .line 208
    .line 209
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 210
    int-to-long v2, v4

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 214
    return-void

    .line 215
    .line 216
    :cond_6
    const/16 v1, -0x6c

    .line 217
    .line 218
    if-lt v4, v1, :cond_7

    .line 219
    .line 220
    const/16 v1, -0x5c

    .line 221
    .line 222
    if-gt v4, v1, :cond_7

    .line 223
    .line 224
    .line 225
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpArray()V

    .line 226
    return-void

    .line 227
    .line 228
    :cond_7
    const/16 v1, 0x49

    .line 229
    .line 230
    if-lt v4, v1, :cond_a

    .line 231
    .line 232
    const/16 v1, 0x79

    .line 233
    .line 234
    if-gt v4, v1, :cond_a

    .line 235
    .line 236
    const/16 v1, 0x79

    .line 237
    .line 238
    if-ne v4, v1, :cond_8

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 242
    move-result v1

    .line 243
    goto :goto_0

    .line 244
    .line 245
    :cond_8
    add-int/lit8 v1, v4, -0x49

    .line 246
    .line 247
    :goto_0
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 248
    .line 249
    if-gez v1, :cond_9

    .line 250
    .line 251
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 252
    .line 253
    const-string v2, "{\"$symbol\":"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 257
    .line 258
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 259
    .line 260
    iget v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 264
    .line 265
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 266
    .line 267
    const-string v2, "}"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 271
    return-void

    .line 272
    .line 273
    :cond_9
    new-instance v2, Ljava/lang/String;

    .line 274
    .line 275
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 276
    .line 277
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 278
    .line 279
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 280
    .line 281
    .line 282
    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 283
    .line 284
    iget v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 285
    .line 286
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 287
    add-int/2addr v1, v3

    .line 288
    .line 289
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 290
    .line 291
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 295
    return-void

    .line 296
    .line 297
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 298
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    const-string v3, "not support type : "

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    .line 310
    .line 311
    .line 312
    invoke-static {v3}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 313
    move-result-object v3

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v3, ", offset "

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    move-result-object v2

    .line 331
    .line 332
    .line 333
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 334
    throw v1

    .line 335
    .line 336
    .line 337
    :pswitch_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->isInt()Z

    .line 338
    move-result v1

    .line 339
    .line 340
    if-eqz v1, :cond_c

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 344
    move-result v1

    .line 345
    .line 346
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 347
    .line 348
    if-eqz v2, :cond_b

    .line 349
    .line 350
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 351
    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    move-result-object v1

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 369
    return-void

    .line 370
    .line 371
    .line 372
    :cond_b
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONBDump;->getString(I)Ljava/lang/String;

    .line 373
    move-result-object v1

    .line 374
    .line 375
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 379
    return-void

    .line 380
    .line 381
    .line 382
    :cond_c
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    .line 383
    move-result-object v1

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 387
    move-result v2

    .line 388
    .line 389
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 390
    .line 391
    .line 392
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    move-result-object v4

    .line 394
    .line 395
    .line 396
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 399
    .line 400
    if-eqz v3, :cond_d

    .line 401
    .line 402
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 403
    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    move-result-object v1

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 424
    return-void

    .line 425
    .line 426
    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 430
    return-void

    .line 431
    .line 432
    :pswitch_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONBDump;->GB18030:Ljava/nio/charset/Charset;

    .line 433
    .line 434
    if-nez v1, :cond_e

    .line 435
    .line 436
    const-string v1, "GB18030"

    .line 437
    .line 438
    .line 439
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 440
    move-result-object v1

    .line 441
    .line 442
    sput-object v1, Lcom/alibaba/fastjson2/JSONBDump;->GB18030:Ljava/nio/charset/Charset;

    .line 443
    .line 444
    .line 445
    :cond_e
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 446
    move-result v1

    .line 447
    .line 448
    new-instance v2, Ljava/lang/String;

    .line 449
    .line 450
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 451
    .line 452
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 453
    .line 454
    sget-object v5, Lcom/alibaba/fastjson2/JSONBDump;->GB18030:Ljava/nio/charset/Charset;

    .line 455
    .line 456
    .line 457
    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 458
    .line 459
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 460
    add-int/2addr v3, v1

    .line 461
    .line 462
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 463
    .line 464
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 468
    return-void

    .line 469
    .line 470
    .line 471
    :pswitch_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 472
    move-result v1

    .line 473
    .line 474
    new-instance v2, Ljava/lang/String;

    .line 475
    .line 476
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 477
    .line 478
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 479
    .line 480
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 481
    .line 482
    .line 483
    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 484
    .line 485
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 486
    add-int/2addr v3, v1

    .line 487
    .line 488
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 489
    .line 490
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 494
    return-void

    .line 495
    .line 496
    .line 497
    :pswitch_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 498
    move-result v1

    .line 499
    .line 500
    new-instance v2, Ljava/lang/String;

    .line 501
    .line 502
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 503
    .line 504
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 505
    .line 506
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 507
    .line 508
    .line 509
    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 510
    .line 511
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 512
    add-int/2addr v3, v1

    .line 513
    .line 514
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 515
    .line 516
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 520
    return-void

    .line 521
    .line 522
    .line 523
    :pswitch_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 524
    move-result v1

    .line 525
    .line 526
    new-instance v2, Ljava/lang/String;

    .line 527
    .line 528
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 529
    .line 530
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 531
    .line 532
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 533
    .line 534
    .line 535
    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 536
    .line 537
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 538
    add-int/2addr v3, v1

    .line 539
    .line 540
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 541
    .line 542
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 546
    return-void

    .line 547
    .line 548
    .line 549
    :pswitch_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 550
    move-result v1

    .line 551
    .line 552
    new-instance v2, Ljava/lang/String;

    .line 553
    .line 554
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 555
    .line 556
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 557
    .line 558
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 559
    .line 560
    .line 561
    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 562
    .line 563
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 564
    add-int/2addr v3, v1

    .line 565
    .line 566
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 567
    .line 568
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 572
    return-void

    .line 573
    .line 574
    :pswitch_6
    add-int/lit8 v4, v1, 0x4

    .line 575
    .line 576
    aget-byte v4, v2, v4

    .line 577
    .line 578
    and-int/lit16 v4, v4, 0xff

    .line 579
    .line 580
    add-int/lit8 v5, v1, 0x3

    .line 581
    .line 582
    aget-byte v5, v2, v5

    .line 583
    .line 584
    and-int/lit16 v5, v5, 0xff

    .line 585
    shl-int/2addr v5, v10

    .line 586
    add-int/2addr v4, v5

    .line 587
    .line 588
    add-int/lit8 v5, v1, 0x2

    .line 589
    .line 590
    aget-byte v5, v2, v5

    .line 591
    .line 592
    and-int/lit16 v5, v5, 0xff

    .line 593
    shl-int/2addr v5, v9

    .line 594
    add-int/2addr v4, v5

    .line 595
    .line 596
    aget-byte v2, v2, v3

    .line 597
    .line 598
    shl-int/lit8 v2, v2, 0x18

    .line 599
    add-int/2addr v4, v2

    .line 600
    .line 601
    add-int/lit8 v1, v1, 0x5

    .line 602
    .line 603
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 604
    .line 605
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 606
    int-to-long v2, v4

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 610
    return-void

    .line 611
    .line 612
    :pswitch_7
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 613
    .line 614
    add-int/lit8 v1, v1, 0x2

    .line 615
    .line 616
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 617
    .line 618
    aget-byte v1, v2, v3

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    .line 622
    return-void

    .line 623
    .line 624
    :pswitch_8
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 625
    .line 626
    add-int/lit8 v5, v1, 0x2

    .line 627
    .line 628
    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 629
    .line 630
    aget-byte v3, v2, v3

    .line 631
    shl-int/2addr v3, v10

    .line 632
    .line 633
    add-int/lit8 v1, v1, 0x3

    .line 634
    .line 635
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 636
    .line 637
    aget-byte v1, v2, v5

    .line 638
    .line 639
    and-int/lit16 v1, v1, 0xff

    .line 640
    add-int/2addr v3, v1

    .line 641
    int-to-short v1, v3

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16(S)V

    .line 645
    return-void

    .line 646
    .line 647
    .line 648
    :pswitch_9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 649
    move-result v1

    .line 650
    .line 651
    new-array v2, v1, [B

    .line 652
    .line 653
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 654
    .line 655
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 656
    .line 657
    .line 658
    invoke-static {v3, v4, v2, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    .line 660
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 661
    add-int/2addr v3, v1

    .line 662
    .line 663
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 664
    .line 665
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 666
    .line 667
    new-instance v3, Ljava/math/BigInteger;

    .line 668
    .line 669
    .line 670
    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeBigInt(Ljava/math/BigInteger;)V

    .line 674
    return-void

    .line 675
    .line 676
    :pswitch_a
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    .line 680
    move-result-wide v2

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 684
    return-void

    .line 685
    .line 686
    .line 687
    :pswitch_b
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 688
    move-result v1

    .line 689
    .line 690
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 691
    .line 692
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 693
    .line 694
    add-int/lit8 v4, v3, 0x1

    .line 695
    .line 696
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 697
    .line 698
    aget-byte v12, v2, v3

    .line 699
    .line 700
    const/16 v13, -0x46

    .line 701
    .line 702
    if-eq v12, v13, :cond_15

    .line 703
    .line 704
    const/16 v13, -0x42

    .line 705
    .line 706
    if-eq v12, v13, :cond_13

    .line 707
    .line 708
    if-eq v12, v7, :cond_12

    .line 709
    .line 710
    if-lt v12, v15, :cond_f

    .line 711
    .line 712
    if-gt v12, v14, :cond_f

    .line 713
    int-to-long v2, v12

    .line 714
    .line 715
    .line 716
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 717
    move-result-object v2

    .line 718
    .line 719
    goto/16 :goto_2

    .line 720
    .line 721
    :cond_f
    if-lt v12, v8, :cond_10

    .line 722
    .line 723
    if-gt v12, v5, :cond_10

    .line 724
    .line 725
    add-int/lit8 v12, v12, -0x38

    .line 726
    .line 727
    shl-int/lit8 v5, v12, 0x8

    .line 728
    .line 729
    add-int/lit8 v3, v3, 0x2

    .line 730
    .line 731
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 732
    .line 733
    aget-byte v2, v2, v4

    .line 734
    .line 735
    and-int/lit16 v2, v2, 0xff

    .line 736
    add-int/2addr v5, v2

    .line 737
    int-to-long v2, v5

    .line 738
    .line 739
    .line 740
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 741
    move-result-object v2

    .line 742
    goto :goto_2

    .line 743
    .line 744
    :cond_10
    const/16 v5, 0x40

    .line 745
    .line 746
    if-lt v12, v5, :cond_11

    .line 747
    .line 748
    const/16 v5, 0x47

    .line 749
    .line 750
    if-gt v12, v5, :cond_11

    .line 751
    .line 752
    add-int/lit8 v12, v12, -0x44

    .line 753
    .line 754
    shl-int/lit8 v5, v12, 0x10

    .line 755
    .line 756
    add-int/lit8 v7, v3, 0x2

    .line 757
    .line 758
    iput v7, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 759
    .line 760
    aget-byte v4, v2, v4

    .line 761
    .line 762
    and-int/lit16 v4, v4, 0xff

    .line 763
    shl-int/2addr v4, v10

    .line 764
    add-int/2addr v5, v4

    .line 765
    .line 766
    add-int/lit8 v3, v3, 0x3

    .line 767
    .line 768
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 769
    .line 770
    aget-byte v2, v2, v7

    .line 771
    .line 772
    and-int/lit16 v2, v2, 0xff

    .line 773
    add-int/2addr v5, v2

    .line 774
    int-to-long v2, v5

    .line 775
    .line 776
    .line 777
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 778
    move-result-object v2

    .line 779
    goto :goto_2

    .line 780
    .line 781
    .line 782
    :cond_11
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 783
    move-result v2

    .line 784
    .line 785
    new-array v3, v2, [B

    .line 786
    .line 787
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 788
    .line 789
    iget v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 790
    .line 791
    .line 792
    invoke-static {v4, v5, v3, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 793
    .line 794
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 795
    add-int/2addr v4, v2

    .line 796
    .line 797
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 798
    .line 799
    new-instance v2, Ljava/math/BigInteger;

    .line 800
    .line 801
    .line 802
    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 803
    goto :goto_2

    .line 804
    .line 805
    .line 806
    :cond_12
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 807
    move-result v2

    .line 808
    int-to-long v2, v2

    .line 809
    .line 810
    .line 811
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 812
    move-result-object v2

    .line 813
    goto :goto_2

    .line 814
    .line 815
    :cond_13
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 816
    .line 817
    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 818
    int-to-long v4, v4

    .line 819
    add-long/2addr v7, v4

    .line 820
    .line 821
    .line 822
    invoke-virtual {v3, v2, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 823
    move-result-wide v2

    .line 824
    .line 825
    sget-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 826
    .line 827
    if-eqz v4, :cond_14

    .line 828
    goto :goto_1

    .line 829
    .line 830
    .line 831
    :cond_14
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    .line 832
    move-result-wide v2

    .line 833
    .line 834
    .line 835
    :goto_1
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 836
    move-result-object v2

    .line 837
    .line 838
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 839
    add-int/2addr v3, v10

    .line 840
    .line 841
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 842
    goto :goto_2

    .line 843
    .line 844
    .line 845
    :cond_15
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    .line 846
    move-result-wide v2

    .line 847
    .line 848
    .line 849
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 850
    move-result-object v2

    .line 851
    .line 852
    :goto_2
    if-nez v1, :cond_16

    .line 853
    .line 854
    new-instance v1, Ljava/math/BigDecimal;

    .line 855
    .line 856
    .line 857
    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 858
    goto :goto_3

    .line 859
    .line 860
    :cond_16
    new-instance v3, Ljava/math/BigDecimal;

    .line 861
    .line 862
    .line 863
    invoke-direct {v3, v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 864
    move-object v1, v3

    .line 865
    .line 866
    :goto_3
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 867
    .line 868
    const-wide/16 v3, 0x0

    .line 869
    .line 870
    .line 871
    invoke-virtual {v2, v1, v3, v4, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 872
    return-void

    .line 873
    .line 874
    :pswitch_c
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    .line 878
    move-result-wide v2

    .line 879
    .line 880
    .line 881
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 882
    move-result-object v2

    .line 883
    .line 884
    const-wide/16 v3, 0x0

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 888
    return-void

    .line 889
    .line 890
    :pswitch_d
    add-int/lit8 v4, v1, 0x4

    .line 891
    .line 892
    aget-byte v4, v2, v4

    .line 893
    .line 894
    and-int/lit16 v4, v4, 0xff

    .line 895
    .line 896
    add-int/lit8 v5, v1, 0x3

    .line 897
    .line 898
    aget-byte v5, v2, v5

    .line 899
    .line 900
    and-int/lit16 v5, v5, 0xff

    .line 901
    shl-int/2addr v5, v10

    .line 902
    add-int/2addr v4, v5

    .line 903
    .line 904
    add-int/lit8 v5, v1, 0x2

    .line 905
    .line 906
    aget-byte v5, v2, v5

    .line 907
    .line 908
    and-int/lit16 v5, v5, 0xff

    .line 909
    shl-int/2addr v5, v9

    .line 910
    add-int/2addr v4, v5

    .line 911
    .line 912
    aget-byte v2, v2, v3

    .line 913
    .line 914
    shl-int/lit8 v2, v2, 0x18

    .line 915
    add-int/2addr v4, v2

    .line 916
    .line 917
    add-int/lit8 v1, v1, 0x5

    .line 918
    .line 919
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 920
    .line 921
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 922
    .line 923
    .line 924
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 925
    move-result v2

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    .line 929
    return-void

    .line 930
    .line 931
    :pswitch_e
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 935
    move-result v2

    .line 936
    int-to-float v2, v2

    .line 937
    .line 938
    .line 939
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    .line 940
    return-void

    .line 941
    .line 942
    :pswitch_f
    add-int/lit8 v4, v1, 0x8

    .line 943
    .line 944
    aget-byte v4, v2, v4

    .line 945
    int-to-long v4, v4

    .line 946
    .line 947
    and-long v4, v4, v18

    .line 948
    .line 949
    add-int/lit8 v6, v1, 0x7

    .line 950
    .line 951
    aget-byte v6, v2, v6

    .line 952
    int-to-long v6, v6

    .line 953
    .line 954
    and-long v6, v6, v18

    .line 955
    shl-long/2addr v6, v10

    .line 956
    add-long/2addr v4, v6

    .line 957
    .line 958
    add-int/lit8 v6, v1, 0x6

    .line 959
    .line 960
    aget-byte v6, v2, v6

    .line 961
    int-to-long v6, v6

    .line 962
    .line 963
    and-long v6, v6, v18

    .line 964
    shl-long/2addr v6, v9

    .line 965
    add-long/2addr v4, v6

    .line 966
    .line 967
    add-int/lit8 v6, v1, 0x5

    .line 968
    .line 969
    aget-byte v6, v2, v6

    .line 970
    int-to-long v6, v6

    .line 971
    .line 972
    and-long v6, v6, v18

    .line 973
    .line 974
    shl-long v6, v6, v17

    .line 975
    add-long/2addr v4, v6

    .line 976
    .line 977
    add-int/lit8 v6, v1, 0x4

    .line 978
    .line 979
    aget-byte v6, v2, v6

    .line 980
    int-to-long v6, v6

    .line 981
    .line 982
    and-long v6, v6, v18

    .line 983
    .line 984
    const/16 v9, 0x20

    .line 985
    shl-long/2addr v6, v9

    .line 986
    add-long/2addr v4, v6

    .line 987
    .line 988
    add-int/lit8 v6, v1, 0x3

    .line 989
    .line 990
    aget-byte v6, v2, v6

    .line 991
    int-to-long v6, v6

    .line 992
    .line 993
    and-long v6, v6, v18

    .line 994
    .line 995
    const/16 v9, 0x28

    .line 996
    shl-long/2addr v6, v9

    .line 997
    add-long/2addr v4, v6

    .line 998
    .line 999
    add-int/lit8 v6, v1, 0x2

    .line 1000
    .line 1001
    aget-byte v6, v2, v6

    .line 1002
    int-to-long v6, v6

    .line 1003
    .line 1004
    and-long v6, v6, v18

    .line 1005
    shl-long/2addr v6, v8

    .line 1006
    add-long/2addr v4, v6

    .line 1007
    .line 1008
    aget-byte v2, v2, v3

    .line 1009
    int-to-long v2, v2

    .line 1010
    .line 1011
    shl-long v2, v2, v16

    .line 1012
    add-long/2addr v4, v2

    .line 1013
    .line 1014
    add-int/lit8 v1, v1, 0x9

    .line 1015
    .line 1016
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1017
    .line 1018
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1019
    .line 1020
    .line 1021
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 1022
    move-result-wide v2

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 1026
    return-void

    .line 1027
    .line 1028
    :pswitch_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    .line 1032
    move-result-wide v2

    .line 1033
    long-to-double v2, v2

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 1037
    return-void

    .line 1038
    .line 1039
    :pswitch_11
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1040
    .line 1041
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 1045
    return-void

    .line 1046
    .line 1047
    :pswitch_12
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1048
    .line 1049
    const-wide/16 v2, 0x0

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 1053
    return-void

    .line 1054
    .line 1055
    :pswitch_13
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 1059
    return-void

    .line 1060
    .line 1061
    :pswitch_14
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 1065
    return-void

    .line 1066
    .line 1067
    :pswitch_15
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 1071
    return-void

    .line 1072
    .line 1073
    .line 1074
    :pswitch_16
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    .line 1075
    move-result-wide v1

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 1079
    move-result v3

    .line 1080
    .line 1081
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v4, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInstant(JI)V

    .line 1085
    return-void

    .line 1086
    .line 1087
    :pswitch_17
    add-int/lit8 v4, v1, 0x8

    .line 1088
    .line 1089
    aget-byte v4, v2, v4

    .line 1090
    int-to-long v4, v4

    .line 1091
    .line 1092
    and-long v4, v4, v18

    .line 1093
    .line 1094
    add-int/lit8 v6, v1, 0x7

    .line 1095
    .line 1096
    aget-byte v6, v2, v6

    .line 1097
    int-to-long v6, v6

    .line 1098
    .line 1099
    and-long v6, v6, v18

    .line 1100
    shl-long/2addr v6, v10

    .line 1101
    add-long/2addr v4, v6

    .line 1102
    .line 1103
    add-int/lit8 v6, v1, 0x6

    .line 1104
    .line 1105
    aget-byte v6, v2, v6

    .line 1106
    int-to-long v6, v6

    .line 1107
    .line 1108
    and-long v6, v6, v18

    .line 1109
    shl-long/2addr v6, v9

    .line 1110
    add-long/2addr v4, v6

    .line 1111
    .line 1112
    add-int/lit8 v6, v1, 0x5

    .line 1113
    .line 1114
    aget-byte v6, v2, v6

    .line 1115
    int-to-long v6, v6

    .line 1116
    .line 1117
    and-long v6, v6, v18

    .line 1118
    .line 1119
    shl-long v6, v6, v17

    .line 1120
    add-long/2addr v4, v6

    .line 1121
    .line 1122
    add-int/lit8 v6, v1, 0x4

    .line 1123
    .line 1124
    aget-byte v6, v2, v6

    .line 1125
    int-to-long v6, v6

    .line 1126
    .line 1127
    and-long v6, v6, v18

    .line 1128
    .line 1129
    const/16 v9, 0x20

    .line 1130
    shl-long/2addr v6, v9

    .line 1131
    add-long/2addr v4, v6

    .line 1132
    .line 1133
    add-int/lit8 v6, v1, 0x3

    .line 1134
    .line 1135
    aget-byte v6, v2, v6

    .line 1136
    int-to-long v6, v6

    .line 1137
    .line 1138
    and-long v6, v6, v18

    .line 1139
    .line 1140
    const/16 v9, 0x28

    .line 1141
    shl-long/2addr v6, v9

    .line 1142
    add-long/2addr v4, v6

    .line 1143
    .line 1144
    add-int/lit8 v6, v1, 0x2

    .line 1145
    .line 1146
    aget-byte v6, v2, v6

    .line 1147
    int-to-long v6, v6

    .line 1148
    .line 1149
    and-long v6, v6, v18

    .line 1150
    shl-long/2addr v6, v8

    .line 1151
    add-long/2addr v4, v6

    .line 1152
    .line 1153
    aget-byte v2, v2, v3

    .line 1154
    int-to-long v2, v2

    .line 1155
    .line 1156
    shl-long v2, v2, v16

    .line 1157
    add-long/2addr v4, v2

    .line 1158
    .line 1159
    add-int/lit8 v1, v1, 0x9

    .line 1160
    .line 1161
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1162
    .line 1163
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 1167
    return-void

    .line 1168
    .line 1169
    .line 1170
    :pswitch_18
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpReference()V

    .line 1171
    return-void

    .line 1172
    .line 1173
    .line 1174
    :pswitch_19
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->isInt()Z

    .line 1175
    move-result v1

    .line 1176
    .line 1177
    if-eqz v1, :cond_17

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 1181
    move-result v1

    .line 1182
    goto :goto_4

    .line 1183
    .line 1184
    .line 1185
    :cond_17
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    .line 1186
    move-result-object v6

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 1190
    move-result v1

    .line 1191
    .line 1192
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 1193
    .line 1194
    .line 1195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1196
    move-result-object v3

    .line 1197
    .line 1198
    .line 1199
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    .line 1201
    :goto_4
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 1202
    .line 1203
    if-nez v2, :cond_19

    .line 1204
    .line 1205
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 1206
    .line 1207
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1208
    .line 1209
    aget-byte v2, v2, v3

    .line 1210
    .line 1211
    if-ne v2, v5, :cond_19

    .line 1212
    .line 1213
    if-nez v6, :cond_18

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONBDump;->getString(I)Ljava/lang/String;

    .line 1217
    move-result-object v6

    .line 1218
    .line 1219
    :cond_18
    iget v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1220
    add-int/2addr v1, v12

    .line 1221
    .line 1222
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1223
    .line 1224
    .line 1225
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson2/JSONBDump;->dumpObject(Ljava/lang/String;)V

    .line 1226
    return-void

    .line 1227
    .line 1228
    :cond_19
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 1232
    .line 1233
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1234
    .line 1235
    const-string v3, "@type"

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 1239
    .line 1240
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 1244
    .line 1245
    if-nez v6, :cond_1c

    .line 1246
    .line 1247
    if-gez v1, :cond_1b

    .line 1248
    .line 1249
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 1250
    .line 1251
    if-eqz v2, :cond_1a

    .line 1252
    .line 1253
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1254
    .line 1255
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    .line 1258
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1268
    move-result-object v1

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 1272
    goto :goto_5

    .line 1273
    .line 1274
    :cond_1a
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 1275
    neg-int v1, v1

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 1279
    move-result-object v1

    .line 1280
    .line 1281
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 1285
    goto :goto_5

    .line 1286
    .line 1287
    :cond_1b
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1288
    .line 1289
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1290
    .line 1291
    .line 1292
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1302
    move-result-object v1

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 1306
    goto :goto_5

    .line 1307
    .line 1308
    :cond_1c
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 1309
    .line 1310
    if-eqz v2, :cond_1d

    .line 1311
    .line 1312
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1313
    .line 1314
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1315
    .line 1316
    .line 1317
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1330
    move-result-object v1

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 1334
    goto :goto_5

    .line 1335
    .line 1336
    :cond_1d
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 1340
    .line 1341
    :goto_5
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1342
    .line 1343
    const-string v2, "@value"

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 1347
    .line 1348
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 1352
    .line 1353
    .line 1354
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    .line 1355
    .line 1356
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 1360
    return-void

    .line 1361
    .line 1362
    .line 1363
    :pswitch_1a
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 1364
    move-result v1

    .line 1365
    .line 1366
    new-array v2, v1, [B

    .line 1367
    .line 1368
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 1369
    .line 1370
    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1371
    .line 1372
    .line 1373
    invoke-static {v3, v4, v2, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1374
    .line 1375
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1376
    add-int/2addr v3, v1

    .line 1377
    .line 1378
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1379
    .line 1380
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBinary([B)V

    .line 1384
    return-void

    .line 1385
    .line 1386
    .line 1387
    :pswitch_1b
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 1388
    move-result v1

    .line 1389
    .line 1390
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1391
    int-to-char v1, v1

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    .line 1395
    return-void

    .line 1396
    .line 1397
    :cond_1e
    add-int/lit8 v4, v1, 0x2

    .line 1398
    .line 1399
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1400
    .line 1401
    aget-byte v3, v2, v3

    .line 1402
    shl-int/2addr v3, v10

    .line 1403
    .line 1404
    add-int/lit8 v5, v1, 0x3

    .line 1405
    .line 1406
    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1407
    .line 1408
    aget-byte v4, v2, v4

    .line 1409
    .line 1410
    and-int/lit16 v4, v4, 0xff

    .line 1411
    add-int/2addr v3, v4

    .line 1412
    .line 1413
    add-int/lit8 v4, v1, 0x4

    .line 1414
    .line 1415
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1416
    .line 1417
    aget-byte v5, v2, v5

    .line 1418
    .line 1419
    add-int/lit8 v1, v1, 0x5

    .line 1420
    .line 1421
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1422
    .line 1423
    aget-byte v1, v2, v4

    .line 1424
    .line 1425
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v2, v3, v5, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD10(III)V

    .line 1429
    return-void

    .line 1430
    .line 1431
    :cond_1f
    add-int/lit8 v4, v1, 0x2

    .line 1432
    .line 1433
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1434
    .line 1435
    aget-byte v3, v2, v3

    .line 1436
    shl-int/2addr v3, v10

    .line 1437
    .line 1438
    add-int/lit8 v5, v1, 0x3

    .line 1439
    .line 1440
    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1441
    .line 1442
    aget-byte v4, v2, v4

    .line 1443
    .line 1444
    and-int/lit16 v4, v4, 0xff

    .line 1445
    .line 1446
    add-int v11, v3, v4

    .line 1447
    .line 1448
    add-int/lit8 v3, v1, 0x4

    .line 1449
    .line 1450
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1451
    .line 1452
    aget-byte v12, v2, v5

    .line 1453
    .line 1454
    add-int/lit8 v4, v1, 0x5

    .line 1455
    .line 1456
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1457
    .line 1458
    aget-byte v13, v2, v3

    .line 1459
    .line 1460
    add-int/lit8 v3, v1, 0x6

    .line 1461
    .line 1462
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1463
    .line 1464
    aget-byte v14, v2, v4

    .line 1465
    .line 1466
    add-int/lit8 v4, v1, 0x7

    .line 1467
    .line 1468
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1469
    .line 1470
    aget-byte v15, v2, v3

    .line 1471
    add-int/2addr v1, v10

    .line 1472
    .line 1473
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1474
    .line 1475
    aget-byte v16, v2, v4

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 1479
    move-result v17

    .line 1480
    .line 1481
    .line 1482
    invoke-static/range {v11 .. v17}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 1483
    move-result-object v1

    .line 1484
    .line 1485
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDateTime(Lcom/alibaba/fastjson2/time/LocalDateTime;)V

    .line 1489
    return-void

    .line 1490
    .line 1491
    :cond_20
    const/16 v17, 0x18

    .line 1492
    .line 1493
    :pswitch_1c
    add-int/lit8 v4, v1, 0x4

    .line 1494
    .line 1495
    aget-byte v4, v2, v4

    .line 1496
    .line 1497
    and-int/lit16 v4, v4, 0xff

    .line 1498
    .line 1499
    add-int/lit8 v5, v1, 0x3

    .line 1500
    .line 1501
    aget-byte v5, v2, v5

    .line 1502
    .line 1503
    and-int/lit16 v5, v5, 0xff

    .line 1504
    shl-int/2addr v5, v10

    .line 1505
    add-int/2addr v4, v5

    .line 1506
    .line 1507
    add-int/lit8 v5, v1, 0x2

    .line 1508
    .line 1509
    aget-byte v5, v2, v5

    .line 1510
    .line 1511
    and-int/lit16 v5, v5, 0xff

    .line 1512
    shl-int/2addr v5, v9

    .line 1513
    add-int/2addr v4, v5

    .line 1514
    .line 1515
    aget-byte v2, v2, v3

    .line 1516
    .line 1517
    shl-int/lit8 v2, v2, 0x18

    .line 1518
    add-int/2addr v4, v2

    .line 1519
    .line 1520
    add-int/lit8 v1, v1, 0x5

    .line 1521
    .line 1522
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 1523
    .line 1524
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 1528
    return-void

    .line 1529
    .line 1530
    .line 1531
    :cond_21
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson2/JSONBDump;->dumpObject(Ljava/lang/String;)V

    .line 1532
    return-void

    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    :pswitch_data_0
    .packed-switch -0x70
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    :pswitch_data_1
    .packed-switch -0x55
        :pswitch_17
        :pswitch_1c
        :pswitch_1c
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_17
        :pswitch_6
    .end packed-switch

    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpArray()V
    .locals 3

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    .line 3
    .line 4
    const/16 v1, -0x5c

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x6c

    .line 14
    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 18
    .line 19
    const-string v1, "[]"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v1, 0x1

    .line 25
    .line 26
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 29
    .line 30
    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 31
    .line 32
    aget-byte v1, v1, v2

    .line 33
    .line 34
    iput-byte v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isInt()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    .line 43
    .line 44
    const/16 v2, -0x51

    .line 45
    .line 46
    if-eq v1, v2, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x49

    .line 49
    .line 50
    if-lt v1, v2, :cond_3

    .line 51
    .line 52
    const/16 v2, 0x78

    .line 53
    .line 54
    if-gt v1, v2, :cond_3

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 57
    .line 58
    const-string v1, "["

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 67
    .line 68
    const-string v1, "]"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 72
    return-void

    .line 73
    .line 74
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 78
    const/4 v1, 0x0

    .line 79
    .line 80
    :goto_1
    if-ge v1, v0, :cond_6

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isReference()Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpReference()V

    .line 97
    goto :goto_2

    .line 98
    .line 99
    .line 100
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    .line 101
    .line 102
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 109
    return-void
.end method

.method private dumpObject(Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    const/16 v0, -0x5b

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 12
    .line 13
    const-string v2, "@type"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 30
    .line 31
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 32
    .line 33
    aget-byte p1, p1, v1

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 38
    .line 39
    const-string v0, "{}"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 43
    .line 44
    iget p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    iput p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 49
    return-void

    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 55
    :goto_0
    const/4 p1, 0x0

    .line 56
    .line 57
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 58
    .line 59
    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 60
    .line 61
    aget-byte v1, v1, v2

    .line 62
    .line 63
    const/16 v3, -0x6d

    .line 64
    .line 65
    if-eq v1, v3, :cond_e

    .line 66
    .line 67
    if-eq v1, v0, :cond_d

    .line 68
    .line 69
    const/16 v3, 0x7f

    .line 70
    .line 71
    if-eq v1, v3, :cond_8

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isString()Z

    .line 75
    move-result v2

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_2
    const/16 v2, -0x10

    .line 91
    .line 92
    if-lt v1, v2, :cond_3

    .line 93
    .line 94
    const/16 v2, 0x48

    .line 95
    .line 96
    if-gt v1, v2, :cond_3

    .line 97
    .line 98
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 102
    move-result v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(I)V

    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_3
    const/16 v2, -0x28

    .line 110
    .line 111
    if-lt v1, v2, :cond_4

    .line 112
    .line 113
    const/16 v2, -0x11

    .line 114
    .line 115
    if-le v1, v2, :cond_5

    .line 116
    .line 117
    :cond_4
    const/16 v2, -0x42

    .line 118
    .line 119
    if-ne v1, v2, :cond_6

    .line 120
    .line 121
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    .line 125
    move-result-wide v2

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(J)V

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_6
    if-eqz p1, :cond_7

    .line 133
    .line 134
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isInt()Z

    .line 150
    move-result v1

    .line 151
    .line 152
    const-string v2, "#"

    .line 153
    .line 154
    if-eqz v1, :cond_b

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 158
    move-result v1

    .line 159
    .line 160
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 161
    .line 162
    if-eqz v3, :cond_9

    .line 163
    .line 164
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 165
    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 183
    goto :goto_2

    .line 184
    .line 185
    :cond_9
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    .line 192
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    check-cast v2, Ljava/lang/String;

    .line 196
    .line 197
    if-eqz v2, :cond_a

    .line 198
    .line 199
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 203
    goto :goto_2

    .line 204
    .line 205
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    const-string v2, "symbol not found "

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    .line 225
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 226
    throw p1

    .line 227
    .line 228
    .line 229
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    .line 234
    move-result v3

    .line 235
    .line 236
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 237
    .line 238
    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    move-result-object v5

    .line 241
    .line 242
    .line 243
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 246
    .line 247
    if-eqz v4, :cond_c

    .line 248
    .line 249
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 250
    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object v1

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 271
    goto :goto_2

    .line 272
    .line 273
    :cond_c
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 277
    goto :goto_2

    .line 278
    .line 279
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 280
    .line 281
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 282
    .line 283
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 287
    return-void

    .line 288
    .line 289
    .line 290
    :cond_e
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpReference()V

    .line 291
    .line 292
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 293
    .line 294
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isReference()Z

    .line 301
    move-result v1

    .line 302
    .line 303
    if-eqz v1, :cond_f

    .line 304
    .line 305
    .line 306
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpReference()V

    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    .line 311
    :cond_f
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    .line 312
    .line 313
    goto/16 :goto_1
.end method

.method private dumpReference()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 3
    .line 4
    const-string v1, "{\"$ref\":"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readReference()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v1, "#-1"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->lastReference:Ljava/lang/String;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 29
    .line 30
    const-string v1, "}"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 5
    neg-int v1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v2, "symbol not found : "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method public isInt()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v1, -0x46

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x48

    .line 13
    .line 14
    if-le v0, v1, :cond_2

    .line 15
    .line 16
    :cond_0
    const/16 v1, -0x53

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, -0x54

    .line 21
    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/16 v1, -0x55

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 31
    return v0
.end method

.method public isReference()Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    aget-byte v0, v1, v0

    .line 10
    .line 11
    const/16 v1, -0x6d

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isString()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v1, 0x49

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x7d

    .line 13
    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public readInt32Value()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    const/16 v4, -0x10

    .line 13
    .line 14
    if-lt v3, v4, :cond_0

    .line 15
    .line 16
    const/16 v4, 0x2f

    .line 17
    .line 18
    if-gt v3, v4, :cond_0

    .line 19
    return v3

    .line 20
    .line 21
    :cond_0
    const/16 v4, 0x30

    .line 22
    .line 23
    if-lt v3, v4, :cond_1

    .line 24
    .line 25
    const/16 v4, 0x3f

    .line 26
    .line 27
    if-gt v3, v4, :cond_1

    .line 28
    .line 29
    add-int/lit8 v3, v3, -0x38

    .line 30
    .line 31
    shl-int/lit8 v3, v3, 0x8

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 36
    .line 37
    aget-byte v0, v0, v2

    .line 38
    .line 39
    and-int/lit16 v0, v0, 0xff

    .line 40
    add-int/2addr v3, v0

    .line 41
    return v3

    .line 42
    .line 43
    :cond_1
    const/16 v4, 0x40

    .line 44
    .line 45
    if-lt v3, v4, :cond_2

    .line 46
    .line 47
    const/16 v4, 0x47

    .line 48
    .line 49
    if-gt v3, v4, :cond_2

    .line 50
    .line 51
    add-int/lit8 v3, v3, -0x44

    .line 52
    .line 53
    shl-int/lit8 v3, v3, 0x10

    .line 54
    .line 55
    add-int/lit8 v4, v1, 0x2

    .line 56
    .line 57
    iput v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 58
    .line 59
    aget-byte v2, v0, v2

    .line 60
    .line 61
    and-int/lit16 v2, v2, 0xff

    .line 62
    .line 63
    shl-int/lit8 v2, v2, 0x8

    .line 64
    add-int/2addr v3, v2

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x3

    .line 67
    .line 68
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 69
    .line 70
    aget-byte v0, v0, v4

    .line 71
    .line 72
    and-int/lit16 v0, v0, 0xff

    .line 73
    add-int/2addr v3, v0

    .line 74
    return v3

    .line 75
    .line 76
    :cond_2
    const/16 v4, -0x54

    .line 77
    .line 78
    if-eq v3, v4, :cond_4

    .line 79
    .line 80
    const/16 v4, -0x53

    .line 81
    .line 82
    if-eq v3, v4, :cond_4

    .line 83
    .line 84
    const/16 v4, 0x48

    .line 85
    .line 86
    if-ne v3, v4, :cond_3

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v2, "readInt32Value not support "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, ", offset "

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "/"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 124
    array-length v2, v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0

    .line 136
    .line 137
    :cond_4
    :goto_0
    add-int/lit8 v3, v1, 0x4

    .line 138
    .line 139
    aget-byte v3, v0, v3

    .line 140
    .line 141
    and-int/lit16 v3, v3, 0xff

    .line 142
    .line 143
    add-int/lit8 v4, v1, 0x3

    .line 144
    .line 145
    aget-byte v4, v0, v4

    .line 146
    .line 147
    and-int/lit16 v4, v4, 0xff

    .line 148
    .line 149
    shl-int/lit8 v4, v4, 0x8

    .line 150
    add-int/2addr v3, v4

    .line 151
    .line 152
    add-int/lit8 v4, v1, 0x2

    .line 153
    .line 154
    aget-byte v4, v0, v4

    .line 155
    .line 156
    and-int/lit16 v4, v4, 0xff

    .line 157
    .line 158
    shl-int/lit8 v4, v4, 0x10

    .line 159
    add-int/2addr v3, v4

    .line 160
    .line 161
    aget-byte v0, v0, v2

    .line 162
    .line 163
    shl-int/lit8 v0, v0, 0x18

    .line 164
    add-int/2addr v3, v0

    .line 165
    .line 166
    add-int/lit8 v1, v1, 0x5

    .line 167
    .line 168
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 169
    return v3
.end method

.method public readInt64Value()J
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 11
    .line 12
    aget-byte v4, v1, v2

    .line 13
    .line 14
    const/16 v5, -0x10

    .line 15
    .line 16
    if-lt v4, v5, :cond_0

    .line 17
    .line 18
    const/16 v5, 0x2f

    .line 19
    .line 20
    if-gt v4, v5, :cond_0

    .line 21
    int-to-long v1, v4

    .line 22
    return-wide v1

    .line 23
    .line 24
    :cond_0
    const/16 v5, 0x38

    .line 25
    .line 26
    const/16 v6, 0x30

    .line 27
    .line 28
    const/16 v7, 0x8

    .line 29
    .line 30
    if-lt v4, v6, :cond_1

    .line 31
    .line 32
    const/16 v8, 0x3f

    .line 33
    .line 34
    if-gt v4, v8, :cond_1

    .line 35
    sub-int/2addr v4, v5

    .line 36
    shl-int/2addr v4, v7

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x2

    .line 39
    .line 40
    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 41
    .line 42
    aget-byte v1, v1, v3

    .line 43
    .line 44
    and-int/lit16 v1, v1, 0xff

    .line 45
    add-int/2addr v4, v1

    .line 46
    int-to-long v1, v4

    .line 47
    return-wide v1

    .line 48
    .line 49
    :cond_1
    const/16 v8, 0x40

    .line 50
    .line 51
    const/16 v9, 0x10

    .line 52
    .line 53
    if-lt v4, v8, :cond_2

    .line 54
    .line 55
    const/16 v8, 0x47

    .line 56
    .line 57
    if-gt v4, v8, :cond_2

    .line 58
    .line 59
    add-int/lit8 v4, v4, -0x44

    .line 60
    shl-int/2addr v4, v9

    .line 61
    .line 62
    add-int/lit8 v5, v2, 0x2

    .line 63
    .line 64
    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 65
    .line 66
    aget-byte v3, v1, v3

    .line 67
    .line 68
    and-int/lit16 v3, v3, 0xff

    .line 69
    shl-int/2addr v3, v7

    .line 70
    add-int/2addr v4, v3

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x3

    .line 73
    .line 74
    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 75
    .line 76
    aget-byte v1, v1, v5

    .line 77
    .line 78
    and-int/lit16 v1, v1, 0xff

    .line 79
    add-int/2addr v4, v1

    .line 80
    int-to-long v1, v4

    .line 81
    return-wide v1

    .line 82
    .line 83
    :cond_2
    const/16 v8, -0x28

    .line 84
    .line 85
    if-lt v4, v8, :cond_3

    .line 86
    .line 87
    const/16 v10, -0x11

    .line 88
    .line 89
    if-gt v4, v10, :cond_3

    .line 90
    sub-int/2addr v4, v8

    .line 91
    int-to-long v1, v4

    .line 92
    .line 93
    const-wide/16 v3, -0x8

    .line 94
    add-long/2addr v1, v3

    .line 95
    return-wide v1

    .line 96
    .line 97
    :cond_3
    const/16 v8, -0x38

    .line 98
    .line 99
    if-lt v4, v8, :cond_4

    .line 100
    .line 101
    const/16 v8, -0x29

    .line 102
    .line 103
    if-gt v4, v8, :cond_4

    .line 104
    .line 105
    add-int/lit8 v4, v4, 0x30

    .line 106
    shl-int/2addr v4, v7

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x2

    .line 109
    .line 110
    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 111
    .line 112
    aget-byte v1, v1, v3

    .line 113
    .line 114
    and-int/lit16 v1, v1, 0xff

    .line 115
    add-int/2addr v4, v1

    .line 116
    int-to-long v1, v4

    .line 117
    return-wide v1

    .line 118
    .line 119
    :cond_4
    const/16 v8, -0x40

    .line 120
    .line 121
    if-lt v4, v8, :cond_5

    .line 122
    .line 123
    const/16 v8, -0x39

    .line 124
    .line 125
    if-gt v4, v8, :cond_5

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x3c

    .line 128
    shl-int/2addr v4, v9

    .line 129
    .line 130
    add-int/lit8 v5, v2, 0x2

    .line 131
    .line 132
    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 133
    .line 134
    aget-byte v3, v1, v3

    .line 135
    .line 136
    and-int/lit16 v3, v3, 0xff

    .line 137
    shl-int/2addr v3, v7

    .line 138
    add-int/2addr v4, v3

    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x3

    .line 141
    .line 142
    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 143
    .line 144
    aget-byte v1, v1, v5

    .line 145
    .line 146
    and-int/lit16 v1, v1, 0xff

    .line 147
    add-int/2addr v4, v1

    .line 148
    int-to-long v1, v4

    .line 149
    return-wide v1

    .line 150
    .line 151
    :cond_5
    const/16 v8, -0x55

    .line 152
    .line 153
    const/16 v10, 0x18

    .line 154
    .line 155
    if-eq v4, v8, :cond_7

    .line 156
    .line 157
    const/16 v8, 0x48

    .line 158
    .line 159
    if-eq v4, v8, :cond_6

    .line 160
    .line 161
    .line 162
    packed-switch v4, :pswitch_data_0

    .line 163
    .line 164
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    const-string v3, "readInt64Value not support "

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {v4}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 178
    move-result-object v3

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v3, ", offset "

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v3, "/"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 199
    array-length v3, v3

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    .line 209
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 210
    throw v1

    .line 211
    .line 212
    :pswitch_0
    add-int/lit8 v2, v2, 0x2

    .line 213
    .line 214
    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 215
    .line 216
    aget-byte v1, v1, v3

    .line 217
    int-to-long v1, v1

    .line 218
    return-wide v1

    .line 219
    .line 220
    :pswitch_1
    add-int/lit8 v4, v2, 0x2

    .line 221
    .line 222
    aget-byte v4, v1, v4

    .line 223
    .line 224
    and-int/lit16 v4, v4, 0xff

    .line 225
    .line 226
    aget-byte v1, v1, v3

    .line 227
    shl-int/2addr v1, v7

    .line 228
    add-int/2addr v4, v1

    .line 229
    .line 230
    add-int/lit8 v2, v2, 0x3

    .line 231
    .line 232
    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 233
    int-to-long v1, v4

    .line 234
    return-wide v1

    .line 235
    .line 236
    :cond_6
    :pswitch_2
    add-int/lit8 v4, v2, 0x4

    .line 237
    .line 238
    aget-byte v4, v1, v4

    .line 239
    .line 240
    and-int/lit16 v4, v4, 0xff

    .line 241
    .line 242
    add-int/lit8 v5, v2, 0x3

    .line 243
    .line 244
    aget-byte v5, v1, v5

    .line 245
    .line 246
    and-int/lit16 v5, v5, 0xff

    .line 247
    shl-int/2addr v5, v7

    .line 248
    add-int/2addr v4, v5

    .line 249
    .line 250
    add-int/lit8 v5, v2, 0x2

    .line 251
    .line 252
    aget-byte v5, v1, v5

    .line 253
    .line 254
    and-int/lit16 v5, v5, 0xff

    .line 255
    shl-int/2addr v5, v9

    .line 256
    add-int/2addr v4, v5

    .line 257
    .line 258
    aget-byte v1, v1, v3

    .line 259
    shl-int/2addr v1, v10

    .line 260
    add-int/2addr v4, v1

    .line 261
    .line 262
    add-int/lit8 v2, v2, 0x5

    .line 263
    .line 264
    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 265
    int-to-long v1, v4

    .line 266
    return-wide v1

    .line 267
    .line 268
    :cond_7
    :pswitch_3
    add-int/lit8 v4, v2, 0x8

    .line 269
    .line 270
    aget-byte v4, v1, v4

    .line 271
    int-to-long v11, v4

    .line 272
    .line 273
    const-wide/16 v13, 0xff

    .line 274
    and-long/2addr v11, v13

    .line 275
    .line 276
    add-int/lit8 v4, v2, 0x7

    .line 277
    .line 278
    aget-byte v4, v1, v4

    .line 279
    move v8, v5

    .line 280
    move v15, v6

    .line 281
    int-to-long v5, v4

    .line 282
    and-long/2addr v5, v13

    .line 283
    .line 284
    shl-long v4, v5, v7

    .line 285
    add-long/2addr v11, v4

    .line 286
    .line 287
    add-int/lit8 v4, v2, 0x6

    .line 288
    .line 289
    aget-byte v4, v1, v4

    .line 290
    int-to-long v4, v4

    .line 291
    and-long/2addr v4, v13

    .line 292
    shl-long/2addr v4, v9

    .line 293
    add-long/2addr v11, v4

    .line 294
    .line 295
    add-int/lit8 v4, v2, 0x5

    .line 296
    .line 297
    aget-byte v4, v1, v4

    .line 298
    int-to-long v4, v4

    .line 299
    and-long/2addr v4, v13

    .line 300
    shl-long/2addr v4, v10

    .line 301
    add-long/2addr v11, v4

    .line 302
    .line 303
    add-int/lit8 v4, v2, 0x4

    .line 304
    .line 305
    aget-byte v4, v1, v4

    .line 306
    int-to-long v4, v4

    .line 307
    and-long/2addr v4, v13

    .line 308
    .line 309
    const/16 v6, 0x20

    .line 310
    shl-long/2addr v4, v6

    .line 311
    add-long/2addr v11, v4

    .line 312
    .line 313
    add-int/lit8 v4, v2, 0x3

    .line 314
    .line 315
    aget-byte v4, v1, v4

    .line 316
    int-to-long v4, v4

    .line 317
    and-long/2addr v4, v13

    .line 318
    .line 319
    const/16 v6, 0x28

    .line 320
    shl-long/2addr v4, v6

    .line 321
    add-long/2addr v11, v4

    .line 322
    .line 323
    add-int/lit8 v4, v2, 0x2

    .line 324
    .line 325
    aget-byte v4, v1, v4

    .line 326
    int-to-long v4, v4

    .line 327
    and-long/2addr v4, v13

    .line 328
    shl-long/2addr v4, v15

    .line 329
    add-long/2addr v11, v4

    .line 330
    .line 331
    aget-byte v1, v1, v3

    .line 332
    int-to-long v3, v1

    .line 333
    shl-long/2addr v3, v8

    .line 334
    add-long/2addr v11, v3

    .line 335
    .line 336
    add-int/lit8 v2, v2, 0x9

    .line 337
    .line 338
    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 339
    return-wide v11

    .line 340
    nop

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
    :pswitch_data_0
    .packed-switch -0x44
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readLength()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    const/16 v4, -0x10

    .line 13
    .line 14
    if-lt v3, v4, :cond_0

    .line 15
    .line 16
    const/16 v4, 0x2f

    .line 17
    .line 18
    if-gt v3, v4, :cond_0

    .line 19
    return v3

    .line 20
    .line 21
    :cond_0
    const/16 v4, 0x40

    .line 22
    .line 23
    if-lt v3, v4, :cond_1

    .line 24
    .line 25
    const/16 v4, 0x47

    .line 26
    .line 27
    if-gt v3, v4, :cond_1

    .line 28
    .line 29
    add-int/lit8 v3, v3, -0x44

    .line 30
    .line 31
    shl-int/lit8 v3, v3, 0x10

    .line 32
    .line 33
    add-int/lit8 v4, v1, 0x2

    .line 34
    .line 35
    iput v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 36
    .line 37
    aget-byte v2, v0, v2

    .line 38
    .line 39
    and-int/lit16 v2, v2, 0xff

    .line 40
    .line 41
    shl-int/lit8 v2, v2, 0x8

    .line 42
    add-int/2addr v3, v2

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x3

    .line 45
    .line 46
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 47
    .line 48
    aget-byte v0, v0, v4

    .line 49
    .line 50
    :goto_0
    and-int/lit16 v0, v0, 0xff

    .line 51
    add-int/2addr v3, v0

    .line 52
    return v3

    .line 53
    .line 54
    :cond_1
    const/16 v4, 0x30

    .line 55
    .line 56
    if-lt v3, v4, :cond_2

    .line 57
    .line 58
    const/16 v4, 0x3f

    .line 59
    .line 60
    if-gt v3, v4, :cond_2

    .line 61
    .line 62
    add-int/lit8 v3, v3, -0x38

    .line 63
    .line 64
    shl-int/lit8 v3, v3, 0x8

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x2

    .line 67
    .line 68
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 69
    .line 70
    aget-byte v0, v0, v2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    const/16 v4, 0x48

    .line 74
    .line 75
    if-ne v3, v4, :cond_3

    .line 76
    .line 77
    add-int/lit8 v3, v1, 0x2

    .line 78
    .line 79
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 80
    .line 81
    aget-byte v2, v0, v2

    .line 82
    .line 83
    shl-int/lit8 v2, v2, 0x18

    .line 84
    .line 85
    add-int/lit8 v4, v1, 0x3

    .line 86
    .line 87
    iput v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 88
    .line 89
    aget-byte v3, v0, v3

    .line 90
    .line 91
    and-int/lit16 v3, v3, 0xff

    .line 92
    .line 93
    shl-int/lit8 v3, v3, 0x10

    .line 94
    add-int/2addr v2, v3

    .line 95
    .line 96
    add-int/lit8 v3, v1, 0x4

    .line 97
    .line 98
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 99
    .line 100
    aget-byte v4, v0, v4

    .line 101
    .line 102
    and-int/lit16 v4, v4, 0xff

    .line 103
    .line 104
    shl-int/lit8 v4, v4, 0x8

    .line 105
    add-int/2addr v2, v4

    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x5

    .line 108
    .line 109
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 110
    .line 111
    aget-byte v0, v0, v3

    .line 112
    .line 113
    and-int/lit16 v0, v0, 0xff

    .line 114
    add-int/2addr v2, v0

    .line 115
    return v2

    .line 116
    .line 117
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    const-string v2, "not support length type : "

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0
.end method

.method public readReference()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x6d

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isString()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "reference not support input "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 9
    .line 10
    aget-byte v0, v0, v1

    .line 11
    .line 12
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strtype:B

    .line 13
    .line 14
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 15
    .line 16
    const/16 v1, 0x49

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x79

    .line 21
    .line 22
    if-gt v0, v2, :cond_1

    .line 23
    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 28
    move-result v0

    .line 29
    .line 30
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 31
    .line 32
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 33
    .line 34
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sub-int/2addr v0, v1

    .line 37
    .line 38
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 39
    .line 40
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    const/16 v1, 0x7a

    .line 44
    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 49
    move-result v0

    .line 50
    .line 51
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 52
    .line 53
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 54
    .line 55
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 56
    .line 57
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_2
    const/16 v1, 0x7b

    .line 61
    .line 62
    if-ne v0, v1, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 66
    move-result v0

    .line 67
    .line 68
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 69
    .line 70
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 71
    .line 72
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 73
    .line 74
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_3
    const/16 v1, 0x7c

    .line 78
    .line 79
    if-ne v0, v1, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 83
    move-result v0

    .line 84
    .line 85
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 86
    .line 87
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 88
    .line 89
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 90
    .line 91
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_4
    const/16 v1, 0x7d

    .line 95
    .line 96
    if-ne v0, v1, :cond_6

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    .line 100
    move-result v0

    .line 101
    .line 102
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 103
    .line 104
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 105
    .line 106
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 107
    .line 108
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 111
    .line 112
    if-gez v1, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 115
    neg-int v1, v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    .line 122
    :cond_5
    new-instance v2, Ljava/lang/String;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 125
    .line 126
    iget v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 127
    .line 128
    .line 129
    invoke-direct {v2, v3, v4, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 130
    .line 131
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 132
    .line 133
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 134
    add-int/2addr v0, v1

    .line 135
    .line 136
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 137
    return-object v2

    .line 138
    .line 139
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    const-string v2, "readString not support type "

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->strtype:B

    .line 152
    .line 153
    .line 154
    invoke-static {v2}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v2, ", offset "

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v2, "/"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 176
    array-length v2, v2

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 187
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
