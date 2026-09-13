.class final Lcom/alibaba/fastjson2/JSONWriterUTF16;
.super Lcom/alibaba/fastjson2/JSONWriter;
.source "SourceFile"


# instance fields
.field final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field protected chars:[C


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;ZLjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    move-result p1

    .line 16
    .line 17
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 18
    array-length v1, v0

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    and-int/2addr p1, v1

    .line 22
    .line 23
    aget-object p1, v0, p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 26
    .line 27
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, [C

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const/16 p1, 0x2000

    .line 38
    .line 39
    new-array p1, p1, [C

    .line 40
    .line 41
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 42
    return-void
.end method

.method private grow(I)[C
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow0(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 6
    return-object p1
.end method

.method private grow0(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->newCapacity(II)I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 14
    return-void
.end method

.method private indent([CI)I
    .locals 3

    const/16 v0, 0xa

    .line 1
    aput-char v0, p1, p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 2
    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    mul-int/2addr v2, v1

    add-int/2addr v2, p2

    if-ne v1, v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 3
    :goto_0
    invoke-static {p1, p2, v2, v0}, Ljava/util/Arrays;->fill([CIIC)V

    return v2
.end method

.method private static indent([CII)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0xa

    .line 4
    aput-char v1, p0, p1

    add-int/2addr p2, v0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x9

    .line 5
    aput-char v1, p0, v0

    move v0, p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static putIntUnaligned([CII)V
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    .line 5
    int-to-long v3, p1

    .line 6
    const/4 p1, 0x1

    .line 7
    shl-long/2addr v3, p1

    .line 8
    add-long/2addr v1, v3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12
    return-void
.end method

.method private static putLong([CIJ)V
    .locals 12

    .line 1
    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    add-long v6, v0, v2

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v1, 0xff

    and-long/2addr v1, p2

    const-wide/32 v3, 0xff00

    and-long/2addr v3, p2

    const/16 p1, 0x8

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    const-wide/32 v3, 0xff0000

    and-long/2addr v3, p2

    const/16 v10, 0x10

    shl-long/2addr v3, v10

    or-long/2addr v1, v3

    const-wide v3, 0xff000000L

    and-long/2addr v3, p2

    const/16 v11, 0x18

    shl-long/2addr v3, v11

    or-long v8, v1, v3

    move-object v5, p0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v1, v5

    const-wide/16 v2, 0x8

    add-long/2addr v2, v6

    const-wide v4, 0xff00000000L

    and-long/2addr v4, p2

    const/16 p0, 0x20

    shr-long/2addr v4, p0

    const-wide v6, 0xff0000000000L

    and-long/2addr v6, p2

    shr-long/2addr v6, v11

    or-long/2addr v4, v6

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v6, p2

    shr-long/2addr v6, v10

    or-long/2addr v4, v6

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr p2, v6

    shr-long p0, p2, p1

    or-long/2addr v4, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method private static putLong([CIJI)V
    .locals 21

    .line 4
    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 5
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v10, 0xff

    and-long v1, p2, v10

    const-wide/32 v12, 0xff00

    and-long v3, p2, v12

    const/16 v14, 0x8

    shl-long/2addr v3, v14

    or-long/2addr v1, v3

    const-wide/32 v15, 0xff0000

    and-long v3, p2, v15

    const/16 v17, 0x10

    shl-long v3, v3, v17

    or-long/2addr v1, v3

    const-wide v18, 0xff000000L

    and-long v3, p2, v18

    const/16 v20, 0x18

    shl-long v3, v3, v20

    or-long v8, v1, v3

    move-object/from16 v5, p0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const-wide/16 v1, 0x8

    add-long/2addr v1, v6

    const-wide v3, 0xff00000000L

    and-long v3, p2, v3

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    const-wide v8, 0xff0000000000L

    and-long v8, p2, v8

    shr-long v8, v8, v20

    or-long/2addr v3, v8

    const-wide/high16 v8, 0xff000000000000L

    and-long v8, p2, v8

    shr-long v8, v8, v17

    or-long/2addr v3, v8

    const-wide/high16 v8, -0x100000000000000L

    and-long v8, p2, v8

    shr-long/2addr v8, v14

    or-long/2addr v3, v8

    move-wide v4, v3

    move-wide v2, v1

    move-object/from16 v1, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const-wide/16 v1, 0x10

    add-long/2addr v6, v1

    move/from16 v1, p4

    int-to-long v1, v1

    and-long v3, v1, v10

    and-long v8, v1, v12

    shl-long/2addr v8, v14

    or-long/2addr v3, v8

    and-long v8, v1, v15

    shl-long v8, v8, v17

    or-long/2addr v3, v8

    and-long v1, v1, v18

    shl-long v1, v1, v20

    or-long/2addr v1, v3

    move-wide v4, v1

    move-wide v2, v6

    move-object/from16 v1, p0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method private static putLong([CIJJ)V
    .locals 30

    .line 8
    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 9
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v10, 0xff

    and-long v1, p2, v10

    const-wide/32 v12, 0xff00

    and-long v3, p2, v12

    const/16 v14, 0x8

    shl-long/2addr v3, v14

    or-long/2addr v1, v3

    const-wide/32 v15, 0xff0000

    and-long v3, p2, v15

    const/16 v17, 0x10

    shl-long v3, v3, v17

    or-long/2addr v1, v3

    const-wide v18, 0xff000000L

    and-long v3, p2, v18

    const/16 v20, 0x18

    shl-long v3, v3, v20

    or-long v8, v1, v3

    move-object/from16 v5, p0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const-wide/16 v1, 0x8

    add-long/2addr v1, v6

    const-wide v8, 0xff00000000L

    and-long v3, p2, v8

    const/16 v21, 0x20

    shr-long v3, v3, v21

    const-wide v22, 0xff0000000000L

    and-long v24, p2, v22

    shr-long v24, v24, v20

    or-long v3, v3, v24

    const-wide/high16 v24, 0xff000000000000L

    and-long v26, p2, v24

    shr-long v26, v26, v17

    or-long v3, v3, v26

    const-wide/high16 v26, -0x100000000000000L

    and-long v28, p2, v26

    shr-long v28, v28, v14

    or-long v3, v3, v28

    move-wide v4, v3

    move-wide v2, v1

    move-object/from16 v1, p0

    .line 10
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const-wide/16 v1, 0x10

    add-long/2addr v1, v6

    and-long v3, p4, v10

    and-long v10, p4, v12

    shl-long/2addr v10, v14

    or-long/2addr v3, v10

    and-long v10, p4, v15

    shl-long v10, v10, v17

    or-long/2addr v3, v10

    and-long v10, p4, v18

    shl-long v10, v10, v20

    or-long/2addr v3, v10

    move-wide v4, v3

    move-wide v2, v1

    move-object/from16 v1, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const-wide/16 v1, 0x18

    add-long/2addr v6, v1

    and-long v1, p4, v8

    shr-long v1, v1, v21

    and-long v3, p4, v22

    shr-long v3, v3, v20

    or-long/2addr v1, v3

    and-long v3, p4, v24

    shr-long v3, v3, v17

    or-long/2addr v1, v3

    and-long v3, p4, v26

    shr-long/2addr v3, v14

    or-long/2addr v1, v3

    move-wide v4, v1

    move-wide v2, v6

    move-object/from16 v1, p0

    .line 12
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method private writeQuote()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 5
    array-length v1, v1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 21
    .line 22
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 23
    .line 24
    aput-char v2, v0, v1

    .line 25
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    const/high16 v2, 0x100000

    .line 6
    .line 7
    if-le v1, v2, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public endArray()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 7
    .line 8
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    iget-byte v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    move v3, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    mul-int/2addr v3, v0

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    :goto_0
    add-int/2addr v2, v3

    .line 22
    .line 23
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 24
    array-length v3, v0

    .line 25
    .line 26
    if-le v2, v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 30
    move-result-object v0

    .line 31
    .line 32
    :cond_1
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 38
    move-result v1

    .line 39
    .line 40
    :cond_2
    const/16 v2, 0x5d

    .line 41
    .line 42
    aput-char v2, v0, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 47
    .line 48
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 49
    return-void
.end method

.method public endObject()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 7
    .line 8
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    iget-byte v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    move v3, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    mul-int/2addr v3, v0

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    :goto_0
    add-int/2addr v2, v3

    .line 22
    .line 23
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 24
    array-length v3, v0

    .line 25
    .line 26
    if-le v2, v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 30
    move-result-object v0

    .line 31
    .line 32
    :cond_1
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 38
    move-result v1

    .line 39
    .line 40
    :cond_2
    const/16 v2, 0x7d

    .line 41
    .line 42
    aput-char v2, v0, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 47
    .line 48
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 49
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow0(I)V

    .line 9
    :cond_0
    return-void
.end method

.method public flushTo(Ljava/io/OutputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v4, v3, v1

    const/16 v5, 0x80

    if-lt v4, v5, :cond_0

    mul-int/lit8 v1, v2, 0x3

    .line 7
    new-array v1, v1, [B

    .line 8
    invoke-static {v3, v0, v2, v1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result v2

    .line 9
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 10
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-array v1, v2, [B

    move v3, v0

    .line 12
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v3, v4, :cond_2

    .line 13
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v4, v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 15
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return v2

    .line 16
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "out is nulll"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 20
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 21
    array-length p1, p2

    return p1

    .line 22
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "out is null"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flushTo(Ljava/io/Writer;)V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "flushTo error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBytes()[B
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v4, v3, v1

    const/16 v5, 0x80

    if-lt v4, v5, :cond_0

    mul-int/lit8 v1, v2, 0x3

    .line 3
    new-array v1, v1, [B

    .line 4
    invoke-static {v3, v0, v2, v1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result v0

    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-array v1, v2, [B

    .line 7
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v0, v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 9
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v1, v2, :cond_1

    .line 10
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v3, v3, v1

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p1, v1, :cond_4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-eq p1, v1, :cond_4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-ne p1, v1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    invoke-direct {v1, v3, v0, v2}, Ljava/lang/String;-><init>([CII)V

    if-nez p1, :cond_3

    .line 13
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    .line 15
    :cond_4
    :goto_2
    new-array p1, v2, [B

    .line 16
    :goto_3
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v0, v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v1, v1, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    return v0
.end method

.method public startArray()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    .line 10
    iget v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    .line 11
    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->overflowLevel()V

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 18
    .line 19
    add-int/lit8 v1, v0, 0x3

    .line 20
    .line 21
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 22
    .line 23
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 24
    mul-int/2addr v2, v3

    .line 25
    add-int/2addr v1, v2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 28
    array-length v3, v2

    .line 29
    .line 30
    if-le v1, v3, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 34
    move-result-object v2

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 37
    .line 38
    const/16 v3, 0x5b

    .line 39
    .line 40
    aput-char v3, v2, v0

    .line 41
    .line 42
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 48
    move-result v1

    .line 49
    .line 50
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 51
    return-void
.end method

.method public startObject()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    .line 10
    iget v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    .line 11
    .line 12
    if-le v0, v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->overflowLevel()V

    .line 16
    .line 17
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 18
    .line 19
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 22
    .line 23
    add-int/lit8 v2, v0, 0x3

    .line 24
    .line 25
    iget-byte v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 26
    .line 27
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 28
    mul-int/2addr v3, v4

    .line 29
    add-int/2addr v2, v3

    .line 30
    array-length v3, v1

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 36
    move-result-object v1

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 39
    .line 40
    const/16 v3, 0x7b

    .line 41
    .line 42
    aput-char v3, v1, v0

    .line 43
    .line 44
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 50
    move-result v2

    .line 51
    .line 52
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 11
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 12

    .line 1
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    if-eqz v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-wide v4, Lcom/alibaba/fastjson2/JSONWriter;->NONE_DIRECT_FEATURES:J

    and-long/2addr v2, v4

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    const/16 v0, 0x7b

    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeRaw(C)V

    .line 8
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v3, v2

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 10
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v10

    cmp-long v4, v4, v7

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    const/16 v0, 0x2c

    .line 11
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeRaw(C)V

    .line 12
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 13
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 14
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    :goto_1
    const/16 v0, 0x3a

    .line 16
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeRaw(C)V

    if-nez v2, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 19
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_7

    .line 20
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_7
    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_8

    .line 22
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_2

    .line 23
    :cond_8
    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_9

    .line 24
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_2

    .line 25
    :cond_9
    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_a

    .line 26
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_2

    .line 27
    :cond_a
    const-class v3, Ljava/math/BigDecimal;

    if-ne v0, v3, :cond_b

    .line 28
    check-cast v2, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v7, v8, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_2

    .line 29
    :cond_b
    const-class v3, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v3, :cond_c

    .line 30
    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->write(Ljava/util/List;)V

    goto :goto_2

    .line 31
    :cond_c
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v3, :cond_d

    .line 32
    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    .line 33
    :cond_d
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v3, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 34
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x7d

    .line 35
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeRaw(C)V

    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 13

    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr v2, v4

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 40
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 41
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    const/4 v9, 0x1

    if-ne v0, v2, :cond_2

    add-int/2addr v0, v9

    .line 42
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x5b

    aput-char v3, v0, v2

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    move v0, v9

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_d

    if-nez v0, :cond_4

    .line 45
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x2c

    aput-char v3, v0, v2

    .line 48
    :cond_4
    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 50
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 51
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_6

    .line 52
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_6
    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_7

    .line 54
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_1

    .line 55
    :cond_7
    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_8

    .line 56
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_1

    .line 57
    :cond_8
    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_9

    .line 58
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_1

    .line 59
    :cond_9
    const-class v3, Ljava/math/BigDecimal;

    if-ne v0, v3, :cond_a

    .line 60
    check-cast v2, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v7, v8, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_1

    .line 61
    :cond_a
    const-class v3, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v3, :cond_b

    .line 62
    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->write(Ljava/util/List;)V

    goto :goto_1

    .line 63
    :cond_b
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v3, :cond_c

    .line 64
    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_1

    .line 65
    :cond_c
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v3, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 66
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_1
    add-int/lit8 v12, v12, 0x1

    move v0, v11

    goto/16 :goto_0

    .line 67
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-ne v0, v2, :cond_e

    add-int/2addr v0, v9

    .line 68
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 69
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x5d

    aput-char v3, v0, v2

    return-void
.end method

.method public write0(C)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 5
    array-length v1, v1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    aput-char p1, v1, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 21
    return-void
.end method

.method public writeBase64([B)V
    .locals 10

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 6
    return-void

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x3

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    const/4 v1, 0x2

    .line 15
    shl-int/2addr v0, v1

    .line 16
    .line 17
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 18
    add-int/2addr v0, v2

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 25
    .line 26
    add-int/lit8 v3, v2, 0x1

    .line 27
    .line 28
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 29
    .line 30
    aput-char v4, v0, v2

    .line 31
    array-length v2, p1

    .line 32
    .line 33
    div-int/lit8 v2, v2, 0x3

    .line 34
    .line 35
    mul-int/lit8 v2, v2, 0x3

    .line 36
    const/4 v4, 0x0

    .line 37
    move v5, v4

    .line 38
    .line 39
    :goto_0
    if-ge v5, v2, :cond_1

    .line 40
    .line 41
    add-int/lit8 v6, v5, 0x1

    .line 42
    .line 43
    aget-byte v7, p1, v5

    .line 44
    .line 45
    and-int/lit16 v7, v7, 0xff

    .line 46
    .line 47
    shl-int/lit8 v7, v7, 0x10

    .line 48
    .line 49
    add-int/lit8 v8, v5, 0x2

    .line 50
    .line 51
    aget-byte v6, p1, v6

    .line 52
    .line 53
    and-int/lit16 v6, v6, 0xff

    .line 54
    .line 55
    shl-int/lit8 v6, v6, 0x8

    .line 56
    or-int/2addr v6, v7

    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x3

    .line 59
    .line 60
    aget-byte v7, p1, v8

    .line 61
    .line 62
    and-int/lit16 v7, v7, 0xff

    .line 63
    or-int/2addr v6, v7

    .line 64
    .line 65
    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    .line 66
    .line 67
    ushr-int/lit8 v8, v6, 0x12

    .line 68
    .line 69
    and-int/lit8 v8, v8, 0x3f

    .line 70
    .line 71
    aget-char v8, v7, v8

    .line 72
    .line 73
    aput-char v8, v0, v3

    .line 74
    .line 75
    add-int/lit8 v8, v3, 0x1

    .line 76
    .line 77
    ushr-int/lit8 v9, v6, 0xc

    .line 78
    .line 79
    and-int/lit8 v9, v9, 0x3f

    .line 80
    .line 81
    aget-char v9, v7, v9

    .line 82
    .line 83
    aput-char v9, v0, v8

    .line 84
    .line 85
    add-int/lit8 v8, v3, 0x2

    .line 86
    .line 87
    ushr-int/lit8 v9, v6, 0x6

    .line 88
    .line 89
    and-int/lit8 v9, v9, 0x3f

    .line 90
    .line 91
    aget-char v9, v7, v9

    .line 92
    .line 93
    aput-char v9, v0, v8

    .line 94
    .line 95
    add-int/lit8 v8, v3, 0x3

    .line 96
    .line 97
    and-int/lit8 v6, v6, 0x3f

    .line 98
    .line 99
    aget-char v6, v7, v6

    .line 100
    .line 101
    aput-char v6, v0, v8

    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x4

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    array-length v5, p1

    .line 106
    sub-int/2addr v5, v2

    .line 107
    .line 108
    if-lez v5, :cond_4

    .line 109
    .line 110
    aget-byte v2, p1, v2

    .line 111
    .line 112
    and-int/lit16 v2, v2, 0xff

    .line 113
    .line 114
    shl-int/lit8 v2, v2, 0xa

    .line 115
    .line 116
    if-ne v5, v1, :cond_2

    .line 117
    array-length v4, p1

    .line 118
    .line 119
    add-int/lit8 v4, v4, -0x1

    .line 120
    .line 121
    aget-byte p1, p1, v4

    .line 122
    .line 123
    and-int/lit16 p1, p1, 0xff

    .line 124
    .line 125
    shl-int/lit8 v4, p1, 0x2

    .line 126
    .line 127
    :cond_2
    or-int p1, v2, v4

    .line 128
    .line 129
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    .line 130
    .line 131
    shr-int/lit8 v4, p1, 0xc

    .line 132
    .line 133
    aget-char v4, v2, v4

    .line 134
    .line 135
    aput-char v4, v0, v3

    .line 136
    .line 137
    add-int/lit8 v4, v3, 0x1

    .line 138
    .line 139
    ushr-int/lit8 v6, p1, 0x6

    .line 140
    .line 141
    and-int/lit8 v6, v6, 0x3f

    .line 142
    .line 143
    aget-char v6, v2, v6

    .line 144
    .line 145
    aput-char v6, v0, v4

    .line 146
    .line 147
    add-int/lit8 v4, v3, 0x2

    .line 148
    .line 149
    const/16 v6, 0x3d

    .line 150
    .line 151
    if-ne v5, v1, :cond_3

    .line 152
    .line 153
    and-int/lit8 p1, p1, 0x3f

    .line 154
    .line 155
    aget-char p1, v2, p1

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    move p1, v6

    .line 158
    .line 159
    :goto_1
    aput-char p1, v0, v4

    .line 160
    .line 161
    add-int/lit8 p1, v3, 0x3

    .line 162
    .line 163
    aput-char v6, v0, p1

    .line 164
    .line 165
    add-int/lit8 v3, v3, 0x4

    .line 166
    .line 167
    :cond_4
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 168
    .line 169
    aput-char p1, v0, v3

    .line 170
    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 174
    return-void
.end method

.method public writeBigInt(Ljava/math/BigInteger;J)V
    .locals 10

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    const/16 v0, 0xa

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 15
    .line 16
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 17
    or-long/2addr p2, v1

    .line 18
    .line 19
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 20
    .line 21
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 22
    and-long/2addr v1, p2

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    cmp-long v1, v1, v3

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->LOW_BIGINT:Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 36
    move-result v1

    .line 37
    .line 38
    if-ltz v1, :cond_1

    .line 39
    .line 40
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->HIGH_BIGINT:Ljava/math/BigInteger;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 44
    move-result p1

    .line 45
    .line 46
    if-lez p1, :cond_2

    .line 47
    :cond_1
    move p1, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move p1, v2

    .line 50
    .line 51
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 52
    .line 53
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 54
    .line 55
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 56
    .line 57
    iget-wide v8, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 58
    or-long/2addr v6, v8

    .line 59
    and-long/2addr p2, v6

    .line 60
    .line 61
    cmp-long p2, p2, v3

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    move p2, v5

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move p2, v2

    .line 67
    .line 68
    :goto_1
    if-nez p1, :cond_5

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move v5, v2

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 76
    move-result p1

    .line 77
    .line 78
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 79
    add-int/2addr p2, p1

    .line 80
    .line 81
    add-int/lit8 p2, p2, 0x2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 85
    .line 86
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 87
    .line 88
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 89
    .line 90
    if-eqz v5, :cond_6

    .line 91
    .line 92
    add-int/lit8 v1, p3, 0x1

    .line 93
    .line 94
    const/16 v3, 0x22

    .line 95
    .line 96
    aput-char v3, p2, p3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2, p1, p2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 100
    add-int/2addr v1, p1

    .line 101
    .line 102
    add-int/lit8 p1, v1, 0x1

    .line 103
    .line 104
    aput-char v3, p2, v1

    .line 105
    goto :goto_3

    .line 106
    .line 107
    .line 108
    :cond_6
    invoke-virtual {v0, v2, p1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 109
    add-int/2addr p1, p3

    .line 110
    .line 111
    :goto_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 112
    return-void
.end method

.method public writeChar(C)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 19
    .line 20
    aput-char v3, v1, v0

    .line 21
    .line 22
    const/16 v4, 0x22

    .line 23
    .line 24
    const/16 v5, 0x5c

    .line 25
    .line 26
    if-eq p1, v4, :cond_2

    .line 27
    .line 28
    const/16 v4, 0x27

    .line 29
    .line 30
    if-eq p1, v4, :cond_2

    .line 31
    .line 32
    if-eq p1, v5, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x31

    .line 35
    .line 36
    const/16 v6, 0x75

    .line 37
    .line 38
    const/16 v7, 0x30

    .line 39
    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x2

    .line 44
    .line 45
    aput-char p1, v1, v2

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :pswitch_0
    aput-char v5, v1, v2

    .line 50
    .line 51
    add-int/lit8 v2, v0, 0x2

    .line 52
    .line 53
    aput-char v6, v1, v2

    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x3

    .line 56
    .line 57
    aput-char v7, v1, v2

    .line 58
    .line 59
    add-int/lit8 v2, v0, 0x4

    .line 60
    .line 61
    aput-char v7, v1, v2

    .line 62
    .line 63
    add-int/lit8 v2, v0, 0x5

    .line 64
    .line 65
    aput-char v4, v1, v2

    .line 66
    .line 67
    add-int/lit8 v2, v0, 0x6

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x47

    .line 70
    int-to-char p1, p1

    .line 71
    .line 72
    aput-char p1, v1, v2

    .line 73
    .line 74
    :goto_0
    add-int/lit8 v0, v0, 0x7

    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :pswitch_1
    aput-char v5, v1, v2

    .line 79
    .line 80
    add-int/lit8 v2, v0, 0x2

    .line 81
    .line 82
    aput-char v6, v1, v2

    .line 83
    .line 84
    add-int/lit8 v2, v0, 0x3

    .line 85
    .line 86
    aput-char v7, v1, v2

    .line 87
    .line 88
    add-int/lit8 v2, v0, 0x4

    .line 89
    .line 90
    aput-char v7, v1, v2

    .line 91
    .line 92
    add-int/lit8 v2, v0, 0x5

    .line 93
    .line 94
    aput-char v4, v1, v2

    .line 95
    .line 96
    add-int/lit8 v2, v0, 0x6

    .line 97
    .line 98
    add-int/lit8 p1, p1, 0x20

    .line 99
    int-to-char p1, p1

    .line 100
    .line 101
    aput-char p1, v1, v2

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :pswitch_2
    aput-char v5, v1, v2

    .line 105
    .line 106
    add-int/lit8 p1, v0, 0x2

    .line 107
    .line 108
    const/16 v2, 0x72

    .line 109
    .line 110
    aput-char v2, v1, p1

    .line 111
    .line 112
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :pswitch_3
    aput-char v5, v1, v2

    .line 116
    .line 117
    add-int/lit8 p1, v0, 0x2

    .line 118
    .line 119
    const/16 v2, 0x66

    .line 120
    .line 121
    aput-char v2, v1, p1

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :pswitch_4
    aput-char v5, v1, v2

    .line 125
    .line 126
    add-int/lit8 v2, v0, 0x2

    .line 127
    .line 128
    aput-char v6, v1, v2

    .line 129
    .line 130
    add-int/lit8 v2, v0, 0x3

    .line 131
    .line 132
    aput-char v7, v1, v2

    .line 133
    .line 134
    add-int/lit8 v2, v0, 0x4

    .line 135
    .line 136
    aput-char v7, v1, v2

    .line 137
    .line 138
    add-int/lit8 v2, v0, 0x5

    .line 139
    .line 140
    aput-char v7, v1, v2

    .line 141
    .line 142
    add-int/lit8 v2, v0, 0x6

    .line 143
    .line 144
    add-int/lit8 p1, p1, 0x57

    .line 145
    int-to-char p1, p1

    .line 146
    .line 147
    aput-char p1, v1, v2

    .line 148
    goto :goto_0

    .line 149
    .line 150
    :pswitch_5
    aput-char v5, v1, v2

    .line 151
    .line 152
    add-int/lit8 p1, v0, 0x2

    .line 153
    .line 154
    const/16 v2, 0x6e

    .line 155
    .line 156
    aput-char v2, v1, p1

    .line 157
    goto :goto_1

    .line 158
    .line 159
    :pswitch_6
    aput-char v5, v1, v2

    .line 160
    .line 161
    add-int/lit8 p1, v0, 0x2

    .line 162
    .line 163
    const/16 v2, 0x74

    .line 164
    .line 165
    aput-char v2, v1, p1

    .line 166
    goto :goto_1

    .line 167
    .line 168
    :pswitch_7
    aput-char v5, v1, v2

    .line 169
    .line 170
    add-int/lit8 p1, v0, 0x2

    .line 171
    .line 172
    const/16 v2, 0x62

    .line 173
    .line 174
    aput-char v2, v1, p1

    .line 175
    goto :goto_1

    .line 176
    .line 177
    :pswitch_8
    aput-char v5, v1, v2

    .line 178
    .line 179
    add-int/lit8 v2, v0, 0x2

    .line 180
    .line 181
    aput-char v6, v1, v2

    .line 182
    .line 183
    add-int/lit8 v2, v0, 0x3

    .line 184
    .line 185
    aput-char v7, v1, v2

    .line 186
    .line 187
    add-int/lit8 v2, v0, 0x4

    .line 188
    .line 189
    aput-char v7, v1, v2

    .line 190
    .line 191
    add-int/lit8 v2, v0, 0x5

    .line 192
    .line 193
    aput-char v7, v1, v2

    .line 194
    .line 195
    add-int/lit8 v2, v0, 0x6

    .line 196
    add-int/2addr p1, v7

    .line 197
    int-to-char p1, p1

    .line 198
    .line 199
    aput-char p1, v1, v2

    .line 200
    goto :goto_0

    .line 201
    .line 202
    :cond_1
    aput-char v5, v1, v2

    .line 203
    .line 204
    add-int/lit8 v2, v0, 0x2

    .line 205
    .line 206
    aput-char p1, v1, v2

    .line 207
    goto :goto_1

    .line 208
    .line 209
    :cond_2
    if-ne p1, v3, :cond_3

    .line 210
    .line 211
    add-int/lit8 v0, v0, 0x2

    .line 212
    .line 213
    aput-char v5, v1, v2

    .line 214
    move v2, v0

    .line 215
    .line 216
    :cond_3
    add-int/lit8 v0, v2, 0x1

    .line 217
    .line 218
    aput-char p1, v1, v2

    .line 219
    .line 220
    :goto_2
    aput-char v3, v1, v0

    .line 221
    .line 222
    add-int/lit8 v0, v0, 0x1

    .line 223
    .line 224
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 225
    return-void

    .line 226
    nop

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeColon()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 5
    array-length v1, v1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    const/16 v2, 0x3a

    .line 17
    .line 18
    aput-char v2, v1, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 23
    return-void
.end method

.method public writeComma()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 4
    .line 5
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x2

    .line 8
    .line 9
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 10
    .line 11
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 12
    mul-int/2addr v2, v3

    .line 13
    add-int/2addr v1, v2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 16
    array-length v3, v2

    .line 17
    .line 18
    if-le v1, v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 22
    move-result-object v2

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 25
    .line 26
    const/16 v3, 0x2c

    .line 27
    .line 28
    aput-char v3, v2, v0

    .line 29
    .line 30
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 36
    move-result v1

    .line 37
    .line 38
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 39
    return-void
.end method

.method public writeDateTime14(IIIIII)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x10

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 17
    .line 18
    aput-char v3, v2, v0

    .line 19
    .line 20
    if-ltz p1, :cond_1

    .line 21
    .line 22
    const/16 v4, 0x270f

    .line 23
    .line 24
    if-gt p1, v4, :cond_1

    .line 25
    .line 26
    div-int/lit16 v4, p1, 0x3e8

    .line 27
    .line 28
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 29
    .line 30
    mul-int/lit16 v6, v4, 0x3e8

    .line 31
    sub-int/2addr p1, v6

    .line 32
    .line 33
    aget p1, v5, p1

    .line 34
    .line 35
    add-int/lit8 v6, v0, 0x1

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x30

    .line 38
    int-to-byte v4, v4

    .line 39
    int-to-char v4, v4

    .line 40
    .line 41
    aput-char v4, v2, v6

    .line 42
    .line 43
    add-int/lit8 v4, v0, 0x2

    .line 44
    .line 45
    shr-int/lit8 v6, p1, 0x10

    .line 46
    int-to-byte v6, v6

    .line 47
    int-to-char v6, v6

    .line 48
    .line 49
    aput-char v6, v2, v4

    .line 50
    .line 51
    add-int/lit8 v4, v0, 0x3

    .line 52
    .line 53
    shr-int/lit8 v6, p1, 0x8

    .line 54
    int-to-byte v6, v6

    .line 55
    int-to-char v6, v6

    .line 56
    .line 57
    aput-char v6, v2, v4

    .line 58
    .line 59
    add-int/lit8 v4, v0, 0x4

    .line 60
    int-to-byte p1, p1

    .line 61
    int-to-char p1, p1

    .line 62
    .line 63
    aput-char p1, v2, v4

    .line 64
    .line 65
    aget p1, v5, p2

    .line 66
    .line 67
    add-int/lit8 p2, v0, 0x5

    .line 68
    .line 69
    shr-int/lit8 v4, p1, 0x8

    .line 70
    int-to-byte v4, v4

    .line 71
    int-to-char v4, v4

    .line 72
    .line 73
    aput-char v4, v2, p2

    .line 74
    .line 75
    add-int/lit8 p2, v0, 0x6

    .line 76
    int-to-byte p1, p1

    .line 77
    int-to-char p1, p1

    .line 78
    .line 79
    aput-char p1, v2, p2

    .line 80
    .line 81
    aget p1, v5, p3

    .line 82
    .line 83
    add-int/lit8 p2, v0, 0x7

    .line 84
    .line 85
    shr-int/lit8 p3, p1, 0x8

    .line 86
    int-to-byte p3, p3

    .line 87
    int-to-char p3, p3

    .line 88
    .line 89
    aput-char p3, v2, p2

    .line 90
    .line 91
    add-int/lit8 p2, v0, 0x8

    .line 92
    int-to-byte p1, p1

    .line 93
    int-to-char p1, p1

    .line 94
    .line 95
    aput-char p1, v2, p2

    .line 96
    .line 97
    aget p1, v5, p4

    .line 98
    .line 99
    add-int/lit8 p2, v0, 0x9

    .line 100
    .line 101
    shr-int/lit8 p3, p1, 0x8

    .line 102
    int-to-byte p3, p3

    .line 103
    int-to-char p3, p3

    .line 104
    .line 105
    aput-char p3, v2, p2

    .line 106
    .line 107
    add-int/lit8 p2, v0, 0xa

    .line 108
    int-to-byte p1, p1

    .line 109
    int-to-char p1, p1

    .line 110
    .line 111
    aput-char p1, v2, p2

    .line 112
    .line 113
    aget p1, v5, p5

    .line 114
    .line 115
    add-int/lit8 p2, v0, 0xb

    .line 116
    .line 117
    shr-int/lit8 p3, p1, 0x8

    .line 118
    int-to-byte p3, p3

    .line 119
    int-to-char p3, p3

    .line 120
    .line 121
    aput-char p3, v2, p2

    .line 122
    .line 123
    add-int/lit8 p2, v0, 0xc

    .line 124
    int-to-byte p1, p1

    .line 125
    int-to-char p1, p1

    .line 126
    .line 127
    aput-char p1, v2, p2

    .line 128
    .line 129
    aget p1, v5, p6

    .line 130
    .line 131
    add-int/lit8 p2, v0, 0xd

    .line 132
    .line 133
    shr-int/lit8 p3, p1, 0x8

    .line 134
    int-to-byte p3, p3

    .line 135
    int-to-char p3, p3

    .line 136
    .line 137
    aput-char p3, v2, p2

    .line 138
    .line 139
    add-int/lit8 p2, v0, 0xe

    .line 140
    int-to-byte p1, p1

    .line 141
    int-to-char p1, p1

    .line 142
    .line 143
    aput-char p1, v2, p2

    .line 144
    .line 145
    add-int/lit8 v0, v0, 0xf

    .line 146
    .line 147
    aput-char v3, v2, v0

    .line 148
    .line 149
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 150
    return-void

    .line 151
    .line 152
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    new-instance p3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    const-string p4, "Only 4 digits numbers are supported. Provided: "

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    throw p2
.end method

.method public writeDateTime19(IIIIII)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x15

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 10
    .line 11
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 12
    .line 13
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 14
    .line 15
    aput-char v2, v0, v1

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    const/16 v3, 0x270f

    .line 20
    .line 21
    if-gt p1, v3, :cond_0

    .line 22
    .line 23
    div-int/lit16 v3, p1, 0x3e8

    .line 24
    .line 25
    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 26
    .line 27
    mul-int/lit16 v5, v3, 0x3e8

    .line 28
    sub-int/2addr p1, v5

    .line 29
    .line 30
    aget p1, v4, p1

    .line 31
    .line 32
    add-int/lit8 v5, v1, 0x1

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x30

    .line 35
    int-to-byte v3, v3

    .line 36
    int-to-char v3, v3

    .line 37
    .line 38
    aput-char v3, v0, v5

    .line 39
    .line 40
    add-int/lit8 v3, v1, 0x2

    .line 41
    .line 42
    shr-int/lit8 v5, p1, 0x10

    .line 43
    int-to-byte v5, v5

    .line 44
    int-to-char v5, v5

    .line 45
    .line 46
    aput-char v5, v0, v3

    .line 47
    .line 48
    add-int/lit8 v3, v1, 0x3

    .line 49
    .line 50
    shr-int/lit8 v5, p1, 0x8

    .line 51
    int-to-byte v5, v5

    .line 52
    int-to-char v5, v5

    .line 53
    .line 54
    aput-char v5, v0, v3

    .line 55
    .line 56
    add-int/lit8 v3, v1, 0x4

    .line 57
    int-to-byte p1, p1

    .line 58
    int-to-char p1, p1

    .line 59
    .line 60
    aput-char p1, v0, v3

    .line 61
    .line 62
    add-int/lit8 p1, v1, 0x5

    .line 63
    .line 64
    const/16 v3, 0x2d

    .line 65
    .line 66
    aput-char v3, v0, p1

    .line 67
    .line 68
    aget p1, v4, p2

    .line 69
    .line 70
    add-int/lit8 p2, v1, 0x6

    .line 71
    .line 72
    shr-int/lit8 v5, p1, 0x8

    .line 73
    int-to-byte v5, v5

    .line 74
    int-to-char v5, v5

    .line 75
    .line 76
    aput-char v5, v0, p2

    .line 77
    .line 78
    add-int/lit8 p2, v1, 0x7

    .line 79
    int-to-byte p1, p1

    .line 80
    int-to-char p1, p1

    .line 81
    .line 82
    aput-char p1, v0, p2

    .line 83
    .line 84
    add-int/lit8 p1, v1, 0x8

    .line 85
    .line 86
    aput-char v3, v0, p1

    .line 87
    .line 88
    aget p1, v4, p3

    .line 89
    .line 90
    add-int/lit8 p2, v1, 0x9

    .line 91
    .line 92
    shr-int/lit8 p3, p1, 0x8

    .line 93
    int-to-byte p3, p3

    .line 94
    int-to-char p3, p3

    .line 95
    .line 96
    aput-char p3, v0, p2

    .line 97
    .line 98
    add-int/lit8 p2, v1, 0xa

    .line 99
    int-to-byte p1, p1

    .line 100
    int-to-char p1, p1

    .line 101
    .line 102
    aput-char p1, v0, p2

    .line 103
    .line 104
    add-int/lit8 p1, v1, 0xb

    .line 105
    .line 106
    const/16 p2, 0x20

    .line 107
    .line 108
    aput-char p2, v0, p1

    .line 109
    .line 110
    aget p1, v4, p4

    .line 111
    .line 112
    add-int/lit8 p2, v1, 0xc

    .line 113
    .line 114
    shr-int/lit8 p3, p1, 0x8

    .line 115
    int-to-byte p3, p3

    .line 116
    int-to-char p3, p3

    .line 117
    .line 118
    aput-char p3, v0, p2

    .line 119
    .line 120
    add-int/lit8 p2, v1, 0xd

    .line 121
    int-to-byte p1, p1

    .line 122
    int-to-char p1, p1

    .line 123
    .line 124
    aput-char p1, v0, p2

    .line 125
    .line 126
    add-int/lit8 p1, v1, 0xe

    .line 127
    .line 128
    const/16 p2, 0x3a

    .line 129
    .line 130
    aput-char p2, v0, p1

    .line 131
    .line 132
    aget p1, v4, p5

    .line 133
    .line 134
    add-int/lit8 p3, v1, 0xf

    .line 135
    .line 136
    shr-int/lit8 p4, p1, 0x8

    .line 137
    int-to-byte p4, p4

    .line 138
    int-to-char p4, p4

    .line 139
    .line 140
    aput-char p4, v0, p3

    .line 141
    .line 142
    add-int/lit8 p3, v1, 0x10

    .line 143
    int-to-byte p1, p1

    .line 144
    int-to-char p1, p1

    .line 145
    .line 146
    aput-char p1, v0, p3

    .line 147
    .line 148
    add-int/lit8 p1, v1, 0x11

    .line 149
    .line 150
    aput-char p2, v0, p1

    .line 151
    .line 152
    aget p1, v4, p6

    .line 153
    .line 154
    add-int/lit8 p2, v1, 0x12

    .line 155
    .line 156
    shr-int/lit8 p3, p1, 0x8

    .line 157
    int-to-byte p3, p3

    .line 158
    int-to-char p3, p3

    .line 159
    .line 160
    aput-char p3, v0, p2

    .line 161
    .line 162
    add-int/lit8 p2, v1, 0x13

    .line 163
    int-to-byte p1, p1

    .line 164
    int-to-char p1, p1

    .line 165
    .line 166
    aput-char p1, v0, p2

    .line 167
    .line 168
    add-int/lit8 p1, v1, 0x14

    .line 169
    int-to-byte p2, v2

    .line 170
    int-to-char p2, p2

    .line 171
    .line 172
    aput-char p2, v0, p1

    .line 173
    .line 174
    add-int/lit8 v1, v1, 0x15

    .line 175
    .line 176
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 177
    return-void

    .line 178
    .line 179
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    new-instance p3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    const-string p4, "Only 4 digits numbers are supported. Provided: "

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    .line 199
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p2
.end method

.method public writeDateTimeISO8601(IIIIIIIIZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_1

    .line 4
    .line 5
    if-nez p8, :cond_0

    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x6

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 13
    .line 14
    add-int/lit8 v3, v2, 0x19

    .line 15
    add-int/2addr v3, v1

    .line 16
    .line 17
    add-int v1, v2, v3

    .line 18
    .line 19
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 20
    array-length v4, v4

    .line 21
    .line 22
    if-lt v1, v4, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 26
    .line 27
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 28
    .line 29
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 30
    .line 31
    aput-char v3, v1, v2

    .line 32
    add-int/2addr v2, v0

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 36
    move-result p1

    .line 37
    .line 38
    const/16 v2, 0x2d

    .line 39
    .line 40
    aput-char v2, v1, p1

    .line 41
    .line 42
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 43
    .line 44
    aget p2, v3, p2

    .line 45
    .line 46
    add-int/lit8 v4, p1, 0x1

    .line 47
    .line 48
    shr-int/lit8 v5, p2, 0x8

    .line 49
    int-to-byte v5, v5

    .line 50
    int-to-char v5, v5

    .line 51
    .line 52
    aput-char v5, v1, v4

    .line 53
    .line 54
    add-int/lit8 v4, p1, 0x2

    .line 55
    int-to-byte p2, p2

    .line 56
    int-to-char p2, p2

    .line 57
    .line 58
    aput-char p2, v1, v4

    .line 59
    .line 60
    add-int/lit8 p2, p1, 0x3

    .line 61
    .line 62
    aput-char v2, v1, p2

    .line 63
    .line 64
    aget p2, v3, p3

    .line 65
    .line 66
    add-int/lit8 p3, p1, 0x4

    .line 67
    .line 68
    shr-int/lit8 v4, p2, 0x8

    .line 69
    int-to-byte v4, v4

    .line 70
    int-to-char v4, v4

    .line 71
    .line 72
    aput-char v4, v1, p3

    .line 73
    .line 74
    add-int/lit8 p3, p1, 0x5

    .line 75
    int-to-byte p2, p2

    .line 76
    int-to-char p2, p2

    .line 77
    .line 78
    aput-char p2, v1, p3

    .line 79
    .line 80
    add-int/lit8 p2, p1, 0x6

    .line 81
    .line 82
    if-eqz p9, :cond_3

    .line 83
    .line 84
    const/16 p3, 0x54

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_3
    const/16 p3, 0x20

    .line 88
    :goto_1
    int-to-byte p3, p3

    .line 89
    int-to-char p3, p3

    .line 90
    .line 91
    aput-char p3, v1, p2

    .line 92
    .line 93
    aget p2, v3, p4

    .line 94
    .line 95
    add-int/lit8 p3, p1, 0x7

    .line 96
    .line 97
    shr-int/lit8 p4, p2, 0x8

    .line 98
    int-to-byte p4, p4

    .line 99
    int-to-char p4, p4

    .line 100
    .line 101
    aput-char p4, v1, p3

    .line 102
    .line 103
    add-int/lit8 p3, p1, 0x8

    .line 104
    int-to-byte p2, p2

    .line 105
    int-to-char p2, p2

    .line 106
    .line 107
    aput-char p2, v1, p3

    .line 108
    .line 109
    add-int/lit8 p2, p1, 0x9

    .line 110
    .line 111
    const/16 p3, 0x3a

    .line 112
    .line 113
    aput-char p3, v1, p2

    .line 114
    .line 115
    aget p2, v3, p5

    .line 116
    .line 117
    add-int/lit8 p4, p1, 0xa

    .line 118
    .line 119
    shr-int/lit8 p5, p2, 0x8

    .line 120
    int-to-byte p5, p5

    .line 121
    int-to-char p5, p5

    .line 122
    .line 123
    aput-char p5, v1, p4

    .line 124
    .line 125
    add-int/lit8 p4, p1, 0xb

    .line 126
    int-to-byte p2, p2

    .line 127
    int-to-char p2, p2

    .line 128
    .line 129
    aput-char p2, v1, p4

    .line 130
    .line 131
    add-int/lit8 p2, p1, 0xc

    .line 132
    .line 133
    aput-char p3, v1, p2

    .line 134
    .line 135
    aget p2, v3, p6

    .line 136
    .line 137
    add-int/lit8 p4, p1, 0xd

    .line 138
    .line 139
    shr-int/lit8 p5, p2, 0x8

    .line 140
    int-to-byte p5, p5

    .line 141
    int-to-char p5, p5

    .line 142
    .line 143
    aput-char p5, v1, p4

    .line 144
    .line 145
    add-int/lit8 p4, p1, 0xe

    .line 146
    int-to-byte p2, p2

    .line 147
    int-to-char p2, p2

    .line 148
    .line 149
    aput-char p2, v1, p4

    .line 150
    .line 151
    add-int/lit8 p2, p1, 0xf

    .line 152
    .line 153
    if-lez p7, :cond_6

    .line 154
    .line 155
    add-int/lit8 p4, p1, 0x10

    .line 156
    .line 157
    const/16 p5, 0x2e

    .line 158
    .line 159
    aput-char p5, v1, p2

    .line 160
    .line 161
    div-int/lit8 p2, p7, 0xa

    .line 162
    .line 163
    div-int/lit8 p5, p2, 0xa

    .line 164
    .line 165
    mul-int/lit8 p6, p2, 0xa

    .line 166
    .line 167
    sub-int p6, p7, p6

    .line 168
    .line 169
    if-eqz p6, :cond_4

    .line 170
    .line 171
    aget p2, v3, p7

    .line 172
    .line 173
    shr-int/lit8 p5, p2, 0x10

    .line 174
    int-to-byte p5, p5

    .line 175
    int-to-char p5, p5

    .line 176
    .line 177
    aput-char p5, v1, p4

    .line 178
    .line 179
    add-int/lit8 p4, p1, 0x11

    .line 180
    .line 181
    shr-int/lit8 p5, p2, 0x8

    .line 182
    int-to-byte p5, p5

    .line 183
    int-to-char p5, p5

    .line 184
    .line 185
    aput-char p5, v1, p4

    .line 186
    .line 187
    add-int/lit8 p4, p1, 0x12

    .line 188
    int-to-byte p2, p2

    .line 189
    int-to-char p2, p2

    .line 190
    .line 191
    aput-char p2, v1, p4

    .line 192
    .line 193
    add-int/lit8 p2, p1, 0x13

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :cond_4
    mul-int/lit8 p6, p5, 0xa

    .line 197
    .line 198
    sub-int p6, p2, p6

    .line 199
    .line 200
    if-eqz p6, :cond_5

    .line 201
    .line 202
    aget p2, v3, p2

    .line 203
    .line 204
    shr-int/lit8 p5, p2, 0x8

    .line 205
    int-to-byte p5, p5

    .line 206
    int-to-char p5, p5

    .line 207
    .line 208
    aput-char p5, v1, p4

    .line 209
    .line 210
    add-int/lit8 p4, p1, 0x11

    .line 211
    int-to-byte p2, p2

    .line 212
    int-to-char p2, p2

    .line 213
    .line 214
    aput-char p2, v1, p4

    .line 215
    .line 216
    add-int/lit8 p2, p1, 0x12

    .line 217
    goto :goto_2

    .line 218
    .line 219
    :cond_5
    add-int/lit8 p2, p1, 0x11

    .line 220
    .line 221
    add-int/lit8 p5, p5, 0x30

    .line 222
    int-to-byte p1, p5

    .line 223
    int-to-char p1, p1

    .line 224
    .line 225
    aput-char p1, v1, p4

    .line 226
    .line 227
    :cond_6
    :goto_2
    if-eqz p9, :cond_a

    .line 228
    .line 229
    div-int/lit16 p1, p8, 0xe10

    .line 230
    .line 231
    if-nez p8, :cond_7

    .line 232
    .line 233
    add-int/lit8 p1, p2, 0x1

    .line 234
    .line 235
    const/16 p3, 0x5a

    .line 236
    .line 237
    aput-char p3, v1, p2

    .line 238
    move p2, p1

    .line 239
    goto :goto_3

    .line 240
    .line 241
    .line 242
    :cond_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 243
    move-result p4

    .line 244
    .line 245
    if-ltz p1, :cond_8

    .line 246
    .line 247
    const/16 v2, 0x2b

    .line 248
    .line 249
    :cond_8
    aput-char v2, v1, p2

    .line 250
    .line 251
    aget p4, v3, p4

    .line 252
    .line 253
    add-int/lit8 p5, p2, 0x1

    .line 254
    .line 255
    shr-int/lit8 p6, p4, 0x8

    .line 256
    int-to-byte p6, p6

    .line 257
    int-to-char p6, p6

    .line 258
    .line 259
    aput-char p6, v1, p5

    .line 260
    .line 261
    add-int/lit8 p5, p2, 0x2

    .line 262
    int-to-byte p4, p4

    .line 263
    int-to-char p4, p4

    .line 264
    .line 265
    aput-char p4, v1, p5

    .line 266
    .line 267
    add-int/lit8 p4, p2, 0x3

    .line 268
    .line 269
    aput-char p3, v1, p4

    .line 270
    .line 271
    mul-int/lit16 p1, p1, 0xe10

    .line 272
    sub-int/2addr p8, p1

    .line 273
    .line 274
    div-int/lit8 p8, p8, 0x3c

    .line 275
    .line 276
    if-gez p8, :cond_9

    .line 277
    neg-int p8, p8

    .line 278
    .line 279
    :cond_9
    aget p1, v3, p8

    .line 280
    .line 281
    add-int/lit8 p3, p2, 0x4

    .line 282
    .line 283
    shr-int/lit8 p4, p1, 0x8

    .line 284
    int-to-byte p4, p4

    .line 285
    int-to-char p4, p4

    .line 286
    .line 287
    aput-char p4, v1, p3

    .line 288
    .line 289
    add-int/lit8 p3, p2, 0x5

    .line 290
    int-to-byte p1, p1

    .line 291
    int-to-char p1, p1

    .line 292
    .line 293
    aput-char p1, v1, p3

    .line 294
    .line 295
    add-int/lit8 p2, p2, 0x6

    .line 296
    .line 297
    :cond_a
    :goto_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 298
    .line 299
    aput-char p1, v1, p2

    .line 300
    add-int/2addr p2, v0

    .line 301
    .line 302
    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 303
    return-void
.end method

.method public writeDateYYYMMDD10(III)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xd

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 19
    .line 20
    aput-char v3, v1, v0

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    .line 24
    move-result p1

    .line 25
    .line 26
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 27
    .line 28
    aput-char p2, v1, p1

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 33
    return-void
.end method

.method public writeDateYYYMMDD8(III)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xa

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 17
    .line 18
    aput-char v3, v2, v0

    .line 19
    .line 20
    if-ltz p1, :cond_1

    .line 21
    .line 22
    const/16 v4, 0x270f

    .line 23
    .line 24
    if-gt p1, v4, :cond_1

    .line 25
    .line 26
    div-int/lit16 v4, p1, 0x3e8

    .line 27
    .line 28
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 29
    .line 30
    mul-int/lit16 v6, v4, 0x3e8

    .line 31
    sub-int/2addr p1, v6

    .line 32
    .line 33
    aget p1, v5, p1

    .line 34
    .line 35
    add-int/lit8 v6, v0, 0x1

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x30

    .line 38
    int-to-byte v4, v4

    .line 39
    int-to-char v4, v4

    .line 40
    .line 41
    aput-char v4, v2, v6

    .line 42
    .line 43
    add-int/lit8 v4, v0, 0x2

    .line 44
    .line 45
    shr-int/lit8 v6, p1, 0x10

    .line 46
    int-to-byte v6, v6

    .line 47
    int-to-char v6, v6

    .line 48
    .line 49
    aput-char v6, v2, v4

    .line 50
    .line 51
    add-int/lit8 v4, v0, 0x3

    .line 52
    .line 53
    shr-int/lit8 v6, p1, 0x8

    .line 54
    int-to-byte v6, v6

    .line 55
    int-to-char v6, v6

    .line 56
    .line 57
    aput-char v6, v2, v4

    .line 58
    .line 59
    add-int/lit8 v4, v0, 0x4

    .line 60
    int-to-byte p1, p1

    .line 61
    int-to-char p1, p1

    .line 62
    .line 63
    aput-char p1, v2, v4

    .line 64
    .line 65
    aget p1, v5, p2

    .line 66
    .line 67
    add-int/lit8 p2, v0, 0x5

    .line 68
    .line 69
    shr-int/lit8 v4, p1, 0x8

    .line 70
    int-to-byte v4, v4

    .line 71
    int-to-char v4, v4

    .line 72
    .line 73
    aput-char v4, v2, p2

    .line 74
    .line 75
    add-int/lit8 p2, v0, 0x6

    .line 76
    int-to-byte p1, p1

    .line 77
    int-to-char p1, p1

    .line 78
    .line 79
    aput-char p1, v2, p2

    .line 80
    .line 81
    aget p1, v5, p3

    .line 82
    .line 83
    add-int/lit8 p2, v0, 0x7

    .line 84
    .line 85
    shr-int/lit8 p3, p1, 0x8

    .line 86
    int-to-byte p3, p3

    .line 87
    int-to-char p3, p3

    .line 88
    .line 89
    aput-char p3, v2, p2

    .line 90
    .line 91
    add-int/lit8 p2, v0, 0x8

    .line 92
    int-to-byte p1, p1

    .line 93
    int-to-char p1, p1

    .line 94
    .line 95
    aput-char p1, v2, p2

    .line 96
    .line 97
    add-int/lit8 v0, v0, 0x9

    .line 98
    .line 99
    aput-char v3, v2, v0

    .line 100
    .line 101
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 102
    return-void

    .line 103
    .line 104
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    const-string v0, "Only 4 digits numbers are supported. Provided: "

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p2
.end method

.method public writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V
    .locals 8

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimalNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    if-eqz p4, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeRaw(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_1
    iget-object p4, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 19
    .line 20
    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 21
    or-long/2addr p2, v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    .line 25
    move-result p4

    .line 26
    .line 27
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 28
    .line 29
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 30
    and-long/2addr v0, p2

    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 41
    .line 42
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 43
    and-long/2addr v4, p2

    .line 44
    .line 45
    cmp-long v0, v4, v2

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    const/16 v0, 0x10

    .line 50
    .line 51
    if-lt p4, v0, :cond_4

    .line 52
    .line 53
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->LOW:Ljava/math/BigDecimal;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 57
    move-result v0

    .line 58
    .line 59
    if-ltz v0, :cond_3

    .line 60
    .line 61
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->HIGH:Ljava/math/BigDecimal;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 65
    move-result v0

    .line 66
    .line 67
    if-lez v0, :cond_4

    .line 68
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    move v0, v1

    .line 71
    .line 72
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 73
    add-int/2addr p4, v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    .line 77
    move-result v5

    .line 78
    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 81
    move-result v5

    .line 82
    add-int/2addr p4, v5

    .line 83
    .line 84
    add-int/lit8 p4, p4, 0x7

    .line 85
    .line 86
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 87
    array-length v5, v5

    .line 88
    .line 89
    if-lt p4, v5, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 93
    .line 94
    :cond_5
    iget-object p4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 95
    .line 96
    const/16 v5, 0x22

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    add-int/lit8 v6, v4, 0x1

    .line 101
    .line 102
    aput-char v5, p4, v4

    .line 103
    move v4, v6

    .line 104
    .line 105
    :cond_6
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 106
    .line 107
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 108
    and-long/2addr p2, v6

    .line 109
    .line 110
    cmp-long p2, p2, v2

    .line 111
    .line 112
    if-eqz p2, :cond_7

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :cond_7
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    move-result p2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1, p2, p4, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 132
    move-result p1

    .line 133
    add-int/2addr v4, p1

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    add-int/lit8 p1, v4, 0x1

    .line 138
    .line 139
    aput-char v5, p4, v4

    .line 140
    move v4, p1

    .line 141
    .line 142
    :cond_8
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 143
    return-void
.end method

.method public writeDouble(D)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x18

    if-eqz v0, :cond_1

    add-int/lit8 v3, v2, 0x1a

    .line 3
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/16 v4, 0x22

    if-eqz v0, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 6
    aput-char v4, v3, v2

    move v2, v5

    .line 7
    :cond_3
    invoke-static {p1, p2, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_4

    add-int/lit8 p1, v2, 0x1

    .line 8
    aput-char v4, v3, v2

    move v2, p1

    .line 9
    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDouble([D)V
    .locals 8

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 12
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 13
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x1b

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 14
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 15
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 17
    aput-char v6, v4, v3

    .line 18
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 19
    aput-char v6, v4, v5

    move v5, v3

    :cond_3
    const/16 v3, 0x22

    if-eqz v0, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 20
    aput-char v3, v4, v5

    move v5, v6

    .line 21
    :cond_4
    aget-wide v6, p1, v1

    .line 22
    invoke-static {v6, v7, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 23
    aput-char v3, v4, v5

    move v5, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 24
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 25
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDoubleArray(DD)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    and-long/2addr v0, v2

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 22
    .line 23
    add-int/lit8 v3, v2, 0x33

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    add-int/lit8 v3, v2, 0x35

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 31
    .line 32
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 33
    .line 34
    add-int/lit8 v4, v2, 0x1

    .line 35
    .line 36
    const/16 v5, 0x5b

    .line 37
    .line 38
    aput-char v5, v3, v2

    .line 39
    .line 40
    const/16 v5, 0x22

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    aput-char v5, v3, v4

    .line 47
    move v4, v2

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-static {p1, p2, v3, v4, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    .line 51
    move-result p1

    .line 52
    add-int/2addr v4, p1

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    add-int/lit8 p1, v4, 0x1

    .line 57
    .line 58
    aput-char v5, v3, v4

    .line 59
    move v4, p1

    .line 60
    .line 61
    :cond_3
    add-int/lit8 p1, v4, 0x1

    .line 62
    .line 63
    const/16 p2, 0x2c

    .line 64
    .line 65
    aput-char p2, v3, v4

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x2

    .line 70
    .line 71
    aput-char v5, v3, p1

    .line 72
    move p1, v4

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-static {p3, p4, v3, p1, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    .line 76
    move-result p2

    .line 77
    add-int/2addr p1, p2

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    add-int/lit8 p2, p1, 0x1

    .line 82
    .line 83
    aput-char v5, v3, p1

    .line 84
    move p1, p2

    .line 85
    .line 86
    :cond_5
    const/16 p2, 0x5d

    .line 87
    .line 88
    aput-char p2, v3, p1

    .line 89
    add-int/2addr p1, v1

    .line 90
    .line 91
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 92
    return-void
.end method

.method public writeFloat(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0xf

    if-eqz v0, :cond_1

    add-int/lit8 v3, v2, 0x11

    .line 3
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 4
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/16 v4, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 5
    aput-char v4, v3, v2

    move v2, v5

    .line 6
    :cond_2
    invoke-static {p1, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[CIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v2, 0x1

    .line 7
    aput-char v4, v3, v2

    move v2, p1

    .line 8
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeFloat([F)V
    .locals 7

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 11
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 12
    array-length v4, p1

    if-eqz v0, :cond_2

    const/16 v5, 0x10

    goto :goto_1

    :cond_2
    const/16 v5, 0x12

    :goto_1
    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 13
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 14
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 16
    aput-char v6, v4, v3

    .line 17
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_7

    if-eqz v1, :cond_4

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 18
    aput-char v6, v4, v5

    move v5, v3

    :cond_4
    const/16 v3, 0x22

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 19
    aput-char v3, v4, v5

    move v5, v6

    .line 20
    :cond_5
    aget v6, p1, v1

    .line 21
    invoke-static {v6, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[CIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 22
    aput-char v3, v4, v5

    move v5, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/16 p1, 0x5d

    .line 23
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 24
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeHex([B)V
    .locals 10

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x3

    .line 12
    .line 13
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 22
    .line 23
    const/16 v2, 0x78

    .line 24
    .line 25
    aput-char v2, v0, v1

    .line 26
    .line 27
    add-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    const/16 v3, 0x27

    .line 30
    .line 31
    aput-char v3, v0, v2

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x2

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    array-length v4, p1

    .line 36
    .line 37
    if-ge v2, v4, :cond_3

    .line 38
    .line 39
    aget-byte v4, p1, v2

    .line 40
    .line 41
    and-int/lit16 v5, v4, 0xff

    .line 42
    .line 43
    shr-int/lit8 v5, v5, 0x4

    .line 44
    .line 45
    and-int/lit8 v4, v4, 0xf

    .line 46
    .line 47
    const/16 v6, 0x37

    .line 48
    .line 49
    const/16 v7, 0x30

    .line 50
    .line 51
    const/16 v8, 0xa

    .line 52
    .line 53
    if-ge v5, v8, :cond_1

    .line 54
    move v9, v7

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v9, v6

    .line 57
    :goto_1
    add-int/2addr v5, v9

    .line 58
    int-to-char v5, v5

    .line 59
    .line 60
    aput-char v5, v0, v1

    .line 61
    .line 62
    add-int/lit8 v5, v1, 0x1

    .line 63
    .line 64
    if-ge v4, v8, :cond_2

    .line 65
    move v6, v7

    .line 66
    :cond_2
    add-int/2addr v4, v6

    .line 67
    int-to-char v4, v4

    .line 68
    .line 69
    aput-char v4, v0, v5

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x2

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_3
    aput-char v3, v0, v1

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 81
    return-void
.end method

.method public writeInt16(S)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    and-long/2addr v0, v2

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 21
    .line 22
    add-int/lit8 v2, v1, 0x7

    .line 23
    .line 24
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 25
    array-length v3, v3

    .line 26
    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    add-int/lit8 v3, v1, 0x1

    .line 37
    .line 38
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 39
    .line 40
    aput-char v4, v2, v1

    .line 41
    move v1, v3

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    add-int/lit8 v0, p1, 0x1

    .line 50
    .line 51
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 52
    .line 53
    aput-char v1, v2, p1

    .line 54
    move p1, v0

    .line 55
    .line 56
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 57
    return-void
.end method

.method public writeInt32(I)V
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0xd

    .line 18
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 21
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v2, v1

    move v1, v3

    .line 22
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 23
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v1, v2, p1

    move p1, v0

    .line 24
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt32([I)V
    .locals 7

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 4
    array-length v4, p1

    mul-int/lit8 v4, v4, 0xd

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 5
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 6
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 8
    aput-char v6, v4, v3

    .line 9
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 10
    aput-char v6, v4, v5

    move v5, v3

    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v3, v5, 0x1

    .line 11
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v6, v4, v5

    move v5, v3

    .line 12
    :cond_4
    aget v3, p1, v1

    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result v3

    if-eqz v0, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 13
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v6, v4, v3

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 14
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 15
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt64(J)V
    .locals 9

    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 20
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide v2, 0x1fffffffffffffL

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    const-wide v2, -0x1fffffffffffffL

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 21
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v6, v3, 0x17

    .line 22
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 23
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 24
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    if-eqz v2, :cond_3

    add-int/lit8 v7, v3, 0x1

    .line 25
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v8, v6, v3

    move v3, v7

    .line 26
    :cond_3
    invoke-static {v6, v3, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result v3

    if-eqz v2, :cond_4

    add-int/lit8 p1, v3, 0x1

    .line 27
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p2, v6, v3

    :goto_2
    move v3, p1

    goto :goto_3

    .line 28
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v0

    cmp-long v2, v7, v4

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, p1, v0

    if-gtz p1, :cond_5

    add-int/lit8 p1, v3, 0x1

    const/16 p2, 0x4c

    .line 29
    aput-char p2, v6, v3

    goto :goto_2

    .line 30
    :cond_5
    :goto_3
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt64([J)V
    .locals 12

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 3
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4
    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v7, v9

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v3

    .line 5
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v4, v1, 0x2

    .line 6
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x17

    add-int/2addr v4, v5

    .line 7
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 9
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v7, 0x5b

    .line 10
    aput-char v7, v4, v1

    move v1, v3

    .line 11
    :goto_2
    array-length v7, p1

    if-ge v1, v7, :cond_9

    if-eqz v1, :cond_4

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x2c

    .line 12
    aput-char v8, v4, v5

    move v5, v7

    .line 13
    :cond_4
    aget-wide v7, p1, v1

    if-nez v0, :cond_6

    if-eqz v2, :cond_5

    const-wide v9, 0x1fffffffffffffL

    cmp-long v9, v7, v9

    if-gtz v9, :cond_5

    const-wide v9, -0x1fffffffffffffL

    cmp-long v9, v7, v9

    if-ltz v9, :cond_5

    goto :goto_3

    :cond_5
    move v9, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v9, v6

    :goto_4
    if-eqz v9, :cond_7

    add-int/lit8 v10, v5, 0x1

    .line 14
    iget-char v11, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v11, v4, v5

    move v5, v10

    .line 15
    :cond_7
    invoke-static {v4, v5, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result v5

    if-eqz v9, :cond_8

    add-int/lit8 v7, v5, 0x1

    .line 16
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v8, v4, v5

    move v5, v7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const/16 p1, 0x5d

    .line 17
    aput-char p1, v4, v5

    add-int/2addr v5, v6

    .line 18
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt8(B)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    and-long/2addr v0, v2

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 21
    .line 22
    add-int/lit8 v2, v1, 0x7

    .line 23
    .line 24
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 25
    array-length v3, v3

    .line 26
    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    add-int/lit8 v3, v1, 0x1

    .line 37
    .line 38
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 39
    .line 40
    aput-char v4, v2, v1

    .line 41
    move v1, v3

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    add-int/lit8 v0, p1, 0x1

    .line 50
    .line 51
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 52
    .line 53
    aput-char v1, v2, p1

    .line 54
    move p1, v0

    .line 55
    .line 56
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 57
    return-void
.end method

.method public writeLocalDateTime(Lcom/alibaba/fastjson2/time/LocalDateTime;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x26

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 19
    .line 20
    aput-char v3, v1, v0

    .line 21
    .line 22
    iget-object v0, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 23
    .line 24
    iget v3, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 25
    .line 26
    iget-short v4, v0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 27
    .line 28
    iget-short v0, v0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    .line 32
    move-result v0

    .line 33
    .line 34
    add-int/lit8 v2, v0, 0x1

    .line 35
    .line 36
    const/16 v3, 0x20

    .line 37
    .line 38
    aput-char v3, v1, v0

    .line 39
    .line 40
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILcom/alibaba/fastjson2/time/LocalTime;)I

    .line 44
    move-result p1

    .line 45
    .line 46
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 47
    .line 48
    aput-char v0, v1, p1

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 53
    return-void
.end method

.method public writeName10Raw(JJ)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x12

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 28
    :goto_0
    move-wide v5, p1

    .line 29
    move-wide v7, p3

    .line 30
    move v4, v0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    const/16 v2, 0x2c

    .line 36
    .line 37
    aput-char v2, v3, v0

    .line 38
    .line 39
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-wide v5, p1

    .line 48
    move-wide v7, p3

    .line 49
    move v4, v1

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJJ)V

    .line 53
    move v0, v4

    .line 54
    .line 55
    add-int/lit8 v4, v0, 0xd

    .line 56
    .line 57
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 58
    return-void
.end method

.method public writeName11Raw(JJ)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x12

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 28
    :goto_0
    move-wide v5, p1

    .line 29
    move-wide v7, p3

    .line 30
    move v4, v0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    const/16 v2, 0x2c

    .line 36
    .line 37
    aput-char v2, v3, v0

    .line 38
    .line 39
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-wide v5, p1

    .line 48
    move-wide v7, p3

    .line 49
    move v4, v1

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJJ)V

    .line 53
    move v0, v4

    .line 54
    .line 55
    add-int/lit8 v4, v0, 0xe

    .line 56
    .line 57
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 58
    return-void
.end method

.method public writeName12Raw(JJ)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x12

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 28
    :goto_0
    move-wide v5, p1

    .line 29
    move-wide v7, p3

    .line 30
    move v4, v0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    const/16 v2, 0x2c

    .line 36
    .line 37
    aput-char v2, v3, v0

    .line 38
    .line 39
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-wide v5, p1

    .line 48
    move-wide v7, p3

    .line 49
    move v4, v1

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJJ)V

    .line 53
    move v0, v4

    .line 54
    .line 55
    add-int/lit8 v4, v0, 0xf

    .line 56
    .line 57
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 58
    return-void
.end method

.method public writeName13Raw(JJ)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x12

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 28
    :goto_0
    move-wide v5, p1

    .line 29
    move-wide v7, p3

    .line 30
    move v4, v0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    const/16 v2, 0x2c

    .line 36
    .line 37
    aput-char v2, v3, v0

    .line 38
    .line 39
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-wide v5, p1

    .line 48
    move-wide v7, p3

    .line 49
    move v4, v1

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJJ)V

    .line 53
    move v0, v4

    .line 54
    .line 55
    add-int/lit8 v4, v0, 0x10

    .line 56
    .line 57
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 58
    return-void
.end method

.method public writeName14Raw(JJ)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x13

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 28
    :goto_0
    move-wide v5, p1

    .line 29
    move-wide v7, p3

    .line 30
    move v4, v0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    const/16 v2, 0x2c

    .line 36
    .line 37
    aput-char v2, v3, v0

    .line 38
    .line 39
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-wide v5, p1

    .line 48
    move-wide v7, p3

    .line 49
    move v4, v1

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJJ)V

    .line 53
    move v0, v4

    .line 54
    .line 55
    add-int/lit8 v4, v0, 0x10

    .line 56
    .line 57
    const/16 p1, 0x3a

    .line 58
    .line 59
    aput-char p1, v3, v4

    .line 60
    .line 61
    add-int/lit8 v4, v0, 0x11

    .line 62
    .line 63
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 64
    return-void
.end method

.method public writeName15Raw(JJ)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x14

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 28
    :goto_0
    move-wide v5, p1

    .line 29
    move-wide v7, p3

    .line 30
    move v4, v0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    const/16 v2, 0x2c

    .line 36
    .line 37
    aput-char v2, v3, v0

    .line 38
    .line 39
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-wide v5, p1

    .line 48
    move-wide v7, p3

    .line 49
    move v4, v1

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJJ)V

    .line 53
    move v0, v4

    .line 54
    .line 55
    add-int/lit8 v4, v0, 0x10

    .line 56
    .line 57
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 58
    .line 59
    aput-char p1, v3, v4

    .line 60
    .line 61
    add-int/lit8 v4, v0, 0x11

    .line 62
    .line 63
    const/16 p1, 0x3a

    .line 64
    .line 65
    aput-char p1, v3, v4

    .line 66
    .line 67
    add-int/lit8 v4, v0, 0x12

    .line 68
    .line 69
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 70
    return-void
.end method

.method public writeName16Raw(JJ)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x15

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    const/16 v2, 0x2c

    .line 33
    .line 34
    aput-char v2, v3, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 42
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v1

    .line 45
    .line 46
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 47
    .line 48
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 49
    .line 50
    aput-char v1, v3, v0

    .line 51
    move-wide v5, p1

    .line 52
    move-wide v7, p3

    .line 53
    .line 54
    .line 55
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJJ)V

    .line 56
    .line 57
    add-int/lit8 p1, v0, 0x11

    .line 58
    .line 59
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 60
    .line 61
    aput-char p2, v3, p1

    .line 62
    .line 63
    add-int/lit8 p1, v0, 0x12

    .line 64
    .line 65
    const/16 p2, 0x3a

    .line 66
    .line 67
    aput-char p2, v3, p1

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x13

    .line 70
    .line 71
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 72
    return-void
.end method

.method public writeName2Raw(J)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xa

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    const/16 v3, 0x2c

    .line 32
    .line 33
    aput-char v3, v2, v0

    .line 34
    .line 35
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v2, v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJ)V

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x5

    .line 49
    .line 50
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 51
    return-void
.end method

.method public final writeName3Raw(J)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xa

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    const/16 v3, 0x2c

    .line 32
    .line 33
    aput-char v3, v2, v0

    .line 34
    .line 35
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v2, v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJ)V

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x6

    .line 49
    .line 50
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 51
    return-void
.end method

.method public writeName4Raw(J)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xa

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    const/16 v3, 0x2c

    .line 32
    .line 33
    aput-char v3, v2, v0

    .line 34
    .line 35
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v2, v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJ)V

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x7

    .line 49
    .line 50
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 51
    return-void
.end method

.method public writeName5Raw(J)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xa

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    const/16 v3, 0x2c

    .line 32
    .line 33
    aput-char v3, v2, v0

    .line 34
    .line 35
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v2, v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJ)V

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x8

    .line 49
    .line 50
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 51
    return-void
.end method

.method public writeName6Raw(J)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xb

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    const/16 v3, 0x2c

    .line 32
    .line 33
    aput-char v3, v2, v0

    .line 34
    .line 35
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v2, v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJ)V

    .line 47
    .line 48
    add-int/lit8 p1, v0, 0x8

    .line 49
    .line 50
    const/16 p2, 0x3a

    .line 51
    .line 52
    aput-char p2, v2, p1

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x9

    .line 55
    .line 56
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 57
    return-void
.end method

.method public writeName7Raw(J)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xc

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    const/16 v3, 0x2c

    .line 32
    .line 33
    aput-char v3, v2, v0

    .line 34
    .line 35
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v2, v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJ)V

    .line 47
    .line 48
    add-int/lit8 p1, v0, 0x8

    .line 49
    .line 50
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 51
    .line 52
    aput-char p2, v2, p1

    .line 53
    .line 54
    add-int/lit8 p1, v0, 0x9

    .line 55
    .line 56
    const/16 p2, 0x3a

    .line 57
    .line 58
    aput-char p2, v2, p1

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0xa

    .line 61
    .line 62
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 63
    return-void
.end method

.method public writeName8Raw(J)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xd

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    const/16 v3, 0x2c

    .line 32
    .line 33
    aput-char v3, v2, v0

    .line 34
    .line 35
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    .line 45
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 46
    .line 47
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 48
    .line 49
    aput-char v3, v2, v0

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v1, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJ)V

    .line 53
    .line 54
    add-int/lit8 p1, v0, 0x9

    .line 55
    .line 56
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 57
    .line 58
    aput-char p2, v2, p1

    .line 59
    .line 60
    add-int/lit8 p1, v0, 0xa

    .line 61
    .line 62
    const/16 p2, 0x3a

    .line 63
    .line 64
    aput-char p2, v2, p1

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0xb

    .line 67
    .line 68
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 69
    return-void
.end method

.method public writeName9Raw(JI)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xe

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 9
    mul-int/2addr v2, v3

    .line 10
    add-int/2addr v1, v2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    const/16 v3, 0x2c

    .line 32
    .line 33
    aput-char v3, v2, v0

    .line 34
    .line 35
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v2, v0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIJI)V

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0xc

    .line 49
    .line 50
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 51
    return-void
.end method

.method public writeNameRaw([B)V
    .locals 1

    .line 23
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeNameRaw([C)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 2
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 4
    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    move-result-object v2

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 7
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const/16 v4, 0x2c

    .line 8
    aput-char v4, v2, v0

    .line 9
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent([CI)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 11
    :goto_0
    array-length v1, p1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeNameRaw([CII)V
    .locals 4

    .line 13
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int v1, v0, p3

    add-int/lit8 v1, v1, 0x2

    .line 14
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 15
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 16
    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 17
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    move-result-object v2

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x2c

    .line 20
    aput-char v3, v2, v0

    move v0, v1

    .line 21
    :goto_0
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p3

    .line 22
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw(C)V
    .locals 3

    .line 9
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    aput-char p1, v0, v1

    return-void
.end method

.method public writeRaw(CC)V
    .locals 3

    .line 12
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    .line 13
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 14
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aput-char p1, v2, v0

    .line 16
    aput-char p2, v2, v1

    add-int/lit8 v0, v0, 0x2

    .line 17
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw([B)V
    .locals 1

    .line 18
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRaw([CII)V
    .locals 2

    .line 4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, p3

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeReference(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->lastReference:Ljava/lang/String;

    .line 3
    .line 4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 7
    .line 8
    add-int/lit8 v2, v0, 0x9

    .line 9
    array-length v3, v1

    .line 10
    .line 11
    if-le v2, v3, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 15
    move-result-object v1

    .line 16
    .line 17
    :cond_0
    const/16 v2, 0x7b

    .line 18
    .line 19
    aput-char v2, v1, v0

    .line 20
    .line 21
    add-int/lit8 v2, v0, 0x1

    .line 22
    .line 23
    const/16 v3, 0x22

    .line 24
    .line 25
    aput-char v3, v1, v2

    .line 26
    .line 27
    add-int/lit8 v2, v0, 0x2

    .line 28
    .line 29
    const/16 v4, 0x24

    .line 30
    .line 31
    aput-char v4, v1, v2

    .line 32
    .line 33
    add-int/lit8 v2, v0, 0x3

    .line 34
    .line 35
    const/16 v4, 0x72

    .line 36
    .line 37
    aput-char v4, v1, v2

    .line 38
    .line 39
    add-int/lit8 v2, v0, 0x4

    .line 40
    .line 41
    const/16 v4, 0x65

    .line 42
    .line 43
    aput-char v4, v1, v2

    .line 44
    .line 45
    add-int/lit8 v2, v0, 0x5

    .line 46
    .line 47
    const/16 v4, 0x66

    .line 48
    .line 49
    aput-char v4, v1, v2

    .line 50
    .line 51
    add-int/lit8 v2, v0, 0x6

    .line 52
    .line 53
    aput-char v3, v1, v2

    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x7

    .line 56
    .line 57
    const/16 v3, 0x3a

    .line 58
    .line 59
    aput-char v3, v1, v2

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x8

    .line 62
    .line 63
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    .line 67
    .line 68
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 69
    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 71
    array-length v1, v0

    .line 72
    .line 73
    if-ne p1, v1, :cond_1

    .line 74
    .line 75
    add-int/lit8 v0, p1, 0x1

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->grow(I)[C

    .line 79
    move-result-object v0

    .line 80
    .line 81
    :cond_1
    const/16 v1, 0x7d

    .line 82
    .line 83
    aput-char v1, v0, p1

    .line 84
    .line 85
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 88
    return-void
.end method

.method public final writeString(B)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeQuote()V

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt8(B)V

    if-eqz v0, :cond_2

    .line 37
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeQuote()V

    :cond_2
    return-void
.end method

.method public final writeString(I)V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 43
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeQuote()V

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt32(I)V

    if-eqz v0, :cond_2

    .line 45
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeQuote()V

    :cond_2
    return-void
.end method

.method public final writeString(J)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeQuote()V

    .line 48
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt64(J)V

    if-eqz v0, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeQuote()V

    :cond_2
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v3

    .line 17
    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v3

    .line 18
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 20
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x2

    .line 21
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v7, v7

    if-lt v5, v7, :cond_3

    .line 22
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    :cond_3
    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_7

    .line 23
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_6

    if-eq v7, v1, :cond_6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_6

    if-eqz v0, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_6

    const/16 v8, 0x28

    if-eq v7, v8, :cond_6

    const/16 v8, 0x29

    if-eq v7, v8, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    const/16 v8, 0x7f

    if-le v7, v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 24
    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscape(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_7
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 26
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v0, 0x1

    .line 27
    aput-char v1, v2, v0

    .line 28
    invoke-virtual {p1, v3, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v5, v4

    .line 29
    aput-char v1, v2, v5

    add-int/2addr v5, v6

    .line 30
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeString(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/util/List;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    if-eqz v1, :cond_3

    .line 7
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    .line 10
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v0, v0

    if-ne p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v1, 0x5d

    aput-char v1, p1, v0

    return-void
.end method

.method public final writeString(S)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeQuote()V

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt16(S)V

    if-eqz v0, :cond_2

    .line 41
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeQuote()V

    :cond_2
    return-void
.end method

.method public writeString(Z)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v2, v0, v1

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 33
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v1, p1, v0

    return-void
.end method

.method public writeString([C)V
    .locals 9

    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v3

    .line 118
    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    move v1, v3

    .line 119
    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 120
    aget-char v4, p1, v1

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_6

    .line 121
    iget-char v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v4, v5, :cond_6

    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_6

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_6

    const/16 v5, 0x28

    if-eq v4, v5, :cond_6

    const/16 v5, 0x29

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v6, v0

    :cond_6
    :goto_3
    if-nez v6, :cond_8

    .line 122
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 123
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_7

    .line 124
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v0, v1

    .line 126
    array-length v1, p1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    .line 128
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v1, p1, v0

    return-void

    .line 129
    :cond_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscape([C)V

    return-void
.end method

.method public writeString([CII)V
    .locals 5

    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v2, p2

    :goto_1
    if-ge v2, p3, :cond_3

    .line 132
    aget-char v3, p1, v2

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_4

    .line 133
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v3, v4, :cond_4

    const/16 v4, 0x20

    if-ge v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    if-nez v1, :cond_6

    .line 134
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 135
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 136
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v0, v1

    .line 138
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p1, p3

    .line 140
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p3, p2, p1

    return-void

    .line 141
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscape(Ljava/lang/String;)V

    return-void
.end method

.method public writeString([CIIZ)V
    .locals 9

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 52
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-eqz p4, :cond_1

    add-int/lit8 v3, v2, 0x2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    mul-int/lit8 v4, p3, 0x6

    :goto_2
    add-int/2addr v3, v4

    goto :goto_3

    :cond_2
    mul-int/lit8 v4, p3, 0x2

    goto :goto_2

    .line 53
    :goto_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v4, v4

    sub-int v4, v3, v4

    if-lez v4, :cond_3

    .line 54
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 55
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    if-eqz p4, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 56
    aput-char v1, v3, v2

    move v2, v4

    :cond_4
    add-int/2addr p3, p2

    .line 57
    array-length v4, p1

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_4
    if-ge p2, p3, :cond_9

    .line 58
    aget-char v4, p1, p2

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-eq v4, v5, :cond_7

    const/16 v5, 0x27

    if-eq v4, v5, :cond_7

    if-eq v4, v6, :cond_6

    const/16 v5, 0x31

    const/16 v7, 0x75

    const/16 v8, 0x30

    packed-switch v4, :pswitch_data_0

    if-eqz v0, :cond_5

    const/16 v5, 0x7f

    if-le v4, v5, :cond_5

    .line 59
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 60
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 61
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x3

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    .line 62
    aget-char v7, v6, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x4

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    .line 63
    aget-char v7, v6, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x5

    and-int/lit8 v4, v4, 0xf

    .line 64
    aget-char v4, v6, v4

    aput-char v4, v3, v5

    :goto_5
    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v5, v2, 0x1

    .line 65
    aput-char v4, v3, v2

    :goto_6
    move v2, v5

    goto/16 :goto_8

    .line 66
    :pswitch_0
    aput-char v6, v3, v2

    add-int/lit8 v6, v2, 0x1

    .line 67
    aput-char v7, v3, v6

    add-int/lit8 v6, v2, 0x2

    .line 68
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x3

    .line 69
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x4

    .line 70
    aput-char v5, v3, v6

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, 0x47

    int-to-char v4, v4

    .line 71
    aput-char v4, v3, v5

    goto :goto_5

    .line 72
    :pswitch_1
    aput-char v6, v3, v2

    add-int/lit8 v6, v2, 0x1

    .line 73
    aput-char v7, v3, v6

    add-int/lit8 v6, v2, 0x2

    .line 74
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x3

    .line 75
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x4

    .line 76
    aput-char v5, v3, v6

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, 0x20

    int-to-char v4, v4

    .line 77
    aput-char v4, v3, v5

    goto :goto_5

    .line 78
    :pswitch_2
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x72

    .line 79
    aput-char v5, v3, v4

    :goto_7
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_8

    .line 80
    :pswitch_3
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x66

    .line 81
    aput-char v5, v3, v4

    goto :goto_7

    .line 82
    :pswitch_4
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 83
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 84
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x3

    .line 85
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x4

    .line 86
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, 0x57

    int-to-char v4, v4

    .line 87
    aput-char v4, v3, v5

    goto :goto_5

    .line 88
    :pswitch_5
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x6e

    .line 89
    aput-char v5, v3, v4

    goto :goto_7

    .line 90
    :pswitch_6
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x74

    .line 91
    aput-char v5, v3, v4

    goto :goto_7

    .line 92
    :pswitch_7
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x62

    .line 93
    aput-char v5, v3, v4

    goto :goto_7

    .line 94
    :pswitch_8
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 95
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 96
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x3

    .line 97
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x4

    .line 98
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 99
    aput-char v4, v3, v5

    goto/16 :goto_5

    .line 100
    :cond_6
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 101
    aput-char v4, v3, v5

    goto :goto_7

    :cond_7
    if-ne v4, v1, :cond_8

    add-int/lit8 v5, v2, 0x1

    .line 102
    aput-char v6, v3, v2

    move v2, v5

    :cond_8
    add-int/lit8 v5, v2, 0x1

    .line 103
    aput-char v4, v3, v2

    goto/16 :goto_6

    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_4

    :cond_9
    if-eqz p4, :cond_a

    add-int/lit8 p1, v2, 0x1

    .line 104
    aput-char v1, v3, v2

    move v2, p1

    .line 105
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeString([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startArray()V

    const/4 v0, 0x0

    .line 108
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeComma()V

    .line 110
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 111
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->endArray()V

    return-void
.end method

.method public final writeStringEscape(Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v5

    .line 4
    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v9

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v5

    .line 5
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 v6, v0, 0x6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    .line 6
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 7
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v7, v3, 0x1

    .line 8
    aput-char v1, v6, v3

    :goto_2
    if-ge v5, v0, :cond_8

    .line 9
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v3, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v3, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    if-eqz v4, :cond_2

    const/16 v9, 0x7f

    if-le v3, v9, :cond_2

    .line 10
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 11
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 12
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    ushr-int/lit8 v11, v3, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x3

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit8 v11, v11, 0xf

    .line 13
    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x4

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    .line 14
    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 15
    aget-char v3, v10, v3

    aput-char v3, v6, v9

    :goto_3
    add-int/lit8 v7, v7, 0x6

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v9, v7, 0x1

    .line 16
    aput-char v3, v6, v7

    :goto_4
    move v7, v9

    goto/16 :goto_6

    .line 17
    :pswitch_0
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    .line 18
    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    .line 19
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    .line 20
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    .line 21
    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x47

    int-to-char v3, v3

    .line 22
    aput-char v3, v6, v9

    goto :goto_3

    .line 23
    :pswitch_1
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    .line 24
    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    .line 25
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    .line 26
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    .line 27
    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 28
    aput-char v3, v6, v9

    goto :goto_3

    .line 29
    :pswitch_2
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x72

    .line 30
    aput-char v9, v6, v3

    :goto_5
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_6

    .line 31
    :pswitch_3
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x66

    .line 32
    aput-char v9, v6, v3

    goto :goto_5

    .line 33
    :pswitch_4
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 34
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 35
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 36
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 37
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x57

    int-to-char v3, v3

    .line 38
    aput-char v3, v6, v9

    goto :goto_3

    .line 39
    :pswitch_5
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x6e

    .line 40
    aput-char v9, v6, v3

    goto :goto_5

    .line 41
    :pswitch_6
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x74

    .line 42
    aput-char v9, v6, v3

    goto :goto_5

    .line 43
    :pswitch_7
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x62

    .line 44
    aput-char v9, v6, v3

    goto :goto_5

    .line 45
    :pswitch_8
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 46
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 47
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 48
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 49
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 50
    aput-char v3, v6, v9

    goto/16 :goto_3

    .line 51
    :cond_3
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 52
    aput-char v3, v6, v9

    goto :goto_5

    :cond_4
    :pswitch_9
    if-eqz v2, :cond_5

    .line 53
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 54
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 55
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 56
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 57
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 58
    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v9, v7, 0x1

    .line 59
    aput-char v3, v6, v7

    goto/16 :goto_4

    :cond_6
    :pswitch_a
    if-ne v3, v1, :cond_7

    add-int/lit8 v9, v7, 0x1

    .line 60
    aput-char v10, v6, v7

    move v7, v9

    :cond_7
    add-int/lit8 v9, v7, 0x1

    .line 61
    aput-char v3, v6, v7

    goto/16 :goto_4

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 62
    :cond_8
    aput-char v1, v6, v7

    add-int/2addr v7, v8

    .line 63
    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final writeStringEscape([B)V
    .locals 13

    .line 127
    array-length v0, p1

    .line 128
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 129
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v5

    .line 130
    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v9

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v5

    .line 131
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 v6, v0, 0x6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    .line 132
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 133
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v7, v3, 0x1

    .line 134
    aput-char v1, v6, v3

    :goto_2
    if-ge v5, v0, :cond_8

    .line 135
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v3, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v3, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    if-eqz v4, :cond_2

    const/16 v9, 0x7f

    if-le v3, v9, :cond_2

    .line 136
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 137
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 138
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 139
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 140
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 141
    aget-char v3, v10, v3

    aput-char v3, v6, v9

    :goto_3
    add-int/lit8 v7, v7, 0x6

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v9, v7, 0x1

    .line 142
    aput-char v3, v6, v7

    :goto_4
    move v7, v9

    goto/16 :goto_6

    .line 143
    :pswitch_0
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    .line 144
    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    .line 145
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    .line 146
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    .line 147
    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x47

    int-to-char v3, v3

    .line 148
    aput-char v3, v6, v9

    goto :goto_3

    .line 149
    :pswitch_1
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    .line 150
    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    .line 151
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    .line 152
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    .line 153
    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 154
    aput-char v3, v6, v9

    goto :goto_3

    .line 155
    :pswitch_2
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x72

    .line 156
    aput-char v9, v6, v3

    :goto_5
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_6

    .line 157
    :pswitch_3
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x66

    .line 158
    aput-char v9, v6, v3

    goto :goto_5

    .line 159
    :pswitch_4
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 160
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 161
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 162
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 163
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x57

    int-to-char v3, v3

    .line 164
    aput-char v3, v6, v9

    goto :goto_3

    .line 165
    :pswitch_5
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x6e

    .line 166
    aput-char v9, v6, v3

    goto :goto_5

    .line 167
    :pswitch_6
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x74

    .line 168
    aput-char v9, v6, v3

    goto :goto_5

    .line 169
    :pswitch_7
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x62

    .line 170
    aput-char v9, v6, v3

    goto :goto_5

    .line 171
    :pswitch_8
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 172
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 173
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 174
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 175
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 176
    aput-char v3, v6, v9

    goto/16 :goto_3

    .line 177
    :cond_3
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 178
    aput-char v3, v6, v9

    goto :goto_5

    :cond_4
    :pswitch_9
    if-eqz v2, :cond_5

    .line 179
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 180
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 181
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 182
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 183
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 184
    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v9, v7, 0x1

    .line 185
    aput-char v3, v6, v7

    goto/16 :goto_4

    :cond_6
    :pswitch_a
    if-ne v3, v1, :cond_7

    add-int/lit8 v9, v7, 0x1

    .line 186
    aput-char v10, v6, v7

    move v7, v9

    :cond_7
    add-int/lit8 v9, v7, 0x1

    .line 187
    aput-char v3, v6, v7

    goto/16 :goto_4

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 188
    :cond_8
    aput-char v1, v6, v7

    add-int/2addr v7, v8

    .line 189
    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final writeStringEscape([C)V
    .locals 13

    .line 64
    array-length v0, p1

    .line 65
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 66
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v5

    .line 67
    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v9

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v5

    .line 68
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 v6, v0, 0x6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    .line 69
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 70
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v7, v3, 0x1

    .line 71
    aput-char v1, v6, v3

    :goto_2
    if-ge v5, v0, :cond_8

    .line 72
    aget-char v3, p1, v5

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v3, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v3, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    if-eqz v4, :cond_2

    const/16 v9, 0x7f

    if-le v3, v9, :cond_2

    .line 73
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 74
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 75
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    ushr-int/lit8 v11, v3, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x3

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit8 v11, v11, 0xf

    .line 76
    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x4

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    .line 77
    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 78
    aget-char v3, v10, v3

    aput-char v3, v6, v9

    :goto_3
    add-int/lit8 v7, v7, 0x6

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v9, v7, 0x1

    .line 79
    aput-char v3, v6, v7

    :goto_4
    move v7, v9

    goto/16 :goto_6

    .line 80
    :pswitch_0
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    .line 81
    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    .line 82
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    .line 83
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    .line 84
    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x47

    int-to-char v3, v3

    .line 85
    aput-char v3, v6, v9

    goto :goto_3

    .line 86
    :pswitch_1
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    .line 87
    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    .line 88
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    .line 89
    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    .line 90
    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 91
    aput-char v3, v6, v9

    goto :goto_3

    .line 92
    :pswitch_2
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x72

    .line 93
    aput-char v9, v6, v3

    :goto_5
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_6

    .line 94
    :pswitch_3
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x66

    .line 95
    aput-char v9, v6, v3

    goto :goto_5

    .line 96
    :pswitch_4
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 97
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 98
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 99
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 100
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x57

    int-to-char v3, v3

    .line 101
    aput-char v3, v6, v9

    goto :goto_3

    .line 102
    :pswitch_5
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x6e

    .line 103
    aput-char v9, v6, v3

    goto :goto_5

    .line 104
    :pswitch_6
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x74

    .line 105
    aput-char v9, v6, v3

    goto :goto_5

    .line 106
    :pswitch_7
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x62

    .line 107
    aput-char v9, v6, v3

    goto :goto_5

    .line 108
    :pswitch_8
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 109
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 110
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 111
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 112
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 113
    aput-char v3, v6, v9

    goto/16 :goto_3

    .line 114
    :cond_3
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 115
    aput-char v3, v6, v9

    goto :goto_5

    :cond_4
    :pswitch_9
    if-eqz v2, :cond_5

    .line 116
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 117
    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    .line 118
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    .line 119
    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    .line 120
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 121
    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v9, v7, 0x1

    .line 122
    aput-char v3, v6, v7

    goto/16 :goto_4

    :cond_6
    :pswitch_a
    if-ne v3, v1, :cond_7

    add-int/lit8 v9, v7, 0x1

    .line 123
    aput-char v10, v6, v7

    move v7, v9

    :cond_7
    add-int/lit8 v9, v7, 0x1

    .line 124
    aput-char v3, v6, v7

    goto/16 :goto_4

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 125
    :cond_8
    aput-char v1, v6, v7

    add-int/2addr v7, v8

    .line 126
    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final writeStringEscapeUTF16([B)V
    .locals 13

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 4
    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 8
    .line 9
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 10
    .line 11
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 12
    and-long/2addr v4, v2

    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    cmp-long v4, v4, v6

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v8, 0x1

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    move v4, v8

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v4, v5

    .line 24
    .line 25
    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 26
    .line 27
    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 28
    and-long/2addr v2, v9

    .line 29
    .line 30
    cmp-long v2, v2, v6

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    move v2, v8

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v2, v5

    .line 36
    .line 37
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 38
    .line 39
    mul-int/lit8 v6, v0, 0x6

    .line 40
    add-int/2addr v6, v3

    .line 41
    .line 42
    add-int/lit8 v6, v6, 0x2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 46
    .line 47
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 48
    .line 49
    add-int/lit8 v7, v3, 0x1

    .line 50
    .line 51
    aput-char v1, v6, v3

    .line 52
    .line 53
    :goto_2
    if-ge v5, v0, :cond_8

    .line 54
    .line 55
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 56
    .line 57
    sget v9, Lsun/misc/Unsafe;->ARRAY_CHAR_BASE_OFFSET:I

    .line 58
    int-to-long v9, v9

    .line 59
    int-to-long v11, v5

    .line 60
    add-long/2addr v9, v11

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1, v9, v10}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    .line 64
    move-result v3

    .line 65
    .line 66
    const/16 v9, 0x22

    .line 67
    .line 68
    const/16 v10, 0x5c

    .line 69
    .line 70
    if-eq v3, v9, :cond_6

    .line 71
    .line 72
    const/16 v9, 0x3c

    .line 73
    .line 74
    const/16 v11, 0x75

    .line 75
    .line 76
    const/16 v12, 0x30

    .line 77
    .line 78
    if-eq v3, v9, :cond_4

    .line 79
    .line 80
    const/16 v9, 0x3e

    .line 81
    .line 82
    if-eq v3, v9, :cond_4

    .line 83
    .line 84
    if-eq v3, v10, :cond_3

    .line 85
    .line 86
    const/16 v9, 0x31

    .line 87
    .line 88
    .line 89
    packed-switch v3, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    packed-switch v3, :pswitch_data_1

    .line 93
    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    const/16 v9, 0x7f

    .line 97
    .line 98
    if-le v3, v9, :cond_2

    .line 99
    .line 100
    aput-char v10, v6, v7

    .line 101
    .line 102
    add-int/lit8 v9, v7, 0x1

    .line 103
    .line 104
    aput-char v11, v6, v9

    .line 105
    .line 106
    add-int/lit8 v9, v7, 0x2

    .line 107
    .line 108
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    .line 109
    .line 110
    ushr-int/lit8 v11, v3, 0xc

    .line 111
    .line 112
    and-int/lit8 v11, v11, 0xf

    .line 113
    .line 114
    aget-char v11, v10, v11

    .line 115
    .line 116
    aput-char v11, v6, v9

    .line 117
    .line 118
    add-int/lit8 v9, v7, 0x3

    .line 119
    .line 120
    ushr-int/lit8 v11, v3, 0x8

    .line 121
    .line 122
    and-int/lit8 v11, v11, 0xf

    .line 123
    .line 124
    aget-char v11, v10, v11

    .line 125
    .line 126
    aput-char v11, v6, v9

    .line 127
    .line 128
    add-int/lit8 v9, v7, 0x4

    .line 129
    .line 130
    ushr-int/lit8 v11, v3, 0x4

    .line 131
    .line 132
    and-int/lit8 v11, v11, 0xf

    .line 133
    .line 134
    aget-char v11, v10, v11

    .line 135
    .line 136
    aput-char v11, v6, v9

    .line 137
    .line 138
    add-int/lit8 v9, v7, 0x5

    .line 139
    .line 140
    and-int/lit8 v3, v3, 0xf

    .line 141
    .line 142
    aget-char v3, v10, v3

    .line 143
    .line 144
    aput-char v3, v6, v9

    .line 145
    .line 146
    :goto_3
    add-int/lit8 v7, v7, 0x6

    .line 147
    .line 148
    goto/16 :goto_6

    .line 149
    .line 150
    :cond_2
    add-int/lit8 v9, v7, 0x1

    .line 151
    .line 152
    aput-char v3, v6, v7

    .line 153
    :goto_4
    move v7, v9

    .line 154
    .line 155
    goto/16 :goto_6

    .line 156
    .line 157
    :pswitch_0
    aput-char v10, v6, v7

    .line 158
    .line 159
    add-int/lit8 v10, v7, 0x1

    .line 160
    .line 161
    aput-char v11, v6, v10

    .line 162
    .line 163
    add-int/lit8 v10, v7, 0x2

    .line 164
    .line 165
    aput-char v12, v6, v10

    .line 166
    .line 167
    add-int/lit8 v10, v7, 0x3

    .line 168
    .line 169
    aput-char v12, v6, v10

    .line 170
    .line 171
    add-int/lit8 v10, v7, 0x4

    .line 172
    .line 173
    aput-char v9, v6, v10

    .line 174
    .line 175
    add-int/lit8 v9, v7, 0x5

    .line 176
    .line 177
    add-int/lit8 v3, v3, 0x47

    .line 178
    int-to-char v3, v3

    .line 179
    .line 180
    aput-char v3, v6, v9

    .line 181
    goto :goto_3

    .line 182
    .line 183
    :pswitch_1
    aput-char v10, v6, v7

    .line 184
    .line 185
    add-int/lit8 v10, v7, 0x1

    .line 186
    .line 187
    aput-char v11, v6, v10

    .line 188
    .line 189
    add-int/lit8 v10, v7, 0x2

    .line 190
    .line 191
    aput-char v12, v6, v10

    .line 192
    .line 193
    add-int/lit8 v10, v7, 0x3

    .line 194
    .line 195
    aput-char v12, v6, v10

    .line 196
    .line 197
    add-int/lit8 v10, v7, 0x4

    .line 198
    .line 199
    aput-char v9, v6, v10

    .line 200
    .line 201
    add-int/lit8 v9, v7, 0x5

    .line 202
    .line 203
    add-int/lit8 v3, v3, 0x20

    .line 204
    int-to-char v3, v3

    .line 205
    .line 206
    aput-char v3, v6, v9

    .line 207
    goto :goto_3

    .line 208
    .line 209
    :pswitch_2
    aput-char v10, v6, v7

    .line 210
    .line 211
    add-int/lit8 v3, v7, 0x1

    .line 212
    .line 213
    const/16 v9, 0x72

    .line 214
    .line 215
    aput-char v9, v6, v3

    .line 216
    .line 217
    :goto_5
    add-int/lit8 v7, v7, 0x2

    .line 218
    .line 219
    goto/16 :goto_6

    .line 220
    .line 221
    :pswitch_3
    aput-char v10, v6, v7

    .line 222
    .line 223
    add-int/lit8 v3, v7, 0x1

    .line 224
    .line 225
    const/16 v9, 0x66

    .line 226
    .line 227
    aput-char v9, v6, v3

    .line 228
    goto :goto_5

    .line 229
    .line 230
    :pswitch_4
    aput-char v10, v6, v7

    .line 231
    .line 232
    add-int/lit8 v9, v7, 0x1

    .line 233
    .line 234
    aput-char v11, v6, v9

    .line 235
    .line 236
    add-int/lit8 v9, v7, 0x2

    .line 237
    .line 238
    aput-char v12, v6, v9

    .line 239
    .line 240
    add-int/lit8 v9, v7, 0x3

    .line 241
    .line 242
    aput-char v12, v6, v9

    .line 243
    .line 244
    add-int/lit8 v9, v7, 0x4

    .line 245
    .line 246
    aput-char v12, v6, v9

    .line 247
    .line 248
    add-int/lit8 v9, v7, 0x5

    .line 249
    .line 250
    add-int/lit8 v3, v3, 0x57

    .line 251
    int-to-char v3, v3

    .line 252
    .line 253
    aput-char v3, v6, v9

    .line 254
    goto :goto_3

    .line 255
    .line 256
    :pswitch_5
    aput-char v10, v6, v7

    .line 257
    .line 258
    add-int/lit8 v3, v7, 0x1

    .line 259
    .line 260
    const/16 v9, 0x6e

    .line 261
    .line 262
    aput-char v9, v6, v3

    .line 263
    goto :goto_5

    .line 264
    .line 265
    :pswitch_6
    aput-char v10, v6, v7

    .line 266
    .line 267
    add-int/lit8 v3, v7, 0x1

    .line 268
    .line 269
    const/16 v9, 0x74

    .line 270
    .line 271
    aput-char v9, v6, v3

    .line 272
    goto :goto_5

    .line 273
    .line 274
    :pswitch_7
    aput-char v10, v6, v7

    .line 275
    .line 276
    add-int/lit8 v3, v7, 0x1

    .line 277
    .line 278
    const/16 v9, 0x62

    .line 279
    .line 280
    aput-char v9, v6, v3

    .line 281
    goto :goto_5

    .line 282
    .line 283
    :pswitch_8
    aput-char v10, v6, v7

    .line 284
    .line 285
    add-int/lit8 v9, v7, 0x1

    .line 286
    .line 287
    aput-char v11, v6, v9

    .line 288
    .line 289
    add-int/lit8 v9, v7, 0x2

    .line 290
    .line 291
    aput-char v12, v6, v9

    .line 292
    .line 293
    add-int/lit8 v9, v7, 0x3

    .line 294
    .line 295
    aput-char v12, v6, v9

    .line 296
    .line 297
    add-int/lit8 v9, v7, 0x4

    .line 298
    .line 299
    aput-char v12, v6, v9

    .line 300
    .line 301
    add-int/lit8 v9, v7, 0x5

    .line 302
    .line 303
    add-int/lit8 v3, v3, 0x30

    .line 304
    int-to-char v3, v3

    .line 305
    .line 306
    aput-char v3, v6, v9

    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :cond_3
    aput-char v10, v6, v7

    .line 311
    .line 312
    add-int/lit8 v9, v7, 0x1

    .line 313
    .line 314
    aput-char v3, v6, v9

    .line 315
    goto :goto_5

    .line 316
    .line 317
    :cond_4
    :pswitch_9
    if-eqz v2, :cond_5

    .line 318
    .line 319
    aput-char v10, v6, v7

    .line 320
    .line 321
    add-int/lit8 v9, v7, 0x1

    .line 322
    .line 323
    aput-char v11, v6, v9

    .line 324
    .line 325
    add-int/lit8 v9, v7, 0x2

    .line 326
    .line 327
    aput-char v12, v6, v9

    .line 328
    .line 329
    add-int/lit8 v9, v7, 0x3

    .line 330
    .line 331
    aput-char v12, v6, v9

    .line 332
    .line 333
    add-int/lit8 v9, v7, 0x4

    .line 334
    .line 335
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    .line 336
    .line 337
    ushr-int/lit8 v11, v3, 0x4

    .line 338
    .line 339
    and-int/lit8 v11, v11, 0xf

    .line 340
    .line 341
    aget-char v11, v10, v11

    .line 342
    .line 343
    aput-char v11, v6, v9

    .line 344
    .line 345
    add-int/lit8 v9, v7, 0x5

    .line 346
    .line 347
    and-int/lit8 v3, v3, 0xf

    .line 348
    .line 349
    aget-char v3, v10, v3

    .line 350
    .line 351
    aput-char v3, v6, v9

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :cond_5
    add-int/lit8 v9, v7, 0x1

    .line 356
    .line 357
    aput-char v3, v6, v7

    .line 358
    .line 359
    goto/16 :goto_4

    .line 360
    .line 361
    :cond_6
    :pswitch_a
    if-ne v3, v1, :cond_7

    .line 362
    .line 363
    add-int/lit8 v9, v7, 0x1

    .line 364
    .line 365
    aput-char v10, v6, v7

    .line 366
    move v7, v9

    .line 367
    .line 368
    :cond_7
    add-int/lit8 v9, v7, 0x1

    .line 369
    .line 370
    aput-char v3, v6, v7

    .line 371
    .line 372
    goto/16 :goto_4

    .line 373
    .line 374
    :goto_6
    add-int/lit8 v5, v5, 0x2

    .line 375
    .line 376
    goto/16 :goto_2

    .line 377
    .line 378
    :cond_8
    aput-char v1, v6, v7

    .line 379
    add-int/2addr v7, v8

    .line 380
    .line 381
    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 382
    return-void

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
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
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
    .line 449
    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public writeStringLatin1([B)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    .line 10
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    and-long/2addr v0, v2

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, v1

    .line 26
    .line 27
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 28
    array-length v3, p1

    .line 29
    add-int/2addr v3, v2

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x2

    .line 32
    .line 33
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 34
    array-length v4, v4

    .line 35
    .line 36
    if-lt v3, v4, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 40
    .line 41
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 42
    .line 43
    add-int/lit8 v4, v2, 0x1

    .line 44
    .line 45
    iget-char v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 46
    .line 47
    aput-char v5, v3, v2

    .line 48
    :goto_1
    array-length v5, p1

    .line 49
    .line 50
    if-ge v1, v5, :cond_6

    .line 51
    .line 52
    aget-byte v5, p1, v1

    .line 53
    .line 54
    const/16 v6, 0x5c

    .line 55
    .line 56
    if-eq v5, v6, :cond_5

    .line 57
    .line 58
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 59
    .line 60
    if-eq v5, v6, :cond_5

    .line 61
    .line 62
    const/16 v6, 0x20

    .line 63
    .line 64
    if-ge v5, v6, :cond_3

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_3
    if-eqz v0, :cond_4

    .line 68
    .line 69
    const/16 v6, 0x3c

    .line 70
    .line 71
    if-eq v5, v6, :cond_5

    .line 72
    .line 73
    const/16 v6, 0x3e

    .line 74
    .line 75
    if-eq v5, v6, :cond_5

    .line 76
    .line 77
    const/16 v6, 0x28

    .line 78
    .line 79
    if-eq v5, v6, :cond_5

    .line 80
    .line 81
    const/16 v6, 0x29

    .line 82
    .line 83
    if-ne v5, v6, :cond_4

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_4
    add-int/lit8 v6, v4, 0x1

    .line 87
    int-to-char v5, v5

    .line 88
    .line 89
    aput-char v5, v3, v4

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    move v4, v6

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_5
    :goto_2
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscape([B)V

    .line 99
    return-void

    .line 100
    .line 101
    :cond_6
    add-int/lit8 p1, v4, 0x1

    .line 102
    .line 103
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 104
    .line 105
    aput-char v0, v3, v4

    .line 106
    .line 107
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 108
    return-void
.end method

.method public writeStringUTF16([B)V
    .locals 11

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    .line 10
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    and-long/2addr v2, v0

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    move v2, v6

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v2, v3

    .line 27
    .line 28
    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 29
    .line 30
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 31
    and-long/2addr v0, v7

    .line 32
    .line 33
    cmp-long v0, v0, v4

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    move v0, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v3

    .line 39
    .line 40
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 41
    array-length v4, p1

    .line 42
    add-int/2addr v4, v1

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x2

    .line 45
    .line 46
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 47
    array-length v5, v5

    .line 48
    .line 49
    if-lt v4, v5, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 53
    .line 54
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 55
    .line 56
    add-int/lit8 v5, v1, 0x1

    .line 57
    .line 58
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 59
    .line 60
    aput-char v7, v4, v1

    .line 61
    :goto_2
    array-length v1, p1

    .line 62
    .line 63
    if-ge v3, v1, :cond_7

    .line 64
    .line 65
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 66
    .line 67
    sget v7, Lsun/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    .line 68
    int-to-long v7, v7

    .line 69
    int-to-long v9, v3

    .line 70
    add-long/2addr v7, v9

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1, v7, v8}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    .line 74
    move-result v1

    .line 75
    .line 76
    const/16 v7, 0x5c

    .line 77
    .line 78
    if-eq v1, v7, :cond_6

    .line 79
    .line 80
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 81
    .line 82
    if-eq v1, v7, :cond_6

    .line 83
    .line 84
    const/16 v7, 0x20

    .line 85
    .line 86
    if-lt v1, v7, :cond_6

    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    const/16 v7, 0x3c

    .line 91
    .line 92
    if-eq v1, v7, :cond_6

    .line 93
    .line 94
    const/16 v7, 0x3e

    .line 95
    .line 96
    if-eq v1, v7, :cond_6

    .line 97
    .line 98
    const/16 v7, 0x28

    .line 99
    .line 100
    if-eq v1, v7, :cond_6

    .line 101
    .line 102
    const/16 v7, 0x29

    .line 103
    .line 104
    if-eq v1, v7, :cond_6

    .line 105
    .line 106
    :cond_4
    if-eqz v0, :cond_5

    .line 107
    .line 108
    const/16 v7, 0x7f

    .line 109
    .line 110
    if-le v1, v7, :cond_5

    .line 111
    goto :goto_3

    .line 112
    .line 113
    :cond_5
    add-int/lit8 v7, v5, 0x1

    .line 114
    .line 115
    aput-char v1, v4, v5

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x2

    .line 118
    move v5, v7

    .line 119
    goto :goto_2

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscapeUTF16([B)V

    .line 123
    return-void

    .line 124
    .line 125
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 126
    .line 127
    aput-char p1, v4, v5

    .line 128
    add-int/2addr v5, v6

    .line 129
    .line 130
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 131
    return-void
.end method

.method public writeTimeHHMMSS8(III)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xa

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 15
    .line 16
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 17
    int-to-byte v4, v3

    .line 18
    int-to-char v4, v4

    .line 19
    .line 20
    aput-char v4, v2, v0

    .line 21
    .line 22
    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 23
    .line 24
    aget p1, v4, p1

    .line 25
    .line 26
    add-int/lit8 v5, v0, 0x1

    .line 27
    .line 28
    shr-int/lit8 v6, p1, 0x8

    .line 29
    int-to-byte v6, v6

    .line 30
    int-to-char v6, v6

    .line 31
    .line 32
    aput-char v6, v2, v5

    .line 33
    .line 34
    add-int/lit8 v5, v0, 0x2

    .line 35
    int-to-byte p1, p1

    .line 36
    int-to-char p1, p1

    .line 37
    .line 38
    aput-char p1, v2, v5

    .line 39
    .line 40
    add-int/lit8 p1, v0, 0x3

    .line 41
    .line 42
    const/16 v5, 0x3a

    .line 43
    .line 44
    aput-char v5, v2, p1

    .line 45
    .line 46
    aget p1, v4, p2

    .line 47
    .line 48
    add-int/lit8 p2, v0, 0x4

    .line 49
    .line 50
    shr-int/lit8 v6, p1, 0x8

    .line 51
    int-to-byte v6, v6

    .line 52
    int-to-char v6, v6

    .line 53
    .line 54
    aput-char v6, v2, p2

    .line 55
    .line 56
    add-int/lit8 p2, v0, 0x5

    .line 57
    int-to-byte p1, p1

    .line 58
    int-to-char p1, p1

    .line 59
    .line 60
    aput-char p1, v2, p2

    .line 61
    .line 62
    add-int/lit8 p1, v0, 0x6

    .line 63
    .line 64
    aput-char v5, v2, p1

    .line 65
    .line 66
    aget p1, v4, p3

    .line 67
    .line 68
    add-int/lit8 p2, v0, 0x7

    .line 69
    .line 70
    shr-int/lit8 p3, p1, 0x8

    .line 71
    int-to-byte p3, p3

    .line 72
    int-to-char p3, p3

    .line 73
    .line 74
    aput-char p3, v2, p2

    .line 75
    .line 76
    add-int/lit8 p2, v0, 0x8

    .line 77
    int-to-byte p1, p1

    .line 78
    int-to-char p1, p1

    .line 79
    .line 80
    aput-char p1, v2, p2

    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x9

    .line 83
    int-to-byte p1, v3

    .line 84
    int-to-char p1, p1

    .line 85
    .line 86
    aput-char p1, v2, v0

    .line 87
    .line 88
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 89
    return-void
.end method

.method public writeUUID(Ljava/util/UUID;)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 16
    move-result-wide v3

    .line 17
    .line 18
    iget v5, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 19
    .line 20
    add-int/lit8 v5, v5, 0x26

    .line 21
    .line 22
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 23
    array-length v6, v6

    .line 24
    .line 25
    if-lt v5, v6, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 29
    .line 30
    :cond_1
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->UUID_LOOKUP:[C

    .line 31
    .line 32
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 33
    .line 34
    iget v7, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 35
    .line 36
    const/16 v8, 0x22

    .line 37
    .line 38
    aput-char v8, v6, v7

    .line 39
    .line 40
    const/16 v9, 0x38

    .line 41
    .line 42
    shr-long v10, v1, v9

    .line 43
    long-to-int v10, v10

    .line 44
    .line 45
    and-int/lit16 v10, v10, 0xff

    .line 46
    .line 47
    aget-char v10, v5, v10

    .line 48
    .line 49
    const/16 v11, 0x30

    .line 50
    .line 51
    shr-long v12, v1, v11

    .line 52
    long-to-int v12, v12

    .line 53
    .line 54
    and-int/lit16 v12, v12, 0xff

    .line 55
    .line 56
    aget-char v12, v5, v12

    .line 57
    .line 58
    const/16 v13, 0x28

    .line 59
    .line 60
    shr-long v14, v1, v13

    .line 61
    long-to-int v14, v14

    .line 62
    .line 63
    and-int/lit16 v14, v14, 0xff

    .line 64
    .line 65
    aget-char v14, v5, v14

    .line 66
    .line 67
    const/16 v15, 0x20

    .line 68
    .line 69
    move/from16 p1, v8

    .line 70
    .line 71
    move/from16 v16, v9

    .line 72
    .line 73
    shr-long v8, v1, v15

    .line 74
    long-to-int v8, v8

    .line 75
    .line 76
    and-int/lit16 v8, v8, 0xff

    .line 77
    .line 78
    aget-char v8, v5, v8

    .line 79
    long-to-int v1, v1

    .line 80
    .line 81
    shr-int/lit8 v2, v1, 0x18

    .line 82
    .line 83
    and-int/lit16 v2, v2, 0xff

    .line 84
    .line 85
    aget-char v2, v5, v2

    .line 86
    .line 87
    shr-int/lit8 v9, v1, 0x10

    .line 88
    .line 89
    and-int/lit16 v9, v9, 0xff

    .line 90
    .line 91
    aget-char v9, v5, v9

    .line 92
    .line 93
    move/from16 v17, v11

    .line 94
    .line 95
    shr-int/lit8 v11, v1, 0x8

    .line 96
    .line 97
    and-int/lit16 v11, v11, 0xff

    .line 98
    .line 99
    aget-char v11, v5, v11

    .line 100
    .line 101
    and-int/lit16 v1, v1, 0xff

    .line 102
    .line 103
    aget-char v1, v5, v1

    .line 104
    .line 105
    move/from16 v18, v13

    .line 106
    .line 107
    move/from16 v19, v14

    .line 108
    .line 109
    shr-long v13, v3, v16

    .line 110
    long-to-int v13, v13

    .line 111
    .line 112
    and-int/lit16 v13, v13, 0xff

    .line 113
    .line 114
    aget-char v13, v5, v13

    .line 115
    move-object v14, v5

    .line 116
    .line 117
    move-object/from16 v16, v6

    .line 118
    .line 119
    shr-long v5, v3, v17

    .line 120
    long-to-int v5, v5

    .line 121
    .line 122
    and-int/lit16 v5, v5, 0xff

    .line 123
    .line 124
    aget-char v5, v14, v5

    .line 125
    .line 126
    move/from16 v17, v7

    .line 127
    .line 128
    shr-long v6, v3, v18

    .line 129
    long-to-int v6, v6

    .line 130
    .line 131
    and-int/lit16 v6, v6, 0xff

    .line 132
    .line 133
    aget-char v6, v14, v6

    .line 134
    move-object v7, v14

    .line 135
    .line 136
    shr-long v14, v3, v15

    .line 137
    long-to-int v14, v14

    .line 138
    .line 139
    and-int/lit16 v14, v14, 0xff

    .line 140
    .line 141
    aget-char v14, v7, v14

    .line 142
    long-to-int v3, v3

    .line 143
    .line 144
    shr-int/lit8 v4, v3, 0x18

    .line 145
    .line 146
    and-int/lit16 v4, v4, 0xff

    .line 147
    .line 148
    aget-char v4, v7, v4

    .line 149
    .line 150
    shr-int/lit8 v15, v3, 0x10

    .line 151
    .line 152
    and-int/lit16 v15, v15, 0xff

    .line 153
    .line 154
    aget-char v15, v7, v15

    .line 155
    .line 156
    move-object/from16 v18, v7

    .line 157
    .line 158
    shr-int/lit8 v7, v3, 0x8

    .line 159
    .line 160
    and-int/lit16 v7, v7, 0xff

    .line 161
    .line 162
    aget-char v7, v18, v7

    .line 163
    .line 164
    and-int/lit16 v3, v3, 0xff

    .line 165
    .line 166
    aget-char v3, v18, v3

    .line 167
    .line 168
    add-int/lit8 v18, v17, 0x1

    .line 169
    .line 170
    shr-int/lit8 v0, v10, 0x8

    .line 171
    int-to-byte v0, v0

    .line 172
    int-to-char v0, v0

    .line 173
    .line 174
    aput-char v0, v16, v18

    .line 175
    .line 176
    add-int/lit8 v0, v17, 0x2

    .line 177
    int-to-byte v10, v10

    .line 178
    int-to-char v10, v10

    .line 179
    .line 180
    aput-char v10, v16, v0

    .line 181
    .line 182
    add-int/lit8 v0, v17, 0x3

    .line 183
    .line 184
    shr-int/lit8 v10, v12, 0x8

    .line 185
    int-to-byte v10, v10

    .line 186
    int-to-char v10, v10

    .line 187
    .line 188
    aput-char v10, v16, v0

    .line 189
    .line 190
    add-int/lit8 v0, v17, 0x4

    .line 191
    int-to-byte v10, v12

    .line 192
    int-to-char v10, v10

    .line 193
    .line 194
    aput-char v10, v16, v0

    .line 195
    .line 196
    add-int/lit8 v0, v17, 0x5

    .line 197
    .line 198
    shr-int/lit8 v10, v19, 0x8

    .line 199
    int-to-byte v10, v10

    .line 200
    int-to-char v10, v10

    .line 201
    .line 202
    aput-char v10, v16, v0

    .line 203
    .line 204
    add-int/lit8 v0, v17, 0x6

    .line 205
    .line 206
    move/from16 v10, v19

    .line 207
    int-to-byte v10, v10

    .line 208
    int-to-char v10, v10

    .line 209
    .line 210
    aput-char v10, v16, v0

    .line 211
    .line 212
    add-int/lit8 v0, v17, 0x7

    .line 213
    .line 214
    shr-int/lit8 v10, v8, 0x8

    .line 215
    int-to-byte v10, v10

    .line 216
    int-to-char v10, v10

    .line 217
    .line 218
    aput-char v10, v16, v0

    .line 219
    .line 220
    add-int/lit8 v0, v17, 0x8

    .line 221
    int-to-byte v8, v8

    .line 222
    int-to-char v8, v8

    .line 223
    .line 224
    aput-char v8, v16, v0

    .line 225
    .line 226
    add-int/lit8 v0, v17, 0x9

    .line 227
    .line 228
    const/16 v8, 0x2d

    .line 229
    .line 230
    aput-char v8, v16, v0

    .line 231
    .line 232
    add-int/lit8 v0, v17, 0xa

    .line 233
    .line 234
    shr-int/lit8 v10, v2, 0x8

    .line 235
    int-to-byte v10, v10

    .line 236
    int-to-char v10, v10

    .line 237
    .line 238
    aput-char v10, v16, v0

    .line 239
    .line 240
    add-int/lit8 v0, v17, 0xb

    .line 241
    int-to-byte v2, v2

    .line 242
    int-to-char v2, v2

    .line 243
    .line 244
    aput-char v2, v16, v0

    .line 245
    .line 246
    add-int/lit8 v0, v17, 0xc

    .line 247
    .line 248
    shr-int/lit8 v2, v9, 0x8

    .line 249
    int-to-byte v2, v2

    .line 250
    int-to-char v2, v2

    .line 251
    .line 252
    aput-char v2, v16, v0

    .line 253
    .line 254
    add-int/lit8 v0, v17, 0xd

    .line 255
    int-to-byte v2, v9

    .line 256
    int-to-char v2, v2

    .line 257
    .line 258
    aput-char v2, v16, v0

    .line 259
    .line 260
    add-int/lit8 v0, v17, 0xe

    .line 261
    .line 262
    aput-char v8, v16, v0

    .line 263
    .line 264
    add-int/lit8 v0, v17, 0xf

    .line 265
    .line 266
    shr-int/lit8 v2, v11, 0x8

    .line 267
    int-to-byte v2, v2

    .line 268
    int-to-char v2, v2

    .line 269
    .line 270
    aput-char v2, v16, v0

    .line 271
    .line 272
    add-int/lit8 v0, v17, 0x10

    .line 273
    int-to-byte v2, v11

    .line 274
    int-to-char v2, v2

    .line 275
    .line 276
    aput-char v2, v16, v0

    .line 277
    .line 278
    add-int/lit8 v0, v17, 0x11

    .line 279
    .line 280
    shr-int/lit8 v2, v1, 0x8

    .line 281
    int-to-byte v2, v2

    .line 282
    int-to-char v2, v2

    .line 283
    .line 284
    aput-char v2, v16, v0

    .line 285
    .line 286
    add-int/lit8 v0, v17, 0x12

    .line 287
    int-to-byte v1, v1

    .line 288
    int-to-char v1, v1

    .line 289
    .line 290
    aput-char v1, v16, v0

    .line 291
    .line 292
    add-int/lit8 v0, v17, 0x13

    .line 293
    .line 294
    aput-char v8, v16, v0

    .line 295
    .line 296
    add-int/lit8 v0, v17, 0x14

    .line 297
    .line 298
    shr-int/lit8 v1, v13, 0x8

    .line 299
    int-to-byte v1, v1

    .line 300
    int-to-char v1, v1

    .line 301
    .line 302
    aput-char v1, v16, v0

    .line 303
    .line 304
    add-int/lit8 v0, v17, 0x15

    .line 305
    int-to-byte v1, v13

    .line 306
    int-to-char v1, v1

    .line 307
    .line 308
    aput-char v1, v16, v0

    .line 309
    .line 310
    add-int/lit8 v0, v17, 0x16

    .line 311
    .line 312
    shr-int/lit8 v1, v5, 0x8

    .line 313
    int-to-byte v1, v1

    .line 314
    int-to-char v1, v1

    .line 315
    .line 316
    aput-char v1, v16, v0

    .line 317
    .line 318
    add-int/lit8 v0, v17, 0x17

    .line 319
    int-to-byte v1, v5

    .line 320
    int-to-char v1, v1

    .line 321
    .line 322
    aput-char v1, v16, v0

    .line 323
    .line 324
    add-int/lit8 v0, v17, 0x18

    .line 325
    .line 326
    aput-char v8, v16, v0

    .line 327
    .line 328
    add-int/lit8 v0, v17, 0x19

    .line 329
    .line 330
    shr-int/lit8 v1, v6, 0x8

    .line 331
    int-to-byte v1, v1

    .line 332
    int-to-char v1, v1

    .line 333
    .line 334
    aput-char v1, v16, v0

    .line 335
    .line 336
    add-int/lit8 v0, v17, 0x1a

    .line 337
    int-to-byte v1, v6

    .line 338
    int-to-char v1, v1

    .line 339
    .line 340
    aput-char v1, v16, v0

    .line 341
    .line 342
    add-int/lit8 v0, v17, 0x1b

    .line 343
    .line 344
    shr-int/lit8 v1, v14, 0x8

    .line 345
    int-to-byte v1, v1

    .line 346
    int-to-char v1, v1

    .line 347
    .line 348
    aput-char v1, v16, v0

    .line 349
    .line 350
    add-int/lit8 v0, v17, 0x1c

    .line 351
    int-to-byte v1, v14

    .line 352
    int-to-char v1, v1

    .line 353
    .line 354
    aput-char v1, v16, v0

    .line 355
    .line 356
    add-int/lit8 v0, v17, 0x1d

    .line 357
    .line 358
    shr-int/lit8 v1, v4, 0x8

    .line 359
    int-to-byte v1, v1

    .line 360
    int-to-char v1, v1

    .line 361
    .line 362
    aput-char v1, v16, v0

    .line 363
    .line 364
    add-int/lit8 v0, v17, 0x1e

    .line 365
    int-to-byte v1, v4

    .line 366
    int-to-char v1, v1

    .line 367
    .line 368
    aput-char v1, v16, v0

    .line 369
    .line 370
    add-int/lit8 v0, v17, 0x1f

    .line 371
    .line 372
    shr-int/lit8 v1, v15, 0x8

    .line 373
    int-to-byte v1, v1

    .line 374
    int-to-char v1, v1

    .line 375
    .line 376
    aput-char v1, v16, v0

    .line 377
    .line 378
    add-int/lit8 v0, v17, 0x20

    .line 379
    int-to-byte v1, v15

    .line 380
    int-to-char v1, v1

    .line 381
    .line 382
    aput-char v1, v16, v0

    .line 383
    .line 384
    add-int/lit8 v0, v17, 0x21

    .line 385
    .line 386
    shr-int/lit8 v1, v7, 0x8

    .line 387
    int-to-byte v1, v1

    .line 388
    int-to-char v1, v1

    .line 389
    .line 390
    aput-char v1, v16, v0

    .line 391
    .line 392
    add-int/lit8 v0, v17, 0x22

    .line 393
    int-to-byte v1, v7

    .line 394
    int-to-char v1, v1

    .line 395
    .line 396
    aput-char v1, v16, v0

    .line 397
    .line 398
    add-int/lit8 v7, v17, 0x23

    .line 399
    .line 400
    shr-int/lit8 v0, v3, 0x8

    .line 401
    int-to-byte v0, v0

    .line 402
    int-to-char v0, v0

    .line 403
    .line 404
    aput-char v0, v16, v7

    .line 405
    .line 406
    add-int/lit8 v7, v17, 0x24

    .line 407
    int-to-byte v0, v3

    .line 408
    int-to-char v0, v0

    .line 409
    .line 410
    aput-char v0, v16, v7

    .line 411
    .line 412
    add-int/lit8 v7, v17, 0x25

    .line 413
    .line 414
    aput-char p1, v16, v7

    .line 415
    .line 416
    add-int/lit8 v7, v17, 0x26

    .line 417
    .line 418
    move-object/from16 v0, p0

    .line 419
    .line 420
    iput v7, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 421
    return-void
.end method
