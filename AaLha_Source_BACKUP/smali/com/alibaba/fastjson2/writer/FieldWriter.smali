.class public abstract Lcom/alibaba/fastjson2/writer/FieldWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# static fields
.field static final initObjectWriterUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final backReference:Z

.field public final decimalFormat:Ljava/text/DecimalFormat;

.field public final features:J

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldClass:Ljava/lang/Class;

.field final fieldClassSerializable:Z

.field public final fieldName:Ljava/lang/String;

.field protected final fieldOffset:J

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field final hashCode:J

.field volatile initObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field public final label:Ljava/lang/String;

.field final managedReference:Z

.field public final method:Ljava/lang/reflect/Method;

.field final nameJSONB:[B

.field nameSymbolCache:J

.field final nameWithColonUTF16:[C

.field final nameWithColonUTF8:[B

.field public final ordinal:I

.field transient path:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field protected final primitive:Z

.field final raw:Z

.field final rootParentPath:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field final symbol:Z

.field final trim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 3
    .line 4
    const-string v1, "initObjectWriter"

    .line 5
    .line 6
    const-class v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->initObjectWriterUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p5

    .line 7
    .line 8
    move-object/from16 v3, p8

    .line 9
    .line 10
    move-object/from16 v4, p9

    .line 11
    .line 12
    move-object/from16 v5, p10

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    const-string v6, "string"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v6

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    const-class v6, Ljava/lang/String;

    .line 26
    .line 27
    if-eq v3, v6, :cond_0

    .line 28
    .line 29
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 30
    .line 31
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 32
    .line 33
    or-long v6, p3, v6

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    move-wide/from16 v6, p3

    .line 37
    .line 38
    :goto_0
    iput-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 39
    .line 40
    move/from16 v8, p2

    .line 41
    .line 42
    iput v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->ordinal:I

    .line 43
    .line 44
    iput-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 45
    .line 46
    move-object/from16 v8, p6

    .line 47
    .line 48
    iput-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 52
    move-result-wide v8

    .line 53
    .line 54
    iput-wide v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 55
    .line 56
    iput-wide v6, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 57
    .line 58
    .line 59
    invoke-static/range {p7 .. p7}, Lcom/alibaba/fastjson2/util/TypeUtils;->intern(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 60
    move-result-object v8

    .line 61
    .line 62
    iput-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    .line 63
    .line 64
    iput-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x1

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    const-class v10, Ljava/io/Serializable;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 74
    move-result v10

    .line 75
    .line 76
    if-nez v10, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    .line 80
    move-result v10

    .line 81
    .line 82
    .line 83
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 84
    move-result v10

    .line 85
    .line 86
    if-nez v10, :cond_2

    .line 87
    :cond_1
    move v10, v9

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move v10, v8

    .line 90
    .line 91
    :goto_1
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClassSerializable:Z

    .line 92
    .line 93
    iput-object v4, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 94
    .line 95
    iput-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 99
    move-result v10

    .line 100
    .line 101
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->primitive:Z

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 105
    move-result-object v10

    .line 106
    .line 107
    iput-object v10, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameJSONB:[B

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 112
    .line 113
    if-eq v3, v10, :cond_3

    .line 114
    .line 115
    const-class v10, [F

    .line 116
    .line 117
    if-eq v3, v10, :cond_3

    .line 118
    .line 119
    const-class v10, Ljava/lang/Float;

    .line 120
    .line 121
    if-eq v3, v10, :cond_3

    .line 122
    .line 123
    const-class v10, [Ljava/lang/Float;

    .line 124
    .line 125
    if-eq v3, v10, :cond_3

    .line 126
    .line 127
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 128
    .line 129
    if-eq v3, v10, :cond_3

    .line 130
    .line 131
    const-class v10, [D

    .line 132
    .line 133
    if-eq v3, v10, :cond_3

    .line 134
    .line 135
    const-class v10, Ljava/lang/Double;

    .line 136
    .line 137
    if-eq v3, v10, :cond_3

    .line 138
    .line 139
    const-class v10, [Ljava/lang/Double;

    .line 140
    .line 141
    if-eq v3, v10, :cond_3

    .line 142
    .line 143
    const-class v10, Ljava/math/BigDecimal;

    .line 144
    .line 145
    if-eq v3, v10, :cond_3

    .line 146
    .line 147
    const-class v10, [Ljava/math/BigDecimal;

    .line 148
    .line 149
    if-ne v3, v10, :cond_4

    .line 150
    .line 151
    :cond_3
    new-instance v10, Ljava/text/DecimalFormat;

    .line 152
    .line 153
    .line 154
    invoke-direct {v10, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    const/4 v10, 0x0

    .line 157
    .line 158
    :goto_2
    iput-object v10, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 159
    .line 160
    const-wide/16 v10, -0x1

    .line 161
    .line 162
    const-wide/16 v12, 0x0

    .line 163
    .line 164
    if-eqz v4, :cond_6

    .line 165
    .line 166
    const-wide/high16 v14, 0x80000000000000L

    .line 167
    and-long/2addr v14, v6

    .line 168
    .line 169
    cmp-long v14, v14, v12

    .line 170
    .line 171
    if-nez v14, :cond_6

    .line 172
    .line 173
    sget v14, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 174
    .line 175
    const/16 v15, 0x18

    .line 176
    .line 177
    if-ge v14, v15, :cond_5

    .line 178
    .line 179
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 180
    .line 181
    if-eq v3, v14, :cond_5

    .line 182
    .line 183
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 184
    .line 185
    if-eq v3, v14, :cond_5

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 189
    move-result v3

    .line 190
    .line 191
    if-nez v3, :cond_6

    .line 192
    .line 193
    :cond_5
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 197
    move-result-wide v14

    .line 198
    goto :goto_3

    .line 199
    :cond_6
    move-wide v14, v10

    .line 200
    .line 201
    :goto_3
    iput-wide v14, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldOffset:J

    .line 202
    .line 203
    cmp-long v3, v14, v10

    .line 204
    .line 205
    if-nez v3, :cond_7

    .line 206
    .line 207
    if-eqz v4, :cond_7

    .line 208
    .line 209
    if-nez v5, :cond_7

    .line 210
    .line 211
    .line 212
    :try_start_0
    invoke-virtual {v4, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    :catchall_0
    :cond_7
    const-string v3, "symbol"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v3

    .line 219
    .line 220
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->symbol:Z

    .line 221
    .line 222
    const-string v3, "trim"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v2

    .line 227
    .line 228
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->trim:Z

    .line 229
    .line 230
    const-wide/high16 v2, 0x4000000000000L

    .line 231
    and-long/2addr v2, v6

    .line 232
    .line 233
    cmp-long v2, v2, v12

    .line 234
    .line 235
    if-eqz v2, :cond_8

    .line 236
    move v2, v9

    .line 237
    goto :goto_4

    .line 238
    :cond_8
    move v2, v8

    .line 239
    .line 240
    :goto_4
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->raw:Z

    .line 241
    .line 242
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 243
    .line 244
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 245
    and-long/2addr v2, v6

    .line 246
    .line 247
    cmp-long v2, v2, v12

    .line 248
    .line 249
    if-eqz v2, :cond_9

    .line 250
    move v2, v9

    .line 251
    goto :goto_5

    .line 252
    :cond_9
    move v2, v8

    .line 253
    .line 254
    :goto_5
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->managedReference:Z

    .line 255
    .line 256
    const-wide/high16 v2, 0x2000000000000000L

    .line 257
    and-long/2addr v2, v6

    .line 258
    .line 259
    cmp-long v2, v2, v12

    .line 260
    .line 261
    if-eqz v2, :cond_a

    .line 262
    move v2, v9

    .line 263
    goto :goto_6

    .line 264
    :cond_a
    move v2, v8

    .line 265
    .line 266
    :goto_6
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->backReference:Z

    .line 267
    .line 268
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 269
    .line 270
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 271
    .line 272
    .line 273
    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    .line 274
    .line 275
    iput-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->rootParentPath:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 279
    move-result v2

    .line 280
    .line 281
    add-int/lit8 v3, v2, 0x3

    .line 282
    move v5, v3

    .line 283
    move v4, v8

    .line 284
    .line 285
    :goto_7
    const/16 v6, 0x7ff

    .line 286
    .line 287
    const/16 v7, 0x7f

    .line 288
    .line 289
    if-ge v4, v2, :cond_d

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 293
    move-result v10

    .line 294
    .line 295
    if-lt v10, v9, :cond_b

    .line 296
    .line 297
    if-gt v10, v7, :cond_b

    .line 298
    goto :goto_8

    .line 299
    .line 300
    :cond_b
    if-le v10, v6, :cond_c

    .line 301
    .line 302
    add-int/lit8 v5, v5, 0x2

    .line 303
    goto :goto_8

    .line 304
    .line 305
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 306
    .line 307
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 308
    goto :goto_7

    .line 309
    .line 310
    :cond_d
    new-array v4, v5, [B

    .line 311
    .line 312
    const/16 v5, 0x22

    .line 313
    .line 314
    aput-byte v5, v4, v8

    .line 315
    move v10, v8

    .line 316
    move v11, v9

    .line 317
    .line 318
    :goto_9
    if-ge v10, v2, :cond_10

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 322
    move-result v12

    .line 323
    .line 324
    if-lt v12, v9, :cond_e

    .line 325
    .line 326
    if-gt v12, v7, :cond_e

    .line 327
    .line 328
    add-int/lit8 v13, v11, 0x1

    .line 329
    int-to-byte v12, v12

    .line 330
    .line 331
    aput-byte v12, v4, v11

    .line 332
    move v11, v13

    .line 333
    goto :goto_a

    .line 334
    .line 335
    :cond_e
    if-le v12, v6, :cond_f

    .line 336
    .line 337
    add-int/lit8 v13, v11, 0x1

    .line 338
    .line 339
    shr-int/lit8 v14, v12, 0xc

    .line 340
    .line 341
    and-int/lit8 v14, v14, 0xf

    .line 342
    .line 343
    or-int/lit16 v14, v14, 0xe0

    .line 344
    int-to-byte v14, v14

    .line 345
    .line 346
    aput-byte v14, v4, v11

    .line 347
    .line 348
    add-int/lit8 v14, v11, 0x2

    .line 349
    .line 350
    shr-int/lit8 v15, v12, 0x6

    .line 351
    .line 352
    and-int/lit8 v15, v15, 0x3f

    .line 353
    .line 354
    or-int/lit16 v15, v15, 0x80

    .line 355
    int-to-byte v15, v15

    .line 356
    .line 357
    aput-byte v15, v4, v13

    .line 358
    .line 359
    add-int/lit8 v11, v11, 0x3

    .line 360
    .line 361
    and-int/lit8 v12, v12, 0x3f

    .line 362
    .line 363
    or-int/lit16 v12, v12, 0x80

    .line 364
    int-to-byte v12, v12

    .line 365
    .line 366
    aput-byte v12, v4, v14

    .line 367
    goto :goto_a

    .line 368
    .line 369
    :cond_f
    add-int/lit8 v13, v11, 0x1

    .line 370
    .line 371
    shr-int/lit8 v14, v12, 0x6

    .line 372
    .line 373
    and-int/lit8 v14, v14, 0x1f

    .line 374
    .line 375
    or-int/lit16 v14, v14, 0xc0

    .line 376
    int-to-byte v14, v14

    .line 377
    .line 378
    aput-byte v14, v4, v11

    .line 379
    .line 380
    add-int/lit8 v11, v11, 0x2

    .line 381
    .line 382
    and-int/lit8 v12, v12, 0x3f

    .line 383
    .line 384
    or-int/lit16 v12, v12, 0x80

    .line 385
    int-to-byte v12, v12

    .line 386
    .line 387
    aput-byte v12, v4, v13

    .line 388
    .line 389
    :goto_a
    add-int/lit8 v10, v10, 0x1

    .line 390
    goto :goto_9

    .line 391
    .line 392
    :cond_10
    add-int/lit8 v6, v11, 0x1

    .line 393
    .line 394
    aput-byte v5, v4, v11

    .line 395
    .line 396
    const/16 v7, 0x3a

    .line 397
    .line 398
    aput-byte v7, v4, v6

    .line 399
    .line 400
    iput-object v4, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 401
    .line 402
    new-array v3, v3, [C

    .line 403
    .line 404
    aput-char v5, v3, v8

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 408
    move-result v4

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v8, v4, v3, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 412
    .line 413
    add-int/lit8 v1, v2, 0x1

    .line 414
    .line 415
    aput-char v5, v3, v1

    .line 416
    .line 417
    add-int/lit8 v2, v2, 0x2

    .line 418
    .line 419
    aput-char v7, v3, v2

    .line 420
    .line 421
    iput-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 422
    return-void
.end method

.method public static getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 14
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-static {p0, p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    invoke-static {p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    const-class p0, Ljava/util/Calendar;

    invoke-virtual {p0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 21
    :cond_3
    :goto_0
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    .line 22
    const-class p1, Ljava/math/BigDecimal;

    if-ne p1, p4, :cond_7

    if-eqz p2, :cond_6

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 24
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    new-instance p3, Ljava/text/DecimalFormat;

    invoke-direct {p3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p3, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Lcom/alibaba/fastjson2/function/Function;)V

    return-object p1

    .line 25
    :cond_6
    :goto_1
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    return-object p0

    .line 26
    :cond_7
    const-class v0, [Ljava/math/BigDecimal;

    if-ne v0, p4, :cond_a

    if-eqz p2, :cond_9

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_2

    .line 28
    :cond_8
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    new-instance p3, Ljava/text/DecimalFormat;

    invoke-direct {p3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p0

    .line 29
    :cond_9
    :goto_2
    new-instance p2, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p2

    .line 30
    :cond_a
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 31
    const-string p4, "java.sql.Date"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_d

    const-string p3, "java.sql.Time"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    const-string p3, "java.sql.Timestamp"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-object p0

    .line 32
    :cond_b
    new-instance p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampWriter;

    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampWriter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 33
    :cond_c
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeWriter;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/util/JdbcSupport$TimeWriter;

    move-result-object p0

    return-object p0

    .line 34
    :cond_d
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0
.end method

.method private writeFieldNameSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    const/16 v4, 0x20

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 20
    move-result p2

    .line 21
    int-to-long v1, p2

    .line 22
    shl-long/2addr v1, v4

    .line 23
    int-to-long v3, v0

    .line 24
    or-long/2addr v1, v3

    .line 25
    .line 26
    iput-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    long-to-int v3, v1

    .line 29
    .line 30
    if-ne v3, v0, :cond_1

    .line 31
    .line 32
    shr-long v0, v1, v4

    .line 33
    long-to-int p2, v0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 40
    move-result p2

    .line 41
    int-to-long v1, p2

    .line 42
    shl-long/2addr v1, v4

    .line 43
    int-to-long v3, v0

    .line 44
    or-long/2addr v1, v3

    .line 45
    .line 46
    iput-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 47
    :goto_0
    const/4 v0, -0x1

    .line 48
    .line 49
    if-eq p2, v0, :cond_2

    .line 50
    neg-int p2, p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    return p1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 14

    .line 1
    .line 2
    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 3
    .line 4
    iget v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->ordinal:I

    .line 5
    .line 6
    iget v1, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->ordinal:I

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    return v2

    .line 11
    :cond_0
    const/4 v3, 0x1

    .line 12
    .line 13
    if-le v0, v1, :cond_1

    .line 14
    return v3

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 51
    .line 52
    :goto_1
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 53
    .line 54
    if-eqz v4, :cond_6

    .line 55
    .line 56
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 57
    .line 58
    if-eqz v4, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 62
    move-result v4

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 66
    move-result v4

    .line 67
    .line 68
    if-eqz v4, :cond_5

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_5
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 72
    goto :goto_3

    .line 73
    .line 74
    :cond_6
    :goto_2
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 75
    :goto_3
    const/4 v5, 0x0

    .line 76
    .line 77
    if-eqz v1, :cond_e

    .line 78
    .line 79
    if-eqz v4, :cond_e

    .line 80
    .line 81
    .line 82
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    .line 83
    move-result-object v6

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    .line 87
    move-result-object v7

    .line 88
    .line 89
    if-eq v7, v6, :cond_8

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 93
    move-result v8

    .line 94
    .line 95
    if-eqz v8, :cond_7

    .line 96
    return v3

    .line 97
    .line 98
    .line 99
    :cond_7
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 100
    move-result v6

    .line 101
    .line 102
    if-eqz v6, :cond_8

    .line 103
    return v2

    .line 104
    .line 105
    :cond_8
    instance-of v6, v1, Ljava/lang/reflect/Field;

    .line 106
    .line 107
    const-class v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 108
    .line 109
    if-eqz v6, :cond_9

    .line 110
    move-object v6, v1

    .line 111
    .line 112
    check-cast v6, Ljava/lang/reflect/Field;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 116
    move-result-object v6

    .line 117
    .line 118
    check-cast v6, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 119
    goto :goto_4

    .line 120
    .line 121
    :cond_9
    instance-of v6, v1, Ljava/lang/reflect/Method;

    .line 122
    .line 123
    if-eqz v6, :cond_a

    .line 124
    move-object v6, v1

    .line 125
    .line 126
    check-cast v6, Ljava/lang/reflect/Method;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 130
    move-result-object v6

    .line 131
    .line 132
    check-cast v6, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 133
    goto :goto_4

    .line 134
    :cond_a
    move-object v6, v5

    .line 135
    .line 136
    :goto_4
    instance-of v8, v4, Ljava/lang/reflect/Field;

    .line 137
    .line 138
    if-eqz v8, :cond_b

    .line 139
    move-object v8, v4

    .line 140
    .line 141
    check-cast v8, Ljava/lang/reflect/Field;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 145
    move-result-object v7

    .line 146
    .line 147
    check-cast v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 148
    goto :goto_5

    .line 149
    .line 150
    :cond_b
    instance-of v8, v1, Ljava/lang/reflect/Method;

    .line 151
    .line 152
    if-eqz v8, :cond_c

    .line 153
    move-object v8, v4

    .line 154
    .line 155
    check-cast v8, Ljava/lang/reflect/Method;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 159
    move-result-object v7

    .line 160
    .line 161
    check-cast v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 162
    goto :goto_5

    .line 163
    :cond_c
    move-object v7, v5

    .line 164
    .line 165
    :goto_5
    if-eqz v6, :cond_d

    .line 166
    .line 167
    if-nez v7, :cond_d

    .line 168
    return v2

    .line 169
    .line 170
    :cond_d
    if-nez v6, :cond_e

    .line 171
    .line 172
    if-eqz v7, :cond_e

    .line 173
    return v3

    .line 174
    .line 175
    :cond_e
    instance-of v6, v1, Ljava/lang/reflect/Field;

    .line 176
    .line 177
    if-eqz v6, :cond_f

    .line 178
    .line 179
    instance-of v6, v4, Ljava/lang/reflect/Method;

    .line 180
    .line 181
    if-eqz v6, :cond_f

    .line 182
    move-object v6, v1

    .line 183
    .line 184
    check-cast v6, Ljava/lang/reflect/Field;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 188
    move-result-object v6

    .line 189
    move-object v7, v4

    .line 190
    .line 191
    check-cast v7, Ljava/lang/reflect/Method;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 195
    move-result-object v7

    .line 196
    .line 197
    if-ne v6, v7, :cond_f

    .line 198
    return v2

    .line 199
    .line 200
    :cond_f
    instance-of v6, v1, Ljava/lang/reflect/Method;

    .line 201
    .line 202
    if-eqz v6, :cond_10

    .line 203
    .line 204
    instance-of v7, v4, Ljava/lang/reflect/Field;

    .line 205
    .line 206
    if-eqz v7, :cond_10

    .line 207
    move-object v7, v1

    .line 208
    .line 209
    check-cast v7, Ljava/lang/reflect/Method;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 213
    move-result-object v7

    .line 214
    move-object v8, v4

    .line 215
    .line 216
    check-cast v8, Ljava/lang/reflect/Field;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 220
    move-result-object v8

    .line 221
    .line 222
    if-ne v7, v8, :cond_10

    .line 223
    return v3

    .line 224
    .line 225
    :cond_10
    iget-object v7, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 226
    .line 227
    iget-object v8, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 228
    .line 229
    if-eq v8, v7, :cond_12

    .line 230
    .line 231
    if-eqz v8, :cond_12

    .line 232
    .line 233
    if-eqz v7, :cond_12

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 237
    move-result v9

    .line 238
    .line 239
    if-eqz v9, :cond_11

    .line 240
    return v3

    .line 241
    .line 242
    .line 243
    :cond_11
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 244
    move-result v9

    .line 245
    .line 246
    if-eqz v9, :cond_12

    .line 247
    return v2

    .line 248
    .line 249
    :cond_12
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 250
    .line 251
    if-ne v8, v9, :cond_13

    .line 252
    .line 253
    if-eq v7, v9, :cond_13

    .line 254
    return v3

    .line 255
    .line 256
    :cond_13
    const-class v9, Ljava/lang/Boolean;

    .line 257
    .line 258
    if-ne v8, v9, :cond_15

    .line 259
    .line 260
    if-ne v7, v9, :cond_15

    .line 261
    .line 262
    if-eqz v6, :cond_15

    .line 263
    .line 264
    instance-of v9, v4, Ljava/lang/reflect/Method;

    .line 265
    .line 266
    if-eqz v9, :cond_15

    .line 267
    .line 268
    .line 269
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 270
    move-result-object v9

    .line 271
    .line 272
    .line 273
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 274
    move-result-object v10

    .line 275
    .line 276
    const-string v11, "is"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 280
    move-result v12

    .line 281
    .line 282
    const-string v13, "get"

    .line 283
    .line 284
    if-eqz v12, :cond_14

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 288
    move-result v12

    .line 289
    .line 290
    if-eqz v12, :cond_14

    .line 291
    return v3

    .line 292
    .line 293
    .line 294
    :cond_14
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 295
    move-result v9

    .line 296
    .line 297
    if-eqz v9, :cond_15

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 301
    move-result v9

    .line 302
    .line 303
    if-eqz v9, :cond_15

    .line 304
    return v2

    .line 305
    .line 306
    :cond_15
    if-eqz v6, :cond_17

    .line 307
    .line 308
    instance-of v6, v4, Ljava/lang/reflect/Method;

    .line 309
    .line 310
    if-eqz v6, :cond_17

    .line 311
    .line 312
    .line 313
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 314
    move-result-object v1

    .line 315
    .line 316
    .line 317
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 318
    move-result-object v4

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    move-result v6

    .line 323
    .line 324
    if-nez v6, :cond_17

    .line 325
    .line 326
    .line 327
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    move-result-object v1

    .line 329
    .line 330
    .line 331
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    move-result-object v4

    .line 333
    .line 334
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    move-result v5

    .line 339
    .line 340
    if-eqz v5, :cond_16

    .line 341
    .line 342
    iget-object v5, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    move-result v5

    .line 347
    .line 348
    if-nez v5, :cond_16

    .line 349
    return v3

    .line 350
    .line 351
    :cond_16
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result v4

    .line 356
    .line 357
    if-eqz v4, :cond_17

    .line 358
    .line 359
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    move-result v1

    .line 364
    .line 365
    if-nez v1, :cond_17

    .line 366
    return v2

    .line 367
    .line 368
    .line 369
    :cond_17
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    .line 370
    move-result v1

    .line 371
    .line 372
    if-eqz v1, :cond_18

    .line 373
    .line 374
    .line 375
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    .line 376
    move-result v1

    .line 377
    .line 378
    if-nez v1, :cond_18

    .line 379
    return v2

    .line 380
    .line 381
    .line 382
    :cond_18
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    .line 383
    move-result v1

    .line 384
    .line 385
    if-nez v1, :cond_19

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    .line 389
    move-result v1

    .line 390
    .line 391
    if-eqz v1, :cond_19

    .line 392
    return v3

    .line 393
    .line 394
    .line 395
    :cond_19
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 396
    move-result-object v1

    .line 397
    .line 398
    const-string v4, "java."

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 402
    move-result v1

    .line 403
    .line 404
    if-eqz v1, :cond_1a

    .line 405
    .line 406
    .line 407
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 408
    move-result-object v1

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 412
    move-result v1

    .line 413
    .line 414
    if-nez v1, :cond_1a

    .line 415
    return v2

    .line 416
    .line 417
    .line 418
    :cond_1a
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 419
    move-result-object v1

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 423
    move-result v1

    .line 424
    .line 425
    if-nez v1, :cond_1b

    .line 426
    .line 427
    .line 428
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 429
    move-result-object v1

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 433
    move-result v1

    .line 434
    .line 435
    if-eqz v1, :cond_1b

    .line 436
    return v3

    .line 437
    .line 438
    :cond_1b
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 439
    .line 440
    if-eqz v1, :cond_1c

    .line 441
    .line 442
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 443
    .line 444
    if-nez v4, :cond_1c

    .line 445
    return v2

    .line 446
    .line 447
    :cond_1c
    if-nez v1, :cond_1d

    .line 448
    .line 449
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 450
    .line 451
    if-eqz p1, :cond_1d

    .line 452
    return v3

    .line 453
    :cond_1d
    :goto_6
    return v0
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "field.get error, "

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldOffset:J

    .line 11
    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->primitive:Z

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p1

    .line 37
    .line 38
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    throw v1

    .line 60
    .line 61
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 65
    throw p1

    .line 66
    .line 67
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1
.end method

.method public getInitWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemClass()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemType()Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    const-class v0, [Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/lang/Float;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 5
    :cond_1
    const-class v0, [Ljava/lang/Double;

    if-ne p2, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/lang/Double;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 8
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 9
    :cond_3
    const-class v0, [Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_5

    .line 10
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_4

    .line 11
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 12
    :cond_4
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 13
    :cond_5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public final getPath(Lcom/alibaba/fastjson2/JSONWriter$Path;)Lcom/alibaba/fastjson2/JSONWriter$Path;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 17
    .line 18
    if-ne v1, p1, :cond_1

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    .line 27
    return-object v0
.end method

.method public final getRootParentPath()Lcom/alibaba/fastjson2/JSONWriter$Path;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->rootParentPath:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    return-object v0
.end method

.method public isDateFormatISO8601()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDateFormatMillis()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFieldClassSerializable()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClassSerializable:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public unwrapped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public writeBinary(Lcom/alibaba/fastjson2/JSONWriter;[B)V
    .locals 6

    .line 1
    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 22
    .line 23
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 24
    .line 25
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 26
    and-long/2addr v0, v2

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long v0, v0, v2

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([B)V

    .line 36
    return-void

    .line 37
    .line 38
    :cond_2
    const-string v0, "base64"

    .line 39
    .line 40
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_8

    .line 47
    .line 48
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 59
    .line 60
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 61
    and-long/2addr v0, v4

    .line 62
    .line 63
    cmp-long v0, v0, v2

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    goto :goto_5

    .line 67
    .line 68
    :cond_3
    const-string v0, "hex"

    .line 69
    .line 70
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeHex([B)V

    .line 80
    return-void

    .line 81
    .line 82
    :cond_4
    const-string v0, "gzip,base64"

    .line 83
    .line 84
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    const-string v0, "gzip"

    .line 93
    .line 94
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBinary([B)V

    .line 105
    return-void

    .line 106
    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 107
    .line 108
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    array-length v2, p2

    .line 113
    .line 114
    const/16 v3, 0x200

    .line 115
    .line 116
    if-ge v2, v3, :cond_7

    .line 117
    .line 118
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 119
    array-length v3, p2

    .line 120
    .line 121
    .line 122
    invoke-direct {v2, v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 123
    :goto_1
    move-object v0, v2

    .line 124
    goto :goto_2

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    goto :goto_4

    .line 127
    :catch_0
    move-exception p1

    .line 128
    goto :goto_3

    .line 129
    .line 130
    :cond_7
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 134
    goto :goto_1

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 144
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBase64([B)V

    .line 151
    return-void

    .line 152
    .line 153
    :goto_3
    :try_start_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 154
    .line 155
    const-string v1, "write gzipBytes error"

    .line 156
    .line 157
    .line 158
    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .line 161
    .line 162
    :goto_4
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 163
    throw p1

    .line 164
    .line 165
    .line 166
    :cond_8
    :goto_5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBase64([B)V

    .line 167
    return-void
.end method

.method public writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeBool(Lcom/alibaba/fastjson2/JSONWriter;[Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool([Z)V

    return-void
.end method

.method public writeDate(Lcom/alibaba/fastjson2/JSONWriter;J)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V

    return-void
.end method

.method public writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V
    .locals 26

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    .line 5
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeMillis(J)V

    return-void

    .line 7
    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->isDateFormatMillis()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v4

    .line 10
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 11
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v1

    .line 12
    iget-wide v2, v1, Lcom/alibaba/fastjson2/time/Instant;->epochSecond:J

    .line 13
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    .line 14
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v6

    .line 15
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const-wide/32 v2, 0xafa6c

    add-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v8, v2, v4

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v8, :cond_2

    const-wide/32 v15, 0xafa6d

    add-long/2addr v6, v15

    .line 16
    div-long/2addr v6, v11

    sub-long/2addr v6, v9

    mul-long v15, v6, v13

    neg-long v6, v6

    mul-long/2addr v6, v11

    add-long/2addr v2, v6

    goto :goto_0

    :cond_2
    move-wide v15, v4

    :goto_0
    mul-long v6, v2, v13

    const-wide/16 v17, 0x24f

    add-long v6, v6, v17

    .line 17
    div-long/2addr v6, v11

    const-wide/16 v11, 0x16d

    mul-long v17, v6, v11

    const-wide/16 v19, 0x4

    .line 18
    div-long v21, v6, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v6, v21

    sub-long v17, v17, v23

    div-long v23, v6, v13

    add-long v17, v17, v23

    sub-long v17, v2, v17

    cmp-long v4, v17, v4

    if-gez v4, :cond_3

    sub-long/2addr v6, v9

    mul-long/2addr v11, v6

    .line 19
    div-long v4, v6, v19

    add-long/2addr v11, v4

    div-long v4, v6, v21

    sub-long/2addr v11, v4

    div-long v4, v6, v13

    add-long/2addr v11, v4

    sub-long v17, v2, v11

    :cond_3
    move-wide/from16 v2, v17

    add-long/2addr v6, v15

    long-to-int v2, v2

    mul-int/lit8 v3, v2, 0x5

    add-int/lit8 v3, v3, 0x2

    .line 20
    div-int/lit16 v3, v3, 0x99

    add-int/lit8 v4, v3, 0x2

    .line 21
    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v3, 0x132

    add-int/lit8 v5, v5, 0x5

    .line 22
    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    .line 23
    div-int/lit8 v3, v3, 0xa

    int-to-long v8, v3

    add-long/2addr v6, v8

    .line 24
    invoke-static {v6, v7}, Lcom/alibaba/fastjson2/time/LocalDateTime;->checkYear(J)I

    move-result v3

    int-to-long v5, v1

    .line 25
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/time/LocalDateTime;->checkSecondOfDay(J)V

    const-wide/16 v7, 0xe10

    .line 26
    div-long v7, v5, v7

    long-to-int v1, v7

    mul-int/lit16 v7, v1, 0xe10

    int-to-long v7, v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    .line 27
    div-long v7, v5, v7

    long-to-int v7, v7

    mul-int/lit8 v8, v7, 0x3c

    int-to-long v8, v8

    sub-long/2addr v5, v8

    long-to-int v6, v5

    if-eqz p2, :cond_4

    .line 28
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :cond_4
    move v5, v4

    move v4, v1

    move v1, v3

    move v3, v2

    move v2, v5

    move v5, v7

    .line 29
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    return-void

    .line 30
    :cond_5
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v1

    .line 31
    invoke-static {v1, v4}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v1

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->isDateFormatISO8601()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 33
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->format(Lcom/alibaba/fastjson2/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_7

    .line 34
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 35
    :cond_7
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_8
    :goto_1
    iget-object v2, v1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object v3, v2, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v4, v3, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 37
    iget-short v5, v3, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 38
    iget-short v3, v3, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 39
    iget-object v2, v2, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    move v6, v4

    iget-byte v4, v2, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    move v7, v5

    .line 40
    iget-byte v5, v2, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    move v8, v6

    .line 41
    iget-byte v6, v2, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 42
    iget v2, v2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    const v9, 0xf4240

    div-int/2addr v2, v9

    .line 43
    iget v1, v1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->offsetSeconds:I

    const/4 v9, 0x1

    move/from16 v25, v8

    move v8, v1

    move/from16 v1, v25

    move/from16 v25, v7

    move v7, v2

    move/from16 v2, v25

    .line 44
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    :cond_9
    :goto_2
    if-eqz p2, :cond_a

    .line 45
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 46
    :cond_a
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/Date;)V
    .locals 2

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V

    return-void
.end method

.method public writeDouble(Lcom/alibaba/fastjson2/JSONWriter;D)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, p3, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void
.end method

.method public writeDouble(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Double;)V
    .locals 6

    if-nez p2, :cond_1

    .line 8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    .line 9
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void
.end method

.method public writeDouble(Lcom/alibaba/fastjson2/JSONWriter;[D)V
    .locals 1

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble([D)V

    return-void
.end method

.method public writeEnum(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeEnum(Ljava/lang/Enum;)V

    .line 7
    return-void
.end method

.method public writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public final writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldNameSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameJSONB:[B

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->useSingleQuote:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 36
    .line 37
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 38
    and-long/2addr v0, v2

    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    .line 54
    return-void

    .line 55
    .line 56
    :cond_2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    .line 64
    return-void

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 73
    return-void
.end method

.method public writeFloat(Lcom/alibaba/fastjson2/JSONWriter;F)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(FLjava/text/DecimalFormat;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    return-void
.end method

.method public writeFloat(Lcom/alibaba/fastjson2/JSONWriter;[F)V
    .locals 1

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat([F)V

    return-void
.end method

.method public final writeFloatNull(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 10

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 9
    .line 10
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 11
    .line 12
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v5, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    or-long/2addr v2, v5

    .line 16
    .line 17
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 18
    .line 19
    iget-wide v6, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 20
    or-long/2addr v2, v6

    .line 21
    and-long/2addr v2, v0

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    cmp-long v2, v2, v6

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    return v3

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 33
    .line 34
    iget-wide v8, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 35
    and-long/2addr v8, v0

    .line 36
    .line 37
    cmp-long v2, v8, v6

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-wide v4, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 47
    and-long/2addr v0, v4

    .line 48
    .line 49
    cmp-long v0, v0, v6

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 59
    :goto_0
    const/4 p1, 0x1

    .line 60
    return p1
.end method

.method public writeInt16(Lcom/alibaba/fastjson2/JSONWriter;[S)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16([S)V

    .line 16
    return-void
.end method

.method public writeInt32(Lcom/alibaba/fastjson2/JSONWriter;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 7
    return-void
.end method

.method public writeInt64(Lcom/alibaba/fastjson2/JSONWriter;J)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 6
    .line 7
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 8
    .line 9
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 10
    and-long/2addr v0, v2

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 28
    return-void
.end method

.method public final writeIntNull(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 10

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 6
    move-result-wide v2

    .line 7
    or-long/2addr v0, v2

    .line 8
    .line 9
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 10
    .line 11
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 12
    .line 13
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 14
    .line 15
    iget-wide v5, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 16
    or-long/2addr v2, v5

    .line 17
    .line 18
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 19
    .line 20
    iget-wide v6, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 21
    or-long/2addr v2, v6

    .line 22
    and-long/2addr v2, v0

    .line 23
    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    cmp-long v2, v2, v6

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    return v3

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 34
    .line 35
    iget-wide v8, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 36
    .line 37
    iget-wide v4, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 38
    or-long/2addr v4, v8

    .line 39
    and-long/2addr v0, v4

    .line 40
    .line 41
    cmp-long v0, v0, v6

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 51
    :goto_0
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method public writeList(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public writeListStr(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public writeListValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public writeListValueJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public writeString(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    if-nez p2, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->trim:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->symbol:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->raw:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Lcom/alibaba/fastjson2/JSONWriter;[C)V
    .locals 2

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    if-nez p2, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 14
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([CII)V

    return-void
.end method

.method public abstract writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation
.end method
