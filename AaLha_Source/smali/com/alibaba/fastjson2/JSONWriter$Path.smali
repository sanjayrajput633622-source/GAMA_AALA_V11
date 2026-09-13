.class public final Lcom/alibaba/fastjson2/JSONWriter$Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation


# static fields
.field public static final ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;


# instance fields
.field child0:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field child1:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field fullPath:Ljava/lang/String;

.field final index:I

.field final name:Ljava/lang/String;

.field public final parent:Lcom/alibaba/fastjson2/JSONWriter$Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "$"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    .line 9
    .line 10
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Path;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_5

    .line 8
    .line 9
    const-class v2, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 19
    .line 20
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    .line 21
    .line 22
    iget v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 29
    .line 30
    if-eq v2, v3, :cond_4

    .line 31
    .line 32
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter$Path;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    .line 47
    .line 48
    if-eq v2, v3, :cond_4

    .line 49
    .line 50
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    :cond_4
    return v0

    .line 62
    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x3

    .line 12
    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    aput-object v0, v3, v4

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    aput-object v1, v3, v0

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    aput-object v2, v3, v0

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->fullPath:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const/16 v0, 0x10

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    const/4 v1, 0x4

    .line 11
    .line 12
    new-array v2, v1, [Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v4, p0

    .line 15
    move v5, v3

    .line 16
    .line 17
    :goto_0
    if-eqz v4, :cond_2

    .line 18
    array-length v6, v2

    .line 19
    .line 20
    if-ne v6, v5, :cond_1

    .line 21
    array-length v6, v2

    .line 22
    add-int/2addr v6, v1

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, [Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 29
    .line 30
    :cond_1
    aput-object v4, v2, v5

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v1, 0x1

    .line 37
    sub-int/2addr v5, v1

    .line 38
    move v7, v1

    .line 39
    move v6, v3

    .line 40
    move v4, v5

    .line 41
    .line 42
    :goto_1
    if-ltz v4, :cond_16

    .line 43
    .line 44
    aget-object v8, v2, v4

    .line 45
    .line 46
    iget-object v9, v8, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    .line 47
    const/4 v10, 0x2

    .line 48
    .line 49
    if-nez v9, :cond_4

    .line 50
    .line 51
    iget v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    .line 52
    .line 53
    .line 54
    invoke-static {v8}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    .line 55
    move-result v9

    .line 56
    .line 57
    :goto_2
    add-int v11, v6, v9

    .line 58
    add-int/2addr v11, v10

    .line 59
    array-length v12, v0

    .line 60
    .line 61
    if-lt v11, v12, :cond_3

    .line 62
    array-length v11, v0

    .line 63
    array-length v12, v0

    .line 64
    shr-int/2addr v12, v1

    .line 65
    add-int/2addr v11, v12

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 69
    move-result-object v0

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_3
    add-int/lit8 v9, v6, 0x1

    .line 73
    .line 74
    const/16 v10, 0x5b

    .line 75
    .line 76
    aput-byte v10, v0, v6

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v9, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    .line 80
    move-result v6

    .line 81
    .line 82
    add-int/lit8 v8, v6, 0x1

    .line 83
    .line 84
    const/16 v9, 0x5d

    .line 85
    .line 86
    aput-byte v9, v0, v6

    .line 87
    move v6, v8

    .line 88
    .line 89
    goto/16 :goto_8

    .line 90
    .line 91
    :cond_4
    add-int/lit8 v8, v6, 0x1

    .line 92
    array-length v11, v0

    .line 93
    .line 94
    if-lt v8, v11, :cond_5

    .line 95
    array-length v11, v0

    .line 96
    array-length v12, v0

    .line 97
    shr-int/2addr v12, v1

    .line 98
    add-int/2addr v11, v12

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 102
    move-result-object v0

    .line 103
    .line 104
    :cond_5
    if-eq v4, v5, :cond_6

    .line 105
    .line 106
    const/16 v11, 0x2e

    .line 107
    .line 108
    aput-byte v11, v0, v6

    .line 109
    move v6, v8

    .line 110
    :cond_6
    move v8, v3

    .line 111
    .line 112
    .line 113
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 114
    move-result v11

    .line 115
    .line 116
    if-ge v8, v11, :cond_15

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 120
    move-result v11

    .line 121
    .line 122
    const/16 v12, 0x60

    .line 123
    .line 124
    if-eq v11, v12, :cond_13

    .line 125
    .line 126
    const/16 v12, 0x7e

    .line 127
    .line 128
    if-eq v11, v12, :cond_13

    .line 129
    .line 130
    .line 131
    packed-switch v11, :pswitch_data_0

    .line 132
    .line 133
    .line 134
    packed-switch v11, :pswitch_data_1

    .line 135
    .line 136
    .line 137
    packed-switch v11, :pswitch_data_2

    .line 138
    .line 139
    .line 140
    packed-switch v11, :pswitch_data_3

    .line 141
    .line 142
    .line 143
    packed-switch v11, :pswitch_data_4

    .line 144
    .line 145
    if-lt v11, v1, :cond_8

    .line 146
    .line 147
    const/16 v12, 0x7f

    .line 148
    .line 149
    if-gt v11, v12, :cond_8

    .line 150
    array-length v12, v0

    .line 151
    .line 152
    if-ne v6, v12, :cond_7

    .line 153
    array-length v12, v0

    .line 154
    array-length v13, v0

    .line 155
    shr-int/2addr v13, v1

    .line 156
    add-int/2addr v12, v13

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 160
    move-result-object v0

    .line 161
    .line 162
    :cond_7
    add-int/lit8 v12, v6, 0x1

    .line 163
    int-to-byte v11, v11

    .line 164
    .line 165
    aput-byte v11, v0, v6

    .line 166
    move v6, v12

    .line 167
    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    .line 171
    :cond_8
    const v7, 0xd800

    .line 172
    .line 173
    const/16 v12, 0x3f

    .line 174
    .line 175
    if-lt v11, v7, :cond_f

    .line 176
    .line 177
    .line 178
    const v7, 0xe000

    .line 179
    .line 180
    if-ge v11, v7, :cond_f

    .line 181
    .line 182
    .line 183
    const v13, 0xdc00

    .line 184
    .line 185
    if-ge v11, v13, :cond_e

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 189
    move-result v14

    .line 190
    sub-int/2addr v14, v4

    .line 191
    .line 192
    if-ge v14, v10, :cond_9

    .line 193
    const/4 v7, -0x1

    .line 194
    goto :goto_4

    .line 195
    .line 196
    :cond_9
    add-int/lit8 v14, v4, 0x1

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    .line 200
    move-result v14

    .line 201
    .line 202
    if-lt v14, v13, :cond_d

    .line 203
    .line 204
    if-ge v14, v7, :cond_d

    .line 205
    .line 206
    shl-int/lit8 v7, v11, 0xa

    .line 207
    add-int/2addr v7, v14

    .line 208
    .line 209
    .line 210
    const v11, -0x35fdc00

    .line 211
    add-int/2addr v7, v11

    .line 212
    .line 213
    :goto_4
    if-gez v7, :cond_b

    .line 214
    array-length v7, v0

    .line 215
    .line 216
    if-ne v6, v7, :cond_a

    .line 217
    array-length v7, v0

    .line 218
    array-length v11, v0

    .line 219
    shr-int/2addr v11, v1

    .line 220
    add-int/2addr v7, v11

    .line 221
    .line 222
    .line 223
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 224
    move-result-object v0

    .line 225
    .line 226
    :cond_a
    add-int/lit8 v7, v6, 0x1

    .line 227
    .line 228
    aput-byte v12, v0, v6

    .line 229
    goto :goto_5

    .line 230
    .line 231
    :cond_b
    add-int/lit8 v11, v6, 0x3

    .line 232
    array-length v13, v0

    .line 233
    .line 234
    if-lt v11, v13, :cond_c

    .line 235
    array-length v11, v0

    .line 236
    array-length v13, v0

    .line 237
    shr-int/2addr v13, v1

    .line 238
    add-int/2addr v11, v13

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 242
    move-result-object v0

    .line 243
    .line 244
    :cond_c
    add-int/lit8 v11, v6, 0x1

    .line 245
    .line 246
    shr-int/lit8 v13, v7, 0x12

    .line 247
    .line 248
    or-int/lit16 v13, v13, 0xf0

    .line 249
    int-to-byte v13, v13

    .line 250
    .line 251
    aput-byte v13, v0, v6

    .line 252
    .line 253
    add-int/lit8 v13, v6, 0x2

    .line 254
    .line 255
    shr-int/lit8 v14, v7, 0xc

    .line 256
    and-int/2addr v14, v12

    .line 257
    .line 258
    or-int/lit16 v14, v14, 0x80

    .line 259
    int-to-byte v14, v14

    .line 260
    .line 261
    aput-byte v14, v0, v11

    .line 262
    .line 263
    add-int/lit8 v11, v6, 0x3

    .line 264
    .line 265
    shr-int/lit8 v14, v7, 0x6

    .line 266
    and-int/2addr v12, v14

    .line 267
    .line 268
    or-int/lit16 v12, v12, 0x80

    .line 269
    int-to-byte v12, v12

    .line 270
    .line 271
    aput-byte v12, v0, v13

    .line 272
    .line 273
    add-int/lit8 v6, v6, 0x4

    .line 274
    .line 275
    and-int/lit8 v7, v7, 0x3f

    .line 276
    .line 277
    or-int/lit16 v7, v7, 0x80

    .line 278
    int-to-byte v7, v7

    .line 279
    .line 280
    aput-byte v7, v0, v11

    .line 281
    .line 282
    add-int/lit8 v8, v8, 0x1

    .line 283
    move v7, v6

    .line 284
    :goto_5
    move v6, v7

    .line 285
    :goto_6
    move v7, v3

    .line 286
    goto :goto_7

    .line 287
    .line 288
    :cond_d
    add-int/lit8 v7, v6, 0x1

    .line 289
    .line 290
    aput-byte v12, v0, v6

    .line 291
    goto :goto_5

    .line 292
    .line 293
    :cond_e
    add-int/lit8 v7, v6, 0x1

    .line 294
    .line 295
    aput-byte v12, v0, v6

    .line 296
    goto :goto_5

    .line 297
    .line 298
    :cond_f
    const/16 v7, 0x7ff

    .line 299
    .line 300
    if-le v11, v7, :cond_11

    .line 301
    .line 302
    add-int/lit8 v7, v6, 0x2

    .line 303
    array-length v13, v0

    .line 304
    .line 305
    if-lt v7, v13, :cond_10

    .line 306
    array-length v7, v0

    .line 307
    array-length v13, v0

    .line 308
    shr-int/2addr v13, v1

    .line 309
    add-int/2addr v7, v13

    .line 310
    .line 311
    .line 312
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 313
    move-result-object v0

    .line 314
    .line 315
    :cond_10
    add-int/lit8 v7, v6, 0x1

    .line 316
    .line 317
    shr-int/lit8 v13, v11, 0xc

    .line 318
    .line 319
    and-int/lit8 v13, v13, 0xf

    .line 320
    .line 321
    or-int/lit16 v13, v13, 0xe0

    .line 322
    int-to-byte v13, v13

    .line 323
    .line 324
    aput-byte v13, v0, v6

    .line 325
    .line 326
    add-int/lit8 v13, v6, 0x2

    .line 327
    .line 328
    shr-int/lit8 v14, v11, 0x6

    .line 329
    and-int/2addr v12, v14

    .line 330
    .line 331
    or-int/lit16 v12, v12, 0x80

    .line 332
    int-to-byte v12, v12

    .line 333
    .line 334
    aput-byte v12, v0, v7

    .line 335
    .line 336
    add-int/lit8 v6, v6, 0x3

    .line 337
    .line 338
    and-int/lit8 v7, v11, 0x3f

    .line 339
    .line 340
    or-int/lit16 v7, v7, 0x80

    .line 341
    int-to-byte v7, v7

    .line 342
    .line 343
    aput-byte v7, v0, v13

    .line 344
    goto :goto_6

    .line 345
    .line 346
    :cond_11
    add-int/lit8 v7, v6, 0x1

    .line 347
    array-length v12, v0

    .line 348
    .line 349
    if-lt v7, v12, :cond_12

    .line 350
    array-length v12, v0

    .line 351
    array-length v13, v0

    .line 352
    shr-int/2addr v13, v1

    .line 353
    add-int/2addr v12, v13

    .line 354
    .line 355
    .line 356
    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 357
    move-result-object v0

    .line 358
    .line 359
    :cond_12
    shr-int/lit8 v12, v11, 0x6

    .line 360
    .line 361
    and-int/lit8 v12, v12, 0x1f

    .line 362
    .line 363
    or-int/lit16 v12, v12, 0xc0

    .line 364
    int-to-byte v12, v12

    .line 365
    .line 366
    aput-byte v12, v0, v6

    .line 367
    .line 368
    add-int/lit8 v6, v6, 0x2

    .line 369
    .line 370
    and-int/lit8 v11, v11, 0x3f

    .line 371
    .line 372
    or-int/lit16 v11, v11, 0x80

    .line 373
    int-to-byte v11, v11

    .line 374
    .line 375
    aput-byte v11, v0, v7

    .line 376
    goto :goto_6

    .line 377
    .line 378
    :cond_13
    :pswitch_0
    add-int/lit8 v12, v6, 0x1

    .line 379
    array-length v13, v0

    .line 380
    .line 381
    if-lt v12, v13, :cond_14

    .line 382
    array-length v13, v0

    .line 383
    array-length v14, v0

    .line 384
    shr-int/2addr v14, v1

    .line 385
    add-int/2addr v13, v14

    .line 386
    .line 387
    .line 388
    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 389
    move-result-object v0

    .line 390
    .line 391
    :cond_14
    const/16 v13, 0x5c

    .line 392
    .line 393
    aput-byte v13, v0, v6

    .line 394
    .line 395
    add-int/lit8 v6, v6, 0x2

    .line 396
    int-to-byte v11, v11

    .line 397
    .line 398
    aput-byte v11, v0, v12

    .line 399
    :goto_7
    add-int/2addr v8, v1

    .line 400
    .line 401
    goto/16 :goto_3

    .line 402
    .line 403
    :cond_15
    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :cond_16
    new-instance v1, Ljava/lang/String;

    .line 408
    .line 409
    if-eqz v7, :cond_17

    .line 410
    .line 411
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 412
    goto :goto_9

    .line 413
    .line 414
    :cond_17
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 415
    .line 416
    .line 417
    :goto_9
    invoke-direct {v1, v0, v3, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 418
    .line 419
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->fullPath:Ljava/lang/String;

    .line 420
    return-object v1

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    :pswitch_data_3
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    :pswitch_data_4
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
