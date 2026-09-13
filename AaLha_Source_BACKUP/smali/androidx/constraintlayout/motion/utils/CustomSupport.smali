.class public Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static clamp(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x1f

    not-int v0, v0

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, -0xff

    shr-int/lit8 v0, p0, 0x1f

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "att",
            "view",
            "value"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "set"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    :try_start_0
    sget-object v2, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result v3

    .line 36
    .line 37
    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 38
    const/4 v3, 0x3

    .line 39
    const/4 v4, 0x2

    .line 40
    .line 41
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 44
    const/4 v7, 0x1

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 50
    const/4 v10, 0x0

    .line 51
    .line 52
    const/high16 v11, 0x437f0000    # 255.0f

    .line 53
    .line 54
    .line 55
    packed-switch v2, :pswitch_data_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_0
    :try_start_1
    new-array p0, v7, [Ljava/lang/Class;

    .line 60
    .line 61
    aput-object v6, p0, v10

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    aget p2, p2, v10

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    new-array v0, v7, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p2, v0, v10

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void

    .line 80
    :catch_0
    move-exception p0

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    :catch_1
    move-exception p0

    .line 84
    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :pswitch_1
    new-array p0, v7, [Ljava/lang/Class;

    .line 88
    .line 89
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    aput-object v2, p0, v10

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    aget p2, p2, v10

    .line 98
    .line 99
    const/high16 v0, 0x3f000000    # 0.5f

    .line 100
    .line 101
    cmpl-float p2, p2, v0

    .line 102
    .line 103
    if-lez p2, :cond_0

    .line 104
    move p2, v7

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    move p2, v10

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    new-array v0, v7, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object p2, v0, v10

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void

    .line 119
    .line 120
    :pswitch_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    const-string v1, "unable to interpolate strings "

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    .line 143
    .line 144
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p2

    .line 146
    .line 147
    :pswitch_3
    new-array p0, v7, [Ljava/lang/Class;

    .line 148
    .line 149
    aput-object v5, p0, v10

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 153
    move-result-object p0

    .line 154
    .line 155
    aget v0, p2, v10

    .line 156
    float-to-double v0, v0

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 160
    move-result-wide v0

    .line 161
    double-to-float v0, v0

    .line 162
    mul-float/2addr v0, v11

    .line 163
    float-to-int v0, v0

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 167
    move-result v0

    .line 168
    .line 169
    aget v1, p2, v7

    .line 170
    float-to-double v1, v1

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 174
    move-result-wide v1

    .line 175
    double-to-float v1, v1

    .line 176
    mul-float/2addr v1, v11

    .line 177
    float-to-int v1, v1

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 181
    move-result v1

    .line 182
    .line 183
    aget v2, p2, v4

    .line 184
    float-to-double v4, v2

    .line 185
    .line 186
    .line 187
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 188
    move-result-wide v4

    .line 189
    double-to-float v2, v4

    .line 190
    mul-float/2addr v2, v11

    .line 191
    float-to-int v2, v2

    .line 192
    .line 193
    .line 194
    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 195
    move-result v2

    .line 196
    .line 197
    aget p2, p2, v3

    .line 198
    mul-float/2addr p2, v11

    .line 199
    float-to-int p2, p2

    .line 200
    .line 201
    .line 202
    invoke-static {p2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 203
    move-result p2

    .line 204
    .line 205
    shl-int/lit8 p2, p2, 0x18

    .line 206
    .line 207
    shl-int/lit8 v0, v0, 0x10

    .line 208
    or-int/2addr p2, v0

    .line 209
    .line 210
    shl-int/lit8 v0, v1, 0x8

    .line 211
    or-int/2addr p2, v0

    .line 212
    or-int/2addr p2, v2

    .line 213
    .line 214
    .line 215
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object p2

    .line 217
    .line 218
    new-array v0, v7, [Ljava/lang/Object;

    .line 219
    .line 220
    aput-object p2, v0, v10

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void

    .line 225
    .line 226
    :pswitch_4
    new-array p0, v7, [Ljava/lang/Class;

    .line 227
    .line 228
    const-class v2, Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    aput-object v2, p0, v10

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 234
    move-result-object p0

    .line 235
    .line 236
    aget v0, p2, v10

    .line 237
    float-to-double v0, v0

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 241
    move-result-wide v0

    .line 242
    double-to-float v0, v0

    .line 243
    mul-float/2addr v0, v11

    .line 244
    float-to-int v0, v0

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 248
    move-result v0

    .line 249
    .line 250
    aget v1, p2, v7

    .line 251
    float-to-double v1, v1

    .line 252
    .line 253
    .line 254
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 255
    move-result-wide v1

    .line 256
    double-to-float v1, v1

    .line 257
    mul-float/2addr v1, v11

    .line 258
    float-to-int v1, v1

    .line 259
    .line 260
    .line 261
    invoke-static {v1}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 262
    move-result v1

    .line 263
    .line 264
    aget v2, p2, v4

    .line 265
    float-to-double v4, v2

    .line 266
    .line 267
    .line 268
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 269
    move-result-wide v4

    .line 270
    double-to-float v2, v4

    .line 271
    mul-float/2addr v2, v11

    .line 272
    float-to-int v2, v2

    .line 273
    .line 274
    .line 275
    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 276
    move-result v2

    .line 277
    .line 278
    aget p2, p2, v3

    .line 279
    mul-float/2addr p2, v11

    .line 280
    float-to-int p2, p2

    .line 281
    .line 282
    .line 283
    invoke-static {p2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 284
    move-result p2

    .line 285
    .line 286
    shl-int/lit8 p2, p2, 0x18

    .line 287
    .line 288
    shl-int/lit8 v0, v0, 0x10

    .line 289
    or-int/2addr p2, v0

    .line 290
    .line 291
    shl-int/lit8 v0, v1, 0x8

    .line 292
    or-int/2addr p2, v0

    .line 293
    or-int/2addr p2, v2

    .line 294
    .line 295
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 296
    .line 297
    .line 298
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 302
    .line 303
    new-array p2, v7, [Ljava/lang/Object;

    .line 304
    .line 305
    aput-object v0, p2, v10

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void

    .line 310
    .line 311
    :pswitch_5
    new-array p0, v7, [Ljava/lang/Class;

    .line 312
    .line 313
    aput-object v6, p0, v10

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 317
    move-result-object p0

    .line 318
    .line 319
    aget p2, p2, v10

    .line 320
    .line 321
    .line 322
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 323
    move-result-object p2

    .line 324
    .line 325
    new-array v0, v7, [Ljava/lang/Object;

    .line 326
    .line 327
    aput-object p2, v0, v10

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void

    .line 332
    .line 333
    :pswitch_6
    new-array p0, v7, [Ljava/lang/Class;

    .line 334
    .line 335
    aput-object v5, p0, v10

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 339
    move-result-object p0

    .line 340
    .line 341
    aget p2, p2, v10

    .line 342
    float-to-int p2, p2

    .line 343
    .line 344
    .line 345
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    move-result-object p2

    .line 347
    .line 348
    new-array v0, v7, [Ljava/lang/Object;

    .line 349
    .line 350
    aput-object p2, v0, v10

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 354
    return-void

    .line 355
    :catch_2
    move-exception p0

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    goto :goto_3

    .line 360
    .line 361
    .line 362
    :goto_1
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 366
    goto :goto_3

    .line 367
    .line 368
    .line 369
    :goto_2
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    :goto_3
    return-void

    .line 374
    nop

    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
