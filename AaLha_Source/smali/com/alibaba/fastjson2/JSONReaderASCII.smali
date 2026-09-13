.class final Lcom/alibaba/fastjson2/JSONReaderASCII;
.super Lcom/alibaba/fastjson2/JSONReaderUTF8;
.source "SourceFile"


# instance fields
.field final str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->str:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    move-object p1, p0

    .line 2
    iput-object p2, p1, Lcom/alibaba/fastjson2/JSONReaderASCII;->str:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    return-void
.end method

.method public static getLong([BI)J
    .locals 7

    .line 1
    .line 2
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget v1, Lsun/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    .line 9
    int-to-long v1, v1

    .line 10
    int-to-long v3, p1

    .line 11
    add-long/2addr v1, v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 15
    move-result-wide p0

    .line 16
    return-wide p0

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v0, p1, 0x7

    .line 19
    .line 20
    aget-byte v0, p0, v0

    .line 21
    int-to-long v0, v0

    .line 22
    .line 23
    const/16 v2, 0x38

    .line 24
    shl-long/2addr v0, v2

    .line 25
    .line 26
    add-int/lit8 v2, p1, 0x6

    .line 27
    .line 28
    aget-byte v2, p0, v2

    .line 29
    int-to-long v2, v2

    .line 30
    .line 31
    const-wide/16 v4, 0xff

    .line 32
    and-long/2addr v2, v4

    .line 33
    .line 34
    const/16 v6, 0x30

    .line 35
    shl-long/2addr v2, v6

    .line 36
    add-long/2addr v0, v2

    .line 37
    .line 38
    add-int/lit8 v2, p1, 0x5

    .line 39
    .line 40
    aget-byte v2, p0, v2

    .line 41
    int-to-long v2, v2

    .line 42
    and-long/2addr v2, v4

    .line 43
    .line 44
    const/16 v6, 0x28

    .line 45
    shl-long/2addr v2, v6

    .line 46
    add-long/2addr v0, v2

    .line 47
    .line 48
    add-int/lit8 v2, p1, 0x4

    .line 49
    .line 50
    aget-byte v2, p0, v2

    .line 51
    int-to-long v2, v2

    .line 52
    and-long/2addr v2, v4

    .line 53
    .line 54
    const/16 v6, 0x20

    .line 55
    shl-long/2addr v2, v6

    .line 56
    add-long/2addr v0, v2

    .line 57
    .line 58
    add-int/lit8 v2, p1, 0x3

    .line 59
    .line 60
    aget-byte v2, p0, v2

    .line 61
    int-to-long v2, v2

    .line 62
    and-long/2addr v2, v4

    .line 63
    .line 64
    const/16 v6, 0x18

    .line 65
    shl-long/2addr v2, v6

    .line 66
    add-long/2addr v0, v2

    .line 67
    .line 68
    add-int/lit8 v2, p1, 0x2

    .line 69
    .line 70
    aget-byte v2, p0, v2

    .line 71
    int-to-long v2, v2

    .line 72
    and-long/2addr v2, v4

    .line 73
    .line 74
    const/16 v6, 0x10

    .line 75
    shl-long/2addr v2, v6

    .line 76
    add-long/2addr v0, v2

    .line 77
    .line 78
    add-int/lit8 v2, p1, 0x1

    .line 79
    .line 80
    aget-byte v2, p0, v2

    .line 81
    int-to-long v2, v2

    .line 82
    and-long/2addr v2, v4

    .line 83
    .line 84
    const/16 v6, 0x8

    .line 85
    shl-long/2addr v2, v6

    .line 86
    add-long/2addr v0, v2

    .line 87
    .line 88
    aget-byte p0, p0, p1

    .line 89
    int-to-long p0, p0

    .line 90
    and-long/2addr p0, v4

    .line 91
    add-long/2addr v0, p0

    .line 92
    return-wide v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 7
    .line 8
    sub-int v3, v1, v2

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 11
    .line 12
    if-nez v4, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->str:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getLatin1String(II)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, [C

    .line 42
    .line 43
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 44
    .line 45
    :cond_2
    if-eqz v1, :cond_3

    .line 46
    array-length v2, v1

    .line 47
    .line 48
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 49
    .line 50
    if-ge v2, v3, :cond_4

    .line 51
    .line 52
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 53
    .line 54
    new-array v1, v1, [C

    .line 55
    .line 56
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 57
    .line 58
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 59
    const/4 v3, 0x0

    .line 60
    move v4, v3

    .line 61
    .line 62
    :goto_0
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 63
    .line 64
    if-ge v2, v5, :cond_a

    .line 65
    .line 66
    aget-byte v5, v0, v2

    .line 67
    .line 68
    and-int/lit16 v5, v5, 0xff

    .line 69
    int-to-char v5, v5

    .line 70
    .line 71
    const/16 v6, 0x5c

    .line 72
    .line 73
    if-ne v5, v6, :cond_8

    .line 74
    .line 75
    add-int/lit8 v5, v2, 0x1

    .line 76
    .line 77
    aget-byte v6, v0, v5

    .line 78
    int-to-char v6, v6

    .line 79
    .line 80
    const/16 v7, 0x2a

    .line 81
    .line 82
    if-eq v6, v7, :cond_7

    .line 83
    .line 84
    const/16 v7, 0x2b

    .line 85
    .line 86
    if-eq v6, v7, :cond_7

    .line 87
    .line 88
    const/16 v7, 0x40

    .line 89
    .line 90
    if-eq v6, v7, :cond_7

    .line 91
    .line 92
    const/16 v7, 0x75

    .line 93
    .line 94
    if-eq v6, v7, :cond_6

    .line 95
    .line 96
    const/16 v7, 0x78

    .line 97
    .line 98
    if-eq v6, v7, :cond_5

    .line 99
    .line 100
    .line 101
    packed-switch v6, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    packed-switch v6, :pswitch_data_1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 108
    move-result v2

    .line 109
    move v9, v5

    .line 110
    move v5, v2

    .line 111
    move v2, v9

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_5
    add-int/lit8 v5, v2, 0x2

    .line 115
    .line 116
    aget-byte v5, v0, v5

    .line 117
    .line 118
    add-int/lit8 v2, v2, 0x3

    .line 119
    .line 120
    aget-byte v6, v0, v2

    .line 121
    .line 122
    .line 123
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 124
    move-result v5

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_6
    add-int/lit8 v5, v2, 0x2

    .line 128
    .line 129
    aget-byte v5, v0, v5

    .line 130
    .line 131
    add-int/lit8 v6, v2, 0x3

    .line 132
    .line 133
    aget-byte v6, v0, v6

    .line 134
    .line 135
    add-int/lit8 v7, v2, 0x4

    .line 136
    .line 137
    aget-byte v7, v0, v7

    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x5

    .line 140
    .line 141
    aget-byte v8, v0, v2

    .line 142
    .line 143
    .line 144
    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 145
    move-result v5

    .line 146
    goto :goto_1

    .line 147
    :cond_7
    :pswitch_0
    move v2, v5

    .line 148
    move v5, v6

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_8
    const/16 v6, 0x22

    .line 152
    .line 153
    if-ne v5, v6, :cond_9

    .line 154
    goto :goto_2

    .line 155
    .line 156
    :cond_9
    :goto_1
    aput-char v5, v1, v4

    .line 157
    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    goto :goto_0

    .line 162
    .line 163
    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/String;

    .line 164
    .line 165
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 169
    return-object v0

    .line 170
    nop

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getNameHashCodeLCase()J
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 7
    .line 8
    const/16 v3, 0x27

    .line 9
    .line 10
    const/16 v4, 0x22

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v5, v2, -0x1

    .line 15
    .line 16
    aget-byte v5, v1, v5

    .line 17
    .line 18
    if-ne v5, v3, :cond_0

    .line 19
    move v5, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v5, v4

    .line 22
    :goto_0
    const/4 v8, 0x0

    .line 23
    .line 24
    const-wide/16 v9, 0x0

    .line 25
    .line 26
    :goto_1
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 27
    .line 28
    const/16 v14, 0x2d

    .line 29
    .line 30
    const/16 v15, 0x5f

    .line 31
    .line 32
    const-wide/16 v16, 0x0

    .line 33
    .line 34
    const/16 v6, 0x78

    .line 35
    .line 36
    const/16 v7, 0x75

    .line 37
    .line 38
    const/16 v12, 0x5c

    .line 39
    .line 40
    const/16 v13, 0x20

    .line 41
    .line 42
    if-ge v2, v11, :cond_a

    .line 43
    .line 44
    aget-byte v11, v1, v2

    .line 45
    .line 46
    if-ne v11, v12, :cond_3

    .line 47
    .line 48
    add-int/lit8 v11, v2, 0x1

    .line 49
    .line 50
    aget-byte v12, v1, v11

    .line 51
    .line 52
    if-eq v12, v7, :cond_2

    .line 53
    .line 54
    if-eq v12, v6, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 58
    move-result v2

    .line 59
    .line 60
    move/from16 v19, v11

    .line 61
    move v11, v2

    .line 62
    .line 63
    move/from16 v2, v19

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v11, v2, 0x2

    .line 67
    .line 68
    aget-byte v11, v1, v11

    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x3

    .line 71
    .line 72
    aget-byte v12, v1, v2

    .line 73
    .line 74
    .line 75
    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 76
    move-result v11

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_2
    add-int/lit8 v11, v2, 0x2

    .line 80
    .line 81
    aget-byte v11, v1, v11

    .line 82
    .line 83
    add-int/lit8 v12, v2, 0x3

    .line 84
    .line 85
    aget-byte v12, v1, v12

    .line 86
    .line 87
    add-int/lit8 v18, v2, 0x4

    .line 88
    .line 89
    aget-byte v6, v1, v18

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x5

    .line 92
    .line 93
    aget-byte v7, v1, v2

    .line 94
    .line 95
    .line 96
    invoke-static {v11, v12, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 97
    move-result v11

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_3
    if-ne v11, v5, :cond_4

    .line 101
    .line 102
    goto/16 :goto_9

    .line 103
    .line 104
    :cond_4
    :goto_2
    const/16 v6, 0xff

    .line 105
    .line 106
    if-gt v11, v6, :cond_9

    .line 107
    .line 108
    if-ltz v11, :cond_9

    .line 109
    .line 110
    const/16 v6, 0x8

    .line 111
    .line 112
    if-ge v8, v6, :cond_9

    .line 113
    .line 114
    if-nez v8, :cond_5

    .line 115
    .line 116
    if-nez v11, :cond_5

    .line 117
    .line 118
    goto/16 :goto_8

    .line 119
    .line 120
    :cond_5
    if-eq v11, v15, :cond_7

    .line 121
    .line 122
    if-eq v11, v14, :cond_7

    .line 123
    .line 124
    if-ne v11, v13, :cond_6

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_6
    const/16 v7, 0x41

    .line 128
    goto :goto_4

    .line 129
    .line 130
    :cond_7
    :goto_3
    add-int/lit8 v7, v2, 0x1

    .line 131
    .line 132
    aget-byte v7, v1, v7

    .line 133
    .line 134
    if-eq v7, v4, :cond_6

    .line 135
    .line 136
    if-eq v7, v3, :cond_6

    .line 137
    .line 138
    if-eq v7, v11, :cond_6

    .line 139
    goto :goto_7

    .line 140
    .line 141
    :goto_4
    if-lt v11, v7, :cond_8

    .line 142
    .line 143
    const/16 v7, 0x5a

    .line 144
    .line 145
    if-gt v11, v7, :cond_8

    .line 146
    .line 147
    add-int/lit8 v11, v11, 0x20

    .line 148
    int-to-char v11, v11

    .line 149
    .line 150
    .line 151
    :cond_8
    packed-switch v8, :pswitch_data_0

    .line 152
    goto :goto_6

    .line 153
    :pswitch_0
    int-to-byte v6, v11

    .line 154
    int-to-long v6, v6

    .line 155
    .line 156
    const/16 v11, 0x38

    .line 157
    shl-long/2addr v6, v11

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    const-wide v11, 0xffffffffffffffL

    .line 163
    :goto_5
    and-long/2addr v9, v11

    .line 164
    add-long/2addr v9, v6

    .line 165
    goto :goto_6

    .line 166
    :pswitch_1
    int-to-byte v6, v11

    .line 167
    int-to-long v6, v6

    .line 168
    .line 169
    const/16 v11, 0x30

    .line 170
    shl-long/2addr v6, v11

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    const-wide v11, 0xffffffffffffL

    .line 176
    goto :goto_5

    .line 177
    :pswitch_2
    int-to-byte v6, v11

    .line 178
    int-to-long v6, v6

    .line 179
    .line 180
    const/16 v11, 0x28

    .line 181
    shl-long/2addr v6, v11

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    const-wide v11, 0xffffffffffL

    .line 187
    goto :goto_5

    .line 188
    :pswitch_3
    int-to-byte v6, v11

    .line 189
    int-to-long v6, v6

    .line 190
    shl-long/2addr v6, v13

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    const-wide v11, 0xffffffffL

    .line 196
    goto :goto_5

    .line 197
    :pswitch_4
    int-to-byte v6, v11

    .line 198
    .line 199
    shl-int/lit8 v6, v6, 0x18

    .line 200
    int-to-long v6, v6

    .line 201
    .line 202
    .line 203
    const-wide/32 v11, 0xffffff

    .line 204
    goto :goto_5

    .line 205
    :pswitch_5
    int-to-byte v6, v11

    .line 206
    .line 207
    shl-int/lit8 v6, v6, 0x10

    .line 208
    int-to-long v6, v6

    .line 209
    .line 210
    .line 211
    const-wide/32 v11, 0xffff

    .line 212
    goto :goto_5

    .line 213
    :pswitch_6
    int-to-byte v7, v11

    .line 214
    .line 215
    shl-int/lit8 v6, v7, 0x8

    .line 216
    int-to-long v6, v6

    .line 217
    .line 218
    const-wide/16 v11, 0xff

    .line 219
    goto :goto_5

    .line 220
    :pswitch_7
    int-to-byte v6, v11

    .line 221
    int-to-long v9, v6

    .line 222
    .line 223
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 224
    .line 225
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_9
    :goto_8
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 230
    .line 231
    move-wide/from16 v9, v16

    .line 232
    .line 233
    :cond_a
    :goto_9
    cmp-long v6, v9, v16

    .line 234
    .line 235
    if-eqz v6, :cond_b

    .line 236
    return-wide v9

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :cond_b
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 242
    .line 243
    :goto_a
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 244
    .line 245
    if-ge v2, v8, :cond_14

    .line 246
    .line 247
    aget-byte v8, v1, v2

    .line 248
    .line 249
    const/16 v9, 0x5c

    .line 250
    .line 251
    if-ne v8, v9, :cond_e

    .line 252
    .line 253
    add-int/lit8 v8, v2, 0x1

    .line 254
    .line 255
    aget-byte v10, v1, v8

    .line 256
    .line 257
    const/16 v11, 0x75

    .line 258
    .line 259
    if-eq v10, v11, :cond_d

    .line 260
    .line 261
    const/16 v12, 0x78

    .line 262
    .line 263
    if-eq v10, v12, :cond_c

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 267
    move-result v2

    .line 268
    .line 269
    move/from16 v19, v8

    .line 270
    move v8, v2

    .line 271
    .line 272
    move/from16 v2, v19

    .line 273
    goto :goto_b

    .line 274
    .line 275
    :cond_c
    add-int/lit8 v8, v2, 0x2

    .line 276
    .line 277
    aget-byte v8, v1, v8

    .line 278
    .line 279
    add-int/lit8 v2, v2, 0x3

    .line 280
    .line 281
    aget-byte v10, v1, v2

    .line 282
    .line 283
    .line 284
    invoke-static {v8, v10}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 285
    move-result v8

    .line 286
    goto :goto_b

    .line 287
    .line 288
    :cond_d
    const/16 v12, 0x78

    .line 289
    .line 290
    add-int/lit8 v8, v2, 0x2

    .line 291
    .line 292
    aget-byte v8, v1, v8

    .line 293
    .line 294
    add-int/lit8 v10, v2, 0x3

    .line 295
    .line 296
    aget-byte v10, v1, v10

    .line 297
    .line 298
    add-int/lit8 v16, v2, 0x4

    .line 299
    .line 300
    aget-byte v9, v1, v16

    .line 301
    .line 302
    add-int/lit8 v2, v2, 0x5

    .line 303
    .line 304
    aget-byte v11, v1, v2

    .line 305
    .line 306
    .line 307
    invoke-static {v8, v10, v9, v11}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 308
    move-result v8

    .line 309
    goto :goto_b

    .line 310
    .line 311
    :cond_e
    const/16 v12, 0x78

    .line 312
    .line 313
    if-ne v8, v5, :cond_f

    .line 314
    goto :goto_e

    .line 315
    .line 316
    :cond_f
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 317
    .line 318
    if-eq v8, v15, :cond_11

    .line 319
    .line 320
    if-eq v8, v14, :cond_11

    .line 321
    .line 322
    if-ne v8, v13, :cond_10

    .line 323
    goto :goto_c

    .line 324
    .line 325
    :cond_10
    const/16 v9, 0x41

    .line 326
    goto :goto_d

    .line 327
    .line 328
    :cond_11
    :goto_c
    aget-byte v9, v1, v2

    .line 329
    .line 330
    if-eq v9, v4, :cond_10

    .line 331
    .line 332
    if-eq v9, v3, :cond_10

    .line 333
    .line 334
    if-eq v9, v8, :cond_10

    .line 335
    goto :goto_a

    .line 336
    .line 337
    :goto_d
    const/16 v10, 0x5a

    .line 338
    .line 339
    if-lt v8, v9, :cond_12

    .line 340
    .line 341
    if-gt v8, v10, :cond_12

    .line 342
    .line 343
    add-int/lit8 v8, v8, 0x20

    .line 344
    int-to-char v8, v8

    .line 345
    .line 346
    :cond_12
    if-gez v8, :cond_13

    .line 347
    .line 348
    and-int/lit16 v8, v8, 0xff

    .line 349
    :cond_13
    int-to-long v3, v8

    .line 350
    xor-long/2addr v3, v6

    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    const-wide v6, 0x100000001b3L

    .line 356
    mul-long/2addr v6, v3

    .line 357
    .line 358
    const/16 v3, 0x27

    .line 359
    .line 360
    const/16 v4, 0x22

    .line 361
    goto :goto_a

    .line 362
    :cond_14
    :goto_e
    return-wide v6

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public next()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 7
    .line 8
    const/16 v3, 0x1a

    .line 9
    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    move v1, v3

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    aget-byte v1, v0, v1

    .line 18
    .line 19
    :goto_1
    if-eqz v1, :cond_3

    .line 20
    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    const/16 v4, 0x20

    .line 24
    .line 25
    if-gt v1, v4, :cond_1

    .line 26
    .line 27
    const-wide/16 v4, 0x1

    .line 28
    shl-long/2addr v4, v1

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const-wide v6, 0x100003701L

    .line 34
    and-long/2addr v4, v6

    .line 35
    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .line 38
    cmp-long v4, v4, v6

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_1
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 44
    .line 45
    and-int/lit16 v0, v1, 0xff

    .line 46
    int-to-char v0, v0

    .line 47
    .line 48
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 49
    .line 50
    const/16 v0, 0x2f

    .line 51
    .line 52
    if-ne v1, v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 56
    :cond_2
    return-void

    .line 57
    .line 58
    :cond_3
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 59
    .line 60
    if-ne v2, v1, :cond_4

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 64
    .line 65
    aget-byte v2, v0, v2

    .line 66
    move v8, v2

    .line 67
    move v2, v1

    .line 68
    move v1, v8

    .line 69
    goto :goto_1
.end method

.method public nextIfNullOrEmptyString()Z
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 11
    .line 12
    const/16 v5, 0x75

    .line 13
    const/4 v6, 0x0

    .line 14
    .line 15
    const/16 v7, 0x6c

    .line 16
    const/4 v8, 0x1

    .line 17
    .line 18
    const/16 v9, 0x6e

    .line 19
    .line 20
    if-ne v1, v9, :cond_0

    .line 21
    .line 22
    add-int/lit8 v10, v3, 0x2

    .line 23
    .line 24
    if-ge v10, v2, :cond_0

    .line 25
    .line 26
    aget-byte v11, v4, v3

    .line 27
    .line 28
    if-ne v11, v5, :cond_0

    .line 29
    .line 30
    add-int/lit8 v11, v3, 0x1

    .line 31
    .line 32
    aget-byte v11, v4, v11

    .line 33
    .line 34
    if-ne v11, v7, :cond_0

    .line 35
    .line 36
    aget-byte v10, v4, v10

    .line 37
    .line 38
    if-ne v10, v7, :cond_0

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x3

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    const/16 v10, 0x22

    .line 44
    .line 45
    if-eq v1, v10, :cond_2

    .line 46
    .line 47
    const/16 v10, 0x27

    .line 48
    .line 49
    if-ne v1, v10, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return v6

    .line 52
    .line 53
    :cond_2
    :goto_0
    if-ge v3, v2, :cond_3

    .line 54
    .line 55
    aget-byte v10, v4, v3

    .line 56
    .line 57
    if-ne v10, v1, :cond_3

    .line 58
    add-int/2addr v3, v8

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_3
    add-int/lit8 v10, v3, 0x4

    .line 62
    .line 63
    if-ge v10, v2, :cond_c

    .line 64
    .line 65
    aget-byte v11, v4, v3

    .line 66
    .line 67
    if-ne v11, v9, :cond_c

    .line 68
    .line 69
    add-int/lit8 v9, v3, 0x1

    .line 70
    .line 71
    aget-byte v9, v4, v9

    .line 72
    .line 73
    if-ne v9, v5, :cond_c

    .line 74
    .line 75
    add-int/lit8 v5, v3, 0x2

    .line 76
    .line 77
    aget-byte v5, v4, v5

    .line 78
    .line 79
    if-ne v5, v7, :cond_c

    .line 80
    .line 81
    add-int/lit8 v5, v3, 0x3

    .line 82
    .line 83
    aget-byte v5, v4, v5

    .line 84
    .line 85
    if-ne v5, v7, :cond_c

    .line 86
    .line 87
    aget-byte v5, v4, v10

    .line 88
    .line 89
    if-ne v5, v1, :cond_c

    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x5

    .line 92
    .line 93
    :goto_1
    const/16 v1, 0x1a

    .line 94
    .line 95
    if-ne v3, v2, :cond_4

    .line 96
    move v5, v3

    .line 97
    :goto_2
    move v3, v1

    .line 98
    goto :goto_3

    .line 99
    .line 100
    :cond_4
    add-int/lit8 v5, v3, 0x1

    .line 101
    .line 102
    aget-byte v3, v4, v3

    .line 103
    .line 104
    :goto_3
    const-wide/16 v9, 0x0

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    const-wide v11, 0x100003701L

    .line 110
    .line 111
    const-wide/16 v13, 0x1

    .line 112
    .line 113
    const/16 v7, 0x20

    .line 114
    .line 115
    if-ltz v3, :cond_6

    .line 116
    .line 117
    if-gt v3, v7, :cond_6

    .line 118
    .line 119
    shl-long v15, v13, v3

    .line 120
    and-long/2addr v15, v11

    .line 121
    .line 122
    cmp-long v15, v15, v9

    .line 123
    .line 124
    if-eqz v15, :cond_6

    .line 125
    .line 126
    if-ne v5, v2, :cond_5

    .line 127
    goto :goto_2

    .line 128
    .line 129
    :cond_5
    add-int/lit8 v3, v5, 0x1

    .line 130
    .line 131
    aget-byte v5, v4, v5

    .line 132
    .line 133
    move/from16 v17, v5

    .line 134
    move v5, v3

    .line 135
    .line 136
    move/from16 v3, v17

    .line 137
    goto :goto_3

    .line 138
    .line 139
    :cond_6
    const/16 v15, 0x2c

    .line 140
    .line 141
    if-ne v3, v15, :cond_7

    .line 142
    move v6, v8

    .line 143
    .line 144
    :cond_7
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 145
    .line 146
    if-eqz v6, :cond_9

    .line 147
    .line 148
    if-ne v5, v2, :cond_8

    .line 149
    :goto_4
    move v3, v1

    .line 150
    goto :goto_6

    .line 151
    .line 152
    :cond_8
    add-int/lit8 v3, v5, 0x1

    .line 153
    .line 154
    aget-byte v5, v4, v5

    .line 155
    .line 156
    :goto_5
    move/from16 v17, v5

    .line 157
    move v5, v3

    .line 158
    .line 159
    move/from16 v3, v17

    .line 160
    .line 161
    :cond_9
    :goto_6
    if-ltz v3, :cond_b

    .line 162
    .line 163
    if-gt v3, v7, :cond_b

    .line 164
    .line 165
    shl-long v15, v13, v3

    .line 166
    and-long/2addr v15, v11

    .line 167
    .line 168
    cmp-long v6, v15, v9

    .line 169
    .line 170
    if-eqz v6, :cond_b

    .line 171
    .line 172
    if-ne v5, v2, :cond_a

    .line 173
    goto :goto_4

    .line 174
    .line 175
    :cond_a
    add-int/lit8 v3, v5, 0x1

    .line 176
    .line 177
    aget-byte v5, v4, v5

    .line 178
    goto :goto_5

    .line 179
    .line 180
    :cond_b
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 181
    .line 182
    and-int/lit16 v1, v3, 0xff

    .line 183
    int-to-char v1, v1

    .line 184
    .line 185
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 186
    return v8

    .line 187
    :cond_c
    return v6
.end method

.method public nextIfObjectStart()Z
    .locals 9

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x7b

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 11
    .line 12
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    .line 14
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 15
    .line 16
    const/16 v3, 0x1a

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    move v2, v1

    .line 20
    :goto_0
    move v1, v3

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    aget-byte v1, v0, v1

    .line 26
    .line 27
    :goto_1
    if-eqz v1, :cond_4

    .line 28
    .line 29
    const/16 v4, 0x20

    .line 30
    .line 31
    if-gt v1, v4, :cond_2

    .line 32
    .line 33
    const-wide/16 v4, 0x1

    .line 34
    shl-long/2addr v4, v1

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide v6, 0x100003701L

    .line 40
    and-long/2addr v4, v6

    .line 41
    .line 42
    const-wide/16 v6, 0x0

    .line 43
    .line 44
    cmp-long v4, v4, v6

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    and-int/lit16 v0, v1, 0xff

    .line 50
    int-to-char v0, v0

    .line 51
    .line 52
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 53
    .line 54
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 55
    .line 56
    const/16 v0, 0x2f

    .line 57
    .line 58
    if-ne v1, v0, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 62
    :cond_3
    const/4 v0, 0x1

    .line 63
    return v0

    .line 64
    .line 65
    :cond_4
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 66
    .line 67
    if-ne v2, v1, :cond_5

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .line 71
    .line 72
    aget-byte v2, v0, v2

    .line 73
    move v8, v2

    .line 74
    move v2, v1

    .line 75
    move v1, v8

    .line 76
    goto :goto_1
.end method

.method public readFieldName()Ljava/lang/String;
    .locals 23

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    const/16 v2, 0x27

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    .line 14
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 15
    .line 16
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableSingleQuote:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 17
    .line 18
    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 19
    and-long/2addr v5, v7

    .line 20
    .line 21
    cmp-long v2, v5, v3

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->notSupportName()Lcom/alibaba/fastjson2/JSONException;

    .line 28
    move-result-object v1

    .line 29
    throw v1

    .line 30
    .line 31
    :cond_1
    :goto_0
    const/16 v2, 0x22

    .line 32
    .line 33
    if-eq v1, v2, :cond_3

    .line 34
    .line 35
    const/16 v2, 0x27

    .line 36
    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 40
    .line 41
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 42
    .line 43
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 44
    .line 45
    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 46
    and-long/2addr v5, v7

    .line 47
    .line 48
    cmp-long v2, v5, v3

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONReader;->isFirstIdentifier(I)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    return-object v1

    .line 62
    :cond_2
    const/4 v1, 0x0

    .line 63
    return-object v1

    .line 64
    .line 65
    :cond_3
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 66
    const/4 v5, 0x0

    .line 67
    .line 68
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 69
    .line 70
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 71
    .line 72
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 73
    move v8, v5

    .line 74
    move v7, v6

    .line 75
    .line 76
    :goto_1
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 77
    .line 78
    const/16 v10, 0x20

    .line 79
    const/4 v11, 0x1

    .line 80
    .line 81
    if-ge v7, v9, :cond_d

    .line 82
    .line 83
    aget-byte v12, v2, v7

    .line 84
    .line 85
    const/16 v13, 0x5c

    .line 86
    .line 87
    if-ne v12, v13, :cond_6

    .line 88
    .line 89
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 90
    .line 91
    add-int/lit8 v9, v7, 0x1

    .line 92
    .line 93
    aget-byte v9, v2, v9

    .line 94
    .line 95
    const/16 v10, 0x75

    .line 96
    .line 97
    if-ne v9, v10, :cond_4

    .line 98
    const/4 v9, 0x6

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_4
    const/16 v10, 0x78

    .line 102
    .line 103
    if-ne v9, v10, :cond_5

    .line 104
    const/4 v9, 0x4

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    const/4 v9, 0x2

    .line 107
    :goto_2
    add-int/2addr v7, v9

    .line 108
    goto :goto_5

    .line 109
    .line 110
    :cond_6
    if-ne v12, v1, :cond_c

    .line 111
    .line 112
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 113
    .line 114
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 115
    .line 116
    add-int/lit8 v7, v7, 0x1

    .line 117
    .line 118
    if-ge v7, v9, :cond_7

    .line 119
    .line 120
    aget-byte v1, v2, v7

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :cond_7
    const/16 v1, 0x1a

    .line 124
    .line 125
    :goto_3
    if-gt v1, v10, :cond_8

    .line 126
    .line 127
    const-wide/16 v8, 0x1

    .line 128
    shl-long/2addr v8, v1

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    const-wide v12, 0x100003701L

    .line 134
    and-long/2addr v8, v12

    .line 135
    .line 136
    cmp-long v8, v8, v3

    .line 137
    .line 138
    if-eqz v8, :cond_8

    .line 139
    .line 140
    add-int/lit8 v7, v7, 0x1

    .line 141
    .line 142
    aget-byte v1, v2, v7

    .line 143
    goto :goto_3

    .line 144
    .line 145
    :cond_8
    const/16 v8, 0x3a

    .line 146
    .line 147
    if-ne v1, v8, :cond_b

    .line 148
    add-int/2addr v7, v11

    .line 149
    .line 150
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 151
    .line 152
    if-ge v7, v1, :cond_a

    .line 153
    .line 154
    aget-byte v1, v2, v7

    .line 155
    .line 156
    :goto_4
    if-gt v1, v10, :cond_9

    .line 157
    .line 158
    const-wide/16 v8, 0x1

    .line 159
    shl-long/2addr v8, v1

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    const-wide v12, 0x100003701L

    .line 165
    and-long/2addr v8, v12

    .line 166
    .line 167
    cmp-long v8, v8, v3

    .line 168
    .line 169
    if-eqz v8, :cond_9

    .line 170
    .line 171
    add-int/lit8 v7, v7, 0x1

    .line 172
    .line 173
    aget-byte v1, v2, v7

    .line 174
    goto :goto_4

    .line 175
    .line 176
    :cond_9
    add-int/lit8 v3, v7, 0x1

    .line 177
    .line 178
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 179
    int-to-char v1, v1

    .line 180
    .line 181
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 182
    goto :goto_6

    .line 183
    .line 184
    :cond_a
    const/16 v1, 0x1a

    .line 185
    .line 186
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 187
    .line 188
    .line 189
    invoke-static {v7, v1}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 190
    move-result-object v1

    .line 191
    throw v1

    .line 192
    .line 193
    :cond_b
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 194
    .line 195
    .line 196
    invoke-static {v7, v1}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 197
    move-result-object v1

    .line 198
    throw v1

    .line 199
    .line 200
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 201
    .line 202
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_d
    :goto_6
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 207
    .line 208
    if-lt v1, v6, :cond_14

    .line 209
    .line 210
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 211
    .line 212
    if-nez v3, :cond_13

    .line 213
    sub-int/2addr v1, v6

    .line 214
    .line 215
    const/16 v7, 0x38

    .line 216
    .line 217
    const/16 v9, 0x28

    .line 218
    .line 219
    const/16 v12, 0x18

    .line 220
    .line 221
    const/16 v13, 0x10

    .line 222
    .line 223
    const/16 v14, 0x8

    .line 224
    .line 225
    const-wide/16 v15, 0xff

    .line 226
    .line 227
    .line 228
    packed-switch v1, :pswitch_data_0

    .line 229
    .line 230
    move/from16 v21, v10

    .line 231
    .line 232
    const-wide/16 v14, -0x1

    .line 233
    .line 234
    const-wide/16 v16, -0x1

    .line 235
    .line 236
    const-wide/16 v18, -0x1

    .line 237
    .line 238
    goto/16 :goto_c

    .line 239
    .line 240
    :pswitch_0
    add-int/lit8 v17, v6, 0x7

    .line 241
    .line 242
    const-wide/16 v18, -0x1

    .line 243
    .line 244
    aget-byte v3, v2, v17

    .line 245
    int-to-long v3, v3

    .line 246
    shl-long/2addr v3, v7

    .line 247
    .line 248
    add-int/lit8 v17, v6, 0x6

    .line 249
    .line 250
    aget-byte v5, v2, v17

    .line 251
    .line 252
    move/from16 v17, v7

    .line 253
    .line 254
    const/16 v20, 0x30

    .line 255
    int-to-long v7, v5

    .line 256
    and-long/2addr v7, v15

    .line 257
    .line 258
    shl-long v7, v7, v20

    .line 259
    add-long/2addr v3, v7

    .line 260
    .line 261
    add-int/lit8 v5, v6, 0x5

    .line 262
    .line 263
    aget-byte v5, v2, v5

    .line 264
    int-to-long v7, v5

    .line 265
    and-long/2addr v7, v15

    .line 266
    shl-long/2addr v7, v9

    .line 267
    add-long/2addr v3, v7

    .line 268
    .line 269
    add-int/lit8 v5, v6, 0x4

    .line 270
    .line 271
    aget-byte v5, v2, v5

    .line 272
    int-to-long v7, v5

    .line 273
    and-long/2addr v7, v15

    .line 274
    shl-long/2addr v7, v10

    .line 275
    add-long/2addr v3, v7

    .line 276
    .line 277
    add-int/lit8 v5, v6, 0x3

    .line 278
    .line 279
    aget-byte v5, v2, v5

    .line 280
    int-to-long v7, v5

    .line 281
    and-long/2addr v7, v15

    .line 282
    shl-long/2addr v7, v12

    .line 283
    add-long/2addr v3, v7

    .line 284
    .line 285
    add-int/lit8 v5, v6, 0x2

    .line 286
    .line 287
    aget-byte v5, v2, v5

    .line 288
    int-to-long v7, v5

    .line 289
    and-long/2addr v7, v15

    .line 290
    shl-long/2addr v7, v13

    .line 291
    add-long/2addr v3, v7

    .line 292
    .line 293
    add-int/lit8 v5, v6, 0x1

    .line 294
    .line 295
    aget-byte v5, v2, v5

    .line 296
    int-to-long v7, v5

    .line 297
    and-long/2addr v7, v15

    .line 298
    shl-long/2addr v7, v14

    .line 299
    add-long/2addr v3, v7

    .line 300
    .line 301
    aget-byte v5, v2, v6

    .line 302
    int-to-long v7, v5

    .line 303
    and-long/2addr v7, v15

    .line 304
    add-long/2addr v3, v7

    .line 305
    .line 306
    add-int/lit8 v5, v6, 0xf

    .line 307
    .line 308
    aget-byte v5, v2, v5

    .line 309
    int-to-long v7, v5

    .line 310
    .line 311
    shl-long v7, v7, v17

    .line 312
    .line 313
    add-int/lit8 v5, v6, 0xe

    .line 314
    .line 315
    aget-byte v5, v2, v5

    .line 316
    .line 317
    move/from16 v22, v9

    .line 318
    .line 319
    move/from16 v21, v10

    .line 320
    int-to-long v9, v5

    .line 321
    and-long/2addr v9, v15

    .line 322
    .line 323
    shl-long v9, v9, v20

    .line 324
    add-long/2addr v7, v9

    .line 325
    .line 326
    add-int/lit8 v5, v6, 0xd

    .line 327
    .line 328
    aget-byte v5, v2, v5

    .line 329
    int-to-long v9, v5

    .line 330
    and-long/2addr v9, v15

    .line 331
    .line 332
    shl-long v9, v9, v22

    .line 333
    add-long/2addr v7, v9

    .line 334
    .line 335
    add-int/lit8 v5, v6, 0xc

    .line 336
    .line 337
    aget-byte v5, v2, v5

    .line 338
    int-to-long v9, v5

    .line 339
    and-long/2addr v9, v15

    .line 340
    .line 341
    shl-long v9, v9, v21

    .line 342
    add-long/2addr v7, v9

    .line 343
    .line 344
    add-int/lit8 v5, v6, 0xb

    .line 345
    .line 346
    aget-byte v5, v2, v5

    .line 347
    int-to-long v9, v5

    .line 348
    and-long/2addr v9, v15

    .line 349
    shl-long/2addr v9, v12

    .line 350
    add-long/2addr v7, v9

    .line 351
    .line 352
    add-int/lit8 v5, v6, 0xa

    .line 353
    .line 354
    aget-byte v5, v2, v5

    .line 355
    int-to-long v9, v5

    .line 356
    and-long/2addr v9, v15

    .line 357
    shl-long/2addr v9, v13

    .line 358
    add-long/2addr v7, v9

    .line 359
    .line 360
    add-int/lit8 v5, v6, 0x9

    .line 361
    .line 362
    aget-byte v5, v2, v5

    .line 363
    int-to-long v9, v5

    .line 364
    and-long/2addr v9, v15

    .line 365
    shl-long/2addr v9, v14

    .line 366
    add-long/2addr v7, v9

    .line 367
    .line 368
    add-int/lit8 v5, v6, 0x8

    .line 369
    .line 370
    aget-byte v5, v2, v5

    .line 371
    :goto_7
    int-to-long v9, v5

    .line 372
    and-long/2addr v9, v15

    .line 373
    add-long/2addr v7, v9

    .line 374
    move-wide v14, v3

    .line 375
    .line 376
    move-wide/from16 v16, v7

    .line 377
    .line 378
    goto/16 :goto_c

    .line 379
    .line 380
    :pswitch_1
    move/from16 v17, v7

    .line 381
    .line 382
    move/from16 v22, v9

    .line 383
    .line 384
    move/from16 v21, v10

    .line 385
    .line 386
    const-wide/16 v18, -0x1

    .line 387
    .line 388
    const/16 v20, 0x30

    .line 389
    .line 390
    add-int/lit8 v3, v6, 0x6

    .line 391
    .line 392
    aget-byte v3, v2, v3

    .line 393
    int-to-long v3, v3

    .line 394
    .line 395
    shl-long v3, v3, v20

    .line 396
    .line 397
    add-int/lit8 v5, v6, 0x5

    .line 398
    .line 399
    aget-byte v5, v2, v5

    .line 400
    int-to-long v7, v5

    .line 401
    and-long/2addr v7, v15

    .line 402
    .line 403
    shl-long v7, v7, v22

    .line 404
    add-long/2addr v3, v7

    .line 405
    .line 406
    add-int/lit8 v5, v6, 0x4

    .line 407
    .line 408
    aget-byte v5, v2, v5

    .line 409
    int-to-long v7, v5

    .line 410
    and-long/2addr v7, v15

    .line 411
    .line 412
    shl-long v7, v7, v21

    .line 413
    add-long/2addr v3, v7

    .line 414
    .line 415
    add-int/lit8 v5, v6, 0x3

    .line 416
    .line 417
    aget-byte v5, v2, v5

    .line 418
    int-to-long v7, v5

    .line 419
    and-long/2addr v7, v15

    .line 420
    shl-long/2addr v7, v12

    .line 421
    add-long/2addr v3, v7

    .line 422
    .line 423
    add-int/lit8 v5, v6, 0x2

    .line 424
    .line 425
    aget-byte v5, v2, v5

    .line 426
    int-to-long v7, v5

    .line 427
    and-long/2addr v7, v15

    .line 428
    shl-long/2addr v7, v13

    .line 429
    add-long/2addr v3, v7

    .line 430
    .line 431
    add-int/lit8 v5, v6, 0x1

    .line 432
    .line 433
    aget-byte v5, v2, v5

    .line 434
    int-to-long v7, v5

    .line 435
    and-long/2addr v7, v15

    .line 436
    shl-long/2addr v7, v14

    .line 437
    add-long/2addr v3, v7

    .line 438
    .line 439
    aget-byte v5, v2, v6

    .line 440
    int-to-long v7, v5

    .line 441
    and-long/2addr v7, v15

    .line 442
    add-long/2addr v3, v7

    .line 443
    .line 444
    add-int/lit8 v5, v6, 0xe

    .line 445
    .line 446
    aget-byte v5, v2, v5

    .line 447
    int-to-long v7, v5

    .line 448
    .line 449
    shl-long v7, v7, v17

    .line 450
    .line 451
    add-int/lit8 v5, v6, 0xd

    .line 452
    .line 453
    aget-byte v5, v2, v5

    .line 454
    int-to-long v9, v5

    .line 455
    and-long/2addr v9, v15

    .line 456
    .line 457
    shl-long v9, v9, v20

    .line 458
    add-long/2addr v7, v9

    .line 459
    .line 460
    add-int/lit8 v5, v6, 0xc

    .line 461
    .line 462
    aget-byte v5, v2, v5

    .line 463
    int-to-long v9, v5

    .line 464
    and-long/2addr v9, v15

    .line 465
    .line 466
    shl-long v9, v9, v22

    .line 467
    add-long/2addr v7, v9

    .line 468
    .line 469
    add-int/lit8 v5, v6, 0xb

    .line 470
    .line 471
    aget-byte v5, v2, v5

    .line 472
    int-to-long v9, v5

    .line 473
    and-long/2addr v9, v15

    .line 474
    .line 475
    shl-long v9, v9, v21

    .line 476
    add-long/2addr v7, v9

    .line 477
    .line 478
    add-int/lit8 v5, v6, 0xa

    .line 479
    .line 480
    aget-byte v5, v2, v5

    .line 481
    int-to-long v9, v5

    .line 482
    and-long/2addr v9, v15

    .line 483
    shl-long/2addr v9, v12

    .line 484
    add-long/2addr v7, v9

    .line 485
    .line 486
    add-int/lit8 v5, v6, 0x9

    .line 487
    .line 488
    aget-byte v5, v2, v5

    .line 489
    int-to-long v9, v5

    .line 490
    and-long/2addr v9, v15

    .line 491
    shl-long/2addr v9, v13

    .line 492
    add-long/2addr v7, v9

    .line 493
    .line 494
    add-int/lit8 v5, v6, 0x8

    .line 495
    .line 496
    aget-byte v5, v2, v5

    .line 497
    int-to-long v9, v5

    .line 498
    and-long/2addr v9, v15

    .line 499
    shl-long/2addr v9, v14

    .line 500
    add-long/2addr v7, v9

    .line 501
    .line 502
    add-int/lit8 v5, v6, 0x7

    .line 503
    .line 504
    aget-byte v5, v2, v5

    .line 505
    .line 506
    goto/16 :goto_7

    .line 507
    .line 508
    :pswitch_2
    move/from16 v17, v7

    .line 509
    .line 510
    move/from16 v22, v9

    .line 511
    .line 512
    move/from16 v21, v10

    .line 513
    .line 514
    const-wide/16 v18, -0x1

    .line 515
    .line 516
    const/16 v20, 0x30

    .line 517
    .line 518
    add-int/lit8 v3, v6, 0x5

    .line 519
    .line 520
    aget-byte v3, v2, v3

    .line 521
    int-to-long v3, v3

    .line 522
    .line 523
    shl-long v3, v3, v22

    .line 524
    .line 525
    add-int/lit8 v5, v6, 0x4

    .line 526
    .line 527
    aget-byte v5, v2, v5

    .line 528
    int-to-long v7, v5

    .line 529
    and-long/2addr v7, v15

    .line 530
    .line 531
    shl-long v7, v7, v21

    .line 532
    add-long/2addr v3, v7

    .line 533
    .line 534
    add-int/lit8 v5, v6, 0x3

    .line 535
    .line 536
    aget-byte v5, v2, v5

    .line 537
    int-to-long v7, v5

    .line 538
    and-long/2addr v7, v15

    .line 539
    shl-long/2addr v7, v12

    .line 540
    add-long/2addr v3, v7

    .line 541
    .line 542
    add-int/lit8 v5, v6, 0x2

    .line 543
    .line 544
    aget-byte v5, v2, v5

    .line 545
    int-to-long v7, v5

    .line 546
    and-long/2addr v7, v15

    .line 547
    shl-long/2addr v7, v13

    .line 548
    add-long/2addr v3, v7

    .line 549
    .line 550
    add-int/lit8 v5, v6, 0x1

    .line 551
    .line 552
    aget-byte v5, v2, v5

    .line 553
    int-to-long v7, v5

    .line 554
    and-long/2addr v7, v15

    .line 555
    shl-long/2addr v7, v14

    .line 556
    add-long/2addr v3, v7

    .line 557
    .line 558
    aget-byte v5, v2, v6

    .line 559
    int-to-long v7, v5

    .line 560
    and-long/2addr v7, v15

    .line 561
    add-long/2addr v3, v7

    .line 562
    .line 563
    add-int/lit8 v5, v6, 0xd

    .line 564
    .line 565
    aget-byte v5, v2, v5

    .line 566
    int-to-long v7, v5

    .line 567
    .line 568
    shl-long v7, v7, v17

    .line 569
    .line 570
    add-int/lit8 v5, v6, 0xc

    .line 571
    .line 572
    aget-byte v5, v2, v5

    .line 573
    int-to-long v9, v5

    .line 574
    and-long/2addr v9, v15

    .line 575
    .line 576
    shl-long v9, v9, v20

    .line 577
    add-long/2addr v7, v9

    .line 578
    .line 579
    add-int/lit8 v5, v6, 0xb

    .line 580
    .line 581
    aget-byte v5, v2, v5

    .line 582
    int-to-long v9, v5

    .line 583
    and-long/2addr v9, v15

    .line 584
    .line 585
    shl-long v9, v9, v22

    .line 586
    add-long/2addr v7, v9

    .line 587
    .line 588
    add-int/lit8 v5, v6, 0xa

    .line 589
    .line 590
    aget-byte v5, v2, v5

    .line 591
    int-to-long v9, v5

    .line 592
    and-long/2addr v9, v15

    .line 593
    .line 594
    shl-long v9, v9, v21

    .line 595
    add-long/2addr v7, v9

    .line 596
    .line 597
    add-int/lit8 v5, v6, 0x9

    .line 598
    .line 599
    aget-byte v5, v2, v5

    .line 600
    int-to-long v9, v5

    .line 601
    and-long/2addr v9, v15

    .line 602
    shl-long/2addr v9, v12

    .line 603
    add-long/2addr v7, v9

    .line 604
    .line 605
    add-int/lit8 v5, v6, 0x8

    .line 606
    .line 607
    aget-byte v5, v2, v5

    .line 608
    int-to-long v9, v5

    .line 609
    and-long/2addr v9, v15

    .line 610
    shl-long/2addr v9, v13

    .line 611
    add-long/2addr v7, v9

    .line 612
    .line 613
    add-int/lit8 v5, v6, 0x7

    .line 614
    .line 615
    aget-byte v5, v2, v5

    .line 616
    int-to-long v9, v5

    .line 617
    and-long/2addr v9, v15

    .line 618
    shl-long/2addr v9, v14

    .line 619
    add-long/2addr v7, v9

    .line 620
    .line 621
    add-int/lit8 v5, v6, 0x6

    .line 622
    .line 623
    aget-byte v5, v2, v5

    .line 624
    .line 625
    goto/16 :goto_7

    .line 626
    .line 627
    :pswitch_3
    move/from16 v17, v7

    .line 628
    .line 629
    move/from16 v22, v9

    .line 630
    .line 631
    move/from16 v21, v10

    .line 632
    .line 633
    const-wide/16 v18, -0x1

    .line 634
    .line 635
    const/16 v20, 0x30

    .line 636
    .line 637
    add-int/lit8 v3, v6, 0x4

    .line 638
    .line 639
    aget-byte v3, v2, v3

    .line 640
    int-to-long v3, v3

    .line 641
    .line 642
    shl-long v3, v3, v21

    .line 643
    .line 644
    add-int/lit8 v5, v6, 0x3

    .line 645
    .line 646
    aget-byte v5, v2, v5

    .line 647
    int-to-long v7, v5

    .line 648
    shl-long/2addr v7, v12

    .line 649
    add-long/2addr v3, v7

    .line 650
    .line 651
    add-int/lit8 v5, v6, 0x2

    .line 652
    .line 653
    aget-byte v5, v2, v5

    .line 654
    int-to-long v7, v5

    .line 655
    shl-long/2addr v7, v13

    .line 656
    add-long/2addr v3, v7

    .line 657
    .line 658
    add-int/lit8 v5, v6, 0x1

    .line 659
    .line 660
    aget-byte v5, v2, v5

    .line 661
    int-to-long v7, v5

    .line 662
    shl-long/2addr v7, v14

    .line 663
    add-long/2addr v3, v7

    .line 664
    .line 665
    aget-byte v5, v2, v6

    .line 666
    int-to-long v7, v5

    .line 667
    add-long/2addr v3, v7

    .line 668
    .line 669
    add-int/lit8 v5, v6, 0xc

    .line 670
    .line 671
    aget-byte v5, v2, v5

    .line 672
    int-to-long v7, v5

    .line 673
    .line 674
    shl-long v7, v7, v17

    .line 675
    .line 676
    add-int/lit8 v5, v6, 0xb

    .line 677
    .line 678
    aget-byte v5, v2, v5

    .line 679
    int-to-long v9, v5

    .line 680
    and-long/2addr v9, v15

    .line 681
    .line 682
    shl-long v9, v9, v20

    .line 683
    add-long/2addr v7, v9

    .line 684
    .line 685
    add-int/lit8 v5, v6, 0xa

    .line 686
    .line 687
    aget-byte v5, v2, v5

    .line 688
    int-to-long v9, v5

    .line 689
    and-long/2addr v9, v15

    .line 690
    .line 691
    shl-long v9, v9, v22

    .line 692
    add-long/2addr v7, v9

    .line 693
    .line 694
    add-int/lit8 v5, v6, 0x9

    .line 695
    .line 696
    aget-byte v5, v2, v5

    .line 697
    int-to-long v9, v5

    .line 698
    and-long/2addr v9, v15

    .line 699
    .line 700
    shl-long v9, v9, v21

    .line 701
    add-long/2addr v7, v9

    .line 702
    .line 703
    add-int/lit8 v5, v6, 0x8

    .line 704
    .line 705
    aget-byte v5, v2, v5

    .line 706
    int-to-long v9, v5

    .line 707
    and-long/2addr v9, v15

    .line 708
    shl-long/2addr v9, v12

    .line 709
    add-long/2addr v7, v9

    .line 710
    .line 711
    add-int/lit8 v5, v6, 0x7

    .line 712
    .line 713
    aget-byte v5, v2, v5

    .line 714
    int-to-long v9, v5

    .line 715
    and-long/2addr v9, v15

    .line 716
    shl-long/2addr v9, v13

    .line 717
    add-long/2addr v7, v9

    .line 718
    .line 719
    add-int/lit8 v5, v6, 0x6

    .line 720
    .line 721
    aget-byte v5, v2, v5

    .line 722
    int-to-long v9, v5

    .line 723
    and-long/2addr v9, v15

    .line 724
    shl-long/2addr v9, v14

    .line 725
    add-long/2addr v7, v9

    .line 726
    .line 727
    add-int/lit8 v5, v6, 0x5

    .line 728
    .line 729
    aget-byte v5, v2, v5

    .line 730
    .line 731
    goto/16 :goto_7

    .line 732
    .line 733
    :pswitch_4
    move/from16 v17, v7

    .line 734
    .line 735
    move/from16 v22, v9

    .line 736
    .line 737
    move/from16 v21, v10

    .line 738
    .line 739
    const-wide/16 v18, -0x1

    .line 740
    .line 741
    const/16 v20, 0x30

    .line 742
    .line 743
    add-int/lit8 v3, v6, 0x3

    .line 744
    .line 745
    aget-byte v3, v2, v3

    .line 746
    shl-int/2addr v3, v12

    .line 747
    .line 748
    add-int/lit8 v4, v6, 0x2

    .line 749
    .line 750
    aget-byte v4, v2, v4

    .line 751
    shl-int/2addr v4, v13

    .line 752
    add-int/2addr v3, v4

    .line 753
    .line 754
    add-int/lit8 v4, v6, 0x1

    .line 755
    .line 756
    aget-byte v4, v2, v4

    .line 757
    shl-int/2addr v4, v14

    .line 758
    add-int/2addr v3, v4

    .line 759
    .line 760
    aget-byte v4, v2, v6

    .line 761
    add-int/2addr v3, v4

    .line 762
    int-to-long v3, v3

    .line 763
    .line 764
    add-int/lit8 v5, v6, 0xb

    .line 765
    .line 766
    aget-byte v5, v2, v5

    .line 767
    int-to-long v7, v5

    .line 768
    .line 769
    shl-long v7, v7, v17

    .line 770
    .line 771
    add-int/lit8 v5, v6, 0xa

    .line 772
    .line 773
    aget-byte v5, v2, v5

    .line 774
    int-to-long v9, v5

    .line 775
    and-long/2addr v9, v15

    .line 776
    .line 777
    shl-long v9, v9, v20

    .line 778
    add-long/2addr v7, v9

    .line 779
    .line 780
    add-int/lit8 v5, v6, 0x9

    .line 781
    .line 782
    aget-byte v5, v2, v5

    .line 783
    int-to-long v9, v5

    .line 784
    and-long/2addr v9, v15

    .line 785
    .line 786
    shl-long v9, v9, v22

    .line 787
    add-long/2addr v7, v9

    .line 788
    .line 789
    add-int/lit8 v5, v6, 0x8

    .line 790
    .line 791
    aget-byte v5, v2, v5

    .line 792
    int-to-long v9, v5

    .line 793
    and-long/2addr v9, v15

    .line 794
    .line 795
    shl-long v9, v9, v21

    .line 796
    add-long/2addr v7, v9

    .line 797
    .line 798
    add-int/lit8 v5, v6, 0x7

    .line 799
    .line 800
    aget-byte v5, v2, v5

    .line 801
    int-to-long v9, v5

    .line 802
    and-long/2addr v9, v15

    .line 803
    shl-long/2addr v9, v12

    .line 804
    add-long/2addr v7, v9

    .line 805
    .line 806
    add-int/lit8 v5, v6, 0x6

    .line 807
    .line 808
    aget-byte v5, v2, v5

    .line 809
    int-to-long v9, v5

    .line 810
    and-long/2addr v9, v15

    .line 811
    shl-long/2addr v9, v13

    .line 812
    add-long/2addr v7, v9

    .line 813
    .line 814
    add-int/lit8 v5, v6, 0x5

    .line 815
    .line 816
    aget-byte v5, v2, v5

    .line 817
    int-to-long v9, v5

    .line 818
    and-long/2addr v9, v15

    .line 819
    shl-long/2addr v9, v14

    .line 820
    add-long/2addr v7, v9

    .line 821
    .line 822
    add-int/lit8 v5, v6, 0x4

    .line 823
    .line 824
    aget-byte v5, v2, v5

    .line 825
    .line 826
    goto/16 :goto_7

    .line 827
    .line 828
    :pswitch_5
    move/from16 v17, v7

    .line 829
    .line 830
    move/from16 v22, v9

    .line 831
    .line 832
    move/from16 v21, v10

    .line 833
    .line 834
    const-wide/16 v18, -0x1

    .line 835
    .line 836
    const/16 v20, 0x30

    .line 837
    .line 838
    add-int/lit8 v3, v6, 0x2

    .line 839
    .line 840
    aget-byte v3, v2, v3

    .line 841
    shl-int/2addr v3, v13

    .line 842
    .line 843
    add-int/lit8 v4, v6, 0x1

    .line 844
    .line 845
    aget-byte v4, v2, v4

    .line 846
    shl-int/2addr v4, v14

    .line 847
    add-int/2addr v3, v4

    .line 848
    .line 849
    aget-byte v4, v2, v6

    .line 850
    add-int/2addr v3, v4

    .line 851
    int-to-long v3, v3

    .line 852
    .line 853
    add-int/lit8 v5, v6, 0xa

    .line 854
    .line 855
    aget-byte v5, v2, v5

    .line 856
    int-to-long v7, v5

    .line 857
    .line 858
    shl-long v7, v7, v17

    .line 859
    .line 860
    add-int/lit8 v5, v6, 0x9

    .line 861
    .line 862
    aget-byte v5, v2, v5

    .line 863
    int-to-long v9, v5

    .line 864
    and-long/2addr v9, v15

    .line 865
    .line 866
    shl-long v9, v9, v20

    .line 867
    add-long/2addr v7, v9

    .line 868
    .line 869
    add-int/lit8 v5, v6, 0x8

    .line 870
    .line 871
    aget-byte v5, v2, v5

    .line 872
    int-to-long v9, v5

    .line 873
    and-long/2addr v9, v15

    .line 874
    .line 875
    shl-long v9, v9, v22

    .line 876
    add-long/2addr v7, v9

    .line 877
    .line 878
    add-int/lit8 v5, v6, 0x7

    .line 879
    .line 880
    aget-byte v5, v2, v5

    .line 881
    int-to-long v9, v5

    .line 882
    and-long/2addr v9, v15

    .line 883
    .line 884
    shl-long v9, v9, v21

    .line 885
    add-long/2addr v7, v9

    .line 886
    .line 887
    add-int/lit8 v5, v6, 0x6

    .line 888
    .line 889
    aget-byte v5, v2, v5

    .line 890
    int-to-long v9, v5

    .line 891
    and-long/2addr v9, v15

    .line 892
    shl-long/2addr v9, v12

    .line 893
    add-long/2addr v7, v9

    .line 894
    .line 895
    add-int/lit8 v5, v6, 0x5

    .line 896
    .line 897
    aget-byte v5, v2, v5

    .line 898
    int-to-long v9, v5

    .line 899
    and-long/2addr v9, v15

    .line 900
    shl-long/2addr v9, v13

    .line 901
    add-long/2addr v7, v9

    .line 902
    .line 903
    add-int/lit8 v5, v6, 0x4

    .line 904
    .line 905
    aget-byte v5, v2, v5

    .line 906
    int-to-long v9, v5

    .line 907
    and-long/2addr v9, v15

    .line 908
    shl-long/2addr v9, v14

    .line 909
    add-long/2addr v7, v9

    .line 910
    .line 911
    add-int/lit8 v5, v6, 0x3

    .line 912
    .line 913
    aget-byte v5, v2, v5

    .line 914
    .line 915
    goto/16 :goto_7

    .line 916
    .line 917
    :pswitch_6
    move/from16 v17, v7

    .line 918
    .line 919
    move/from16 v22, v9

    .line 920
    .line 921
    move/from16 v21, v10

    .line 922
    .line 923
    const-wide/16 v18, -0x1

    .line 924
    .line 925
    const/16 v20, 0x30

    .line 926
    .line 927
    add-int/lit8 v3, v6, 0x1

    .line 928
    .line 929
    aget-byte v3, v2, v3

    .line 930
    shl-int/2addr v3, v14

    .line 931
    .line 932
    aget-byte v4, v2, v6

    .line 933
    add-int/2addr v3, v4

    .line 934
    int-to-long v3, v3

    .line 935
    .line 936
    add-int/lit8 v5, v6, 0x9

    .line 937
    .line 938
    aget-byte v5, v2, v5

    .line 939
    int-to-long v7, v5

    .line 940
    .line 941
    shl-long v7, v7, v17

    .line 942
    .line 943
    add-int/lit8 v5, v6, 0x8

    .line 944
    .line 945
    aget-byte v5, v2, v5

    .line 946
    int-to-long v9, v5

    .line 947
    and-long/2addr v9, v15

    .line 948
    .line 949
    shl-long v9, v9, v20

    .line 950
    add-long/2addr v7, v9

    .line 951
    .line 952
    add-int/lit8 v5, v6, 0x7

    .line 953
    .line 954
    aget-byte v5, v2, v5

    .line 955
    int-to-long v9, v5

    .line 956
    and-long/2addr v9, v15

    .line 957
    .line 958
    shl-long v9, v9, v22

    .line 959
    add-long/2addr v7, v9

    .line 960
    .line 961
    add-int/lit8 v5, v6, 0x6

    .line 962
    .line 963
    aget-byte v5, v2, v5

    .line 964
    int-to-long v9, v5

    .line 965
    and-long/2addr v9, v15

    .line 966
    .line 967
    shl-long v9, v9, v21

    .line 968
    add-long/2addr v7, v9

    .line 969
    .line 970
    add-int/lit8 v5, v6, 0x5

    .line 971
    .line 972
    aget-byte v5, v2, v5

    .line 973
    int-to-long v9, v5

    .line 974
    and-long/2addr v9, v15

    .line 975
    shl-long/2addr v9, v12

    .line 976
    add-long/2addr v7, v9

    .line 977
    .line 978
    add-int/lit8 v5, v6, 0x4

    .line 979
    .line 980
    aget-byte v5, v2, v5

    .line 981
    int-to-long v9, v5

    .line 982
    and-long/2addr v9, v15

    .line 983
    shl-long/2addr v9, v13

    .line 984
    add-long/2addr v7, v9

    .line 985
    .line 986
    add-int/lit8 v5, v6, 0x3

    .line 987
    .line 988
    aget-byte v5, v2, v5

    .line 989
    int-to-long v9, v5

    .line 990
    and-long/2addr v9, v15

    .line 991
    shl-long/2addr v9, v14

    .line 992
    add-long/2addr v7, v9

    .line 993
    .line 994
    add-int/lit8 v5, v6, 0x2

    .line 995
    .line 996
    aget-byte v5, v2, v5

    .line 997
    .line 998
    goto/16 :goto_7

    .line 999
    .line 1000
    :pswitch_7
    move/from16 v17, v7

    .line 1001
    .line 1002
    move/from16 v22, v9

    .line 1003
    .line 1004
    move/from16 v21, v10

    .line 1005
    .line 1006
    const-wide/16 v18, -0x1

    .line 1007
    .line 1008
    const/16 v20, 0x30

    .line 1009
    .line 1010
    aget-byte v3, v2, v6

    .line 1011
    int-to-long v3, v3

    .line 1012
    .line 1013
    add-int/lit8 v5, v6, 0x8

    .line 1014
    .line 1015
    aget-byte v5, v2, v5

    .line 1016
    int-to-long v7, v5

    .line 1017
    .line 1018
    shl-long v7, v7, v17

    .line 1019
    .line 1020
    add-int/lit8 v5, v6, 0x7

    .line 1021
    .line 1022
    aget-byte v5, v2, v5

    .line 1023
    int-to-long v9, v5

    .line 1024
    and-long/2addr v9, v15

    .line 1025
    .line 1026
    shl-long v9, v9, v20

    .line 1027
    add-long/2addr v7, v9

    .line 1028
    .line 1029
    add-int/lit8 v5, v6, 0x6

    .line 1030
    .line 1031
    aget-byte v5, v2, v5

    .line 1032
    int-to-long v9, v5

    .line 1033
    and-long/2addr v9, v15

    .line 1034
    .line 1035
    shl-long v9, v9, v22

    .line 1036
    add-long/2addr v7, v9

    .line 1037
    .line 1038
    add-int/lit8 v5, v6, 0x5

    .line 1039
    .line 1040
    aget-byte v5, v2, v5

    .line 1041
    int-to-long v9, v5

    .line 1042
    and-long/2addr v9, v15

    .line 1043
    .line 1044
    shl-long v9, v9, v21

    .line 1045
    add-long/2addr v7, v9

    .line 1046
    .line 1047
    add-int/lit8 v5, v6, 0x4

    .line 1048
    .line 1049
    aget-byte v5, v2, v5

    .line 1050
    int-to-long v9, v5

    .line 1051
    and-long/2addr v9, v15

    .line 1052
    shl-long/2addr v9, v12

    .line 1053
    add-long/2addr v7, v9

    .line 1054
    .line 1055
    add-int/lit8 v5, v6, 0x3

    .line 1056
    .line 1057
    aget-byte v5, v2, v5

    .line 1058
    int-to-long v9, v5

    .line 1059
    and-long/2addr v9, v15

    .line 1060
    shl-long/2addr v9, v13

    .line 1061
    add-long/2addr v7, v9

    .line 1062
    .line 1063
    add-int/lit8 v5, v6, 0x2

    .line 1064
    .line 1065
    aget-byte v5, v2, v5

    .line 1066
    int-to-long v9, v5

    .line 1067
    and-long/2addr v9, v15

    .line 1068
    shl-long/2addr v9, v14

    .line 1069
    add-long/2addr v7, v9

    .line 1070
    .line 1071
    add-int/lit8 v5, v6, 0x1

    .line 1072
    .line 1073
    aget-byte v5, v2, v5

    .line 1074
    .line 1075
    goto/16 :goto_7

    .line 1076
    .line 1077
    :pswitch_8
    move/from16 v17, v7

    .line 1078
    .line 1079
    move/from16 v22, v9

    .line 1080
    .line 1081
    move/from16 v21, v10

    .line 1082
    .line 1083
    const-wide/16 v18, -0x1

    .line 1084
    .line 1085
    const/16 v20, 0x30

    .line 1086
    .line 1087
    add-int/lit8 v3, v6, 0x7

    .line 1088
    .line 1089
    aget-byte v3, v2, v3

    .line 1090
    int-to-long v3, v3

    .line 1091
    .line 1092
    shl-long v3, v3, v17

    .line 1093
    .line 1094
    add-int/lit8 v5, v6, 0x6

    .line 1095
    .line 1096
    aget-byte v5, v2, v5

    .line 1097
    int-to-long v7, v5

    .line 1098
    and-long/2addr v7, v15

    .line 1099
    .line 1100
    shl-long v7, v7, v20

    .line 1101
    add-long/2addr v3, v7

    .line 1102
    .line 1103
    add-int/lit8 v5, v6, 0x5

    .line 1104
    .line 1105
    aget-byte v5, v2, v5

    .line 1106
    int-to-long v7, v5

    .line 1107
    and-long/2addr v7, v15

    .line 1108
    .line 1109
    shl-long v7, v7, v22

    .line 1110
    add-long/2addr v3, v7

    .line 1111
    .line 1112
    add-int/lit8 v5, v6, 0x4

    .line 1113
    .line 1114
    aget-byte v5, v2, v5

    .line 1115
    int-to-long v7, v5

    .line 1116
    and-long/2addr v7, v15

    .line 1117
    .line 1118
    shl-long v7, v7, v21

    .line 1119
    add-long/2addr v3, v7

    .line 1120
    .line 1121
    add-int/lit8 v5, v6, 0x3

    .line 1122
    .line 1123
    aget-byte v5, v2, v5

    .line 1124
    int-to-long v7, v5

    .line 1125
    and-long/2addr v7, v15

    .line 1126
    shl-long/2addr v7, v12

    .line 1127
    add-long/2addr v3, v7

    .line 1128
    .line 1129
    add-int/lit8 v5, v6, 0x2

    .line 1130
    .line 1131
    aget-byte v5, v2, v5

    .line 1132
    int-to-long v7, v5

    .line 1133
    and-long/2addr v7, v15

    .line 1134
    shl-long/2addr v7, v13

    .line 1135
    add-long/2addr v3, v7

    .line 1136
    .line 1137
    add-int/lit8 v5, v6, 0x1

    .line 1138
    .line 1139
    aget-byte v5, v2, v5

    .line 1140
    int-to-long v7, v5

    .line 1141
    and-long/2addr v7, v15

    .line 1142
    shl-long/2addr v7, v14

    .line 1143
    add-long/2addr v3, v7

    .line 1144
    .line 1145
    aget-byte v5, v2, v6

    .line 1146
    :goto_8
    int-to-long v7, v5

    .line 1147
    and-long/2addr v7, v15

    .line 1148
    add-long/2addr v3, v7

    .line 1149
    :goto_9
    move-wide v14, v3

    .line 1150
    .line 1151
    move-wide/from16 v16, v18

    .line 1152
    .line 1153
    goto/16 :goto_c

    .line 1154
    .line 1155
    :pswitch_9
    move/from16 v22, v9

    .line 1156
    .line 1157
    move/from16 v21, v10

    .line 1158
    .line 1159
    const-wide/16 v18, -0x1

    .line 1160
    .line 1161
    const/16 v20, 0x30

    .line 1162
    .line 1163
    add-int/lit8 v3, v6, 0x6

    .line 1164
    .line 1165
    aget-byte v3, v2, v3

    .line 1166
    int-to-long v3, v3

    .line 1167
    .line 1168
    shl-long v3, v3, v20

    .line 1169
    .line 1170
    add-int/lit8 v5, v6, 0x5

    .line 1171
    .line 1172
    aget-byte v5, v2, v5

    .line 1173
    int-to-long v7, v5

    .line 1174
    and-long/2addr v7, v15

    .line 1175
    .line 1176
    shl-long v7, v7, v22

    .line 1177
    add-long/2addr v3, v7

    .line 1178
    .line 1179
    add-int/lit8 v5, v6, 0x4

    .line 1180
    .line 1181
    aget-byte v5, v2, v5

    .line 1182
    int-to-long v7, v5

    .line 1183
    and-long/2addr v7, v15

    .line 1184
    .line 1185
    shl-long v7, v7, v21

    .line 1186
    add-long/2addr v3, v7

    .line 1187
    .line 1188
    add-int/lit8 v5, v6, 0x3

    .line 1189
    .line 1190
    aget-byte v5, v2, v5

    .line 1191
    int-to-long v7, v5

    .line 1192
    and-long/2addr v7, v15

    .line 1193
    shl-long/2addr v7, v12

    .line 1194
    add-long/2addr v3, v7

    .line 1195
    .line 1196
    add-int/lit8 v5, v6, 0x2

    .line 1197
    .line 1198
    aget-byte v5, v2, v5

    .line 1199
    int-to-long v7, v5

    .line 1200
    and-long/2addr v7, v15

    .line 1201
    shl-long/2addr v7, v13

    .line 1202
    add-long/2addr v3, v7

    .line 1203
    .line 1204
    add-int/lit8 v5, v6, 0x1

    .line 1205
    .line 1206
    aget-byte v5, v2, v5

    .line 1207
    int-to-long v7, v5

    .line 1208
    and-long/2addr v7, v15

    .line 1209
    shl-long/2addr v7, v14

    .line 1210
    add-long/2addr v3, v7

    .line 1211
    .line 1212
    aget-byte v5, v2, v6

    .line 1213
    goto :goto_8

    .line 1214
    .line 1215
    :pswitch_a
    move/from16 v22, v9

    .line 1216
    .line 1217
    move/from16 v21, v10

    .line 1218
    .line 1219
    const-wide/16 v18, -0x1

    .line 1220
    .line 1221
    add-int/lit8 v3, v6, 0x5

    .line 1222
    .line 1223
    aget-byte v3, v2, v3

    .line 1224
    int-to-long v3, v3

    .line 1225
    .line 1226
    shl-long v3, v3, v22

    .line 1227
    .line 1228
    add-int/lit8 v5, v6, 0x4

    .line 1229
    .line 1230
    aget-byte v5, v2, v5

    .line 1231
    int-to-long v7, v5

    .line 1232
    and-long/2addr v7, v15

    .line 1233
    .line 1234
    shl-long v7, v7, v21

    .line 1235
    add-long/2addr v3, v7

    .line 1236
    .line 1237
    add-int/lit8 v5, v6, 0x3

    .line 1238
    .line 1239
    aget-byte v5, v2, v5

    .line 1240
    int-to-long v7, v5

    .line 1241
    and-long/2addr v7, v15

    .line 1242
    shl-long/2addr v7, v12

    .line 1243
    add-long/2addr v3, v7

    .line 1244
    .line 1245
    add-int/lit8 v5, v6, 0x2

    .line 1246
    .line 1247
    aget-byte v5, v2, v5

    .line 1248
    int-to-long v7, v5

    .line 1249
    and-long/2addr v7, v15

    .line 1250
    shl-long/2addr v7, v13

    .line 1251
    add-long/2addr v3, v7

    .line 1252
    .line 1253
    add-int/lit8 v5, v6, 0x1

    .line 1254
    .line 1255
    aget-byte v5, v2, v5

    .line 1256
    int-to-long v7, v5

    .line 1257
    and-long/2addr v7, v15

    .line 1258
    shl-long/2addr v7, v14

    .line 1259
    add-long/2addr v3, v7

    .line 1260
    .line 1261
    aget-byte v5, v2, v6

    .line 1262
    goto :goto_8

    .line 1263
    .line 1264
    :pswitch_b
    move/from16 v21, v10

    .line 1265
    .line 1266
    const-wide/16 v18, -0x1

    .line 1267
    .line 1268
    add-int/lit8 v3, v6, 0x4

    .line 1269
    .line 1270
    aget-byte v3, v2, v3

    .line 1271
    int-to-long v3, v3

    .line 1272
    .line 1273
    shl-long v3, v3, v21

    .line 1274
    .line 1275
    add-int/lit8 v5, v6, 0x3

    .line 1276
    .line 1277
    aget-byte v5, v2, v5

    .line 1278
    int-to-long v7, v5

    .line 1279
    and-long/2addr v7, v15

    .line 1280
    shl-long/2addr v7, v12

    .line 1281
    add-long/2addr v3, v7

    .line 1282
    .line 1283
    add-int/lit8 v5, v6, 0x2

    .line 1284
    .line 1285
    aget-byte v5, v2, v5

    .line 1286
    int-to-long v7, v5

    .line 1287
    and-long/2addr v7, v15

    .line 1288
    shl-long/2addr v7, v13

    .line 1289
    add-long/2addr v3, v7

    .line 1290
    .line 1291
    add-int/lit8 v5, v6, 0x1

    .line 1292
    .line 1293
    aget-byte v5, v2, v5

    .line 1294
    int-to-long v7, v5

    .line 1295
    and-long/2addr v7, v15

    .line 1296
    shl-long/2addr v7, v14

    .line 1297
    add-long/2addr v3, v7

    .line 1298
    .line 1299
    aget-byte v5, v2, v6

    .line 1300
    .line 1301
    goto/16 :goto_8

    .line 1302
    .line 1303
    :pswitch_c
    move/from16 v21, v10

    .line 1304
    .line 1305
    const-wide/16 v18, -0x1

    .line 1306
    .line 1307
    add-int/lit8 v3, v6, 0x3

    .line 1308
    .line 1309
    aget-byte v3, v2, v3

    .line 1310
    shl-int/2addr v3, v12

    .line 1311
    .line 1312
    add-int/lit8 v4, v6, 0x2

    .line 1313
    .line 1314
    aget-byte v4, v2, v4

    .line 1315
    .line 1316
    and-int/lit16 v4, v4, 0xff

    .line 1317
    shl-int/2addr v4, v13

    .line 1318
    add-int/2addr v3, v4

    .line 1319
    .line 1320
    add-int/lit8 v4, v6, 0x1

    .line 1321
    .line 1322
    aget-byte v4, v2, v4

    .line 1323
    .line 1324
    and-int/lit16 v4, v4, 0xff

    .line 1325
    shl-int/2addr v4, v14

    .line 1326
    add-int/2addr v3, v4

    .line 1327
    .line 1328
    aget-byte v4, v2, v6

    .line 1329
    .line 1330
    :goto_a
    and-int/lit16 v4, v4, 0xff

    .line 1331
    add-int/2addr v3, v4

    .line 1332
    :goto_b
    int-to-long v3, v3

    .line 1333
    .line 1334
    goto/16 :goto_9

    .line 1335
    .line 1336
    :pswitch_d
    move/from16 v21, v10

    .line 1337
    .line 1338
    const-wide/16 v18, -0x1

    .line 1339
    .line 1340
    add-int/lit8 v3, v6, 0x2

    .line 1341
    .line 1342
    aget-byte v3, v2, v3

    .line 1343
    shl-int/2addr v3, v13

    .line 1344
    .line 1345
    add-int/lit8 v4, v6, 0x1

    .line 1346
    .line 1347
    aget-byte v4, v2, v4

    .line 1348
    .line 1349
    and-int/lit16 v4, v4, 0xff

    .line 1350
    shl-int/2addr v4, v14

    .line 1351
    add-int/2addr v3, v4

    .line 1352
    .line 1353
    aget-byte v4, v2, v6

    .line 1354
    goto :goto_a

    .line 1355
    .line 1356
    :pswitch_e
    move/from16 v21, v10

    .line 1357
    .line 1358
    const-wide/16 v18, -0x1

    .line 1359
    .line 1360
    add-int/lit8 v3, v6, 0x1

    .line 1361
    .line 1362
    aget-byte v3, v2, v3

    .line 1363
    .line 1364
    and-int/lit16 v3, v3, 0xff

    .line 1365
    shl-int/2addr v3, v14

    .line 1366
    .line 1367
    aget-byte v4, v2, v6

    .line 1368
    goto :goto_a

    .line 1369
    .line 1370
    :pswitch_f
    move/from16 v21, v10

    .line 1371
    .line 1372
    const-wide/16 v18, -0x1

    .line 1373
    .line 1374
    aget-byte v3, v2, v6

    .line 1375
    .line 1376
    and-int/lit16 v3, v3, 0xff

    .line 1377
    goto :goto_b

    .line 1378
    .line 1379
    :goto_c
    cmp-long v3, v14, v18

    .line 1380
    .line 1381
    if-eqz v3, :cond_13

    .line 1382
    .line 1383
    cmp-long v3, v16, v18

    .line 1384
    .line 1385
    if-eqz v3, :cond_10

    .line 1386
    .line 1387
    xor-long v3, v14, v16

    .line 1388
    .line 1389
    ushr-long v7, v3, v21

    .line 1390
    xor-long/2addr v3, v7

    .line 1391
    long-to-int v3, v3

    .line 1392
    .line 1393
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 1394
    array-length v5, v4

    .line 1395
    sub-int/2addr v5, v11

    .line 1396
    and-int/2addr v3, v5

    .line 1397
    .line 1398
    aget-object v4, v4, v3

    .line 1399
    .line 1400
    if-nez v4, :cond_f

    .line 1401
    .line 1402
    new-array v4, v1, [C

    .line 1403
    const/4 v5, 0x0

    .line 1404
    .line 1405
    :goto_d
    if-ge v5, v1, :cond_e

    .line 1406
    .line 1407
    add-int v7, v6, v5

    .line 1408
    .line 1409
    aget-byte v7, v2, v7

    .line 1410
    .line 1411
    and-int/lit16 v7, v7, 0xff

    .line 1412
    int-to-char v7, v7

    .line 1413
    .line 1414
    aput-char v7, v4, v5

    .line 1415
    .line 1416
    add-int/lit8 v5, v5, 0x1

    .line 1417
    goto :goto_d

    .line 1418
    .line 1419
    :cond_e
    new-instance v13, Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    invoke-direct {v13, v4}, Ljava/lang/String;-><init>([C)V

    .line 1423
    .line 1424
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 1425
    .line 1426
    new-instance v12, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 1427
    .line 1428
    .line 1429
    invoke-direct/range {v12 .. v17}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;-><init>(Ljava/lang/String;JJ)V

    .line 1430
    .line 1431
    aput-object v12, v1, v3

    .line 1432
    return-object v13

    .line 1433
    .line 1434
    :cond_f
    iget-wide v1, v4, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    .line 1435
    .line 1436
    cmp-long v1, v1, v14

    .line 1437
    .line 1438
    if-nez v1, :cond_13

    .line 1439
    .line 1440
    iget-wide v1, v4, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    .line 1441
    .line 1442
    cmp-long v1, v1, v16

    .line 1443
    .line 1444
    if-nez v1, :cond_13

    .line 1445
    .line 1446
    iget-object v1, v4, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    .line 1447
    return-object v1

    .line 1448
    .line 1449
    :cond_10
    ushr-long v3, v14, v21

    .line 1450
    xor-long/2addr v3, v14

    .line 1451
    long-to-int v3, v3

    .line 1452
    .line 1453
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 1454
    array-length v5, v4

    .line 1455
    sub-int/2addr v5, v11

    .line 1456
    and-int/2addr v3, v5

    .line 1457
    .line 1458
    aget-object v4, v4, v3

    .line 1459
    .line 1460
    if-nez v4, :cond_12

    .line 1461
    .line 1462
    new-array v4, v1, [C

    .line 1463
    const/4 v5, 0x0

    .line 1464
    .line 1465
    :goto_e
    if-ge v5, v1, :cond_11

    .line 1466
    .line 1467
    add-int v7, v6, v5

    .line 1468
    .line 1469
    aget-byte v7, v2, v7

    .line 1470
    .line 1471
    and-int/lit16 v7, v7, 0xff

    .line 1472
    int-to-char v7, v7

    .line 1473
    .line 1474
    aput-char v7, v4, v5

    .line 1475
    .line 1476
    add-int/lit8 v5, v5, 0x1

    .line 1477
    goto :goto_e

    .line 1478
    .line 1479
    :cond_11
    new-instance v1, Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    .line 1483
    .line 1484
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 1485
    .line 1486
    new-instance v4, Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 1487
    .line 1488
    .line 1489
    invoke-direct {v4, v1, v14, v15}, Lcom/alibaba/fastjson2/util/NameCacheEntry;-><init>(Ljava/lang/String;J)V

    .line 1490
    .line 1491
    aput-object v4, v2, v3

    .line 1492
    return-object v1

    .line 1493
    .line 1494
    :cond_12
    iget-wide v1, v4, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    .line 1495
    .line 1496
    cmp-long v1, v1, v14

    .line 1497
    .line 1498
    if-nez v1, :cond_13

    .line 1499
    .line 1500
    iget-object v1, v4, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;

    .line 1501
    return-object v1

    .line 1502
    .line 1503
    .line 1504
    :cond_13
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->getFieldName()Ljava/lang/String;

    .line 1505
    move-result-object v1

    .line 1506
    return-object v1

    .line 1507
    .line 1508
    :cond_14
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 1509
    .line 1510
    .line 1511
    invoke-static {v7, v1}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 1512
    move-result-object v1

    .line 1513
    throw v1

    .line 1514
    nop

    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
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
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readFieldNameHashCode()J
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 5
    .line 6
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    const/16 v3, 0x2f

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 14
    .line 15
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 16
    .line 17
    :cond_0
    const/16 v3, 0x27

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    if-ne v2, v3, :cond_2

    .line 22
    .line 23
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 24
    .line 25
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 26
    .line 27
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableSingleQuote:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 28
    .line 29
    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 30
    and-long/2addr v6, v8

    .line 31
    .line 32
    cmp-long v6, v6, v4

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->notSupportName()Lcom/alibaba/fastjson2/JSONException;

    .line 39
    move-result-object v1

    .line 40
    throw v1

    .line 41
    .line 42
    :cond_2
    :goto_0
    const/16 v6, 0x22

    .line 43
    .line 44
    if-eq v2, v6, :cond_7

    .line 45
    .line 46
    if-eq v2, v3, :cond_7

    .line 47
    .line 48
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 49
    .line 50
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 51
    .line 52
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 53
    .line 54
    iget-wide v8, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 55
    and-long/2addr v6, v8

    .line 56
    .line 57
    cmp-long v1, v6, v4

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONReader;->isFirstIdentifier(I)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->readFieldNameHashCodeUnquote()J

    .line 69
    move-result-wide v1

    .line 70
    return-wide v1

    .line 71
    .line 72
    :cond_3
    const/16 v1, 0x7d

    .line 73
    .line 74
    if-eq v2, v1, :cond_6

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isNull()Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_4
    const/16 v1, 0x5b

    .line 84
    .line 85
    if-ne v2, v1, :cond_5

    .line 86
    .line 87
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 88
    .line 89
    if-lez v1, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->getFieldName()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    const-string v4, "illegal fieldName input "

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, ", previous fieldName "

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    const-string v3, "illegal fieldName input"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    :goto_1
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 148
    throw v2

    .line 149
    .line 150
    :cond_6
    :goto_2
    const-wide/16 v1, -0x1

    .line 151
    return-wide v1

    .line 152
    :cond_7
    const/4 v3, 0x0

    .line 153
    .line 154
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 155
    const/4 v3, 0x0

    .line 156
    .line 157
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 158
    .line 159
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 160
    .line 161
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 162
    .line 163
    add-int/lit8 v7, v6, 0x9

    .line 164
    .line 165
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 166
    .line 167
    const/16 v13, 0x10

    .line 168
    .line 169
    const/16 v14, 0xff

    .line 170
    .line 171
    const/16 v15, 0x8

    .line 172
    .line 173
    const-wide/16 v16, 0xff

    .line 174
    const/4 v3, 0x1

    .line 175
    .line 176
    move-wide/from16 v18, v4

    .line 177
    .line 178
    const/16 v4, 0x5c

    .line 179
    .line 180
    if-ge v7, v8, :cond_8

    .line 181
    .line 182
    aget-byte v5, v1, v6

    .line 183
    .line 184
    if-ne v5, v2, :cond_9

    .line 185
    .line 186
    :cond_8
    move/from16 v23, v13

    .line 187
    .line 188
    const/16 v20, 0x30

    .line 189
    .line 190
    const/16 v21, 0x28

    .line 191
    .line 192
    const/16 v22, 0x18

    .line 193
    .line 194
    const/16 v24, 0x20

    .line 195
    .line 196
    goto/16 :goto_6

    .line 197
    .line 198
    :cond_9
    add-int/lit8 v8, v6, 0x1

    .line 199
    .line 200
    const/16 v20, 0x30

    .line 201
    .line 202
    aget-byte v9, v1, v8

    .line 203
    .line 204
    if-ne v9, v2, :cond_a

    .line 205
    .line 206
    if-eqz v5, :cond_a

    .line 207
    .line 208
    if-eq v5, v4, :cond_a

    .line 209
    .line 210
    const/16 v21, 0x28

    .line 211
    .line 212
    const/16 v22, 0x18

    .line 213
    int-to-long v10, v5

    .line 214
    .line 215
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 216
    .line 217
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 218
    .line 219
    add-int/lit8 v6, v6, 0x2

    .line 220
    .line 221
    :goto_3
    move/from16 v23, v13

    .line 222
    .line 223
    :goto_4
    const/16 v24, 0x20

    .line 224
    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_a
    const/16 v21, 0x28

    .line 228
    .line 229
    const/16 v22, 0x18

    .line 230
    .line 231
    add-int/lit8 v8, v6, 0x2

    .line 232
    .line 233
    aget-byte v10, v1, v8

    .line 234
    .line 235
    if-ne v10, v2, :cond_b

    .line 236
    .line 237
    if-eqz v9, :cond_b

    .line 238
    .line 239
    if-eq v5, v4, :cond_b

    .line 240
    .line 241
    if-eq v9, v4, :cond_b

    .line 242
    .line 243
    shl-int/lit8 v7, v9, 0x8

    .line 244
    and-int/2addr v5, v14

    .line 245
    add-int/2addr v7, v5

    .line 246
    int-to-long v10, v7

    .line 247
    const/4 v5, 0x2

    .line 248
    .line 249
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 250
    .line 251
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 252
    .line 253
    add-int/lit8 v6, v6, 0x3

    .line 254
    goto :goto_3

    .line 255
    .line 256
    :cond_b
    add-int/lit8 v8, v6, 0x3

    .line 257
    .line 258
    aget-byte v11, v1, v8

    .line 259
    .line 260
    if-ne v11, v2, :cond_c

    .line 261
    .line 262
    if-eqz v10, :cond_c

    .line 263
    .line 264
    if-eq v5, v4, :cond_c

    .line 265
    .line 266
    if-eq v9, v4, :cond_c

    .line 267
    .line 268
    if-eq v10, v4, :cond_c

    .line 269
    .line 270
    shl-int/lit8 v7, v10, 0x10

    .line 271
    and-int/2addr v9, v14

    .line 272
    shl-int/2addr v9, v15

    .line 273
    add-int/2addr v7, v9

    .line 274
    and-int/2addr v5, v14

    .line 275
    add-int/2addr v7, v5

    .line 276
    int-to-long v10, v7

    .line 277
    const/4 v5, 0x3

    .line 278
    .line 279
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 280
    .line 281
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 282
    .line 283
    add-int/lit8 v6, v6, 0x4

    .line 284
    goto :goto_3

    .line 285
    .line 286
    :cond_c
    add-int/lit8 v8, v6, 0x4

    .line 287
    .line 288
    move/from16 v23, v13

    .line 289
    .line 290
    aget-byte v13, v1, v8

    .line 291
    .line 292
    if-ne v13, v2, :cond_d

    .line 293
    .line 294
    if-eqz v11, :cond_d

    .line 295
    .line 296
    if-eq v5, v4, :cond_d

    .line 297
    .line 298
    if-eq v9, v4, :cond_d

    .line 299
    .line 300
    if-eq v10, v4, :cond_d

    .line 301
    .line 302
    if-eq v11, v4, :cond_d

    .line 303
    .line 304
    shl-int/lit8 v7, v11, 0x18

    .line 305
    and-int/2addr v10, v14

    .line 306
    .line 307
    shl-int/lit8 v10, v10, 0x10

    .line 308
    add-int/2addr v7, v10

    .line 309
    and-int/2addr v9, v14

    .line 310
    shl-int/2addr v9, v15

    .line 311
    add-int/2addr v7, v9

    .line 312
    and-int/2addr v5, v14

    .line 313
    add-int/2addr v7, v5

    .line 314
    int-to-long v10, v7

    .line 315
    const/4 v5, 0x4

    .line 316
    .line 317
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 318
    .line 319
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 320
    .line 321
    add-int/lit8 v6, v6, 0x5

    .line 322
    goto :goto_4

    .line 323
    .line 324
    :cond_d
    add-int/lit8 v8, v6, 0x5

    .line 325
    .line 326
    const/16 v24, 0x20

    .line 327
    .line 328
    aget-byte v12, v1, v8

    .line 329
    .line 330
    if-ne v12, v2, :cond_e

    .line 331
    .line 332
    if-eqz v13, :cond_e

    .line 333
    .line 334
    if-eq v5, v4, :cond_e

    .line 335
    .line 336
    if-eq v9, v4, :cond_e

    .line 337
    .line 338
    if-eq v10, v4, :cond_e

    .line 339
    .line 340
    if-eq v11, v4, :cond_e

    .line 341
    .line 342
    if-eq v13, v4, :cond_e

    .line 343
    int-to-long v12, v13

    .line 344
    .line 345
    shl-long v12, v12, v24

    .line 346
    .line 347
    move/from16 v25, v15

    .line 348
    int-to-long v14, v11

    .line 349
    .line 350
    and-long v14, v14, v16

    .line 351
    .line 352
    shl-long v14, v14, v22

    .line 353
    add-long/2addr v12, v14

    .line 354
    int-to-long v10, v10

    .line 355
    .line 356
    and-long v10, v10, v16

    .line 357
    .line 358
    shl-long v10, v10, v23

    .line 359
    add-long/2addr v12, v10

    .line 360
    int-to-long v9, v9

    .line 361
    .line 362
    and-long v9, v9, v16

    .line 363
    .line 364
    shl-long v9, v9, v25

    .line 365
    add-long/2addr v12, v9

    .line 366
    int-to-long v9, v5

    .line 367
    .line 368
    and-long v9, v9, v16

    .line 369
    add-long/2addr v9, v12

    .line 370
    const/4 v5, 0x5

    .line 371
    .line 372
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 373
    .line 374
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 375
    .line 376
    add-int/lit8 v6, v6, 0x6

    .line 377
    :goto_5
    move-wide v10, v9

    .line 378
    .line 379
    goto/16 :goto_7

    .line 380
    .line 381
    :cond_e
    move/from16 v25, v15

    .line 382
    .line 383
    add-int/lit8 v8, v6, 0x6

    .line 384
    .line 385
    aget-byte v14, v1, v8

    .line 386
    .line 387
    if-ne v14, v2, :cond_f

    .line 388
    .line 389
    if-eqz v12, :cond_f

    .line 390
    .line 391
    if-eq v5, v4, :cond_f

    .line 392
    .line 393
    if-eq v9, v4, :cond_f

    .line 394
    .line 395
    if-eq v10, v4, :cond_f

    .line 396
    .line 397
    if-eq v11, v4, :cond_f

    .line 398
    .line 399
    if-eq v13, v4, :cond_f

    .line 400
    .line 401
    if-eq v12, v4, :cond_f

    .line 402
    int-to-long v14, v12

    .line 403
    .line 404
    shl-long v14, v14, v21

    .line 405
    int-to-long v12, v13

    .line 406
    .line 407
    and-long v12, v12, v16

    .line 408
    .line 409
    shl-long v12, v12, v24

    .line 410
    add-long/2addr v14, v12

    .line 411
    int-to-long v11, v11

    .line 412
    .line 413
    and-long v11, v11, v16

    .line 414
    .line 415
    shl-long v11, v11, v22

    .line 416
    add-long/2addr v14, v11

    .line 417
    int-to-long v10, v10

    .line 418
    .line 419
    and-long v10, v10, v16

    .line 420
    .line 421
    shl-long v10, v10, v23

    .line 422
    add-long/2addr v14, v10

    .line 423
    int-to-long v9, v9

    .line 424
    .line 425
    and-long v9, v9, v16

    .line 426
    .line 427
    shl-long v9, v9, v25

    .line 428
    add-long/2addr v14, v9

    .line 429
    int-to-long v9, v5

    .line 430
    .line 431
    and-long v9, v9, v16

    .line 432
    add-long/2addr v9, v14

    .line 433
    const/4 v5, 0x6

    .line 434
    .line 435
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 436
    .line 437
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 438
    .line 439
    add-int/lit8 v6, v6, 0x7

    .line 440
    goto :goto_5

    .line 441
    .line 442
    :cond_f
    add-int/lit8 v8, v6, 0x7

    .line 443
    .line 444
    aget-byte v15, v1, v8

    .line 445
    .line 446
    if-ne v15, v2, :cond_10

    .line 447
    .line 448
    if-eqz v14, :cond_10

    .line 449
    .line 450
    if-eq v5, v4, :cond_10

    .line 451
    .line 452
    if-eq v9, v4, :cond_10

    .line 453
    .line 454
    if-eq v10, v4, :cond_10

    .line 455
    .line 456
    if-eq v11, v4, :cond_10

    .line 457
    .line 458
    if-eq v13, v4, :cond_10

    .line 459
    .line 460
    if-eq v12, v4, :cond_10

    .line 461
    .line 462
    if-eq v14, v4, :cond_10

    .line 463
    int-to-long v14, v14

    .line 464
    .line 465
    shl-long v14, v14, v20

    .line 466
    int-to-long v3, v12

    .line 467
    .line 468
    and-long v3, v3, v16

    .line 469
    .line 470
    shl-long v3, v3, v21

    .line 471
    add-long/2addr v14, v3

    .line 472
    int-to-long v3, v13

    .line 473
    .line 474
    and-long v3, v3, v16

    .line 475
    .line 476
    shl-long v3, v3, v24

    .line 477
    add-long/2addr v14, v3

    .line 478
    int-to-long v3, v11

    .line 479
    .line 480
    and-long v3, v3, v16

    .line 481
    .line 482
    shl-long v3, v3, v22

    .line 483
    add-long/2addr v14, v3

    .line 484
    int-to-long v3, v10

    .line 485
    .line 486
    and-long v3, v3, v16

    .line 487
    .line 488
    shl-long v3, v3, v23

    .line 489
    add-long/2addr v14, v3

    .line 490
    int-to-long v3, v9

    .line 491
    .line 492
    and-long v3, v3, v16

    .line 493
    .line 494
    shl-long v3, v3, v25

    .line 495
    add-long/2addr v14, v3

    .line 496
    int-to-long v3, v5

    .line 497
    .line 498
    and-long v3, v3, v16

    .line 499
    .line 500
    add-long v10, v14, v3

    .line 501
    const/4 v3, 0x7

    .line 502
    .line 503
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 504
    .line 505
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 506
    .line 507
    add-int/lit8 v6, v6, 0x8

    .line 508
    goto :goto_7

    .line 509
    .line 510
    :cond_10
    add-int/lit8 v3, v6, 0x8

    .line 511
    .line 512
    aget-byte v4, v1, v3

    .line 513
    .line 514
    if-ne v4, v2, :cond_11

    .line 515
    .line 516
    if-eqz v15, :cond_11

    .line 517
    .line 518
    const/16 v4, 0x5c

    .line 519
    .line 520
    if-eq v5, v4, :cond_11

    .line 521
    .line 522
    if-eq v9, v4, :cond_11

    .line 523
    .line 524
    if-eq v10, v4, :cond_11

    .line 525
    .line 526
    if-eq v11, v4, :cond_11

    .line 527
    .line 528
    if-eq v13, v4, :cond_11

    .line 529
    .line 530
    if-eq v12, v4, :cond_11

    .line 531
    .line 532
    if-eq v14, v4, :cond_11

    .line 533
    .line 534
    if-eq v15, v4, :cond_11

    .line 535
    .line 536
    .line 537
    invoke-static {v1, v6}, Lcom/alibaba/fastjson2/JSONReaderASCII;->getLong([BI)J

    .line 538
    move-result-wide v10

    .line 539
    .line 540
    move/from16 v4, v25

    .line 541
    .line 542
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 543
    .line 544
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 545
    move v6, v7

    .line 546
    goto :goto_7

    .line 547
    .line 548
    :cond_11
    :goto_6
    move-wide/from16 v10, v18

    .line 549
    .line 550
    :goto_7
    cmp-long v3, v10, v18

    .line 551
    .line 552
    const/16 v4, 0x78

    .line 553
    .line 554
    const/16 v5, 0x75

    .line 555
    .line 556
    if-nez v3, :cond_19

    .line 557
    const/4 v3, 0x0

    .line 558
    .line 559
    :goto_8
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 560
    .line 561
    if-ge v6, v7, :cond_19

    .line 562
    .line 563
    aget-byte v7, v1, v6

    .line 564
    .line 565
    if-ne v7, v2, :cond_13

    .line 566
    .line 567
    if-nez v3, :cond_12

    .line 568
    .line 569
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 570
    .line 571
    goto/16 :goto_11

    .line 572
    .line 573
    :cond_12
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 574
    .line 575
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 576
    .line 577
    add-int/lit8 v6, v6, 0x1

    .line 578
    .line 579
    goto/16 :goto_11

    .line 580
    .line 581
    :cond_13
    const/16 v8, 0x5c

    .line 582
    .line 583
    if-ne v7, v8, :cond_14

    .line 584
    const/4 v8, 0x1

    .line 585
    .line 586
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 587
    .line 588
    add-int/lit8 v7, v6, 0x1

    .line 589
    .line 590
    aget-byte v8, v1, v7

    .line 591
    .line 592
    if-eq v8, v5, :cond_16

    .line 593
    .line 594
    if-eq v8, v4, :cond_15

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 598
    move-result v6

    .line 599
    move v8, v7

    .line 600
    move v7, v6

    .line 601
    move v6, v8

    .line 602
    .line 603
    :cond_14
    :goto_9
    const/16 v8, 0xff

    .line 604
    goto :goto_a

    .line 605
    .line 606
    :cond_15
    add-int/lit8 v7, v6, 0x2

    .line 607
    .line 608
    aget-byte v7, v1, v7

    .line 609
    .line 610
    add-int/lit8 v6, v6, 0x3

    .line 611
    .line 612
    aget-byte v8, v1, v6

    .line 613
    .line 614
    .line 615
    invoke-static {v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 616
    move-result v7

    .line 617
    goto :goto_9

    .line 618
    .line 619
    :cond_16
    add-int/lit8 v7, v6, 0x2

    .line 620
    .line 621
    aget-byte v7, v1, v7

    .line 622
    .line 623
    add-int/lit8 v8, v6, 0x3

    .line 624
    .line 625
    aget-byte v8, v1, v8

    .line 626
    .line 627
    add-int/lit8 v9, v6, 0x4

    .line 628
    .line 629
    aget-byte v9, v1, v9

    .line 630
    .line 631
    add-int/lit8 v6, v6, 0x5

    .line 632
    .line 633
    aget-byte v12, v1, v6

    .line 634
    .line 635
    .line 636
    invoke-static {v7, v8, v9, v12}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 637
    move-result v7

    .line 638
    goto :goto_9

    .line 639
    .line 640
    :goto_a
    if-gt v7, v8, :cond_18

    .line 641
    .line 642
    const/16 v8, 0x8

    .line 643
    .line 644
    if-ge v3, v8, :cond_18

    .line 645
    .line 646
    if-nez v3, :cond_17

    .line 647
    .line 648
    if-nez v7, :cond_17

    .line 649
    goto :goto_10

    .line 650
    .line 651
    .line 652
    :cond_17
    packed-switch v3, :pswitch_data_0

    .line 653
    .line 654
    :goto_b
    const/16 v25, 0x8

    .line 655
    .line 656
    :goto_c
    const/16 v26, 0x1

    .line 657
    goto :goto_f

    .line 658
    :pswitch_0
    int-to-byte v7, v7

    .line 659
    int-to-long v7, v7

    .line 660
    .line 661
    const/16 v9, 0x38

    .line 662
    shl-long/2addr v7, v9

    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    const-wide v12, 0xffffffffffffffL

    .line 668
    :goto_d
    and-long/2addr v10, v12

    .line 669
    add-long/2addr v7, v10

    .line 670
    move-wide v10, v7

    .line 671
    goto :goto_b

    .line 672
    :pswitch_1
    int-to-byte v7, v7

    .line 673
    int-to-long v7, v7

    .line 674
    .line 675
    shl-long v7, v7, v20

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    const-wide v12, 0xffffffffffffL

    .line 681
    goto :goto_d

    .line 682
    :pswitch_2
    int-to-byte v7, v7

    .line 683
    int-to-long v7, v7

    .line 684
    .line 685
    shl-long v7, v7, v21

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    const-wide v12, 0xffffffffffL

    .line 691
    goto :goto_d

    .line 692
    :pswitch_3
    int-to-byte v7, v7

    .line 693
    int-to-long v7, v7

    .line 694
    .line 695
    shl-long v7, v7, v24

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    const-wide v12, 0xffffffffL

    .line 701
    goto :goto_d

    .line 702
    :pswitch_4
    int-to-byte v7, v7

    .line 703
    .line 704
    shl-int/lit8 v7, v7, 0x18

    .line 705
    int-to-long v7, v7

    .line 706
    .line 707
    .line 708
    const-wide/32 v12, 0xffffff

    .line 709
    goto :goto_d

    .line 710
    :pswitch_5
    int-to-byte v7, v7

    .line 711
    .line 712
    shl-int/lit8 v7, v7, 0x10

    .line 713
    int-to-long v7, v7

    .line 714
    .line 715
    .line 716
    const-wide/32 v12, 0xffff

    .line 717
    goto :goto_d

    .line 718
    :pswitch_6
    int-to-byte v7, v7

    .line 719
    .line 720
    const/16 v25, 0x8

    .line 721
    .line 722
    shl-int/lit8 v7, v7, 0x8

    .line 723
    int-to-long v7, v7

    .line 724
    .line 725
    and-long v10, v10, v16

    .line 726
    add-long/2addr v7, v10

    .line 727
    :goto_e
    move-wide v10, v7

    .line 728
    goto :goto_c

    .line 729
    .line 730
    :pswitch_7
    const/16 v25, 0x8

    .line 731
    int-to-byte v7, v7

    .line 732
    int-to-long v7, v7

    .line 733
    goto :goto_e

    .line 734
    .line 735
    :goto_f
    add-int/lit8 v6, v6, 0x1

    .line 736
    .line 737
    add-int/lit8 v3, v3, 0x1

    .line 738
    .line 739
    goto/16 :goto_8

    .line 740
    .line 741
    :cond_18
    :goto_10
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 742
    .line 743
    move-wide/from16 v10, v18

    .line 744
    .line 745
    :cond_19
    :goto_11
    cmp-long v3, v10, v18

    .line 746
    .line 747
    if-eqz v3, :cond_1a

    .line 748
    goto :goto_16

    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :cond_1a
    const-wide v7, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 754
    move-wide v10, v7

    .line 755
    const/4 v3, 0x0

    .line 756
    .line 757
    :goto_12
    aget-byte v7, v1, v6

    .line 758
    .line 759
    const/16 v8, 0x5c

    .line 760
    .line 761
    if-ne v7, v8, :cond_1d

    .line 762
    const/4 v9, 0x1

    .line 763
    .line 764
    iput-boolean v9, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 765
    .line 766
    add-int/lit8 v7, v6, 0x1

    .line 767
    .line 768
    aget-byte v9, v1, v7

    .line 769
    .line 770
    if-eq v9, v5, :cond_1c

    .line 771
    .line 772
    if-eq v9, v4, :cond_1b

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 776
    move-result v6

    .line 777
    .line 778
    :goto_13
    const/16 v26, 0x1

    .line 779
    goto :goto_15

    .line 780
    .line 781
    :cond_1b
    add-int/lit8 v7, v6, 0x2

    .line 782
    .line 783
    aget-byte v7, v1, v7

    .line 784
    .line 785
    add-int/lit8 v6, v6, 0x3

    .line 786
    .line 787
    aget-byte v9, v1, v6

    .line 788
    .line 789
    .line 790
    invoke-static {v7, v9}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 791
    move-result v7

    .line 792
    .line 793
    :goto_14
    move/from16 v26, v7

    .line 794
    move v7, v6

    .line 795
    .line 796
    move/from16 v6, v26

    .line 797
    goto :goto_13

    .line 798
    .line 799
    :cond_1c
    add-int/lit8 v7, v6, 0x2

    .line 800
    .line 801
    aget-byte v7, v1, v7

    .line 802
    .line 803
    add-int/lit8 v9, v6, 0x3

    .line 804
    .line 805
    aget-byte v9, v1, v9

    .line 806
    .line 807
    add-int/lit8 v12, v6, 0x4

    .line 808
    .line 809
    aget-byte v12, v1, v12

    .line 810
    .line 811
    add-int/lit8 v6, v6, 0x5

    .line 812
    .line 813
    aget-byte v13, v1, v6

    .line 814
    .line 815
    .line 816
    invoke-static {v7, v9, v12, v13}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 817
    move-result v7

    .line 818
    goto :goto_14

    .line 819
    .line 820
    :goto_15
    add-int/lit8 v7, v7, 0x1

    .line 821
    int-to-long v12, v6

    .line 822
    xor-long/2addr v10, v12

    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    const-wide v12, 0x100000001b3L

    .line 828
    mul-long/2addr v10, v12

    .line 829
    move v6, v7

    .line 830
    .line 831
    move/from16 v9, v24

    .line 832
    .line 833
    const/16 v12, 0xff

    .line 834
    .line 835
    goto/16 :goto_1c

    .line 836
    .line 837
    :cond_1d
    const/16 v26, 0x1

    .line 838
    .line 839
    if-ne v7, v2, :cond_25

    .line 840
    .line 841
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 842
    .line 843
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 844
    .line 845
    add-int/lit8 v6, v6, 0x1

    .line 846
    .line 847
    :goto_16
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 848
    .line 849
    const/16 v3, 0x1a

    .line 850
    .line 851
    if-ne v6, v2, :cond_1e

    .line 852
    move v4, v3

    .line 853
    goto :goto_17

    .line 854
    .line 855
    :cond_1e
    add-int/lit8 v2, v6, 0x1

    .line 856
    .line 857
    aget-byte v4, v1, v6

    .line 858
    move v6, v2

    .line 859
    .line 860
    :goto_17
    move/from16 v2, v24

    .line 861
    .line 862
    :goto_18
    if-gt v4, v2, :cond_20

    .line 863
    .line 864
    const-wide/16 v7, 0x1

    .line 865
    shl-long/2addr v7, v4

    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    const-wide v12, 0x100003701L

    .line 871
    and-long/2addr v7, v12

    .line 872
    .line 873
    cmp-long v2, v7, v18

    .line 874
    .line 875
    if-eqz v2, :cond_20

    .line 876
    .line 877
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 878
    .line 879
    if-ne v6, v2, :cond_1f

    .line 880
    move v4, v3

    .line 881
    goto :goto_19

    .line 882
    .line 883
    :cond_1f
    add-int/lit8 v2, v6, 0x1

    .line 884
    .line 885
    aget-byte v4, v1, v6

    .line 886
    move v6, v2

    .line 887
    .line 888
    :goto_19
    const/16 v2, 0x20

    .line 889
    goto :goto_18

    .line 890
    .line 891
    :cond_20
    const/16 v2, 0x3a

    .line 892
    .line 893
    if-ne v4, v2, :cond_24

    .line 894
    .line 895
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 896
    .line 897
    if-ne v6, v2, :cond_21

    .line 898
    move v4, v3

    .line 899
    goto :goto_1a

    .line 900
    .line 901
    :cond_21
    add-int/lit8 v2, v6, 0x1

    .line 902
    .line 903
    aget-byte v4, v1, v6

    .line 904
    move v6, v2

    .line 905
    .line 906
    :goto_1a
    const/16 v9, 0x20

    .line 907
    .line 908
    :goto_1b
    if-gt v4, v9, :cond_23

    .line 909
    .line 910
    const-wide/16 v7, 0x1

    .line 911
    shl-long/2addr v7, v4

    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    const-wide v12, 0x100003701L

    .line 917
    and-long/2addr v7, v12

    .line 918
    .line 919
    cmp-long v2, v7, v18

    .line 920
    .line 921
    if-eqz v2, :cond_23

    .line 922
    .line 923
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 924
    .line 925
    if-ne v6, v2, :cond_22

    .line 926
    move v4, v3

    .line 927
    goto :goto_1b

    .line 928
    .line 929
    :cond_22
    add-int/lit8 v2, v6, 0x1

    .line 930
    .line 931
    aget-byte v4, v1, v6

    .line 932
    move v6, v2

    .line 933
    goto :goto_1b

    .line 934
    .line 935
    :cond_23
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 936
    .line 937
    const/16 v12, 0xff

    .line 938
    .line 939
    and-int/lit16 v1, v4, 0xff

    .line 940
    int-to-char v1, v1

    .line 941
    .line 942
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 943
    return-wide v10

    .line 944
    .line 945
    :cond_24
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 946
    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    .line 952
    const-string v3, "expect \':\', but "

    .line 953
    .line 954
    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 962
    move-result-object v2

    .line 963
    .line 964
    .line 965
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 966
    move-result-object v2

    .line 967
    .line 968
    .line 969
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 970
    throw v1

    .line 971
    .line 972
    :cond_25
    move/from16 v9, v24

    .line 973
    .line 974
    const/16 v12, 0xff

    .line 975
    .line 976
    add-int/lit8 v6, v6, 0x1

    .line 977
    .line 978
    and-int/lit16 v7, v7, 0xff

    .line 979
    int-to-long v13, v7

    .line 980
    xor-long/2addr v10, v13

    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    const-wide v13, 0x100000001b3L

    .line 986
    mul-long/2addr v10, v13

    .line 987
    .line 988
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 989
    .line 990
    move/from16 v24, v9

    .line 991
    .line 992
    goto/16 :goto_12

    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFieldNameHashCodeUnquote()J
    .locals 26

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 6
    .line 7
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 8
    .line 9
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 10
    .line 11
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 12
    .line 13
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 14
    .line 15
    add-int/lit8 v6, v2, -0x1

    .line 16
    .line 17
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 18
    move v9, v1

    .line 19
    move v8, v5

    .line 20
    .line 21
    const-wide/16 v10, 0x0

    .line 22
    .line 23
    :goto_0
    const-wide/16 v16, 0x0

    .line 24
    .line 25
    const/16 v7, 0x5d

    .line 26
    .line 27
    const/16 v12, 0x5b

    .line 28
    .line 29
    const/16 v13, 0xd

    .line 30
    .line 31
    const/16 v14, 0xc

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v19, 0x100003701L

    .line 37
    .line 38
    const-wide/16 v21, 0x1

    .line 39
    .line 40
    const/16 v15, 0x3a

    .line 41
    .line 42
    const/16 v1, 0x1a

    .line 43
    const/4 v6, 0x1

    .line 44
    .line 45
    if-gt v2, v3, :cond_a

    .line 46
    .line 47
    if-eq v8, v14, :cond_7

    .line 48
    .line 49
    if-eq v8, v13, :cond_7

    .line 50
    .line 51
    if-eq v8, v1, :cond_7

    .line 52
    .line 53
    if-eq v8, v15, :cond_7

    .line 54
    .line 55
    if-eq v8, v12, :cond_7

    .line 56
    .line 57
    if-eq v8, v7, :cond_7

    .line 58
    .line 59
    const/16 v7, 0x7b

    .line 60
    .line 61
    if-eq v8, v7, :cond_7

    .line 62
    .line 63
    const/16 v7, 0x7d

    .line 64
    .line 65
    if-eq v8, v7, :cond_7

    .line 66
    .line 67
    const/16 v7, 0x20

    .line 68
    .line 69
    if-eq v8, v7, :cond_7

    .line 70
    .line 71
    const/16 v7, 0x21

    .line 72
    .line 73
    if-eq v8, v7, :cond_7

    .line 74
    .line 75
    .line 76
    packed-switch v8, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    packed-switch v8, :pswitch_data_1

    .line 80
    .line 81
    .line 82
    packed-switch v8, :pswitch_data_2

    .line 83
    .line 84
    const/16 v7, 0x5c

    .line 85
    .line 86
    if-ne v8, v7, :cond_0

    .line 87
    .line 88
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 89
    .line 90
    add-int/lit8 v8, v2, 0x1

    .line 91
    .line 92
    aget-byte v12, v4, v2

    .line 93
    int-to-char v12, v12

    .line 94
    .line 95
    const/16 v13, 0x22

    .line 96
    .line 97
    if-eq v12, v13, :cond_3

    .line 98
    .line 99
    if-eq v12, v15, :cond_3

    .line 100
    .line 101
    const/16 v13, 0x40

    .line 102
    .line 103
    if-eq v12, v13, :cond_3

    .line 104
    .line 105
    if-eq v12, v7, :cond_3

    .line 106
    .line 107
    const/16 v7, 0x75

    .line 108
    .line 109
    if-eq v12, v7, :cond_2

    .line 110
    .line 111
    const/16 v7, 0x78

    .line 112
    .line 113
    if-eq v12, v7, :cond_1

    .line 114
    .line 115
    const/16 v2, 0x2a

    .line 116
    .line 117
    if-eq v12, v2, :cond_3

    .line 118
    .line 119
    const/16 v2, 0x2b

    .line 120
    .line 121
    if-eq v12, v2, :cond_3

    .line 122
    .line 123
    .line 124
    packed-switch v12, :pswitch_data_3

    .line 125
    .line 126
    .line 127
    packed-switch v12, :pswitch_data_4

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 131
    move-result v2

    .line 132
    move v7, v8

    .line 133
    move v8, v2

    .line 134
    move v2, v7

    .line 135
    .line 136
    :cond_0
    :goto_1
    const/16 v7, 0xff

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_1
    aget-byte v7, v4, v8

    .line 140
    .line 141
    add-int/lit8 v8, v2, 0x2

    .line 142
    .line 143
    aget-byte v8, v4, v8

    .line 144
    .line 145
    .line 146
    invoke-static {v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 147
    move-result v8

    .line 148
    .line 149
    add-int/lit8 v2, v2, 0x3

    .line 150
    goto :goto_1

    .line 151
    .line 152
    :cond_2
    aget-byte v7, v4, v8

    .line 153
    .line 154
    add-int/lit8 v8, v2, 0x2

    .line 155
    .line 156
    aget-byte v8, v4, v8

    .line 157
    .line 158
    add-int/lit8 v12, v2, 0x3

    .line 159
    .line 160
    aget-byte v12, v4, v12

    .line 161
    .line 162
    add-int/lit8 v13, v2, 0x4

    .line 163
    .line 164
    aget-byte v13, v4, v13

    .line 165
    .line 166
    .line 167
    invoke-static {v7, v8, v12, v13}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 168
    move-result v8

    .line 169
    .line 170
    add-int/lit8 v2, v2, 0x5

    .line 171
    goto :goto_1

    .line 172
    :cond_3
    :pswitch_0
    move v2, v8

    .line 173
    move v8, v12

    .line 174
    goto :goto_1

    .line 175
    .line 176
    :goto_2
    if-gt v8, v7, :cond_6

    .line 177
    .line 178
    const/16 v7, 0x8

    .line 179
    .line 180
    if-ge v9, v7, :cond_6

    .line 181
    .line 182
    if-nez v9, :cond_4

    .line 183
    .line 184
    if-nez v8, :cond_4

    .line 185
    goto :goto_6

    .line 186
    :cond_4
    int-to-byte v6, v8

    .line 187
    .line 188
    .line 189
    packed-switch v9, :pswitch_data_5

    .line 190
    goto :goto_4

    .line 191
    :pswitch_1
    int-to-long v6, v6

    .line 192
    .line 193
    const/16 v8, 0x38

    .line 194
    shl-long/2addr v6, v8

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    const-wide v12, 0xffffffffffffffL

    .line 200
    :goto_3
    and-long/2addr v10, v12

    .line 201
    add-long/2addr v10, v6

    .line 202
    goto :goto_4

    .line 203
    :pswitch_2
    int-to-long v6, v6

    .line 204
    .line 205
    const/16 v8, 0x30

    .line 206
    shl-long/2addr v6, v8

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    const-wide v12, 0xffffffffffffL

    .line 212
    goto :goto_3

    .line 213
    :pswitch_3
    int-to-long v6, v6

    .line 214
    .line 215
    const/16 v8, 0x28

    .line 216
    shl-long/2addr v6, v8

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    const-wide v12, 0xffffffffffL

    .line 222
    goto :goto_3

    .line 223
    :pswitch_4
    int-to-long v6, v6

    .line 224
    .line 225
    const/16 v23, 0x20

    .line 226
    .line 227
    shl-long v6, v6, v23

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    const-wide v12, 0xffffffffL

    .line 233
    goto :goto_3

    .line 234
    .line 235
    :pswitch_5
    shl-int/lit8 v6, v6, 0x18

    .line 236
    int-to-long v6, v6

    .line 237
    .line 238
    .line 239
    const-wide/32 v12, 0xffffff

    .line 240
    goto :goto_3

    .line 241
    .line 242
    :pswitch_6
    shl-int/lit8 v6, v6, 0x10

    .line 243
    int-to-long v6, v6

    .line 244
    .line 245
    .line 246
    const-wide/32 v12, 0xffff

    .line 247
    goto :goto_3

    .line 248
    .line 249
    :pswitch_7
    shl-int/lit8 v6, v6, 0x8

    .line 250
    int-to-long v6, v6

    .line 251
    .line 252
    const-wide/16 v12, 0xff

    .line 253
    goto :goto_3

    .line 254
    :pswitch_8
    int-to-long v10, v6

    .line 255
    .line 256
    :goto_4
    if-ne v2, v3, :cond_5

    .line 257
    move v8, v1

    .line 258
    goto :goto_5

    .line 259
    .line 260
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .line 261
    .line 262
    aget-byte v2, v4, v2

    .line 263
    .line 264
    const/16 v7, 0xff

    .line 265
    and-int/2addr v2, v7

    .line 266
    move v8, v2

    .line 267
    move v2, v1

    .line 268
    .line 269
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 270
    const/4 v1, 0x0

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_6
    :goto_6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 275
    add-int/2addr v2, v6

    .line 276
    .line 277
    move-wide/from16 v10, v16

    .line 278
    goto :goto_8

    .line 279
    .line 280
    :cond_7
    :pswitch_9
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 281
    .line 282
    if-ne v8, v1, :cond_8

    .line 283
    move v5, v2

    .line 284
    goto :goto_7

    .line 285
    .line 286
    :cond_8
    add-int/lit8 v5, v2, -0x1

    .line 287
    .line 288
    :goto_7
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 289
    .line 290
    const/16 v7, 0x20

    .line 291
    .line 292
    if-gt v8, v7, :cond_a

    .line 293
    .line 294
    shl-long v12, v21, v8

    .line 295
    .line 296
    and-long v12, v12, v19

    .line 297
    .line 298
    cmp-long v5, v12, v16

    .line 299
    .line 300
    if-eqz v5, :cond_a

    .line 301
    .line 302
    if-ne v2, v3, :cond_9

    .line 303
    move v5, v1

    .line 304
    goto :goto_8

    .line 305
    .line 306
    :cond_9
    add-int/lit8 v5, v2, 0x1

    .line 307
    .line 308
    aget-byte v2, v4, v2

    .line 309
    int-to-char v2, v2

    .line 310
    .line 311
    move/from16 v24, v5

    .line 312
    move v5, v2

    .line 313
    .line 314
    move/from16 v2, v24

    .line 315
    goto :goto_8

    .line 316
    :cond_a
    move v5, v8

    .line 317
    .line 318
    :goto_8
    cmp-long v7, v10, v16

    .line 319
    .line 320
    if-eqz v7, :cond_b

    .line 321
    .line 322
    goto/16 :goto_10

    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :cond_b
    const-wide v7, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 328
    move-wide v10, v7

    .line 329
    move v7, v5

    .line 330
    move v5, v2

    .line 331
    const/4 v2, 0x0

    .line 332
    .line 333
    :goto_9
    const/16 v8, 0x5c

    .line 334
    .line 335
    if-ne v7, v8, :cond_11

    .line 336
    .line 337
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 338
    .line 339
    add-int/lit8 v7, v5, 0x1

    .line 340
    .line 341
    aget-byte v9, v4, v5

    .line 342
    .line 343
    const/16 v13, 0x22

    .line 344
    .line 345
    if-eq v9, v13, :cond_e

    .line 346
    .line 347
    if-eq v9, v15, :cond_e

    .line 348
    .line 349
    const/16 v12, 0x40

    .line 350
    .line 351
    if-eq v9, v12, :cond_f

    .line 352
    .line 353
    if-eq v9, v8, :cond_f

    .line 354
    .line 355
    const/16 v6, 0x75

    .line 356
    .line 357
    if-eq v9, v6, :cond_d

    .line 358
    .line 359
    const/16 v6, 0x78

    .line 360
    .line 361
    if-eq v9, v6, :cond_c

    .line 362
    .line 363
    const/16 v5, 0x2a

    .line 364
    .line 365
    if-eq v9, v5, :cond_f

    .line 366
    .line 367
    const/16 v5, 0x2b

    .line 368
    .line 369
    if-eq v9, v5, :cond_f

    .line 370
    .line 371
    .line 372
    packed-switch v9, :pswitch_data_6

    .line 373
    .line 374
    .line 375
    packed-switch v9, :pswitch_data_7

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 379
    move-result v9

    .line 380
    goto :goto_a

    .line 381
    .line 382
    :cond_c
    aget-byte v6, v4, v7

    .line 383
    .line 384
    add-int/lit8 v7, v5, 0x2

    .line 385
    .line 386
    aget-byte v7, v4, v7

    .line 387
    .line 388
    .line 389
    invoke-static {v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 390
    move-result v9

    .line 391
    .line 392
    add-int/lit8 v7, v5, 0x3

    .line 393
    goto :goto_a

    .line 394
    .line 395
    :cond_d
    aget-byte v6, v4, v7

    .line 396
    .line 397
    add-int/lit8 v7, v5, 0x2

    .line 398
    .line 399
    aget-byte v7, v4, v7

    .line 400
    .line 401
    add-int/lit8 v9, v5, 0x3

    .line 402
    .line 403
    aget-byte v9, v4, v9

    .line 404
    .line 405
    add-int/lit8 v18, v5, 0x4

    .line 406
    .line 407
    aget-byte v8, v4, v18

    .line 408
    .line 409
    .line 410
    invoke-static {v6, v7, v9, v8}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 411
    move-result v9

    .line 412
    .line 413
    add-int/lit8 v7, v5, 0x5

    .line 414
    goto :goto_a

    .line 415
    .line 416
    :cond_e
    const/16 v12, 0x40

    .line 417
    :cond_f
    :goto_a
    :pswitch_a
    int-to-long v5, v9

    .line 418
    xor-long/2addr v5, v10

    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    const-wide v8, 0x100000001b3L

    .line 424
    mul-long/2addr v5, v8

    .line 425
    .line 426
    if-ne v7, v3, :cond_10

    .line 427
    move v8, v7

    .line 428
    move v7, v1

    .line 429
    goto :goto_b

    .line 430
    .line 431
    :cond_10
    add-int/lit8 v8, v7, 0x1

    .line 432
    .line 433
    aget-byte v7, v4, v7

    .line 434
    .line 435
    const/16 v9, 0xff

    .line 436
    and-int/2addr v7, v9

    .line 437
    :goto_b
    move-wide v10, v5

    .line 438
    move v5, v8

    .line 439
    .line 440
    const/16 v8, 0x5b

    .line 441
    .line 442
    const/16 v9, 0x5d

    .line 443
    goto :goto_d

    .line 444
    .line 445
    :cond_11
    const/16 v12, 0x40

    .line 446
    .line 447
    const/16 v13, 0x22

    .line 448
    .line 449
    if-eq v7, v14, :cond_13

    .line 450
    .line 451
    const/16 v6, 0xd

    .line 452
    .line 453
    if-eq v7, v6, :cond_13

    .line 454
    .line 455
    if-eq v7, v1, :cond_13

    .line 456
    .line 457
    if-eq v7, v15, :cond_13

    .line 458
    .line 459
    const/16 v8, 0x5b

    .line 460
    .line 461
    if-eq v7, v8, :cond_13

    .line 462
    .line 463
    const/16 v9, 0x5d

    .line 464
    .line 465
    if-eq v7, v9, :cond_13

    .line 466
    .line 467
    const/16 v6, 0x7b

    .line 468
    .line 469
    if-eq v7, v6, :cond_13

    .line 470
    .line 471
    const/16 v6, 0x7d

    .line 472
    .line 473
    if-eq v7, v6, :cond_13

    .line 474
    .line 475
    const/16 v6, 0x20

    .line 476
    .line 477
    if-eq v7, v6, :cond_13

    .line 478
    .line 479
    const/16 v6, 0x21

    .line 480
    .line 481
    if-eq v7, v6, :cond_13

    .line 482
    .line 483
    .line 484
    packed-switch v7, :pswitch_data_8

    .line 485
    .line 486
    .line 487
    packed-switch v7, :pswitch_data_9

    .line 488
    .line 489
    .line 490
    packed-switch v7, :pswitch_data_a

    .line 491
    int-to-long v6, v7

    .line 492
    xor-long/2addr v6, v10

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    const-wide v10, 0x100000001b3L

    .line 498
    mul-long/2addr v6, v10

    .line 499
    .line 500
    if-ne v5, v3, :cond_12

    .line 501
    move v10, v5

    .line 502
    move v5, v1

    .line 503
    goto :goto_c

    .line 504
    .line 505
    :cond_12
    add-int/lit8 v10, v5, 0x1

    .line 506
    .line 507
    aget-byte v5, v4, v5

    .line 508
    .line 509
    const/16 v11, 0xff

    .line 510
    and-int/2addr v5, v11

    .line 511
    .line 512
    :goto_c
    move-wide/from16 v24, v6

    .line 513
    move v7, v5

    .line 514
    move v5, v10

    .line 515
    .line 516
    move-wide/from16 v10, v24

    .line 517
    .line 518
    :goto_d
    add-int/lit8 v2, v2, 0x1

    .line 519
    const/4 v6, 0x1

    .line 520
    .line 521
    goto/16 :goto_9

    .line 522
    .line 523
    :cond_13
    :pswitch_b
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 524
    .line 525
    if-ne v7, v1, :cond_14

    .line 526
    move v2, v5

    .line 527
    goto :goto_e

    .line 528
    .line 529
    :cond_14
    add-int/lit8 v2, v5, -0x1

    .line 530
    .line 531
    :goto_e
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 532
    move v2, v5

    .line 533
    move v5, v7

    .line 534
    .line 535
    :goto_f
    const/16 v7, 0x20

    .line 536
    .line 537
    if-gt v5, v7, :cond_16

    .line 538
    .line 539
    shl-long v6, v21, v5

    .line 540
    .line 541
    and-long v6, v6, v19

    .line 542
    .line 543
    cmp-long v6, v6, v16

    .line 544
    .line 545
    if-eqz v6, :cond_16

    .line 546
    .line 547
    if-ne v2, v3, :cond_15

    .line 548
    move v5, v1

    .line 549
    goto :goto_f

    .line 550
    .line 551
    :cond_15
    add-int/lit8 v5, v2, 0x1

    .line 552
    .line 553
    aget-byte v2, v4, v2

    .line 554
    .line 555
    const/16 v7, 0xff

    .line 556
    and-int/2addr v2, v7

    .line 557
    .line 558
    move/from16 v24, v5

    .line 559
    move v5, v2

    .line 560
    .line 561
    move/from16 v2, v24

    .line 562
    goto :goto_f

    .line 563
    .line 564
    :cond_16
    :goto_10
    if-ne v5, v15, :cond_19

    .line 565
    .line 566
    if-ne v2, v3, :cond_17

    .line 567
    move v5, v2

    .line 568
    move v2, v1

    .line 569
    goto :goto_11

    .line 570
    .line 571
    :cond_17
    add-int/lit8 v5, v2, 0x1

    .line 572
    .line 573
    aget-byte v2, v4, v2

    .line 574
    .line 575
    const/16 v7, 0xff

    .line 576
    and-int/2addr v2, v7

    .line 577
    :goto_11
    move v7, v5

    .line 578
    move v5, v2

    .line 579
    move v2, v7

    .line 580
    .line 581
    const/16 v7, 0x20

    .line 582
    .line 583
    :goto_12
    if-gt v5, v7, :cond_19

    .line 584
    .line 585
    shl-long v8, v21, v5

    .line 586
    .line 587
    and-long v8, v8, v19

    .line 588
    .line 589
    cmp-long v6, v8, v16

    .line 590
    .line 591
    if-eqz v6, :cond_19

    .line 592
    .line 593
    if-ne v2, v3, :cond_18

    .line 594
    move v5, v1

    .line 595
    .line 596
    const/16 v9, 0xff

    .line 597
    goto :goto_12

    .line 598
    .line 599
    :cond_18
    add-int/lit8 v5, v2, 0x1

    .line 600
    .line 601
    aget-byte v2, v4, v2

    .line 602
    .line 603
    const/16 v9, 0xff

    .line 604
    and-int/2addr v2, v9

    .line 605
    .line 606
    move/from16 v24, v5

    .line 607
    move v5, v2

    .line 608
    .line 609
    move/from16 v2, v24

    .line 610
    goto :goto_12

    .line 611
    .line 612
    :cond_19
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 613
    int-to-char v1, v5

    .line 614
    .line 615
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 616
    return-wide v10

    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    :pswitch_data_6
    .packed-switch 0x2d
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    :pswitch_data_7
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    :pswitch_data_8
    .packed-switch 0x8
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    :pswitch_data_9
    .packed-switch 0x28
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    :pswitch_data_a
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    int-to-byte v1, v1

    .line 6
    .line 7
    const/16 v2, 0x22

    .line 8
    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/16 v3, 0x27

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readStringNotMatch()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    return-object v1

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 22
    .line 23
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 26
    .line 27
    sub-int v6, v5, v4

    .line 28
    .line 29
    and-int/lit8 v6, v6, -0x4

    .line 30
    add-int/2addr v6, v4

    .line 31
    const/4 v7, 0x0

    .line 32
    move v8, v4

    .line 33
    move v9, v7

    .line 34
    move v10, v9

    .line 35
    move v11, v10

    .line 36
    move v12, v11

    .line 37
    .line 38
    :goto_1
    const/16 v13, 0x5c

    .line 39
    .line 40
    if-ge v8, v6, :cond_5

    .line 41
    .line 42
    aget-byte v10, v3, v8

    .line 43
    .line 44
    add-int/lit8 v11, v8, 0x1

    .line 45
    .line 46
    aget-byte v11, v3, v11

    .line 47
    .line 48
    add-int/lit8 v12, v8, 0x2

    .line 49
    .line 50
    aget-byte v12, v3, v12

    .line 51
    .line 52
    add-int/lit8 v15, v8, 0x3

    .line 53
    .line 54
    aget-byte v15, v3, v15

    .line 55
    .line 56
    if-eq v10, v13, :cond_5

    .line 57
    .line 58
    if-eq v11, v13, :cond_5

    .line 59
    .line 60
    if-eq v12, v13, :cond_5

    .line 61
    .line 62
    if-ne v15, v13, :cond_2

    .line 63
    goto :goto_3

    .line 64
    .line 65
    :cond_2
    if-eq v10, v1, :cond_4

    .line 66
    .line 67
    if-eq v11, v1, :cond_4

    .line 68
    .line 69
    if-eq v12, v1, :cond_4

    .line 70
    .line 71
    if-ne v15, v1, :cond_3

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_3
    add-int/lit8 v8, v8, 0x4

    .line 75
    .line 76
    add-int/lit8 v9, v9, 0x4

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 79
    goto :goto_4

    .line 80
    :cond_5
    :goto_3
    move v6, v7

    .line 81
    .line 82
    :goto_4
    const/16 v15, 0x78

    .line 83
    .line 84
    const/16 v16, 0x1

    .line 85
    .line 86
    const/16 v14, 0x75

    .line 87
    .line 88
    const/16 v17, 0x2

    .line 89
    .line 90
    if-eqz v6, :cond_9

    .line 91
    .line 92
    if-ne v10, v1, :cond_6

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_6
    if-ne v11, v1, :cond_7

    .line 96
    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 98
    .line 99
    add-int/lit8 v9, v9, 0x1

    .line 100
    goto :goto_5

    .line 101
    .line 102
    :cond_7
    if-ne v12, v1, :cond_8

    .line 103
    .line 104
    add-int/lit8 v8, v8, 0x2

    .line 105
    .line 106
    add-int/lit8 v9, v9, 0x2

    .line 107
    goto :goto_5

    .line 108
    .line 109
    :cond_8
    add-int/lit8 v8, v8, 0x3

    .line 110
    .line 111
    add-int/lit8 v9, v9, 0x3

    .line 112
    :goto_5
    move v6, v7

    .line 113
    goto :goto_8

    .line 114
    :cond_9
    move v6, v7

    .line 115
    .line 116
    :goto_6
    if-ge v8, v5, :cond_2c

    .line 117
    .line 118
    aget-byte v10, v3, v8

    .line 119
    .line 120
    if-ne v10, v13, :cond_c

    .line 121
    .line 122
    add-int/lit8 v6, v8, 0x1

    .line 123
    .line 124
    aget-byte v6, v3, v6

    .line 125
    .line 126
    if-ne v6, v14, :cond_a

    .line 127
    const/4 v6, 0x6

    .line 128
    goto :goto_7

    .line 129
    .line 130
    :cond_a
    if-ne v6, v15, :cond_b

    .line 131
    const/4 v6, 0x4

    .line 132
    goto :goto_7

    .line 133
    .line 134
    :cond_b
    move/from16 v6, v17

    .line 135
    :goto_7
    add-int/2addr v8, v6

    .line 136
    .line 137
    move/from16 v6, v16

    .line 138
    .line 139
    goto/16 :goto_15

    .line 140
    .line 141
    :cond_c
    if-ne v10, v1, :cond_2b

    .line 142
    :goto_8
    const/4 v10, 0x0

    .line 143
    .line 144
    if-eqz v6, :cond_1a

    .line 145
    .line 146
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 147
    .line 148
    if-nez v6, :cond_d

    .line 149
    .line 150
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 151
    .line 152
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object v6

    .line 157
    .line 158
    check-cast v6, [C

    .line 159
    .line 160
    iput-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 161
    .line 162
    :cond_d
    if-eqz v6, :cond_e

    .line 163
    array-length v8, v6

    .line 164
    .line 165
    if-ge v8, v9, :cond_f

    .line 166
    .line 167
    :cond_e
    new-array v6, v9, [C

    .line 168
    .line 169
    iput-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 170
    :cond_f
    move v8, v7

    .line 171
    .line 172
    :goto_9
    aget-byte v11, v3, v4

    .line 173
    .line 174
    and-int/lit16 v11, v11, 0xff

    .line 175
    int-to-char v11, v11

    .line 176
    .line 177
    if-ne v11, v13, :cond_18

    .line 178
    .line 179
    add-int/lit8 v11, v4, 0x1

    .line 180
    .line 181
    aget-byte v12, v3, v11

    .line 182
    int-to-char v12, v12

    .line 183
    .line 184
    if-eq v12, v2, :cond_17

    .line 185
    .line 186
    if-eq v12, v13, :cond_17

    .line 187
    .line 188
    const/16 v13, 0x62

    .line 189
    .line 190
    if-eq v12, v13, :cond_16

    .line 191
    .line 192
    const/16 v13, 0x66

    .line 193
    .line 194
    if-eq v12, v13, :cond_15

    .line 195
    .line 196
    const/16 v13, 0x6e

    .line 197
    .line 198
    if-eq v12, v13, :cond_14

    .line 199
    .line 200
    const/16 v13, 0x72

    .line 201
    .line 202
    if-eq v12, v13, :cond_13

    .line 203
    .line 204
    if-eq v12, v15, :cond_12

    .line 205
    .line 206
    const/16 v13, 0x74

    .line 207
    .line 208
    if-eq v12, v13, :cond_11

    .line 209
    .line 210
    if-eq v12, v14, :cond_10

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 214
    move-result v4

    .line 215
    .line 216
    :goto_a
    move/from16 v19, v11

    .line 217
    move v11, v4

    .line 218
    .line 219
    move/from16 v4, v19

    .line 220
    goto :goto_b

    .line 221
    .line 222
    :cond_10
    add-int/lit8 v11, v4, 0x2

    .line 223
    .line 224
    aget-byte v11, v3, v11

    .line 225
    .line 226
    add-int/lit8 v12, v4, 0x3

    .line 227
    .line 228
    aget-byte v12, v3, v12

    .line 229
    .line 230
    add-int/lit8 v13, v4, 0x4

    .line 231
    .line 232
    aget-byte v13, v3, v13

    .line 233
    .line 234
    add-int/lit8 v4, v4, 0x5

    .line 235
    .line 236
    aget-byte v14, v3, v4

    .line 237
    .line 238
    .line 239
    invoke-static {v11, v12, v13, v14}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 240
    move-result v11

    .line 241
    goto :goto_b

    .line 242
    .line 243
    :cond_11
    const/16 v4, 0x9

    .line 244
    goto :goto_a

    .line 245
    .line 246
    :cond_12
    add-int/lit8 v11, v4, 0x2

    .line 247
    .line 248
    aget-byte v11, v3, v11

    .line 249
    .line 250
    add-int/lit8 v4, v4, 0x3

    .line 251
    .line 252
    aget-byte v12, v3, v4

    .line 253
    .line 254
    .line 255
    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 256
    move-result v11

    .line 257
    goto :goto_b

    .line 258
    .line 259
    :cond_13
    const/16 v4, 0xd

    .line 260
    goto :goto_a

    .line 261
    .line 262
    :cond_14
    const/16 v4, 0xa

    .line 263
    goto :goto_a

    .line 264
    .line 265
    :cond_15
    const/16 v4, 0xc

    .line 266
    goto :goto_a

    .line 267
    .line 268
    :cond_16
    const/16 v4, 0x8

    .line 269
    goto :goto_a

    .line 270
    :cond_17
    move v4, v11

    .line 271
    move v11, v12

    .line 272
    goto :goto_b

    .line 273
    .line 274
    :cond_18
    if-ne v11, v1, :cond_19

    .line 275
    .line 276
    new-instance v1, Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    invoke-direct {v1, v6, v7, v9}, Ljava/lang/String;-><init>([CII)V

    .line 280
    move v8, v4

    .line 281
    goto :goto_d

    .line 282
    .line 283
    :cond_19
    :goto_b
    aput-char v11, v6, v8

    .line 284
    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 286
    .line 287
    add-int/lit8 v8, v8, 0x1

    .line 288
    .line 289
    const/16 v13, 0x5c

    .line 290
    .line 291
    const/16 v14, 0x75

    .line 292
    goto :goto_9

    .line 293
    .line 294
    :cond_1a
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->str:Ljava/lang/String;

    .line 295
    .line 296
    if-eqz v1, :cond_1b

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 300
    move-result-object v1

    .line 301
    goto :goto_d

    .line 302
    .line 303
    :cond_1b
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 304
    .line 305
    sub-int v4, v8, v1

    .line 306
    .line 307
    sget v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 308
    .line 309
    if-ge v6, v2, :cond_20

    .line 310
    .line 311
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 312
    .line 313
    if-nez v2, :cond_1c

    .line 314
    .line 315
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 316
    .line 317
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v6, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-result-object v2

    .line 322
    .line 323
    check-cast v2, [C

    .line 324
    .line 325
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 326
    .line 327
    :cond_1c
    if-eqz v2, :cond_1d

    .line 328
    array-length v6, v2

    .line 329
    .line 330
    if-ge v6, v4, :cond_1e

    .line 331
    .line 332
    :cond_1d
    new-array v2, v4, [C

    .line 333
    .line 334
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 335
    :cond_1e
    move v6, v7

    .line 336
    .line 337
    :goto_c
    if-ge v6, v4, :cond_1f

    .line 338
    .line 339
    add-int v9, v1, v6

    .line 340
    .line 341
    aget-byte v9, v3, v9

    .line 342
    .line 343
    and-int/lit16 v9, v9, 0xff

    .line 344
    int-to-char v9, v9

    .line 345
    .line 346
    aput-char v9, v2, v6

    .line 347
    .line 348
    add-int/lit8 v6, v6, 0x1

    .line 349
    goto :goto_c

    .line 350
    .line 351
    :cond_1f
    new-instance v1, Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    invoke-direct {v1, v2, v7, v4}, Ljava/lang/String;-><init>([CII)V

    .line 355
    goto :goto_d

    .line 356
    .line 357
    :cond_20
    new-instance v2, Ljava/lang/String;

    .line 358
    .line 359
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 360
    .line 361
    .line 362
    invoke-direct {v2, v3, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 363
    move-object v1, v2

    .line 364
    .line 365
    :goto_d
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 366
    .line 367
    iget-wide v11, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 368
    .line 369
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 370
    .line 371
    iget-wide v13, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 372
    and-long/2addr v11, v13

    .line 373
    .line 374
    const-wide/16 v13, 0x0

    .line 375
    .line 376
    cmp-long v2, v11, v13

    .line 377
    .line 378
    if-eqz v2, :cond_21

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 382
    move-result-object v1

    .line 383
    .line 384
    .line 385
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 386
    move-result v2

    .line 387
    .line 388
    if-eqz v2, :cond_22

    .line 389
    .line 390
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 391
    .line 392
    iget-wide v11, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 393
    .line 394
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 395
    move v4, v8

    .line 396
    .line 397
    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 398
    and-long/2addr v7, v11

    .line 399
    .line 400
    cmp-long v2, v7, v13

    .line 401
    .line 402
    if-eqz v2, :cond_23

    .line 403
    goto :goto_e

    .line 404
    :cond_22
    move v4, v8

    .line 405
    :cond_23
    move-object v10, v1

    .line 406
    .line 407
    :goto_e
    add-int/lit8 v8, v4, 0x1

    .line 408
    .line 409
    const/16 v1, 0x1a

    .line 410
    .line 411
    if-ne v8, v5, :cond_24

    .line 412
    :goto_f
    move v4, v1

    .line 413
    goto :goto_11

    .line 414
    .line 415
    :cond_24
    add-int/lit8 v2, v4, 0x2

    .line 416
    .line 417
    aget-byte v4, v3, v8

    .line 418
    :goto_10
    move v8, v2

    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :goto_11
    const-wide v6, 0x100003701L

    .line 424
    .line 425
    const-wide/16 v11, 0x1

    .line 426
    .line 427
    const/16 v2, 0x20

    .line 428
    .line 429
    if-gt v4, v2, :cond_26

    .line 430
    .line 431
    shl-long v17, v11, v4

    .line 432
    .line 433
    and-long v17, v17, v6

    .line 434
    .line 435
    cmp-long v9, v17, v13

    .line 436
    .line 437
    if-eqz v9, :cond_26

    .line 438
    .line 439
    if-ne v8, v5, :cond_25

    .line 440
    goto :goto_f

    .line 441
    .line 442
    :cond_25
    add-int/lit8 v2, v8, 0x1

    .line 443
    .line 444
    aget-byte v4, v3, v8

    .line 445
    goto :goto_10

    .line 446
    .line 447
    :cond_26
    const/16 v9, 0x2c

    .line 448
    .line 449
    if-ne v4, v9, :cond_27

    .line 450
    .line 451
    move/from16 v9, v16

    .line 452
    goto :goto_12

    .line 453
    :cond_27
    const/4 v9, 0x0

    .line 454
    .line 455
    :goto_12
    iput-boolean v9, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 456
    .line 457
    if-eqz v9, :cond_2a

    .line 458
    .line 459
    if-ne v8, v5, :cond_28

    .line 460
    move v4, v8

    .line 461
    move v8, v1

    .line 462
    goto :goto_13

    .line 463
    .line 464
    :cond_28
    add-int/lit8 v4, v8, 0x1

    .line 465
    .line 466
    aget-byte v8, v3, v8

    .line 467
    .line 468
    :goto_13
    move/from16 v19, v8

    .line 469
    move v8, v4

    .line 470
    .line 471
    move/from16 v4, v19

    .line 472
    .line 473
    :goto_14
    if-gt v4, v2, :cond_2a

    .line 474
    .line 475
    shl-long v15, v11, v4

    .line 476
    and-long/2addr v15, v6

    .line 477
    .line 478
    cmp-long v9, v15, v13

    .line 479
    .line 480
    if-eqz v9, :cond_2a

    .line 481
    .line 482
    if-ne v8, v5, :cond_29

    .line 483
    move v4, v1

    .line 484
    goto :goto_14

    .line 485
    .line 486
    :cond_29
    add-int/lit8 v4, v8, 0x1

    .line 487
    .line 488
    aget-byte v8, v3, v8

    .line 489
    goto :goto_13

    .line 490
    .line 491
    :cond_2a
    and-int/lit16 v1, v4, 0xff

    .line 492
    int-to-char v1, v1

    .line 493
    .line 494
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 495
    .line 496
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 497
    return-object v10

    .line 498
    .line 499
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    .line 500
    .line 501
    :goto_15
    add-int/lit8 v9, v9, 0x1

    .line 502
    const/4 v7, 0x0

    .line 503
    .line 504
    const/16 v13, 0x5c

    .line 505
    .line 506
    const/16 v14, 0x75

    .line 507
    .line 508
    goto/16 :goto_6

    .line 509
    .line 510
    :cond_2c
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 511
    .line 512
    const-string v2, "invalid escape character EOI"

    .line 513
    .line 514
    .line 515
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 516
    throw v1
.end method

.method public readString0()V
    .locals 12

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 11
    .line 12
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    .line 14
    aget-byte v6, v4, v5

    .line 15
    .line 16
    const/16 v7, 0x78

    .line 17
    .line 18
    const/16 v8, 0x75

    .line 19
    .line 20
    const/16 v9, 0x5c

    .line 21
    const/4 v10, 0x1

    .line 22
    .line 23
    if-ne v6, v9, :cond_2

    .line 24
    .line 25
    iput-boolean v10, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 26
    .line 27
    add-int/lit8 v6, v5, 0x1

    .line 28
    .line 29
    iput v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    .line 31
    aget-byte v4, v4, v6

    .line 32
    .line 33
    if-eq v4, v8, :cond_1

    .line 34
    .line 35
    if-eq v4, v7, :cond_0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    add-int/lit8 v5, v5, 0x3

    .line 39
    .line 40
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v5, v5, 0x5

    .line 44
    .line 45
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 46
    .line 47
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 48
    add-int/2addr v4, v10

    .line 49
    .line 50
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_2
    if-ne v6, v0, :cond_b

    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 57
    .line 58
    if-eqz v0, :cond_7

    .line 59
    .line 60
    new-array v0, v3, [C

    .line 61
    .line 62
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 63
    move v1, v2

    .line 64
    .line 65
    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 66
    .line 67
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 68
    .line 69
    aget-byte v5, v3, v4

    .line 70
    .line 71
    and-int/lit16 v5, v5, 0xff

    .line 72
    int-to-char v5, v5

    .line 73
    .line 74
    const/16 v6, 0x22

    .line 75
    .line 76
    if-ne v5, v9, :cond_5

    .line 77
    .line 78
    add-int/lit8 v5, v4, 0x1

    .line 79
    .line 80
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 81
    .line 82
    aget-byte v5, v3, v5

    .line 83
    int-to-char v5, v5

    .line 84
    .line 85
    if-eq v5, v6, :cond_6

    .line 86
    .line 87
    if-eq v5, v9, :cond_6

    .line 88
    .line 89
    if-eq v5, v8, :cond_4

    .line 90
    .line 91
    if-eq v5, v7, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 95
    move-result v5

    .line 96
    goto :goto_3

    .line 97
    .line 98
    :cond_3
    add-int/lit8 v5, v4, 0x2

    .line 99
    .line 100
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 101
    .line 102
    aget-byte v5, v3, v5

    .line 103
    .line 104
    add-int/lit8 v4, v4, 0x3

    .line 105
    .line 106
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 107
    .line 108
    aget-byte v3, v3, v4

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v3}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 112
    move-result v5

    .line 113
    goto :goto_3

    .line 114
    .line 115
    :cond_4
    add-int/lit8 v5, v4, 0x2

    .line 116
    .line 117
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 118
    .line 119
    aget-byte v5, v3, v5

    .line 120
    .line 121
    add-int/lit8 v6, v4, 0x3

    .line 122
    .line 123
    iput v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 124
    .line 125
    aget-byte v6, v3, v6

    .line 126
    .line 127
    add-int/lit8 v11, v4, 0x4

    .line 128
    .line 129
    iput v11, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 130
    .line 131
    aget-byte v11, v3, v11

    .line 132
    .line 133
    add-int/lit8 v4, v4, 0x5

    .line 134
    .line 135
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 136
    .line 137
    aget-byte v3, v3, v4

    .line 138
    .line 139
    .line 140
    invoke-static {v5, v6, v11, v3}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 141
    move-result v5

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_5
    if-ne v5, v6, :cond_6

    .line 145
    .line 146
    new-instance v1, Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 150
    goto :goto_4

    .line 151
    .line 152
    :cond_6
    :goto_3
    aput-char v5, v0, v1

    .line 153
    .line 154
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 155
    add-int/2addr v3, v10

    .line 156
    .line 157
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 158
    add-int/2addr v1, v10

    .line 159
    goto :goto_2

    .line 160
    :cond_7
    sub-int/2addr v5, v1

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v1, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getLatin1String(II)Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 167
    .line 168
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 169
    add-int/2addr v3, v10

    .line 170
    .line 171
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 172
    .line 173
    aget-byte v0, v0, v3

    .line 174
    .line 175
    :goto_5
    const/16 v3, 0x20

    .line 176
    .line 177
    if-gt v0, v3, :cond_8

    .line 178
    .line 179
    const-wide/16 v3, 0x1

    .line 180
    shl-long/2addr v3, v0

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    const-wide v5, 0x100003701L

    .line 186
    and-long/2addr v3, v5

    .line 187
    .line 188
    const-wide/16 v5, 0x0

    .line 189
    .line 190
    cmp-long v3, v3, v5

    .line 191
    .line 192
    if-eqz v3, :cond_8

    .line 193
    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 195
    .line 196
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 197
    add-int/2addr v3, v10

    .line 198
    .line 199
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 200
    .line 201
    aget-byte v0, v0, v3

    .line 202
    goto :goto_5

    .line 203
    .line 204
    :cond_8
    const/16 v3, 0x2c

    .line 205
    .line 206
    if-ne v0, v3, :cond_9

    .line 207
    move v2, v10

    .line 208
    .line 209
    :cond_9
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 210
    .line 211
    if-eqz v2, :cond_a

    .line 212
    .line 213
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 214
    add-int/2addr v0, v10

    .line 215
    .line 216
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->next()V

    .line 220
    goto :goto_6

    .line 221
    .line 222
    :cond_a
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 223
    add-int/2addr v2, v10

    .line 224
    .line 225
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 226
    int-to-char v0, v0

    .line 227
    .line 228
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 229
    .line 230
    :goto_6
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 231
    return-void

    .line 232
    .line 233
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 234
    .line 235
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 236
    .line 237
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 238
    .line 239
    goto/16 :goto_0
.end method

.method public readValueHashCode()J
    .locals 24

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    const/16 v2, 0x22

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/16 v3, 0x27

    .line 11
    .line 12
    if-eq v1, v3, :cond_0

    .line 13
    .line 14
    const-wide/16 v1, -0x1

    .line 15
    return-wide v1

    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 18
    const/4 v4, 0x1

    .line 19
    .line 20
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 21
    const/4 v5, 0x0

    .line 22
    .line 23
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 24
    .line 25
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 26
    .line 27
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 28
    move v9, v5

    .line 29
    .line 30
    const-wide/16 v10, 0x0

    .line 31
    .line 32
    :goto_0
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 33
    .line 34
    const/16 v13, 0xff

    .line 35
    .line 36
    const/16 v14, 0x78

    .line 37
    .line 38
    const/16 v15, 0x75

    .line 39
    .line 40
    const/16 v5, 0x5c

    .line 41
    .line 42
    const-wide/16 v16, 0x0

    .line 43
    .line 44
    if-ge v6, v12, :cond_1

    .line 45
    .line 46
    aget-byte v8, v3, v6

    .line 47
    .line 48
    if-ne v8, v1, :cond_3

    .line 49
    .line 50
    if-nez v9, :cond_2

    .line 51
    .line 52
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 53
    .line 54
    move-wide/from16 v10, v16

    .line 55
    .line 56
    :cond_1
    :goto_1
    const/16 v19, 0x20

    .line 57
    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_2
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 61
    .line 62
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 63
    .line 64
    add-int/lit8 v6, v6, 0x1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_3
    if-ne v8, v5, :cond_6

    .line 68
    .line 69
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 70
    .line 71
    add-int/lit8 v8, v6, 0x1

    .line 72
    .line 73
    aget-byte v12, v3, v8

    .line 74
    .line 75
    if-eq v12, v15, :cond_5

    .line 76
    .line 77
    if-eq v12, v14, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 81
    move-result v6

    .line 82
    .line 83
    move/from16 v19, v8

    .line 84
    move v8, v6

    .line 85
    .line 86
    move/from16 v6, v19

    .line 87
    .line 88
    :goto_2
    const/16 v19, 0x20

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_4
    add-int/lit8 v8, v6, 0x2

    .line 92
    .line 93
    aget-byte v8, v3, v8

    .line 94
    .line 95
    add-int/lit8 v6, v6, 0x3

    .line 96
    .line 97
    aget-byte v12, v3, v6

    .line 98
    .line 99
    .line 100
    invoke-static {v8, v12}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 101
    move-result v8

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_5
    add-int/lit8 v8, v6, 0x2

    .line 105
    .line 106
    aget-byte v8, v3, v8

    .line 107
    .line 108
    add-int/lit8 v12, v6, 0x3

    .line 109
    .line 110
    aget-byte v12, v3, v12

    .line 111
    .line 112
    add-int/lit8 v18, v6, 0x4

    .line 113
    .line 114
    const/16 v19, 0x20

    .line 115
    .line 116
    aget-byte v7, v3, v18

    .line 117
    .line 118
    add-int/lit8 v6, v6, 0x5

    .line 119
    .line 120
    aget-byte v2, v3, v6

    .line 121
    .line 122
    .line 123
    invoke-static {v8, v12, v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 124
    move-result v8

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_6
    const/16 v19, 0x20

    .line 128
    .line 129
    const/16 v2, -0x3d

    .line 130
    .line 131
    if-eq v8, v2, :cond_7

    .line 132
    .line 133
    const/16 v2, -0x3e

    .line 134
    .line 135
    if-ne v8, v2, :cond_8

    .line 136
    .line 137
    :cond_7
    and-int/lit8 v2, v8, 0x1f

    .line 138
    .line 139
    shl-int/lit8 v2, v2, 0x6

    .line 140
    .line 141
    add-int/lit8 v6, v6, 0x1

    .line 142
    .line 143
    aget-byte v7, v3, v6

    .line 144
    .line 145
    and-int/lit8 v7, v7, 0x3f

    .line 146
    or-int/2addr v2, v7

    .line 147
    int-to-char v8, v2

    .line 148
    .line 149
    :cond_8
    :goto_3
    if-gt v8, v13, :cond_a

    .line 150
    .line 151
    if-ltz v8, :cond_a

    .line 152
    .line 153
    const/16 v2, 0x8

    .line 154
    .line 155
    if-ge v9, v2, :cond_a

    .line 156
    .line 157
    if-nez v9, :cond_9

    .line 158
    .line 159
    if-nez v8, :cond_9

    .line 160
    goto :goto_6

    .line 161
    .line 162
    .line 163
    :cond_9
    packed-switch v9, :pswitch_data_0

    .line 164
    goto :goto_5

    .line 165
    :pswitch_0
    int-to-byte v2, v8

    .line 166
    int-to-long v7, v2

    .line 167
    .line 168
    const/16 v2, 0x38

    .line 169
    shl-long/2addr v7, v2

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    const-wide v12, 0xffffffffffffffL

    .line 175
    :goto_4
    and-long/2addr v10, v12

    .line 176
    add-long/2addr v10, v7

    .line 177
    goto :goto_5

    .line 178
    :pswitch_1
    int-to-byte v2, v8

    .line 179
    int-to-long v7, v2

    .line 180
    .line 181
    const/16 v2, 0x30

    .line 182
    shl-long/2addr v7, v2

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    const-wide v12, 0xffffffffffffL

    .line 188
    goto :goto_4

    .line 189
    :pswitch_2
    int-to-byte v2, v8

    .line 190
    int-to-long v7, v2

    .line 191
    .line 192
    const/16 v2, 0x28

    .line 193
    shl-long/2addr v7, v2

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    const-wide v12, 0xffffffffffL

    .line 199
    goto :goto_4

    .line 200
    :pswitch_3
    int-to-byte v2, v8

    .line 201
    int-to-long v7, v2

    .line 202
    .line 203
    shl-long v7, v7, v19

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    const-wide v12, 0xffffffffL

    .line 209
    goto :goto_4

    .line 210
    :pswitch_4
    int-to-byte v2, v8

    .line 211
    .line 212
    shl-int/lit8 v2, v2, 0x18

    .line 213
    int-to-long v7, v2

    .line 214
    .line 215
    .line 216
    const-wide/32 v12, 0xffffff

    .line 217
    goto :goto_4

    .line 218
    :pswitch_5
    int-to-byte v2, v8

    .line 219
    .line 220
    shl-int/lit8 v2, v2, 0x10

    .line 221
    int-to-long v7, v2

    .line 222
    .line 223
    .line 224
    const-wide/32 v12, 0xffff

    .line 225
    goto :goto_4

    .line 226
    :pswitch_6
    int-to-byte v5, v8

    .line 227
    .line 228
    shl-int/lit8 v2, v5, 0x8

    .line 229
    int-to-long v7, v2

    .line 230
    .line 231
    const-wide/16 v12, 0xff

    .line 232
    goto :goto_4

    .line 233
    :pswitch_7
    int-to-byte v2, v8

    .line 234
    int-to-long v10, v2

    .line 235
    :goto_5
    add-int/2addr v6, v4

    .line 236
    .line 237
    add-int/lit8 v9, v9, 0x1

    .line 238
    .line 239
    const/16 v2, 0x22

    .line 240
    const/4 v5, 0x0

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_a
    :goto_6
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 245
    .line 246
    move-wide/from16 v10, v16

    .line 247
    .line 248
    :goto_7
    cmp-long v1, v10, v16

    .line 249
    .line 250
    if-eqz v1, :cond_b

    .line 251
    .line 252
    move/from16 v20, v4

    .line 253
    .line 254
    goto/16 :goto_b

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :cond_b
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 260
    move-wide v10, v1

    .line 261
    const/4 v1, 0x0

    .line 262
    .line 263
    :goto_8
    aget-byte v2, v3, v6

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    const-wide v7, 0x100000001b3L

    .line 269
    .line 270
    if-ne v2, v5, :cond_e

    .line 271
    .line 272
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 273
    .line 274
    add-int/lit8 v2, v6, 0x1

    .line 275
    .line 276
    aget-byte v9, v3, v2

    .line 277
    .line 278
    if-eq v9, v15, :cond_d

    .line 279
    .line 280
    if-eq v9, v14, :cond_c

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 284
    move-result v6

    .line 285
    .line 286
    :goto_9
    move/from16 v20, v4

    .line 287
    goto :goto_a

    .line 288
    .line 289
    :cond_c
    add-int/lit8 v2, v6, 0x2

    .line 290
    .line 291
    aget-byte v2, v3, v2

    .line 292
    .line 293
    add-int/lit8 v6, v6, 0x3

    .line 294
    .line 295
    aget-byte v9, v3, v6

    .line 296
    .line 297
    .line 298
    invoke-static {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 299
    move-result v2

    .line 300
    .line 301
    move/from16 v20, v6

    .line 302
    move v6, v2

    .line 303
    .line 304
    move/from16 v2, v20

    .line 305
    goto :goto_9

    .line 306
    .line 307
    :cond_d
    add-int/lit8 v2, v6, 0x2

    .line 308
    .line 309
    aget-byte v2, v3, v2

    .line 310
    .line 311
    add-int/lit8 v9, v6, 0x3

    .line 312
    .line 313
    aget-byte v9, v3, v9

    .line 314
    .line 315
    add-int/lit8 v12, v6, 0x4

    .line 316
    .line 317
    aget-byte v12, v3, v12

    .line 318
    .line 319
    add-int/lit8 v6, v6, 0x5

    .line 320
    .line 321
    move/from16 v20, v4

    .line 322
    .line 323
    aget-byte v4, v3, v6

    .line 324
    .line 325
    .line 326
    invoke-static {v2, v9, v12, v4}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 327
    move-result v2

    .line 328
    .line 329
    move/from16 v23, v6

    .line 330
    move v6, v2

    .line 331
    .line 332
    move/from16 v2, v23

    .line 333
    .line 334
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 335
    int-to-long v5, v6

    .line 336
    xor-long/2addr v5, v10

    .line 337
    mul-long/2addr v5, v7

    .line 338
    move-wide v10, v5

    .line 339
    .line 340
    move/from16 v9, v19

    .line 341
    move v6, v2

    .line 342
    .line 343
    goto/16 :goto_11

    .line 344
    .line 345
    :cond_e
    move/from16 v20, v4

    .line 346
    .line 347
    const/16 v5, 0x22

    .line 348
    .line 349
    if-ne v2, v5, :cond_16

    .line 350
    .line 351
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 352
    .line 353
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 354
    .line 355
    add-int/lit8 v6, v6, 0x1

    .line 356
    .line 357
    :goto_b
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 358
    .line 359
    const/16 v2, 0x1a

    .line 360
    .line 361
    if-ne v6, v1, :cond_f

    .line 362
    move v4, v2

    .line 363
    goto :goto_c

    .line 364
    .line 365
    :cond_f
    add-int/lit8 v1, v6, 0x1

    .line 366
    .line 367
    aget-byte v4, v3, v6

    .line 368
    move v6, v1

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :goto_c
    const-wide v7, 0x100003701L

    .line 374
    .line 375
    const-wide/16 v14, 0x1

    .line 376
    .line 377
    move/from16 v1, v19

    .line 378
    .line 379
    if-gt v4, v1, :cond_11

    .line 380
    .line 381
    shl-long v21, v14, v4

    .line 382
    .line 383
    and-long v21, v21, v7

    .line 384
    .line 385
    cmp-long v1, v21, v16

    .line 386
    .line 387
    if-eqz v1, :cond_11

    .line 388
    .line 389
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 390
    .line 391
    if-ne v6, v1, :cond_10

    .line 392
    move v4, v2

    .line 393
    goto :goto_d

    .line 394
    .line 395
    :cond_10
    add-int/lit8 v1, v6, 0x1

    .line 396
    .line 397
    aget-byte v4, v3, v6

    .line 398
    move v6, v1

    .line 399
    .line 400
    :goto_d
    const/16 v19, 0x20

    .line 401
    goto :goto_c

    .line 402
    .line 403
    :cond_11
    const/16 v1, 0x2c

    .line 404
    .line 405
    if-ne v4, v1, :cond_12

    .line 406
    .line 407
    move/from16 v1, v20

    .line 408
    goto :goto_e

    .line 409
    :cond_12
    const/4 v1, 0x0

    .line 410
    .line 411
    :goto_e
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 412
    .line 413
    if-eqz v1, :cond_15

    .line 414
    .line 415
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 416
    .line 417
    if-ne v6, v1, :cond_13

    .line 418
    move v4, v2

    .line 419
    goto :goto_f

    .line 420
    .line 421
    :cond_13
    add-int/lit8 v1, v6, 0x1

    .line 422
    .line 423
    aget-byte v4, v3, v6

    .line 424
    move v6, v1

    .line 425
    .line 426
    :goto_f
    const/16 v9, 0x20

    .line 427
    .line 428
    :goto_10
    if-gt v4, v9, :cond_15

    .line 429
    .line 430
    shl-long v18, v14, v4

    .line 431
    .line 432
    and-long v18, v18, v7

    .line 433
    .line 434
    cmp-long v1, v18, v16

    .line 435
    .line 436
    if-eqz v1, :cond_15

    .line 437
    .line 438
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 439
    .line 440
    if-ne v6, v1, :cond_14

    .line 441
    move v4, v2

    .line 442
    goto :goto_10

    .line 443
    .line 444
    :cond_14
    add-int/lit8 v1, v6, 0x1

    .line 445
    .line 446
    aget-byte v4, v3, v6

    .line 447
    move v6, v1

    .line 448
    goto :goto_10

    .line 449
    .line 450
    :cond_15
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 451
    .line 452
    and-int/lit16 v1, v4, 0xff

    .line 453
    int-to-char v1, v1

    .line 454
    .line 455
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 456
    return-wide v10

    .line 457
    .line 458
    :cond_16
    move/from16 v9, v19

    .line 459
    .line 460
    add-int/lit8 v6, v6, 0x1

    .line 461
    int-to-long v4, v2

    .line 462
    xor-long/2addr v4, v10

    .line 463
    mul-long/2addr v4, v7

    .line 464
    move-wide v10, v4

    .line 465
    .line 466
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 467
    .line 468
    move/from16 v19, v9

    .line 469
    .line 470
    move/from16 v4, v20

    .line 471
    .line 472
    const/16 v5, 0x5c

    .line 473
    .line 474
    goto/16 :goto_8

    .line 475
    .line 476
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
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
