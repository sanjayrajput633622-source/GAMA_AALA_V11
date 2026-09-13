.class public final Lcom/alibaba/fastjson2/function/impl/ToAny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Function;


# instance fields
.field private defaultValue:Ljava/lang/Object;

.field private final targetClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/function/impl/ToAny;->targetClass:Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lcom/alibaba/fastjson2/function/impl/ToAny;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/alibaba/fastjson2/function/impl/ToAny;->defaultValue:Ljava/lang/Object;

    .line 5
    return-object p1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/ToAny;->targetClass:Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/ToAny;->targetClass:Ljava/lang/Class;

    .line 17
    .line 18
    const-class v1, Ljava/lang/String;

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_2
    const-class v1, Ljava/math/BigDecimal;

    .line 28
    .line 29
    if-ne v0, v1, :cond_a

    .line 30
    .line 31
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 44
    return-object p1

    .line 45
    .line 46
    :cond_3
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 47
    return-object p1

    .line 48
    .line 49
    :cond_4
    instance-of v0, p1, Ljava/lang/Byte;

    .line 50
    .line 51
    if-nez v0, :cond_9

    .line 52
    .line 53
    instance-of v0, p1, Ljava/lang/Short;

    .line 54
    .line 55
    if-nez v0, :cond_9

    .line 56
    .line 57
    instance-of v0, p1, Ljava/lang/Integer;

    .line 58
    .line 59
    if-nez v0, :cond_9

    .line 60
    .line 61
    instance-of v0, p1, Ljava/lang/Long;

    .line 62
    .line 63
    if-nez v0, :cond_9

    .line 64
    .line 65
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .line 67
    if-nez v0, :cond_9

    .line 68
    .line 69
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    .line 75
    .line 76
    if-nez v0, :cond_8

    .line 77
    .line 78
    instance-of v0, p1, Ljava/lang/Double;

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_6
    instance-of v0, p1, Ljava/math/BigInteger;

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    new-instance v0, Ljava/math/BigDecimal;

    .line 88
    .line 89
    check-cast p1, Ljava/math/BigInteger;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 93
    return-object v0

    .line 94
    .line 95
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v0, :cond_38

    .line 98
    .line 99
    new-instance v0, Ljava/math/BigDecimal;

    .line 100
    .line 101
    check-cast p1, Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 105
    return-object v0

    .line 106
    .line 107
    :cond_8
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 111
    move-result-wide v0

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(D)Ljava/math/BigDecimal;

    .line 115
    move-result-object p1

    .line 116
    return-object p1

    .line 117
    .line 118
    :cond_9
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 122
    move-result-wide v0

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    .line 129
    :cond_a
    const-class v1, Ljava/math/BigInteger;

    .line 130
    .line 131
    if-ne v0, v1, :cond_f

    .line 132
    .line 133
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 134
    .line 135
    if-eqz v0, :cond_c

    .line 136
    .line 137
    check-cast p1, Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    move-result p1

    .line 142
    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 146
    return-object p1

    .line 147
    .line 148
    :cond_b
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 149
    return-object p1

    .line 150
    .line 151
    :cond_c
    instance-of v0, p1, Ljava/lang/Byte;

    .line 152
    .line 153
    if-nez v0, :cond_e

    .line 154
    .line 155
    instance-of v0, p1, Ljava/lang/Short;

    .line 156
    .line 157
    if-nez v0, :cond_e

    .line 158
    .line 159
    instance-of v0, p1, Ljava/lang/Integer;

    .line 160
    .line 161
    if-nez v0, :cond_e

    .line 162
    .line 163
    instance-of v0, p1, Ljava/lang/Long;

    .line 164
    .line 165
    if-nez v0, :cond_e

    .line 166
    .line 167
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 168
    .line 169
    if-nez v0, :cond_e

    .line 170
    .line 171
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 172
    .line 173
    if-nez v0, :cond_e

    .line 174
    .line 175
    instance-of v0, p1, Ljava/lang/Float;

    .line 176
    .line 177
    if-nez v0, :cond_e

    .line 178
    .line 179
    instance-of v0, p1, Ljava/lang/Double;

    .line 180
    .line 181
    if-eqz v0, :cond_d

    .line 182
    goto :goto_2

    .line 183
    .line 184
    :cond_d
    instance-of v0, p1, Ljava/math/BigDecimal;

    .line 185
    .line 186
    if-eqz v0, :cond_38

    .line 187
    .line 188
    check-cast p1, Ljava/math/BigDecimal;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    .line 192
    move-result-object p1

    .line 193
    return-object p1

    .line 194
    .line 195
    :cond_e
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 199
    move-result-wide v0

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 203
    move-result-object p1

    .line 204
    return-object p1

    .line 205
    .line 206
    :cond_f
    const-class v1, Ljava/lang/Boolean;

    .line 207
    const/4 v2, 0x0

    .line 208
    .line 209
    if-ne v0, v1, :cond_23

    .line 210
    .line 211
    instance-of v0, p1, Ljava/lang/Number;

    .line 212
    const/4 v1, 0x1

    .line 213
    .line 214
    if-eqz v0, :cond_11

    .line 215
    .line 216
    check-cast p1, Ljava/lang/Number;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 220
    move-result p1

    .line 221
    .line 222
    if-ne p1, v1, :cond_10

    .line 223
    move v2, v1

    .line 224
    .line 225
    .line 226
    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 227
    move-result-object p1

    .line 228
    return-object p1

    .line 229
    .line 230
    :cond_11
    instance-of v0, p1, Ljava/lang/String;

    .line 231
    .line 232
    if-eqz v0, :cond_38

    .line 233
    move-object v0, p1

    .line 234
    .line 235
    check-cast v0, Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 239
    move-result v3

    .line 240
    const/4 v4, -0x1

    .line 241
    .line 242
    .line 243
    sparse-switch v3, :sswitch_data_0

    .line 244
    :goto_3
    move v2, v4

    .line 245
    .line 246
    goto/16 :goto_4

    .line 247
    .line 248
    :sswitch_0
    const-string v1, "false"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    move-result v0

    .line 253
    .line 254
    if-nez v0, :cond_12

    .line 255
    goto :goto_3

    .line 256
    .line 257
    :cond_12
    const/16 v2, 0x10

    .line 258
    .line 259
    goto/16 :goto_4

    .line 260
    .line 261
    :sswitch_1
    const-string v1, "False"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v0

    .line 266
    .line 267
    if-nez v0, :cond_13

    .line 268
    goto :goto_3

    .line 269
    .line 270
    :cond_13
    const/16 v2, 0xf

    .line 271
    .line 272
    goto/16 :goto_4

    .line 273
    .line 274
    :sswitch_2
    const-string v1, "FALSE"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    move-result v0

    .line 279
    .line 280
    if-nez v0, :cond_14

    .line 281
    goto :goto_3

    .line 282
    .line 283
    :cond_14
    const/16 v2, 0xe

    .line 284
    .line 285
    goto/16 :goto_4

    .line 286
    .line 287
    :sswitch_3
    const-string v1, "true"

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    move-result v0

    .line 292
    .line 293
    if-nez v0, :cond_15

    .line 294
    goto :goto_3

    .line 295
    .line 296
    :cond_15
    const/16 v2, 0xd

    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :sswitch_4
    const-string v1, "null"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    move-result v0

    .line 305
    .line 306
    if-nez v0, :cond_16

    .line 307
    goto :goto_3

    .line 308
    .line 309
    :cond_16
    const/16 v2, 0xc

    .line 310
    .line 311
    goto/16 :goto_4

    .line 312
    .line 313
    :sswitch_5
    const-string v1, "True"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    move-result v0

    .line 318
    .line 319
    if-nez v0, :cond_17

    .line 320
    goto :goto_3

    .line 321
    .line 322
    :cond_17
    const/16 v2, 0xb

    .line 323
    .line 324
    goto/16 :goto_4

    .line 325
    .line 326
    :sswitch_6
    const-string v1, "TRUE"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    move-result v0

    .line 331
    .line 332
    if-nez v0, :cond_18

    .line 333
    goto :goto_3

    .line 334
    .line 335
    :cond_18
    const/16 v2, 0xa

    .line 336
    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    :sswitch_7
    const-string v1, "yes"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    move-result v0

    .line 344
    .line 345
    if-nez v0, :cond_19

    .line 346
    goto :goto_3

    .line 347
    .line 348
    :cond_19
    const/16 v2, 0x9

    .line 349
    .line 350
    goto/16 :goto_4

    .line 351
    .line 352
    :sswitch_8
    const-string v1, "Yes"

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    move-result v0

    .line 357
    .line 358
    if-nez v0, :cond_1a

    .line 359
    goto :goto_3

    .line 360
    .line 361
    :cond_1a
    const/16 v2, 0x8

    .line 362
    .line 363
    goto/16 :goto_4

    .line 364
    .line 365
    :sswitch_9
    const-string v1, "YES"

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    move-result v0

    .line 370
    .line 371
    if-nez v0, :cond_1b

    .line 372
    .line 373
    goto/16 :goto_3

    .line 374
    :cond_1b
    const/4 v2, 0x7

    .line 375
    goto :goto_4

    .line 376
    .line 377
    :sswitch_a
    const-string v1, "no"

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    move-result v0

    .line 382
    .line 383
    if-nez v0, :cond_1c

    .line 384
    .line 385
    goto/16 :goto_3

    .line 386
    :cond_1c
    const/4 v2, 0x6

    .line 387
    goto :goto_4

    .line 388
    .line 389
    :sswitch_b
    const-string v1, "No"

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    move-result v0

    .line 394
    .line 395
    if-nez v0, :cond_1d

    .line 396
    .line 397
    goto/16 :goto_3

    .line 398
    :cond_1d
    const/4 v2, 0x5

    .line 399
    goto :goto_4

    .line 400
    .line 401
    :sswitch_c
    const-string v1, "NO"

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result v0

    .line 406
    .line 407
    if-nez v0, :cond_1e

    .line 408
    .line 409
    goto/16 :goto_3

    .line 410
    :cond_1e
    const/4 v2, 0x4

    .line 411
    goto :goto_4

    .line 412
    .line 413
    :sswitch_d
    const-string v1, "Y"

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    move-result v0

    .line 418
    .line 419
    if-nez v0, :cond_1f

    .line 420
    .line 421
    goto/16 :goto_3

    .line 422
    :cond_1f
    const/4 v2, 0x3

    .line 423
    goto :goto_4

    .line 424
    .line 425
    :sswitch_e
    const-string v1, "T"

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result v0

    .line 430
    .line 431
    if-nez v0, :cond_20

    .line 432
    .line 433
    goto/16 :goto_3

    .line 434
    :cond_20
    const/4 v2, 0x2

    .line 435
    goto :goto_4

    .line 436
    .line 437
    :sswitch_f
    const-string v2, "N"

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    move-result v0

    .line 442
    .line 443
    if-nez v0, :cond_21

    .line 444
    .line 445
    goto/16 :goto_3

    .line 446
    :cond_21
    move v2, v1

    .line 447
    goto :goto_4

    .line 448
    .line 449
    :sswitch_10
    const-string v1, "F"

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    move-result v0

    .line 454
    .line 455
    if-nez v0, :cond_22

    .line 456
    .line 457
    goto/16 :goto_3

    .line 458
    .line 459
    .line 460
    :cond_22
    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 461
    .line 462
    goto/16 :goto_9

    .line 463
    .line 464
    :pswitch_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/function/impl/ToAny;->defaultValue:Ljava/lang/Object;

    .line 465
    return-object p1

    .line 466
    .line 467
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 468
    return-object p1

    .line 469
    .line 470
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 471
    return-object p1

    .line 472
    .line 473
    :cond_23
    const-class v1, Ljava/lang/Byte;

    .line 474
    .line 475
    if-ne v0, v1, :cond_25

    .line 476
    .line 477
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 478
    .line 479
    if-eqz v0, :cond_24

    .line 480
    .line 481
    check-cast p1, Ljava/lang/Boolean;

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 485
    move-result p1

    .line 486
    .line 487
    .line 488
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 489
    move-result-object p1

    .line 490
    return-object p1

    .line 491
    .line 492
    :cond_24
    instance-of v0, p1, Ljava/lang/Number;

    .line 493
    .line 494
    if-eqz v0, :cond_38

    .line 495
    .line 496
    check-cast p1, Ljava/lang/Number;

    .line 497
    .line 498
    .line 499
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    .line 500
    move-result p1

    .line 501
    .line 502
    .line 503
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 504
    move-result-object p1

    .line 505
    return-object p1

    .line 506
    .line 507
    :cond_25
    const-class v1, Ljava/lang/Double;

    .line 508
    .line 509
    if-ne v0, v1, :cond_2c

    .line 510
    .line 511
    instance-of v0, p1, Ljava/lang/Number;

    .line 512
    .line 513
    if-eqz v0, :cond_26

    .line 514
    .line 515
    check-cast p1, Ljava/lang/Number;

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 519
    move-result-wide v0

    .line 520
    .line 521
    .line 522
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 523
    move-result-object p1

    .line 524
    return-object p1

    .line 525
    .line 526
    :cond_26
    instance-of v0, p1, Ljava/lang/String;

    .line 527
    .line 528
    if-eqz v0, :cond_28

    .line 529
    .line 530
    check-cast p1, Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 534
    move-result v0

    .line 535
    .line 536
    if-eqz v0, :cond_27

    .line 537
    .line 538
    iget-object p1, p0, Lcom/alibaba/fastjson2/function/impl/ToAny;->defaultValue:Ljava/lang/Object;

    .line 539
    return-object p1

    .line 540
    .line 541
    .line 542
    :cond_27
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 543
    move-result-wide v0

    .line 544
    .line 545
    .line 546
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 547
    move-result-object p1

    .line 548
    return-object p1

    .line 549
    .line 550
    :cond_28
    instance-of v0, p1, Ljava/util/List;

    .line 551
    .line 552
    if-eqz v0, :cond_2a

    .line 553
    .line 554
    check-cast p1, Ljava/util/List;

    .line 555
    .line 556
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    .line 557
    .line 558
    .line 559
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 560
    move-result v1

    .line 561
    .line 562
    .line 563
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 564
    .line 565
    .line 566
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 567
    move-result v1

    .line 568
    .line 569
    if-ge v2, v1, :cond_29

    .line 570
    .line 571
    .line 572
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 573
    move-result-object v1

    .line 574
    .line 575
    .line 576
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/function/impl/ToAny;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    move-result-object v1

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 581
    .line 582
    add-int/lit8 v2, v2, 0x1

    .line 583
    goto :goto_5

    .line 584
    :cond_29
    return-object v0

    .line 585
    .line 586
    :cond_2a
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 587
    .line 588
    if-eqz v0, :cond_38

    .line 589
    .line 590
    check-cast p1, Ljava/lang/Boolean;

    .line 591
    .line 592
    .line 593
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 594
    move-result p1

    .line 595
    .line 596
    if-eqz p1, :cond_2b

    .line 597
    .line 598
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 599
    goto :goto_6

    .line 600
    .line 601
    :cond_2b
    const-wide/16 v0, 0x0

    .line 602
    .line 603
    .line 604
    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 605
    move-result-object p1

    .line 606
    return-object p1

    .line 607
    .line 608
    :cond_2c
    const-class v1, Ljava/lang/Float;

    .line 609
    .line 610
    if-ne v0, v1, :cond_2f

    .line 611
    .line 612
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 613
    .line 614
    if-eqz v0, :cond_2e

    .line 615
    .line 616
    check-cast p1, Ljava/lang/Boolean;

    .line 617
    .line 618
    .line 619
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 620
    move-result p1

    .line 621
    .line 622
    if-eqz p1, :cond_2d

    .line 623
    .line 624
    const/high16 p1, 0x3f800000    # 1.0f

    .line 625
    goto :goto_7

    .line 626
    :cond_2d
    const/4 p1, 0x0

    .line 627
    .line 628
    .line 629
    :goto_7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 630
    move-result-object p1

    .line 631
    return-object p1

    .line 632
    .line 633
    :cond_2e
    instance-of v0, p1, Ljava/lang/Number;

    .line 634
    .line 635
    if-eqz v0, :cond_38

    .line 636
    .line 637
    check-cast p1, Ljava/lang/Number;

    .line 638
    .line 639
    .line 640
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 641
    move-result p1

    .line 642
    .line 643
    .line 644
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 645
    move-result-object p1

    .line 646
    return-object p1

    .line 647
    .line 648
    :cond_2f
    const-class v1, Ljava/lang/Integer;

    .line 649
    .line 650
    if-ne v0, v1, :cond_31

    .line 651
    .line 652
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 653
    .line 654
    if-eqz v0, :cond_30

    .line 655
    .line 656
    check-cast p1, Ljava/lang/Boolean;

    .line 657
    .line 658
    .line 659
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 660
    move-result p1

    .line 661
    .line 662
    .line 663
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    move-result-object p1

    .line 665
    return-object p1

    .line 666
    .line 667
    :cond_30
    instance-of v0, p1, Ljava/lang/Number;

    .line 668
    .line 669
    if-eqz v0, :cond_38

    .line 670
    .line 671
    check-cast p1, Ljava/lang/Number;

    .line 672
    .line 673
    .line 674
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 675
    move-result p1

    .line 676
    .line 677
    .line 678
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    move-result-object p1

    .line 680
    return-object p1

    .line 681
    .line 682
    :cond_31
    const-class v1, Ljava/lang/Long;

    .line 683
    .line 684
    if-ne v0, v1, :cond_34

    .line 685
    .line 686
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 687
    .line 688
    if-eqz v0, :cond_33

    .line 689
    .line 690
    check-cast p1, Ljava/lang/Boolean;

    .line 691
    .line 692
    .line 693
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 694
    move-result p1

    .line 695
    .line 696
    if-eqz p1, :cond_32

    .line 697
    .line 698
    const-wide/16 v0, 0x1

    .line 699
    goto :goto_8

    .line 700
    .line 701
    :cond_32
    const-wide/16 v0, 0x0

    .line 702
    .line 703
    .line 704
    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 705
    move-result-object p1

    .line 706
    return-object p1

    .line 707
    .line 708
    :cond_33
    instance-of v0, p1, Ljava/lang/Number;

    .line 709
    .line 710
    if-eqz v0, :cond_38

    .line 711
    .line 712
    check-cast p1, Ljava/lang/Number;

    .line 713
    .line 714
    .line 715
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 716
    move-result-wide v0

    .line 717
    .line 718
    .line 719
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 720
    move-result-object p1

    .line 721
    return-object p1

    .line 722
    .line 723
    :cond_34
    const-class v1, Ljava/lang/Short;

    .line 724
    .line 725
    if-ne v0, v1, :cond_36

    .line 726
    .line 727
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 728
    .line 729
    if-eqz v0, :cond_35

    .line 730
    .line 731
    check-cast p1, Ljava/lang/Boolean;

    .line 732
    .line 733
    .line 734
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 735
    move-result p1

    .line 736
    .line 737
    .line 738
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 739
    move-result-object p1

    .line 740
    return-object p1

    .line 741
    .line 742
    :cond_35
    instance-of v0, p1, Ljava/lang/Number;

    .line 743
    .line 744
    if-eqz v0, :cond_38

    .line 745
    .line 746
    check-cast p1, Ljava/lang/Number;

    .line 747
    .line 748
    .line 749
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    .line 750
    move-result p1

    .line 751
    .line 752
    .line 753
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 754
    move-result-object p1

    .line 755
    return-object p1

    .line 756
    .line 757
    :cond_36
    const-class v1, Ljava/lang/Number;

    .line 758
    .line 759
    if-ne v0, v1, :cond_38

    .line 760
    .line 761
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 762
    .line 763
    if-eqz v0, :cond_37

    .line 764
    .line 765
    check-cast p1, Ljava/lang/Boolean;

    .line 766
    .line 767
    .line 768
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 769
    move-result p1

    .line 770
    .line 771
    .line 772
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 773
    move-result-object p1

    .line 774
    return-object p1

    .line 775
    .line 776
    :cond_37
    instance-of v0, p1, Ljava/lang/Number;

    .line 777
    .line 778
    if-eqz v0, :cond_38

    .line 779
    return-object p1

    .line 780
    .line 781
    :cond_38
    :goto_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 782
    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .line 788
    const-string v2, "can not cast to "

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    iget-object v2, p0, Lcom/alibaba/fastjson2/function/impl/ToAny;->targetClass:Ljava/lang/Class;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 797
    move-result-object v2

    .line 798
    .line 799
    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    const-string v2, " "

    .line 803
    .line 804
    .line 805
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 809
    move-result-object p1

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    move-result-object p1

    .line 817
    .line 818
    .line 819
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 820
    throw v0

    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_10
        0x4e -> :sswitch_f
        0x54 -> :sswitch_e
        0x59 -> :sswitch_d
        0x9c1 -> :sswitch_c
        0x9e1 -> :sswitch_b
        0xdc1 -> :sswitch_a
        0x156c7 -> :sswitch_9
        0x15ac7 -> :sswitch_8
        0x1d2e7 -> :sswitch_7
        0x276d8e -> :sswitch_6
        0x27e9ae -> :sswitch_5
        0x33c587 -> :sswitch_4
        0x36758e -> :sswitch_3
        0x3f92103 -> :sswitch_2
        0x4082903 -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
