.class public Lcom/alibaba/fastjson2/util/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CA:[C

.field public static final DIGITS_K:[I

.field static final IA:[I

.field private static final MIN_INT_BYTES:[B

.field private static final MIN_INT_CHARS:[C

.field private static final MIN_LONG:[B

.field public static final PACKED_DIGITS:[S

.field public static final PACKED_DIGITS_UTF16:[I

.field static final sizeTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    new-array v1, v0, [I

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    sput-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->sizeTable:[I

    .line 10
    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    new-array v1, v1, [I

    .line 14
    .line 15
    sput-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 16
    .line 17
    const-string v1, "-2147483648"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 21
    move-result-object v2

    .line 22
    .line 23
    sput-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_INT_BYTES:[B

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 27
    move-result-object v1

    .line 28
    .line 29
    sput-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_INT_CHARS:[C

    .line 30
    .line 31
    const-string v1, "-9223372036854775808"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 35
    move-result-object v1

    .line 36
    .line 37
    sput-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_LONG:[B

    .line 38
    .line 39
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 43
    move-result-object v1

    .line 44
    .line 45
    sput-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->CA:[C

    .line 46
    .line 47
    const/16 v1, 0x100

    .line 48
    .line 49
    new-array v1, v1, [I

    .line 50
    .line 51
    sput-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->IA:[I

    .line 52
    .line 53
    const/16 v1, 0x64

    .line 54
    .line 55
    new-array v2, v1, [S

    .line 56
    .line 57
    const/16 v3, 0x3030

    .line 58
    const/4 v4, 0x0

    .line 59
    .line 60
    aput-short v3, v2, v4

    .line 61
    .line 62
    const/16 v3, 0x3130

    .line 63
    const/4 v5, 0x1

    .line 64
    .line 65
    aput-short v3, v2, v5

    .line 66
    .line 67
    const/16 v3, 0x3230

    .line 68
    const/4 v6, 0x2

    .line 69
    .line 70
    aput-short v3, v2, v6

    .line 71
    .line 72
    const/16 v3, 0x3330

    .line 73
    const/4 v7, 0x3

    .line 74
    .line 75
    aput-short v3, v2, v7

    .line 76
    .line 77
    const/16 v3, 0x3430

    .line 78
    const/4 v8, 0x4

    .line 79
    .line 80
    aput-short v3, v2, v8

    .line 81
    .line 82
    const/16 v3, 0x3530

    .line 83
    const/4 v9, 0x5

    .line 84
    .line 85
    aput-short v3, v2, v9

    .line 86
    .line 87
    const/16 v3, 0x3630

    .line 88
    const/4 v10, 0x6

    .line 89
    .line 90
    aput-short v3, v2, v10

    .line 91
    .line 92
    const/16 v3, 0x3730

    .line 93
    const/4 v11, 0x7

    .line 94
    .line 95
    aput-short v3, v2, v11

    .line 96
    .line 97
    const/16 v3, 0x3830

    .line 98
    .line 99
    const/16 v12, 0x8

    .line 100
    .line 101
    aput-short v3, v2, v12

    .line 102
    .line 103
    const/16 v3, 0x3930

    .line 104
    .line 105
    const/16 v13, 0x9

    .line 106
    .line 107
    aput-short v3, v2, v13

    .line 108
    .line 109
    const/16 v3, 0x3031

    .line 110
    .line 111
    aput-short v3, v2, v0

    .line 112
    .line 113
    const/16 v3, 0x3131

    .line 114
    .line 115
    const/16 v14, 0xb

    .line 116
    .line 117
    aput-short v3, v2, v14

    .line 118
    .line 119
    const/16 v3, 0x3231

    .line 120
    .line 121
    const/16 v15, 0xc

    .line 122
    .line 123
    aput-short v3, v2, v15

    .line 124
    .line 125
    const/16 v3, 0x3331

    .line 126
    .line 127
    const/16 v16, 0xd

    .line 128
    .line 129
    aput-short v3, v2, v16

    .line 130
    .line 131
    const/16 v3, 0x3431

    .line 132
    .line 133
    const/16 v17, 0xe

    .line 134
    .line 135
    aput-short v3, v2, v17

    .line 136
    .line 137
    const/16 v3, 0x3531

    .line 138
    .line 139
    const/16 v18, 0xf

    .line 140
    .line 141
    aput-short v3, v2, v18

    .line 142
    .line 143
    const/16 v3, 0x3631

    .line 144
    .line 145
    const/16 v19, 0x10

    .line 146
    .line 147
    aput-short v3, v2, v19

    .line 148
    .line 149
    const/16 v3, 0x3731

    .line 150
    .line 151
    const/16 v20, 0x11

    .line 152
    .line 153
    aput-short v3, v2, v20

    .line 154
    .line 155
    const/16 v3, 0x3831

    .line 156
    .line 157
    const/16 v21, 0x12

    .line 158
    .line 159
    aput-short v3, v2, v21

    .line 160
    .line 161
    const/16 v3, 0x3931

    .line 162
    .line 163
    const/16 v22, 0x13

    .line 164
    .line 165
    aput-short v3, v2, v22

    .line 166
    .line 167
    const/16 v3, 0x3032

    .line 168
    .line 169
    const/16 v23, 0x14

    .line 170
    .line 171
    aput-short v3, v2, v23

    .line 172
    .line 173
    const/16 v3, 0x3132

    .line 174
    .line 175
    const/16 v24, 0x15

    .line 176
    .line 177
    aput-short v3, v2, v24

    .line 178
    .line 179
    const/16 v3, 0x3232

    .line 180
    .line 181
    const/16 v25, 0x16

    .line 182
    .line 183
    aput-short v3, v2, v25

    .line 184
    .line 185
    const/16 v3, 0x3332

    .line 186
    .line 187
    const/16 v26, 0x17

    .line 188
    .line 189
    aput-short v3, v2, v26

    .line 190
    .line 191
    const/16 v3, 0x3432

    .line 192
    .line 193
    const/16 v27, 0x18

    .line 194
    .line 195
    aput-short v3, v2, v27

    .line 196
    .line 197
    const/16 v3, 0x3532

    .line 198
    .line 199
    const/16 v28, 0x19

    .line 200
    .line 201
    aput-short v3, v2, v28

    .line 202
    .line 203
    const/16 v3, 0x3632

    .line 204
    .line 205
    const/16 v29, 0x1a

    .line 206
    .line 207
    aput-short v3, v2, v29

    .line 208
    .line 209
    const/16 v3, 0x3732

    .line 210
    .line 211
    const/16 v30, 0x1b

    .line 212
    .line 213
    aput-short v3, v2, v30

    .line 214
    .line 215
    const/16 v3, 0x3832

    .line 216
    .line 217
    const/16 v31, 0x1c

    .line 218
    .line 219
    aput-short v3, v2, v31

    .line 220
    .line 221
    const/16 v3, 0x3932

    .line 222
    .line 223
    const/16 v32, 0x1d

    .line 224
    .line 225
    aput-short v3, v2, v32

    .line 226
    .line 227
    const/16 v3, 0x3033

    .line 228
    .line 229
    const/16 v33, 0x1e

    .line 230
    .line 231
    aput-short v3, v2, v33

    .line 232
    .line 233
    const/16 v3, 0x3133

    .line 234
    .line 235
    const/16 v34, 0x1f

    .line 236
    .line 237
    aput-short v3, v2, v34

    .line 238
    .line 239
    const/16 v3, 0x3233

    .line 240
    .line 241
    const/16 v35, 0x20

    .line 242
    .line 243
    aput-short v3, v2, v35

    .line 244
    .line 245
    const/16 v3, 0x3333

    .line 246
    .line 247
    const/16 v36, 0x21

    .line 248
    .line 249
    aput-short v3, v2, v36

    .line 250
    .line 251
    const/16 v3, 0x3433

    .line 252
    .line 253
    const/16 v37, 0x22

    .line 254
    .line 255
    aput-short v3, v2, v37

    .line 256
    .line 257
    const/16 v3, 0x3533

    .line 258
    .line 259
    const/16 v38, 0x23

    .line 260
    .line 261
    aput-short v3, v2, v38

    .line 262
    .line 263
    const/16 v3, 0x3633

    .line 264
    .line 265
    const/16 v39, 0x24

    .line 266
    .line 267
    aput-short v3, v2, v39

    .line 268
    .line 269
    const/16 v3, 0x25

    .line 270
    .line 271
    const/16 v40, 0x3733

    .line 272
    .line 273
    aput-short v40, v2, v3

    .line 274
    .line 275
    const/16 v3, 0x26

    .line 276
    .line 277
    const/16 v40, 0x3833

    .line 278
    .line 279
    aput-short v40, v2, v3

    .line 280
    .line 281
    const/16 v3, 0x27

    .line 282
    .line 283
    const/16 v40, 0x3933

    .line 284
    .line 285
    aput-short v40, v2, v3

    .line 286
    .line 287
    const/16 v3, 0x28

    .line 288
    .line 289
    const/16 v40, 0x3034

    .line 290
    .line 291
    aput-short v40, v2, v3

    .line 292
    .line 293
    const/16 v3, 0x29

    .line 294
    .line 295
    const/16 v40, 0x3134

    .line 296
    .line 297
    aput-short v40, v2, v3

    .line 298
    .line 299
    const/16 v3, 0x2a

    .line 300
    .line 301
    const/16 v40, 0x3234

    .line 302
    .line 303
    aput-short v40, v2, v3

    .line 304
    .line 305
    const/16 v3, 0x2b

    .line 306
    .line 307
    const/16 v40, 0x3334

    .line 308
    .line 309
    aput-short v40, v2, v3

    .line 310
    .line 311
    const/16 v3, 0x2c

    .line 312
    .line 313
    const/16 v40, 0x3434

    .line 314
    .line 315
    aput-short v40, v2, v3

    .line 316
    .line 317
    const/16 v3, 0x2d

    .line 318
    .line 319
    const/16 v40, 0x3534

    .line 320
    .line 321
    aput-short v40, v2, v3

    .line 322
    .line 323
    const/16 v3, 0x2e

    .line 324
    .line 325
    const/16 v40, 0x3634

    .line 326
    .line 327
    aput-short v40, v2, v3

    .line 328
    .line 329
    const/16 v3, 0x2f

    .line 330
    .line 331
    const/16 v40, 0x3734

    .line 332
    .line 333
    aput-short v40, v2, v3

    .line 334
    .line 335
    const/16 v3, 0x3834

    .line 336
    .line 337
    const/16 v40, 0x30

    .line 338
    .line 339
    aput-short v3, v2, v40

    .line 340
    .line 341
    const/16 v3, 0x31

    .line 342
    .line 343
    const/16 v41, 0x3934

    .line 344
    .line 345
    aput-short v41, v2, v3

    .line 346
    .line 347
    const/16 v3, 0x32

    .line 348
    .line 349
    const/16 v41, 0x3035

    .line 350
    .line 351
    aput-short v41, v2, v3

    .line 352
    .line 353
    const/16 v3, 0x33

    .line 354
    .line 355
    const/16 v41, 0x3135

    .line 356
    .line 357
    aput-short v41, v2, v3

    .line 358
    .line 359
    const/16 v3, 0x34

    .line 360
    .line 361
    const/16 v41, 0x3235

    .line 362
    .line 363
    aput-short v41, v2, v3

    .line 364
    .line 365
    const/16 v3, 0x35

    .line 366
    .line 367
    const/16 v41, 0x3335

    .line 368
    .line 369
    aput-short v41, v2, v3

    .line 370
    .line 371
    const/16 v3, 0x36

    .line 372
    .line 373
    const/16 v41, 0x3435

    .line 374
    .line 375
    aput-short v41, v2, v3

    .line 376
    .line 377
    const/16 v3, 0x37

    .line 378
    .line 379
    const/16 v41, 0x3535

    .line 380
    .line 381
    aput-short v41, v2, v3

    .line 382
    .line 383
    const/16 v3, 0x38

    .line 384
    .line 385
    const/16 v41, 0x3635

    .line 386
    .line 387
    aput-short v41, v2, v3

    .line 388
    .line 389
    const/16 v3, 0x39

    .line 390
    .line 391
    const/16 v41, 0x3735

    .line 392
    .line 393
    aput-short v41, v2, v3

    .line 394
    .line 395
    const/16 v3, 0x3a

    .line 396
    .line 397
    const/16 v41, 0x3835

    .line 398
    .line 399
    aput-short v41, v2, v3

    .line 400
    .line 401
    const/16 v3, 0x3b

    .line 402
    .line 403
    const/16 v41, 0x3935

    .line 404
    .line 405
    aput-short v41, v2, v3

    .line 406
    .line 407
    const/16 v3, 0x3c

    .line 408
    .line 409
    const/16 v41, 0x3036

    .line 410
    .line 411
    aput-short v41, v2, v3

    .line 412
    .line 413
    const/16 v3, 0x3136

    .line 414
    .line 415
    const/16 v41, 0x3d

    .line 416
    .line 417
    aput-short v3, v2, v41

    .line 418
    .line 419
    const/16 v3, 0x3e

    .line 420
    .line 421
    const/16 v42, 0x3236

    .line 422
    .line 423
    aput-short v42, v2, v3

    .line 424
    .line 425
    const/16 v3, 0x3f

    .line 426
    .line 427
    const/16 v42, 0x3336

    .line 428
    .line 429
    aput-short v42, v2, v3

    .line 430
    .line 431
    const/16 v3, 0x40

    .line 432
    .line 433
    const/16 v42, 0x3436

    .line 434
    .line 435
    aput-short v42, v2, v3

    .line 436
    .line 437
    const/16 v3, 0x41

    .line 438
    .line 439
    const/16 v42, 0x3536

    .line 440
    .line 441
    aput-short v42, v2, v3

    .line 442
    .line 443
    const/16 v3, 0x42

    .line 444
    .line 445
    const/16 v42, 0x3636

    .line 446
    .line 447
    aput-short v42, v2, v3

    .line 448
    .line 449
    const/16 v3, 0x43

    .line 450
    .line 451
    const/16 v42, 0x3736

    .line 452
    .line 453
    aput-short v42, v2, v3

    .line 454
    .line 455
    const/16 v3, 0x44

    .line 456
    .line 457
    const/16 v42, 0x3836

    .line 458
    .line 459
    aput-short v42, v2, v3

    .line 460
    .line 461
    const/16 v3, 0x45

    .line 462
    .line 463
    const/16 v42, 0x3936

    .line 464
    .line 465
    aput-short v42, v2, v3

    .line 466
    .line 467
    const/16 v3, 0x46

    .line 468
    .line 469
    const/16 v42, 0x3037

    .line 470
    .line 471
    aput-short v42, v2, v3

    .line 472
    .line 473
    const/16 v3, 0x47

    .line 474
    .line 475
    const/16 v42, 0x3137

    .line 476
    .line 477
    aput-short v42, v2, v3

    .line 478
    .line 479
    const/16 v3, 0x48

    .line 480
    .line 481
    const/16 v42, 0x3237

    .line 482
    .line 483
    aput-short v42, v2, v3

    .line 484
    .line 485
    const/16 v3, 0x49

    .line 486
    .line 487
    const/16 v42, 0x3337

    .line 488
    .line 489
    aput-short v42, v2, v3

    .line 490
    .line 491
    const/16 v3, 0x4a

    .line 492
    .line 493
    const/16 v42, 0x3437

    .line 494
    .line 495
    aput-short v42, v2, v3

    .line 496
    .line 497
    const/16 v3, 0x4b

    .line 498
    .line 499
    const/16 v42, 0x3537

    .line 500
    .line 501
    aput-short v42, v2, v3

    .line 502
    .line 503
    const/16 v3, 0x4c

    .line 504
    .line 505
    const/16 v42, 0x3637

    .line 506
    .line 507
    aput-short v42, v2, v3

    .line 508
    .line 509
    const/16 v3, 0x4d

    .line 510
    .line 511
    const/16 v42, 0x3737

    .line 512
    .line 513
    aput-short v42, v2, v3

    .line 514
    .line 515
    const/16 v3, 0x4e

    .line 516
    .line 517
    const/16 v42, 0x3837

    .line 518
    .line 519
    aput-short v42, v2, v3

    .line 520
    .line 521
    const/16 v3, 0x4f

    .line 522
    .line 523
    const/16 v42, 0x3937

    .line 524
    .line 525
    aput-short v42, v2, v3

    .line 526
    .line 527
    const/16 v3, 0x50

    .line 528
    .line 529
    const/16 v42, 0x3038

    .line 530
    .line 531
    aput-short v42, v2, v3

    .line 532
    .line 533
    const/16 v3, 0x51

    .line 534
    .line 535
    const/16 v42, 0x3138

    .line 536
    .line 537
    aput-short v42, v2, v3

    .line 538
    .line 539
    const/16 v3, 0x52

    .line 540
    .line 541
    const/16 v42, 0x3238

    .line 542
    .line 543
    aput-short v42, v2, v3

    .line 544
    .line 545
    const/16 v3, 0x53

    .line 546
    .line 547
    const/16 v42, 0x3338

    .line 548
    .line 549
    aput-short v42, v2, v3

    .line 550
    .line 551
    const/16 v3, 0x54

    .line 552
    .line 553
    const/16 v42, 0x3438

    .line 554
    .line 555
    aput-short v42, v2, v3

    .line 556
    .line 557
    const/16 v3, 0x55

    .line 558
    .line 559
    const/16 v42, 0x3538

    .line 560
    .line 561
    aput-short v42, v2, v3

    .line 562
    .line 563
    const/16 v3, 0x56

    .line 564
    .line 565
    const/16 v42, 0x3638

    .line 566
    .line 567
    aput-short v42, v2, v3

    .line 568
    .line 569
    const/16 v3, 0x57

    .line 570
    .line 571
    const/16 v42, 0x3738

    .line 572
    .line 573
    aput-short v42, v2, v3

    .line 574
    .line 575
    const/16 v3, 0x58

    .line 576
    .line 577
    const/16 v42, 0x3838

    .line 578
    .line 579
    aput-short v42, v2, v3

    .line 580
    .line 581
    const/16 v3, 0x59

    .line 582
    .line 583
    const/16 v42, 0x3938

    .line 584
    .line 585
    aput-short v42, v2, v3

    .line 586
    .line 587
    const/16 v3, 0x5a

    .line 588
    .line 589
    const/16 v42, 0x3039

    .line 590
    .line 591
    aput-short v42, v2, v3

    .line 592
    .line 593
    const/16 v3, 0x5b

    .line 594
    .line 595
    const/16 v42, 0x3139

    .line 596
    .line 597
    aput-short v42, v2, v3

    .line 598
    .line 599
    const/16 v3, 0x5c

    .line 600
    .line 601
    const/16 v42, 0x3239

    .line 602
    .line 603
    aput-short v42, v2, v3

    .line 604
    .line 605
    const/16 v3, 0x5d

    .line 606
    .line 607
    const/16 v42, 0x3339

    .line 608
    .line 609
    aput-short v42, v2, v3

    .line 610
    .line 611
    const/16 v3, 0x5e

    .line 612
    .line 613
    const/16 v42, 0x3439

    .line 614
    .line 615
    aput-short v42, v2, v3

    .line 616
    .line 617
    const/16 v3, 0x5f

    .line 618
    .line 619
    const/16 v42, 0x3539

    .line 620
    .line 621
    aput-short v42, v2, v3

    .line 622
    .line 623
    const/16 v3, 0x60

    .line 624
    .line 625
    const/16 v42, 0x3639

    .line 626
    .line 627
    aput-short v42, v2, v3

    .line 628
    .line 629
    const/16 v3, 0x61

    .line 630
    .line 631
    const/16 v42, 0x3739

    .line 632
    .line 633
    aput-short v42, v2, v3

    .line 634
    .line 635
    const/16 v3, 0x62

    .line 636
    .line 637
    const/16 v42, 0x3839

    .line 638
    .line 639
    aput-short v42, v2, v3

    .line 640
    .line 641
    const/16 v3, 0x3939

    .line 642
    .line 643
    const/16 v42, 0x63

    .line 644
    .line 645
    aput-short v3, v2, v42

    .line 646
    .line 647
    new-array v3, v1, [I

    .line 648
    .line 649
    .line 650
    const v43, 0x300030

    .line 651
    .line 652
    aput v43, v3, v4

    .line 653
    .line 654
    .line 655
    const v43, 0x310030    # 4.500007E-39f

    .line 656
    .line 657
    aput v43, v3, v5

    .line 658
    .line 659
    .line 660
    const v5, 0x320030

    .line 661
    .line 662
    aput v5, v3, v6

    .line 663
    .line 664
    .line 665
    const v5, 0x330030

    .line 666
    .line 667
    aput v5, v3, v7

    .line 668
    .line 669
    .line 670
    const v5, 0x340030

    .line 671
    .line 672
    aput v5, v3, v8

    .line 673
    .line 674
    .line 675
    const v5, 0x350030

    .line 676
    .line 677
    aput v5, v3, v9

    .line 678
    .line 679
    .line 680
    const v5, 0x360030

    .line 681
    .line 682
    aput v5, v3, v10

    .line 683
    .line 684
    .line 685
    const v5, 0x370030

    .line 686
    .line 687
    aput v5, v3, v11

    .line 688
    .line 689
    .line 690
    const v5, 0x380030

    .line 691
    .line 692
    aput v5, v3, v12

    .line 693
    .line 694
    .line 695
    const v5, 0x390030

    .line 696
    .line 697
    aput v5, v3, v13

    .line 698
    .line 699
    .line 700
    const v5, 0x300031

    .line 701
    .line 702
    aput v5, v3, v0

    .line 703
    .line 704
    .line 705
    const v5, 0x310031    # 4.500008E-39f

    .line 706
    .line 707
    aput v5, v3, v14

    .line 708
    .line 709
    .line 710
    const v5, 0x320031

    .line 711
    .line 712
    aput v5, v3, v15

    .line 713
    .line 714
    .line 715
    const v5, 0x330031

    .line 716
    .line 717
    aput v5, v3, v16

    .line 718
    .line 719
    .line 720
    const v5, 0x340031

    .line 721
    .line 722
    aput v5, v3, v17

    .line 723
    .line 724
    .line 725
    const v5, 0x350031

    .line 726
    .line 727
    aput v5, v3, v18

    .line 728
    .line 729
    .line 730
    const v5, 0x360031

    .line 731
    .line 732
    aput v5, v3, v19

    .line 733
    .line 734
    .line 735
    const v5, 0x370031

    .line 736
    .line 737
    aput v5, v3, v20

    .line 738
    .line 739
    .line 740
    const v5, 0x380031

    .line 741
    .line 742
    aput v5, v3, v21

    .line 743
    .line 744
    .line 745
    const v5, 0x390031

    .line 746
    .line 747
    aput v5, v3, v22

    .line 748
    .line 749
    .line 750
    const v5, 0x300032

    .line 751
    .line 752
    aput v5, v3, v23

    .line 753
    .line 754
    .line 755
    const v5, 0x310032    # 4.50001E-39f

    .line 756
    .line 757
    aput v5, v3, v24

    .line 758
    .line 759
    .line 760
    const v5, 0x320032

    .line 761
    .line 762
    aput v5, v3, v25

    .line 763
    .line 764
    .line 765
    const v5, 0x330032

    .line 766
    .line 767
    aput v5, v3, v26

    .line 768
    .line 769
    .line 770
    const v5, 0x340032

    .line 771
    .line 772
    aput v5, v3, v27

    .line 773
    .line 774
    .line 775
    const v5, 0x350032

    .line 776
    .line 777
    aput v5, v3, v28

    .line 778
    .line 779
    .line 780
    const v5, 0x360032

    .line 781
    .line 782
    aput v5, v3, v29

    .line 783
    .line 784
    .line 785
    const v5, 0x370032

    .line 786
    .line 787
    aput v5, v3, v30

    .line 788
    .line 789
    .line 790
    const v5, 0x380032

    .line 791
    .line 792
    aput v5, v3, v31

    .line 793
    .line 794
    .line 795
    const v5, 0x390032

    .line 796
    .line 797
    aput v5, v3, v32

    .line 798
    .line 799
    .line 800
    const v5, 0x300033

    .line 801
    .line 802
    aput v5, v3, v33

    .line 803
    .line 804
    .line 805
    const v5, 0x310033    # 4.500011E-39f

    .line 806
    .line 807
    aput v5, v3, v34

    .line 808
    .line 809
    .line 810
    const v5, 0x320033

    .line 811
    .line 812
    aput v5, v3, v35

    .line 813
    .line 814
    .line 815
    const v5, 0x330033

    .line 816
    .line 817
    aput v5, v3, v36

    .line 818
    .line 819
    .line 820
    const v5, 0x340033

    .line 821
    .line 822
    aput v5, v3, v37

    .line 823
    .line 824
    .line 825
    const v5, 0x350033

    .line 826
    .line 827
    aput v5, v3, v38

    .line 828
    .line 829
    .line 830
    const v5, 0x360033

    .line 831
    .line 832
    aput v5, v3, v39

    .line 833
    .line 834
    const/16 v5, 0x25

    .line 835
    .line 836
    .line 837
    const v6, 0x370033

    .line 838
    .line 839
    aput v6, v3, v5

    .line 840
    .line 841
    const/16 v5, 0x26

    .line 842
    .line 843
    .line 844
    const v6, 0x380033

    .line 845
    .line 846
    aput v6, v3, v5

    .line 847
    .line 848
    const/16 v5, 0x27

    .line 849
    .line 850
    .line 851
    const v6, 0x390033

    .line 852
    .line 853
    aput v6, v3, v5

    .line 854
    .line 855
    const/16 v5, 0x28

    .line 856
    .line 857
    .line 858
    const v6, 0x300034

    .line 859
    .line 860
    aput v6, v3, v5

    .line 861
    .line 862
    const/16 v5, 0x29

    .line 863
    .line 864
    .line 865
    const v6, 0x310034    # 4.500012E-39f

    .line 866
    .line 867
    aput v6, v3, v5

    .line 868
    .line 869
    const/16 v5, 0x2a

    .line 870
    .line 871
    .line 872
    const v6, 0x320034

    .line 873
    .line 874
    aput v6, v3, v5

    .line 875
    .line 876
    const/16 v5, 0x2b

    .line 877
    .line 878
    .line 879
    const v6, 0x330034

    .line 880
    .line 881
    aput v6, v3, v5

    .line 882
    .line 883
    const/16 v5, 0x2c

    .line 884
    .line 885
    .line 886
    const v6, 0x340034

    .line 887
    .line 888
    aput v6, v3, v5

    .line 889
    .line 890
    const/16 v5, 0x2d

    .line 891
    .line 892
    .line 893
    const v6, 0x350034

    .line 894
    .line 895
    aput v6, v3, v5

    .line 896
    .line 897
    const/16 v5, 0x2e

    .line 898
    .line 899
    .line 900
    const v6, 0x360034

    .line 901
    .line 902
    aput v6, v3, v5

    .line 903
    .line 904
    const/16 v5, 0x2f

    .line 905
    .line 906
    .line 907
    const v6, 0x370034

    .line 908
    .line 909
    aput v6, v3, v5

    .line 910
    .line 911
    .line 912
    const v5, 0x380034

    .line 913
    .line 914
    aput v5, v3, v40

    .line 915
    .line 916
    const/16 v5, 0x31

    .line 917
    .line 918
    .line 919
    const v6, 0x390034

    .line 920
    .line 921
    aput v6, v3, v5

    .line 922
    .line 923
    const/16 v5, 0x32

    .line 924
    .line 925
    .line 926
    const v6, 0x300035

    .line 927
    .line 928
    aput v6, v3, v5

    .line 929
    .line 930
    const/16 v5, 0x33

    .line 931
    .line 932
    .line 933
    const v6, 0x310035    # 4.500014E-39f

    .line 934
    .line 935
    aput v6, v3, v5

    .line 936
    .line 937
    const/16 v5, 0x34

    .line 938
    .line 939
    .line 940
    const v6, 0x320035

    .line 941
    .line 942
    aput v6, v3, v5

    .line 943
    .line 944
    const/16 v5, 0x35

    .line 945
    .line 946
    .line 947
    const v6, 0x330035

    .line 948
    .line 949
    aput v6, v3, v5

    .line 950
    .line 951
    const/16 v5, 0x36

    .line 952
    .line 953
    .line 954
    const v6, 0x340035

    .line 955
    .line 956
    aput v6, v3, v5

    .line 957
    .line 958
    const/16 v5, 0x37

    .line 959
    .line 960
    .line 961
    const v6, 0x350035

    .line 962
    .line 963
    aput v6, v3, v5

    .line 964
    .line 965
    const/16 v5, 0x38

    .line 966
    .line 967
    .line 968
    const v6, 0x360035

    .line 969
    .line 970
    aput v6, v3, v5

    .line 971
    .line 972
    const/16 v5, 0x39

    .line 973
    .line 974
    .line 975
    const v6, 0x370035

    .line 976
    .line 977
    aput v6, v3, v5

    .line 978
    .line 979
    const/16 v5, 0x3a

    .line 980
    .line 981
    .line 982
    const v6, 0x380035

    .line 983
    .line 984
    aput v6, v3, v5

    .line 985
    .line 986
    const/16 v5, 0x3b

    .line 987
    .line 988
    .line 989
    const v6, 0x390035

    .line 990
    .line 991
    aput v6, v3, v5

    .line 992
    .line 993
    const/16 v5, 0x3c

    .line 994
    .line 995
    .line 996
    const v6, 0x300036

    .line 997
    .line 998
    aput v6, v3, v5

    .line 999
    .line 1000
    .line 1001
    const v5, 0x310036    # 4.500015E-39f

    .line 1002
    .line 1003
    aput v5, v3, v41

    .line 1004
    .line 1005
    const/16 v5, 0x3e

    .line 1006
    .line 1007
    .line 1008
    const v6, 0x320036

    .line 1009
    .line 1010
    aput v6, v3, v5

    .line 1011
    .line 1012
    const/16 v5, 0x3f

    .line 1013
    .line 1014
    .line 1015
    const v6, 0x330036

    .line 1016
    .line 1017
    aput v6, v3, v5

    .line 1018
    .line 1019
    const/16 v5, 0x40

    .line 1020
    .line 1021
    .line 1022
    const v6, 0x340036

    .line 1023
    .line 1024
    aput v6, v3, v5

    .line 1025
    .line 1026
    const/16 v5, 0x41

    .line 1027
    .line 1028
    .line 1029
    const v6, 0x350036

    .line 1030
    .line 1031
    aput v6, v3, v5

    .line 1032
    .line 1033
    const/16 v5, 0x42

    .line 1034
    .line 1035
    .line 1036
    const v6, 0x360036

    .line 1037
    .line 1038
    aput v6, v3, v5

    .line 1039
    .line 1040
    const/16 v5, 0x43

    .line 1041
    .line 1042
    .line 1043
    const v6, 0x370036

    .line 1044
    .line 1045
    aput v6, v3, v5

    .line 1046
    .line 1047
    const/16 v5, 0x44

    .line 1048
    .line 1049
    .line 1050
    const v6, 0x380036

    .line 1051
    .line 1052
    aput v6, v3, v5

    .line 1053
    .line 1054
    const/16 v5, 0x45

    .line 1055
    .line 1056
    .line 1057
    const v6, 0x390036

    .line 1058
    .line 1059
    aput v6, v3, v5

    .line 1060
    .line 1061
    const/16 v5, 0x46

    .line 1062
    .line 1063
    .line 1064
    const v6, 0x300037

    .line 1065
    .line 1066
    aput v6, v3, v5

    .line 1067
    .line 1068
    const/16 v5, 0x47

    .line 1069
    .line 1070
    .line 1071
    const v6, 0x310037    # 4.500016E-39f

    .line 1072
    .line 1073
    aput v6, v3, v5

    .line 1074
    .line 1075
    const/16 v5, 0x48

    .line 1076
    .line 1077
    .line 1078
    const v6, 0x320037

    .line 1079
    .line 1080
    aput v6, v3, v5

    .line 1081
    .line 1082
    const/16 v5, 0x49

    .line 1083
    .line 1084
    .line 1085
    const v6, 0x330037

    .line 1086
    .line 1087
    aput v6, v3, v5

    .line 1088
    .line 1089
    const/16 v5, 0x4a

    .line 1090
    .line 1091
    .line 1092
    const v6, 0x340037

    .line 1093
    .line 1094
    aput v6, v3, v5

    .line 1095
    .line 1096
    const/16 v5, 0x4b

    .line 1097
    .line 1098
    .line 1099
    const v6, 0x350037

    .line 1100
    .line 1101
    aput v6, v3, v5

    .line 1102
    .line 1103
    const/16 v5, 0x4c

    .line 1104
    .line 1105
    .line 1106
    const v6, 0x360037

    .line 1107
    .line 1108
    aput v6, v3, v5

    .line 1109
    .line 1110
    const/16 v5, 0x4d

    .line 1111
    .line 1112
    .line 1113
    const v6, 0x370037

    .line 1114
    .line 1115
    aput v6, v3, v5

    .line 1116
    .line 1117
    const/16 v5, 0x4e

    .line 1118
    .line 1119
    .line 1120
    const v6, 0x380037

    .line 1121
    .line 1122
    aput v6, v3, v5

    .line 1123
    .line 1124
    const/16 v5, 0x4f

    .line 1125
    .line 1126
    .line 1127
    const v6, 0x390037

    .line 1128
    .line 1129
    aput v6, v3, v5

    .line 1130
    .line 1131
    const/16 v5, 0x50

    .line 1132
    .line 1133
    .line 1134
    const v6, 0x300038

    .line 1135
    .line 1136
    aput v6, v3, v5

    .line 1137
    .line 1138
    const/16 v5, 0x51

    .line 1139
    .line 1140
    .line 1141
    const v6, 0x310038    # 4.500018E-39f

    .line 1142
    .line 1143
    aput v6, v3, v5

    .line 1144
    .line 1145
    const/16 v5, 0x52

    .line 1146
    .line 1147
    .line 1148
    const v6, 0x320038

    .line 1149
    .line 1150
    aput v6, v3, v5

    .line 1151
    .line 1152
    const/16 v5, 0x53

    .line 1153
    .line 1154
    .line 1155
    const v6, 0x330038

    .line 1156
    .line 1157
    aput v6, v3, v5

    .line 1158
    .line 1159
    const/16 v5, 0x54

    .line 1160
    .line 1161
    .line 1162
    const v6, 0x340038

    .line 1163
    .line 1164
    aput v6, v3, v5

    .line 1165
    .line 1166
    const/16 v5, 0x55

    .line 1167
    .line 1168
    .line 1169
    const v6, 0x350038

    .line 1170
    .line 1171
    aput v6, v3, v5

    .line 1172
    .line 1173
    const/16 v5, 0x56

    .line 1174
    .line 1175
    .line 1176
    const v6, 0x360038

    .line 1177
    .line 1178
    aput v6, v3, v5

    .line 1179
    .line 1180
    const/16 v5, 0x57

    .line 1181
    .line 1182
    .line 1183
    const v6, 0x370038

    .line 1184
    .line 1185
    aput v6, v3, v5

    .line 1186
    .line 1187
    const/16 v5, 0x58

    .line 1188
    .line 1189
    .line 1190
    const v6, 0x380038

    .line 1191
    .line 1192
    aput v6, v3, v5

    .line 1193
    .line 1194
    const/16 v5, 0x59

    .line 1195
    .line 1196
    .line 1197
    const v6, 0x390038

    .line 1198
    .line 1199
    aput v6, v3, v5

    .line 1200
    .line 1201
    const/16 v5, 0x5a

    .line 1202
    .line 1203
    .line 1204
    const v6, 0x300039

    .line 1205
    .line 1206
    aput v6, v3, v5

    .line 1207
    .line 1208
    const/16 v5, 0x5b

    .line 1209
    .line 1210
    .line 1211
    const v6, 0x310039    # 4.500019E-39f

    .line 1212
    .line 1213
    aput v6, v3, v5

    .line 1214
    .line 1215
    const/16 v5, 0x5c

    .line 1216
    .line 1217
    .line 1218
    const v6, 0x320039

    .line 1219
    .line 1220
    aput v6, v3, v5

    .line 1221
    .line 1222
    const/16 v5, 0x5d

    .line 1223
    .line 1224
    .line 1225
    const v6, 0x330039

    .line 1226
    .line 1227
    aput v6, v3, v5

    .line 1228
    .line 1229
    const/16 v5, 0x5e

    .line 1230
    .line 1231
    .line 1232
    const v6, 0x340039

    .line 1233
    .line 1234
    aput v6, v3, v5

    .line 1235
    .line 1236
    const/16 v5, 0x5f

    .line 1237
    .line 1238
    .line 1239
    const v6, 0x350039

    .line 1240
    .line 1241
    aput v6, v3, v5

    .line 1242
    .line 1243
    const/16 v5, 0x60

    .line 1244
    .line 1245
    .line 1246
    const v6, 0x360039

    .line 1247
    .line 1248
    aput v6, v3, v5

    .line 1249
    .line 1250
    const/16 v5, 0x61

    .line 1251
    .line 1252
    .line 1253
    const v6, 0x370039

    .line 1254
    .line 1255
    aput v6, v3, v5

    .line 1256
    .line 1257
    const/16 v5, 0x62

    .line 1258
    .line 1259
    .line 1260
    const v6, 0x380039

    .line 1261
    .line 1262
    aput v6, v3, v5

    .line 1263
    .line 1264
    .line 1265
    const v5, 0x390039

    .line 1266
    .line 1267
    aput v5, v3, v42

    .line 1268
    .line 1269
    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 1270
    .line 1271
    if-eqz v5, :cond_1

    .line 1272
    move v5, v4

    .line 1273
    .line 1274
    :goto_0
    if-ge v5, v1, :cond_0

    .line 1275
    .line 1276
    aget-short v6, v2, v5

    .line 1277
    .line 1278
    .line 1279
    invoke-static {v6}, Ljava/lang/Short;->reverseBytes(S)S

    .line 1280
    move-result v6

    .line 1281
    .line 1282
    aput-short v6, v2, v5

    .line 1283
    .line 1284
    add-int/lit8 v5, v5, 0x1

    .line 1285
    goto :goto_0

    .line 1286
    :cond_0
    move v5, v4

    .line 1287
    .line 1288
    :goto_1
    if-ge v5, v1, :cond_1

    .line 1289
    .line 1290
    aget v6, v3, v5

    .line 1291
    shl-int/2addr v6, v12

    .line 1292
    .line 1293
    .line 1294
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 1295
    move-result v6

    .line 1296
    .line 1297
    aput v6, v3, v5

    .line 1298
    .line 1299
    add-int/lit8 v5, v5, 0x1

    .line 1300
    goto :goto_1

    .line 1301
    .line 1302
    :cond_1
    sput-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    .line 1303
    .line 1304
    sput-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    .line 1305
    .line 1306
    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->IA:[I

    .line 1307
    const/4 v3, -0x1

    .line 1308
    .line 1309
    .line 1310
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1311
    .line 1312
    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->CA:[C

    .line 1313
    array-length v2, v2

    .line 1314
    move v3, v4

    .line 1315
    .line 1316
    :goto_2
    if-ge v3, v2, :cond_2

    .line 1317
    .line 1318
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->IA:[I

    .line 1319
    .line 1320
    sget-object v6, Lcom/alibaba/fastjson2/util/IOUtils;->CA:[C

    .line 1321
    .line 1322
    aget-char v6, v6, v3

    .line 1323
    .line 1324
    aput v3, v5, v6

    .line 1325
    .line 1326
    add-int/lit8 v3, v3, 0x1

    .line 1327
    goto :goto_2

    .line 1328
    .line 1329
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->IA:[I

    .line 1330
    .line 1331
    aput v4, v2, v41

    .line 1332
    move v2, v4

    .line 1333
    .line 1334
    :goto_3
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 1335
    array-length v5, v3

    .line 1336
    .line 1337
    if-ge v2, v5, :cond_5

    .line 1338
    .line 1339
    if-ge v2, v0, :cond_3

    .line 1340
    .line 1341
    const/high16 v5, 0x2000000

    .line 1342
    goto :goto_4

    .line 1343
    .line 1344
    :cond_3
    if-ge v2, v1, :cond_4

    .line 1345
    .line 1346
    const/high16 v5, 0x1000000

    .line 1347
    goto :goto_4

    .line 1348
    :cond_4
    move v5, v4

    .line 1349
    .line 1350
    :goto_4
    div-int/lit8 v6, v2, 0x64

    .line 1351
    .line 1352
    add-int/lit8 v6, v6, 0x30

    .line 1353
    .line 1354
    shl-int/lit8 v6, v6, 0x10

    .line 1355
    add-int/2addr v5, v6

    .line 1356
    .line 1357
    div-int/lit8 v6, v2, 0xa

    .line 1358
    rem-int/2addr v6, v0

    .line 1359
    .line 1360
    add-int/lit8 v6, v6, 0x30

    .line 1361
    shl-int/2addr v6, v12

    .line 1362
    add-int/2addr v5, v6

    .line 1363
    .line 1364
    rem-int/lit8 v6, v2, 0xa

    .line 1365
    add-int/2addr v5, v6

    .line 1366
    .line 1367
    add-int/lit8 v5, v5, 0x30

    .line 1368
    .line 1369
    aput v5, v3, v2

    .line 1370
    .line 1371
    add-int/lit8 v2, v2, 0x1

    .line 1372
    goto :goto_3

    .line 1373
    :cond_5
    return-void

    .line 1374
    nop

    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
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

.method public static addExact(JJ)J
    .locals 2

    .line 1
    .line 2
    add-long v0, p0, p2

    .line 3
    xor-long/2addr p0, v0

    .line 4
    xor-long/2addr p2, v0

    .line 5
    and-long/2addr p0, p2

    .line 6
    .line 7
    const-wide/16 p2, 0x0

    .line 8
    .line 9
    cmp-long p0, p0, p2

    .line 10
    .line 11
    if-ltz p0, :cond_0

    .line 12
    return-wide v0

    .line 13
    .line 14
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 15
    .line 16
    const-string p1, "long overflow"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 15

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-array p0, v1, [B

    .line 10
    return-object p0

    .line 11
    .line 12
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 13
    move v3, v1

    .line 14
    .line 15
    :goto_0
    if-ge v3, v2, :cond_1

    .line 16
    .line 17
    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->IA:[I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 21
    move-result v5

    .line 22
    .line 23
    and-int/lit16 v5, v5, 0xff

    .line 24
    .line 25
    aget v4, v4, v5

    .line 26
    .line 27
    if-gez v4, :cond_1

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 33
    .line 34
    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->IA:[I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 38
    move-result v5

    .line 39
    .line 40
    and-int/lit16 v5, v5, 0xff

    .line 41
    .line 42
    aget v4, v4, v5

    .line 43
    .line 44
    if-gez v4, :cond_2

    .line 45
    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 51
    move-result v4

    .line 52
    .line 53
    const/16 v5, 0x3d

    .line 54
    const/4 v6, 0x1

    .line 55
    .line 56
    if-ne v4, v5, :cond_4

    .line 57
    .line 58
    add-int/lit8 v4, v2, -0x1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 62
    move-result v4

    .line 63
    .line 64
    if-ne v4, v5, :cond_3

    .line 65
    const/4 v4, 0x2

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v4, v6

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move v4, v1

    .line 70
    .line 71
    :goto_2
    sub-int v5, v2, v3

    .line 72
    add-int/2addr v5, v6

    .line 73
    .line 74
    const/16 v7, 0x4c

    .line 75
    .line 76
    if-le v0, v7, :cond_6

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 80
    move-result v0

    .line 81
    .line 82
    const/16 v7, 0xd

    .line 83
    .line 84
    if-ne v0, v7, :cond_5

    .line 85
    .line 86
    div-int/lit8 v0, v5, 0x4e

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    move v0, v1

    .line 89
    :goto_3
    shl-int/2addr v0, v6

    .line 90
    goto :goto_4

    .line 91
    :cond_6
    move v0, v1

    .line 92
    :goto_4
    sub-int/2addr v5, v0

    .line 93
    .line 94
    mul-int/lit8 v5, v5, 0x6

    .line 95
    .line 96
    shr-int/lit8 v5, v5, 0x3

    .line 97
    sub-int/2addr v5, v4

    .line 98
    .line 99
    new-array v7, v5, [B

    .line 100
    .line 101
    div-int/lit8 v8, v5, 0x3

    .line 102
    .line 103
    mul-int/lit8 v8, v8, 0x3

    .line 104
    move v9, v1

    .line 105
    move v10, v9

    .line 106
    .line 107
    :goto_5
    if-ge v9, v8, :cond_8

    .line 108
    .line 109
    sget-object v11, Lcom/alibaba/fastjson2/util/IOUtils;->IA:[I

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 113
    move-result v12

    .line 114
    .line 115
    aget v12, v11, v12

    .line 116
    .line 117
    shl-int/lit8 v12, v12, 0x12

    .line 118
    .line 119
    add-int/lit8 v13, v3, 0x1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    .line 123
    move-result v13

    .line 124
    .line 125
    aget v13, v11, v13

    .line 126
    .line 127
    shl-int/lit8 v13, v13, 0xc

    .line 128
    or-int/2addr v12, v13

    .line 129
    .line 130
    add-int/lit8 v13, v3, 0x2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    .line 134
    move-result v13

    .line 135
    .line 136
    aget v13, v11, v13

    .line 137
    .line 138
    shl-int/lit8 v13, v13, 0x6

    .line 139
    or-int/2addr v12, v13

    .line 140
    .line 141
    add-int/lit8 v13, v3, 0x3

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    .line 145
    move-result v13

    .line 146
    .line 147
    aget v11, v11, v13

    .line 148
    or-int/2addr v11, v12

    .line 149
    .line 150
    add-int/lit8 v12, v3, 0x4

    .line 151
    .line 152
    shr-int/lit8 v13, v11, 0x10

    .line 153
    int-to-byte v13, v13

    .line 154
    .line 155
    aput-byte v13, v7, v9

    .line 156
    .line 157
    add-int/lit8 v13, v9, 0x1

    .line 158
    .line 159
    shr-int/lit8 v14, v11, 0x8

    .line 160
    int-to-byte v14, v14

    .line 161
    .line 162
    aput-byte v14, v7, v13

    .line 163
    .line 164
    add-int/lit8 v13, v9, 0x2

    .line 165
    int-to-byte v11, v11

    .line 166
    .line 167
    aput-byte v11, v7, v13

    .line 168
    .line 169
    add-int/lit8 v9, v9, 0x3

    .line 170
    .line 171
    if-lez v0, :cond_7

    .line 172
    .line 173
    add-int/lit8 v10, v10, 0x1

    .line 174
    .line 175
    const/16 v11, 0x13

    .line 176
    .line 177
    if-ne v10, v11, :cond_7

    .line 178
    .line 179
    add-int/lit8 v3, v3, 0x6

    .line 180
    move v10, v1

    .line 181
    goto :goto_5

    .line 182
    :cond_7
    move v3, v12

    .line 183
    goto :goto_5

    .line 184
    .line 185
    :cond_8
    if-ge v9, v5, :cond_a

    .line 186
    move v0, v1

    .line 187
    .line 188
    :goto_6
    sub-int v8, v2, v4

    .line 189
    .line 190
    if-gt v3, v8, :cond_9

    .line 191
    .line 192
    sget-object v8, Lcom/alibaba/fastjson2/util/IOUtils;->IA:[I

    .line 193
    .line 194
    add-int/lit8 v10, v3, 0x1

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 198
    move-result v3

    .line 199
    .line 200
    aget v3, v8, v3

    .line 201
    .line 202
    mul-int/lit8 v8, v0, 0x6

    .line 203
    .line 204
    rsub-int/lit8 v8, v8, 0x12

    .line 205
    shl-int/2addr v3, v8

    .line 206
    or-int/2addr v1, v3

    .line 207
    add-int/2addr v0, v6

    .line 208
    move v3, v10

    .line 209
    goto :goto_6

    .line 210
    .line 211
    :cond_9
    const/16 p0, 0x10

    .line 212
    .line 213
    :goto_7
    if-ge v9, v5, :cond_a

    .line 214
    .line 215
    add-int/lit8 v0, v9, 0x1

    .line 216
    .line 217
    shr-int v2, v1, p0

    .line 218
    int-to-byte v2, v2

    .line 219
    .line 220
    aput-byte v2, v7, v9

    .line 221
    .line 222
    add-int/lit8 p0, p0, -0x8

    .line 223
    move v9, v0

    .line 224
    goto :goto_7

    .line 225
    :cond_a
    return-object v7
.end method

.method public static digit2([BI)I
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    const p1, 0xf0f0

    and-int v0, p0, p1

    add-int/lit16 v0, v0, -0x3030

    and-int/lit16 v1, p0, 0xf0f

    add-int/lit16 v2, v1, 0x606

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0xf

    mul-int/lit8 p0, p0, 0xa

    shr-int/lit8 p1, v1, 0x8

    add-int/2addr p0, p1

    return p0
.end method

.method public static digit2([CI)I
    .locals 3

    .line 2
    aget-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    const p1, -0xf0010

    and-int/2addr p1, p0

    const v0, 0x300030

    sub-int/2addr p1, v0

    const v0, 0xf000f

    and-int/2addr v0, p0

    const v1, 0x60006

    add-int/2addr v1, v0

    const v2, 0xf000f0

    and-int/2addr v1, v2

    or-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0xf

    mul-int/lit8 p0, p0, 0xa

    shr-int/lit8 p1, v0, 0x10

    add-int/2addr p0, p1

    return p0
.end method

.method public static encodeUTF8([BII[BI)I
    .locals 8

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_6

    .line 1
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p4, 0x1

    .line 3
    aput-byte v0, p3, p4

    :goto_1
    move p4, p1

    :goto_2
    move p1, v2

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_1

    shr-int/lit8 p1, v0, 0x6

    or-int/lit16 p1, p1, 0xc0

    int-to-byte p1, p1

    .line 4
    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p3, p1

    add-int/lit8 p4, p4, 0x2

    goto :goto_2

    :cond_1
    const v1, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v1, :cond_5

    const v1, 0xe000

    if-ge v0, v1, :cond_5

    add-int/lit8 v4, p1, 0x1

    const v5, 0xdc00

    const/4 v6, -0x1

    if-ge v0, v5, :cond_4

    sub-int v4, p2, v4

    const/4 v7, 0x2

    if-ge v4, v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, p1, 0x2

    .line 6
    aget-byte v2, p0, v2

    add-int/lit8 v4, p1, 0x3

    .line 7
    aget-byte v4, p0, v4

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-char v2, v2

    if-lt v2, v5, :cond_4

    if-ge v2, v1, :cond_4

    add-int/lit8 p1, p1, 0x4

    shl-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    const v1, -0x35fdc00

    add-int v6, v0, v1

    move v2, p1

    :goto_3
    if-gez v6, :cond_3

    add-int/lit8 p1, p4, 0x1

    .line 8
    aput-byte v3, p3, p4

    goto :goto_1

    :cond_3
    shr-int/lit8 p1, v6, 0x12

    or-int/lit16 p1, p1, 0xf0

    int-to-byte p1, p1

    .line 9
    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    shr-int/lit8 v0, v6, 0xc

    and-int/2addr v0, v3

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 10
    aput-byte v0, p3, p1

    add-int/lit8 p1, p4, 0x2

    shr-int/lit8 v0, v6, 0x6

    and-int/2addr v0, v3

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 11
    aput-byte v0, p3, p1

    add-int/lit8 p1, p4, 0x3

    and-int/lit8 v0, v6, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 12
    aput-byte v0, p3, p1

    add-int/lit8 p1, p4, 0x4

    goto/16 :goto_1

    :cond_4
    return v6

    :cond_5
    shr-int/lit8 p1, v0, 0xc

    or-int/lit16 p1, p1, 0xe0

    int-to-byte p1, p1

    .line 13
    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    shr-int/lit8 v1, v0, 0x6

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 14
    aput-byte v1, p3, p1

    add-int/lit8 p1, p4, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 15
    aput-byte v0, p3, p1

    add-int/lit8 p4, p4, 0x3

    goto/16 :goto_2

    :cond_6
    return p4
.end method

.method public static encodeUTF8([CII[BI)I
    .locals 9

    add-int v0, p1, p2

    .line 16
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p4

    :goto_0
    const/16 v1, 0x80

    if-ge p4, p2, :cond_0

    .line 17
    aget-char v2, p0, p1

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, p4, 0x1

    add-int/lit8 p1, p1, 0x1

    int-to-byte v2, v2

    .line 18
    aput-byte v2, p3, p4

    move p4, v1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, v0, :cond_8

    add-int/lit8 p2, p1, 0x1

    .line 19
    aget-char v2, p0, p1

    if-ge v2, v1, :cond_1

    add-int/lit8 p1, p4, 0x1

    int-to-byte v2, v2

    .line 20
    aput-byte v2, p3, p4

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x800

    if-ge v2, v3, :cond_2

    shr-int/lit8 p1, v2, 0x6

    or-int/lit16 p1, p1, 0xc0

    int-to-byte p1, p1

    .line 21
    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 22
    aput-byte v2, p3, p1

    add-int/lit8 p4, p4, 0x2

    goto :goto_4

    :cond_2
    const v3, 0xd800

    const/16 v4, 0x3f

    if-lt v2, v3, :cond_7

    const v3, 0xe000

    if-ge v2, v3, :cond_7

    const v5, 0xdc00

    if-ge v2, v5, :cond_6

    sub-int v6, v0, p1

    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, p1, 0x1

    .line 23
    aget-char v6, p0, v6

    if-lt v6, v5, :cond_5

    if-ge v6, v3, :cond_5

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    const v3, -0x35fdc00

    add-int/2addr v2, v3

    :goto_2
    if-gez v2, :cond_4

    add-int/lit8 p1, p4, 0x1

    .line 24
    aput-byte v4, p3, p4

    goto :goto_3

    :cond_4
    shr-int/lit8 p2, v2, 0x12

    or-int/lit16 p2, p2, 0xf0

    int-to-byte p2, p2

    .line 25
    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    shr-int/lit8 v3, v2, 0xc

    and-int/2addr v3, v4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    .line 26
    aput-byte v3, p3, p2

    add-int/lit8 p2, p4, 0x2

    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    .line 27
    aput-byte v3, p3, p2

    add-int/lit8 p2, p4, 0x3

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 28
    aput-byte v2, p3, p2

    add-int/lit8 p2, p4, 0x4

    add-int/lit8 p1, p1, 0x2

    move v8, p2

    move p2, p1

    move p1, v8

    goto :goto_3

    :cond_5
    add-int/lit8 p1, p4, 0x1

    .line 29
    aput-byte v4, p3, p4

    :goto_3
    move p4, p1

    :goto_4
    move p1, p2

    goto/16 :goto_1

    :cond_6
    add-int/lit8 p1, p4, 0x1

    .line 30
    aput-byte v4, p3, p4

    goto :goto_3

    :cond_7
    shr-int/lit8 p1, v2, 0xc

    or-int/lit16 p1, p1, 0xe0

    int-to-byte p1, p1

    .line 31
    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    .line 32
    aput-byte v3, p3, p1

    add-int/lit8 p1, p4, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 33
    aput-byte v2, p3, p1

    add-int/lit8 p4, p4, 0x3

    goto :goto_4

    :cond_8
    return p4
.end method

.method public static floorDiv(JJ)J
    .locals 6

    .line 1
    .line 2
    div-long v0, p0, p2

    .line 3
    .line 4
    xor-long v2, p0, p2

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v2, v2, v4

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    mul-long/2addr p2, v0

    .line 12
    .line 13
    cmp-long p0, p2, p0

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-wide/16 p0, 0x1

    .line 18
    sub-long/2addr v0, p0

    .line 19
    :cond_0
    return-wide v0
.end method

.method public static floorMod(JJ)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 4
    move-result-wide v0

    .line 5
    mul-long/2addr v0, p2

    .line 6
    sub-long/2addr p0, v0

    .line 7
    return-wide p0
.end method

.method public static getChars(JI[C)V
    .locals 10

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    neg-long p0, p0

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_1
    const-wide/32 v1, -0x80000000

    .line 16
    .line 17
    cmp-long v1, p0, v1

    .line 18
    .line 19
    if-gtz v1, :cond_2

    .line 20
    .line 21
    const-wide/16 v1, 0x64

    .line 22
    .line 23
    div-long v3, p0, v1

    .line 24
    .line 25
    add-int/lit8 p2, p2, -0x2

    .line 26
    .line 27
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 28
    .line 29
    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    .line 30
    .line 31
    shl-int/lit8 v8, p2, 0x1

    .line 32
    int-to-long v8, v8

    .line 33
    add-long/2addr v6, v8

    .line 34
    .line 35
    sget-object v8, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    .line 36
    mul-long/2addr v1, v3

    .line 37
    sub-long/2addr v1, p0

    .line 38
    long-to-int p0, v1

    .line 39
    .line 40
    aget p0, v8, p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, p3, v6, v7, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 44
    move-wide p0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    long-to-int p0, p0

    .line 47
    .line 48
    :goto_2
    const/16 p1, -0x64

    .line 49
    .line 50
    if-gt p0, p1, :cond_3

    .line 51
    .line 52
    div-int/lit8 p1, p0, 0x64

    .line 53
    .line 54
    add-int/lit8 p2, p2, -0x2

    .line 55
    .line 56
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 57
    .line 58
    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    .line 59
    .line 60
    shl-int/lit8 v4, p2, 0x1

    .line 61
    int-to-long v4, v4

    .line 62
    add-long/2addr v2, v4

    .line 63
    .line 64
    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    .line 65
    .line 66
    mul-int/lit8 v5, p1, 0x64

    .line 67
    sub-int/2addr v5, p0

    .line 68
    .line 69
    aget p0, v4, v5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p3, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 73
    move p0, p1

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_3
    const/16 p1, -0x9

    .line 77
    .line 78
    if-ge p0, p1, :cond_4

    .line 79
    .line 80
    add-int/lit8 p2, p2, -0x2

    .line 81
    .line 82
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 83
    .line 84
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    .line 85
    .line 86
    shl-int/lit8 v3, p2, 0x1

    .line 87
    int-to-long v3, v3

    .line 88
    add-long/2addr v1, v3

    .line 89
    .line 90
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    .line 91
    neg-int p0, p0

    .line 92
    .line 93
    aget p0, v3, p0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p3, v1, v2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 97
    goto :goto_3

    .line 98
    .line 99
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 100
    .line 101
    rsub-int/lit8 p0, p0, 0x30

    .line 102
    int-to-char p0, p0

    .line 103
    .line 104
    aput-char p0, p3, p2

    .line 105
    .line 106
    :goto_3
    if-eqz v0, :cond_5

    .line 107
    .line 108
    add-int/lit8 p2, p2, -0x1

    .line 109
    .line 110
    const/16 p0, 0x2d

    .line 111
    .line 112
    aput-char p0, p3, p2

    .line 113
    :cond_5
    return-void
.end method

.method public static getInt([BI)I
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 5
    int-to-long v3, p1

    .line 6
    add-long/2addr v1, v3

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 10
    move-result p0

    .line 11
    .line 12
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    return p0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_6

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x30

    if-lt v4, v3, :cond_2

    const/16 v3, 0x39

    if-le v4, v3, :cond_4

    :cond_2
    return v1

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v1

    :cond_6
    return v3
.end method

.method public static isNumber([BII)Z
    .locals 6

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    add-int v1, p1, p2

    move v2, p1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_6

    .line 4
    aget-byte v4, p0, v2

    int-to-char v4, v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x30

    if-lt v4, v3, :cond_2

    const/16 v3, 0x39

    if-le v4, v3, :cond_4

    :cond_2
    return v0

    :cond_3
    :goto_1
    if-ne v2, p1, :cond_5

    if-ne p2, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0

    :cond_6
    return v3
.end method

.method public static isNumber([CII)Z
    .locals 6

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    add-int v1, p1, p2

    move v2, p1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_6

    .line 3
    aget-char v4, p0, v2

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x30

    if-lt v4, v3, :cond_2

    const/16 v3, 0x39

    if-le v4, v3, :cond_4

    :cond_2
    return v0

    :cond_3
    :goto_1
    if-ne v2, p1, :cond_5

    if-ne p2, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0

    :cond_6
    return v3
.end method

.method public static multiplyExact(JJ)J
    .locals 6

    .line 1
    .line 2
    mul-long v0, p0, p2

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 6
    move-result-wide v2

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .line 10
    move-result-wide v4

    .line 11
    or-long/2addr v2, v4

    .line 12
    .line 13
    const/16 v4, 0x1f

    .line 14
    ushr-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    cmp-long v2, p2, v4

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    div-long v2, v0, p2

    .line 27
    .line 28
    cmp-long v2, v2, p0

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 33
    .line 34
    cmp-long p0, p0, v2

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    const-wide/16 p0, -0x1

    .line 39
    .line 40
    cmp-long p0, p2, p0

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 46
    .line 47
    const-string p1, "long overflow"

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static stringSize(I)I
    .locals 2

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 6

    .line 1
    const-wide/16 v0, 0xa

    const/4 v2, 0x1

    move-wide v3, v0

    :goto_0
    const/16 v5, 0x13

    if-ge v2, v5, :cond_1

    cmp-long v5, p0, v3

    if-gez v5, :cond_0

    return v2

    :cond_0
    mul-long/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public static writeDecimal([BIJI)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 1
    aput-byte v1, p0, p1

    neg-long p2, p2

    move p1, v0

    :cond_0
    if-nez p4, :cond_1

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v0

    sub-int/2addr v0, p4

    const/16 v1, 0x2e

    const/16 v2, 0x30

    if-nez v0, :cond_2

    .line 4
    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    .line 5
    aput-byte v1, p0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    if-gez v0, :cond_3

    .line 6
    aput-byte v2, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 7
    aput-byte v1, p0, v3

    add-int/lit8 p1, p1, 0x2

    const/4 v3, 0x0

    :goto_0
    neg-int v4, v0

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p1, 0x1

    .line 8
    aput-byte v2, p0, p1

    add-int/lit8 v3, v3, 0x1

    move p1, v4

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result p1

    if-lez v0, :cond_4

    sub-int p2, p1, p4

    add-int/lit8 p3, p2, 0x1

    .line 10
    invoke-static {p0, p2, p0, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    aput-byte v1, p0, p2

    add-int/lit8 p1, p1, 0x1

    :cond_4
    return p1
.end method

.method public static writeDecimal([CIJI)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 12
    aput-char v1, p0, p1

    neg-long p2, p2

    move p1, v0

    :cond_0
    if-nez p4, :cond_1

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result p0

    return p0

    .line 14
    :cond_1
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v0

    sub-int/2addr v0, p4

    const/16 v1, 0x2e

    const/16 v2, 0x30

    if-nez v0, :cond_2

    .line 15
    aput-char v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    .line 16
    aput-char v1, p0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    if-gez v0, :cond_3

    .line 17
    aput-char v2, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 18
    aput-char v1, p0, v3

    add-int/lit8 p1, p1, 0x2

    const/4 v3, 0x0

    :goto_0
    neg-int v4, v0

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p1, 0x1

    .line 19
    aput-char v2, p0, p1

    add-int/lit8 v3, v3, 0x1

    move p1, v4

    goto :goto_0

    .line 20
    :cond_3
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result p1

    if-lez v0, :cond_4

    sub-int p2, p1, p4

    add-int/lit8 p3, p2, 0x1

    .line 21
    invoke-static {p0, p2, p0, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    aput-char v1, p0, p2

    add-int/lit8 p1, p1, 0x1

    :cond_4
    return p1
.end method

.method public static writeInt32([BII)I
    .locals 5

    if-gez p2, :cond_1

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 1
    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_INT_BYTES:[B

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    array-length p0, p2

    add-int/2addr p1, p0

    return p1

    :cond_0
    neg-int p2, p2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 3
    aput-byte v1, p0, p1

    move p1, v0

    :cond_1
    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-ge p2, v0, :cond_4

    .line 4
    sget-object v0, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget p2, v0, p2

    shr-int/lit8 v0, p2, 0x18

    if-nez v0, :cond_2

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 7
    aput-byte v1, p0, p1

    move p1, v0

    :cond_3
    :goto_0
    add-int/lit8 v0, p1, 0x1

    int-to-byte p2, p2

    .line 8
    aput-byte p2, p0, p1

    return v0

    .line 9
    :cond_4
    div-int/lit16 v0, p2, 0x3e8

    mul-int/lit16 v2, v0, 0x3e8

    sub-int v2, p2, v2

    .line 10
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget v2, v3, v2

    const v4, 0xf4240

    if-ge p2, v4, :cond_7

    .line 11
    aget p2, v3, v0

    shr-int/lit8 v0, p2, 0x18

    if-nez v0, :cond_5

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 12
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 13
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 14
    aput-byte v1, p0, p1

    move p1, v0

    :cond_6
    :goto_1
    int-to-byte p2, p2

    .line 15
    aput-byte p2, p0, p1

    add-int/lit8 p2, p1, 0x1

    shr-int/lit8 v0, v2, 0x10

    int-to-byte v0, v0

    .line 16
    aput-byte v0, p0, p2

    add-int/lit8 p2, p1, 0x2

    shr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    .line 17
    aput-byte v0, p0, p2

    add-int/lit8 p2, p1, 0x3

    int-to-byte v0, v2

    .line 18
    aput-byte v0, p0, p2

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 19
    :cond_7
    div-int/lit16 p2, v0, 0x3e8

    mul-int/lit16 v4, p2, 0x3e8

    sub-int/2addr v0, v4

    .line 20
    div-int/lit16 v4, p2, 0x3e8

    .line 21
    aget v0, v3, v0

    if-nez v4, :cond_a

    .line 22
    aget p2, v3, p2

    shr-int/lit8 v3, p2, 0x18

    if-nez v3, :cond_8

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 23
    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    .line 24
    aput-byte v3, p0, v1

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_8
    if-ne v3, v1, :cond_9

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    .line 25
    aput-byte v3, p0, p1

    move p1, v1

    :cond_9
    :goto_2
    add-int/lit8 v1, p1, 0x1

    int-to-byte p2, p2

    .line 26
    aput-byte p2, p0, p1

    goto :goto_3

    :cond_a
    mul-int/lit16 v1, v4, 0x3e8

    sub-int/2addr p2, v1

    add-int/lit8 v4, v4, 0x30

    int-to-byte v1, v4

    .line 27
    aput-byte v1, p0, p1

    .line 28
    aget p2, v3, p2

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    .line 29
    aput-byte v3, p0, v1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    .line 30
    aput-byte v3, p0, v1

    add-int/lit8 v1, p1, 0x3

    int-to-byte p2, p2

    .line 31
    aput-byte p2, p0, v1

    add-int/lit8 v1, p1, 0x4

    :goto_3
    shr-int/lit8 p1, v0, 0x10

    int-to-byte p1, p1

    .line 32
    aput-byte p1, p0, v1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 p2, v0, 0x8

    int-to-byte p2, p2

    .line 33
    aput-byte p2, p0, p1

    add-int/lit8 p1, v1, 0x2

    int-to-byte p2, v0

    .line 34
    aput-byte p2, p0, p1

    add-int/lit8 p1, v1, 0x3

    shr-int/lit8 p2, v2, 0x10

    int-to-byte p2, p2

    .line 35
    aput-byte p2, p0, p1

    add-int/lit8 p1, v1, 0x4

    shr-int/lit8 p2, v2, 0x8

    int-to-byte p2, p2

    .line 36
    aput-byte p2, p0, p1

    add-int/lit8 p1, v1, 0x5

    int-to-byte p2, v2

    .line 37
    aput-byte p2, p0, p1

    add-int/lit8 v1, v1, 0x6

    return v1
.end method

.method public static writeInt32([CII)I
    .locals 5

    if-gez p2, :cond_1

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 38
    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_INT_CHARS:[C

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length p0, p2

    add-int/2addr p1, p0

    return p1

    :cond_0
    neg-int p2, p2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 40
    aput-char v1, p0, p1

    move p1, v0

    :cond_1
    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-ge p2, v0, :cond_4

    .line 41
    sget-object v0, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget p2, v0, p2

    shr-int/lit8 v0, p2, 0x18

    if-nez v0, :cond_2

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 42
    aput-char v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 43
    aput-char v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 44
    aput-char v1, p0, p1

    move p1, v0

    :cond_3
    :goto_0
    add-int/lit8 v0, p1, 0x1

    int-to-byte p2, p2

    int-to-char p2, p2

    .line 45
    aput-char p2, p0, p1

    return v0

    .line 46
    :cond_4
    div-int/lit16 v0, p2, 0x3e8

    mul-int/lit16 v2, v0, 0x3e8

    sub-int v2, p2, v2

    .line 47
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget v2, v3, v2

    const v4, 0xf4240

    if-ge p2, v4, :cond_7

    .line 48
    aget p2, v3, v0

    shr-int/lit8 v0, p2, 0x18

    if-nez v0, :cond_5

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 49
    aput-char v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 50
    aput-char v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 51
    aput-char v1, p0, p1

    move p1, v0

    :cond_6
    :goto_1
    int-to-byte p2, p2

    int-to-char p2, p2

    .line 52
    aput-char p2, p0, p1

    add-int/lit8 p2, p1, 0x1

    shr-int/lit8 v0, v2, 0x10

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 53
    aput-char v0, p0, p2

    add-int/lit8 p2, p1, 0x2

    shr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 54
    aput-char v0, p0, p2

    add-int/lit8 p2, p1, 0x3

    int-to-byte v0, v2

    int-to-char v0, v0

    .line 55
    aput-char v0, p0, p2

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 56
    :cond_7
    div-int/lit16 p2, v0, 0x3e8

    mul-int/lit16 v4, p2, 0x3e8

    sub-int/2addr v0, v4

    .line 57
    div-int/lit16 v4, p2, 0x3e8

    .line 58
    aget v0, v3, v0

    if-nez v4, :cond_a

    .line 59
    aget p2, v3, p2

    shr-int/lit8 v3, p2, 0x18

    if-nez v3, :cond_8

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 60
    aput-char v1, p0, p1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 61
    aput-char v3, p0, v1

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_8
    if-ne v3, v1, :cond_9

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 62
    aput-char v3, p0, p1

    move p1, v1

    :cond_9
    :goto_2
    add-int/lit8 v1, p1, 0x1

    int-to-byte p2, p2

    int-to-char p2, p2

    .line 63
    aput-char p2, p0, p1

    goto :goto_3

    :cond_a
    mul-int/lit16 v1, v4, 0x3e8

    sub-int/2addr p2, v1

    add-int/lit8 v4, v4, 0x30

    int-to-byte v1, v4

    int-to-char v1, v1

    .line 64
    aput-char v1, p0, p1

    .line 65
    aget p2, v3, p2

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 66
    aput-char v3, p0, v1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 67
    aput-char v3, p0, v1

    add-int/lit8 v1, p1, 0x3

    int-to-byte p2, p2

    int-to-char p2, p2

    .line 68
    aput-char p2, p0, v1

    add-int/lit8 v1, p1, 0x4

    :goto_3
    shr-int/lit8 p1, v0, 0x10

    int-to-byte p1, p1

    int-to-char p1, p1

    .line 69
    aput-char p1, p0, v1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 p2, v0, 0x8

    int-to-byte p2, p2

    int-to-char p2, p2

    .line 70
    aput-char p2, p0, p1

    add-int/lit8 p1, v1, 0x2

    int-to-byte p2, v0

    int-to-char p2, p2

    .line 71
    aput-char p2, p0, p1

    add-int/lit8 p1, v1, 0x3

    shr-int/lit8 p2, v2, 0x10

    int-to-byte p2, p2

    int-to-char p2, p2

    .line 72
    aput-char p2, p0, p1

    add-int/lit8 p1, v1, 0x4

    shr-int/lit8 p2, v2, 0x8

    int-to-byte p2, p2

    int-to-char p2, p2

    .line 73
    aput-char p2, p0, p1

    add-int/lit8 p1, v1, 0x5

    int-to-byte p2, v2

    int-to-char p2, p2

    .line 74
    aput-char p2, p0, p1

    add-int/lit8 v1, v1, 0x6

    return v1
.end method

.method public static writeInt64([BIJ)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1
    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_LONG:[B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    array-length v0, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    neg-long v2, v2

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x2d

    .line 3
    aput-byte v5, v0, v1

    move v1, v4

    :cond_1
    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-gez v6, :cond_4

    .line 4
    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    long-to-int v2, v2

    aget v2, v4, v2

    shr-int/lit8 v3, v2, 0x18

    if-nez v3, :cond_2

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    .line 5
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    if-ne v3, v7, :cond_3

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v0, v1

    move v1, v3

    :cond_3
    :goto_0
    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 8
    aput-byte v2, v0, v1

    return v3

    .line 9
    :cond_4
    div-long v8, v2, v4

    mul-long v10, v8, v4

    sub-long v10, v2, v10

    long-to-int v6, v10

    .line 10
    sget-object v10, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget v6, v10, v6

    const-wide/32 v11, 0xf4240

    cmp-long v11, v2, v11

    if-gez v11, :cond_7

    long-to-int v2, v8

    .line 11
    aget v2, v10, v2

    shr-int/lit8 v3, v2, 0x18

    if-nez v3, :cond_5

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    .line 12
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 13
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_5
    if-ne v3, v7, :cond_6

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 14
    aput-byte v4, v0, v1

    move v1, v3

    :cond_6
    :goto_1
    int-to-byte v2, v2

    .line 15
    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v6, 0x10

    int-to-byte v3, v3

    .line 16
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    .line 17
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, v6

    .line 18
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x4

    return v1

    .line 19
    :cond_7
    div-long v11, v8, v4

    mul-long v13, v11, v4

    sub-long/2addr v8, v13

    long-to-int v8, v8

    .line 20
    aget v8, v10, v8

    const-wide/32 v13, 0x3b9aca00

    cmp-long v9, v2, v13

    if-gez v9, :cond_a

    long-to-int v2, v11

    .line 21
    aget v2, v10, v2

    shr-int/lit8 v3, v2, 0x18

    if-nez v3, :cond_8

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    .line 22
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 23
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_8
    if-ne v3, v7, :cond_9

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 24
    aput-byte v4, v0, v1

    move v1, v3

    :cond_9
    :goto_2
    int-to-byte v2, v2

    .line 25
    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    .line 26
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    .line 27
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, v8

    .line 28
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x4

    shr-int/lit8 v3, v6, 0x10

    int-to-byte v3, v3

    .line 29
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x5

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    .line 30
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x6

    int-to-byte v3, v6

    .line 31
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x7

    return v1

    .line 32
    :cond_a
    div-long v13, v11, v4

    mul-long v15, v13, v4

    sub-long/2addr v11, v15

    long-to-int v9, v11

    .line 33
    aget v9, v10, v9

    const-wide v11, 0xe8d4a51000L

    cmp-long v11, v2, v11

    if-gez v11, :cond_d

    long-to-int v2, v13

    .line 34
    aget v2, v10, v2

    shr-int/lit8 v3, v2, 0x18

    if-nez v3, :cond_b

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    .line 35
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 36
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_b
    if-ne v3, v7, :cond_c

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 37
    aput-byte v4, v0, v1

    move v1, v3

    :cond_c
    :goto_3
    int-to-byte v2, v2

    .line 38
    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v9, 0x10

    int-to-byte v3, v3

    .line 39
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, v9, 0x8

    int-to-byte v3, v3

    .line 40
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, v9

    .line 41
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x4

    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    .line 42
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x5

    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    .line 43
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x6

    int-to-byte v3, v8

    .line 44
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x7

    shr-int/lit8 v3, v6, 0x10

    int-to-byte v3, v3

    .line 45
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x8

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    .line 46
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x9

    int-to-byte v3, v6

    .line 47
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0xa

    return v1

    .line 48
    :cond_d
    div-long v4, v13, v4

    long-to-int v4, v4

    mul-int/lit16 v5, v4, 0x3e8

    int-to-long v11, v5

    sub-long/2addr v13, v11

    long-to-int v5, v13

    .line 49
    aget v5, v10, v5

    const-wide v11, 0x38d7ea4c68000L

    cmp-long v2, v2, v11

    if-gez v2, :cond_10

    .line 50
    aget v2, v10, v4

    shr-int/lit8 v3, v2, 0x18

    if-nez v3, :cond_e

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    .line 51
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 52
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_e
    if-ne v3, v7, :cond_f

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 53
    aput-byte v4, v0, v1

    move v1, v3

    :cond_f
    :goto_4
    int-to-byte v2, v2

    .line 54
    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v5, 0x10

    int-to-byte v3, v3

    .line 55
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, v5, 0x8

    int-to-byte v3, v3

    .line 56
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, v5

    .line 57
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x4

    shr-int/lit8 v3, v9, 0x10

    int-to-byte v3, v3

    .line 58
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x5

    shr-int/lit8 v3, v9, 0x8

    int-to-byte v3, v3

    .line 59
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x6

    int-to-byte v3, v9

    .line 60
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x7

    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    .line 61
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x8

    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    .line 62
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x9

    int-to-byte v3, v8

    .line 63
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0xa

    shr-int/lit8 v3, v6, 0x10

    int-to-byte v3, v3

    .line 64
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0xb

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    .line 65
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0xc

    int-to-byte v3, v6

    .line 66
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0xd

    return v1

    .line 67
    :cond_10
    div-int/lit16 v2, v4, 0x3e8

    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v4, v3

    .line 68
    div-int/lit16 v3, v2, 0x3e8

    .line 69
    aget v4, v10, v4

    if-nez v3, :cond_13

    .line 70
    aget v2, v10, v2

    shr-int/lit8 v3, v2, 0x18

    if-nez v3, :cond_11

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    .line 71
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    .line 72
    aput-byte v7, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_11
    if-ne v3, v7, :cond_12

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    .line 73
    aput-byte v7, v0, v1

    move v1, v3

    :cond_12
    :goto_5
    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 74
    aput-byte v2, v0, v1

    goto :goto_6

    :cond_13
    mul-int/lit16 v7, v3, 0x3e8

    sub-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    .line 75
    aput-byte v3, v0, v1

    .line 76
    aget v2, v10, v2

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    .line 77
    aput-byte v7, v0, v3

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    .line 78
    aput-byte v7, v0, v3

    add-int/lit8 v3, v1, 0x3

    int-to-byte v2, v2

    .line 79
    aput-byte v2, v0, v3

    add-int/lit8 v3, v1, 0x4

    :goto_6
    shr-int/lit8 v1, v4, 0x10

    int-to-byte v1, v1

    .line 80
    aput-byte v1, v0, v3

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    .line 81
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x2

    int-to-byte v2, v4

    .line 82
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x3

    shr-int/lit8 v2, v5, 0x10

    int-to-byte v2, v2

    .line 83
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x4

    shr-int/lit8 v2, v5, 0x8

    int-to-byte v2, v2

    .line 84
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x5

    int-to-byte v2, v5

    .line 85
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x6

    shr-int/lit8 v2, v9, 0x10

    int-to-byte v2, v2

    .line 86
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x7

    shr-int/lit8 v2, v9, 0x8

    int-to-byte v2, v2

    .line 87
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x8

    int-to-byte v2, v9

    .line 88
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x9

    shr-int/lit8 v2, v8, 0x10

    int-to-byte v2, v2

    .line 89
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0xa

    shr-int/lit8 v2, v8, 0x8

    int-to-byte v2, v2

    .line 90
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0xb

    int-to-byte v2, v8

    .line 91
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0xc

    shr-int/lit8 v2, v6, 0x10

    int-to-byte v2, v2

    .line 92
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0xd

    shr-int/lit8 v2, v6, 0x8

    int-to-byte v2, v2

    .line 93
    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0xe

    int-to-byte v2, v6

    .line 94
    aput-byte v2, v0, v1

    add-int/lit8 v3, v3, 0xf

    return v3
.end method

.method public static writeInt64([CIJ)I
    .locals 16

    move-wide/from16 v0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 95
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_LONG:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int v2, p1, v0

    .line 96
    aget-byte v1, v1, v0

    int-to-char v1, v1

    aput-char v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    array-length v0, v1

    add-int v0, p1, v0

    return v0

    :cond_1
    neg-long v0, v0

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x2d

    .line 98
    aput-char v3, p0, p1

    goto :goto_1

    :cond_2
    move/from16 v2, p1

    :goto_1
    const-wide/16 v3, 0x3e8

    cmp-long v5, v0, v3

    const/4 v6, 0x1

    if-gez v5, :cond_5

    .line 99
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    long-to-int v0, v0

    aget v0, v3, v0

    shr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_3

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 100
    aput-char v1, p0, v2

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 101
    aput-char v3, p0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    if-ne v1, v6, :cond_4

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 102
    aput-char v3, p0, v2

    move v2, v1

    :cond_4
    :goto_2
    add-int/lit8 v1, v2, 0x1

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 103
    aput-char v0, p0, v2

    return v1

    .line 104
    :cond_5
    div-long v7, v0, v3

    mul-long v9, v7, v3

    sub-long v9, v0, v9

    long-to-int v5, v9

    .line 105
    sget-object v9, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget v5, v9, v5

    const-wide/32 v10, 0xf4240

    cmp-long v10, v0, v10

    if-gez v10, :cond_8

    long-to-int v0, v7

    .line 106
    aget v0, v9, v0

    shr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_6

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 107
    aput-char v1, p0, v2

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 108
    aput-char v3, p0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_6
    if-ne v1, v6, :cond_7

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 109
    aput-char v3, p0, v2

    move v2, v1

    :cond_7
    :goto_3
    int-to-byte v0, v0

    int-to-char v0, v0

    .line 110
    aput-char v0, p0, v2

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v1, v5, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 111
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x2

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 112
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x3

    int-to-byte v1, v5

    int-to-char v1, v1

    .line 113
    aput-char v1, p0, v0

    add-int/lit8 v2, v2, 0x4

    return v2

    .line 114
    :cond_8
    div-long v10, v7, v3

    mul-long v12, v10, v3

    sub-long/2addr v7, v12

    long-to-int v7, v7

    .line 115
    aget v7, v9, v7

    const-wide/32 v12, 0x3b9aca00

    cmp-long v8, v0, v12

    if-gez v8, :cond_b

    long-to-int v0, v10

    .line 116
    aget v0, v9, v0

    shr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_9

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 117
    aput-char v1, p0, v2

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 118
    aput-char v3, p0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_9
    if-ne v1, v6, :cond_a

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 119
    aput-char v3, p0, v2

    move v2, v1

    :cond_a
    :goto_4
    int-to-byte v0, v0

    int-to-char v0, v0

    .line 120
    aput-char v0, p0, v2

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v1, v7, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 121
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x2

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 122
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x3

    int-to-byte v1, v7

    int-to-char v1, v1

    .line 123
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x4

    shr-int/lit8 v1, v5, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 124
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x5

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 125
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x6

    int-to-byte v1, v5

    int-to-char v1, v1

    .line 126
    aput-char v1, p0, v0

    add-int/lit8 v2, v2, 0x7

    return v2

    .line 127
    :cond_b
    div-long v12, v10, v3

    mul-long v14, v12, v3

    sub-long/2addr v10, v14

    long-to-int v8, v10

    .line 128
    aget v8, v9, v8

    const-wide v10, 0xe8d4a51000L

    cmp-long v10, v0, v10

    if-gez v10, :cond_e

    long-to-int v0, v12

    .line 129
    aget v0, v9, v0

    shr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_c

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 130
    aput-char v1, p0, v2

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 131
    aput-char v3, p0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    :cond_c
    if-ne v1, v6, :cond_d

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 132
    aput-char v3, p0, v2

    move v2, v1

    :cond_d
    :goto_5
    int-to-byte v0, v0

    int-to-char v0, v0

    .line 133
    aput-char v0, p0, v2

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v1, v8, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 134
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x2

    shr-int/lit8 v1, v8, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 135
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x3

    int-to-byte v1, v8

    int-to-char v1, v1

    .line 136
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x4

    shr-int/lit8 v1, v7, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 137
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x5

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 138
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x6

    int-to-byte v1, v7

    int-to-char v1, v1

    .line 139
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x7

    shr-int/lit8 v1, v5, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 140
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x8

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 141
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x9

    int-to-byte v1, v5

    int-to-char v1, v1

    .line 142
    aput-char v1, p0, v0

    add-int/lit8 v2, v2, 0xa

    return v2

    .line 143
    :cond_e
    div-long v3, v12, v3

    long-to-int v3, v3

    mul-int/lit16 v4, v3, 0x3e8

    int-to-long v10, v4

    sub-long/2addr v12, v10

    long-to-int v4, v12

    .line 144
    aget v4, v9, v4

    const-wide v10, 0x38d7ea4c68000L

    cmp-long v0, v0, v10

    if-gez v0, :cond_11

    .line 145
    aget v0, v9, v3

    shr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_f

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 146
    aput-char v1, p0, v2

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 147
    aput-char v3, p0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_6

    :cond_f
    if-ne v1, v6, :cond_10

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 148
    aput-char v3, p0, v2

    move v2, v1

    :cond_10
    :goto_6
    int-to-byte v0, v0

    int-to-char v0, v0

    .line 149
    aput-char v0, p0, v2

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v1, v4, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 150
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x2

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 151
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x3

    int-to-byte v1, v4

    int-to-char v1, v1

    .line 152
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x4

    shr-int/lit8 v1, v8, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 153
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x5

    shr-int/lit8 v1, v8, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 154
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x6

    int-to-byte v1, v8

    int-to-char v1, v1

    .line 155
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x7

    shr-int/lit8 v1, v7, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 156
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x8

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 157
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0x9

    int-to-byte v1, v7

    int-to-char v1, v1

    .line 158
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0xa

    shr-int/lit8 v1, v5, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 159
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0xb

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 160
    aput-char v1, p0, v0

    add-int/lit8 v0, v2, 0xc

    int-to-byte v1, v5

    int-to-char v1, v1

    .line 161
    aput-char v1, p0, v0

    add-int/lit8 v2, v2, 0xd

    return v2

    .line 162
    :cond_11
    div-int/lit16 v0, v3, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr v3, v1

    .line 163
    div-int/lit16 v1, v0, 0x3e8

    .line 164
    aget v3, v9, v3

    if-nez v1, :cond_14

    .line 165
    aget v0, v9, v0

    shr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_12

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 166
    aput-char v1, p0, v2

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    int-to-char v6, v6

    .line 167
    aput-char v6, p0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    :cond_12
    if-ne v1, v6, :cond_13

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    int-to-char v6, v6

    .line 168
    aput-char v6, p0, v2

    move v2, v1

    :cond_13
    :goto_7
    add-int/lit8 v1, v2, 0x1

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 169
    aput-char v0, p0, v2

    goto :goto_8

    :cond_14
    mul-int/lit16 v6, v1, 0x3e8

    sub-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x30

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 170
    aput-char v1, p0, v2

    .line 171
    aget v0, v9, v0

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    int-to-char v6, v6

    .line 172
    aput-char v6, p0, v1

    add-int/lit8 v1, v2, 0x2

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    int-to-char v6, v6

    .line 173
    aput-char v6, p0, v1

    add-int/lit8 v1, v2, 0x3

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 174
    aput-char v0, p0, v1

    add-int/lit8 v1, v2, 0x4

    :goto_8
    shr-int/lit8 v0, v3, 0x10

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 175
    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 176
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x2

    int-to-byte v2, v3

    int-to-char v2, v2

    .line 177
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x3

    shr-int/lit8 v2, v4, 0x10

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 178
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x4

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 179
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x5

    int-to-byte v2, v4

    int-to-char v2, v2

    .line 180
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x6

    shr-int/lit8 v2, v8, 0x10

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 181
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x7

    shr-int/lit8 v2, v8, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 182
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x8

    int-to-byte v2, v8

    int-to-char v2, v2

    .line 183
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x9

    shr-int/lit8 v2, v7, 0x10

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 184
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0xa

    shr-int/lit8 v2, v7, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 185
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0xb

    int-to-byte v2, v7

    int-to-char v2, v2

    .line 186
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0xc

    shr-int/lit8 v2, v5, 0x10

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 187
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0xd

    shr-int/lit8 v2, v5, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 188
    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0xe

    int-to-byte v2, v5

    int-to-char v2, v2

    .line 189
    aput-char v2, p0, v0

    add-int/lit8 v1, v1, 0xf

    return v1
.end method

.method public static writeLocalDate([BIIII)I
    .locals 10

    const/16 v0, 0x2d

    if-gez p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 1
    aput-byte v0, p0, p1

    neg-int p2, p2

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x270f

    if-le p2, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x2b

    .line 2
    aput-byte v2, p0, p1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    .line 3
    div-int/lit8 v1, p2, 0x64

    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p2, v2

    .line 4
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, p1

    add-long v7, v3, v5

    sget-object v9, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v1, v9, v1

    invoke-virtual {v2, p0, v7, v8, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 5
    aget-short p2, v9, p2

    invoke-virtual {v2, p0, v3, v4, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    .line 7
    :goto_2
    aput-byte v0, p0, p1

    .line 8
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long v5, v1, v3

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p3, v7, p3

    invoke-virtual {p2, p0, v5, v6, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p3, p1, 0x3

    .line 9
    aput-byte v0, p0, p3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    .line 10
    aget-short p3, v7, p4

    invoke-virtual {p2, p0, v1, v2, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p1, 0x6

    return p1
.end method

.method public static writeLocalDate([CIIII)I
    .locals 8

    const/16 v0, 0x2d

    if-gez p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 11
    aput-char v0, p0, p1

    neg-int p2, p2

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x270f

    if-le p2, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x2b

    .line 12
    aput-char v2, p0, p1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    .line 13
    div-int/lit8 v1, p2, 0x64

    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p2, v2

    .line 14
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v5, p1, 0x1

    int-to-long v5, v5

    add-long/2addr v5, v3

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v1, v7, v1

    invoke-virtual {v2, p0, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, p1, 0x2

    shl-int/lit8 v1, v1, 0x1

    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 15
    aget p2, v7, p2

    invoke-virtual {v2, p0, v3, v4, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    .line 17
    :goto_2
    aput-char v0, p0, p1

    .line 18
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v3, p1, 0x1

    shl-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    add-long/2addr v3, v1

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p3, v5, p3

    invoke-virtual {p2, p0, v3, v4, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p3, p1, 0x3

    .line 19
    aput-char v0, p0, p3

    add-int/lit8 p3, p1, 0x4

    shl-int/lit8 p3, p3, 0x1

    int-to-long v3, p3

    add-long/2addr v1, v3

    .line 20
    aget p3, v5, p4

    invoke-virtual {p2, p0, v1, v2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p1, 0x6

    return p1
.end method

.method public static writeLocalTime([BILcom/alibaba/fastjson2/time/LocalTime;)I
    .locals 6

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    iget-byte v1, p2, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    aget v1, v0, v1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 2
    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p0, v2

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x3a

    .line 4
    aput-byte v2, p0, v1

    .line 5
    iget-byte v1, p2, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    aget v1, v0, v1

    add-int/lit8 v3, p1, 0x3

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    .line 6
    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x4

    int-to-byte v1, v1

    .line 7
    aput-byte v1, p0, v3

    add-int/lit8 v1, p1, 0x5

    .line 8
    aput-byte v2, p0, v1

    .line 9
    iget-byte v1, p2, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    aget v1, v0, v1

    add-int/lit8 v2, p1, 0x6

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    .line 10
    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x7

    int-to-byte v1, v1

    .line 11
    aput-byte v1, p0, v2

    add-int/lit8 v1, p1, 0x8

    .line 12
    iget p2, p2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    if-eqz p2, :cond_3

    .line 13
    div-int/lit16 v2, p2, 0x3e8

    .line 14
    div-int/lit16 v3, v2, 0x3e8

    mul-int/lit16 v4, v2, 0x3e8

    sub-int/2addr p2, v4

    const/16 v4, 0x2e

    .line 15
    aput-byte v4, p0, v1

    .line 16
    aget v1, v0, v3

    add-int/lit8 v4, p1, 0x9

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    .line 17
    aput-byte v5, p0, v4

    add-int/lit8 v4, p1, 0xa

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    .line 18
    aput-byte v5, p0, v4

    add-int/lit8 v4, p1, 0xb

    int-to-byte v1, v1

    .line 19
    aput-byte v1, p0, v4

    add-int/lit8 v1, p1, 0xc

    if-nez p2, :cond_1

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    if-nez v2, :cond_0

    return v1

    .line 20
    :cond_0
    aget v2, v0, v2

    goto :goto_0

    :cond_1
    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    .line 21
    aget v2, v0, v2

    :goto_0
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    .line 22
    aput-byte v3, p0, v1

    add-int/lit8 v1, p1, 0xd

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 23
    aput-byte v3, p0, v1

    add-int/lit8 v1, p1, 0xe

    int-to-byte v2, v2

    .line 24
    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0xf

    if-nez p2, :cond_2

    return v1

    .line 25
    :cond_2
    aget p2, v0, p2

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 26
    aput-byte v0, p0, v1

    add-int/lit8 v0, p1, 0x10

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 27
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x11

    int-to-byte p2, p2

    .line 28
    aput-byte p2, p0, v0

    add-int/lit8 p1, p1, 0x12

    return p1

    :cond_3
    return v1
.end method

.method public static writeLocalTime([CILcom/alibaba/fastjson2/time/LocalTime;)I
    .locals 6

    .line 29
    sget-object v0, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    iget-byte v1, p2, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    aget v1, v0, v1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 30
    aput-char v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 31
    aput-char v1, p0, v2

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x3a

    .line 32
    aput-char v2, p0, v1

    .line 33
    iget-byte v1, p2, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    aget v1, v0, v1

    add-int/lit8 v3, p1, 0x3

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    int-to-char v4, v4

    .line 34
    aput-char v4, p0, v3

    add-int/lit8 v3, p1, 0x4

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 35
    aput-char v1, p0, v3

    add-int/lit8 v1, p1, 0x5

    .line 36
    aput-char v2, p0, v1

    .line 37
    iget-byte v1, p2, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    aget v1, v0, v1

    add-int/lit8 v2, p1, 0x6

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 38
    aput-char v3, p0, v2

    add-int/lit8 v2, p1, 0x7

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 39
    aput-char v1, p0, v2

    add-int/lit8 v1, p1, 0x8

    .line 40
    iget p2, p2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    if-eqz p2, :cond_3

    .line 41
    div-int/lit16 v2, p2, 0x3e8

    .line 42
    div-int/lit16 v3, v2, 0x3e8

    mul-int/lit16 v4, v2, 0x3e8

    sub-int/2addr p2, v4

    const/16 v4, 0x2e

    .line 43
    aput-char v4, p0, v1

    .line 44
    aget v1, v0, v3

    add-int/lit8 v4, p1, 0x9

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    int-to-char v5, v5

    .line 45
    aput-char v5, p0, v4

    add-int/lit8 v4, p1, 0xa

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    int-to-char v5, v5

    .line 46
    aput-char v5, p0, v4

    add-int/lit8 v4, p1, 0xb

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 47
    aput-char v1, p0, v4

    add-int/lit8 v1, p1, 0xc

    if-nez p2, :cond_1

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    if-nez v2, :cond_0

    return v1

    .line 48
    :cond_0
    aget v2, v0, v2

    goto :goto_0

    :cond_1
    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    .line 49
    aget v2, v0, v2

    :goto_0
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 50
    aput-char v3, p0, v1

    add-int/lit8 v1, p1, 0xd

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    int-to-char v3, v3

    .line 51
    aput-char v3, p0, v1

    add-int/lit8 v1, p1, 0xe

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 52
    aput-char v2, p0, v1

    add-int/lit8 v1, p1, 0xf

    if-nez p2, :cond_2

    return v1

    .line 53
    :cond_2
    aget p2, v0, p2

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    int-to-char v0, v0

    .line 54
    aput-char v0, p0, v1

    add-int/lit8 v0, p1, 0x10

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 55
    aput-char v1, p0, v0

    add-int/lit8 v0, p1, 0x11

    int-to-byte p2, p2

    int-to-char p2, p2

    .line 56
    aput-char p2, p0, v0

    add-int/lit8 p1, p1, 0x12

    return p1

    :cond_3
    return v1
.end method
