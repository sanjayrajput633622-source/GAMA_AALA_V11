.class final Lcom/alibaba/fastjson2/JSONWriterUTF8;
.super Lcom/alibaba/fastjson2/JSONWriter;
.source "SourceFile"


# instance fields
.field protected bytes:[B

.field final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

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
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 26
    .line 27
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, [B

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const/16 p1, 0x2000

    .line 38
    .line 39
    new-array p1, p1, [B

    .line 40
    .line 41
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 42
    return-void
.end method

.method private grow(I)[B
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow0(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 6
    return-object p1
.end method

.method private grow0(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 14
    return-void
.end method

.method private indent([BI)I
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    aput-byte v0, p1, p2

    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p2, v0

    .line 7
    .line 8
    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 9
    .line 10
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 11
    mul-int/2addr v2, v1

    .line 12
    add-int/2addr v2, p2

    .line 13
    .line 14
    if-ne v1, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x9

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const/16 v0, 0x20

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {p1, p2, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 23
    return v2
.end method

.method private writeQuote()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    int-to-byte v2, v2

    .line 24
    .line 25
    aput-byte v2, v0, v1

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 24
    array-length v3, v0

    .line 25
    .line 26
    if-le v2, v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

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
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

    .line 38
    move-result v1

    .line 39
    .line 40
    :cond_2
    const/16 v2, 0x5d

    .line 41
    .line 42
    aput-byte v2, v0, v1

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 24
    array-length v3, v0

    .line 25
    .line 26
    if-le v2, v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

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
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

    .line 38
    move-result v1

    .line 39
    .line 40
    :cond_2
    const/16 v2, 0x7d

    .line 41
    .line 42
    aput-byte v2, v0, v1

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow0(I)V

    .line 9
    :cond_0
    return-void
.end method

.method public flushTo(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    :cond_0
    return v0
.end method

.method public flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p2, v1, :cond_4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_3

    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 7
    aget-byte v2, v2, v1

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    invoke-virtual {p1, v2, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 10
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return p2

    .line 11
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([BII)V

    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 14
    array-length p1, p2

    return p1

    .line 15
    :cond_4
    :goto_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    invoke-virtual {p1, v1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return p2
.end method

.method public getBytes()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 28
    array-length v3, v2

    .line 29
    .line 30
    if-le v1, v3, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

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
    aput-byte v3, v2, v0

    .line 41
    .line 42
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    .locals 4

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
    add-int/lit8 v1, v0, 0x3

    .line 22
    .line 23
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 24
    .line 25
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 26
    mul-int/2addr v2, v3

    .line 27
    add-int/2addr v1, v2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 30
    array-length v3, v2

    .line 31
    .line 32
    if-le v1, v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 36
    move-result-object v2

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 39
    .line 40
    const/16 v3, 0x7b

    .line 41
    .line 42
    aput-byte v3, v2, v0

    .line 43
    .line 44
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

    .line 50
    move-result v1

    .line 51
    .line 52
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 7
    .line 8
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 13
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 13

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

    .line 7
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    const/4 v9, 0x1

    if-ne v0, v2, :cond_3

    add-int/2addr v0, v9

    .line 8
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x7b

    aput-byte v3, v0, v2

    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v0, v9

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v3, v2

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 12
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v11, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v11

    cmp-long v4, v4, v7

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    if-nez v0, :cond_6

    .line 13
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v4, v4

    if-ne v0, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v5, 0x2c

    aput-byte v5, v0, v4

    .line 16
    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 17
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 18
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 20
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-ne v0, v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v4, 0x3a

    aput-byte v4, v0, v3

    if-nez v2, :cond_9

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    .line 24
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 25
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_a

    .line 26
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_a
    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_b

    .line 28
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_2

    .line 29
    :cond_b
    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_c

    .line 30
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_2

    .line 31
    :cond_c
    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_d

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_2

    .line 33
    :cond_d
    const-class v3, Ljava/math/BigDecimal;

    if-ne v0, v3, :cond_e

    .line 34
    check-cast v2, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v7, v8, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_2

    .line 35
    :cond_e
    const-class v3, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v3, :cond_f

    .line 36
    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Ljava/util/List;)V

    goto :goto_2

    .line 37
    :cond_f
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v3, :cond_10

    .line 38
    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    .line 39
    :cond_10
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v3, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 40
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 41
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-ne v0, v2, :cond_12

    add-int/2addr v0, v9

    .line 42
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 43
    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x7d

    aput-byte v3, v0, v2

    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 13

    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 45
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

    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr v2, v4

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 48
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 49
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    const/4 v9, 0x1

    if-ne v0, v2, :cond_2

    add-int/2addr v0, v9

    .line 50
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x5b

    aput-byte v3, v0, v2

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    move v0, v9

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_d

    if-nez v0, :cond_4

    .line 53
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    .line 56
    :cond_4
    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 59
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_6

    .line 60
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_6
    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_7

    .line 62
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_1

    .line 63
    :cond_7
    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_8

    .line 64
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_1

    .line 65
    :cond_8
    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_9

    .line 66
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_1

    .line 67
    :cond_9
    const-class v3, Ljava/math/BigDecimal;

    if-ne v0, v3, :cond_a

    .line 68
    check-cast v2, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v7, v8, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_1

    .line 69
    :cond_a
    const-class v3, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v3, :cond_b

    .line 70
    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Ljava/util/List;)V

    goto :goto_1

    .line 71
    :cond_b
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v3, :cond_c

    .line 72
    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_1

    .line 73
    :cond_c
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v3, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 74
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_1
    add-int/lit8 v12, v12, 0x1

    move v0, v11

    goto/16 :goto_0

    .line 75
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-ne v0, v2, :cond_e

    add-int/2addr v0, v9

    .line 76
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x5d

    aput-byte v3, v0, v2

    return-void
.end method

.method public final write0(C)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    int-to-byte p1, p1

    .line 16
    .line 17
    aput-byte p1, v1, v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 22
    return-void
.end method

.method public writeBase64([B)V
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    div-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    const/4 v1, 0x2

    .line 9
    shl-int/2addr v0, v1

    .line 10
    .line 11
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 12
    add-int/2addr v0, v2

    .line 13
    add-int/2addr v0, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 23
    int-to-byte v4, v4

    .line 24
    .line 25
    aput-byte v4, v0, v2

    .line 26
    array-length v2, p1

    .line 27
    .line 28
    div-int/lit8 v2, v2, 0x3

    .line 29
    .line 30
    mul-int/lit8 v2, v2, 0x3

    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    .line 34
    :goto_0
    if-ge v5, v2, :cond_0

    .line 35
    .line 36
    add-int/lit8 v6, v5, 0x1

    .line 37
    .line 38
    aget-byte v7, p1, v5

    .line 39
    .line 40
    and-int/lit16 v7, v7, 0xff

    .line 41
    .line 42
    shl-int/lit8 v7, v7, 0x10

    .line 43
    .line 44
    add-int/lit8 v8, v5, 0x2

    .line 45
    .line 46
    aget-byte v6, p1, v6

    .line 47
    .line 48
    and-int/lit16 v6, v6, 0xff

    .line 49
    .line 50
    shl-int/lit8 v6, v6, 0x8

    .line 51
    or-int/2addr v6, v7

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x3

    .line 54
    .line 55
    aget-byte v7, p1, v8

    .line 56
    .line 57
    and-int/lit16 v7, v7, 0xff

    .line 58
    or-int/2addr v6, v7

    .line 59
    .line 60
    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    .line 61
    .line 62
    ushr-int/lit8 v8, v6, 0x12

    .line 63
    .line 64
    and-int/lit8 v8, v8, 0x3f

    .line 65
    .line 66
    aget-char v8, v7, v8

    .line 67
    int-to-byte v8, v8

    .line 68
    .line 69
    aput-byte v8, v0, v3

    .line 70
    .line 71
    add-int/lit8 v8, v3, 0x1

    .line 72
    .line 73
    ushr-int/lit8 v9, v6, 0xc

    .line 74
    .line 75
    and-int/lit8 v9, v9, 0x3f

    .line 76
    .line 77
    aget-char v9, v7, v9

    .line 78
    int-to-byte v9, v9

    .line 79
    .line 80
    aput-byte v9, v0, v8

    .line 81
    .line 82
    add-int/lit8 v8, v3, 0x2

    .line 83
    .line 84
    ushr-int/lit8 v9, v6, 0x6

    .line 85
    .line 86
    and-int/lit8 v9, v9, 0x3f

    .line 87
    .line 88
    aget-char v9, v7, v9

    .line 89
    int-to-byte v9, v9

    .line 90
    .line 91
    aput-byte v9, v0, v8

    .line 92
    .line 93
    add-int/lit8 v8, v3, 0x3

    .line 94
    .line 95
    and-int/lit8 v6, v6, 0x3f

    .line 96
    .line 97
    aget-char v6, v7, v6

    .line 98
    int-to-byte v6, v6

    .line 99
    .line 100
    aput-byte v6, v0, v8

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x4

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    array-length v5, p1

    .line 105
    sub-int/2addr v5, v2

    .line 106
    .line 107
    if-lez v5, :cond_3

    .line 108
    .line 109
    aget-byte v2, p1, v2

    .line 110
    .line 111
    and-int/lit16 v2, v2, 0xff

    .line 112
    .line 113
    shl-int/lit8 v2, v2, 0xa

    .line 114
    .line 115
    if-ne v5, v1, :cond_1

    .line 116
    array-length v4, p1

    .line 117
    .line 118
    add-int/lit8 v4, v4, -0x1

    .line 119
    .line 120
    aget-byte p1, p1, v4

    .line 121
    .line 122
    and-int/lit16 p1, p1, 0xff

    .line 123
    .line 124
    shl-int/lit8 v4, p1, 0x2

    .line 125
    .line 126
    :cond_1
    or-int p1, v2, v4

    .line 127
    .line 128
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    .line 129
    .line 130
    shr-int/lit8 v4, p1, 0xc

    .line 131
    .line 132
    aget-char v4, v2, v4

    .line 133
    int-to-byte v4, v4

    .line 134
    .line 135
    aput-byte v4, v0, v3

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
    int-to-byte v6, v6

    .line 145
    .line 146
    aput-byte v6, v0, v4

    .line 147
    .line 148
    add-int/lit8 v4, v3, 0x2

    .line 149
    .line 150
    const/16 v6, 0x3d

    .line 151
    .line 152
    if-ne v5, v1, :cond_2

    .line 153
    .line 154
    and-int/lit8 p1, p1, 0x3f

    .line 155
    .line 156
    aget-char p1, v2, p1

    .line 157
    int-to-byte p1, p1

    .line 158
    goto :goto_1

    .line 159
    :cond_2
    move p1, v6

    .line 160
    .line 161
    :goto_1
    aput-byte p1, v0, v4

    .line 162
    .line 163
    add-int/lit8 p1, v3, 0x3

    .line 164
    .line 165
    aput-byte v6, v0, p1

    .line 166
    .line 167
    add-int/lit8 v3, v3, 0x4

    .line 168
    .line 169
    :cond_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 170
    int-to-byte p1, p1

    .line 171
    .line 172
    aput-byte p1, v0, v3

    .line 173
    .line 174
    add-int/lit8 v3, v3, 0x1

    .line 175
    .line 176
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 177
    return-void
.end method

.method public writeBigInt(Ljava/math/BigInteger;J)V
    .locals 3

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
    and-long/2addr p2, v1

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    cmp-long p2, p2, v1

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->LOW_BIGINT:Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 34
    move-result p2

    .line 35
    .line 36
    if-ltz p2, :cond_1

    .line 37
    .line 38
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->HIGH_BIGINT:Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 42
    move-result p1

    .line 43
    .line 44
    if-lez p1, :cond_2

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    .line 48
    return-void

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    move-result p1

    .line 53
    .line 54
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 55
    add-int/2addr p2, p1

    .line 56
    .line 57
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 58
    array-length p3, p3

    .line 59
    .line 60
    if-lt p2, p3, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 64
    .line 65
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 66
    .line 67
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 68
    const/4 v1, 0x0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/lang/String;->getBytes(II[BI)V

    .line 72
    .line 73
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 74
    add-int/2addr p2, p1

    .line 75
    .line 76
    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 77
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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 19
    int-to-byte v4, v3

    .line 20
    .line 21
    aput-byte v4, v1, v0

    .line 22
    .line 23
    const/16 v4, 0x7f

    .line 24
    .line 25
    if-gt p1, v4, :cond_3

    .line 26
    .line 27
    const/16 v4, 0x5c

    .line 28
    .line 29
    if-eq p1, v4, :cond_2

    .line 30
    .line 31
    const/16 v5, 0x31

    .line 32
    .line 33
    const/16 v6, 0x75

    .line 34
    .line 35
    const/16 v7, 0x30

    .line 36
    .line 37
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 39
    .line 40
    if-ne p1, v3, :cond_1

    .line 41
    .line 42
    aput-byte v4, v1, v2

    .line 43
    .line 44
    add-int/lit8 p1, v0, 0x2

    .line 45
    int-to-byte v2, v3

    .line 46
    .line 47
    aput-byte v2, v1, p1

    .line 48
    .line 49
    :goto_0
    add-int/lit8 v0, v0, 0x3

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 54
    int-to-byte p1, p1

    .line 55
    .line 56
    aput-byte p1, v1, v2

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :pswitch_0
    aput-byte v4, v1, v2

    .line 61
    .line 62
    add-int/lit8 v2, v0, 0x2

    .line 63
    .line 64
    aput-byte v6, v1, v2

    .line 65
    .line 66
    add-int/lit8 v2, v0, 0x3

    .line 67
    .line 68
    aput-byte v7, v1, v2

    .line 69
    .line 70
    add-int/lit8 v2, v0, 0x4

    .line 71
    .line 72
    aput-byte v7, v1, v2

    .line 73
    .line 74
    add-int/lit8 v2, v0, 0x5

    .line 75
    .line 76
    aput-byte v5, v1, v2

    .line 77
    .line 78
    add-int/lit8 v2, v0, 0x6

    .line 79
    .line 80
    add-int/lit8 p1, p1, 0x47

    .line 81
    int-to-byte p1, p1

    .line 82
    .line 83
    aput-byte p1, v1, v2

    .line 84
    .line 85
    :goto_1
    add-int/lit8 v0, v0, 0x7

    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :pswitch_1
    aput-byte v4, v1, v2

    .line 90
    .line 91
    add-int/lit8 v2, v0, 0x2

    .line 92
    .line 93
    aput-byte v6, v1, v2

    .line 94
    .line 95
    add-int/lit8 v2, v0, 0x3

    .line 96
    .line 97
    aput-byte v7, v1, v2

    .line 98
    .line 99
    add-int/lit8 v2, v0, 0x4

    .line 100
    .line 101
    aput-byte v7, v1, v2

    .line 102
    .line 103
    add-int/lit8 v2, v0, 0x5

    .line 104
    .line 105
    aput-byte v5, v1, v2

    .line 106
    .line 107
    add-int/lit8 v2, v0, 0x6

    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x20

    .line 110
    int-to-byte p1, p1

    .line 111
    .line 112
    aput-byte p1, v1, v2

    .line 113
    goto :goto_1

    .line 114
    .line 115
    :pswitch_2
    aput-byte v4, v1, v2

    .line 116
    .line 117
    add-int/lit8 p1, v0, 0x2

    .line 118
    .line 119
    const/16 v2, 0x72

    .line 120
    .line 121
    aput-byte v2, v1, p1

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :pswitch_3
    aput-byte v4, v1, v2

    .line 125
    .line 126
    add-int/lit8 p1, v0, 0x2

    .line 127
    .line 128
    const/16 v2, 0x66

    .line 129
    .line 130
    aput-byte v2, v1, p1

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :pswitch_4
    aput-byte v4, v1, v2

    .line 134
    .line 135
    add-int/lit8 v2, v0, 0x2

    .line 136
    .line 137
    aput-byte v6, v1, v2

    .line 138
    .line 139
    add-int/lit8 v2, v0, 0x3

    .line 140
    .line 141
    aput-byte v7, v1, v2

    .line 142
    .line 143
    add-int/lit8 v2, v0, 0x4

    .line 144
    .line 145
    aput-byte v7, v1, v2

    .line 146
    .line 147
    add-int/lit8 v2, v0, 0x5

    .line 148
    .line 149
    aput-byte v7, v1, v2

    .line 150
    .line 151
    add-int/lit8 v2, v0, 0x6

    .line 152
    .line 153
    add-int/lit8 p1, p1, 0x57

    .line 154
    int-to-byte p1, p1

    .line 155
    .line 156
    aput-byte p1, v1, v2

    .line 157
    goto :goto_1

    .line 158
    .line 159
    :pswitch_5
    aput-byte v4, v1, v2

    .line 160
    .line 161
    add-int/lit8 p1, v0, 0x2

    .line 162
    .line 163
    const/16 v2, 0x6e

    .line 164
    .line 165
    aput-byte v2, v1, p1

    .line 166
    goto :goto_0

    .line 167
    .line 168
    :pswitch_6
    aput-byte v4, v1, v2

    .line 169
    .line 170
    add-int/lit8 p1, v0, 0x2

    .line 171
    .line 172
    const/16 v2, 0x74

    .line 173
    .line 174
    aput-byte v2, v1, p1

    .line 175
    goto :goto_0

    .line 176
    .line 177
    :pswitch_7
    aput-byte v4, v1, v2

    .line 178
    .line 179
    add-int/lit8 p1, v0, 0x2

    .line 180
    .line 181
    const/16 v2, 0x62

    .line 182
    .line 183
    aput-byte v2, v1, p1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :pswitch_8
    aput-byte v4, v1, v2

    .line 188
    .line 189
    add-int/lit8 v2, v0, 0x2

    .line 190
    .line 191
    aput-byte v6, v1, v2

    .line 192
    .line 193
    add-int/lit8 v2, v0, 0x3

    .line 194
    .line 195
    aput-byte v7, v1, v2

    .line 196
    .line 197
    add-int/lit8 v2, v0, 0x4

    .line 198
    .line 199
    aput-byte v7, v1, v2

    .line 200
    .line 201
    add-int/lit8 v2, v0, 0x5

    .line 202
    .line 203
    aput-byte v7, v1, v2

    .line 204
    .line 205
    add-int/lit8 v2, v0, 0x6

    .line 206
    add-int/2addr p1, v7

    .line 207
    int-to-byte p1, p1

    .line 208
    .line 209
    aput-byte p1, v1, v2

    .line 210
    goto :goto_1

    .line 211
    .line 212
    :cond_2
    aput-byte v4, v1, v2

    .line 213
    .line 214
    add-int/lit8 p1, v0, 0x2

    .line 215
    .line 216
    aput-byte v4, v1, p1

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    .line 221
    :cond_3
    const v4, 0xd800

    .line 222
    .line 223
    if-lt p1, v4, :cond_5

    .line 224
    .line 225
    .line 226
    const v4, 0xe000

    .line 227
    .line 228
    if-lt p1, v4, :cond_4

    .line 229
    goto :goto_2

    .line 230
    .line 231
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 232
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    const-string v2, "illegal char "

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p1

    .line 249
    .line 250
    .line 251
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 252
    throw v0

    .line 253
    .line 254
    :cond_5
    :goto_2
    const/16 v4, 0x7ff

    .line 255
    .line 256
    if-le p1, v4, :cond_6

    .line 257
    .line 258
    shr-int/lit8 v4, p1, 0xc

    .line 259
    .line 260
    and-int/lit8 v4, v4, 0xf

    .line 261
    .line 262
    or-int/lit16 v4, v4, 0xe0

    .line 263
    int-to-byte v4, v4

    .line 264
    .line 265
    aput-byte v4, v1, v2

    .line 266
    .line 267
    add-int/lit8 v2, v0, 0x2

    .line 268
    .line 269
    shr-int/lit8 v4, p1, 0x6

    .line 270
    .line 271
    and-int/lit8 v4, v4, 0x3f

    .line 272
    .line 273
    or-int/lit16 v4, v4, 0x80

    .line 274
    int-to-byte v4, v4

    .line 275
    .line 276
    aput-byte v4, v1, v2

    .line 277
    .line 278
    add-int/lit8 v2, v0, 0x3

    .line 279
    .line 280
    and-int/lit8 p1, p1, 0x3f

    .line 281
    .line 282
    or-int/lit16 p1, p1, 0x80

    .line 283
    int-to-byte p1, p1

    .line 284
    .line 285
    aput-byte p1, v1, v2

    .line 286
    .line 287
    add-int/lit8 v0, v0, 0x4

    .line 288
    goto :goto_3

    .line 289
    .line 290
    :cond_6
    shr-int/lit8 v4, p1, 0x6

    .line 291
    .line 292
    and-int/lit8 v4, v4, 0x1f

    .line 293
    .line 294
    or-int/lit16 v4, v4, 0xc0

    .line 295
    int-to-byte v4, v4

    .line 296
    .line 297
    aput-byte v4, v1, v2

    .line 298
    .line 299
    add-int/lit8 v2, v0, 0x2

    .line 300
    .line 301
    and-int/lit8 p1, p1, 0x3f

    .line 302
    .line 303
    or-int/lit16 p1, p1, 0x80

    .line 304
    int-to-byte p1, p1

    .line 305
    .line 306
    aput-byte p1, v1, v2

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    :goto_3
    int-to-byte p1, v3

    .line 310
    .line 311
    aput-byte p1, v1, v0

    .line 312
    .line 313
    add-int/lit8 v0, v0, 0x1

    .line 314
    .line 315
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 316
    return-void

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
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
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
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
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    .line 16
    const/16 v2, 0x3a

    .line 17
    .line 18
    aput-byte v2, v1, v0

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 16
    array-length v3, v2

    .line 17
    .line 18
    if-le v1, v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

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
    aput-byte v3, v2, v0

    .line 29
    .line 30
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    .line 16
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 17
    int-to-byte v4, v3

    .line 18
    .line 19
    aput-byte v4, v2, v0

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    const/16 v4, 0x270f

    .line 24
    .line 25
    if-gt p1, v4, :cond_1

    .line 26
    .line 27
    div-int/lit16 v4, p1, 0x3e8

    .line 28
    .line 29
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 30
    .line 31
    mul-int/lit16 v6, v4, 0x3e8

    .line 32
    sub-int/2addr p1, v6

    .line 33
    .line 34
    aget p1, v5, p1

    .line 35
    .line 36
    add-int/lit8 v6, v0, 0x1

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x30

    .line 39
    int-to-byte v4, v4

    .line 40
    .line 41
    aput-byte v4, v2, v6

    .line 42
    .line 43
    add-int/lit8 v4, v0, 0x2

    .line 44
    .line 45
    shr-int/lit8 v6, p1, 0x10

    .line 46
    int-to-byte v6, v6

    .line 47
    .line 48
    aput-byte v6, v2, v4

    .line 49
    .line 50
    add-int/lit8 v4, v0, 0x3

    .line 51
    .line 52
    shr-int/lit8 v6, p1, 0x8

    .line 53
    int-to-byte v6, v6

    .line 54
    .line 55
    aput-byte v6, v2, v4

    .line 56
    .line 57
    add-int/lit8 v4, v0, 0x4

    .line 58
    int-to-byte p1, p1

    .line 59
    .line 60
    aput-byte p1, v2, v4

    .line 61
    .line 62
    aget p1, v5, p2

    .line 63
    .line 64
    add-int/lit8 p2, v0, 0x5

    .line 65
    .line 66
    shr-int/lit8 v4, p1, 0x8

    .line 67
    int-to-byte v4, v4

    .line 68
    .line 69
    aput-byte v4, v2, p2

    .line 70
    .line 71
    add-int/lit8 p2, v0, 0x6

    .line 72
    int-to-byte p1, p1

    .line 73
    .line 74
    aput-byte p1, v2, p2

    .line 75
    .line 76
    aget p1, v5, p3

    .line 77
    .line 78
    add-int/lit8 p2, v0, 0x7

    .line 79
    .line 80
    shr-int/lit8 p3, p1, 0x8

    .line 81
    int-to-byte p3, p3

    .line 82
    .line 83
    aput-byte p3, v2, p2

    .line 84
    .line 85
    add-int/lit8 p2, v0, 0x8

    .line 86
    int-to-byte p1, p1

    .line 87
    .line 88
    aput-byte p1, v2, p2

    .line 89
    .line 90
    aget p1, v5, p4

    .line 91
    .line 92
    add-int/lit8 p2, v0, 0x9

    .line 93
    .line 94
    shr-int/lit8 p3, p1, 0x8

    .line 95
    int-to-byte p3, p3

    .line 96
    .line 97
    aput-byte p3, v2, p2

    .line 98
    .line 99
    add-int/lit8 p2, v0, 0xa

    .line 100
    int-to-byte p1, p1

    .line 101
    .line 102
    aput-byte p1, v2, p2

    .line 103
    .line 104
    aget p1, v5, p5

    .line 105
    .line 106
    add-int/lit8 p2, v0, 0xb

    .line 107
    .line 108
    shr-int/lit8 p3, p1, 0x8

    .line 109
    int-to-byte p3, p3

    .line 110
    .line 111
    aput-byte p3, v2, p2

    .line 112
    .line 113
    add-int/lit8 p2, v0, 0xc

    .line 114
    int-to-byte p1, p1

    .line 115
    .line 116
    aput-byte p1, v2, p2

    .line 117
    .line 118
    aget p1, v5, p6

    .line 119
    .line 120
    add-int/lit8 p2, v0, 0xd

    .line 121
    .line 122
    shr-int/lit8 p3, p1, 0x8

    .line 123
    int-to-byte p3, p3

    .line 124
    .line 125
    aput-byte p3, v2, p2

    .line 126
    .line 127
    add-int/lit8 p2, v0, 0xe

    .line 128
    int-to-byte p1, p1

    .line 129
    .line 130
    aput-byte p1, v2, p2

    .line 131
    .line 132
    add-int/lit8 v0, v0, 0xf

    .line 133
    int-to-byte p1, v3

    .line 134
    .line 135
    aput-byte p1, v2, v0

    .line 136
    .line 137
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 138
    return-void

    .line 139
    .line 140
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    new-instance p3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    const-string p4, "Only 4 digits numbers are supported. Provided: "

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    .line 160
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p2
.end method

.method public writeDateTime19(IIIIII)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x15

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    .line 16
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 17
    int-to-byte v4, v3

    .line 18
    .line 19
    aput-byte v4, v2, v0

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    const/16 v4, 0x270f

    .line 24
    .line 25
    if-gt p1, v4, :cond_1

    .line 26
    .line 27
    div-int/lit16 v4, p1, 0x3e8

    .line 28
    .line 29
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 30
    .line 31
    mul-int/lit16 v6, v4, 0x3e8

    .line 32
    sub-int/2addr p1, v6

    .line 33
    .line 34
    aget p1, v5, p1

    .line 35
    .line 36
    add-int/lit8 v6, v0, 0x1

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x30

    .line 39
    int-to-byte v4, v4

    .line 40
    .line 41
    aput-byte v4, v2, v6

    .line 42
    .line 43
    add-int/lit8 v4, v0, 0x2

    .line 44
    .line 45
    shr-int/lit8 v6, p1, 0x10

    .line 46
    int-to-byte v6, v6

    .line 47
    .line 48
    aput-byte v6, v2, v4

    .line 49
    .line 50
    add-int/lit8 v4, v0, 0x3

    .line 51
    .line 52
    shr-int/lit8 v6, p1, 0x8

    .line 53
    int-to-byte v6, v6

    .line 54
    .line 55
    aput-byte v6, v2, v4

    .line 56
    .line 57
    add-int/lit8 v4, v0, 0x4

    .line 58
    int-to-byte p1, p1

    .line 59
    .line 60
    aput-byte p1, v2, v4

    .line 61
    .line 62
    add-int/lit8 p1, v0, 0x5

    .line 63
    .line 64
    const/16 v4, 0x2d

    .line 65
    .line 66
    aput-byte v4, v2, p1

    .line 67
    .line 68
    aget p1, v5, p2

    .line 69
    .line 70
    add-int/lit8 p2, v0, 0x6

    .line 71
    .line 72
    shr-int/lit8 v6, p1, 0x8

    .line 73
    int-to-byte v6, v6

    .line 74
    .line 75
    aput-byte v6, v2, p2

    .line 76
    .line 77
    add-int/lit8 p2, v0, 0x7

    .line 78
    int-to-byte p1, p1

    .line 79
    .line 80
    aput-byte p1, v2, p2

    .line 81
    .line 82
    add-int/lit8 p1, v0, 0x8

    .line 83
    .line 84
    aput-byte v4, v2, p1

    .line 85
    .line 86
    aget p1, v5, p3

    .line 87
    .line 88
    add-int/lit8 p2, v0, 0x9

    .line 89
    .line 90
    shr-int/lit8 p3, p1, 0x8

    .line 91
    int-to-byte p3, p3

    .line 92
    .line 93
    aput-byte p3, v2, p2

    .line 94
    .line 95
    add-int/lit8 p2, v0, 0xa

    .line 96
    int-to-byte p1, p1

    .line 97
    .line 98
    aput-byte p1, v2, p2

    .line 99
    .line 100
    add-int/lit8 p1, v0, 0xb

    .line 101
    .line 102
    const/16 p2, 0x20

    .line 103
    .line 104
    aput-byte p2, v2, p1

    .line 105
    .line 106
    aget p1, v5, p4

    .line 107
    .line 108
    add-int/lit8 p2, v0, 0xc

    .line 109
    .line 110
    shr-int/lit8 p3, p1, 0x8

    .line 111
    int-to-byte p3, p3

    .line 112
    .line 113
    aput-byte p3, v2, p2

    .line 114
    .line 115
    add-int/lit8 p2, v0, 0xd

    .line 116
    int-to-byte p1, p1

    .line 117
    .line 118
    aput-byte p1, v2, p2

    .line 119
    .line 120
    add-int/lit8 p1, v0, 0xe

    .line 121
    .line 122
    const/16 p2, 0x3a

    .line 123
    .line 124
    aput-byte p2, v2, p1

    .line 125
    .line 126
    aget p1, v5, p5

    .line 127
    .line 128
    add-int/lit8 p3, v0, 0xf

    .line 129
    .line 130
    shr-int/lit8 p4, p1, 0x8

    .line 131
    int-to-byte p4, p4

    .line 132
    .line 133
    aput-byte p4, v2, p3

    .line 134
    .line 135
    add-int/lit8 p3, v0, 0x10

    .line 136
    int-to-byte p1, p1

    .line 137
    .line 138
    aput-byte p1, v2, p3

    .line 139
    .line 140
    add-int/lit8 p1, v0, 0x11

    .line 141
    .line 142
    aput-byte p2, v2, p1

    .line 143
    .line 144
    aget p1, v5, p6

    .line 145
    .line 146
    add-int/lit8 p2, v0, 0x12

    .line 147
    .line 148
    shr-int/lit8 p3, p1, 0x8

    .line 149
    int-to-byte p3, p3

    .line 150
    .line 151
    aput-byte p3, v2, p2

    .line 152
    .line 153
    add-int/lit8 p2, v0, 0x13

    .line 154
    int-to-byte p1, p1

    .line 155
    .line 156
    aput-byte p1, v2, p2

    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x14

    .line 159
    int-to-byte p1, v3

    .line 160
    .line 161
    aput-byte p1, v2, v0

    .line 162
    .line 163
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 164
    return-void

    .line 165
    .line 166
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    const-string p4, "Only 4 digits numbers are supported. Provided: "

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
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
    add-int/lit8 v2, v2, 0x19

    .line 15
    add-int/2addr v2, v1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 18
    array-length v1, v1

    .line 19
    .line 20
    if-lt v2, v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 24
    .line 25
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 26
    .line 27
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 28
    .line 29
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 30
    int-to-byte v3, v3

    .line 31
    .line 32
    aput-byte v3, v1, v2

    .line 33
    add-int/2addr v2, v0

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    .line 37
    move-result p1

    .line 38
    .line 39
    const/16 v2, 0x2d

    .line 40
    .line 41
    aput-byte v2, v1, p1

    .line 42
    .line 43
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 44
    .line 45
    aget p2, v3, p2

    .line 46
    .line 47
    add-int/lit8 v4, p1, 0x1

    .line 48
    .line 49
    shr-int/lit8 v5, p2, 0x8

    .line 50
    int-to-byte v5, v5

    .line 51
    .line 52
    aput-byte v5, v1, v4

    .line 53
    .line 54
    add-int/lit8 v4, p1, 0x2

    .line 55
    int-to-byte p2, p2

    .line 56
    .line 57
    aput-byte p2, v1, v4

    .line 58
    .line 59
    add-int/lit8 p2, p1, 0x3

    .line 60
    .line 61
    aput-byte v2, v1, p2

    .line 62
    .line 63
    aget p2, v3, p3

    .line 64
    .line 65
    add-int/lit8 p3, p1, 0x4

    .line 66
    .line 67
    shr-int/lit8 v4, p2, 0x8

    .line 68
    int-to-byte v4, v4

    .line 69
    .line 70
    aput-byte v4, v1, p3

    .line 71
    .line 72
    add-int/lit8 p3, p1, 0x5

    .line 73
    int-to-byte p2, p2

    .line 74
    .line 75
    aput-byte p2, v1, p3

    .line 76
    .line 77
    add-int/lit8 p2, p1, 0x6

    .line 78
    .line 79
    if-eqz p9, :cond_3

    .line 80
    .line 81
    const/16 p3, 0x54

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_3
    const/16 p3, 0x20

    .line 85
    :goto_1
    int-to-byte p3, p3

    .line 86
    .line 87
    aput-byte p3, v1, p2

    .line 88
    .line 89
    aget p2, v3, p4

    .line 90
    .line 91
    add-int/lit8 p3, p1, 0x7

    .line 92
    .line 93
    shr-int/lit8 p4, p2, 0x8

    .line 94
    int-to-byte p4, p4

    .line 95
    .line 96
    aput-byte p4, v1, p3

    .line 97
    .line 98
    add-int/lit8 p3, p1, 0x8

    .line 99
    int-to-byte p2, p2

    .line 100
    .line 101
    aput-byte p2, v1, p3

    .line 102
    .line 103
    add-int/lit8 p2, p1, 0x9

    .line 104
    .line 105
    const/16 p3, 0x3a

    .line 106
    .line 107
    aput-byte p3, v1, p2

    .line 108
    .line 109
    aget p2, v3, p5

    .line 110
    .line 111
    add-int/lit8 p4, p1, 0xa

    .line 112
    .line 113
    shr-int/lit8 p5, p2, 0x8

    .line 114
    int-to-byte p5, p5

    .line 115
    .line 116
    aput-byte p5, v1, p4

    .line 117
    .line 118
    add-int/lit8 p4, p1, 0xb

    .line 119
    int-to-byte p2, p2

    .line 120
    .line 121
    aput-byte p2, v1, p4

    .line 122
    .line 123
    add-int/lit8 p2, p1, 0xc

    .line 124
    .line 125
    aput-byte p3, v1, p2

    .line 126
    .line 127
    aget p2, v3, p6

    .line 128
    .line 129
    add-int/lit8 p4, p1, 0xd

    .line 130
    .line 131
    shr-int/lit8 p5, p2, 0x8

    .line 132
    int-to-byte p5, p5

    .line 133
    .line 134
    aput-byte p5, v1, p4

    .line 135
    .line 136
    add-int/lit8 p4, p1, 0xe

    .line 137
    int-to-byte p2, p2

    .line 138
    .line 139
    aput-byte p2, v1, p4

    .line 140
    .line 141
    add-int/lit8 p2, p1, 0xf

    .line 142
    .line 143
    if-lez p7, :cond_6

    .line 144
    .line 145
    add-int/lit8 p4, p1, 0x10

    .line 146
    .line 147
    const/16 p5, 0x2e

    .line 148
    .line 149
    aput-byte p5, v1, p2

    .line 150
    .line 151
    div-int/lit8 p2, p7, 0xa

    .line 152
    .line 153
    div-int/lit8 p5, p2, 0xa

    .line 154
    .line 155
    mul-int/lit8 p6, p2, 0xa

    .line 156
    .line 157
    sub-int p6, p7, p6

    .line 158
    .line 159
    if-eqz p6, :cond_4

    .line 160
    .line 161
    aget p2, v3, p7

    .line 162
    .line 163
    shr-int/lit8 p5, p2, 0x10

    .line 164
    int-to-byte p5, p5

    .line 165
    .line 166
    aput-byte p5, v1, p4

    .line 167
    .line 168
    add-int/lit8 p4, p1, 0x11

    .line 169
    .line 170
    shr-int/lit8 p5, p2, 0x8

    .line 171
    int-to-byte p5, p5

    .line 172
    .line 173
    aput-byte p5, v1, p4

    .line 174
    .line 175
    add-int/lit8 p4, p1, 0x12

    .line 176
    int-to-byte p2, p2

    .line 177
    .line 178
    aput-byte p2, v1, p4

    .line 179
    .line 180
    add-int/lit8 p2, p1, 0x13

    .line 181
    goto :goto_2

    .line 182
    .line 183
    :cond_4
    mul-int/lit8 p6, p5, 0xa

    .line 184
    .line 185
    sub-int p6, p2, p6

    .line 186
    .line 187
    if-eqz p6, :cond_5

    .line 188
    .line 189
    aget p2, v3, p2

    .line 190
    .line 191
    shr-int/lit8 p5, p2, 0x8

    .line 192
    int-to-byte p5, p5

    .line 193
    .line 194
    aput-byte p5, v1, p4

    .line 195
    .line 196
    add-int/lit8 p4, p1, 0x11

    .line 197
    int-to-byte p2, p2

    .line 198
    .line 199
    aput-byte p2, v1, p4

    .line 200
    .line 201
    add-int/lit8 p2, p1, 0x12

    .line 202
    goto :goto_2

    .line 203
    .line 204
    :cond_5
    add-int/lit8 p2, p1, 0x11

    .line 205
    .line 206
    add-int/lit8 p5, p5, 0x30

    .line 207
    int-to-byte p1, p5

    .line 208
    .line 209
    aput-byte p1, v1, p4

    .line 210
    .line 211
    :cond_6
    :goto_2
    if-eqz p9, :cond_a

    .line 212
    .line 213
    div-int/lit16 p1, p8, 0xe10

    .line 214
    .line 215
    if-nez p8, :cond_7

    .line 216
    .line 217
    add-int/lit8 p1, p2, 0x1

    .line 218
    .line 219
    const/16 p3, 0x5a

    .line 220
    .line 221
    aput-byte p3, v1, p2

    .line 222
    move p2, p1

    .line 223
    goto :goto_3

    .line 224
    .line 225
    .line 226
    :cond_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 227
    move-result p4

    .line 228
    .line 229
    if-ltz p1, :cond_8

    .line 230
    .line 231
    const/16 v2, 0x2b

    .line 232
    .line 233
    :cond_8
    aput-byte v2, v1, p2

    .line 234
    .line 235
    aget p4, v3, p4

    .line 236
    .line 237
    add-int/lit8 p5, p2, 0x1

    .line 238
    .line 239
    shr-int/lit8 p6, p4, 0x8

    .line 240
    int-to-byte p6, p6

    .line 241
    .line 242
    aput-byte p6, v1, p5

    .line 243
    .line 244
    add-int/lit8 p5, p2, 0x2

    .line 245
    int-to-byte p4, p4

    .line 246
    .line 247
    aput-byte p4, v1, p5

    .line 248
    .line 249
    add-int/lit8 p4, p2, 0x3

    .line 250
    .line 251
    aput-byte p3, v1, p4

    .line 252
    .line 253
    mul-int/lit16 p1, p1, 0xe10

    .line 254
    sub-int/2addr p8, p1

    .line 255
    .line 256
    div-int/lit8 p8, p8, 0x3c

    .line 257
    .line 258
    if-gez p8, :cond_9

    .line 259
    neg-int p8, p8

    .line 260
    .line 261
    :cond_9
    aget p1, v3, p8

    .line 262
    .line 263
    add-int/lit8 p3, p2, 0x4

    .line 264
    .line 265
    shr-int/lit8 p4, p1, 0x8

    .line 266
    int-to-byte p4, p4

    .line 267
    .line 268
    aput-byte p4, v1, p3

    .line 269
    .line 270
    add-int/lit8 p3, p2, 0x5

    .line 271
    int-to-byte p1, p1

    .line 272
    .line 273
    aput-byte p1, v1, p3

    .line 274
    .line 275
    add-int/lit8 p2, p2, 0x6

    .line 276
    .line 277
    :cond_a
    :goto_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 278
    int-to-byte p1, p1

    .line 279
    .line 280
    aput-byte p1, v1, p2

    .line 281
    add-int/2addr p2, v0

    .line 282
    .line 283
    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 284
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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 19
    int-to-byte v3, v3

    .line 20
    .line 21
    aput-byte v3, v1, v0

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    .line 25
    move-result p1

    .line 26
    .line 27
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 28
    int-to-byte p2, p2

    .line 29
    .line 30
    aput-byte p2, v1, p1

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 35
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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    .line 16
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 17
    int-to-byte v4, v3

    .line 18
    .line 19
    aput-byte v4, v2, v0

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    const/16 v4, 0x270f

    .line 24
    .line 25
    if-gt p1, v4, :cond_1

    .line 26
    .line 27
    div-int/lit16 v4, p1, 0x3e8

    .line 28
    .line 29
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 30
    .line 31
    mul-int/lit16 v6, v4, 0x3e8

    .line 32
    sub-int/2addr p1, v6

    .line 33
    .line 34
    aget p1, v5, p1

    .line 35
    .line 36
    add-int/lit8 v6, v0, 0x1

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x30

    .line 39
    int-to-byte v4, v4

    .line 40
    .line 41
    aput-byte v4, v2, v6

    .line 42
    .line 43
    add-int/lit8 v4, v0, 0x2

    .line 44
    .line 45
    shr-int/lit8 v6, p1, 0x10

    .line 46
    int-to-byte v6, v6

    .line 47
    .line 48
    aput-byte v6, v2, v4

    .line 49
    .line 50
    add-int/lit8 v4, v0, 0x3

    .line 51
    .line 52
    shr-int/lit8 v6, p1, 0x8

    .line 53
    int-to-byte v6, v6

    .line 54
    .line 55
    aput-byte v6, v2, v4

    .line 56
    .line 57
    add-int/lit8 v4, v0, 0x4

    .line 58
    int-to-byte p1, p1

    .line 59
    .line 60
    aput-byte p1, v2, v4

    .line 61
    .line 62
    aget p1, v5, p2

    .line 63
    .line 64
    add-int/lit8 p2, v0, 0x5

    .line 65
    .line 66
    shr-int/lit8 v4, p1, 0x8

    .line 67
    int-to-byte v4, v4

    .line 68
    .line 69
    aput-byte v4, v2, p2

    .line 70
    .line 71
    add-int/lit8 p2, v0, 0x6

    .line 72
    int-to-byte p1, p1

    .line 73
    .line 74
    aput-byte p1, v2, p2

    .line 75
    .line 76
    aget p1, v5, p3

    .line 77
    .line 78
    add-int/lit8 p2, v0, 0x7

    .line 79
    .line 80
    shr-int/lit8 p3, p1, 0x8

    .line 81
    int-to-byte p3, p3

    .line 82
    .line 83
    aput-byte p3, v2, p2

    .line 84
    .line 85
    add-int/lit8 p2, v0, 0x8

    .line 86
    int-to-byte p1, p1

    .line 87
    .line 88
    aput-byte p1, v2, p2

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x9

    .line 91
    int-to-byte p1, v3

    .line 92
    .line 93
    aput-byte p1, v2, v0

    .line 94
    .line 95
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 96
    return-void

    .line 97
    .line 98
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    new-instance p3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    const-string v0, "Only 4 digits numbers are supported. Provided: "

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
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
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeRaw(Ljava/lang/String;)V

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 87
    array-length v5, v5

    .line 88
    .line 89
    if-lt p4, v5, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 93
    .line 94
    :cond_5
    iget-object p4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    aput-byte v5, p4, v4

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
    invoke-virtual {p1, v1, p2, p4, v4}, Ljava/lang/String;->getBytes(II[BI)V

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
    aput-byte v5, p4, v4

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

    add-int/lit8 v3, v2, 0x1a

    .line 3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/16 v4, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 6
    aput-byte v4, v3, v2

    move v2, v5

    .line 7
    :cond_2
    invoke-static {p1, p2, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[BIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v2, 0x1

    .line 8
    aput-byte v4, v3, v2

    move v2, p1

    .line 9
    :cond_3
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
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 15
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 17
    aput-byte v6, v4, v3

    .line 18
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 19
    aput-byte v6, v4, v5

    move v5, v3

    :cond_3
    const/16 v3, 0x22

    if-eqz v0, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 20
    aput-byte v3, v4, v5

    move v5, v6

    .line 21
    :cond_4
    aget-wide v6, p1, v1

    .line 22
    invoke-static {v6, v7, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[BIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 23
    aput-byte v3, v4, v5

    move v5, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 24
    aput-byte p1, v4, v5

    add-int/2addr v5, v2

    .line 25
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

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

    add-int/lit8 v3, v2, 0x11

    .line 3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    :cond_1
    const/16 v3, 0x22

    if-eqz v0, :cond_2

    .line 5
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v2, 0x1

    aput-byte v3, v4, v2

    move v2, v5

    .line 6
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    invoke-static {p1, v4, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[BIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v0, v2, 0x1

    aput-byte v3, p1, v2

    move v2, v0

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 14
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 16
    aput-byte v6, v4, v3

    .line 17
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_7

    if-eqz v1, :cond_4

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 18
    aput-byte v6, v4, v5

    move v5, v3

    :cond_4
    const/16 v3, 0x22

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 19
    aput-byte v3, v4, v5

    move v5, v6

    .line 20
    :cond_5
    aget v6, p1, v1

    .line 21
    invoke-static {v6, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[BIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 22
    aput-byte v3, v4, v5

    move v5, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/16 p1, 0x5d

    .line 23
    aput-byte p1, v4, v5

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
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 22
    .line 23
    const/16 v2, 0x78

    .line 24
    .line 25
    aput-byte v2, v0, v1

    .line 26
    .line 27
    add-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    const/16 v3, 0x27

    .line 30
    .line 31
    aput-byte v3, v0, v2

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
    int-to-byte v5, v5

    .line 59
    .line 60
    aput-byte v5, v0, v1

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
    int-to-byte v4, v4

    .line 68
    .line 69
    aput-byte v4, v0, v5

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
    aput-byte v3, v0, v1

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
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 25
    array-length v3, v3

    .line 26
    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    int-to-byte v4, v4

    .line 40
    .line 41
    aput-byte v4, v2, v1

    .line 42
    move v1, v3

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    add-int/lit8 v0, p1, 0x1

    .line 51
    .line 52
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 53
    int-to-byte v1, v1

    .line 54
    .line 55
    aput-byte v1, v2, p1

    .line 56
    move p1, v0

    .line 57
    .line 58
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 59
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
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 21
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move v1, v3

    .line 22
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 23
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v1, v1

    aput-byte v1, v2, p1

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 6
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 8
    aput-byte v6, v4, v3

    .line 9
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 10
    aput-byte v6, v4, v5

    move v5, v3

    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v3, v5, 0x1

    .line 11
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    move v5, v3

    .line 12
    :cond_4
    aget v3, p1, v1

    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result v3

    if-eqz v0, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 13
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 14
    aput-byte p1, v4, v5

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
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 23
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 24
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    if-eqz v2, :cond_3

    add-int/lit8 v7, v3, 0x1

    .line 25
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v8, v8

    aput-byte v8, v6, v3

    move v3, v7

    .line 26
    :cond_3
    invoke-static {v6, v3, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result v3

    if-eqz v2, :cond_4

    add-int/lit8 p1, v3, 0x1

    .line 27
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v6, v3

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
    aput-byte p2, v6, v3

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 9
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v1, 0x1

    const/16 v7, 0x5b

    .line 10
    aput-byte v7, v4, v1

    move v1, v3

    .line 11
    :goto_2
    array-length v7, p1

    if-ge v1, v7, :cond_9

    if-eqz v1, :cond_4

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x2c

    .line 12
    aput-byte v8, v4, v5

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

    int-to-byte v11, v11

    aput-byte v11, v4, v5

    move v5, v10

    .line 15
    :cond_7
    invoke-static {v4, v5, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result v5

    if-eqz v9, :cond_8

    add-int/lit8 v7, v5, 0x1

    .line 16
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    move v5, v7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const/16 p1, 0x5d

    .line 17
    aput-byte p1, v4, v5

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
    add-int/lit8 v2, v1, 0x5

    .line 23
    .line 24
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 25
    array-length v3, v3

    .line 26
    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

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
    int-to-byte v4, v4

    .line 40
    .line 41
    aput-byte v4, v2, v1

    .line 42
    move v1, v3

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    add-int/lit8 v0, p1, 0x1

    .line 51
    .line 52
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 53
    int-to-byte v1, v1

    .line 54
    .line 55
    aput-byte v1, v2, p1

    .line 56
    move p1, v0

    .line 57
    .line 58
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 59
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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 19
    int-to-byte v3, v3

    .line 20
    .line 21
    aput-byte v3, v1, v0

    .line 22
    .line 23
    iget-object v0, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 24
    .line 25
    iget v3, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 26
    .line 27
    iget-short v4, v0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 28
    .line 29
    iget-short v0, v0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    .line 33
    move-result v0

    .line 34
    .line 35
    add-int/lit8 v2, v0, 0x1

    .line 36
    .line 37
    const/16 v3, 0x20

    .line 38
    .line 39
    aput-byte v3, v1, v0

    .line 40
    .line 41
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILcom/alibaba/fastjson2/time/LocalTime;)I

    .line 45
    move-result p1

    .line 46
    .line 47
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 48
    int-to-byte v0, v0

    .line 49
    .line 50
    aput-byte v0, v1, p1

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 55
    return-void
.end method

.method public writeName10Raw(JJ)V
    .locals 11

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v9, v0

    .line 50
    .line 51
    add-long v5, v1, v9

    .line 52
    move-wide v7, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 56
    add-long/2addr v1, v9

    .line 57
    .line 58
    const-wide/16 p1, 0x8

    .line 59
    .line 60
    add-long v5, v1, p1

    .line 61
    move-wide v7, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0xd

    .line 67
    .line 68
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 69
    return-void
.end method

.method public writeName11Raw(JJ)V
    .locals 11

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v9, v0

    .line 50
    .line 51
    add-long v5, v1, v9

    .line 52
    move-wide v7, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 56
    add-long/2addr v1, v9

    .line 57
    .line 58
    const-wide/16 p1, 0x8

    .line 59
    .line 60
    add-long v5, v1, p1

    .line 61
    move-wide v7, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0xe

    .line 67
    .line 68
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 69
    return-void
.end method

.method public writeName12Raw(JJ)V
    .locals 11

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v9, v0

    .line 50
    .line 51
    add-long v5, v1, v9

    .line 52
    move-wide v7, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 56
    add-long/2addr v1, v9

    .line 57
    .line 58
    const-wide/16 p1, 0x8

    .line 59
    .line 60
    add-long v5, v1, p1

    .line 61
    move-wide v7, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0xf

    .line 67
    .line 68
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 69
    return-void
.end method

.method public writeName13Raw(JJ)V
    .locals 11

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v9, v0

    .line 50
    .line 51
    add-long v5, v1, v9

    .line 52
    move-wide v7, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 56
    add-long/2addr v1, v9

    .line 57
    .line 58
    const-wide/16 p1, 0x8

    .line 59
    .line 60
    add-long v5, v1, p1

    .line 61
    move-wide v7, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x10

    .line 67
    .line 68
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 69
    return-void
.end method

.method public writeName14Raw(JJ)V
    .locals 11

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v9, v0

    .line 50
    .line 51
    add-long v5, v1, v9

    .line 52
    move-wide v7, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 56
    add-long/2addr v1, v9

    .line 57
    .line 58
    const-wide/16 p1, 0x8

    .line 59
    .line 60
    add-long v5, v1, p1

    .line 61
    move-wide v7, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 65
    .line 66
    add-int/lit8 p1, v0, 0x10

    .line 67
    .line 68
    const/16 p2, 0x3a

    .line 69
    .line 70
    aput-byte p2, v4, p1

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x11

    .line 73
    .line 74
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 75
    return-void
.end method

.method public writeName15Raw(JJ)V
    .locals 11

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v9, v0

    .line 50
    .line 51
    add-long v5, v1, v9

    .line 52
    move-wide v7, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 56
    add-long/2addr v1, v9

    .line 57
    .line 58
    const-wide/16 p1, 0x8

    .line 59
    .line 60
    add-long v5, v1, p1

    .line 61
    move-wide v7, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 65
    .line 66
    add-int/lit8 p1, v0, 0x10

    .line 67
    .line 68
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 69
    int-to-byte p2, p2

    .line 70
    .line 71
    aput-byte p2, v4, p1

    .line 72
    .line 73
    add-int/lit8 p1, v0, 0x11

    .line 74
    .line 75
    const/16 p2, 0x3a

    .line 76
    .line 77
    aput-byte p2, v4, p1

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x12

    .line 80
    .line 81
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 82
    return-void
.end method

.method public writeName16Raw(JJ)V
    .locals 11

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    add-int/lit8 v1, v0, 0x1

    .line 47
    .line 48
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 49
    int-to-byte v2, v2

    .line 50
    .line 51
    aput-byte v2, v4, v0

    .line 52
    .line 53
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 54
    .line 55
    sget-wide v9, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 56
    int-to-long v1, v1

    .line 57
    .line 58
    add-long v5, v9, v1

    .line 59
    move-wide v7, p1

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 63
    add-long/2addr v9, v1

    .line 64
    .line 65
    const-wide/16 p1, 0x8

    .line 66
    .line 67
    add-long v5, v9, p1

    .line 68
    move-wide v7, p3

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 72
    .line 73
    add-int/lit8 p1, v0, 0x12

    .line 74
    .line 75
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 76
    int-to-byte p2, p2

    .line 77
    .line 78
    aput-byte p2, v4, p1

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x13

    .line 81
    .line 82
    const/16 p1, 0x3a

    .line 83
    .line 84
    aput-byte p1, v4, v0

    .line 85
    .line 86
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 87
    return-void
.end method

.method public writeName2Raw(J)V
    .locals 9

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v5, v0

    .line 50
    add-long/2addr v5, v1

    .line 51
    move-wide v7, p1

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x5

    .line 57
    .line 58
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 59
    return-void
.end method

.method public writeName3Raw(J)V
    .locals 9

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v5, v0

    .line 50
    add-long/2addr v5, v1

    .line 51
    move-wide v7, p1

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x6

    .line 57
    .line 58
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 59
    return-void
.end method

.method public writeName4Raw(J)V
    .locals 9

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v5, v0

    .line 50
    add-long/2addr v5, v1

    .line 51
    move-wide v7, p1

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x7

    .line 57
    .line 58
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 59
    return-void
.end method

.method public writeName5Raw(J)V
    .locals 9

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v5, v0

    .line 50
    add-long/2addr v5, v1

    .line 51
    move-wide v7, p1

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x8

    .line 57
    .line 58
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 59
    return-void
.end method

.method public writeName6Raw(J)V
    .locals 9

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v5, v0

    .line 50
    add-long/2addr v5, v1

    .line 51
    move-wide v7, p1

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 55
    .line 56
    add-int/lit8 p1, v0, 0x8

    .line 57
    .line 58
    const/16 p2, 0x3a

    .line 59
    .line 60
    aput-byte p2, v4, p1

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x9

    .line 63
    .line 64
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 65
    return-void
.end method

.method public writeName7Raw(J)V
    .locals 9

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v5, v0

    .line 50
    add-long/2addr v5, v1

    .line 51
    move-wide v7, p1

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 55
    .line 56
    add-int/lit8 p1, v0, 0x8

    .line 57
    .line 58
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 59
    int-to-byte p2, p2

    .line 60
    .line 61
    aput-byte p2, v4, p1

    .line 62
    .line 63
    add-int/lit8 p1, v0, 0x9

    .line 64
    .line 65
    const/16 p2, 0x3a

    .line 66
    .line 67
    aput-byte p2, v4, p1

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0xa

    .line 70
    .line 71
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 72
    return-void
.end method

.method public writeName8Raw(J)V
    .locals 9

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 47
    int-to-byte v1, v1

    .line 48
    .line 49
    aput-byte v1, v4, v0

    .line 50
    .line 51
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 52
    .line 53
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 54
    int-to-long v5, v0

    .line 55
    add-long/2addr v1, v5

    .line 56
    .line 57
    const-wide/16 v5, 0x1

    .line 58
    add-long/2addr v5, v1

    .line 59
    move-wide v7, p1

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 63
    .line 64
    add-int/lit8 p1, v0, 0x9

    .line 65
    .line 66
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 67
    int-to-byte p2, p2

    .line 68
    .line 69
    aput-byte p2, v4, p1

    .line 70
    .line 71
    add-int/lit8 p1, v0, 0xa

    .line 72
    .line 73
    const/16 p2, 0x3a

    .line 74
    .line 75
    aput-byte p2, v4, p1

    .line 76
    .line 77
    add-int/lit8 v0, v0, 0xb

    .line 78
    .line 79
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 80
    return-void
.end method

.method public writeName9Raw(JI)V
    .locals 11

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 13
    array-length v3, v2

    .line 14
    .line 15
    if-le v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

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
    aput-byte v2, v4, v0

    .line 35
    .line 36
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    .line 48
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 49
    int-to-long v9, v0

    .line 50
    .line 51
    add-long v5, v1, v9

    .line 52
    move-wide v7, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 56
    add-long/2addr v1, v9

    .line 57
    .line 58
    const-wide/16 p1, 0x8

    .line 59
    add-long/2addr v1, p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4, v1, v2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0xc

    .line 65
    .line 66
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 67
    return-void
.end method

.method public writeNameRaw([B)V
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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 4
    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

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
    aput-byte v4, v2, v0

    .line 9
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent([BI)I

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

.method public writeNameRaw([BII)V
    .locals 2

    .line 13
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 15
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeComma()V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeNameRaw([C)V
    .locals 1

    .line 21
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeNameRaw([CII)V
    .locals 0

    .line 22
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRaw(C)V
    .locals 3

    const/16 v0, 0x80

    if-gt p1, v0, :cond_1

    .line 20
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 23
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRaw(CC)V
    .locals 3

    .line 24
    const-string v0, "not support "

    const/16 v1, 0x80

    if-gt p1, v1, :cond_2

    if-gt p2, v1, :cond_1

    .line 25
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    .line 26
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 27
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    int-to-byte p1, p2

    .line 29
    aput-byte p1, v2, v1

    add-int/lit8 v0, v0, 0x2

    .line 30
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    .line 31
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    .line 4
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 8
    aget-char v3, p1, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    .line 9
    aput-byte v3, v1, v0

    :goto_1
    move v0, v4

    goto :goto_3

    :cond_1
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_2

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    .line 10
    aput-byte v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 11
    aput-byte v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 12
    aput-byte v5, v1, v0

    move v0, v4

    :goto_2
    add-int/lit8 v4, v0, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 13
    aput-byte v3, v1, v0

    goto :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw([B)V
    .locals 4

    .line 15
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeReference(Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->lastReference:Ljava/lang/String;

    .line 3
    .line 4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 7
    .line 8
    add-int/lit8 v2, v0, 0x8

    .line 9
    array-length v3, v1

    .line 10
    .line 11
    if-le v2, v3, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 15
    move-result-object v1

    .line 16
    .line 17
    :cond_0
    const/16 v3, 0x7b

    .line 18
    .line 19
    aput-byte v3, v1, v0

    .line 20
    .line 21
    add-int/lit8 v3, v0, 0x1

    .line 22
    .line 23
    const/16 v4, 0x22

    .line 24
    .line 25
    aput-byte v4, v1, v3

    .line 26
    .line 27
    add-int/lit8 v3, v0, 0x2

    .line 28
    .line 29
    const/16 v5, 0x24

    .line 30
    .line 31
    aput-byte v5, v1, v3

    .line 32
    .line 33
    add-int/lit8 v3, v0, 0x3

    .line 34
    .line 35
    const/16 v5, 0x72

    .line 36
    .line 37
    aput-byte v5, v1, v3

    .line 38
    .line 39
    add-int/lit8 v3, v0, 0x4

    .line 40
    .line 41
    const/16 v5, 0x65

    .line 42
    .line 43
    aput-byte v5, v1, v3

    .line 44
    .line 45
    add-int/lit8 v3, v0, 0x5

    .line 46
    .line 47
    const/16 v5, 0x66

    .line 48
    .line 49
    aput-byte v5, v1, v3

    .line 50
    .line 51
    add-int/lit8 v3, v0, 0x6

    .line 52
    .line 53
    aput-byte v4, v1, v3

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x7

    .line 56
    .line 57
    const/16 v3, 0x3a

    .line 58
    .line 59
    aput-byte v3, v1, v0

    .line 60
    .line 61
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    .line 65
    .line 66
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 67
    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 69
    array-length v1, v0

    .line 70
    .line 71
    if-ne p1, v1, :cond_1

    .line 72
    .line 73
    add-int/lit8 v0, p1, 0x1

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 77
    move-result-object v0

    .line 78
    .line 79
    :cond_1
    const/16 v1, 0x7d

    .line 80
    .line 81
    aput-byte v1, v0, p1

    .line 82
    .line 83
    add-int/lit8 p1, p1, 0x1

    .line 84
    .line 85
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 86
    return-void
.end method

.method public writeString(B)V
    .locals 4

    .line 41
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

    .line 42
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeQuote()V

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt8(B)V

    if-eqz v0, :cond_2

    .line 44
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeQuote()V

    :cond_2
    return-void
.end method

.method public writeString(I)V
    .locals 4

    .line 49
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

    .line 50
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeQuote()V

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt32(I)V

    if-eqz v0, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeQuote()V

    :cond_2
    return-void
.end method

.method public writeString(J)V
    .locals 4

    .line 53
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

    .line 54
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeQuote()V

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt64(J)V

    if-eqz v0, :cond_2

    .line 56
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeQuote()V

    :cond_2
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 12

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v0, 0x0

    const/4 v4, 0x1

    move-wide v8, v2

    if-eqz p1, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v0

    .line 18
    :goto_0
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v8, v10

    cmp-long p1, v8, v6

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v4

    move v4, v0

    .line 19
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 20
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x2

    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    .line 21
    :cond_3
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    .line 22
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v6, v6

    if-lt v5, v6, :cond_5

    .line 23
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 24
    :cond_5
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v6, v2, 0x1

    .line 25
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    .line 26
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 27
    aget-char v2, v1, v0

    .line 28
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v2, v7, :cond_7

    const/16 v7, 0x5c

    if-eq v2, v7, :cond_7

    const/16 v7, 0x20

    if-lt v2, v7, :cond_7

    const/16 v7, 0x7f

    if-gt v2, v7, :cond_7

    if-eqz v3, :cond_6

    const/16 v7, 0x3c

    if-eq v2, v7, :cond_7

    const/16 v7, 0x3e

    if-eq v2, v7, :cond_7

    const/16 v7, 0x28

    if-eq v2, v7, :cond_7

    const/16 v7, 0x29

    if-ne v2, v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v6, 0x1

    int-to-byte v2, v2

    .line 29
    aput-byte v2, v5, v6

    add-int/lit8 v0, v0, 0x1

    move v6, v7

    goto :goto_2

    .line 30
    :cond_7
    :goto_3
    array-length v2, v1

    if-ne v0, v2, :cond_8

    .line 31
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v0, v0

    aput-byte v0, v5, v6

    add-int/2addr v6, p1

    .line 32
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    .line 33
    :cond_8
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 34
    array-length p1, v1

    if-ge v0, p1, :cond_9

    .line 35
    array-length v2, v1

    move v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringEscapedRest([CIZZI)V

    goto :goto_4

    :cond_9
    move-object v0, p0

    .line 36
    :goto_4
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v2, v2

    aput-byte v2, p1, v1

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

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->grow(I)[B

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    if-eqz v1, :cond_3

    .line 7
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v4, 0x2c

    aput-byte v4, v2, v3

    .line 10
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v0, v0

    if-ne p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v1, 0x5d

    aput-byte v1, p1, v0

    return-void
.end method

.method public writeString(S)V
    .locals 4

    .line 45
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

    .line 46
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeQuote()V

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt16(S)V

    if-eqz v0, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeQuote()V

    :cond_2
    return-void
.end method

.method public writeString(Z)V
    .locals 4

    .line 37
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v0, v0

    .line 38
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    aput-byte v0, v1, v2

    .line 39
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 40
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    aput-byte v0, p1, v1

    return-void
.end method

.method public writeString([C)V
    .locals 13

    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 58
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

    move v10, v6

    goto :goto_0

    :cond_1
    move v10, v3

    .line 59
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v11, v6

    goto :goto_1

    :cond_2
    move v11, v3

    .line 60
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 61
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    if-nez v11, :cond_3

    if-eqz v10, :cond_4

    .line 62
    :cond_3
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 63
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_5

    .line 64
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 65
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    .line 66
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    move v12, v3

    .line 67
    :goto_2
    array-length v0, p1

    if-ge v12, v0, :cond_7

    .line 68
    aget-char v0, p1, v12

    .line 69
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v0, v3, :cond_7

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_7

    const/16 v3, 0x20

    if-lt v0, v3, :cond_7

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_7

    if-eqz v10, :cond_6

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_7

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_7

    const/16 v3, 0x28

    if-eq v0, v3, :cond_7

    const/16 v3, 0x29

    if-ne v0, v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    .line 70
    aput-byte v0, v1, v2

    add-int/lit8 v12, v12, 0x1

    move v2, v3

    goto :goto_2

    .line 71
    :cond_7
    :goto_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 72
    array-length v0, p1

    sub-int/2addr v0, v12

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v0, v0

    if-lt v2, v0, :cond_8

    .line 74
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 75
    :cond_8
    array-length v0, p1

    if-ge v12, v0, :cond_9

    .line 76
    array-length v9, p1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringEscapedRest([CIZZI)V

    goto :goto_4

    :cond_9
    move-object v7, p0

    .line 77
    :goto_4
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public writeString([CII)V
    .locals 10

    if-nez p1, :cond_1

    .line 78
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_1
    add-int v2, p2, p3

    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v4

    .line 82
    :goto_0
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    move v4, v7

    .line 83
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 p3, p3, 0x3

    add-int v1, v0, p3

    add-int/lit8 v1, v1, 0x2

    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    add-int/2addr v1, p3

    .line 84
    :cond_5
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length p3, p3

    if-lt v1, p3, :cond_6

    .line 85
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 86
    :cond_6
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v1, v0, 0x1

    .line 87
    iget-char v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    move v5, p2

    :goto_1
    if-ge v5, v2, :cond_8

    .line 88
    aget-char p2, p1, v5

    .line 89
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq p2, v0, :cond_8

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_8

    const/16 v0, 0x20

    if-lt p2, v0, :cond_8

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_8

    if-eqz v3, :cond_7

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_8

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_8

    const/16 v0, 0x28

    if-eq p2, v0, :cond_8

    const/16 v0, 0x29

    if-ne p2, v0, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    int-to-byte p2, p2

    .line 90
    aput-byte p2, p3, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_1

    .line 91
    :cond_8
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    sub-int p2, v2, v5

    mul-int/lit8 p2, p2, 0x6

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x2

    .line 92
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length p2, p2

    if-lt v1, p2, :cond_9

    .line 93
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    :cond_9
    move-object v0, p0

    if-ge v5, v2, :cond_a

    move-object v1, p1

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringEscapedRest([CIZZI)V

    .line 95
    :cond_a
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget p2, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 p3, p2, 0x1

    iput p3, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char p3, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method public writeString([CIIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 96
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 97
    :goto_0
    iget v4, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v5, v1

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    const/4 v5, 0x2

    add-int/2addr v4, v5

    if-eqz v2, :cond_1

    mul-int/lit8 v6, p3, 0x3

    add-int/2addr v4, v6

    .line 98
    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v6, v6

    if-lt v4, v6, :cond_2

    .line 99
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 100
    :cond_2
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 101
    iget v6, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-eqz p4, :cond_3

    add-int/lit8 v7, v6, 0x1

    .line 102
    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    move v6, v7

    :cond_3
    add-int v7, p2, p3

    move v8, v6

    move/from16 v6, p2

    :goto_1
    const/16 v9, 0x7f

    const/16 v10, 0x5c

    if-ge v6, v7, :cond_5

    .line 103
    aget-char v11, v1, v6

    .line 104
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v11, v12, :cond_5

    if-eq v11, v10, :cond_5

    const/16 v12, 0x20

    if-lt v11, v12, :cond_5

    if-le v11, v9, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v8, 0x1

    int-to-byte v10, v11

    .line 105
    aput-byte v10, v4, v8

    add-int/lit8 v6, v6, 0x1

    move v8, v9

    goto :goto_1

    :cond_5
    :goto_2
    if-ne v6, v7, :cond_7

    if-eqz p4, :cond_6

    add-int/lit8 v1, v8, 0x1

    .line 106
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    move v8, v1

    .line 107
    :cond_6
    iput v8, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :cond_7
    :goto_3
    if-ge v6, v7, :cond_12

    .line 108
    aget-char v11, v1, v6

    const/16 v12, 0x75

    if-gt v11, v9, :cond_a

    if-eq v11, v10, :cond_9

    const/16 v13, 0x31

    const/16 v14, 0x30

    packed-switch v11, :pswitch_data_0

    .line 109
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-ne v11, v12, :cond_8

    .line 110
    aput-byte v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    int-to-byte v12, v12

    .line 111
    aput-byte v12, v4, v11

    :goto_4
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_8

    :cond_8
    add-int/lit8 v12, v8, 0x1

    int-to-byte v11, v11

    .line 112
    aput-byte v11, v4, v8

    move v8, v12

    goto/16 :goto_8

    .line 113
    :pswitch_0
    aput-byte v10, v4, v8

    add-int/lit8 v15, v8, 0x1

    .line 114
    aput-byte v12, v4, v15

    add-int/lit8 v12, v8, 0x2

    .line 115
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x3

    .line 116
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x4

    .line 117
    aput-byte v13, v4, v12

    add-int/lit8 v12, v8, 0x5

    add-int/lit8 v11, v11, 0x47

    int-to-byte v11, v11

    .line 118
    aput-byte v11, v4, v12

    :goto_5
    add-int/lit8 v8, v8, 0x6

    goto/16 :goto_8

    .line 119
    :pswitch_1
    aput-byte v10, v4, v8

    add-int/lit8 v15, v8, 0x1

    .line 120
    aput-byte v12, v4, v15

    add-int/lit8 v12, v8, 0x2

    .line 121
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x3

    .line 122
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x4

    .line 123
    aput-byte v13, v4, v12

    add-int/lit8 v12, v8, 0x5

    add-int/lit8 v11, v11, 0x20

    int-to-byte v11, v11

    .line 124
    aput-byte v11, v4, v12

    goto :goto_5

    .line 125
    :pswitch_2
    aput-byte v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    const/16 v12, 0x72

    .line 126
    aput-byte v12, v4, v11

    goto :goto_4

    .line 127
    :pswitch_3
    aput-byte v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    const/16 v12, 0x66

    .line 128
    aput-byte v12, v4, v11

    goto :goto_4

    .line 129
    :pswitch_4
    aput-byte v10, v4, v8

    add-int/lit8 v13, v8, 0x1

    .line 130
    aput-byte v12, v4, v13

    add-int/lit8 v12, v8, 0x2

    .line 131
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x3

    .line 132
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x4

    .line 133
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x5

    add-int/lit8 v11, v11, 0x57

    int-to-byte v11, v11

    .line 134
    aput-byte v11, v4, v12

    goto :goto_5

    .line 135
    :pswitch_5
    aput-byte v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    const/16 v12, 0x6e

    .line 136
    aput-byte v12, v4, v11

    goto :goto_4

    .line 137
    :pswitch_6
    aput-byte v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    const/16 v12, 0x74

    .line 138
    aput-byte v12, v4, v11

    goto/16 :goto_4

    .line 139
    :pswitch_7
    aput-byte v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    const/16 v12, 0x62

    .line 140
    aput-byte v12, v4, v11

    goto/16 :goto_4

    .line 141
    :pswitch_8
    aput-byte v10, v4, v8

    add-int/lit8 v13, v8, 0x1

    .line 142
    aput-byte v12, v4, v13

    add-int/lit8 v12, v8, 0x2

    .line 143
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x3

    .line 144
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x4

    .line 145
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x5

    add-int/lit8 v11, v11, 0x30

    int-to-byte v11, v11

    .line 146
    aput-byte v11, v4, v12

    goto/16 :goto_5

    .line 147
    :cond_9
    aput-byte v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    .line 148
    aput-byte v10, v4, v11

    goto/16 :goto_4

    :cond_a
    if-eqz v2, :cond_b

    .line 149
    aput-byte v10, v4, v8

    add-int/lit8 v13, v8, 0x1

    .line 150
    aput-byte v12, v4, v13

    add-int/lit8 v12, v8, 0x2

    .line 151
    sget-object v13, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    ushr-int/lit8 v14, v11, 0xc

    and-int/lit8 v14, v14, 0xf

    aget-char v14, v13, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x3

    ushr-int/lit8 v14, v11, 0x8

    and-int/lit8 v14, v14, 0xf

    .line 152
    aget-char v14, v13, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x4

    ushr-int/lit8 v14, v11, 0x4

    and-int/lit8 v14, v14, 0xf

    .line 153
    aget-char v14, v13, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x5

    and-int/lit8 v11, v11, 0xf

    .line 154
    aget-char v11, v13, v11

    int-to-byte v11, v11

    aput-byte v11, v4, v12

    goto/16 :goto_5

    :cond_b
    const v12, 0xd800

    const/16 v13, 0x3f

    if-lt v11, v12, :cond_10

    const v12, 0xe000

    if-ge v11, v12, :cond_10

    const v14, 0xdc00

    if-ge v11, v14, :cond_f

    .line 155
    array-length v15, v1

    sub-int/2addr v15, v6

    if-ge v15, v5, :cond_c

    const/4 v11, -0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v15, v6, 0x1

    .line 156
    aget-char v15, v1, v15

    if-lt v15, v14, :cond_e

    if-ge v15, v12, :cond_e

    shl-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v15

    const v12, -0x35fdc00

    add-int/2addr v11, v12

    :goto_6
    if-gez v11, :cond_d

    add-int/lit8 v11, v8, 0x1

    .line 157
    aput-byte v13, v4, v8

    goto :goto_7

    :cond_d
    shr-int/lit8 v12, v11, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    .line 158
    aput-byte v12, v4, v8

    add-int/lit8 v12, v8, 0x1

    shr-int/lit8 v14, v11, 0xc

    and-int/2addr v14, v13

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    .line 159
    aput-byte v14, v4, v12

    add-int/lit8 v12, v8, 0x2

    shr-int/lit8 v14, v11, 0x6

    and-int/2addr v13, v14

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    .line 160
    aput-byte v13, v4, v12

    add-int/lit8 v12, v8, 0x3

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    .line 161
    aput-byte v11, v4, v12

    add-int/lit8 v11, v8, 0x4

    add-int/lit8 v6, v6, 0x1

    :goto_7
    move v8, v11

    goto :goto_8

    :cond_e
    add-int/lit8 v11, v8, 0x1

    .line 162
    aput-byte v13, v4, v8

    goto :goto_7

    :cond_f
    add-int/lit8 v11, v8, 0x1

    .line 163
    aput-byte v13, v4, v8

    goto :goto_7

    :cond_10
    const/16 v12, 0x7ff

    if-le v11, v12, :cond_11

    shr-int/lit8 v12, v11, 0xc

    and-int/lit8 v12, v12, 0xf

    or-int/lit16 v12, v12, 0xe0

    int-to-byte v12, v12

    .line 164
    aput-byte v12, v4, v8

    add-int/lit8 v12, v8, 0x1

    shr-int/lit8 v14, v11, 0x6

    and-int/2addr v13, v14

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    .line 165
    aput-byte v13, v4, v12

    add-int/lit8 v12, v8, 0x2

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    .line 166
    aput-byte v11, v4, v12

    add-int/lit8 v8, v8, 0x3

    goto :goto_8

    :cond_11
    shr-int/lit8 v12, v11, 0x6

    and-int/lit8 v12, v12, 0x1f

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    .line 167
    aput-byte v12, v4, v8

    add-int/lit8 v12, v8, 0x1

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    .line 168
    aput-byte v11, v4, v12

    goto/16 :goto_4

    :goto_8
    add-int/2addr v6, v3

    goto/16 :goto_3

    :cond_12
    if-eqz p4, :cond_13

    add-int/lit8 v1, v8, 0x1

    .line 169
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    move v8, v1

    .line 170
    :cond_13
    iput v8, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

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

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startArray()V

    const/4 v0, 0x0

    .line 173
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeComma()V

    .line 175
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 176
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->endArray()V

    return-void
.end method

.method public writeStringEscaped([B)V
    .locals 10

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    array-length v1, p1

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x6

    .line 6
    add-int/2addr v0, v1

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 11
    array-length v1, v1

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 19
    .line 20
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 21
    .line 22
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 23
    .line 24
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 25
    and-long/2addr v0, v2

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v0, v1

    .line 37
    .line 38
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 39
    .line 40
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 41
    .line 42
    add-int/lit8 v5, v4, 0x1

    .line 43
    .line 44
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 45
    int-to-byte v6, v6

    .line 46
    .line 47
    aput-byte v6, v3, v4

    .line 48
    :goto_1
    array-length v4, p1

    .line 49
    .line 50
    if-ge v1, v4, :cond_7

    .line 51
    .line 52
    aget-byte v4, p1, v1

    .line 53
    .line 54
    const/16 v6, 0x28

    .line 55
    .line 56
    const/16 v7, 0x75

    .line 57
    .line 58
    const/16 v8, 0x30

    .line 59
    .line 60
    const/16 v9, 0x5c

    .line 61
    .line 62
    if-eq v4, v6, :cond_5

    .line 63
    .line 64
    const/16 v6, 0x29

    .line 65
    .line 66
    if-eq v4, v6, :cond_5

    .line 67
    .line 68
    const/16 v6, 0x3c

    .line 69
    .line 70
    if-eq v4, v6, :cond_5

    .line 71
    .line 72
    const/16 v6, 0x3e

    .line 73
    .line 74
    if-eq v4, v6, :cond_5

    .line 75
    .line 76
    if-eq v4, v9, :cond_4

    .line 77
    .line 78
    const/16 v6, 0x31

    .line 79
    .line 80
    .line 81
    packed-switch v4, :pswitch_data_0

    .line 82
    .line 83
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 84
    .line 85
    if-ne v4, v6, :cond_2

    .line 86
    .line 87
    aput-byte v9, v3, v5

    .line 88
    .line 89
    add-int/lit8 v4, v5, 0x1

    .line 90
    int-to-byte v6, v6

    .line 91
    .line 92
    aput-byte v6, v3, v4

    .line 93
    .line 94
    :goto_2
    add-int/lit8 v5, v5, 0x2

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_2
    if-gez v4, :cond_3

    .line 99
    .line 100
    and-int/lit16 v6, v4, 0xff

    .line 101
    .line 102
    shr-int/lit8 v6, v6, 0x6

    .line 103
    .line 104
    or-int/lit16 v6, v6, 0xc0

    .line 105
    int-to-byte v6, v6

    .line 106
    .line 107
    aput-byte v6, v3, v5

    .line 108
    .line 109
    add-int/lit8 v6, v5, 0x1

    .line 110
    .line 111
    and-int/lit8 v4, v4, 0x3f

    .line 112
    .line 113
    or-int/lit16 v4, v4, 0x80

    .line 114
    int-to-byte v4, v4

    .line 115
    .line 116
    aput-byte v4, v3, v6

    .line 117
    goto :goto_2

    .line 118
    .line 119
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .line 120
    .line 121
    aput-byte v4, v3, v5

    .line 122
    :goto_3
    move v5, v6

    .line 123
    .line 124
    goto/16 :goto_5

    .line 125
    .line 126
    :pswitch_0
    aput-byte v9, v3, v5

    .line 127
    .line 128
    add-int/lit8 v9, v5, 0x1

    .line 129
    .line 130
    aput-byte v7, v3, v9

    .line 131
    .line 132
    add-int/lit8 v7, v5, 0x2

    .line 133
    .line 134
    aput-byte v8, v3, v7

    .line 135
    .line 136
    add-int/lit8 v7, v5, 0x3

    .line 137
    .line 138
    aput-byte v8, v3, v7

    .line 139
    .line 140
    add-int/lit8 v7, v5, 0x4

    .line 141
    .line 142
    aput-byte v6, v3, v7

    .line 143
    .line 144
    add-int/lit8 v6, v5, 0x5

    .line 145
    .line 146
    add-int/lit8 v4, v4, 0x47

    .line 147
    int-to-byte v4, v4

    .line 148
    .line 149
    aput-byte v4, v3, v6

    .line 150
    .line 151
    :goto_4
    add-int/lit8 v5, v5, 0x6

    .line 152
    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :pswitch_1
    aput-byte v9, v3, v5

    .line 156
    .line 157
    add-int/lit8 v9, v5, 0x1

    .line 158
    .line 159
    aput-byte v7, v3, v9

    .line 160
    .line 161
    add-int/lit8 v7, v5, 0x2

    .line 162
    .line 163
    aput-byte v8, v3, v7

    .line 164
    .line 165
    add-int/lit8 v7, v5, 0x3

    .line 166
    .line 167
    aput-byte v8, v3, v7

    .line 168
    .line 169
    add-int/lit8 v7, v5, 0x4

    .line 170
    .line 171
    aput-byte v6, v3, v7

    .line 172
    .line 173
    add-int/lit8 v6, v5, 0x5

    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x20

    .line 176
    int-to-byte v4, v4

    .line 177
    .line 178
    aput-byte v4, v3, v6

    .line 179
    goto :goto_4

    .line 180
    .line 181
    :pswitch_2
    aput-byte v9, v3, v5

    .line 182
    .line 183
    add-int/lit8 v4, v5, 0x1

    .line 184
    .line 185
    const/16 v6, 0x72

    .line 186
    .line 187
    aput-byte v6, v3, v4

    .line 188
    goto :goto_2

    .line 189
    .line 190
    :pswitch_3
    aput-byte v9, v3, v5

    .line 191
    .line 192
    add-int/lit8 v4, v5, 0x1

    .line 193
    .line 194
    const/16 v6, 0x66

    .line 195
    .line 196
    aput-byte v6, v3, v4

    .line 197
    goto :goto_2

    .line 198
    .line 199
    :pswitch_4
    aput-byte v9, v3, v5

    .line 200
    .line 201
    add-int/lit8 v6, v5, 0x1

    .line 202
    .line 203
    aput-byte v7, v3, v6

    .line 204
    .line 205
    add-int/lit8 v6, v5, 0x2

    .line 206
    .line 207
    aput-byte v8, v3, v6

    .line 208
    .line 209
    add-int/lit8 v6, v5, 0x3

    .line 210
    .line 211
    aput-byte v8, v3, v6

    .line 212
    .line 213
    add-int/lit8 v6, v5, 0x4

    .line 214
    .line 215
    aput-byte v8, v3, v6

    .line 216
    .line 217
    add-int/lit8 v6, v5, 0x5

    .line 218
    .line 219
    add-int/lit8 v4, v4, 0x57

    .line 220
    int-to-byte v4, v4

    .line 221
    .line 222
    aput-byte v4, v3, v6

    .line 223
    goto :goto_4

    .line 224
    .line 225
    :pswitch_5
    aput-byte v9, v3, v5

    .line 226
    .line 227
    add-int/lit8 v4, v5, 0x1

    .line 228
    .line 229
    const/16 v6, 0x6e

    .line 230
    .line 231
    aput-byte v6, v3, v4

    .line 232
    .line 233
    goto/16 :goto_2

    .line 234
    .line 235
    :pswitch_6
    aput-byte v9, v3, v5

    .line 236
    .line 237
    add-int/lit8 v4, v5, 0x1

    .line 238
    .line 239
    const/16 v6, 0x74

    .line 240
    .line 241
    aput-byte v6, v3, v4

    .line 242
    .line 243
    goto/16 :goto_2

    .line 244
    .line 245
    :pswitch_7
    aput-byte v9, v3, v5

    .line 246
    .line 247
    add-int/lit8 v4, v5, 0x1

    .line 248
    .line 249
    const/16 v6, 0x62

    .line 250
    .line 251
    aput-byte v6, v3, v4

    .line 252
    .line 253
    goto/16 :goto_2

    .line 254
    .line 255
    :pswitch_8
    aput-byte v9, v3, v5

    .line 256
    .line 257
    add-int/lit8 v6, v5, 0x1

    .line 258
    .line 259
    aput-byte v7, v3, v6

    .line 260
    .line 261
    add-int/lit8 v6, v5, 0x2

    .line 262
    .line 263
    aput-byte v8, v3, v6

    .line 264
    .line 265
    add-int/lit8 v6, v5, 0x3

    .line 266
    .line 267
    aput-byte v8, v3, v6

    .line 268
    .line 269
    add-int/lit8 v6, v5, 0x4

    .line 270
    .line 271
    aput-byte v8, v3, v6

    .line 272
    .line 273
    add-int/lit8 v6, v5, 0x5

    .line 274
    .line 275
    add-int/lit8 v4, v4, 0x30

    .line 276
    int-to-byte v4, v4

    .line 277
    .line 278
    aput-byte v4, v3, v6

    .line 279
    .line 280
    goto/16 :goto_4

    .line 281
    .line 282
    :cond_4
    aput-byte v9, v3, v5

    .line 283
    .line 284
    add-int/lit8 v4, v5, 0x1

    .line 285
    .line 286
    aput-byte v9, v3, v4

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :cond_5
    if-eqz v0, :cond_6

    .line 291
    .line 292
    aput-byte v9, v3, v5

    .line 293
    .line 294
    add-int/lit8 v6, v5, 0x1

    .line 295
    .line 296
    aput-byte v7, v3, v6

    .line 297
    .line 298
    add-int/lit8 v6, v5, 0x2

    .line 299
    .line 300
    aput-byte v8, v3, v6

    .line 301
    .line 302
    add-int/lit8 v6, v5, 0x3

    .line 303
    .line 304
    aput-byte v8, v3, v6

    .line 305
    .line 306
    add-int/lit8 v6, v5, 0x4

    .line 307
    .line 308
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    .line 309
    .line 310
    ushr-int/lit8 v8, v4, 0x4

    .line 311
    .line 312
    and-int/lit8 v8, v8, 0xf

    .line 313
    .line 314
    aget-char v8, v7, v8

    .line 315
    int-to-byte v8, v8

    .line 316
    .line 317
    aput-byte v8, v3, v6

    .line 318
    .line 319
    add-int/lit8 v6, v5, 0x5

    .line 320
    .line 321
    and-int/lit8 v4, v4, 0xf

    .line 322
    .line 323
    aget-char v4, v7, v4

    .line 324
    int-to-byte v4, v4

    .line 325
    .line 326
    aput-byte v4, v3, v6

    .line 327
    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :cond_6
    add-int/lit8 v6, v5, 0x1

    .line 331
    .line 332
    aput-byte v4, v3, v5

    .line 333
    .line 334
    goto/16 :goto_3

    .line 335
    .line 336
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 341
    int-to-byte p1, p1

    .line 342
    .line 343
    aput-byte p1, v3, v5

    .line 344
    add-int/2addr v5, v2

    .line 345
    .line 346
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 347
    return-void

    .line 348
    nop

    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
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

.method public final writeStringEscapedRest([CIZZI)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    sub-int/2addr v0, p5

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 5
    .line 6
    mul-int/lit8 v0, v0, 0x6

    .line 7
    add-int/2addr v1, v0

    .line 8
    const/4 v0, 0x2

    .line 9
    add-int/2addr v1, v0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 12
    array-length v2, v2

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 20
    .line 21
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 22
    .line 23
    :goto_0
    if-ge p5, p2, :cond_d

    .line 24
    .line 25
    aget-char v3, p1, p5

    .line 26
    .line 27
    const/16 v4, 0x7f

    .line 28
    .line 29
    const/16 v5, 0x75

    .line 30
    .line 31
    const/16 v6, 0x5c

    .line 32
    .line 33
    if-gt v3, v4, :cond_5

    .line 34
    .line 35
    const/16 v4, 0x28

    .line 36
    .line 37
    const/16 v7, 0x30

    .line 38
    .line 39
    if-eq v3, v4, :cond_3

    .line 40
    .line 41
    const/16 v4, 0x29

    .line 42
    .line 43
    if-eq v3, v4, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x3c

    .line 46
    .line 47
    if-eq v3, v4, :cond_3

    .line 48
    .line 49
    const/16 v4, 0x3e

    .line 50
    .line 51
    if-eq v3, v4, :cond_3

    .line 52
    .line 53
    if-eq v3, v6, :cond_2

    .line 54
    .line 55
    const/16 v4, 0x31

    .line 56
    .line 57
    .line 58
    packed-switch v3, :pswitch_data_0

    .line 59
    .line 60
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 61
    .line 62
    if-ne v3, v4, :cond_1

    .line 63
    .line 64
    aput-byte v6, v1, v2

    .line 65
    .line 66
    add-int/lit8 v3, v2, 0x1

    .line 67
    int-to-byte v4, v4

    .line 68
    .line 69
    aput-byte v4, v1, v3

    .line 70
    .line 71
    :goto_1
    add-int/lit8 v2, v2, 0x2

    .line 72
    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 76
    int-to-byte v3, v3

    .line 77
    .line 78
    aput-byte v3, v1, v2

    .line 79
    :goto_2
    move v2, v4

    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :pswitch_0
    aput-byte v6, v1, v2

    .line 84
    .line 85
    add-int/lit8 v6, v2, 0x1

    .line 86
    .line 87
    aput-byte v5, v1, v6

    .line 88
    .line 89
    add-int/lit8 v5, v2, 0x2

    .line 90
    .line 91
    aput-byte v7, v1, v5

    .line 92
    .line 93
    add-int/lit8 v5, v2, 0x3

    .line 94
    .line 95
    aput-byte v7, v1, v5

    .line 96
    .line 97
    add-int/lit8 v5, v2, 0x4

    .line 98
    .line 99
    aput-byte v4, v1, v5

    .line 100
    .line 101
    add-int/lit8 v4, v2, 0x5

    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x47

    .line 104
    int-to-byte v3, v3

    .line 105
    .line 106
    aput-byte v3, v1, v4

    .line 107
    .line 108
    :goto_3
    add-int/lit8 v2, v2, 0x6

    .line 109
    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :pswitch_1
    aput-byte v6, v1, v2

    .line 113
    .line 114
    add-int/lit8 v6, v2, 0x1

    .line 115
    .line 116
    aput-byte v5, v1, v6

    .line 117
    .line 118
    add-int/lit8 v5, v2, 0x2

    .line 119
    .line 120
    aput-byte v7, v1, v5

    .line 121
    .line 122
    add-int/lit8 v5, v2, 0x3

    .line 123
    .line 124
    aput-byte v7, v1, v5

    .line 125
    .line 126
    add-int/lit8 v5, v2, 0x4

    .line 127
    .line 128
    aput-byte v4, v1, v5

    .line 129
    .line 130
    add-int/lit8 v4, v2, 0x5

    .line 131
    .line 132
    add-int/lit8 v3, v3, 0x20

    .line 133
    int-to-byte v3, v3

    .line 134
    .line 135
    aput-byte v3, v1, v4

    .line 136
    goto :goto_3

    .line 137
    .line 138
    :pswitch_2
    aput-byte v6, v1, v2

    .line 139
    .line 140
    add-int/lit8 v3, v2, 0x1

    .line 141
    .line 142
    const/16 v4, 0x72

    .line 143
    .line 144
    aput-byte v4, v1, v3

    .line 145
    goto :goto_1

    .line 146
    .line 147
    :pswitch_3
    aput-byte v6, v1, v2

    .line 148
    .line 149
    add-int/lit8 v3, v2, 0x1

    .line 150
    .line 151
    const/16 v4, 0x66

    .line 152
    .line 153
    aput-byte v4, v1, v3

    .line 154
    goto :goto_1

    .line 155
    .line 156
    :pswitch_4
    aput-byte v6, v1, v2

    .line 157
    .line 158
    add-int/lit8 v4, v2, 0x1

    .line 159
    .line 160
    aput-byte v5, v1, v4

    .line 161
    .line 162
    add-int/lit8 v4, v2, 0x2

    .line 163
    .line 164
    aput-byte v7, v1, v4

    .line 165
    .line 166
    add-int/lit8 v4, v2, 0x3

    .line 167
    .line 168
    aput-byte v7, v1, v4

    .line 169
    .line 170
    add-int/lit8 v4, v2, 0x4

    .line 171
    .line 172
    aput-byte v7, v1, v4

    .line 173
    .line 174
    add-int/lit8 v4, v2, 0x5

    .line 175
    .line 176
    add-int/lit8 v3, v3, 0x57

    .line 177
    int-to-byte v3, v3

    .line 178
    .line 179
    aput-byte v3, v1, v4

    .line 180
    goto :goto_3

    .line 181
    .line 182
    :pswitch_5
    aput-byte v6, v1, v2

    .line 183
    .line 184
    add-int/lit8 v3, v2, 0x1

    .line 185
    .line 186
    const/16 v4, 0x6e

    .line 187
    .line 188
    aput-byte v4, v1, v3

    .line 189
    goto :goto_1

    .line 190
    .line 191
    :pswitch_6
    aput-byte v6, v1, v2

    .line 192
    .line 193
    add-int/lit8 v3, v2, 0x1

    .line 194
    .line 195
    const/16 v4, 0x74

    .line 196
    .line 197
    aput-byte v4, v1, v3

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :pswitch_7
    aput-byte v6, v1, v2

    .line 202
    .line 203
    add-int/lit8 v3, v2, 0x1

    .line 204
    .line 205
    const/16 v4, 0x62

    .line 206
    .line 207
    aput-byte v4, v1, v3

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :pswitch_8
    aput-byte v6, v1, v2

    .line 212
    .line 213
    add-int/lit8 v4, v2, 0x1

    .line 214
    .line 215
    aput-byte v5, v1, v4

    .line 216
    .line 217
    add-int/lit8 v4, v2, 0x2

    .line 218
    .line 219
    aput-byte v7, v1, v4

    .line 220
    .line 221
    add-int/lit8 v4, v2, 0x3

    .line 222
    .line 223
    aput-byte v7, v1, v4

    .line 224
    .line 225
    add-int/lit8 v4, v2, 0x4

    .line 226
    .line 227
    aput-byte v7, v1, v4

    .line 228
    .line 229
    add-int/lit8 v4, v2, 0x5

    .line 230
    .line 231
    add-int/lit8 v3, v3, 0x30

    .line 232
    int-to-byte v3, v3

    .line 233
    .line 234
    aput-byte v3, v1, v4

    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :cond_2
    aput-byte v6, v1, v2

    .line 239
    .line 240
    add-int/lit8 v3, v2, 0x1

    .line 241
    .line 242
    aput-byte v6, v1, v3

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :cond_3
    if-eqz p3, :cond_4

    .line 247
    .line 248
    aput-byte v6, v1, v2

    .line 249
    .line 250
    add-int/lit8 v4, v2, 0x1

    .line 251
    .line 252
    aput-byte v5, v1, v4

    .line 253
    .line 254
    add-int/lit8 v4, v2, 0x2

    .line 255
    .line 256
    aput-byte v7, v1, v4

    .line 257
    .line 258
    add-int/lit8 v4, v2, 0x3

    .line 259
    .line 260
    aput-byte v7, v1, v4

    .line 261
    .line 262
    add-int/lit8 v4, v2, 0x4

    .line 263
    .line 264
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    .line 265
    .line 266
    ushr-int/lit8 v6, v3, 0x4

    .line 267
    .line 268
    and-int/lit8 v6, v6, 0xf

    .line 269
    .line 270
    aget-char v6, v5, v6

    .line 271
    int-to-byte v6, v6

    .line 272
    .line 273
    aput-byte v6, v1, v4

    .line 274
    .line 275
    add-int/lit8 v4, v2, 0x5

    .line 276
    .line 277
    and-int/lit8 v3, v3, 0xf

    .line 278
    .line 279
    aget-char v3, v5, v3

    .line 280
    int-to-byte v3, v3

    .line 281
    .line 282
    aput-byte v3, v1, v4

    .line 283
    .line 284
    goto/16 :goto_3

    .line 285
    .line 286
    :cond_4
    add-int/lit8 v4, v2, 0x1

    .line 287
    int-to-byte v3, v3

    .line 288
    .line 289
    aput-byte v3, v1, v2

    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :cond_5
    if-eqz p4, :cond_6

    .line 294
    .line 295
    aput-byte v6, v1, v2

    .line 296
    .line 297
    add-int/lit8 v4, v2, 0x1

    .line 298
    .line 299
    aput-byte v5, v1, v4

    .line 300
    .line 301
    add-int/lit8 v4, v2, 0x2

    .line 302
    .line 303
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    .line 304
    .line 305
    ushr-int/lit8 v6, v3, 0xc

    .line 306
    .line 307
    and-int/lit8 v6, v6, 0xf

    .line 308
    .line 309
    aget-char v6, v5, v6

    .line 310
    int-to-byte v6, v6

    .line 311
    .line 312
    aput-byte v6, v1, v4

    .line 313
    .line 314
    add-int/lit8 v4, v2, 0x3

    .line 315
    .line 316
    ushr-int/lit8 v6, v3, 0x8

    .line 317
    .line 318
    and-int/lit8 v6, v6, 0xf

    .line 319
    .line 320
    aget-char v6, v5, v6

    .line 321
    int-to-byte v6, v6

    .line 322
    .line 323
    aput-byte v6, v1, v4

    .line 324
    .line 325
    add-int/lit8 v4, v2, 0x4

    .line 326
    .line 327
    ushr-int/lit8 v6, v3, 0x4

    .line 328
    .line 329
    and-int/lit8 v6, v6, 0xf

    .line 330
    .line 331
    aget-char v6, v5, v6

    .line 332
    int-to-byte v6, v6

    .line 333
    .line 334
    aput-byte v6, v1, v4

    .line 335
    .line 336
    add-int/lit8 v4, v2, 0x5

    .line 337
    .line 338
    and-int/lit8 v3, v3, 0xf

    .line 339
    .line 340
    aget-char v3, v5, v3

    .line 341
    int-to-byte v3, v3

    .line 342
    .line 343
    aput-byte v3, v1, v4

    .line 344
    .line 345
    goto/16 :goto_3

    .line 346
    .line 347
    .line 348
    :cond_6
    const v4, 0xd800

    .line 349
    .line 350
    const/16 v5, 0x3f

    .line 351
    .line 352
    if-lt v3, v4, :cond_b

    .line 353
    .line 354
    .line 355
    const v4, 0xe000

    .line 356
    .line 357
    if-ge v3, v4, :cond_b

    .line 358
    .line 359
    .line 360
    const v6, 0xdc00

    .line 361
    .line 362
    if-ge v3, v6, :cond_a

    .line 363
    array-length v7, p1

    .line 364
    sub-int/2addr v7, p5

    .line 365
    .line 366
    if-ge v7, v0, :cond_7

    .line 367
    const/4 v3, -0x1

    .line 368
    goto :goto_4

    .line 369
    .line 370
    :cond_7
    add-int/lit8 v7, p5, 0x1

    .line 371
    .line 372
    aget-char v7, p1, v7

    .line 373
    .line 374
    if-lt v7, v6, :cond_9

    .line 375
    .line 376
    if-ge v7, v4, :cond_9

    .line 377
    .line 378
    shl-int/lit8 v3, v3, 0xa

    .line 379
    add-int/2addr v3, v7

    .line 380
    .line 381
    .line 382
    const v4, -0x35fdc00

    .line 383
    add-int/2addr v3, v4

    .line 384
    .line 385
    :goto_4
    if-gez v3, :cond_8

    .line 386
    .line 387
    add-int/lit8 v3, v2, 0x1

    .line 388
    .line 389
    aput-byte v5, v1, v2

    .line 390
    goto :goto_5

    .line 391
    .line 392
    :cond_8
    shr-int/lit8 v4, v3, 0x12

    .line 393
    .line 394
    or-int/lit16 v4, v4, 0xf0

    .line 395
    int-to-byte v4, v4

    .line 396
    .line 397
    aput-byte v4, v1, v2

    .line 398
    .line 399
    add-int/lit8 v4, v2, 0x1

    .line 400
    .line 401
    shr-int/lit8 v6, v3, 0xc

    .line 402
    and-int/2addr v6, v5

    .line 403
    .line 404
    or-int/lit16 v6, v6, 0x80

    .line 405
    int-to-byte v6, v6

    .line 406
    .line 407
    aput-byte v6, v1, v4

    .line 408
    .line 409
    add-int/lit8 v4, v2, 0x2

    .line 410
    .line 411
    shr-int/lit8 v6, v3, 0x6

    .line 412
    and-int/2addr v5, v6

    .line 413
    .line 414
    or-int/lit16 v5, v5, 0x80

    .line 415
    int-to-byte v5, v5

    .line 416
    .line 417
    aput-byte v5, v1, v4

    .line 418
    .line 419
    add-int/lit8 v4, v2, 0x3

    .line 420
    .line 421
    and-int/lit8 v3, v3, 0x3f

    .line 422
    .line 423
    or-int/lit16 v3, v3, 0x80

    .line 424
    int-to-byte v3, v3

    .line 425
    .line 426
    aput-byte v3, v1, v4

    .line 427
    .line 428
    add-int/lit8 v3, v2, 0x4

    .line 429
    .line 430
    add-int/lit8 p5, p5, 0x1

    .line 431
    :goto_5
    move v2, v3

    .line 432
    goto :goto_6

    .line 433
    .line 434
    :cond_9
    add-int/lit8 v3, v2, 0x1

    .line 435
    .line 436
    aput-byte v5, v1, v2

    .line 437
    goto :goto_5

    .line 438
    .line 439
    :cond_a
    add-int/lit8 v3, v2, 0x1

    .line 440
    .line 441
    aput-byte v5, v1, v2

    .line 442
    goto :goto_5

    .line 443
    .line 444
    :cond_b
    const/16 v4, 0x7ff

    .line 445
    .line 446
    if-le v3, v4, :cond_c

    .line 447
    .line 448
    shr-int/lit8 v4, v3, 0xc

    .line 449
    .line 450
    and-int/lit8 v4, v4, 0xf

    .line 451
    .line 452
    or-int/lit16 v4, v4, 0xe0

    .line 453
    int-to-byte v4, v4

    .line 454
    .line 455
    aput-byte v4, v1, v2

    .line 456
    .line 457
    add-int/lit8 v4, v2, 0x1

    .line 458
    .line 459
    shr-int/lit8 v6, v3, 0x6

    .line 460
    and-int/2addr v5, v6

    .line 461
    .line 462
    or-int/lit16 v5, v5, 0x80

    .line 463
    int-to-byte v5, v5

    .line 464
    .line 465
    aput-byte v5, v1, v4

    .line 466
    .line 467
    add-int/lit8 v4, v2, 0x2

    .line 468
    .line 469
    and-int/lit8 v3, v3, 0x3f

    .line 470
    .line 471
    or-int/lit16 v3, v3, 0x80

    .line 472
    int-to-byte v3, v3

    .line 473
    .line 474
    aput-byte v3, v1, v4

    .line 475
    .line 476
    add-int/lit8 v2, v2, 0x3

    .line 477
    goto :goto_6

    .line 478
    .line 479
    :cond_c
    shr-int/lit8 v4, v3, 0x6

    .line 480
    .line 481
    and-int/lit8 v4, v4, 0x1f

    .line 482
    .line 483
    or-int/lit16 v4, v4, 0xc0

    .line 484
    int-to-byte v4, v4

    .line 485
    .line 486
    aput-byte v4, v1, v2

    .line 487
    .line 488
    add-int/lit8 v4, v2, 0x1

    .line 489
    .line 490
    and-int/lit8 v3, v3, 0x3f

    .line 491
    .line 492
    or-int/lit16 v3, v3, 0x80

    .line 493
    int-to-byte v3, v3

    .line 494
    .line 495
    aput-byte v3, v1, v4

    .line 496
    .line 497
    goto/16 :goto_1

    .line 498
    .line 499
    :goto_6
    add-int/lit8 p5, p5, 0x1

    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_d
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 504
    return-void

    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
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
    const/4 v2, 0x1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    .line 28
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 29
    int-to-byte v3, v3

    .line 30
    move v4, v1

    .line 31
    :goto_1
    array-length v5, p1

    .line 32
    .line 33
    if-ge v4, v5, :cond_4

    .line 34
    .line 35
    aget-byte v5, p1, v4

    .line 36
    .line 37
    if-eq v5, v3, :cond_3

    .line 38
    .line 39
    const/16 v6, 0x5c

    .line 40
    .line 41
    if-eq v5, v6, :cond_3

    .line 42
    .line 43
    const/16 v6, 0x20

    .line 44
    .line 45
    if-lt v5, v6, :cond_3

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/16 v6, 0x3c

    .line 50
    .line 51
    if-eq v5, v6, :cond_3

    .line 52
    .line 53
    const/16 v6, 0x3e

    .line 54
    .line 55
    if-eq v5, v6, :cond_3

    .line 56
    .line 57
    const/16 v6, 0x28

    .line 58
    .line 59
    if-eq v5, v6, :cond_3

    .line 60
    .line 61
    const/16 v6, 0x29

    .line 62
    .line 63
    if-ne v5, v6, :cond_2

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_2
    move v0, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move v0, v1

    .line 71
    .line 72
    :goto_3
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 73
    .line 74
    if-nez v0, :cond_6

    .line 75
    array-length v0, p1

    .line 76
    add-int/2addr v0, v4

    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x2

    .line 79
    .line 80
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 81
    array-length v5, v5

    .line 82
    .line 83
    if-lt v0, v5, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 87
    .line 88
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 89
    .line 90
    aput-byte v3, v0, v4

    .line 91
    .line 92
    add-int/lit8 v5, v4, 0x1

    .line 93
    array-length v6, p1

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length p1, p1

    .line 98
    add-int/2addr p1, v2

    .line 99
    add-int/2addr v4, p1

    .line 100
    .line 101
    aput-byte v3, v0, v4

    .line 102
    add-int/2addr v4, v2

    .line 103
    .line 104
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 105
    return-void

    .line 106
    .line 107
    .line 108
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringEscaped([B)V

    .line 109
    return-void
.end method

.method public writeStringUTF16([B)V
    .locals 14

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
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

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
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

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
    .line 43
    mul-int/lit8 v4, v4, 0x4

    .line 44
    add-int/2addr v4, v1

    .line 45
    const/4 v5, 0x2

    .line 46
    add-int/2addr v4, v5

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    array-length v7, p1

    .line 50
    mul-int/2addr v7, v5

    .line 51
    add-int/2addr v4, v7

    .line 52
    .line 53
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 54
    array-length v7, v7

    .line 55
    .line 56
    if-lt v4, v7, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 60
    .line 61
    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 62
    .line 63
    add-int/lit8 v7, v1, 0x1

    .line 64
    .line 65
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 66
    int-to-byte v8, v8

    .line 67
    .line 68
    aput-byte v8, v4, v1

    .line 69
    :goto_2
    array-length v1, p1

    .line 70
    .line 71
    if-ge v3, v1, :cond_11

    .line 72
    .line 73
    add-int/lit8 v1, v3, 0x1

    .line 74
    .line 75
    aget-byte v8, p1, v3

    .line 76
    .line 77
    add-int/lit8 v9, v3, 0x2

    .line 78
    .line 79
    aget-byte v1, p1, v1

    .line 80
    .line 81
    const/16 v10, 0x75

    .line 82
    .line 83
    const/16 v11, 0x5c

    .line 84
    .line 85
    if-nez v1, :cond_9

    .line 86
    .line 87
    if-ltz v8, :cond_9

    .line 88
    .line 89
    const/16 v1, 0x28

    .line 90
    .line 91
    const/16 v3, 0x30

    .line 92
    .line 93
    if-eq v8, v1, :cond_7

    .line 94
    .line 95
    const/16 v1, 0x29

    .line 96
    .line 97
    if-eq v8, v1, :cond_7

    .line 98
    .line 99
    const/16 v1, 0x3c

    .line 100
    .line 101
    if-eq v8, v1, :cond_7

    .line 102
    .line 103
    const/16 v1, 0x3e

    .line 104
    .line 105
    if-eq v8, v1, :cond_7

    .line 106
    .line 107
    if-eq v8, v11, :cond_6

    .line 108
    .line 109
    const/16 v1, 0x31

    .line 110
    .line 111
    .line 112
    packed-switch v8, :pswitch_data_0

    .line 113
    .line 114
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 115
    .line 116
    if-ne v8, v1, :cond_5

    .line 117
    .line 118
    aput-byte v11, v4, v7

    .line 119
    .line 120
    add-int/lit8 v3, v7, 0x1

    .line 121
    int-to-byte v1, v1

    .line 122
    .line 123
    aput-byte v1, v4, v3

    .line 124
    .line 125
    :goto_3
    add-int/lit8 v7, v7, 0x2

    .line 126
    .line 127
    goto/16 :goto_7

    .line 128
    .line 129
    :cond_5
    add-int/lit8 v1, v7, 0x1

    .line 130
    .line 131
    aput-byte v8, v4, v7

    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :pswitch_0
    aput-byte v11, v4, v7

    .line 136
    .line 137
    add-int/lit8 v11, v7, 0x1

    .line 138
    .line 139
    aput-byte v10, v4, v11

    .line 140
    .line 141
    add-int/lit8 v10, v7, 0x2

    .line 142
    .line 143
    aput-byte v3, v4, v10

    .line 144
    .line 145
    add-int/lit8 v10, v7, 0x3

    .line 146
    .line 147
    aput-byte v3, v4, v10

    .line 148
    .line 149
    add-int/lit8 v3, v7, 0x4

    .line 150
    .line 151
    aput-byte v1, v4, v3

    .line 152
    .line 153
    add-int/lit8 v1, v7, 0x5

    .line 154
    .line 155
    add-int/lit8 v8, v8, 0x47

    .line 156
    int-to-byte v3, v8

    .line 157
    .line 158
    aput-byte v3, v4, v1

    .line 159
    .line 160
    :goto_4
    add-int/lit8 v7, v7, 0x6

    .line 161
    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :pswitch_1
    aput-byte v11, v4, v7

    .line 165
    .line 166
    add-int/lit8 v11, v7, 0x1

    .line 167
    .line 168
    aput-byte v10, v4, v11

    .line 169
    .line 170
    add-int/lit8 v10, v7, 0x2

    .line 171
    .line 172
    aput-byte v3, v4, v10

    .line 173
    .line 174
    add-int/lit8 v10, v7, 0x3

    .line 175
    .line 176
    aput-byte v3, v4, v10

    .line 177
    .line 178
    add-int/lit8 v3, v7, 0x4

    .line 179
    .line 180
    aput-byte v1, v4, v3

    .line 181
    .line 182
    add-int/lit8 v1, v7, 0x5

    .line 183
    .line 184
    add-int/lit8 v8, v8, 0x20

    .line 185
    int-to-byte v3, v8

    .line 186
    .line 187
    aput-byte v3, v4, v1

    .line 188
    goto :goto_4

    .line 189
    .line 190
    :pswitch_2
    aput-byte v11, v4, v7

    .line 191
    .line 192
    add-int/lit8 v1, v7, 0x1

    .line 193
    .line 194
    const/16 v3, 0x72

    .line 195
    .line 196
    aput-byte v3, v4, v1

    .line 197
    goto :goto_3

    .line 198
    .line 199
    :pswitch_3
    aput-byte v11, v4, v7

    .line 200
    .line 201
    add-int/lit8 v1, v7, 0x1

    .line 202
    .line 203
    const/16 v3, 0x66

    .line 204
    .line 205
    aput-byte v3, v4, v1

    .line 206
    goto :goto_3

    .line 207
    .line 208
    :pswitch_4
    aput-byte v11, v4, v7

    .line 209
    .line 210
    add-int/lit8 v1, v7, 0x1

    .line 211
    .line 212
    aput-byte v10, v4, v1

    .line 213
    .line 214
    add-int/lit8 v1, v7, 0x2

    .line 215
    .line 216
    aput-byte v3, v4, v1

    .line 217
    .line 218
    add-int/lit8 v1, v7, 0x3

    .line 219
    .line 220
    aput-byte v3, v4, v1

    .line 221
    .line 222
    add-int/lit8 v1, v7, 0x4

    .line 223
    .line 224
    aput-byte v3, v4, v1

    .line 225
    .line 226
    add-int/lit8 v1, v7, 0x5

    .line 227
    .line 228
    add-int/lit8 v8, v8, 0x57

    .line 229
    int-to-byte v3, v8

    .line 230
    .line 231
    aput-byte v3, v4, v1

    .line 232
    goto :goto_4

    .line 233
    .line 234
    :pswitch_5
    aput-byte v11, v4, v7

    .line 235
    .line 236
    add-int/lit8 v1, v7, 0x1

    .line 237
    .line 238
    const/16 v3, 0x6e

    .line 239
    .line 240
    aput-byte v3, v4, v1

    .line 241
    goto :goto_3

    .line 242
    .line 243
    :pswitch_6
    aput-byte v11, v4, v7

    .line 244
    .line 245
    add-int/lit8 v1, v7, 0x1

    .line 246
    .line 247
    const/16 v3, 0x74

    .line 248
    .line 249
    aput-byte v3, v4, v1

    .line 250
    goto :goto_3

    .line 251
    .line 252
    :pswitch_7
    aput-byte v11, v4, v7

    .line 253
    .line 254
    add-int/lit8 v1, v7, 0x1

    .line 255
    .line 256
    const/16 v3, 0x62

    .line 257
    .line 258
    aput-byte v3, v4, v1

    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :pswitch_8
    aput-byte v11, v4, v7

    .line 263
    .line 264
    add-int/lit8 v1, v7, 0x1

    .line 265
    .line 266
    aput-byte v10, v4, v1

    .line 267
    .line 268
    add-int/lit8 v1, v7, 0x2

    .line 269
    .line 270
    aput-byte v3, v4, v1

    .line 271
    .line 272
    add-int/lit8 v1, v7, 0x3

    .line 273
    .line 274
    aput-byte v3, v4, v1

    .line 275
    .line 276
    add-int/lit8 v1, v7, 0x4

    .line 277
    .line 278
    aput-byte v3, v4, v1

    .line 279
    .line 280
    add-int/lit8 v1, v7, 0x5

    .line 281
    .line 282
    add-int/lit8 v8, v8, 0x30

    .line 283
    int-to-byte v3, v8

    .line 284
    .line 285
    aput-byte v3, v4, v1

    .line 286
    goto :goto_4

    .line 287
    .line 288
    :cond_6
    aput-byte v11, v4, v7

    .line 289
    .line 290
    add-int/lit8 v1, v7, 0x1

    .line 291
    .line 292
    aput-byte v11, v4, v1

    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :cond_7
    if-eqz v0, :cond_8

    .line 297
    .line 298
    aput-byte v11, v4, v7

    .line 299
    .line 300
    add-int/lit8 v1, v7, 0x1

    .line 301
    .line 302
    aput-byte v10, v4, v1

    .line 303
    .line 304
    add-int/lit8 v1, v7, 0x2

    .line 305
    .line 306
    aput-byte v3, v4, v1

    .line 307
    .line 308
    add-int/lit8 v1, v7, 0x3

    .line 309
    .line 310
    aput-byte v3, v4, v1

    .line 311
    .line 312
    add-int/lit8 v1, v7, 0x4

    .line 313
    .line 314
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    .line 315
    .line 316
    ushr-int/lit8 v10, v8, 0x4

    .line 317
    .line 318
    and-int/lit8 v10, v10, 0xf

    .line 319
    .line 320
    aget-char v10, v3, v10

    .line 321
    int-to-byte v10, v10

    .line 322
    .line 323
    aput-byte v10, v4, v1

    .line 324
    .line 325
    add-int/lit8 v1, v7, 0x5

    .line 326
    .line 327
    and-int/lit8 v8, v8, 0xf

    .line 328
    .line 329
    aget-char v3, v3, v8

    .line 330
    int-to-byte v3, v3

    .line 331
    .line 332
    aput-byte v3, v4, v1

    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :cond_8
    add-int/lit8 v1, v7, 0x1

    .line 337
    .line 338
    aput-byte v8, v4, v7

    .line 339
    .line 340
    goto/16 :goto_6

    .line 341
    .line 342
    :cond_9
    and-int/lit16 v8, v8, 0xff

    .line 343
    .line 344
    and-int/lit16 v1, v1, 0xff

    .line 345
    .line 346
    shl-int/lit8 v1, v1, 0x8

    .line 347
    or-int/2addr v1, v8

    .line 348
    int-to-char v1, v1

    .line 349
    .line 350
    const/16 v8, 0x800

    .line 351
    .line 352
    if-ge v1, v8, :cond_a

    .line 353
    .line 354
    shr-int/lit8 v3, v1, 0x6

    .line 355
    .line 356
    or-int/lit16 v3, v3, 0xc0

    .line 357
    int-to-byte v3, v3

    .line 358
    .line 359
    aput-byte v3, v4, v7

    .line 360
    .line 361
    add-int/lit8 v3, v7, 0x1

    .line 362
    .line 363
    and-int/lit8 v1, v1, 0x3f

    .line 364
    .line 365
    or-int/lit16 v1, v1, 0x80

    .line 366
    int-to-byte v1, v1

    .line 367
    .line 368
    aput-byte v1, v4, v3

    .line 369
    .line 370
    goto/16 :goto_3

    .line 371
    .line 372
    :cond_a
    if-eqz v2, :cond_b

    .line 373
    .line 374
    aput-byte v11, v4, v7

    .line 375
    .line 376
    add-int/lit8 v3, v7, 0x1

    .line 377
    .line 378
    aput-byte v10, v4, v3

    .line 379
    .line 380
    add-int/lit8 v3, v7, 0x2

    .line 381
    .line 382
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    .line 383
    .line 384
    ushr-int/lit8 v10, v1, 0xc

    .line 385
    .line 386
    and-int/lit8 v10, v10, 0xf

    .line 387
    .line 388
    aget-char v10, v8, v10

    .line 389
    int-to-byte v10, v10

    .line 390
    .line 391
    aput-byte v10, v4, v3

    .line 392
    .line 393
    add-int/lit8 v3, v7, 0x3

    .line 394
    .line 395
    ushr-int/lit8 v10, v1, 0x8

    .line 396
    .line 397
    and-int/lit8 v10, v10, 0xf

    .line 398
    .line 399
    aget-char v10, v8, v10

    .line 400
    int-to-byte v10, v10

    .line 401
    .line 402
    aput-byte v10, v4, v3

    .line 403
    .line 404
    add-int/lit8 v3, v7, 0x4

    .line 405
    .line 406
    ushr-int/lit8 v10, v1, 0x4

    .line 407
    .line 408
    and-int/lit8 v10, v10, 0xf

    .line 409
    .line 410
    aget-char v10, v8, v10

    .line 411
    int-to-byte v10, v10

    .line 412
    .line 413
    aput-byte v10, v4, v3

    .line 414
    .line 415
    add-int/lit8 v3, v7, 0x5

    .line 416
    .line 417
    and-int/lit8 v1, v1, 0xf

    .line 418
    .line 419
    aget-char v1, v8, v1

    .line 420
    int-to-byte v1, v1

    .line 421
    .line 422
    aput-byte v1, v4, v3

    .line 423
    .line 424
    goto/16 :goto_4

    .line 425
    .line 426
    .line 427
    :cond_b
    const v8, 0xd800

    .line 428
    .line 429
    const/16 v10, 0x3f

    .line 430
    .line 431
    if-lt v1, v8, :cond_10

    .line 432
    .line 433
    .line 434
    const v8, 0xe000

    .line 435
    .line 436
    if-ge v1, v8, :cond_10

    .line 437
    .line 438
    add-int/lit8 v11, v3, 0x1

    .line 439
    .line 440
    .line 441
    const v12, 0xdc00

    .line 442
    .line 443
    if-ge v1, v12, :cond_f

    .line 444
    array-length v13, p1

    .line 445
    sub-int/2addr v13, v11

    .line 446
    .line 447
    if-ge v13, v5, :cond_c

    .line 448
    const/4 v1, -0x1

    .line 449
    goto :goto_5

    .line 450
    .line 451
    :cond_c
    add-int/lit8 v11, v3, 0x2

    .line 452
    .line 453
    aget-byte v11, p1, v11

    .line 454
    .line 455
    add-int/lit8 v13, v3, 0x3

    .line 456
    .line 457
    aget-byte v13, p1, v13

    .line 458
    .line 459
    and-int/lit16 v11, v11, 0xff

    .line 460
    .line 461
    and-int/lit16 v13, v13, 0xff

    .line 462
    .line 463
    shl-int/lit8 v13, v13, 0x8

    .line 464
    or-int/2addr v11, v13

    .line 465
    int-to-char v11, v11

    .line 466
    .line 467
    if-lt v11, v12, :cond_e

    .line 468
    .line 469
    if-ge v11, v8, :cond_e

    .line 470
    .line 471
    add-int/lit8 v9, v3, 0x4

    .line 472
    .line 473
    shl-int/lit8 v1, v1, 0xa

    .line 474
    add-int/2addr v1, v11

    .line 475
    .line 476
    .line 477
    const v3, -0x35fdc00

    .line 478
    add-int/2addr v1, v3

    .line 479
    .line 480
    :goto_5
    if-gez v1, :cond_d

    .line 481
    .line 482
    add-int/lit8 v1, v7, 0x1

    .line 483
    .line 484
    aput-byte v10, v4, v7

    .line 485
    goto :goto_6

    .line 486
    .line 487
    :cond_d
    shr-int/lit8 v3, v1, 0x12

    .line 488
    .line 489
    or-int/lit16 v3, v3, 0xf0

    .line 490
    int-to-byte v3, v3

    .line 491
    .line 492
    aput-byte v3, v4, v7

    .line 493
    .line 494
    add-int/lit8 v3, v7, 0x1

    .line 495
    .line 496
    shr-int/lit8 v8, v1, 0xc

    .line 497
    and-int/2addr v8, v10

    .line 498
    .line 499
    or-int/lit16 v8, v8, 0x80

    .line 500
    int-to-byte v8, v8

    .line 501
    .line 502
    aput-byte v8, v4, v3

    .line 503
    .line 504
    add-int/lit8 v3, v7, 0x2

    .line 505
    .line 506
    shr-int/lit8 v8, v1, 0x6

    .line 507
    and-int/2addr v8, v10

    .line 508
    .line 509
    or-int/lit16 v8, v8, 0x80

    .line 510
    int-to-byte v8, v8

    .line 511
    .line 512
    aput-byte v8, v4, v3

    .line 513
    .line 514
    add-int/lit8 v3, v7, 0x3

    .line 515
    .line 516
    and-int/lit8 v1, v1, 0x3f

    .line 517
    .line 518
    or-int/lit16 v1, v1, 0x80

    .line 519
    int-to-byte v1, v1

    .line 520
    .line 521
    aput-byte v1, v4, v3

    .line 522
    .line 523
    add-int/lit8 v1, v7, 0x4

    .line 524
    goto :goto_6

    .line 525
    .line 526
    :cond_e
    add-int/lit8 v1, v7, 0x1

    .line 527
    .line 528
    aput-byte v10, v4, v7

    .line 529
    :goto_6
    move v7, v1

    .line 530
    :goto_7
    move v3, v9

    .line 531
    .line 532
    goto/16 :goto_2

    .line 533
    .line 534
    :cond_f
    add-int/lit8 v1, v7, 0x1

    .line 535
    .line 536
    aput-byte v10, v4, v7

    .line 537
    goto :goto_6

    .line 538
    .line 539
    :cond_10
    shr-int/lit8 v3, v1, 0xc

    .line 540
    .line 541
    or-int/lit16 v3, v3, 0xe0

    .line 542
    int-to-byte v3, v3

    .line 543
    .line 544
    aput-byte v3, v4, v7

    .line 545
    .line 546
    add-int/lit8 v3, v7, 0x1

    .line 547
    .line 548
    shr-int/lit8 v8, v1, 0x6

    .line 549
    and-int/2addr v8, v10

    .line 550
    .line 551
    or-int/lit16 v8, v8, 0x80

    .line 552
    int-to-byte v8, v8

    .line 553
    .line 554
    aput-byte v8, v4, v3

    .line 555
    .line 556
    add-int/lit8 v3, v7, 0x2

    .line 557
    .line 558
    and-int/lit8 v1, v1, 0x3f

    .line 559
    .line 560
    or-int/lit16 v1, v1, 0x80

    .line 561
    int-to-byte v1, v1

    .line 562
    .line 563
    aput-byte v1, v4, v3

    .line 564
    .line 565
    add-int/lit8 v7, v7, 0x3

    .line 566
    goto :goto_7

    .line 567
    .line 568
    :cond_11
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 569
    int-to-byte p1, p1

    .line 570
    .line 571
    aput-byte p1, v4, v7

    .line 572
    add-int/2addr v7, v6

    .line 573
    .line 574
    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 575
    return-void

    .line 576
    nop

    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 15
    .line 16
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 17
    int-to-byte v4, v3

    .line 18
    .line 19
    aput-byte v4, v2, v0

    .line 20
    .line 21
    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 22
    .line 23
    aget p1, v4, p1

    .line 24
    .line 25
    add-int/lit8 v5, v0, 0x1

    .line 26
    .line 27
    shr-int/lit8 v6, p1, 0x8

    .line 28
    int-to-byte v6, v6

    .line 29
    .line 30
    aput-byte v6, v2, v5

    .line 31
    .line 32
    add-int/lit8 v5, v0, 0x2

    .line 33
    int-to-byte p1, p1

    .line 34
    .line 35
    aput-byte p1, v2, v5

    .line 36
    .line 37
    add-int/lit8 p1, v0, 0x3

    .line 38
    .line 39
    const/16 v5, 0x3a

    .line 40
    .line 41
    aput-byte v5, v2, p1

    .line 42
    .line 43
    aget p1, v4, p2

    .line 44
    .line 45
    add-int/lit8 p2, v0, 0x4

    .line 46
    .line 47
    shr-int/lit8 v6, p1, 0x8

    .line 48
    int-to-byte v6, v6

    .line 49
    .line 50
    aput-byte v6, v2, p2

    .line 51
    .line 52
    add-int/lit8 p2, v0, 0x5

    .line 53
    int-to-byte p1, p1

    .line 54
    .line 55
    aput-byte p1, v2, p2

    .line 56
    .line 57
    add-int/lit8 p1, v0, 0x6

    .line 58
    .line 59
    aput-byte v5, v2, p1

    .line 60
    .line 61
    aget p1, v4, p3

    .line 62
    .line 63
    add-int/lit8 p2, v0, 0x7

    .line 64
    .line 65
    shr-int/lit8 p3, p1, 0x8

    .line 66
    int-to-byte p3, p3

    .line 67
    .line 68
    aput-byte p3, v2, p2

    .line 69
    .line 70
    add-int/lit8 p2, v0, 0x8

    .line 71
    int-to-byte p1, p1

    .line 72
    .line 73
    aput-byte p1, v2, p2

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x9

    .line 76
    int-to-byte p1, v3

    .line 77
    .line 78
    aput-byte p1, v2, v0

    .line 79
    .line 80
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 81
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
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 23
    array-length v6, v6

    .line 24
    .line 25
    if-lt v5, v6, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 29
    .line 30
    :cond_1
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->UUID_LOOKUP:[C

    .line 31
    .line 32
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 33
    .line 34
    iget v7, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 35
    .line 36
    const/16 v8, 0x22

    .line 37
    .line 38
    aput-byte v8, v6, v7

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
    .line 173
    aput-byte v0, v16, v18

    .line 174
    .line 175
    add-int/lit8 v0, v17, 0x2

    .line 176
    int-to-byte v10, v10

    .line 177
    .line 178
    aput-byte v10, v16, v0

    .line 179
    .line 180
    add-int/lit8 v0, v17, 0x3

    .line 181
    .line 182
    shr-int/lit8 v10, v12, 0x8

    .line 183
    int-to-byte v10, v10

    .line 184
    .line 185
    aput-byte v10, v16, v0

    .line 186
    .line 187
    add-int/lit8 v0, v17, 0x4

    .line 188
    int-to-byte v10, v12

    .line 189
    .line 190
    aput-byte v10, v16, v0

    .line 191
    .line 192
    add-int/lit8 v0, v17, 0x5

    .line 193
    .line 194
    shr-int/lit8 v10, v19, 0x8

    .line 195
    int-to-byte v10, v10

    .line 196
    .line 197
    aput-byte v10, v16, v0

    .line 198
    .line 199
    add-int/lit8 v0, v17, 0x6

    .line 200
    .line 201
    move/from16 v10, v19

    .line 202
    int-to-byte v10, v10

    .line 203
    .line 204
    aput-byte v10, v16, v0

    .line 205
    .line 206
    add-int/lit8 v0, v17, 0x7

    .line 207
    .line 208
    shr-int/lit8 v10, v8, 0x8

    .line 209
    int-to-byte v10, v10

    .line 210
    .line 211
    aput-byte v10, v16, v0

    .line 212
    .line 213
    add-int/lit8 v0, v17, 0x8

    .line 214
    int-to-byte v8, v8

    .line 215
    .line 216
    aput-byte v8, v16, v0

    .line 217
    .line 218
    add-int/lit8 v0, v17, 0x9

    .line 219
    .line 220
    const/16 v8, 0x2d

    .line 221
    .line 222
    aput-byte v8, v16, v0

    .line 223
    .line 224
    add-int/lit8 v0, v17, 0xa

    .line 225
    .line 226
    shr-int/lit8 v10, v2, 0x8

    .line 227
    int-to-byte v10, v10

    .line 228
    .line 229
    aput-byte v10, v16, v0

    .line 230
    .line 231
    add-int/lit8 v0, v17, 0xb

    .line 232
    int-to-byte v2, v2

    .line 233
    .line 234
    aput-byte v2, v16, v0

    .line 235
    .line 236
    add-int/lit8 v0, v17, 0xc

    .line 237
    .line 238
    shr-int/lit8 v2, v9, 0x8

    .line 239
    int-to-byte v2, v2

    .line 240
    .line 241
    aput-byte v2, v16, v0

    .line 242
    .line 243
    add-int/lit8 v0, v17, 0xd

    .line 244
    int-to-byte v2, v9

    .line 245
    .line 246
    aput-byte v2, v16, v0

    .line 247
    .line 248
    add-int/lit8 v0, v17, 0xe

    .line 249
    .line 250
    aput-byte v8, v16, v0

    .line 251
    .line 252
    add-int/lit8 v0, v17, 0xf

    .line 253
    .line 254
    shr-int/lit8 v2, v11, 0x8

    .line 255
    int-to-byte v2, v2

    .line 256
    .line 257
    aput-byte v2, v16, v0

    .line 258
    .line 259
    add-int/lit8 v0, v17, 0x10

    .line 260
    int-to-byte v2, v11

    .line 261
    .line 262
    aput-byte v2, v16, v0

    .line 263
    .line 264
    add-int/lit8 v0, v17, 0x11

    .line 265
    .line 266
    shr-int/lit8 v2, v1, 0x8

    .line 267
    int-to-byte v2, v2

    .line 268
    .line 269
    aput-byte v2, v16, v0

    .line 270
    .line 271
    add-int/lit8 v0, v17, 0x12

    .line 272
    int-to-byte v1, v1

    .line 273
    .line 274
    aput-byte v1, v16, v0

    .line 275
    .line 276
    add-int/lit8 v0, v17, 0x13

    .line 277
    .line 278
    aput-byte v8, v16, v0

    .line 279
    .line 280
    add-int/lit8 v0, v17, 0x14

    .line 281
    .line 282
    shr-int/lit8 v1, v13, 0x8

    .line 283
    int-to-byte v1, v1

    .line 284
    .line 285
    aput-byte v1, v16, v0

    .line 286
    .line 287
    add-int/lit8 v0, v17, 0x15

    .line 288
    int-to-byte v1, v13

    .line 289
    .line 290
    aput-byte v1, v16, v0

    .line 291
    .line 292
    add-int/lit8 v0, v17, 0x16

    .line 293
    .line 294
    shr-int/lit8 v1, v5, 0x8

    .line 295
    int-to-byte v1, v1

    .line 296
    .line 297
    aput-byte v1, v16, v0

    .line 298
    .line 299
    add-int/lit8 v0, v17, 0x17

    .line 300
    int-to-byte v1, v5

    .line 301
    .line 302
    aput-byte v1, v16, v0

    .line 303
    .line 304
    add-int/lit8 v0, v17, 0x18

    .line 305
    .line 306
    aput-byte v8, v16, v0

    .line 307
    .line 308
    add-int/lit8 v0, v17, 0x19

    .line 309
    .line 310
    shr-int/lit8 v1, v6, 0x8

    .line 311
    int-to-byte v1, v1

    .line 312
    .line 313
    aput-byte v1, v16, v0

    .line 314
    .line 315
    add-int/lit8 v0, v17, 0x1a

    .line 316
    int-to-byte v1, v6

    .line 317
    .line 318
    aput-byte v1, v16, v0

    .line 319
    .line 320
    add-int/lit8 v0, v17, 0x1b

    .line 321
    .line 322
    shr-int/lit8 v1, v14, 0x8

    .line 323
    int-to-byte v1, v1

    .line 324
    .line 325
    aput-byte v1, v16, v0

    .line 326
    .line 327
    add-int/lit8 v0, v17, 0x1c

    .line 328
    int-to-byte v1, v14

    .line 329
    .line 330
    aput-byte v1, v16, v0

    .line 331
    .line 332
    add-int/lit8 v0, v17, 0x1d

    .line 333
    .line 334
    shr-int/lit8 v1, v4, 0x8

    .line 335
    int-to-byte v1, v1

    .line 336
    .line 337
    aput-byte v1, v16, v0

    .line 338
    .line 339
    add-int/lit8 v0, v17, 0x1e

    .line 340
    int-to-byte v1, v4

    .line 341
    .line 342
    aput-byte v1, v16, v0

    .line 343
    .line 344
    add-int/lit8 v0, v17, 0x1f

    .line 345
    .line 346
    shr-int/lit8 v1, v15, 0x8

    .line 347
    int-to-byte v1, v1

    .line 348
    .line 349
    aput-byte v1, v16, v0

    .line 350
    .line 351
    add-int/lit8 v0, v17, 0x20

    .line 352
    int-to-byte v1, v15

    .line 353
    .line 354
    aput-byte v1, v16, v0

    .line 355
    .line 356
    add-int/lit8 v0, v17, 0x21

    .line 357
    .line 358
    shr-int/lit8 v1, v7, 0x8

    .line 359
    int-to-byte v1, v1

    .line 360
    .line 361
    aput-byte v1, v16, v0

    .line 362
    .line 363
    add-int/lit8 v0, v17, 0x22

    .line 364
    int-to-byte v1, v7

    .line 365
    .line 366
    aput-byte v1, v16, v0

    .line 367
    .line 368
    add-int/lit8 v7, v17, 0x23

    .line 369
    .line 370
    shr-int/lit8 v0, v3, 0x8

    .line 371
    int-to-byte v0, v0

    .line 372
    .line 373
    aput-byte v0, v16, v7

    .line 374
    .line 375
    add-int/lit8 v7, v17, 0x24

    .line 376
    int-to-byte v0, v3

    .line 377
    .line 378
    aput-byte v0, v16, v7

    .line 379
    .line 380
    add-int/lit8 v7, v17, 0x25

    .line 381
    .line 382
    aput-byte p1, v16, v7

    .line 383
    .line 384
    add-int/lit8 v7, v17, 0x26

    .line 385
    .line 386
    move-object/from16 v0, p0

    .line 387
    .line 388
    iput v7, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 389
    return-void
.end method
