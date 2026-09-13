.class final Lcom/alibaba/fastjson2/util/TypeUtils$Mapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapping"
.end annotation


# static fields
.field static final NAME_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 3
    .line 4
    const/16 v1, 0xc0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Lcom/alibaba/fastjson2/util/TypeUtils$Mapping;->NAME_MAPPINGS:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    const/16 v2, 0x100

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 17
    .line 18
    sput-object v1, Lcom/alibaba/fastjson2/util/TypeUtils$Mapping;->TYPE_MAPPINGS:Ljava/util/Map;

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    const-string v3, "B"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    const-string v3, "S"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    const-string v3, "I"

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    const-string v3, "J"

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    const-string v3, "F"

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    const-string v3, "D"

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    const-string v3, "C"

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    const-string v3, "Z"

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    const-class v2, [Ljava/lang/Object;

    .line 77
    .line 78
    const-string v3, "[O"

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    const-class v4, [[Ljava/lang/Object;

    .line 84
    .line 85
    const-string v5, "[[O"

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    const-class v4, [B

    .line 91
    .line 92
    const-string v5, "[B"

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    const-class v4, [[B

    .line 98
    .line 99
    const-string v5, "[[B"

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    const-class v4, [S

    .line 105
    .line 106
    const-string v5, "[S"

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    const-class v4, [[S

    .line 112
    .line 113
    const-string v5, "[[S"

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    const-class v4, [I

    .line 119
    .line 120
    const-string v5, "[I"

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    const-class v4, [[I

    .line 126
    .line 127
    const-string v5, "[[I"

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    const-class v4, [J

    .line 133
    .line 134
    const-string v5, "[J"

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    const-class v4, [[J

    .line 140
    .line 141
    const-string v5, "[[J"

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    const-class v4, [F

    .line 147
    .line 148
    const-string v5, "[F"

    .line 149
    .line 150
    .line 151
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    const-class v4, [[F

    .line 154
    .line 155
    const-string v5, "[[F"

    .line 156
    .line 157
    .line 158
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    const-class v4, [D

    .line 161
    .line 162
    const-string v5, "[D"

    .line 163
    .line 164
    .line 165
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    const-class v4, [[D

    .line 168
    .line 169
    const-string v5, "[[D"

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    const-class v4, [C

    .line 175
    .line 176
    const-string v5, "[C"

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    const-class v4, [[C

    .line 182
    .line 183
    const-string v5, "[[C"

    .line 184
    .line 185
    .line 186
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    const-class v4, [Z

    .line 189
    .line 190
    const-string v5, "[Z"

    .line 191
    .line 192
    .line 193
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    const-class v4, [[Z

    .line 196
    .line 197
    const-string v5, "[[Z"

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    const-class v4, [Ljava/lang/Byte;

    .line 203
    .line 204
    const-string v5, "[Byte"

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    const-class v4, [[Ljava/lang/Byte;

    .line 210
    .line 211
    const-string v5, "[[Byte"

    .line 212
    .line 213
    .line 214
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    const-class v4, [Ljava/lang/Short;

    .line 217
    .line 218
    const-string v5, "[Short"

    .line 219
    .line 220
    .line 221
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    const-class v4, [[Ljava/lang/Short;

    .line 224
    .line 225
    const-string v5, "[[Short"

    .line 226
    .line 227
    .line 228
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    const-class v4, [Ljava/lang/Integer;

    .line 231
    .line 232
    const-string v5, "[Integer"

    .line 233
    .line 234
    .line 235
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    const-class v4, [[Ljava/lang/Integer;

    .line 238
    .line 239
    const-string v5, "[[Integer"

    .line 240
    .line 241
    .line 242
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    const-class v4, [Ljava/lang/Long;

    .line 245
    .line 246
    const-string v5, "[Long"

    .line 247
    .line 248
    .line 249
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    const-class v4, [[Ljava/lang/Long;

    .line 252
    .line 253
    const-string v5, "[[Long"

    .line 254
    .line 255
    .line 256
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    const-class v4, [Ljava/lang/Float;

    .line 259
    .line 260
    const-string v5, "[Float"

    .line 261
    .line 262
    .line 263
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    const-class v4, [[Ljava/lang/Float;

    .line 266
    .line 267
    const-string v5, "[[Float"

    .line 268
    .line 269
    .line 270
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    const-class v4, [Ljava/lang/Double;

    .line 273
    .line 274
    const-string v5, "[Double"

    .line 275
    .line 276
    .line 277
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    const-class v4, [[Ljava/lang/Double;

    .line 280
    .line 281
    const-string v5, "[[Double"

    .line 282
    .line 283
    .line 284
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    const-class v4, [Ljava/lang/Character;

    .line 287
    .line 288
    const-string v5, "[Character"

    .line 289
    .line 290
    .line 291
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    const-class v4, [[Ljava/lang/Character;

    .line 294
    .line 295
    const-string v5, "[[Character"

    .line 296
    .line 297
    .line 298
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    const-class v4, [Ljava/lang/Boolean;

    .line 301
    .line 302
    const-string v5, "[Boolean"

    .line 303
    .line 304
    .line 305
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    const-class v4, [[Ljava/lang/Boolean;

    .line 308
    .line 309
    const-string v5, "[[Boolean"

    .line 310
    .line 311
    .line 312
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    const-class v4, [Ljava/lang/String;

    .line 315
    .line 316
    const-string v5, "[String"

    .line 317
    .line 318
    .line 319
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    const-class v4, [[Ljava/lang/String;

    .line 322
    .line 323
    const-string v5, "[[String"

    .line 324
    .line 325
    .line 326
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    const-class v4, [Ljava/math/BigDecimal;

    .line 329
    .line 330
    const-string v5, "[BigDecimal"

    .line 331
    .line 332
    .line 333
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    const-class v4, [[Ljava/math/BigDecimal;

    .line 336
    .line 337
    const-string v5, "[[BigDecimal"

    .line 338
    .line 339
    .line 340
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    const-class v4, [Ljava/math/BigInteger;

    .line 343
    .line 344
    const-string v5, "[BigInteger"

    .line 345
    .line 346
    .line 347
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    const-class v4, [[Ljava/math/BigInteger;

    .line 350
    .line 351
    const-string v5, "[[BigInteger"

    .line 352
    .line 353
    .line 354
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    const-class v4, [Ljava/util/UUID;

    .line 357
    .line 358
    const-string v5, "[UUID"

    .line 359
    .line 360
    .line 361
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    const-class v4, [[Ljava/util/UUID;

    .line 364
    .line 365
    const-string v5, "[[UUID"

    .line 366
    .line 367
    .line 368
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    const-string v4, "Object"

    .line 371
    .line 372
    const-class v5, Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    const-string v4, "M"

    .line 378
    .line 379
    const-class v6, Ljava/util/HashMap;

    .line 380
    .line 381
    .line 382
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    const-string v4, "HashMap"

    .line 385
    .line 386
    .line 387
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    const-string v4, "java.util.HashMap"

    .line 390
    .line 391
    .line 392
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    const-string v4, "LM"

    .line 395
    .line 396
    const-class v7, Ljava/util/LinkedHashMap;

    .line 397
    .line 398
    .line 399
    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    const-string v4, "LinkedHashMap"

    .line 402
    .line 403
    .line 404
    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    const-string v4, "java.util.LinkedHashMap"

    .line 407
    .line 408
    .line 409
    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    const-string v4, "TM"

    .line 412
    .line 413
    const-class v8, Ljava/util/TreeMap;

    .line 414
    .line 415
    .line 416
    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    const-string v4, "TreeMap"

    .line 419
    .line 420
    .line 421
    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    const-string v4, "A"

    .line 424
    .line 425
    const-class v9, Ljava/util/ArrayList;

    .line 426
    .line 427
    .line 428
    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    const-string v4, "ArrayList"

    .line 431
    .line 432
    .line 433
    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    const-string v4, "java.util.ArrayList"

    .line 436
    .line 437
    .line 438
    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    const-class v4, Ljava/util/LinkedList;

    .line 441
    .line 442
    const-string v10, "LA"

    .line 443
    .line 444
    .line 445
    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    const-string v10, "LinkedList"

    .line 451
    .line 452
    .line 453
    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    const-string v10, "java.util.LinkedList"

    .line 456
    .line 457
    .line 458
    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    const-string v10, "java.util.concurrent.ConcurrentLinkedQueue"

    .line 461
    .line 462
    const-class v11, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 463
    .line 464
    .line 465
    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    const-string v1, "HashSet"

    .line 468
    .line 469
    const-class v10, Ljava/util/HashSet;

    .line 470
    .line 471
    .line 472
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    const-string v1, "TreeSet"

    .line 475
    .line 476
    const-class v12, Ljava/util/TreeSet;

    .line 477
    .line 478
    .line 479
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    const-string v1, "LinkedHashSet"

    .line 482
    .line 483
    const-class v13, Ljava/util/LinkedHashSet;

    .line 484
    .line 485
    .line 486
    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    const-string v1, "ConcurrentHashMap"

    .line 489
    .line 490
    const-class v14, Ljava/util/concurrent/ConcurrentHashMap;

    .line 491
    .line 492
    .line 493
    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    const-string v1, "ConcurrentLinkedQueue"

    .line 496
    .line 497
    .line 498
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    const-string v1, "JSONObject"

    .line 501
    .line 502
    const-class v11, Lcom/alibaba/fastjson2/JSONObject;

    .line 503
    .line 504
    .line 505
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    const-string v1, "JSONArray"

    .line 508
    .line 509
    const-class v15, Lcom/alibaba/fastjson2/JSONArray;

    .line 510
    .line 511
    .line 512
    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    const-string v1, "Currency"

    .line 515
    .line 516
    move-object/from16 v16, v4

    .line 517
    .line 518
    const-class v4, Ljava/util/Currency;

    .line 519
    .line 520
    .line 521
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    const-string v1, "TimeUnit"

    .line 524
    .line 525
    move-object/from16 v17, v4

    .line 526
    .line 527
    const-class v4, Ljava/util/concurrent/TimeUnit;

    .line 528
    .line 529
    .line 530
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    move-result-object v0

    .line 537
    .line 538
    const/16 v1, 0x44

    .line 539
    .line 540
    move-object/from16 v18, v0

    .line 541
    .line 542
    new-array v0, v1, [Ljava/lang/Class;

    .line 543
    .line 544
    const/16 v19, 0x0

    .line 545
    .line 546
    aput-object v5, v0, v19

    .line 547
    .line 548
    const-class v5, Ljava/lang/Cloneable;

    .line 549
    .line 550
    const/16 v20, 0x1

    .line 551
    .line 552
    aput-object v5, v0, v20

    .line 553
    .line 554
    const-class v5, Ljava/lang/AutoCloseable;

    .line 555
    .line 556
    const/16 v20, 0x2

    .line 557
    .line 558
    aput-object v5, v0, v20

    .line 559
    .line 560
    const-class v5, Ljava/lang/Exception;

    .line 561
    .line 562
    const/16 v20, 0x3

    .line 563
    .line 564
    aput-object v5, v0, v20

    .line 565
    .line 566
    const-class v5, Ljava/lang/RuntimeException;

    .line 567
    .line 568
    const/16 v20, 0x4

    .line 569
    .line 570
    aput-object v5, v0, v20

    .line 571
    .line 572
    const-class v5, Ljava/lang/IllegalAccessError;

    .line 573
    .line 574
    const/16 v20, 0x5

    .line 575
    .line 576
    aput-object v5, v0, v20

    .line 577
    .line 578
    const-class v5, Ljava/lang/IllegalAccessException;

    .line 579
    .line 580
    const/16 v20, 0x6

    .line 581
    .line 582
    aput-object v5, v0, v20

    .line 583
    .line 584
    const-class v5, Ljava/lang/IllegalArgumentException;

    .line 585
    .line 586
    const/16 v20, 0x7

    .line 587
    .line 588
    aput-object v5, v0, v20

    .line 589
    .line 590
    const-class v5, Ljava/lang/IllegalMonitorStateException;

    .line 591
    .line 592
    const/16 v20, 0x8

    .line 593
    .line 594
    aput-object v5, v0, v20

    .line 595
    .line 596
    const-class v5, Ljava/lang/IllegalStateException;

    .line 597
    .line 598
    const/16 v20, 0x9

    .line 599
    .line 600
    aput-object v5, v0, v20

    .line 601
    .line 602
    const-class v5, Ljava/lang/IllegalThreadStateException;

    .line 603
    .line 604
    const/16 v20, 0xa

    .line 605
    .line 606
    aput-object v5, v0, v20

    .line 607
    .line 608
    const-class v5, Ljava/lang/IndexOutOfBoundsException;

    .line 609
    .line 610
    const/16 v20, 0xb

    .line 611
    .line 612
    aput-object v5, v0, v20

    .line 613
    .line 614
    const-class v5, Ljava/lang/InstantiationError;

    .line 615
    .line 616
    const/16 v20, 0xc

    .line 617
    .line 618
    aput-object v5, v0, v20

    .line 619
    .line 620
    const-class v5, Ljava/lang/InstantiationException;

    .line 621
    .line 622
    const/16 v20, 0xd

    .line 623
    .line 624
    aput-object v5, v0, v20

    .line 625
    .line 626
    const-class v5, Ljava/lang/InternalError;

    .line 627
    .line 628
    const/16 v20, 0xe

    .line 629
    .line 630
    aput-object v5, v0, v20

    .line 631
    .line 632
    const-class v5, Ljava/lang/InterruptedException;

    .line 633
    .line 634
    const/16 v20, 0xf

    .line 635
    .line 636
    aput-object v5, v0, v20

    .line 637
    .line 638
    const-class v5, Ljava/lang/LinkageError;

    .line 639
    .line 640
    const/16 v20, 0x10

    .line 641
    .line 642
    aput-object v5, v0, v20

    .line 643
    .line 644
    const-class v5, Ljava/lang/NegativeArraySizeException;

    .line 645
    .line 646
    const/16 v20, 0x11

    .line 647
    .line 648
    aput-object v5, v0, v20

    .line 649
    .line 650
    const-class v5, Ljava/lang/NoClassDefFoundError;

    .line 651
    .line 652
    const/16 v20, 0x12

    .line 653
    .line 654
    aput-object v5, v0, v20

    .line 655
    .line 656
    const-class v5, Ljava/lang/NoSuchFieldError;

    .line 657
    .line 658
    const/16 v20, 0x13

    .line 659
    .line 660
    aput-object v5, v0, v20

    .line 661
    .line 662
    const-class v5, Ljava/lang/NoSuchFieldException;

    .line 663
    .line 664
    const/16 v20, 0x14

    .line 665
    .line 666
    aput-object v5, v0, v20

    .line 667
    .line 668
    const-class v5, Ljava/lang/NoSuchMethodError;

    .line 669
    .line 670
    const/16 v20, 0x15

    .line 671
    .line 672
    aput-object v5, v0, v20

    .line 673
    .line 674
    const-class v5, Ljava/lang/NoSuchMethodException;

    .line 675
    .line 676
    const/16 v20, 0x16

    .line 677
    .line 678
    aput-object v5, v0, v20

    .line 679
    .line 680
    const-class v5, Ljava/lang/NullPointerException;

    .line 681
    .line 682
    const/16 v20, 0x17

    .line 683
    .line 684
    aput-object v5, v0, v20

    .line 685
    .line 686
    const-class v5, Ljava/lang/NumberFormatException;

    .line 687
    .line 688
    const/16 v20, 0x18

    .line 689
    .line 690
    aput-object v5, v0, v20

    .line 691
    .line 692
    const-class v5, Ljava/lang/OutOfMemoryError;

    .line 693
    .line 694
    const/16 v20, 0x19

    .line 695
    .line 696
    aput-object v5, v0, v20

    .line 697
    .line 698
    const-class v5, Ljava/lang/SecurityException;

    .line 699
    .line 700
    const/16 v20, 0x1a

    .line 701
    .line 702
    aput-object v5, v0, v20

    .line 703
    .line 704
    const-class v5, Ljava/lang/StackOverflowError;

    .line 705
    .line 706
    const/16 v20, 0x1b

    .line 707
    .line 708
    aput-object v5, v0, v20

    .line 709
    .line 710
    const-class v5, Ljava/lang/StringIndexOutOfBoundsException;

    .line 711
    .line 712
    const/16 v20, 0x1c

    .line 713
    .line 714
    aput-object v5, v0, v20

    .line 715
    .line 716
    const-class v5, Ljava/lang/TypeNotPresentException;

    .line 717
    .line 718
    const/16 v20, 0x1d

    .line 719
    .line 720
    aput-object v5, v0, v20

    .line 721
    .line 722
    const-class v5, Ljava/lang/VerifyError;

    .line 723
    .line 724
    const/16 v20, 0x1e

    .line 725
    .line 726
    aput-object v5, v0, v20

    .line 727
    .line 728
    const/16 v20, 0x1f

    .line 729
    .line 730
    const-class v5, Ljava/lang/StackTraceElement;

    .line 731
    .line 732
    aput-object v5, v0, v20

    .line 733
    .line 734
    const-class v20, Ljava/util/Hashtable;

    .line 735
    .line 736
    const/16 v21, 0x20

    .line 737
    .line 738
    aput-object v20, v0, v21

    .line 739
    .line 740
    const/16 v20, 0x21

    .line 741
    .line 742
    aput-object v8, v0, v20

    .line 743
    .line 744
    const-class v8, Ljava/util/IdentityHashMap;

    .line 745
    .line 746
    const/16 v20, 0x22

    .line 747
    .line 748
    aput-object v8, v0, v20

    .line 749
    .line 750
    const-class v8, Ljava/util/WeakHashMap;

    .line 751
    .line 752
    const/16 v20, 0x23

    .line 753
    .line 754
    aput-object v8, v0, v20

    .line 755
    .line 756
    const/16 v8, 0x24

    .line 757
    .line 758
    aput-object v10, v0, v8

    .line 759
    .line 760
    const/16 v8, 0x25

    .line 761
    .line 762
    aput-object v13, v0, v8

    .line 763
    .line 764
    const/16 v8, 0x26

    .line 765
    .line 766
    aput-object v12, v0, v8

    .line 767
    .line 768
    const/16 v8, 0x27

    .line 769
    .line 770
    aput-object v16, v0, v8

    .line 771
    .line 772
    const/16 v8, 0x28

    .line 773
    .line 774
    aput-object v4, v0, v8

    .line 775
    .line 776
    const/16 v4, 0x29

    .line 777
    .line 778
    aput-object v14, v0, v4

    .line 779
    .line 780
    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 781
    .line 782
    const/16 v8, 0x2a

    .line 783
    .line 784
    aput-object v4, v0, v8

    .line 785
    .line 786
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 787
    .line 788
    const/16 v8, 0x2b

    .line 789
    .line 790
    aput-object v4, v0, v8

    .line 791
    .line 792
    const/16 v4, 0x2c

    .line 793
    .line 794
    aput-object v18, v0, v4

    .line 795
    .line 796
    const-class v4, Ljava/lang/Boolean;

    .line 797
    .line 798
    const/16 v8, 0x2d

    .line 799
    .line 800
    aput-object v4, v0, v8

    .line 801
    .line 802
    const-class v4, Ljava/lang/Character;

    .line 803
    .line 804
    const/16 v8, 0x2e

    .line 805
    .line 806
    aput-object v4, v0, v8

    .line 807
    .line 808
    const-class v4, Ljava/lang/Byte;

    .line 809
    .line 810
    const/16 v8, 0x2f

    .line 811
    .line 812
    aput-object v4, v0, v8

    .line 813
    .line 814
    const-class v4, Ljava/lang/Short;

    .line 815
    .line 816
    const/16 v8, 0x30

    .line 817
    .line 818
    aput-object v4, v0, v8

    .line 819
    .line 820
    const-class v4, Ljava/lang/Integer;

    .line 821
    .line 822
    const/16 v8, 0x31

    .line 823
    .line 824
    aput-object v4, v0, v8

    .line 825
    .line 826
    const-class v4, Ljava/lang/Long;

    .line 827
    .line 828
    const/16 v8, 0x32

    .line 829
    .line 830
    aput-object v4, v0, v8

    .line 831
    .line 832
    const-class v4, Ljava/lang/Float;

    .line 833
    .line 834
    const/16 v8, 0x33

    .line 835
    .line 836
    aput-object v4, v0, v8

    .line 837
    .line 838
    const-class v4, Ljava/lang/Double;

    .line 839
    .line 840
    const/16 v8, 0x34

    .line 841
    .line 842
    aput-object v4, v0, v8

    .line 843
    .line 844
    const-class v4, Ljava/lang/Number;

    .line 845
    .line 846
    const/16 v8, 0x35

    .line 847
    .line 848
    aput-object v4, v0, v8

    .line 849
    .line 850
    const-class v4, Ljava/lang/String;

    .line 851
    .line 852
    const/16 v8, 0x36

    .line 853
    .line 854
    aput-object v4, v0, v8

    .line 855
    .line 856
    const-class v4, Ljava/math/BigDecimal;

    .line 857
    .line 858
    const/16 v8, 0x37

    .line 859
    .line 860
    aput-object v4, v0, v8

    .line 861
    .line 862
    const-class v4, Ljava/math/BigInteger;

    .line 863
    .line 864
    const/16 v8, 0x38

    .line 865
    .line 866
    aput-object v4, v0, v8

    .line 867
    .line 868
    const-class v4, Ljava/util/BitSet;

    .line 869
    .line 870
    const/16 v8, 0x39

    .line 871
    .line 872
    aput-object v4, v0, v8

    .line 873
    .line 874
    const-class v4, Ljava/util/Calendar;

    .line 875
    .line 876
    const/16 v8, 0x3a

    .line 877
    .line 878
    aput-object v4, v0, v8

    .line 879
    .line 880
    const-class v4, Ljava/util/Date;

    .line 881
    .line 882
    const/16 v8, 0x3b

    .line 883
    .line 884
    aput-object v4, v0, v8

    .line 885
    .line 886
    const-class v4, Ljava/util/Locale;

    .line 887
    .line 888
    const/16 v8, 0x3c

    .line 889
    .line 890
    aput-object v4, v0, v8

    .line 891
    .line 892
    const-class v4, Ljava/util/UUID;

    .line 893
    .line 894
    const/16 v8, 0x3d

    .line 895
    .line 896
    aput-object v4, v0, v8

    .line 897
    .line 898
    const/16 v4, 0x3e

    .line 899
    .line 900
    aput-object v17, v0, v4

    .line 901
    .line 902
    const-class v4, Ljava/text/SimpleDateFormat;

    .line 903
    .line 904
    const/16 v8, 0x3f

    .line 905
    .line 906
    aput-object v4, v0, v8

    .line 907
    .line 908
    const/16 v4, 0x40

    .line 909
    .line 910
    aput-object v11, v0, v4

    .line 911
    .line 912
    const/16 v4, 0x41

    .line 913
    .line 914
    aput-object v15, v0, v4

    .line 915
    .line 916
    const-class v4, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 917
    .line 918
    const/16 v8, 0x42

    .line 919
    .line 920
    aput-object v4, v0, v8

    .line 921
    .line 922
    const-class v4, Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 923
    .line 924
    const/16 v8, 0x43

    .line 925
    .line 926
    aput-object v4, v0, v8

    .line 927
    .line 928
    move/from16 v4, v19

    .line 929
    .line 930
    :goto_0
    if-ge v4, v1, :cond_0

    .line 931
    .line 932
    aget-object v8, v0, v4

    .line 933
    .line 934
    .line 935
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 936
    move-result-object v11

    .line 937
    .line 938
    sget-object v12, Lcom/alibaba/fastjson2/util/TypeUtils$Mapping;->TYPE_MAPPINGS:Ljava/util/Map;

    .line 939
    .line 940
    .line 941
    invoke-interface {v12, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 945
    move-result-object v14

    .line 946
    .line 947
    .line 948
    invoke-interface {v12, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    sget-object v12, Lcom/alibaba/fastjson2/util/TypeUtils$Mapping;->NAME_MAPPINGS:Ljava/util/Map;

    .line 951
    .line 952
    .line 953
    invoke-interface {v12, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    add-int/lit8 v4, v4, 0x1

    .line 956
    goto :goto_0

    .line 957
    .line 958
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils$Mapping;->TYPE_MAPPINGS:Ljava/util/Map;

    .line 959
    .line 960
    const-string v1, "JO10"

    .line 961
    .line 962
    const-class v4, Lcom/alibaba/fastjson2/util/JSONObject1O;

    .line 963
    .line 964
    .line 965
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    .line 970
    const-string v1, "[Ljava.lang.Object;"

    .line 971
    .line 972
    .line 973
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    .line 975
    const-string v1, "[java.lang.Object"

    .line 976
    .line 977
    .line 978
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    const-string v1, "[Object"

    .line 981
    .line 982
    .line 983
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    const-string v1, "StackTraceElement"

    .line 986
    .line 987
    .line 988
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    .line 990
    const-string v1, "[StackTraceElement"

    .line 991
    .line 992
    const-class v2, [Ljava/lang/StackTraceElement;

    .line 993
    .line 994
    .line 995
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .line 997
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 998
    .line 999
    .line 1000
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 1001
    move-result-object v1

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    move-result-object v1

    .line 1006
    .line 1007
    const-string v2, "java.util.Collections$UnmodifiableMap"

    .line 1008
    .line 1009
    .line 1010
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1013
    .line 1014
    .line 1015
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 1016
    move-result-object v1

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    move-result-object v1

    .line 1021
    .line 1022
    const-string v2, "java.util.Collections$UnmodifiableCollection"

    .line 1023
    .line 1024
    .line 1025
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    .line 1029
    move-result-object v1

    .line 1030
    .line 1031
    if-eqz v1, :cond_1

    .line 1032
    .line 1033
    const-string v2, "JO1"

    .line 1034
    .line 1035
    .line 1036
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1040
    move-result-object v2

    .line 1041
    .line 1042
    .line 1043
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONArray1x()Ljava/lang/Class;

    .line 1047
    move-result-object v1

    .line 1048
    .line 1049
    if-eqz v1, :cond_2

    .line 1050
    .line 1051
    const-string v2, "JA1"

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1058
    move-result-object v2

    .line 1059
    .line 1060
    .line 1061
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils$Mapping;->NAME_MAPPINGS:Ljava/util/Map;

    .line 1064
    .line 1065
    new-instance v2, Ljava/util/HashMap;

    .line 1066
    .line 1067
    .line 1068
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1072
    move-result-object v2

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    move-result-object v2

    .line 1077
    .line 1078
    const-string v3, "Set"

    .line 1079
    .line 1080
    .line 1081
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    .line 1083
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1084
    .line 1085
    .line 1086
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1090
    move-result-object v2

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    move-result-object v2

    .line 1095
    .line 1096
    .line 1097
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    .line 1099
    new-instance v2, Ljava/util/TreeMap;

    .line 1100
    .line 1101
    .line 1102
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 1106
    move-result-object v2

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    move-result-object v2

    .line 1111
    .line 1112
    .line 1113
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .line 1115
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1116
    .line 1117
    .line 1118
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1119
    .line 1120
    .line 1121
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1122
    move-result-object v2

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1126
    move-result-object v2

    .line 1127
    .line 1128
    .line 1129
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 1132
    .line 1133
    .line 1134
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1138
    move-result-object v2

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1142
    move-result-object v2

    .line 1143
    .line 1144
    .line 1145
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    .line 1150
    new-instance v2, Ljava/util/HashMap;

    .line 1151
    .line 1152
    .line 1153
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1157
    move-result-object v2

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1161
    move-result-object v2

    .line 1162
    .line 1163
    const-string v3, "List"

    .line 1164
    .line 1165
    .line 1166
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .line 1168
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1169
    .line 1170
    .line 1171
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1175
    move-result-object v2

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1179
    move-result-object v2

    .line 1180
    .line 1181
    .line 1182
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .line 1184
    new-instance v2, Ljava/util/TreeMap;

    .line 1185
    .line 1186
    .line 1187
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 1191
    move-result-object v2

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1195
    move-result-object v2

    .line 1196
    .line 1197
    .line 1198
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    .line 1200
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1201
    .line 1202
    .line 1203
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 1207
    move-result-object v2

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    move-result-object v2

    .line 1212
    .line 1213
    .line 1214
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    .line 1216
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 1217
    .line 1218
    .line 1219
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    .line 1223
    move-result-object v2

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1227
    move-result-object v2

    .line 1228
    .line 1229
    .line 1230
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .line 1235
    const-string v2, "java.util.ImmutableCollections$Map1"

    .line 1236
    .line 1237
    .line 1238
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    .line 1240
    const-string v2, "java.util.ImmutableCollections$MapN"

    .line 1241
    .line 1242
    .line 1243
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    .line 1245
    const-string v2, "java.util.ImmutableCollections$Set12"

    .line 1246
    .line 1247
    .line 1248
    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .line 1250
    const-string v2, "java.util.ImmutableCollections$SetN"

    .line 1251
    .line 1252
    .line 1253
    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    .line 1255
    const-string v2, "java.util.ImmutableCollections$List12"

    .line 1256
    .line 1257
    .line 1258
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    .line 1260
    const-string v2, "java.util.ImmutableCollections$ListN"

    .line 1261
    .line 1262
    .line 1263
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .line 1265
    const-string v2, "java.util.ImmutableCollections$SubList"

    .line 1266
    .line 1267
    .line 1268
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1272
    move-result-object v0

    .line 1273
    .line 1274
    .line 1275
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1276
    move-result-object v0

    .line 1277
    .line 1278
    .line 1279
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1280
    move-result v1

    .line 1281
    .line 1282
    if-eqz v1, :cond_4

    .line 1283
    .line 1284
    .line 1285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1286
    move-result-object v1

    .line 1287
    .line 1288
    check-cast v1, Ljava/util/Map$Entry;

    .line 1289
    .line 1290
    .line 1291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1292
    move-result-object v2

    .line 1293
    .line 1294
    check-cast v2, Ljava/lang/String;

    .line 1295
    .line 1296
    sget-object v3, Lcom/alibaba/fastjson2/util/TypeUtils$Mapping;->TYPE_MAPPINGS:Ljava/util/Map;

    .line 1297
    .line 1298
    .line 1299
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    move-result-object v4

    .line 1301
    .line 1302
    check-cast v4, Ljava/lang/Class;

    .line 1303
    .line 1304
    if-nez v4, :cond_3

    .line 1305
    .line 1306
    .line 1307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1308
    move-result-object v1

    .line 1309
    .line 1310
    check-cast v1, Ljava/lang/Class;

    .line 1311
    .line 1312
    .line 1313
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    goto :goto_1

    .line 1315
    :cond_4
    return-void
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
