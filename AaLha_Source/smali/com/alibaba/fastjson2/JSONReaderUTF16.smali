.class final Lcom/alibaba/fastjson2/JSONReaderUTF16;
.super Lcom/alibaba/fastjson2/JSONReader;
.source "SourceFile"


# static fields
.field static final CHAR_MASK:J


# instance fields
.field private cacheIndex:I

.field protected final chars:[C

.field protected final end:I

.field private input:Ljava/io/Closeable;

.field protected final length:I

.field private nameBegin:I

.field private nameEnd:I

.field private nameLength:I

.field private referenceBegin:I

.field protected final start:I

.field protected final str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v0, 0xff00ff00ff00ffL

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    :cond_0
    const-wide v0, -0xff00ff00ff0100L    # -5.82767264895205E303

    .line 16
    .line 17
    :goto_0
    sput-wide v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->CHAR_MASK:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 10

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 v1, -0x1

    .line 99
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->cacheIndex:I

    .line 100
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->input:Ljava/io/Closeable;

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v2, v4

    .line 102
    aget-object v2, v3, v2

    .line 103
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_0

    .line 104
    iget v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    new-array v3, v3, [B

    :cond_0
    move v6, v0

    .line 105
    :cond_1
    :goto_0
    :try_start_0
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-virtual {p2, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_a

    .line 106
    rem-int/lit8 p1, v6, 0x2

    if-eq p1, v5, :cond_9

    .line 107
    div-int/lit8 p1, v6, 0x2

    new-array p2, p1, [C

    move v1, v0

    move v7, v1

    :goto_1
    if-ge v1, v6, :cond_2

    .line 108
    aget-byte v8, v3, v1

    add-int/lit8 v9, v1, 0x1

    .line 109
    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v9

    int-to-char v8, v8

    .line 110
    aput-char v8, p2, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 111
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iput-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 114
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 115
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->length:I

    .line 116
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->start:I

    .line 117
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    const/16 v1, 0x1a

    if-nez p1, :cond_3

    .line 118
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 119
    :cond_3
    aget-char v2, p2, v0

    :goto_2
    const/16 v3, 0x20

    if-gt v2, v3, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v6, 0x100003701L

    and-long/2addr v3, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_5

    add-int/2addr v0, v5

    if-lt v0, p1, :cond_4

    .line 120
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 121
    :cond_4
    aget-char v2, p2, v0

    goto :goto_2

    .line 122
    :cond_5
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 123
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p1, 0xfffe

    if-eq v2, p1, :cond_6

    const p1, 0xfeff

    if-ne v2, p1, :cond_7

    .line 124
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 125
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_8

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    :cond_8
    return-void

    .line 127
    :cond_9
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal input utf16 bytes, length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    add-int/2addr v6, v7

    .line 128
    array-length v7, v3

    if-ne v6, v7, :cond_1

    .line 129
    array-length v7, v3

    iget v8, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    add-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 130
    :goto_3
    :try_start_2
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "read error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :goto_4
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    throw p1
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/Reader;)V
    .locals 6

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->cacheIndex:I

    .line 27
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->input:Ljava/io/Closeable;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->cacheIndex:I

    .line 29
    aget-object v1, v2, v1

    .line 30
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    .line 31
    new-array v1, v1, [C

    :cond_0
    move v2, v0

    .line 32
    :cond_1
    :goto_0
    :try_start_0
    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_8

    .line 33
    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 35
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 36
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->length:I

    .line 37
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->start:I

    .line 38
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    const/16 p1, 0x1a

    if-gtz v2, :cond_2

    .line 39
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 40
    :cond_2
    aget-char p2, v1, v0

    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 41
    :goto_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x20

    if-gt p2, v0, :cond_4

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p2

    const-wide v4, 0x100003701L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 42
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 43
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->length:I

    if-lt p2, v0, :cond_3

    .line 44
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 45
    :cond_3
    aget-char p2, v1, p2

    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_1

    .line 46
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p1, 0xfffe

    if-eq p2, p1, :cond_5

    const p1, 0xfeff

    if-ne p2, p1, :cond_6

    .line 47
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 48
    :cond_6
    :goto_2
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_7

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    add-int/2addr v2, v4

    .line 50
    :try_start_1
    array-length v4, v1

    if-ne v2, v4, :cond_1

    .line 51
    array-length v4, v1

    shr-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v5

    .line 52
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "read error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V
    .locals 5

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->cacheIndex:I

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->cacheIndex:I

    .line 57
    aget-object p1, v1, p1

    .line 58
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    if-eqz v3, :cond_0

    .line 59
    array-length v4, v3

    if-ge v4, p4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/16 p1, 0x2000

    .line 61
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v3, p1, [C

    :cond_2
    add-int p1, p3, p4

    .line 62
    invoke-virtual {p2, p3, p1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, v2

    .line 63
    :goto_0
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 65
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 66
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->length:I

    .line 67
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->start:I

    .line 68
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    const/16 p1, 0x1a

    if-gtz p4, :cond_4

    .line 69
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 70
    :cond_4
    aget-char p2, v3, v0

    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 71
    :goto_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x20

    if-gt p2, p3, :cond_6

    const-wide/16 p3, 0x1

    shl-long/2addr p3, p2

    const-wide v0, 0x100003701L

    and-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_6

    .line 72
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 73
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->length:I

    if-lt p2, p3, :cond_5

    .line 74
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 75
    :cond_5
    aget-char p2, v3, p2

    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_1

    .line 76
    :cond_6
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p1, 0xfffe

    if-eq p2, p1, :cond_7

    const p1, 0xfeff

    if-ne p2, p1, :cond_8

    .line 77
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 78
    :cond_8
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_9

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    :cond_9
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V
    .locals 4

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->cacheIndex:I

    .line 82
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 84
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 85
    iput p5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->length:I

    .line 86
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->start:I

    add-int p1, p4, p5

    .line 87
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    const/16 p2, 0x1a

    if-lt p4, p1, :cond_0

    .line 88
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 89
    :cond_0
    aget-char p1, p3, p4

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 90
    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p4, 0x20

    if-gt p1, p4, :cond_2

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    const-wide v2, 0x100003701L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_2

    .line 91
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-lt p1, p5, :cond_1

    .line 92
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 93
    :cond_1
    aget-char p1, p3, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_0

    .line 94
    :cond_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p2, 0xfffe

    if-eq p1, p2, :cond_3

    const p2, 0xfeff

    if-ne p1, p2, :cond_4

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 96
    :cond_4
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_5

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->cacheIndex:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 4
    div-int/lit8 p1, p4, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    add-int p1, p3, p4

    move v1, p3

    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    aget-byte v2, p2, v1

    add-int/lit8 v3, v1, 0x1

    .line 6
    aget-byte v3, p2, v3

    .line 7
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v4, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->start:I

    .line 9
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 10
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 p2, 0x1a

    if-lt p1, v0, :cond_1

    .line 11
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 12
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    aget-char p1, p3, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 13
    :goto_1
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const-wide/16 v0, 0x0

    const-wide v2, 0x100003701L

    const-wide/16 v4, 0x1

    const/16 p3, 0x20

    if-gt p1, p3, :cond_3

    shl-long v6, v4, p1

    and-long/2addr v6, v2

    cmp-long p1, v6, v0

    if-eqz p1, :cond_3

    .line 14
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-lt p1, p4, :cond_2

    .line 15
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 16
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    aget-char p1, p3, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_1

    .line 17
    :cond_3
    :goto_2
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-gt p1, p3, :cond_5

    shl-long v6, v4, p1

    and-long/2addr v6, v2

    cmp-long v6, v6, v0

    if-eqz v6, :cond_5

    .line 18
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-lt p1, p4, :cond_4

    .line 19
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 20
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    aget-char p1, v6, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_2

    .line 21
    :cond_5
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p2, 0xfffe

    if-eq p1, p2, :cond_6

    const p2, 0xfeff

    if-ne p1, p2, :cond_7

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 23
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    :cond_8
    return-void
.end method

.method public static getInt([CI)I
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x1

    .line 7
    int-to-long v3, p1

    .line 8
    add-long/2addr v1, v3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 12
    move-result-wide p0

    .line 13
    .line 14
    sget-wide v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->CHAR_MASK:J

    .line 15
    and-long/2addr v0, p0

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    .line 25
    :cond_0
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    shr-long/2addr p0, v1

    .line 31
    .line 32
    :cond_1
    const-wide/16 v2, 0xff

    .line 33
    and-long/2addr v2, p0

    .line 34
    .line 35
    .line 36
    const-wide/32 v4, 0xff0000

    .line 37
    and-long/2addr v4, p0

    .line 38
    .line 39
    shr-long v0, v4, v1

    .line 40
    or-long/2addr v0, v2

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v2, 0xff00000000L

    .line 46
    and-long/2addr v2, p0

    .line 47
    .line 48
    const/16 v4, 0x10

    .line 49
    shr-long/2addr v2, v4

    .line 50
    or-long/2addr v0, v2

    .line 51
    .line 52
    const-wide/high16 v2, 0xff000000000000L

    .line 53
    and-long/2addr p0, v2

    .line 54
    .line 55
    const/16 v2, 0x18

    .line 56
    shr-long/2addr p0, v2

    .line 57
    or-long/2addr p0, v0

    .line 58
    long-to-int p0, p0

    .line 59
    return p0
.end method

.method public static getLong([CI)J
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    .line 5
    .line 6
    shl-int/lit8 v3, p1, 0x1

    .line 7
    int-to-long v3, v3

    .line 8
    add-long/2addr v1, v3

    .line 9
    .line 10
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 14
    move-result-wide v4

    .line 15
    .line 16
    const-wide/16 v6, 0x8

    .line 17
    add-long/2addr v1, v6

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    or-long v2, v4, v0

    .line 24
    .line 25
    sget-wide v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;->CHAR_MASK:J

    .line 26
    and-long/2addr v2, v6

    .line 27
    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    cmp-long v2, v2, v6

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    return-wide v6

    .line 34
    .line 35
    :cond_0
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    shr-long/2addr v4, v3

    .line 41
    shr-long/2addr v0, v3

    .line 42
    .line 43
    :cond_1
    const-wide/16 v6, 0xff

    .line 44
    .line 45
    and-long v8, v4, v6

    .line 46
    .line 47
    .line 48
    const-wide/32 v10, 0xff0000

    .line 49
    .line 50
    and-long v12, v4, v10

    .line 51
    shr-long/2addr v12, v3

    .line 52
    or-long/2addr v8, v12

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide v12, 0xff00000000L

    .line 58
    .line 59
    and-long v14, v4, v12

    .line 60
    .line 61
    const/16 v2, 0x10

    .line 62
    shr-long/2addr v14, v2

    .line 63
    or-long/2addr v8, v14

    .line 64
    .line 65
    const-wide/high16 v14, 0xff000000000000L

    .line 66
    and-long/2addr v4, v14

    .line 67
    .line 68
    const/16 v16, 0x18

    .line 69
    .line 70
    shr-long v4, v4, v16

    .line 71
    or-long/2addr v4, v8

    .line 72
    and-long/2addr v6, v0

    .line 73
    .line 74
    const/16 v8, 0x20

    .line 75
    shl-long/2addr v6, v8

    .line 76
    or-long/2addr v4, v6

    .line 77
    .line 78
    and-long v6, v0, v10

    .line 79
    .line 80
    shl-long v6, v6, v16

    .line 81
    or-long/2addr v4, v6

    .line 82
    .line 83
    and-long v6, v0, v12

    .line 84
    shl-long/2addr v6, v2

    .line 85
    or-long/2addr v4, v6

    .line 86
    and-long/2addr v0, v14

    .line 87
    shl-long/2addr v0, v3

    .line 88
    or-long/2addr v0, v4

    .line 89
    return-wide v0
.end method

.method private isReference0([CIIC)Z
    .locals 14

    .line 1
    .line 2
    move/from16 v0, p3

    .line 3
    .line 4
    add-int/lit8 v1, p2, 0x6

    .line 5
    .line 6
    aget-char v2, p1, v1

    .line 7
    .line 8
    :goto_0
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v5, 0x100003701L

    .line 14
    .line 15
    const-wide/16 v7, 0x1

    .line 16
    .line 17
    const/16 v9, 0x20

    .line 18
    const/4 v10, 0x0

    .line 19
    .line 20
    if-gt v2, v9, :cond_1

    .line 21
    .line 22
    shl-long v11, v7, v2

    .line 23
    and-long/2addr v11, v5

    .line 24
    .line 25
    cmp-long v11, v11, v3

    .line 26
    .line 27
    if-eqz v11, :cond_1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    if-lt v1, v0, :cond_0

    .line 32
    return v10

    .line 33
    .line 34
    :cond_0
    aget-char v2, p1, v1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    const/16 v11, 0x3a

    .line 38
    .line 39
    if-ne v2, v11, :cond_6

    .line 40
    const/4 v2, 0x1

    .line 41
    add-int/2addr v1, v2

    .line 42
    .line 43
    if-lt v1, v0, :cond_2

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_2
    aget-char v11, p1, v1

    .line 47
    .line 48
    :goto_1
    if-gt v11, v9, :cond_4

    .line 49
    .line 50
    shl-long v12, v7, v11

    .line 51
    and-long/2addr v12, v5

    .line 52
    .line 53
    cmp-long v12, v12, v3

    .line 54
    .line 55
    if-eqz v12, :cond_4

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    if-lt v1, v0, :cond_3

    .line 60
    return v10

    .line 61
    .line 62
    :cond_3
    aget-char v11, p1, v1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_4
    move/from16 v3, p4

    .line 66
    .line 67
    if-ne v11, v3, :cond_6

    .line 68
    .line 69
    add-int/lit8 v3, v1, 0x1

    .line 70
    .line 71
    if-ge v3, v0, :cond_5

    .line 72
    .line 73
    aget-char p1, p1, v3

    .line 74
    .line 75
    const/16 v0, 0x24

    .line 76
    .line 77
    if-eq p1, v0, :cond_5

    .line 78
    .line 79
    const/16 v0, 0x2e

    .line 80
    .line 81
    if-eq p1, v0, :cond_5

    .line 82
    .line 83
    const/16 v0, 0x40

    .line 84
    .line 85
    if-eq p1, v0, :cond_5

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_5
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->referenceBegin:I

    .line 89
    return v2

    .line 90
    :cond_6
    :goto_2
    return v10
.end method

.method private skipString()V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 9
    .line 10
    add-int/lit8 v4, v2, 0x1

    .line 11
    .line 12
    aget-char v2, v3, v2

    .line 13
    .line 14
    :goto_0
    const/16 v5, 0x5c

    .line 15
    .line 16
    if-ne v2, v5, :cond_4

    .line 17
    .line 18
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 19
    .line 20
    if-ge v4, v2, :cond_3

    .line 21
    .line 22
    add-int/lit8 v2, v4, 0x1

    .line 23
    .line 24
    aget-char v6, v3, v4

    .line 25
    .line 26
    if-eq v6, v5, :cond_2

    .line 27
    .line 28
    const/16 v5, 0x22

    .line 29
    .line 30
    if-ne v6, v5, :cond_0

    .line 31
    goto :goto_2

    .line 32
    .line 33
    :cond_0
    const/16 v5, 0x75

    .line 34
    .line 35
    if-ne v6, v5, :cond_1

    .line 36
    .line 37
    add-int/lit8 v2, v4, 0x5

    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x6

    .line 40
    .line 41
    aget-char v2, v3, v2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 46
    move-result v4

    .line 47
    .line 48
    :goto_1
    move/from16 v16, v4

    .line 49
    move v4, v2

    .line 50
    .line 51
    move/from16 v2, v16

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x2

    .line 55
    .line 56
    aget-char v2, v3, v2

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 60
    .line 61
    const-string v2, "illegal string, end"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v1

    .line 70
    .line 71
    :cond_4
    const/16 v5, 0x1a

    .line 72
    .line 73
    if-ne v2, v1, :cond_6

    .line 74
    .line 75
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 76
    .line 77
    if-ge v4, v1, :cond_5

    .line 78
    .line 79
    add-int/lit8 v1, v4, 0x1

    .line 80
    .line 81
    aget-char v2, v3, v4

    .line 82
    :goto_3
    move v4, v1

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move v2, v5

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 88
    .line 89
    if-ge v4, v2, :cond_5

    .line 90
    .line 91
    add-int/lit8 v2, v4, 0x1

    .line 92
    .line 93
    aget-char v4, v3, v4

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :goto_4
    const-wide/16 v6, 0x0

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    const-wide v8, 0x100003701L

    .line 102
    .line 103
    const-wide/16 v10, 0x1

    .line 104
    .line 105
    const/16 v1, 0x20

    .line 106
    .line 107
    if-gt v2, v1, :cond_7

    .line 108
    .line 109
    shl-long v12, v10, v2

    .line 110
    and-long/2addr v12, v8

    .line 111
    .line 112
    cmp-long v12, v12, v6

    .line 113
    .line 114
    if-eqz v12, :cond_7

    .line 115
    .line 116
    add-int/lit8 v1, v4, 0x1

    .line 117
    .line 118
    aget-char v2, v3, v4

    .line 119
    goto :goto_3

    .line 120
    .line 121
    :cond_7
    const/16 v12, 0x2c

    .line 122
    const/4 v13, 0x1

    .line 123
    .line 124
    if-ne v2, v12, :cond_8

    .line 125
    move v12, v13

    .line 126
    goto :goto_5

    .line 127
    :cond_8
    const/4 v12, 0x0

    .line 128
    .line 129
    :goto_5
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 130
    .line 131
    if-eqz v12, :cond_c

    .line 132
    .line 133
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 134
    .line 135
    if-lt v4, v2, :cond_9

    .line 136
    .line 137
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 138
    .line 139
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 140
    return-void

    .line 141
    .line 142
    :cond_9
    aget-char v2, v3, v4

    .line 143
    .line 144
    :goto_6
    if-gt v2, v1, :cond_b

    .line 145
    .line 146
    shl-long v14, v10, v2

    .line 147
    and-long/2addr v14, v8

    .line 148
    .line 149
    cmp-long v12, v14, v6

    .line 150
    .line 151
    if-eqz v12, :cond_b

    .line 152
    .line 153
    add-int/lit8 v4, v4, 0x1

    .line 154
    .line 155
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 156
    .line 157
    if-lt v4, v2, :cond_a

    .line 158
    .line 159
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 160
    .line 161
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 162
    return-void

    .line 163
    .line 164
    :cond_a
    aget-char v2, v3, v4

    .line 165
    goto :goto_6

    .line 166
    :cond_b
    add-int/2addr v4, v13

    .line 167
    .line 168
    :cond_c
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 169
    .line 170
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 171
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->cacheIndex:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 8
    array-length v2, v1

    .line 9
    .line 10
    const/high16 v3, 0x100000

    .line 11
    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 15
    .line 16
    aget-object v0, v2, v0

    .line 17
    .line 18
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->input:Ljava/io/Closeable;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    :cond_1
    return-void
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 11
    .line 12
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 24
    .line 25
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 26
    sub-int/2addr v3, v2

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 33
    .line 34
    new-array v0, v0, [C

    .line 35
    .line 36
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 37
    .line 38
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 42
    .line 43
    if-ge v2, v4, :cond_7

    .line 44
    .line 45
    aget-char v4, v1, v2

    .line 46
    .line 47
    const/16 v5, 0x22

    .line 48
    .line 49
    const/16 v6, 0x5c

    .line 50
    .line 51
    if-ne v4, v6, :cond_5

    .line 52
    .line 53
    add-int/lit8 v4, v2, 0x1

    .line 54
    .line 55
    aget-char v7, v1, v4

    .line 56
    .line 57
    if-eq v7, v5, :cond_4

    .line 58
    .line 59
    const/16 v5, 0x3a

    .line 60
    .line 61
    if-eq v7, v5, :cond_4

    .line 62
    .line 63
    const/16 v5, 0x40

    .line 64
    .line 65
    if-eq v7, v5, :cond_4

    .line 66
    .line 67
    if-eq v7, v6, :cond_4

    .line 68
    .line 69
    const/16 v5, 0x75

    .line 70
    .line 71
    if-eq v7, v5, :cond_3

    .line 72
    .line 73
    const/16 v5, 0x78

    .line 74
    .line 75
    if-eq v7, v5, :cond_2

    .line 76
    .line 77
    .line 78
    packed-switch v7, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    packed-switch v7, :pswitch_data_1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 85
    move-result v2

    .line 86
    move v8, v4

    .line 87
    move v4, v2

    .line 88
    move v2, v8

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_2
    add-int/lit8 v4, v2, 0x2

    .line 92
    .line 93
    aget-char v4, v1, v4

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x3

    .line 96
    .line 97
    aget-char v5, v1, v2

    .line 98
    .line 99
    .line 100
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 101
    move-result v4

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_3
    add-int/lit8 v4, v2, 0x2

    .line 105
    .line 106
    aget-char v4, v1, v4

    .line 107
    .line 108
    add-int/lit8 v5, v2, 0x3

    .line 109
    .line 110
    aget-char v5, v1, v5

    .line 111
    .line 112
    add-int/lit8 v6, v2, 0x4

    .line 113
    .line 114
    aget-char v6, v1, v6

    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x5

    .line 117
    .line 118
    aget-char v7, v1, v2

    .line 119
    .line 120
    .line 121
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 122
    move-result v4

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :pswitch_0
    move v2, v4

    .line 125
    move v4, v7

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :cond_5
    if-ne v4, v5, :cond_6

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :cond_6
    :goto_1
    aput-char v4, v0, v3

    .line 132
    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_7
    :goto_2
    new-instance v1, Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 142
    return-object v1

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
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
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 5
    .line 6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 7
    .line 8
    const/16 v3, 0x27

    .line 9
    .line 10
    const/16 v4, 0x22

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    add-int/lit8 v5, v1, -0x1

    .line 15
    .line 16
    aget-char v5, v2, v5

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
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

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
    if-ge v1, v11, :cond_a

    .line 43
    .line 44
    aget-char v11, v2, v1

    .line 45
    .line 46
    if-ne v11, v12, :cond_3

    .line 47
    .line 48
    add-int/lit8 v11, v1, 0x1

    .line 49
    .line 50
    aget-char v12, v2, v11

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
    move-result v1

    .line 59
    .line 60
    move/from16 v19, v11

    .line 61
    move v11, v1

    .line 62
    .line 63
    move/from16 v1, v19

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v11, v1, 0x2

    .line 67
    .line 68
    aget-char v11, v2, v11

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x3

    .line 71
    .line 72
    aget-char v12, v2, v1

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
    add-int/lit8 v11, v1, 0x2

    .line 80
    .line 81
    aget-char v11, v2, v11

    .line 82
    .line 83
    add-int/lit8 v12, v1, 0x3

    .line 84
    .line 85
    aget-char v12, v2, v12

    .line 86
    .line 87
    add-int/lit8 v18, v1, 0x4

    .line 88
    .line 89
    aget-char v6, v2, v18

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x5

    .line 92
    .line 93
    aget-char v7, v2, v1

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
    const/16 v6, 0x8

    .line 109
    .line 110
    if-ge v8, v6, :cond_9

    .line 111
    .line 112
    if-nez v8, :cond_5

    .line 113
    .line 114
    if-nez v11, :cond_5

    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :cond_5
    if-eq v11, v15, :cond_7

    .line 119
    .line 120
    if-eq v11, v14, :cond_7

    .line 121
    .line 122
    if-ne v11, v13, :cond_6

    .line 123
    goto :goto_3

    .line 124
    .line 125
    :cond_6
    const/16 v7, 0x41

    .line 126
    goto :goto_4

    .line 127
    .line 128
    :cond_7
    :goto_3
    add-int/lit8 v7, v1, 0x1

    .line 129
    .line 130
    aget-char v7, v2, v7

    .line 131
    .line 132
    if-eq v7, v4, :cond_6

    .line 133
    .line 134
    if-eq v7, v3, :cond_6

    .line 135
    .line 136
    if-eq v7, v11, :cond_6

    .line 137
    goto :goto_7

    .line 138
    .line 139
    :goto_4
    if-lt v11, v7, :cond_8

    .line 140
    .line 141
    const/16 v7, 0x5a

    .line 142
    .line 143
    if-gt v11, v7, :cond_8

    .line 144
    .line 145
    add-int/lit8 v11, v11, 0x20

    .line 146
    int-to-char v11, v11

    .line 147
    .line 148
    .line 149
    :cond_8
    packed-switch v8, :pswitch_data_0

    .line 150
    goto :goto_6

    .line 151
    :pswitch_0
    int-to-byte v6, v11

    .line 152
    int-to-long v6, v6

    .line 153
    .line 154
    const/16 v11, 0x38

    .line 155
    shl-long/2addr v6, v11

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    const-wide v11, 0xffffffffffffffL

    .line 161
    :goto_5
    and-long/2addr v9, v11

    .line 162
    add-long/2addr v9, v6

    .line 163
    goto :goto_6

    .line 164
    :pswitch_1
    int-to-byte v6, v11

    .line 165
    int-to-long v6, v6

    .line 166
    .line 167
    const/16 v11, 0x30

    .line 168
    shl-long/2addr v6, v11

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    const-wide v11, 0xffffffffffffL

    .line 174
    goto :goto_5

    .line 175
    :pswitch_2
    int-to-byte v6, v11

    .line 176
    int-to-long v6, v6

    .line 177
    .line 178
    const/16 v11, 0x28

    .line 179
    shl-long/2addr v6, v11

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    const-wide v11, 0xffffffffffL

    .line 185
    goto :goto_5

    .line 186
    :pswitch_3
    int-to-byte v6, v11

    .line 187
    int-to-long v6, v6

    .line 188
    shl-long/2addr v6, v13

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    const-wide v11, 0xffffffffL

    .line 194
    goto :goto_5

    .line 195
    :pswitch_4
    int-to-byte v6, v11

    .line 196
    .line 197
    shl-int/lit8 v6, v6, 0x18

    .line 198
    int-to-long v6, v6

    .line 199
    .line 200
    .line 201
    const-wide/32 v11, 0xffffff

    .line 202
    goto :goto_5

    .line 203
    :pswitch_5
    int-to-byte v6, v11

    .line 204
    .line 205
    shl-int/lit8 v6, v6, 0x10

    .line 206
    int-to-long v6, v6

    .line 207
    .line 208
    .line 209
    const-wide/32 v11, 0xffff

    .line 210
    goto :goto_5

    .line 211
    :pswitch_6
    int-to-byte v7, v11

    .line 212
    .line 213
    shl-int/lit8 v6, v7, 0x8

    .line 214
    int-to-long v6, v6

    .line 215
    .line 216
    const-wide/16 v11, 0xff

    .line 217
    goto :goto_5

    .line 218
    :pswitch_7
    int-to-byte v6, v11

    .line 219
    int-to-long v9, v6

    .line 220
    .line 221
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 222
    .line 223
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_9
    :goto_8
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 228
    .line 229
    move-wide/from16 v9, v16

    .line 230
    .line 231
    :cond_a
    :goto_9
    cmp-long v6, v9, v16

    .line 232
    .line 233
    if-eqz v6, :cond_b

    .line 234
    return-wide v9

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :cond_b
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 240
    .line 241
    :goto_a
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 242
    .line 243
    if-ge v1, v8, :cond_13

    .line 244
    .line 245
    aget-char v8, v2, v1

    .line 246
    .line 247
    const/16 v9, 0x5c

    .line 248
    .line 249
    if-ne v8, v9, :cond_e

    .line 250
    .line 251
    add-int/lit8 v8, v1, 0x1

    .line 252
    .line 253
    aget-char v10, v2, v8

    .line 254
    .line 255
    const/16 v11, 0x75

    .line 256
    .line 257
    if-eq v10, v11, :cond_d

    .line 258
    .line 259
    const/16 v12, 0x78

    .line 260
    .line 261
    if-eq v10, v12, :cond_c

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 265
    move-result v1

    .line 266
    .line 267
    move/from16 v19, v8

    .line 268
    move v8, v1

    .line 269
    .line 270
    move/from16 v1, v19

    .line 271
    goto :goto_b

    .line 272
    .line 273
    :cond_c
    add-int/lit8 v8, v1, 0x2

    .line 274
    .line 275
    aget-char v8, v2, v8

    .line 276
    .line 277
    add-int/lit8 v1, v1, 0x3

    .line 278
    .line 279
    aget-char v10, v2, v1

    .line 280
    .line 281
    .line 282
    invoke-static {v8, v10}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 283
    move-result v8

    .line 284
    goto :goto_b

    .line 285
    .line 286
    :cond_d
    const/16 v12, 0x78

    .line 287
    .line 288
    add-int/lit8 v8, v1, 0x2

    .line 289
    .line 290
    aget-char v8, v2, v8

    .line 291
    .line 292
    add-int/lit8 v10, v1, 0x3

    .line 293
    .line 294
    aget-char v10, v2, v10

    .line 295
    .line 296
    add-int/lit8 v16, v1, 0x4

    .line 297
    .line 298
    aget-char v9, v2, v16

    .line 299
    .line 300
    add-int/lit8 v1, v1, 0x5

    .line 301
    .line 302
    aget-char v11, v2, v1

    .line 303
    .line 304
    .line 305
    invoke-static {v8, v10, v9, v11}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 306
    move-result v8

    .line 307
    goto :goto_b

    .line 308
    .line 309
    :cond_e
    const/16 v12, 0x78

    .line 310
    .line 311
    if-ne v8, v5, :cond_f

    .line 312
    goto :goto_e

    .line 313
    .line 314
    :cond_f
    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 315
    .line 316
    if-eq v8, v15, :cond_11

    .line 317
    .line 318
    if-eq v8, v14, :cond_11

    .line 319
    .line 320
    if-ne v8, v13, :cond_10

    .line 321
    goto :goto_c

    .line 322
    .line 323
    :cond_10
    const/16 v9, 0x41

    .line 324
    goto :goto_d

    .line 325
    .line 326
    :cond_11
    :goto_c
    aget-char v9, v2, v1

    .line 327
    .line 328
    if-eq v9, v4, :cond_10

    .line 329
    .line 330
    if-eq v9, v3, :cond_10

    .line 331
    .line 332
    if-eq v9, v8, :cond_10

    .line 333
    goto :goto_a

    .line 334
    .line 335
    :goto_d
    const/16 v10, 0x5a

    .line 336
    .line 337
    if-lt v8, v9, :cond_12

    .line 338
    .line 339
    if-gt v8, v10, :cond_12

    .line 340
    .line 341
    add-int/lit8 v8, v8, 0x20

    .line 342
    int-to-char v8, v8

    .line 343
    :cond_12
    int-to-long v3, v8

    .line 344
    xor-long/2addr v3, v6

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    const-wide v6, 0x100000001b3L

    .line 350
    mul-long/2addr v6, v3

    .line 351
    .line 352
    const/16 v3, 0x27

    .line 353
    .line 354
    const/16 v4, 0x22

    .line 355
    goto :goto_a

    .line 356
    :cond_13
    :goto_e
    return-wide v6

    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
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

.method public final getRawInt()I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 7
    array-length v3, v2

    .line 8
    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final getRawLong()J
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x7

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 7
    array-length v3, v2

    .line 8
    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 15
    move-result-wide v0

    .line 16
    return-wide v0

    .line 17
    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 8
    .line 9
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 10
    sub-int/2addr v0, v1

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 22
    return-object v2

    .line 23
    .line 24
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 25
    .line 26
    new-array v0, v0, [C

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 30
    .line 31
    aget-char v4, v3, v1

    .line 32
    .line 33
    const/16 v5, 0x22

    .line 34
    .line 35
    const/16 v6, 0x5c

    .line 36
    .line 37
    if-ne v4, v6, :cond_5

    .line 38
    .line 39
    add-int/lit8 v4, v1, 0x1

    .line 40
    .line 41
    aget-char v7, v3, v4

    .line 42
    .line 43
    if-eq v7, v5, :cond_4

    .line 44
    .line 45
    if-eq v7, v6, :cond_4

    .line 46
    .line 47
    const/16 v5, 0x75

    .line 48
    .line 49
    if-eq v7, v5, :cond_3

    .line 50
    .line 51
    const/16 v5, 0x78

    .line 52
    .line 53
    if-eq v7, v5, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 57
    move-result v1

    .line 58
    move v8, v4

    .line 59
    move v4, v1

    .line 60
    move v1, v8

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v4, v1, 0x2

    .line 64
    .line 65
    aget-char v4, v3, v4

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x3

    .line 68
    .line 69
    aget-char v3, v3, v1

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 73
    move-result v4

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_3
    add-int/lit8 v4, v1, 0x2

    .line 77
    .line 78
    aget-char v4, v3, v4

    .line 79
    .line 80
    add-int/lit8 v5, v1, 0x3

    .line 81
    .line 82
    aget-char v5, v3, v5

    .line 83
    .line 84
    add-int/lit8 v6, v1, 0x4

    .line 85
    .line 86
    aget-char v6, v3, v6

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x5

    .line 89
    .line 90
    aget-char v3, v3, v1

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v5, v6, v3}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 94
    move-result v4

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move v1, v4

    .line 97
    move v4, v7

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_5
    if-ne v4, v5, :cond_6

    .line 101
    .line 102
    new-instance v1, Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 106
    .line 107
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 108
    return-object v1

    .line 109
    .line 110
    :cond_6
    :goto_1
    aput-char v4, v0, v2

    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_0
.end method

.method public getStringLength()I
    .locals 6

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 22
    .line 23
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 24
    .line 25
    add-int/lit8 v3, v1, 0x8

    .line 26
    .line 27
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 28
    .line 29
    if-ge v3, v4, :cond_2

    .line 30
    array-length v4, v2

    .line 31
    .line 32
    if-ge v3, v4, :cond_2

    .line 33
    .line 34
    aget-char v4, v2, v1

    .line 35
    .line 36
    if-eq v4, v0, :cond_2

    .line 37
    .line 38
    add-int/lit8 v4, v1, 0x1

    .line 39
    .line 40
    aget-char v4, v2, v4

    .line 41
    .line 42
    if-eq v4, v0, :cond_2

    .line 43
    .line 44
    add-int/lit8 v4, v1, 0x2

    .line 45
    .line 46
    aget-char v4, v2, v4

    .line 47
    .line 48
    if-eq v4, v0, :cond_2

    .line 49
    .line 50
    add-int/lit8 v4, v1, 0x3

    .line 51
    .line 52
    aget-char v4, v2, v4

    .line 53
    .line 54
    if-eq v4, v0, :cond_2

    .line 55
    .line 56
    add-int/lit8 v4, v1, 0x4

    .line 57
    .line 58
    aget-char v4, v2, v4

    .line 59
    .line 60
    if-eq v4, v0, :cond_2

    .line 61
    .line 62
    add-int/lit8 v4, v1, 0x5

    .line 63
    .line 64
    aget-char v4, v2, v4

    .line 65
    .line 66
    if-eq v4, v0, :cond_2

    .line 67
    .line 68
    add-int/lit8 v4, v1, 0x6

    .line 69
    .line 70
    aget-char v4, v2, v4

    .line 71
    .line 72
    if-eq v4, v0, :cond_2

    .line 73
    .line 74
    add-int/lit8 v4, v1, 0x7

    .line 75
    .line 76
    aget-char v4, v2, v4

    .line 77
    .line 78
    if-eq v4, v0, :cond_2

    .line 79
    .line 80
    const/16 v1, 0x8

    .line 81
    move v5, v3

    .line 82
    move v3, v1

    .line 83
    move v1, v5

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v3, 0x0

    .line 86
    .line 87
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 88
    .line 89
    if-ge v1, v4, :cond_4

    .line 90
    .line 91
    aget-char v4, v2, v1

    .line 92
    .line 93
    if-ne v4, v0, :cond_3

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    :goto_2
    return v3
.end method

.method public info(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    move v4, v2

    .line 6
    .line 7
    :goto_0
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 8
    .line 9
    if-ge v2, v5, :cond_0

    .line 10
    move v5, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    move v5, v1

    .line 13
    .line 14
    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 15
    .line 16
    if-ge v2, v6, :cond_1

    .line 17
    move v6, v0

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    move v6, v1

    .line 20
    :goto_2
    and-int/2addr v5, v6

    .line 21
    .line 22
    const/16 v6, 0xa

    .line 23
    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 27
    .line 28
    aget-char v5, v5, v2

    .line 29
    .line 30
    if-ne v5, v6, :cond_2

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    move v4, v0

    .line 34
    .line 35
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 36
    add-int/2addr v4, v0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, ", "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    :cond_4
    const-string p1, "offset "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p1, ", character "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p1, ", line "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string p1, ", column "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string p1, ", fastjson-version "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string p1, "2.0.60"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    if-le v3, v0, :cond_5

    .line 107
    goto :goto_3

    .line 108
    .line 109
    :cond_5
    const/16 v6, 0x20

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 115
    .line 116
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->start:I

    .line 117
    .line 118
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->length:I

    .line 119
    .line 120
    .line 121
    const v3, 0xffff

    .line 122
    .line 123
    if-ge v2, v3, :cond_6

    .line 124
    goto :goto_4

    .line 125
    :cond_6
    move v2, v3

    .line 126
    .line 127
    .line 128
    :goto_4
    invoke-virtual {v1, p1, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    return-object p1
.end method

.method public isArray()Z
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x5b

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public isNull()Z
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x6e

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 15
    .line 16
    aget-char v0, v1, v0

    .line 17
    .line 18
    const/16 v1, 0x75

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final isReference()Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v2, 0x200000000L

    .line 10
    and-long/2addr v0, v2

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    return v1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 21
    .line 22
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 23
    .line 24
    const/16 v5, 0x7b

    .line 25
    .line 26
    if-eq v4, v5, :cond_1

    .line 27
    return v1

    .line 28
    .line 29
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    .line 31
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 32
    .line 33
    if-ne v4, v5, :cond_2

    .line 34
    return v1

    .line 35
    .line 36
    :cond_2
    aget-char v6, v0, v4

    .line 37
    .line 38
    :goto_0
    const/16 v7, 0x20

    .line 39
    .line 40
    if-gt v6, v7, :cond_4

    .line 41
    .line 42
    const-wide/16 v7, 0x1

    .line 43
    shl-long/2addr v7, v6

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const-wide v9, 0x100003701L

    .line 49
    and-long/2addr v7, v9

    .line 50
    .line 51
    cmp-long v7, v7, v2

    .line 52
    .line 53
    if-eqz v7, :cond_4

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    if-lt v4, v5, :cond_3

    .line 58
    return v1

    .line 59
    .line 60
    :cond_3
    aget-char v6, v0, v4

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_4
    add-int/lit8 v2, v4, 0x6

    .line 64
    .line 65
    if-ge v2, v5, :cond_6

    .line 66
    .line 67
    add-int/lit8 v2, v4, 0x1

    .line 68
    .line 69
    aget-char v2, v0, v2

    .line 70
    .line 71
    const/16 v3, 0x24

    .line 72
    .line 73
    if-ne v2, v3, :cond_6

    .line 74
    .line 75
    add-int/lit8 v2, v4, 0x2

    .line 76
    .line 77
    aget-char v2, v0, v2

    .line 78
    .line 79
    const/16 v3, 0x72

    .line 80
    .line 81
    if-ne v2, v3, :cond_6

    .line 82
    .line 83
    add-int/lit8 v2, v4, 0x3

    .line 84
    .line 85
    aget-char v2, v0, v2

    .line 86
    .line 87
    const/16 v3, 0x65

    .line 88
    .line 89
    if-ne v2, v3, :cond_6

    .line 90
    .line 91
    add-int/lit8 v2, v4, 0x4

    .line 92
    .line 93
    aget-char v2, v0, v2

    .line 94
    .line 95
    const/16 v3, 0x66

    .line 96
    .line 97
    if-ne v2, v3, :cond_6

    .line 98
    .line 99
    add-int/lit8 v2, v4, 0x5

    .line 100
    .line 101
    aget-char v2, v0, v2

    .line 102
    .line 103
    if-eq v2, v6, :cond_5

    .line 104
    goto :goto_1

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->isReference0([CIIC)Z

    .line 108
    move-result v0

    .line 109
    return v0

    .line 110
    :cond_6
    :goto_1
    return v1
.end method

.method public next()V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 7
    .line 8
    const/16 v3, 0x1a

    .line 9
    .line 10
    if-lt v0, v2, :cond_0

    .line 11
    move v2, v0

    .line 12
    :goto_0
    move v0, v3

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    aget-char v0, v1, v0

    .line 18
    .line 19
    :goto_1
    const/16 v4, 0x20

    .line 20
    .line 21
    if-gt v0, v4, :cond_2

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    shl-long/2addr v4, v0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v6, 0x100003701L

    .line 30
    and-long/2addr v4, v6

    .line 31
    .line 32
    const-wide/16 v6, 0x0

    .line 33
    .line 34
    cmp-long v4, v4, v6

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 39
    .line 40
    if-ne v2, v0, :cond_1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 44
    .line 45
    aget-char v2, v1, v2

    .line 46
    move v8, v2

    .line 47
    move v2, v0

    .line 48
    move v0, v8

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 52
    .line 53
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 54
    .line 55
    const/16 v1, 0x2f

    .line 56
    .line 57
    if-ne v0, v1, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 61
    :cond_3
    return-void
.end method

.method public nextIfArrayEnd()Z
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    const/16 v2, 0x5d

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    .line 14
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 15
    .line 16
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 17
    .line 18
    const/16 v4, 0x1a

    .line 19
    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    move v3, v1

    .line 22
    :goto_0
    move v1, v4

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 26
    .line 27
    aget-char v1, v2, v1

    .line 28
    .line 29
    :goto_1
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v7, 0x100003701L

    .line 35
    .line 36
    const-wide/16 v9, 0x1

    .line 37
    .line 38
    const/16 v11, 0x20

    .line 39
    .line 40
    if-gt v1, v11, :cond_3

    .line 41
    .line 42
    shl-long v12, v9, v1

    .line 43
    and-long/2addr v12, v7

    .line 44
    .line 45
    cmp-long v12, v12, v5

    .line 46
    .line 47
    if-eqz v12, :cond_3

    .line 48
    .line 49
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 50
    .line 51
    if-ne v3, v1, :cond_2

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 55
    .line 56
    aget-char v3, v2, v3

    .line 57
    .line 58
    move/from16 v16, v3

    .line 59
    move v3, v1

    .line 60
    .line 61
    move/from16 v1, v16

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_3
    const/16 v12, 0x2c

    .line 65
    const/4 v13, 0x1

    .line 66
    .line 67
    if-ne v1, v12, :cond_6

    .line 68
    .line 69
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 70
    .line 71
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 72
    .line 73
    if-ne v3, v1, :cond_4

    .line 74
    move v1, v3

    .line 75
    move v3, v4

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_4
    add-int/lit8 v1, v3, 0x1

    .line 79
    .line 80
    aget-char v3, v2, v3

    .line 81
    .line 82
    :goto_2
    move/from16 v16, v3

    .line 83
    move v3, v1

    .line 84
    .line 85
    move/from16 v1, v16

    .line 86
    .line 87
    :goto_3
    if-gt v1, v11, :cond_6

    .line 88
    .line 89
    shl-long v14, v9, v1

    .line 90
    and-long/2addr v14, v7

    .line 91
    .line 92
    cmp-long v12, v14, v5

    .line 93
    .line 94
    if-eqz v12, :cond_6

    .line 95
    .line 96
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 97
    .line 98
    if-ne v3, v1, :cond_5

    .line 99
    move v1, v4

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_5
    add-int/lit8 v1, v3, 0x1

    .line 103
    .line 104
    aget-char v3, v2, v3

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_6
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 108
    .line 109
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 110
    .line 111
    const/16 v2, 0x2f

    .line 112
    .line 113
    if-ne v1, v2, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 117
    :cond_7
    return v13
.end method

.method public nextIfArrayStart()Z
    .locals 9

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x5b

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 11
    .line 12
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    .line 14
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

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
    aget-char v1, v0, v1

    .line 26
    .line 27
    :goto_1
    const/16 v4, 0x20

    .line 28
    .line 29
    if-gt v1, v4, :cond_3

    .line 30
    .line 31
    const-wide/16 v4, 0x1

    .line 32
    shl-long/2addr v4, v1

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v6, 0x100003701L

    .line 38
    and-long/2addr v4, v6

    .line 39
    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    cmp-long v4, v4, v6

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 47
    .line 48
    if-ne v2, v1, :cond_2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .line 52
    .line 53
    aget-char v2, v0, v2

    .line 54
    move v8, v2

    .line 55
    move v2, v1

    .line 56
    move v1, v8

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_3
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 60
    .line 61
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 62
    .line 63
    const/16 v0, 0x2f

    .line 64
    .line 65
    if-ne v1, v0, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 69
    :cond_4
    const/4 v0, 0x1

    .line 70
    return v0
.end method

.method public nextIfComma()Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    :goto_0
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v5, 0x100003701L

    .line 14
    .line 15
    const-wide/16 v7, 0x1

    .line 16
    .line 17
    const/16 v9, 0x20

    .line 18
    .line 19
    const/16 v10, 0x1a

    .line 20
    .line 21
    if-gt v2, v9, :cond_1

    .line 22
    .line 23
    shl-long v11, v7, v2

    .line 24
    and-long/2addr v11, v5

    .line 25
    .line 26
    cmp-long v11, v11, v3

    .line 27
    .line 28
    if-eqz v11, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 31
    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    move v2, v10

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 37
    .line 38
    aget-char v1, v0, v1

    .line 39
    move v13, v2

    .line 40
    move v2, v1

    .line 41
    move v1, v13

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    const/16 v11, 0x2c

    .line 45
    .line 46
    if-eq v2, v11, :cond_2

    .line 47
    .line 48
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 49
    .line 50
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 51
    const/4 v0, 0x0

    .line 52
    return v0

    .line 53
    .line 54
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 55
    .line 56
    if-ne v1, v2, :cond_3

    .line 57
    move v2, v1

    .line 58
    :goto_1
    move v1, v10

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 62
    .line 63
    aget-char v1, v0, v1

    .line 64
    .line 65
    :goto_2
    if-gt v1, v9, :cond_5

    .line 66
    .line 67
    shl-long v11, v7, v1

    .line 68
    and-long/2addr v11, v5

    .line 69
    .line 70
    cmp-long v11, v11, v3

    .line 71
    .line 72
    if-eqz v11, :cond_5

    .line 73
    .line 74
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 75
    .line 76
    if-ne v2, v1, :cond_4

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 80
    .line 81
    aget-char v2, v0, v2

    .line 82
    move v13, v2

    .line 83
    move v2, v1

    .line 84
    move v1, v13

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 88
    .line 89
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 90
    .line 91
    const/16 v0, 0x2f

    .line 92
    .line 93
    if-ne v1, v0, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 97
    :cond_6
    const/4 v0, 0x1

    .line 98
    return v0
.end method

.method public nextIfInfinity()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    const/16 v3, 0x49

    .line 9
    .line 10
    if-ne v2, v3, :cond_3

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x6

    .line 13
    .line 14
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 15
    .line 16
    if-ge v2, v3, :cond_3

    .line 17
    .line 18
    aget-char v4, v0, v1

    .line 19
    .line 20
    const/16 v5, 0x6e

    .line 21
    .line 22
    if-ne v4, v5, :cond_3

    .line 23
    .line 24
    add-int/lit8 v4, v1, 0x1

    .line 25
    .line 26
    aget-char v4, v0, v4

    .line 27
    .line 28
    const/16 v6, 0x66

    .line 29
    .line 30
    if-ne v4, v6, :cond_3

    .line 31
    .line 32
    add-int/lit8 v4, v1, 0x2

    .line 33
    .line 34
    aget-char v4, v0, v4

    .line 35
    .line 36
    const/16 v6, 0x69

    .line 37
    .line 38
    if-ne v4, v6, :cond_3

    .line 39
    .line 40
    add-int/lit8 v4, v1, 0x3

    .line 41
    .line 42
    aget-char v4, v0, v4

    .line 43
    .line 44
    if-ne v4, v5, :cond_3

    .line 45
    .line 46
    add-int/lit8 v4, v1, 0x4

    .line 47
    .line 48
    aget-char v4, v0, v4

    .line 49
    .line 50
    if-ne v4, v6, :cond_3

    .line 51
    .line 52
    add-int/lit8 v4, v1, 0x5

    .line 53
    .line 54
    aget-char v4, v0, v4

    .line 55
    .line 56
    const/16 v5, 0x74

    .line 57
    .line 58
    if-ne v4, v5, :cond_3

    .line 59
    .line 60
    aget-char v2, v0, v2

    .line 61
    .line 62
    const/16 v4, 0x79

    .line 63
    .line 64
    if-ne v2, v4, :cond_3

    .line 65
    .line 66
    add-int/lit8 v2, v1, 0x7

    .line 67
    .line 68
    const/16 v4, 0x1a

    .line 69
    .line 70
    if-ne v2, v3, :cond_0

    .line 71
    move v1, v2

    .line 72
    :goto_0
    move v2, v4

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 76
    .line 77
    aget-char v2, v0, v2

    .line 78
    .line 79
    :goto_1
    const/16 v3, 0x20

    .line 80
    .line 81
    if-gt v2, v3, :cond_2

    .line 82
    .line 83
    const-wide/16 v5, 0x1

    .line 84
    shl-long/2addr v5, v2

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    const-wide v7, 0x100003701L

    .line 90
    and-long/2addr v5, v7

    .line 91
    .line 92
    const-wide/16 v7, 0x0

    .line 93
    .line 94
    cmp-long v3, v5, v7

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 99
    .line 100
    if-ne v1, v2, :cond_1

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 104
    .line 105
    aget-char v1, v0, v1

    .line 106
    move v9, v2

    .line 107
    move v2, v1

    .line 108
    move v1, v9

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 112
    .line 113
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 114
    const/4 v0, 0x1

    .line 115
    return v0

    .line 116
    :cond_3
    const/4 v0, 0x0

    .line 117
    return v0
.end method

.method public nextIfMatch(C)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    :goto_0
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v5, 0x100003701L

    .line 14
    .line 15
    const-wide/16 v7, 0x1

    .line 16
    .line 17
    const/16 v9, 0x20

    .line 18
    .line 19
    const/16 v10, 0x1a

    .line 20
    .line 21
    if-gt v2, v9, :cond_1

    .line 22
    .line 23
    shl-long v11, v7, v2

    .line 24
    and-long/2addr v11, v5

    .line 25
    .line 26
    cmp-long v11, v11, v3

    .line 27
    .line 28
    if-eqz v11, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 31
    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    move v2, v10

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 37
    .line 38
    aget-char v1, v0, v1

    .line 39
    move v13, v2

    .line 40
    move v2, v1

    .line 41
    move v1, v13

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    if-eq v2, p1, :cond_2

    .line 45
    const/4 p1, 0x0

    .line 46
    return p1

    .line 47
    .line 48
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 49
    .line 50
    if-ne v1, p1, :cond_3

    .line 51
    move p1, v1

    .line 52
    :goto_1
    move v1, v10

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_3
    add-int/lit8 p1, v1, 0x1

    .line 56
    .line 57
    aget-char v1, v0, v1

    .line 58
    .line 59
    :goto_2
    if-gt v1, v9, :cond_5

    .line 60
    .line 61
    shl-long v11, v7, v1

    .line 62
    and-long/2addr v11, v5

    .line 63
    .line 64
    cmp-long v2, v11, v3

    .line 65
    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 69
    .line 70
    if-ne p1, v1, :cond_4

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_4
    add-int/lit8 v1, p1, 0x1

    .line 74
    .line 75
    aget-char p1, v0, p1

    .line 76
    move v13, v1

    .line 77
    move v1, p1

    .line 78
    move p1, v13

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_5
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 82
    .line 83
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 84
    .line 85
    const/16 p1, 0x2f

    .line 86
    .line 87
    if-ne v1, p1, :cond_6

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 91
    :cond_6
    const/4 p1, 0x1

    .line 92
    return p1
.end method

.method public nextIfMatchIdent(CCC)Z
    .locals 7

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x2

    .line 4
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    if-gt v2, v3, :cond_6

    aget-char v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-char p2, p1, p2

    if-eq p2, p3, :cond_1

    goto :goto_2

    :cond_1
    const/16 p2, 0x1a

    if-ne v2, v3, :cond_2

    :goto_0
    move p3, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x3

    .line 5
    aget-char p3, p1, v2

    move v2, v0

    :goto_1
    const/16 v0, 0x20

    if-gt p3, v0, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p3

    const-wide v5, 0x100003701L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    .line 6
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-char v0, p1, v2

    move v2, p3

    move p3, v0

    goto :goto_1

    .line 7
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x3

    if-ne v2, p1, :cond_5

    if-eq p3, p2, :cond_5

    const/16 p1, 0x28

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p3, p1, :cond_5

    const/16 p1, 0x29

    if-eq p3, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p3, p1, :cond_5

    return v1

    .line 8
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public nextIfMatchIdent(CCCC)Z
    .locals 7

    .line 10
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 12
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x3

    .line 13
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    if-gt v2, v3, :cond_6

    aget-char v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-char p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 p2, v0, 0x2

    aget-char p2, p1, p2

    if-eq p2, p4, :cond_1

    goto :goto_2

    :cond_1
    const/16 p2, 0x1a

    if-ne v2, v3, :cond_2

    :goto_0
    move p3, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x4

    .line 14
    aget-char p3, p1, v2

    move v2, v0

    :goto_1
    const/16 p4, 0x20

    if-gt p3, p4, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p3

    const-wide v5, 0x100003701L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p4, v3, v5

    if-eqz p4, :cond_4

    .line 15
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-char p4, p1, v2

    move v2, p3

    move p3, p4

    goto :goto_1

    .line 16
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x4

    if-ne v2, p1, :cond_5

    if-eq p3, p2, :cond_5

    const/16 p1, 0x28

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p3, p1, :cond_5

    const/16 p1, 0x29

    if-eq p3, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p3, p1, :cond_5

    return v1

    .line 17
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 18
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public nextIfMatchIdent(CCCCC)Z
    .locals 5

    .line 19
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 21
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x4

    .line 22
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    if-gt v2, v3, :cond_6

    aget-char v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-char p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 p2, v0, 0x2

    aget-char p2, p1, p2

    if-ne p2, p4, :cond_6

    add-int/lit8 p2, v0, 0x3

    aget-char p2, p1, p2

    if-eq p2, p5, :cond_1

    goto :goto_2

    :cond_1
    const/16 p2, 0x1a

    if-ne v2, v3, :cond_2

    :goto_0
    move p3, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x5

    .line 23
    aget-char p3, p1, v2

    move v2, v0

    :goto_1
    const/16 p4, 0x20

    if-gt p3, p4, :cond_4

    const-wide/16 p4, 0x1

    shl-long/2addr p4, p3

    const-wide v3, 0x100003701L

    and-long/2addr p4, v3

    const-wide/16 v3, 0x0

    cmp-long p4, p4, v3

    if-eqz p4, :cond_4

    .line 24
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-char p4, p1, v2

    move v2, p3

    move p3, p4

    goto :goto_1

    .line 25
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x5

    if-ne v2, p1, :cond_5

    if-eq p3, p2, :cond_5

    const/16 p1, 0x28

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p3, p1, :cond_5

    const/16 p1, 0x29

    if-eq p3, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p3, p1, :cond_5

    return v1

    .line 26
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 27
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public nextIfMatchIdent(CCCCCC)Z
    .locals 5

    .line 28
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 30
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x5

    .line 31
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    if-gt v2, v3, :cond_6

    aget-char v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-char p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 p2, v0, 0x2

    aget-char p2, p1, p2

    if-ne p2, p4, :cond_6

    add-int/lit8 p2, v0, 0x3

    aget-char p2, p1, p2

    if-ne p2, p5, :cond_6

    add-int/lit8 p2, v0, 0x4

    aget-char p2, p1, p2

    if-eq p2, p6, :cond_1

    goto :goto_2

    :cond_1
    const/16 p2, 0x1a

    if-ne v2, v3, :cond_2

    :goto_0
    move p3, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x6

    .line 32
    aget-char p3, p1, v2

    move v2, v0

    :goto_1
    const/16 p4, 0x20

    if-gt p3, p4, :cond_4

    const-wide/16 p4, 0x1

    shl-long/2addr p4, p3

    const-wide v3, 0x100003701L

    and-long/2addr p4, v3

    const-wide/16 v3, 0x0

    cmp-long p4, p4, v3

    if-eqz p4, :cond_4

    .line 33
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-char p4, p1, v2

    move v2, p3

    move p3, p4

    goto :goto_1

    .line 34
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x6

    if-ne v2, p1, :cond_5

    if-eq p3, p2, :cond_5

    const/16 p1, 0x28

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p3, p1, :cond_5

    const/16 p1, 0x29

    if-eq p3, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p3, p1, :cond_5

    return v1

    .line 35
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 36
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfName4Match10(J)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xc

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    aget-char p1, v0, p1

    .line 27
    .line 28
    const/16 p2, 0x3a

    .line 29
    .line 30
    if-eq p1, p2, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0xd

    .line 34
    .line 35
    aget-char p1, v0, v2

    .line 36
    .line 37
    :goto_0
    const/16 p2, 0x20

    .line 38
    .line 39
    if-gt p1, p2, :cond_2

    .line 40
    .line 41
    const-wide/16 v2, 0x1

    .line 42
    shl-long/2addr v2, p1

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const-wide v4, 0x100003701L

    .line 48
    and-long/2addr v2, v4

    .line 49
    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    cmp-long p2, v2, v4

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    add-int/lit8 p1, v1, 0x1

    .line 57
    .line 58
    aget-char p2, v0, v1

    .line 59
    move v1, p1

    .line 60
    move p1, p2

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 64
    .line 65
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 66
    const/4 p1, 0x1

    .line 67
    return p1

    .line 68
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match11(J)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xd

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    aget-char p1, v0, p1

    .line 27
    .line 28
    const/16 p2, 0x22

    .line 29
    .line 30
    if-ne p1, p2, :cond_3

    .line 31
    .line 32
    add-int/lit8 p1, v1, 0xc

    .line 33
    .line 34
    aget-char p1, v0, p1

    .line 35
    .line 36
    const/16 p2, 0x3a

    .line 37
    .line 38
    if-eq p1, p2, :cond_1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0xe

    .line 42
    .line 43
    aget-char p1, v0, v2

    .line 44
    .line 45
    :goto_0
    const/16 p2, 0x20

    .line 46
    .line 47
    if-gt p1, p2, :cond_2

    .line 48
    .line 49
    const-wide/16 v2, 0x1

    .line 50
    shl-long/2addr v2, p1

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v4, 0x100003701L

    .line 56
    and-long/2addr v2, v4

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    cmp-long p2, v2, v4

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    add-int/lit8 p1, v1, 0x1

    .line 65
    .line 66
    aget-char p2, v0, v1

    .line 67
    move v1, p1

    .line 68
    move p1, p2

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 72
    .line 73
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match12(JB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xe

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    aget-char p1, v0, p1

    .line 27
    .line 28
    if-ne p1, p3, :cond_3

    .line 29
    .line 30
    add-int/lit8 p1, v1, 0xc

    .line 31
    .line 32
    aget-char p1, v0, p1

    .line 33
    .line 34
    const/16 p2, 0x22

    .line 35
    .line 36
    if-ne p1, p2, :cond_3

    .line 37
    .line 38
    add-int/lit8 p1, v1, 0xd

    .line 39
    .line 40
    aget-char p1, v0, p1

    .line 41
    .line 42
    const/16 p2, 0x3a

    .line 43
    .line 44
    if-eq p1, p2, :cond_1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0xf

    .line 48
    .line 49
    aget-char p1, v0, v2

    .line 50
    .line 51
    :goto_0
    const/16 p2, 0x20

    .line 52
    .line 53
    if-gt p1, p2, :cond_2

    .line 54
    .line 55
    const-wide/16 p2, 0x1

    .line 56
    shl-long/2addr p2, p1

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const-wide v2, 0x100003701L

    .line 62
    and-long/2addr p2, v2

    .line 63
    .line 64
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    cmp-long p2, p2, v2

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    add-int/lit8 p1, v1, 0x1

    .line 71
    .line 72
    aget-char p2, v0, v1

    .line 73
    move v1, p1

    .line 74
    move p1, p2

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 78
    .line 79
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 80
    const/4 p1, 0x1

    .line 81
    return p1

    .line 82
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match13(JI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xf

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eq p1, p3, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x10

    .line 34
    .line 35
    aget-char p1, v0, v2

    .line 36
    .line 37
    :goto_0
    const/16 p2, 0x20

    .line 38
    .line 39
    if-gt p1, p2, :cond_2

    .line 40
    .line 41
    const-wide/16 p2, 0x1

    .line 42
    shl-long/2addr p2, p1

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const-wide v2, 0x100003701L

    .line 48
    and-long/2addr p2, v2

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    cmp-long p2, p2, v2

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    add-int/lit8 p1, v1, 0x1

    .line 57
    .line 58
    aget-char p2, v0, v1

    .line 59
    move v1, p1

    .line 60
    move p1, p2

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 64
    .line 65
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 66
    const/4 p1, 0x1

    .line 67
    return p1

    .line 68
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match14(JI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x10

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 28
    move-result p1

    .line 29
    .line 30
    if-ne p1, p3, :cond_3

    .line 31
    .line 32
    add-int/lit8 p1, v1, 0xf

    .line 33
    .line 34
    aget-char p1, v0, p1

    .line 35
    .line 36
    const/16 p2, 0x3a

    .line 37
    .line 38
    if-eq p1, p2, :cond_1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x11

    .line 42
    .line 43
    aget-char p1, v0, v2

    .line 44
    .line 45
    :goto_0
    const/16 p2, 0x20

    .line 46
    .line 47
    if-gt p1, p2, :cond_2

    .line 48
    .line 49
    const-wide/16 p2, 0x1

    .line 50
    shl-long/2addr p2, p1

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v2, 0x100003701L

    .line 56
    and-long/2addr p2, v2

    .line 57
    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    cmp-long p2, p2, v2

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    add-int/lit8 p1, v1, 0x1

    .line 65
    .line 66
    aget-char p2, v0, v1

    .line 67
    move v1, p1

    .line 68
    move p1, p2

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 72
    .line 73
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match15(JI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x11

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 28
    move-result p1

    .line 29
    .line 30
    if-ne p1, p3, :cond_3

    .line 31
    .line 32
    add-int/lit8 p1, v1, 0xf

    .line 33
    .line 34
    aget-char p1, v0, p1

    .line 35
    .line 36
    const/16 p2, 0x22

    .line 37
    .line 38
    if-ne p1, p2, :cond_3

    .line 39
    .line 40
    add-int/lit8 p1, v1, 0x10

    .line 41
    .line 42
    aget-char p1, v0, p1

    .line 43
    .line 44
    const/16 p2, 0x3a

    .line 45
    .line 46
    if-eq p1, p2, :cond_1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x12

    .line 50
    .line 51
    aget-char p1, v0, v2

    .line 52
    .line 53
    :goto_0
    const/16 p2, 0x20

    .line 54
    .line 55
    if-gt p1, p2, :cond_2

    .line 56
    .line 57
    const-wide/16 p2, 0x1

    .line 58
    shl-long/2addr p2, p1

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const-wide v2, 0x100003701L

    .line 64
    and-long/2addr p2, v2

    .line 65
    .line 66
    const-wide/16 v2, 0x0

    .line 67
    .line 68
    cmp-long p2, p2, v2

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    add-int/lit8 p1, v1, 0x1

    .line 73
    .line 74
    aget-char p2, v0, v1

    .line 75
    move v1, p1

    .line 76
    move p1, p2

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 80
    .line 81
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 82
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match16(JIB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x12

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 28
    move-result p1

    .line 29
    .line 30
    if-ne p1, p3, :cond_3

    .line 31
    .line 32
    add-int/lit8 p1, v1, 0xf

    .line 33
    .line 34
    aget-char p1, v0, p1

    .line 35
    .line 36
    if-ne p1, p4, :cond_3

    .line 37
    .line 38
    add-int/lit8 p1, v1, 0x10

    .line 39
    .line 40
    aget-char p1, v0, p1

    .line 41
    .line 42
    const/16 p2, 0x22

    .line 43
    .line 44
    if-ne p1, p2, :cond_3

    .line 45
    .line 46
    add-int/lit8 p1, v1, 0x11

    .line 47
    .line 48
    aget-char p1, v0, p1

    .line 49
    .line 50
    const/16 p2, 0x3a

    .line 51
    .line 52
    if-eq p1, p2, :cond_1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x13

    .line 56
    .line 57
    aget-char p1, v0, v2

    .line 58
    .line 59
    :goto_0
    const/16 p2, 0x20

    .line 60
    .line 61
    if-gt p1, p2, :cond_2

    .line 62
    .line 63
    const-wide/16 p2, 0x1

    .line 64
    shl-long/2addr p2, p1

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide v2, 0x100003701L

    .line 70
    and-long/2addr p2, v2

    .line 71
    .line 72
    const-wide/16 v2, 0x0

    .line 73
    .line 74
    cmp-long p2, p2, v2

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    add-int/lit8 p1, v1, 0x1

    .line 79
    .line 80
    aget-char p2, v0, v1

    .line 81
    move v1, p1

    .line 82
    move p1, p2

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 86
    .line 87
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 88
    const/4 p1, 0x1

    .line 89
    return p1

    .line 90
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match17(JJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x13

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x14

    .line 36
    .line 37
    aget-char p1, v0, v2

    .line 38
    .line 39
    :goto_0
    const/16 p2, 0x20

    .line 40
    .line 41
    if-gt p1, p2, :cond_2

    .line 42
    .line 43
    const-wide/16 p2, 0x1

    .line 44
    shl-long/2addr p2, p1

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v2, 0x100003701L

    .line 50
    and-long/2addr p2, v2

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    cmp-long p2, p2, v2

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    add-int/lit8 p1, v1, 0x1

    .line 59
    .line 60
    aget-char p2, v0, v1

    .line 61
    move v1, p1

    .line 62
    move p1, p2

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 66
    .line 67
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    const/4 p1, 0x1

    .line 69
    return p1

    .line 70
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match18(JJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x14

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    aget-char p1, v0, p1

    .line 37
    .line 38
    const/16 p2, 0x3a

    .line 39
    .line 40
    if-eq p1, p2, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x15

    .line 44
    .line 45
    aget-char p1, v0, v2

    .line 46
    .line 47
    :goto_0
    const/16 p2, 0x20

    .line 48
    .line 49
    if-gt p1, p2, :cond_2

    .line 50
    .line 51
    const-wide/16 p2, 0x1

    .line 52
    shl-long/2addr p2, p1

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide v2, 0x100003701L

    .line 58
    and-long/2addr p2, v2

    .line 59
    .line 60
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    cmp-long p2, p2, v2

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    add-int/lit8 p1, v1, 0x1

    .line 67
    .line 68
    aget-char p2, v0, v1

    .line 69
    move v1, p1

    .line 70
    move p1, p2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 74
    .line 75
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 76
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match19(JJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x15

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    aget-char p1, v0, p1

    .line 37
    .line 38
    const/16 p2, 0x22

    .line 39
    .line 40
    if-ne p1, p2, :cond_3

    .line 41
    .line 42
    add-int/lit8 p1, v1, 0x14

    .line 43
    .line 44
    aget-char p1, v0, p1

    .line 45
    .line 46
    const/16 p2, 0x3a

    .line 47
    .line 48
    if-eq p1, p2, :cond_1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x16

    .line 52
    .line 53
    aget-char p1, v0, v2

    .line 54
    .line 55
    :goto_0
    const/16 p2, 0x20

    .line 56
    .line 57
    if-gt p1, p2, :cond_2

    .line 58
    .line 59
    const-wide/16 p2, 0x1

    .line 60
    shl-long/2addr p2, p1

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const-wide v2, 0x100003701L

    .line 66
    and-long/2addr p2, v2

    .line 67
    .line 68
    const-wide/16 v2, 0x0

    .line 69
    .line 70
    cmp-long p2, p2, v2

    .line 71
    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    add-int/lit8 p1, v1, 0x1

    .line 75
    .line 76
    aget-char p2, v0, v1

    .line 77
    move v1, p1

    .line 78
    move p1, p2

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 82
    .line 83
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 84
    const/4 p1, 0x1

    .line 85
    return p1

    .line 86
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match2()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x4

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x3

    .line 13
    .line 14
    aget-char v3, v0, v3

    .line 15
    .line 16
    const/16 v4, 0x3a

    .line 17
    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x5

    .line 22
    .line 23
    aget-char v2, v0, v2

    .line 24
    .line 25
    :goto_0
    const/16 v3, 0x20

    .line 26
    .line 27
    if-gt v2, v3, :cond_1

    .line 28
    .line 29
    const-wide/16 v3, 0x1

    .line 30
    shl-long/2addr v3, v2

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v5, 0x100003701L

    .line 36
    and-long/2addr v3, v5

    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    cmp-long v3, v3, v5

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    aget-char v1, v0, v1

    .line 47
    move v7, v2

    .line 48
    move v2, v1

    .line 49
    move v1, v7

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 53
    .line 54
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 55
    const/4 v0, 0x1

    .line 56
    return v0

    .line 57
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 58
    return v0
.end method

.method public final nextIfName4Match20(JJB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x16

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    aget-char p1, v0, p1

    .line 37
    .line 38
    if-ne p1, p5, :cond_3

    .line 39
    .line 40
    add-int/lit8 p1, v1, 0x14

    .line 41
    .line 42
    aget-char p1, v0, p1

    .line 43
    .line 44
    const/16 p2, 0x22

    .line 45
    .line 46
    if-ne p1, p2, :cond_3

    .line 47
    .line 48
    add-int/lit8 p1, v1, 0x15

    .line 49
    .line 50
    aget-char p1, v0, p1

    .line 51
    .line 52
    const/16 p2, 0x3a

    .line 53
    .line 54
    if-eq p1, p2, :cond_1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x17

    .line 58
    .line 59
    aget-char p1, v0, v2

    .line 60
    .line 61
    :goto_0
    const/16 p2, 0x20

    .line 62
    .line 63
    if-gt p1, p2, :cond_2

    .line 64
    .line 65
    const-wide/16 p2, 0x1

    .line 66
    shl-long/2addr p2, p1

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    const-wide p4, 0x100003701L

    .line 72
    and-long/2addr p2, p4

    .line 73
    .line 74
    const-wide/16 p4, 0x0

    .line 75
    .line 76
    cmp-long p2, p2, p4

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    add-int/lit8 p1, v1, 0x1

    .line 81
    .line 82
    aget-char p2, v0, v1

    .line 83
    move v1, p1

    .line 84
    move p1, p2

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 88
    .line 89
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 90
    const/4 p1, 0x1

    .line 91
    return p1

    .line 92
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match21(JJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x17

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eq p1, p5, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x18

    .line 44
    .line 45
    aget-char p1, v0, v2

    .line 46
    .line 47
    :goto_0
    const/16 p2, 0x20

    .line 48
    .line 49
    if-gt p1, p2, :cond_2

    .line 50
    .line 51
    const-wide/16 p2, 0x1

    .line 52
    shl-long/2addr p2, p1

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide p4, 0x100003701L

    .line 58
    and-long/2addr p2, p4

    .line 59
    .line 60
    const-wide/16 p4, 0x0

    .line 61
    .line 62
    cmp-long p2, p2, p4

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    add-int/lit8 p1, v1, 0x1

    .line 67
    .line 68
    aget-char p2, v0, v1

    .line 69
    move v1, p1

    .line 70
    move p1, p2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 74
    .line 75
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 76
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match22(JJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x18

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 38
    move-result p1

    .line 39
    .line 40
    if-ne p1, p5, :cond_3

    .line 41
    .line 42
    add-int/lit8 p1, v1, 0x17

    .line 43
    .line 44
    aget-char p1, v0, p1

    .line 45
    .line 46
    const/16 p2, 0x3a

    .line 47
    .line 48
    if-eq p1, p2, :cond_1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x19

    .line 52
    .line 53
    aget-char p1, v0, v2

    .line 54
    .line 55
    :goto_0
    const/16 p2, 0x20

    .line 56
    .line 57
    if-gt p1, p2, :cond_2

    .line 58
    .line 59
    const-wide/16 p2, 0x1

    .line 60
    shl-long/2addr p2, p1

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const-wide p4, 0x100003701L

    .line 66
    and-long/2addr p2, p4

    .line 67
    .line 68
    const-wide/16 p4, 0x0

    .line 69
    .line 70
    cmp-long p2, p2, p4

    .line 71
    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    add-int/lit8 p1, v1, 0x1

    .line 75
    .line 76
    aget-char p2, v0, v1

    .line 77
    move v1, p1

    .line 78
    move p1, p2

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 82
    .line 83
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 84
    const/4 p1, 0x1

    .line 85
    return p1

    .line 86
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match23(JJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x19

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 38
    move-result p1

    .line 39
    .line 40
    if-ne p1, p5, :cond_3

    .line 41
    .line 42
    add-int/lit8 p1, v1, 0x17

    .line 43
    .line 44
    aget-char p1, v0, p1

    .line 45
    .line 46
    const/16 p2, 0x22

    .line 47
    .line 48
    if-ne p1, p2, :cond_3

    .line 49
    .line 50
    add-int/lit8 p1, v1, 0x18

    .line 51
    .line 52
    aget-char p1, v0, p1

    .line 53
    .line 54
    const/16 p2, 0x3a

    .line 55
    .line 56
    if-eq p1, p2, :cond_1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1a

    .line 60
    .line 61
    aget-char p1, v0, v2

    .line 62
    .line 63
    :goto_0
    const/16 p2, 0x20

    .line 64
    .line 65
    if-gt p1, p2, :cond_2

    .line 66
    .line 67
    const-wide/16 p2, 0x1

    .line 68
    shl-long/2addr p2, p1

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    const-wide p4, 0x100003701L

    .line 74
    and-long/2addr p2, p4

    .line 75
    .line 76
    const-wide/16 p4, 0x0

    .line 77
    .line 78
    cmp-long p2, p2, p4

    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    add-int/lit8 p1, v1, 0x1

    .line 83
    .line 84
    aget-char p2, v0, v1

    .line 85
    move v1, p1

    .line 86
    move p1, p2

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 90
    .line 91
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 92
    const/4 p1, 0x1

    .line 93
    return p1

    .line 94
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match24(JJIB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1a

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 38
    move-result p1

    .line 39
    .line 40
    if-ne p1, p5, :cond_3

    .line 41
    .line 42
    add-int/lit8 p1, v1, 0x17

    .line 43
    .line 44
    aget-char p1, v0, p1

    .line 45
    .line 46
    if-ne p1, p6, :cond_3

    .line 47
    .line 48
    add-int/lit8 p1, v1, 0x18

    .line 49
    .line 50
    aget-char p1, v0, p1

    .line 51
    .line 52
    const/16 p2, 0x22

    .line 53
    .line 54
    if-ne p1, p2, :cond_3

    .line 55
    .line 56
    add-int/lit8 p1, v1, 0x19

    .line 57
    .line 58
    aget-char p1, v0, p1

    .line 59
    .line 60
    const/16 p2, 0x3a

    .line 61
    .line 62
    if-eq p1, p2, :cond_1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_1
    add-int/lit8 v1, v1, 0x1b

    .line 66
    .line 67
    aget-char p1, v0, v2

    .line 68
    .line 69
    :goto_0
    const/16 p2, 0x20

    .line 70
    .line 71
    if-gt p1, p2, :cond_2

    .line 72
    .line 73
    const-wide/16 p2, 0x1

    .line 74
    shl-long/2addr p2, p1

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    const-wide p4, 0x100003701L

    .line 80
    and-long/2addr p2, p4

    .line 81
    .line 82
    const-wide/16 p4, 0x0

    .line 83
    .line 84
    cmp-long p2, p2, p4

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    add-int/lit8 p1, v1, 0x1

    .line 89
    .line 90
    aget-char p2, v0, v1

    .line 91
    move v1, p1

    .line 92
    move p1, p2

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 96
    .line 97
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 98
    const/4 p1, 0x1

    .line 99
    return p1

    .line 100
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match25(JJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1b

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1c

    .line 46
    .line 47
    aget-char p1, v0, v2

    .line 48
    .line 49
    :goto_0
    const/16 p2, 0x20

    .line 50
    .line 51
    if-gt p1, p2, :cond_2

    .line 52
    .line 53
    const-wide/16 p2, 0x1

    .line 54
    shl-long/2addr p2, p1

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    const-wide p4, 0x100003701L

    .line 60
    and-long/2addr p2, p4

    .line 61
    .line 62
    const-wide/16 p4, 0x0

    .line 63
    .line 64
    cmp-long p2, p2, p4

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    add-int/lit8 p1, v1, 0x1

    .line 69
    .line 70
    aget-char p2, v0, v1

    .line 71
    move v1, p1

    .line 72
    move p1, p2

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 76
    .line 77
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 78
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match26(JJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1c

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    aget-char p1, v0, p1

    .line 47
    .line 48
    const/16 p2, 0x3a

    .line 49
    .line 50
    if-eq p1, p2, :cond_1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1d

    .line 56
    .line 57
    aget-char p1, p1, v2

    .line 58
    .line 59
    :goto_0
    const/16 p2, 0x20

    .line 60
    .line 61
    if-gt p1, p2, :cond_2

    .line 62
    .line 63
    const-wide/16 p2, 0x1

    .line 64
    shl-long/2addr p2, p1

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide p4, 0x100003701L

    .line 70
    and-long/2addr p2, p4

    .line 71
    .line 72
    const-wide/16 p4, 0x0

    .line 73
    .line 74
    cmp-long p2, p2, p4

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 79
    .line 80
    add-int/lit8 p2, v1, 0x1

    .line 81
    .line 82
    aget-char p1, p1, v1

    .line 83
    move v1, p2

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 87
    .line 88
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 89
    const/4 p1, 0x1

    .line 90
    return p1

    .line 91
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match27(JJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1d

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    aget-char p1, v0, p1

    .line 47
    .line 48
    const/16 p2, 0x22

    .line 49
    .line 50
    if-ne p1, p2, :cond_3

    .line 51
    .line 52
    add-int/lit8 p1, v1, 0x1c

    .line 53
    .line 54
    aget-char p1, v0, p1

    .line 55
    .line 56
    const/16 p2, 0x3a

    .line 57
    .line 58
    if-eq p1, p2, :cond_1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1e

    .line 64
    .line 65
    aget-char p1, p1, v2

    .line 66
    .line 67
    :goto_0
    const/16 p2, 0x20

    .line 68
    .line 69
    if-gt p1, p2, :cond_2

    .line 70
    .line 71
    const-wide/16 p2, 0x1

    .line 72
    shl-long/2addr p2, p1

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-wide p4, 0x100003701L

    .line 78
    and-long/2addr p2, p4

    .line 79
    .line 80
    const-wide/16 p4, 0x0

    .line 81
    .line 82
    cmp-long p2, p2, p4

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 87
    .line 88
    add-int/lit8 p2, v1, 0x1

    .line 89
    .line 90
    aget-char p1, p1, v1

    .line 91
    move v1, p2

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 95
    .line 96
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 97
    const/4 p1, 0x1

    .line 98
    return p1

    .line 99
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match28(JJJB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1e

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    aget-char p1, v0, p1

    .line 47
    .line 48
    if-ne p1, p7, :cond_3

    .line 49
    .line 50
    add-int/lit8 p1, v1, 0x1c

    .line 51
    .line 52
    aget-char p1, v0, p1

    .line 53
    .line 54
    const/16 p2, 0x22

    .line 55
    .line 56
    if-ne p1, p2, :cond_3

    .line 57
    .line 58
    add-int/lit8 p1, v1, 0x1d

    .line 59
    .line 60
    aget-char p1, v0, p1

    .line 61
    .line 62
    const/16 p2, 0x3a

    .line 63
    .line 64
    if-eq p1, p2, :cond_1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1f

    .line 68
    .line 69
    aget-char p1, v0, v2

    .line 70
    .line 71
    :goto_0
    const/16 p2, 0x20

    .line 72
    .line 73
    if-gt p1, p2, :cond_2

    .line 74
    .line 75
    const-wide/16 p2, 0x1

    .line 76
    shl-long/2addr p2, p1

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    const-wide p4, 0x100003701L

    .line 82
    and-long/2addr p2, p4

    .line 83
    .line 84
    const-wide/16 p4, 0x0

    .line 85
    .line 86
    cmp-long p2, p2, p4

    .line 87
    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    add-int/lit8 p1, v1, 0x1

    .line 91
    .line 92
    aget-char p2, v0, v1

    .line 93
    move v1, p1

    .line 94
    move p1, p2

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 98
    .line 99
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 100
    const/4 p1, 0x1

    .line 101
    return p1

    .line 102
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match29(JJJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1f

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eq p1, p7, :cond_1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    const/16 p1, 0x20

    .line 54
    add-int/2addr v1, p1

    .line 55
    .line 56
    aget-char p2, v0, v2

    .line 57
    .line 58
    :goto_0
    if-gt p2, p1, :cond_2

    .line 59
    .line 60
    const-wide/16 p3, 0x1

    .line 61
    shl-long/2addr p3, p2

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const-wide p5, 0x100003701L

    .line 67
    and-long/2addr p3, p5

    .line 68
    .line 69
    const-wide/16 p5, 0x0

    .line 70
    .line 71
    cmp-long p3, p3, p5

    .line 72
    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    add-int/lit8 p2, v1, 0x1

    .line 76
    .line 77
    aget-char p3, v0, v1

    .line 78
    move v1, p2

    .line 79
    move p2, p3

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 83
    .line 84
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 85
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match3()Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x5

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x3

    .line 13
    .line 14
    aget-char v3, v0, v3

    .line 15
    .line 16
    const/16 v4, 0x22

    .line 17
    .line 18
    if-ne v3, v4, :cond_2

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x4

    .line 21
    .line 22
    aget-char v1, v0, v1

    .line 23
    .line 24
    const/16 v3, 0x3a

    .line 25
    .line 26
    if-eq v1, v3, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    aget-char v1, v0, v2

    .line 30
    .line 31
    :goto_0
    const/16 v3, 0x20

    .line 32
    .line 33
    if-gt v1, v3, :cond_1

    .line 34
    .line 35
    const-wide/16 v3, 0x1

    .line 36
    shl-long/2addr v3, v1

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const-wide v5, 0x100003701L

    .line 42
    and-long/2addr v3, v5

    .line 43
    .line 44
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    cmp-long v3, v3, v5

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    aget-char v1, v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x1

    .line 55
    add-int/2addr v2, v0

    .line 56
    .line 57
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 58
    .line 59
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 60
    return v0

    .line 61
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 62
    return v0
.end method

.method public final nextIfName4Match30(JJJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x20

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 48
    move-result p1

    .line 49
    .line 50
    if-ne p1, p7, :cond_3

    .line 51
    .line 52
    add-int/lit8 p1, v1, 0x1f

    .line 53
    .line 54
    aget-char p1, v0, p1

    .line 55
    .line 56
    const/16 p2, 0x3a

    .line 57
    .line 58
    if-eq p1, p2, :cond_1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x21

    .line 62
    .line 63
    aget-char p1, v0, v2

    .line 64
    .line 65
    :goto_0
    const/16 p2, 0x20

    .line 66
    .line 67
    if-gt p1, p2, :cond_2

    .line 68
    .line 69
    const-wide/16 p2, 0x1

    .line 70
    shl-long/2addr p2, p1

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const-wide p4, 0x100003701L

    .line 76
    and-long/2addr p2, p4

    .line 77
    .line 78
    const-wide/16 p4, 0x0

    .line 79
    .line 80
    cmp-long p2, p2, p4

    .line 81
    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    add-int/lit8 p1, v1, 0x1

    .line 85
    .line 86
    aget-char p2, v0, v1

    .line 87
    move v1, p1

    .line 88
    move p1, p2

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 92
    .line 93
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 94
    const/4 p1, 0x1

    .line 95
    return p1

    .line 96
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match31(JJJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x21

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 48
    move-result p1

    .line 49
    .line 50
    if-ne p1, p7, :cond_3

    .line 51
    .line 52
    add-int/lit8 p1, v1, 0x1f

    .line 53
    .line 54
    aget-char p1, v0, p1

    .line 55
    .line 56
    const/16 p2, 0x22

    .line 57
    .line 58
    if-ne p1, p2, :cond_3

    .line 59
    .line 60
    add-int/lit8 p1, v1, 0x20

    .line 61
    .line 62
    aget-char p1, v0, p1

    .line 63
    .line 64
    const/16 p3, 0x3a

    .line 65
    .line 66
    if-eq p1, p3, :cond_1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    add-int/2addr v1, p2

    .line 69
    .line 70
    aget-char p1, v0, v2

    .line 71
    .line 72
    :goto_0
    const/16 p2, 0x20

    .line 73
    .line 74
    if-gt p1, p2, :cond_2

    .line 75
    .line 76
    const-wide/16 p2, 0x1

    .line 77
    shl-long/2addr p2, p1

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const-wide p4, 0x100003701L

    .line 83
    and-long/2addr p2, p4

    .line 84
    .line 85
    const-wide/16 p4, 0x0

    .line 86
    .line 87
    cmp-long p2, p2, p4

    .line 88
    .line 89
    if-eqz p2, :cond_2

    .line 90
    .line 91
    add-int/lit8 p1, v1, 0x1

    .line 92
    .line 93
    aget-char p2, v0, v1

    .line 94
    move v1, p1

    .line 95
    move p1, p2

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 99
    .line 100
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 101
    const/4 p1, 0x1

    .line 102
    return p1

    .line 103
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match32(JJJIB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x22

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 48
    move-result p1

    .line 49
    .line 50
    if-ne p1, p7, :cond_3

    .line 51
    .line 52
    add-int/lit8 p1, v1, 0x1f

    .line 53
    .line 54
    aget-char p1, v0, p1

    .line 55
    .line 56
    if-ne p1, p8, :cond_3

    .line 57
    .line 58
    add-int/lit8 p1, v1, 0x20

    .line 59
    .line 60
    aget-char p1, v0, p1

    .line 61
    .line 62
    const/16 p2, 0x22

    .line 63
    .line 64
    if-ne p1, p2, :cond_3

    .line 65
    .line 66
    add-int/lit8 p1, v1, 0x21

    .line 67
    .line 68
    aget-char p1, v0, p1

    .line 69
    .line 70
    const/16 p2, 0x3a

    .line 71
    .line 72
    if-eq p1, p2, :cond_1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x23

    .line 76
    .line 77
    aget-char p1, v0, v2

    .line 78
    .line 79
    :goto_0
    const/16 p2, 0x20

    .line 80
    .line 81
    if-gt p1, p2, :cond_2

    .line 82
    .line 83
    const-wide/16 p2, 0x1

    .line 84
    shl-long/2addr p2, p1

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    const-wide p4, 0x100003701L

    .line 90
    and-long/2addr p2, p4

    .line 91
    .line 92
    const-wide/16 p4, 0x0

    .line 93
    .line 94
    cmp-long p2, p2, p4

    .line 95
    .line 96
    if-eqz p2, :cond_2

    .line 97
    .line 98
    add-int/lit8 p1, v1, 0x1

    .line 99
    .line 100
    aget-char p2, v0, v1

    .line 101
    move v1, p1

    .line 102
    move p1, p2

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 106
    .line 107
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 108
    const/4 p1, 0x1

    .line 109
    return p1

    .line 110
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match33(JJJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x23

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x24

    .line 56
    .line 57
    aget-char p1, v0, v2

    .line 58
    .line 59
    :goto_0
    const/16 p2, 0x20

    .line 60
    .line 61
    if-gt p1, p2, :cond_2

    .line 62
    .line 63
    const-wide/16 p2, 0x1

    .line 64
    shl-long/2addr p2, p1

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide p4, 0x100003701L

    .line 70
    and-long/2addr p2, p4

    .line 71
    .line 72
    const-wide/16 p4, 0x0

    .line 73
    .line 74
    cmp-long p2, p2, p4

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    add-int/lit8 p1, v1, 0x1

    .line 79
    .line 80
    aget-char p2, v0, v1

    .line 81
    move v1, p1

    .line 82
    move p1, p2

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 86
    .line 87
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 88
    const/4 p1, 0x1

    .line 89
    return p1

    .line 90
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match34(JJJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x24

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    aget-char p1, v0, p1

    .line 57
    .line 58
    const/16 p2, 0x3a

    .line 59
    .line 60
    if-eq p1, p2, :cond_1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x25

    .line 64
    .line 65
    aget-char p1, v0, v2

    .line 66
    .line 67
    :goto_0
    const/16 p2, 0x20

    .line 68
    .line 69
    if-gt p1, p2, :cond_2

    .line 70
    .line 71
    const-wide/16 p2, 0x1

    .line 72
    shl-long/2addr p2, p1

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-wide p4, 0x100003701L

    .line 78
    and-long/2addr p2, p4

    .line 79
    .line 80
    const-wide/16 p4, 0x0

    .line 81
    .line 82
    cmp-long p2, p2, p4

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    add-int/lit8 p1, v1, 0x1

    .line 87
    .line 88
    aget-char p2, v0, v1

    .line 89
    move v1, p1

    .line 90
    move p1, p2

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 94
    .line 95
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 96
    const/4 p1, 0x1

    .line 97
    return p1

    .line 98
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match35(JJJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x25

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    aget-char p1, v0, p1

    .line 57
    .line 58
    const/16 p2, 0x22

    .line 59
    .line 60
    if-ne p1, p2, :cond_3

    .line 61
    .line 62
    add-int/lit8 p1, v1, 0x24

    .line 63
    .line 64
    aget-char p1, v0, p1

    .line 65
    .line 66
    const/16 p2, 0x3a

    .line 67
    .line 68
    if-eq p1, p2, :cond_1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    add-int/lit8 v1, v1, 0x26

    .line 72
    .line 73
    aget-char p1, v0, v2

    .line 74
    .line 75
    :goto_0
    const/16 p2, 0x20

    .line 76
    .line 77
    if-gt p1, p2, :cond_2

    .line 78
    .line 79
    const-wide/16 p2, 0x1

    .line 80
    shl-long/2addr p2, p1

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    const-wide p4, 0x100003701L

    .line 86
    and-long/2addr p2, p4

    .line 87
    .line 88
    const-wide/16 p4, 0x0

    .line 89
    .line 90
    cmp-long p2, p2, p4

    .line 91
    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    add-int/lit8 p1, v1, 0x1

    .line 95
    .line 96
    aget-char p2, v0, v1

    .line 97
    move v1, p1

    .line 98
    move p1, p2

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 102
    .line 103
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 104
    const/4 p1, 0x1

    .line 105
    return p1

    .line 106
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match36(JJJJB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x26

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    aget-char p1, v0, p1

    .line 57
    .line 58
    move/from16 p2, p9

    .line 59
    .line 60
    if-ne p1, p2, :cond_3

    .line 61
    .line 62
    add-int/lit8 p1, v1, 0x24

    .line 63
    .line 64
    aget-char p1, v0, p1

    .line 65
    .line 66
    const/16 p2, 0x22

    .line 67
    .line 68
    if-ne p1, p2, :cond_3

    .line 69
    .line 70
    add-int/lit8 p1, v1, 0x25

    .line 71
    .line 72
    aget-char p1, v0, p1

    .line 73
    .line 74
    const/16 p2, 0x3a

    .line 75
    .line 76
    if-eq p1, p2, :cond_1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x27

    .line 80
    .line 81
    aget-char p1, v0, v2

    .line 82
    .line 83
    :goto_0
    const/16 p2, 0x20

    .line 84
    .line 85
    if-gt p1, p2, :cond_2

    .line 86
    .line 87
    const-wide/16 p2, 0x1

    .line 88
    shl-long/2addr p2, p1

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    const-wide p4, 0x100003701L

    .line 94
    and-long/2addr p2, p4

    .line 95
    .line 96
    const-wide/16 p4, 0x0

    .line 97
    .line 98
    cmp-long p2, p2, p4

    .line 99
    .line 100
    if-eqz p2, :cond_2

    .line 101
    .line 102
    add-int/lit8 p1, v1, 0x1

    .line 103
    .line 104
    aget-char p2, v0, v1

    .line 105
    move v1, p1

    .line 106
    move p1, p2

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 110
    .line 111
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 112
    const/4 p1, 0x1

    .line 113
    return p1

    .line 114
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match37(JJJJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x27

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 58
    move-result p1

    .line 59
    .line 60
    move/from16 p2, p9

    .line 61
    .line 62
    if-eq p1, p2, :cond_1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_1
    add-int/lit8 v1, v1, 0x28

    .line 66
    .line 67
    aget-char p1, v0, v2

    .line 68
    .line 69
    :goto_0
    const/16 p2, 0x20

    .line 70
    .line 71
    if-gt p1, p2, :cond_2

    .line 72
    .line 73
    const-wide/16 p2, 0x1

    .line 74
    shl-long/2addr p2, p1

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    const-wide p4, 0x100003701L

    .line 80
    and-long/2addr p2, p4

    .line 81
    .line 82
    const-wide/16 p4, 0x0

    .line 83
    .line 84
    cmp-long p2, p2, p4

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    add-int/lit8 p1, v1, 0x1

    .line 89
    .line 90
    aget-char p2, v0, v1

    .line 91
    move v1, p1

    .line 92
    move p1, p2

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 96
    .line 97
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 98
    const/4 p1, 0x1

    .line 99
    return p1

    .line 100
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match38(JJJJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x28

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 58
    move-result p1

    .line 59
    .line 60
    move/from16 p2, p9

    .line 61
    .line 62
    if-ne p1, p2, :cond_3

    .line 63
    .line 64
    add-int/lit8 p1, v1, 0x27

    .line 65
    .line 66
    aget-char p1, v0, p1

    .line 67
    .line 68
    const/16 p2, 0x3a

    .line 69
    .line 70
    if-eq p1, p2, :cond_1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x29

    .line 74
    .line 75
    aget-char p1, v0, v2

    .line 76
    .line 77
    :goto_0
    const/16 p2, 0x20

    .line 78
    .line 79
    if-gt p1, p2, :cond_2

    .line 80
    .line 81
    const-wide/16 p2, 0x1

    .line 82
    shl-long/2addr p2, p1

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide p4, 0x100003701L

    .line 88
    and-long/2addr p2, p4

    .line 89
    .line 90
    const-wide/16 p4, 0x0

    .line 91
    .line 92
    cmp-long p2, p2, p4

    .line 93
    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    add-int/lit8 p1, v1, 0x1

    .line 97
    .line 98
    aget-char p2, v0, v1

    .line 99
    move v1, p1

    .line 100
    move p1, p2

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 104
    .line 105
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 106
    const/4 p1, 0x1

    .line 107
    return p1

    .line 108
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match39(JJJJI)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x29

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 58
    move-result p1

    .line 59
    .line 60
    move/from16 p2, p9

    .line 61
    .line 62
    if-ne p1, p2, :cond_3

    .line 63
    .line 64
    add-int/lit8 p1, v1, 0x27

    .line 65
    .line 66
    aget-char p1, v0, p1

    .line 67
    .line 68
    const/16 p2, 0x22

    .line 69
    .line 70
    if-ne p1, p2, :cond_3

    .line 71
    .line 72
    add-int/lit8 p1, v1, 0x28

    .line 73
    .line 74
    aget-char p1, v0, p1

    .line 75
    .line 76
    const/16 p2, 0x3a

    .line 77
    .line 78
    if-eq p1, p2, :cond_1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x2a

    .line 82
    .line 83
    aget-char p1, v0, v2

    .line 84
    .line 85
    :goto_0
    const/16 p2, 0x20

    .line 86
    .line 87
    if-gt p1, p2, :cond_2

    .line 88
    .line 89
    const-wide/16 p2, 0x1

    .line 90
    shl-long/2addr p2, p1

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const-wide p4, 0x100003701L

    .line 96
    and-long/2addr p2, p4

    .line 97
    .line 98
    const-wide/16 p4, 0x0

    .line 99
    .line 100
    cmp-long p2, p2, p4

    .line 101
    .line 102
    if-eqz p2, :cond_2

    .line 103
    .line 104
    add-int/lit8 p1, v1, 0x1

    .line 105
    .line 106
    aget-char p2, v0, v1

    .line 107
    move v1, p1

    .line 108
    move p1, p2

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 112
    .line 113
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 114
    const/4 p1, 0x1

    .line 115
    return p1

    .line 116
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match4(B)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x6

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x3

    .line 13
    .line 14
    aget-char v3, v0, v3

    .line 15
    .line 16
    if-ne v3, p1, :cond_2

    .line 17
    .line 18
    add-int/lit8 p1, v1, 0x4

    .line 19
    .line 20
    aget-char p1, v0, p1

    .line 21
    .line 22
    const/16 v3, 0x22

    .line 23
    .line 24
    if-ne p1, v3, :cond_2

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x5

    .line 27
    .line 28
    aget-char p1, v0, v1

    .line 29
    .line 30
    const/16 v1, 0x3a

    .line 31
    .line 32
    if-eq p1, v1, :cond_0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    aget-char p1, v0, v2

    .line 36
    .line 37
    :goto_0
    const/16 v1, 0x20

    .line 38
    .line 39
    if-gt p1, v1, :cond_1

    .line 40
    .line 41
    const-wide/16 v3, 0x1

    .line 42
    shl-long/2addr v3, p1

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const-wide v5, 0x100003701L

    .line 48
    and-long/2addr v3, v5

    .line 49
    .line 50
    const-wide/16 v5, 0x0

    .line 51
    .line 52
    cmp-long v1, v3, v5

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    aget-char p1, v0, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x1

    .line 61
    add-int/2addr v2, v0

    .line 62
    .line 63
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 64
    .line 65
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 66
    return v0

    .line 67
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 68
    return p1
.end method

.method public final nextIfName4Match40(JJJJIB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2a

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 58
    move-result p1

    .line 59
    .line 60
    move/from16 p2, p9

    .line 61
    .line 62
    if-ne p1, p2, :cond_3

    .line 63
    .line 64
    add-int/lit8 p1, v1, 0x27

    .line 65
    .line 66
    aget-char p1, v0, p1

    .line 67
    .line 68
    move/from16 p2, p10

    .line 69
    .line 70
    if-ne p1, p2, :cond_3

    .line 71
    .line 72
    add-int/lit8 p1, v1, 0x28

    .line 73
    .line 74
    aget-char p1, v0, p1

    .line 75
    .line 76
    const/16 p2, 0x22

    .line 77
    .line 78
    if-ne p1, p2, :cond_3

    .line 79
    .line 80
    add-int/lit8 p1, v1, 0x29

    .line 81
    .line 82
    aget-char p1, v0, p1

    .line 83
    .line 84
    const/16 p2, 0x3a

    .line 85
    .line 86
    if-eq p1, p2, :cond_1

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x2b

    .line 90
    .line 91
    aget-char p1, v0, v2

    .line 92
    .line 93
    :goto_0
    const/16 p2, 0x20

    .line 94
    .line 95
    if-gt p1, p2, :cond_2

    .line 96
    .line 97
    const-wide/16 p2, 0x1

    .line 98
    shl-long/2addr p2, p1

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    const-wide p4, 0x100003701L

    .line 104
    and-long/2addr p2, p4

    .line 105
    .line 106
    const-wide/16 p4, 0x0

    .line 107
    .line 108
    cmp-long p2, p2, p4

    .line 109
    .line 110
    if-eqz p2, :cond_2

    .line 111
    .line 112
    add-int/lit8 p1, v1, 0x1

    .line 113
    .line 114
    aget-char p2, v0, v1

    .line 115
    move v1, p1

    .line 116
    move p1, p2

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 120
    .line 121
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 122
    const/4 p1, 0x1

    .line 123
    return p1

    .line 124
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match41(JJJJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2b

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 58
    move-result-wide p1

    .line 59
    .line 60
    cmp-long p1, p1, p9

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_1
    add-int/lit8 v1, v1, 0x2c

    .line 66
    .line 67
    aget-char p1, v0, v2

    .line 68
    .line 69
    :goto_0
    const/16 p2, 0x20

    .line 70
    .line 71
    if-gt p1, p2, :cond_2

    .line 72
    .line 73
    const-wide/16 p2, 0x1

    .line 74
    shl-long/2addr p2, p1

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    const-wide p4, 0x100003701L

    .line 80
    and-long/2addr p2, p4

    .line 81
    .line 82
    const-wide/16 p4, 0x0

    .line 83
    .line 84
    cmp-long p2, p2, p4

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    add-int/lit8 p1, v1, 0x1

    .line 89
    .line 90
    aget-char p2, v0, v1

    .line 91
    move v1, p1

    .line 92
    move p1, p2

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 96
    .line 97
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 98
    const/4 p1, 0x1

    .line 99
    return p1

    .line 100
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match42(JJJJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2c

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 58
    move-result-wide p1

    .line 59
    .line 60
    cmp-long p1, p1, p9

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    add-int/lit8 p1, v1, 0x2b

    .line 65
    .line 66
    aget-char p1, v0, p1

    .line 67
    .line 68
    const/16 p2, 0x3a

    .line 69
    .line 70
    if-eq p1, p2, :cond_1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x2d

    .line 74
    .line 75
    aget-char p1, v0, v2

    .line 76
    .line 77
    :goto_0
    const/16 p2, 0x20

    .line 78
    .line 79
    if-gt p1, p2, :cond_2

    .line 80
    .line 81
    const-wide/16 p2, 0x1

    .line 82
    shl-long/2addr p2, p1

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide p4, 0x100003701L

    .line 88
    and-long/2addr p2, p4

    .line 89
    .line 90
    const-wide/16 p4, 0x0

    .line 91
    .line 92
    cmp-long p2, p2, p4

    .line 93
    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    add-int/lit8 p1, v1, 0x1

    .line 97
    .line 98
    aget-char p2, v0, v1

    .line 99
    move v1, p1

    .line 100
    move p1, p2

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 104
    .line 105
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 106
    const/4 p1, 0x1

    .line 107
    return p1

    .line 108
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match43(JJJJJ)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2d

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x13

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    cmp-long p1, p1, p5

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1b

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    cmp-long p1, p1, p7

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    add-int/lit8 p1, v1, 0x23

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 58
    move-result-wide p1

    .line 59
    .line 60
    cmp-long p1, p1, p9

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    add-int/lit8 p1, v1, 0x2b

    .line 65
    .line 66
    aget-char p1, v0, p1

    .line 67
    .line 68
    const/16 p2, 0x22

    .line 69
    .line 70
    if-ne p1, p2, :cond_3

    .line 71
    .line 72
    add-int/lit8 p1, v1, 0x2c

    .line 73
    .line 74
    aget-char p1, v0, p1

    .line 75
    .line 76
    const/16 p2, 0x3a

    .line 77
    .line 78
    if-eq p1, p2, :cond_1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x2e

    .line 82
    .line 83
    aget-char p1, v0, v2

    .line 84
    .line 85
    :goto_0
    const/16 p2, 0x20

    .line 86
    .line 87
    if-gt p1, p2, :cond_2

    .line 88
    .line 89
    const-wide/16 p2, 0x1

    .line 90
    shl-long/2addr p2, p1

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const-wide p4, 0x100003701L

    .line 96
    and-long/2addr p2, p4

    .line 97
    .line 98
    const-wide/16 p4, 0x0

    .line 99
    .line 100
    cmp-long p2, p2, p4

    .line 101
    .line 102
    if-eqz p2, :cond_2

    .line 103
    .line 104
    add-int/lit8 p1, v1, 0x1

    .line 105
    .line 106
    aget-char p2, v0, v1

    .line 107
    move v1, p1

    .line 108
    move p1, p2

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 112
    .line 113
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 114
    const/4 p1, 0x1

    .line 115
    return p1

    .line 116
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match5(I)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x7

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x3

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eq v3, p1, :cond_0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 22
    .line 23
    aget-char p1, v0, v2

    .line 24
    .line 25
    :goto_0
    const/16 v2, 0x20

    .line 26
    .line 27
    if-gt p1, v2, :cond_1

    .line 28
    .line 29
    const-wide/16 v2, 0x1

    .line 30
    shl-long/2addr v2, p1

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v4, 0x100003701L

    .line 36
    and-long/2addr v2, v4

    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    cmp-long v2, v2, v4

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    add-int/lit8 p1, v1, 0x1

    .line 45
    .line 46
    aget-char v1, v0, v1

    .line 47
    move v6, v1

    .line 48
    move v1, p1

    .line 49
    move p1, v6

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 53
    .line 54
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public final nextIfName4Match6(I)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x3

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 16
    move-result v3

    .line 17
    .line 18
    if-ne v3, p1, :cond_2

    .line 19
    .line 20
    add-int/lit8 p1, v1, 0x7

    .line 21
    .line 22
    aget-char p1, v0, p1

    .line 23
    .line 24
    const/16 v3, 0x3a

    .line 25
    .line 26
    if-eq p1, v3, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x9

    .line 30
    .line 31
    aget-char p1, v0, v2

    .line 32
    .line 33
    :goto_0
    const/16 v2, 0x20

    .line 34
    .line 35
    if-gt p1, v2, :cond_1

    .line 36
    .line 37
    const-wide/16 v2, 0x1

    .line 38
    shl-long/2addr v2, p1

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v4, 0x100003701L

    .line 44
    and-long/2addr v2, v4

    .line 45
    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    cmp-long v2, v2, v4

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    add-int/lit8 p1, v1, 0x1

    .line 53
    .line 54
    aget-char v1, v0, v1

    .line 55
    move v6, v1

    .line 56
    move v1, p1

    .line 57
    move p1, v6

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 61
    .line 62
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 63
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 66
    return p1
.end method

.method public final nextIfName4Match7(I)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x9

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ne v3, p1, :cond_3

    .line 21
    .line 22
    add-int/lit8 p1, v1, 0x7

    .line 23
    .line 24
    aget-char p1, v0, p1

    .line 25
    .line 26
    const/16 v3, 0x22

    .line 27
    .line 28
    if-ne p1, v3, :cond_3

    .line 29
    .line 30
    add-int/lit8 p1, v1, 0x8

    .line 31
    .line 32
    aget-char p1, v0, p1

    .line 33
    .line 34
    const/16 v3, 0x3a

    .line 35
    .line 36
    if-eq p1, v3, :cond_1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0xa

    .line 40
    .line 41
    aget-char p1, v0, v2

    .line 42
    .line 43
    :goto_0
    const/16 v2, 0x20

    .line 44
    .line 45
    if-gt p1, v2, :cond_2

    .line 46
    .line 47
    const-wide/16 v2, 0x1

    .line 48
    shl-long/2addr v2, p1

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const-wide v4, 0x100003701L

    .line 54
    and-long/2addr v2, v4

    .line 55
    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    cmp-long v2, v2, v4

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    add-int/lit8 p1, v1, 0x1

    .line 63
    .line 64
    aget-char v1, v0, v1

    .line 65
    move v6, v1

    .line 66
    move v1, p1

    .line 67
    move p1, v6

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 71
    .line 72
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 73
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match8(IB)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xa

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ne v3, p1, :cond_3

    .line 21
    .line 22
    add-int/lit8 p1, v1, 0x7

    .line 23
    .line 24
    aget-char p1, v0, p1

    .line 25
    .line 26
    if-ne p1, p2, :cond_3

    .line 27
    .line 28
    add-int/lit8 p1, v1, 0x8

    .line 29
    .line 30
    aget-char p1, v0, p1

    .line 31
    .line 32
    const/16 p2, 0x22

    .line 33
    .line 34
    if-ne p1, p2, :cond_3

    .line 35
    .line 36
    add-int/lit8 p1, v1, 0x9

    .line 37
    .line 38
    aget-char p1, v0, p1

    .line 39
    .line 40
    const/16 p2, 0x3a

    .line 41
    .line 42
    if-eq p1, p2, :cond_1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0xb

    .line 46
    .line 47
    aget-char p1, v0, v2

    .line 48
    .line 49
    :goto_0
    const/16 p2, 0x20

    .line 50
    .line 51
    if-gt p1, p2, :cond_2

    .line 52
    .line 53
    const-wide/16 v2, 0x1

    .line 54
    shl-long/2addr v2, p1

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    const-wide v4, 0x100003701L

    .line 60
    and-long/2addr v2, v4

    .line 61
    .line 62
    const-wide/16 v4, 0x0

    .line 63
    .line 64
    cmp-long p2, v2, v4

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    add-int/lit8 p1, v1, 0x1

    .line 69
    .line 70
    aget-char p2, v0, v1

    .line 71
    move v1, p1

    .line 72
    move p1, p2

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 76
    .line 77
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 78
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match9(J)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xb

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    return v4

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v1, v1, 0xc

    .line 26
    .line 27
    aget-char p1, v0, v2

    .line 28
    .line 29
    :goto_0
    const/16 p2, 0x20

    .line 30
    .line 31
    if-gt p1, p2, :cond_2

    .line 32
    .line 33
    const-wide/16 v2, 0x1

    .line 34
    shl-long/2addr v2, p1

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide v4, 0x100003701L

    .line 40
    and-long/2addr v2, v4

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    cmp-long p2, v2, v4

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    add-int/lit8 p1, v1, 0x1

    .line 49
    .line 50
    aget-char p2, v0, v1

    .line 51
    move v1, p1

    .line 52
    move p1, p2

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 56
    .line 57
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 58
    const/4 p1, 0x1

    .line 59
    return p1
.end method

.method public final nextIfName8Match0()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x7

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x1a

    .line 13
    .line 14
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 19
    .line 20
    aget-char v2, v0, v2

    .line 21
    .line 22
    :goto_0
    const/16 v3, 0x20

    .line 23
    .line 24
    if-gt v2, v3, :cond_1

    .line 25
    .line 26
    const-wide/16 v3, 0x1

    .line 27
    shl-long/2addr v3, v2

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v5, 0x100003701L

    .line 33
    and-long/2addr v3, v5

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    cmp-long v3, v3, v5

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    aget-char v1, v0, v1

    .line 44
    move v7, v2

    .line 45
    move v2, v1

    .line 46
    move v1, v7

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 50
    .line 51
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 52
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method public final nextIfName8Match1()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x7

    .line 13
    .line 14
    aget-char v3, v0, v3

    .line 15
    .line 16
    const/16 v4, 0x3a

    .line 17
    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x9

    .line 22
    .line 23
    aget-char v2, v0, v2

    .line 24
    .line 25
    :goto_0
    const/16 v3, 0x20

    .line 26
    .line 27
    if-gt v2, v3, :cond_1

    .line 28
    .line 29
    const-wide/16 v3, 0x1

    .line 30
    shl-long/2addr v3, v2

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v5, 0x100003701L

    .line 36
    and-long/2addr v3, v5

    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    cmp-long v3, v3, v5

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    aget-char v1, v0, v1

    .line 47
    move v7, v2

    .line 48
    move v2, v1

    .line 49
    move v1, v7

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 53
    .line 54
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 55
    const/4 v0, 0x1

    .line 56
    return v0

    .line 57
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 58
    return v0
.end method

.method public final nextIfName8Match2()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x9

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x7

    .line 13
    .line 14
    aget-char v3, v0, v3

    .line 15
    .line 16
    const/16 v4, 0x22

    .line 17
    .line 18
    if-ne v3, v4, :cond_2

    .line 19
    .line 20
    add-int/lit8 v3, v1, 0x8

    .line 21
    .line 22
    aget-char v3, v0, v3

    .line 23
    .line 24
    const/16 v4, 0x3a

    .line 25
    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0xa

    .line 30
    .line 31
    aget-char v2, v0, v2

    .line 32
    .line 33
    :goto_0
    const/16 v3, 0x20

    .line 34
    .line 35
    if-gt v2, v3, :cond_1

    .line 36
    .line 37
    const-wide/16 v3, 0x1

    .line 38
    shl-long/2addr v3, v2

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v5, 0x100003701L

    .line 44
    and-long/2addr v3, v5

    .line 45
    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    cmp-long v3, v3, v5

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x1

    .line 53
    .line 54
    aget-char v1, v0, v1

    .line 55
    move v7, v2

    .line 56
    move v2, v1

    .line 57
    move v1, v7

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 61
    .line 62
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 63
    const/4 v0, 0x1

    .line 64
    return v0

    .line 65
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 66
    return v0
.end method

.method public nextIfNull()Z
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x6e

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    add-int/lit8 v1, v0, 0x2

    .line 11
    .line 12
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 17
    .line 18
    aget-char v0, v1, v0

    .line 19
    .line 20
    const/16 v1, 0x75

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readNull()V

    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return v0
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
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

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
    aget-char v11, v4, v3

    .line 27
    .line 28
    if-ne v11, v5, :cond_0

    .line 29
    .line 30
    add-int/lit8 v11, v3, 0x1

    .line 31
    .line 32
    aget-char v11, v4, v11

    .line 33
    .line 34
    if-ne v11, v7, :cond_0

    .line 35
    .line 36
    aget-char v10, v4, v10

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
    aget-char v10, v4, v3

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
    aget-char v11, v4, v3

    .line 66
    .line 67
    if-ne v11, v9, :cond_c

    .line 68
    .line 69
    add-int/lit8 v9, v3, 0x1

    .line 70
    .line 71
    aget-char v9, v4, v9

    .line 72
    .line 73
    if-ne v9, v5, :cond_c

    .line 74
    .line 75
    add-int/lit8 v5, v3, 0x2

    .line 76
    .line 77
    aget-char v5, v4, v5

    .line 78
    .line 79
    if-ne v5, v7, :cond_c

    .line 80
    .line 81
    add-int/lit8 v5, v3, 0x3

    .line 82
    .line 83
    aget-char v5, v4, v5

    .line 84
    .line 85
    if-ne v5, v7, :cond_c

    .line 86
    .line 87
    aget-char v5, v4, v10

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
    aget-char v3, v4, v3

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
    if-gt v3, v7, :cond_6

    .line 116
    .line 117
    shl-long v15, v13, v3

    .line 118
    and-long/2addr v15, v11

    .line 119
    .line 120
    cmp-long v15, v15, v9

    .line 121
    .line 122
    if-eqz v15, :cond_6

    .line 123
    .line 124
    if-ne v5, v2, :cond_5

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_5
    add-int/lit8 v3, v5, 0x1

    .line 128
    .line 129
    aget-char v5, v4, v5

    .line 130
    .line 131
    move/from16 v17, v5

    .line 132
    move v5, v3

    .line 133
    .line 134
    move/from16 v3, v17

    .line 135
    goto :goto_3

    .line 136
    .line 137
    :cond_6
    const/16 v15, 0x2c

    .line 138
    .line 139
    if-ne v3, v15, :cond_7

    .line 140
    move v6, v8

    .line 141
    .line 142
    :cond_7
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 143
    .line 144
    if-eqz v6, :cond_9

    .line 145
    .line 146
    if-ne v5, v2, :cond_8

    .line 147
    :goto_4
    move v3, v1

    .line 148
    goto :goto_6

    .line 149
    .line 150
    :cond_8
    add-int/lit8 v3, v5, 0x1

    .line 151
    .line 152
    aget-char v5, v4, v5

    .line 153
    .line 154
    :goto_5
    move/from16 v17, v5

    .line 155
    move v5, v3

    .line 156
    .line 157
    move/from16 v3, v17

    .line 158
    .line 159
    :cond_9
    :goto_6
    if-gt v3, v7, :cond_b

    .line 160
    .line 161
    shl-long v15, v13, v3

    .line 162
    and-long/2addr v15, v11

    .line 163
    .line 164
    cmp-long v6, v15, v9

    .line 165
    .line 166
    if-eqz v6, :cond_b

    .line 167
    .line 168
    if-ne v5, v2, :cond_a

    .line 169
    goto :goto_4

    .line 170
    .line 171
    :cond_a
    add-int/lit8 v3, v5, 0x1

    .line 172
    .line 173
    aget-char v5, v4, v5

    .line 174
    goto :goto_5

    .line 175
    .line 176
    :cond_b
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 177
    .line 178
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 179
    return v8

    .line 180
    :cond_c
    return v6
.end method

.method public nextIfObjectEnd()Z
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    const/16 v2, 0x7d

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    .line 14
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 15
    .line 16
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 17
    .line 18
    const/16 v4, 0x1a

    .line 19
    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    move v3, v1

    .line 22
    :goto_0
    move v1, v4

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 26
    .line 27
    aget-char v1, v2, v1

    .line 28
    .line 29
    :goto_1
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v7, 0x100003701L

    .line 35
    .line 36
    const-wide/16 v9, 0x1

    .line 37
    .line 38
    const/16 v11, 0x20

    .line 39
    .line 40
    if-gt v1, v11, :cond_3

    .line 41
    .line 42
    shl-long v12, v9, v1

    .line 43
    and-long/2addr v12, v7

    .line 44
    .line 45
    cmp-long v12, v12, v5

    .line 46
    .line 47
    if-eqz v12, :cond_3

    .line 48
    .line 49
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 50
    .line 51
    if-ne v3, v1, :cond_2

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 55
    .line 56
    aget-char v3, v2, v3

    .line 57
    .line 58
    move/from16 v16, v3

    .line 59
    move v3, v1

    .line 60
    .line 61
    move/from16 v1, v16

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_3
    const/16 v12, 0x2c

    .line 65
    const/4 v13, 0x1

    .line 66
    .line 67
    if-ne v1, v12, :cond_6

    .line 68
    .line 69
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 70
    .line 71
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 72
    .line 73
    if-ne v3, v1, :cond_4

    .line 74
    move v1, v3

    .line 75
    move v3, v4

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_4
    add-int/lit8 v1, v3, 0x1

    .line 79
    .line 80
    aget-char v3, v2, v3

    .line 81
    .line 82
    :goto_2
    move/from16 v16, v3

    .line 83
    move v3, v1

    .line 84
    .line 85
    move/from16 v1, v16

    .line 86
    .line 87
    :goto_3
    if-gt v1, v11, :cond_6

    .line 88
    .line 89
    shl-long v14, v9, v1

    .line 90
    and-long/2addr v14, v7

    .line 91
    .line 92
    cmp-long v12, v14, v5

    .line 93
    .line 94
    if-eqz v12, :cond_6

    .line 95
    .line 96
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 97
    .line 98
    if-ne v3, v1, :cond_5

    .line 99
    move v1, v4

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_5
    add-int/lit8 v1, v3, 0x1

    .line 103
    .line 104
    aget-char v3, v2, v3

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_6
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 108
    .line 109
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 110
    .line 111
    const/16 v2, 0x2f

    .line 112
    .line 113
    if-ne v1, v2, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 117
    :cond_7
    return v13
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 11
    .line 12
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    .line 14
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

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
    aget-char v1, v0, v1

    .line 26
    .line 27
    :goto_1
    const/16 v4, 0x20

    .line 28
    .line 29
    if-gt v1, v4, :cond_3

    .line 30
    .line 31
    const-wide/16 v4, 0x1

    .line 32
    shl-long/2addr v4, v1

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v6, 0x100003701L

    .line 38
    and-long/2addr v4, v6

    .line 39
    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    cmp-long v4, v4, v6

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 47
    .line 48
    if-ne v2, v1, :cond_2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .line 52
    .line 53
    aget-char v2, v0, v2

    .line 54
    move v8, v2

    .line 55
    move v2, v1

    .line 56
    move v1, v8

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_3
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 60
    .line 61
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 62
    .line 63
    const/16 v0, 0x2f

    .line 64
    .line 65
    if-ne v1, v0, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 69
    :cond_4
    const/4 v0, 0x1

    .line 70
    return v0
.end method

.method public nextIfSet()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    const/16 v3, 0x53

    .line 9
    .line 10
    if-ne v2, v3, :cond_3

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 15
    .line 16
    if-ge v2, v3, :cond_3

    .line 17
    .line 18
    aget-char v4, v0, v1

    .line 19
    .line 20
    const/16 v5, 0x65

    .line 21
    .line 22
    if-ne v4, v5, :cond_3

    .line 23
    .line 24
    aget-char v2, v0, v2

    .line 25
    .line 26
    const/16 v4, 0x74

    .line 27
    .line 28
    if-ne v2, v4, :cond_3

    .line 29
    .line 30
    add-int/lit8 v2, v1, 0x2

    .line 31
    .line 32
    const/16 v4, 0x1a

    .line 33
    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    move v1, v2

    .line 36
    :goto_0
    move v2, v4

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x3

    .line 40
    .line 41
    aget-char v2, v0, v2

    .line 42
    .line 43
    :goto_1
    const/16 v3, 0x20

    .line 44
    .line 45
    if-gt v2, v3, :cond_2

    .line 46
    .line 47
    const-wide/16 v5, 0x1

    .line 48
    shl-long/2addr v5, v2

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const-wide v7, 0x100003701L

    .line 54
    and-long/2addr v5, v7

    .line 55
    .line 56
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    cmp-long v3, v5, v7

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 63
    .line 64
    if-ne v1, v2, :cond_1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 68
    .line 69
    aget-char v1, v0, v1

    .line 70
    move v9, v2

    .line 71
    move v2, v1

    .line 72
    move v1, v9

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 76
    .line 77
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 78
    const/4 v0, 0x1

    .line 79
    return v0

    .line 80
    :cond_3
    const/4 v0, 0x0

    .line 81
    return v0
.end method

.method public final nextIfValue4Match10(J)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xb

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    return v4

    .line 24
    .line 25
    :cond_1
    aget-char p1, v0, v2

    .line 26
    .line 27
    const/16 p2, 0x2c

    .line 28
    .line 29
    if-eq p1, p2, :cond_2

    .line 30
    .line 31
    const/16 v3, 0x7d

    .line 32
    .line 33
    if-eq p1, v3, :cond_2

    .line 34
    .line 35
    const/16 v3, 0x5d

    .line 36
    .line 37
    if-eq p1, v3, :cond_2

    .line 38
    return v4

    .line 39
    :cond_2
    const/4 v3, 0x1

    .line 40
    .line 41
    if-ne p1, p2, :cond_4

    .line 42
    .line 43
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 44
    .line 45
    add-int/lit8 v2, v1, 0xc

    .line 46
    .line 47
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 48
    .line 49
    if-ne v2, p1, :cond_3

    .line 50
    .line 51
    const/16 p1, 0x1a

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_3
    aget-char p1, v0, v2

    .line 55
    .line 56
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 57
    .line 58
    if-gt p1, p2, :cond_5

    .line 59
    .line 60
    const-wide/16 v4, 0x1

    .line 61
    shl-long/2addr v4, p1

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const-wide v6, 0x100003701L

    .line 67
    and-long/2addr v4, v6

    .line 68
    .line 69
    const-wide/16 v6, 0x0

    .line 70
    .line 71
    cmp-long p2, v4, v6

    .line 72
    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    aget-char p1, v0, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    add-int/2addr v2, v3

    .line 80
    .line 81
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 82
    .line 83
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 84
    return v3
.end method

.method public final nextIfValue4Match11(J)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xc

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getLong([CI)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    cmp-long p1, v5, p1

    .line 21
    .line 22
    if-nez p1, :cond_6

    .line 23
    .line 24
    add-int/lit8 p1, v1, 0xb

    .line 25
    .line 26
    aget-char p1, v0, p1

    .line 27
    .line 28
    const/16 p2, 0x22

    .line 29
    .line 30
    if-eq p1, p2, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    aget-char p1, v0, v2

    .line 34
    .line 35
    const/16 p2, 0x2c

    .line 36
    .line 37
    if-eq p1, p2, :cond_2

    .line 38
    .line 39
    const/16 v3, 0x7d

    .line 40
    .line 41
    if-eq p1, v3, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x5d

    .line 44
    .line 45
    if-eq p1, v3, :cond_2

    .line 46
    return v4

    .line 47
    :cond_2
    const/4 v3, 0x1

    .line 48
    .line 49
    if-ne p1, p2, :cond_4

    .line 50
    .line 51
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    add-int/lit8 v2, v1, 0xd

    .line 54
    .line 55
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 56
    .line 57
    if-ne v2, p1, :cond_3

    .line 58
    .line 59
    const/16 p1, 0x1a

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    aget-char p1, v0, v2

    .line 63
    .line 64
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 65
    .line 66
    if-gt p1, p2, :cond_5

    .line 67
    .line 68
    const-wide/16 v4, 0x1

    .line 69
    shl-long/2addr v4, p1

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-wide v6, 0x100003701L

    .line 75
    and-long/2addr v4, v6

    .line 76
    .line 77
    const-wide/16 v6, 0x0

    .line 78
    .line 79
    cmp-long p2, v4, v6

    .line 80
    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    aget-char p1, v0, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    add-int/2addr v2, v3

    .line 88
    .line 89
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 90
    .line 91
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 92
    return v3

    .line 93
    :cond_6
    :goto_1
    return v4
.end method

.method public final nextIfValue4Match2()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x3

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    aget-char v5, v0, v2

    .line 15
    .line 16
    const/16 v6, 0x2c

    .line 17
    .line 18
    if-eq v5, v6, :cond_1

    .line 19
    .line 20
    const/16 v7, 0x7d

    .line 21
    .line 22
    if-eq v5, v7, :cond_1

    .line 23
    .line 24
    const/16 v7, 0x5d

    .line 25
    .line 26
    if-eq v5, v7, :cond_1

    .line 27
    return v4

    .line 28
    :cond_1
    const/4 v4, 0x1

    .line 29
    .line 30
    if-ne v5, v6, :cond_3

    .line 31
    .line 32
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 33
    .line 34
    add-int/lit8 v2, v1, 0x4

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x1a

    .line 39
    :goto_0
    move v5, v1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    aget-char v1, v0, v2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_3
    :goto_1
    const/16 v1, 0x20

    .line 46
    .line 47
    if-gt v5, v1, :cond_4

    .line 48
    .line 49
    const-wide/16 v6, 0x1

    .line 50
    shl-long/2addr v6, v5

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v8, 0x100003701L

    .line 56
    and-long/2addr v6, v8

    .line 57
    .line 58
    const-wide/16 v8, 0x0

    .line 59
    .line 60
    cmp-long v1, v6, v8

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    aget-char v5, v0, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    add-int/2addr v2, v4

    .line 69
    .line 70
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 71
    .line 72
    iput-char v5, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 73
    return v4
.end method

.method public final nextIfValue4Match3()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x4

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v5, v1, 0x3

    .line 15
    .line 16
    aget-char v5, v0, v5

    .line 17
    .line 18
    const/16 v6, 0x22

    .line 19
    .line 20
    if-eq v5, v6, :cond_1

    .line 21
    return v4

    .line 22
    .line 23
    :cond_1
    aget-char v5, v0, v2

    .line 24
    .line 25
    const/16 v6, 0x2c

    .line 26
    .line 27
    if-eq v5, v6, :cond_2

    .line 28
    .line 29
    const/16 v7, 0x7d

    .line 30
    .line 31
    if-eq v5, v7, :cond_2

    .line 32
    .line 33
    const/16 v7, 0x5d

    .line 34
    .line 35
    if-eq v5, v7, :cond_2

    .line 36
    return v4

    .line 37
    :cond_2
    const/4 v4, 0x1

    .line 38
    .line 39
    if-ne v5, v6, :cond_4

    .line 40
    .line 41
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 42
    .line 43
    add-int/lit8 v2, v1, 0x5

    .line 44
    .line 45
    if-ne v2, v3, :cond_3

    .line 46
    .line 47
    const/16 v1, 0x1a

    .line 48
    :goto_0
    move v5, v1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_3
    aget-char v1, v0, v2

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_4
    :goto_1
    const/16 v1, 0x20

    .line 55
    .line 56
    if-gt v5, v1, :cond_5

    .line 57
    .line 58
    const-wide/16 v6, 0x1

    .line 59
    shl-long/2addr v6, v5

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const-wide v8, 0x100003701L

    .line 65
    and-long/2addr v6, v8

    .line 66
    .line 67
    const-wide/16 v8, 0x0

    .line 68
    .line 69
    cmp-long v1, v6, v8

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    aget-char v5, v0, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    add-int/2addr v2, v4

    .line 78
    .line 79
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 80
    .line 81
    iput-char v5, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 82
    return v4
.end method

.method public final nextIfValue4Match4(B)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x5

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v5, v1, 0x3

    .line 15
    .line 16
    aget-char v5, v0, v5

    .line 17
    .line 18
    if-ne v5, p1, :cond_6

    .line 19
    .line 20
    add-int/lit8 p1, v1, 0x4

    .line 21
    .line 22
    aget-char p1, v0, p1

    .line 23
    .line 24
    const/16 v5, 0x22

    .line 25
    .line 26
    if-eq p1, v5, :cond_1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    aget-char p1, v0, v2

    .line 30
    .line 31
    const/16 v5, 0x2c

    .line 32
    .line 33
    if-eq p1, v5, :cond_2

    .line 34
    .line 35
    const/16 v6, 0x7d

    .line 36
    .line 37
    if-eq p1, v6, :cond_2

    .line 38
    .line 39
    const/16 v6, 0x5d

    .line 40
    .line 41
    if-eq p1, v6, :cond_2

    .line 42
    return v4

    .line 43
    :cond_2
    const/4 v4, 0x1

    .line 44
    .line 45
    if-ne p1, v5, :cond_4

    .line 46
    .line 47
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 48
    .line 49
    add-int/lit8 v2, v1, 0x6

    .line 50
    .line 51
    if-ne v2, v3, :cond_3

    .line 52
    .line 53
    const/16 p1, 0x1a

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_3
    aget-char p1, v0, v2

    .line 57
    .line 58
    :cond_4
    :goto_0
    const/16 v1, 0x20

    .line 59
    .line 60
    if-gt p1, v1, :cond_5

    .line 61
    .line 62
    const-wide/16 v5, 0x1

    .line 63
    shl-long/2addr v5, p1

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const-wide v7, 0x100003701L

    .line 69
    and-long/2addr v5, v7

    .line 70
    .line 71
    const-wide/16 v7, 0x0

    .line 72
    .line 73
    cmp-long v1, v5, v7

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    aget-char p1, v0, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_5
    add-int/2addr v2, v4

    .line 82
    .line 83
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 84
    .line 85
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 86
    :cond_6
    :goto_1
    return v4
.end method

.method public final nextIfValue4Match5(BB)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x6

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v5, v1, 0x3

    .line 15
    .line 16
    aget-char v5, v0, v5

    .line 17
    .line 18
    if-ne v5, p1, :cond_6

    .line 19
    .line 20
    add-int/lit8 p1, v1, 0x4

    .line 21
    .line 22
    aget-char p1, v0, p1

    .line 23
    .line 24
    if-ne p1, p2, :cond_6

    .line 25
    .line 26
    add-int/lit8 p1, v1, 0x5

    .line 27
    .line 28
    aget-char p1, v0, p1

    .line 29
    .line 30
    const/16 p2, 0x22

    .line 31
    .line 32
    if-eq p1, p2, :cond_1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    aget-char p1, v0, v2

    .line 36
    .line 37
    const/16 p2, 0x2c

    .line 38
    .line 39
    if-eq p1, p2, :cond_2

    .line 40
    .line 41
    const/16 v5, 0x7d

    .line 42
    .line 43
    if-eq p1, v5, :cond_2

    .line 44
    .line 45
    const/16 v5, 0x5d

    .line 46
    .line 47
    if-eq p1, v5, :cond_2

    .line 48
    return v4

    .line 49
    :cond_2
    const/4 v4, 0x1

    .line 50
    .line 51
    if-ne p1, p2, :cond_4

    .line 52
    .line 53
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 54
    .line 55
    add-int/lit8 v2, v1, 0x7

    .line 56
    .line 57
    if-ne v2, v3, :cond_3

    .line 58
    .line 59
    const/16 p1, 0x1a

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    aget-char p1, v0, v2

    .line 63
    .line 64
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 65
    .line 66
    if-gt p1, p2, :cond_5

    .line 67
    .line 68
    const-wide/16 v5, 0x1

    .line 69
    shl-long/2addr v5, p1

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-wide v7, 0x100003701L

    .line 75
    and-long/2addr v5, v7

    .line 76
    .line 77
    const-wide/16 v7, 0x0

    .line 78
    .line 79
    cmp-long p2, v5, v7

    .line 80
    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    aget-char p1, v0, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    add-int/2addr v2, v4

    .line 88
    .line 89
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 90
    .line 91
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 92
    :cond_6
    :goto_1
    return v4
.end method

.method public final nextIfValue4Match6(I)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x7

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-eq v3, p1, :cond_1

    .line 21
    return v4

    .line 22
    .line 23
    :cond_1
    aget-char p1, v0, v2

    .line 24
    .line 25
    const/16 v3, 0x2c

    .line 26
    .line 27
    if-eq p1, v3, :cond_2

    .line 28
    .line 29
    const/16 v5, 0x7d

    .line 30
    .line 31
    if-eq p1, v5, :cond_2

    .line 32
    .line 33
    const/16 v5, 0x5d

    .line 34
    .line 35
    if-eq p1, v5, :cond_2

    .line 36
    return v4

    .line 37
    :cond_2
    const/4 v4, 0x1

    .line 38
    .line 39
    if-ne p1, v3, :cond_4

    .line 40
    .line 41
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 42
    .line 43
    add-int/lit8 v2, v1, 0x8

    .line 44
    .line 45
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 46
    .line 47
    if-ne v2, p1, :cond_3

    .line 48
    .line 49
    const/16 p1, 0x1a

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_3
    aget-char p1, v0, v2

    .line 53
    .line 54
    :cond_4
    :goto_0
    const/16 v1, 0x20

    .line 55
    .line 56
    if-gt p1, v1, :cond_5

    .line 57
    .line 58
    const-wide/16 v5, 0x1

    .line 59
    shl-long/2addr v5, p1

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const-wide v7, 0x100003701L

    .line 65
    and-long/2addr v5, v7

    .line 66
    .line 67
    const-wide/16 v7, 0x0

    .line 68
    .line 69
    cmp-long v1, v5, v7

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    aget-char p1, v0, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_5
    add-int/2addr v2, v4

    .line 78
    .line 79
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 80
    .line 81
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 82
    return v4
.end method

.method public final nextIfValue4Match7(I)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ne v3, p1, :cond_6

    .line 21
    .line 22
    add-int/lit8 p1, v1, 0x7

    .line 23
    .line 24
    aget-char p1, v0, p1

    .line 25
    .line 26
    const/16 v3, 0x22

    .line 27
    .line 28
    if-eq p1, v3, :cond_1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    aget-char p1, v0, v2

    .line 32
    .line 33
    const/16 v3, 0x2c

    .line 34
    .line 35
    if-eq p1, v3, :cond_2

    .line 36
    .line 37
    const/16 v5, 0x7d

    .line 38
    .line 39
    if-eq p1, v5, :cond_2

    .line 40
    .line 41
    const/16 v5, 0x5d

    .line 42
    .line 43
    if-eq p1, v5, :cond_2

    .line 44
    return v4

    .line 45
    :cond_2
    const/4 v4, 0x1

    .line 46
    .line 47
    if-ne p1, v3, :cond_4

    .line 48
    .line 49
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 50
    .line 51
    add-int/lit8 v2, v1, 0x9

    .line 52
    .line 53
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 54
    .line 55
    if-ne v2, p1, :cond_3

    .line 56
    .line 57
    const/16 p1, 0x1a

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_3
    aget-char p1, v0, v2

    .line 61
    .line 62
    :cond_4
    :goto_0
    const/16 v1, 0x20

    .line 63
    .line 64
    if-gt p1, v1, :cond_5

    .line 65
    .line 66
    const-wide/16 v5, 0x1

    .line 67
    shl-long/2addr v5, p1

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const-wide v7, 0x100003701L

    .line 73
    and-long/2addr v5, v7

    .line 74
    .line 75
    const-wide/16 v7, 0x0

    .line 76
    .line 77
    cmp-long v1, v5, v7

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    aget-char p1, v0, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    add-int/2addr v2, v4

    .line 86
    .line 87
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 88
    .line 89
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 90
    :cond_6
    :goto_1
    return v4
.end method

.method public final nextIfValue4Match8(IB)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x9

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ne v3, p1, :cond_6

    .line 21
    .line 22
    add-int/lit8 p1, v1, 0x7

    .line 23
    .line 24
    aget-char p1, v0, p1

    .line 25
    .line 26
    if-ne p1, p2, :cond_6

    .line 27
    .line 28
    add-int/lit8 p1, v1, 0x8

    .line 29
    .line 30
    aget-char p1, v0, p1

    .line 31
    .line 32
    const/16 p2, 0x22

    .line 33
    .line 34
    if-eq p1, p2, :cond_1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    aget-char p1, v0, v2

    .line 38
    .line 39
    const/16 p2, 0x2c

    .line 40
    .line 41
    if-eq p1, p2, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x7d

    .line 44
    .line 45
    if-eq p1, v3, :cond_2

    .line 46
    .line 47
    const/16 v3, 0x5d

    .line 48
    .line 49
    if-eq p1, v3, :cond_2

    .line 50
    return v4

    .line 51
    :cond_2
    const/4 v3, 0x1

    .line 52
    .line 53
    if-ne p1, p2, :cond_4

    .line 54
    .line 55
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 56
    .line 57
    add-int/lit8 v2, v1, 0xa

    .line 58
    .line 59
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 60
    .line 61
    if-ne v2, p1, :cond_3

    .line 62
    .line 63
    const/16 p1, 0x1a

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_3
    aget-char p1, v0, v2

    .line 67
    .line 68
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 69
    .line 70
    if-gt p1, p2, :cond_5

    .line 71
    .line 72
    const-wide/16 v4, 0x1

    .line 73
    shl-long/2addr v4, p1

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const-wide v6, 0x100003701L

    .line 79
    and-long/2addr v4, v6

    .line 80
    .line 81
    const-wide/16 v6, 0x0

    .line 82
    .line 83
    cmp-long p2, v4, v6

    .line 84
    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    aget-char p1, v0, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    add-int/2addr v2, v3

    .line 92
    .line 93
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 94
    .line 95
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 96
    return v3

    .line 97
    :cond_6
    :goto_1
    return v4
.end method

.method public final nextIfValue4Match9(IBB)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xa

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getInt([CI)I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ne v3, p1, :cond_6

    .line 21
    .line 22
    add-int/lit8 p1, v1, 0x7

    .line 23
    .line 24
    aget-char p1, v0, p1

    .line 25
    .line 26
    if-ne p1, p2, :cond_6

    .line 27
    .line 28
    add-int/lit8 p1, v1, 0x8

    .line 29
    .line 30
    aget-char p1, v0, p1

    .line 31
    .line 32
    if-ne p1, p3, :cond_6

    .line 33
    .line 34
    add-int/lit8 p1, v1, 0x9

    .line 35
    .line 36
    aget-char p1, v0, p1

    .line 37
    .line 38
    const/16 p2, 0x22

    .line 39
    .line 40
    if-eq p1, p2, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    aget-char p1, v0, v2

    .line 44
    .line 45
    const/16 p2, 0x2c

    .line 46
    .line 47
    if-eq p1, p2, :cond_2

    .line 48
    .line 49
    const/16 p3, 0x7d

    .line 50
    .line 51
    if-eq p1, p3, :cond_2

    .line 52
    .line 53
    const/16 p3, 0x5d

    .line 54
    .line 55
    if-eq p1, p3, :cond_2

    .line 56
    return v4

    .line 57
    :cond_2
    const/4 p3, 0x1

    .line 58
    .line 59
    if-ne p1, p2, :cond_4

    .line 60
    .line 61
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 62
    .line 63
    add-int/lit8 v2, v1, 0xb

    .line 64
    .line 65
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 66
    .line 67
    if-ne v2, p1, :cond_3

    .line 68
    .line 69
    const/16 p1, 0x1a

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_3
    aget-char p1, v0, v2

    .line 73
    .line 74
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 75
    .line 76
    if-gt p1, p2, :cond_5

    .line 77
    .line 78
    const-wide/16 v3, 0x1

    .line 79
    shl-long/2addr v3, p1

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const-wide v5, 0x100003701L

    .line 85
    and-long/2addr v3, v5

    .line 86
    .line 87
    const-wide/16 v5, 0x0

    .line 88
    .line 89
    cmp-long p2, v3, v5

    .line 90
    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    aget-char p1, v0, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    add-int/2addr v2, p3

    .line 98
    .line 99
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 100
    .line 101
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 102
    return p3

    .line 103
    :cond_6
    :goto_1
    return v4
.end method

.method public final nextWithoutComment()V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 7
    .line 8
    const/16 v3, 0x1a

    .line 9
    .line 10
    if-lt v0, v2, :cond_0

    .line 11
    move v2, v0

    .line 12
    :goto_0
    move v0, v3

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    aget-char v0, v1, v0

    .line 18
    .line 19
    :goto_1
    const/16 v4, 0x20

    .line 20
    .line 21
    if-gt v0, v4, :cond_2

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    shl-long/2addr v4, v0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v6, 0x100003701L

    .line 30
    and-long/2addr v4, v6

    .line 31
    .line 32
    const-wide/16 v6, 0x0

    .line 33
    .line 34
    cmp-long v4, v4, v6

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 39
    .line 40
    if-ne v2, v0, :cond_1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 44
    .line 45
    aget-char v2, v1, v2

    .line 46
    move v8, v2

    .line 47
    move v2, v0

    .line 48
    move v0, v8

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 52
    .line 53
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 54
    return-void
.end method

.method public readBigDecimal()Ljava/math/BigDecimal;
    .locals 28

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    const/16 v4, 0x22

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    .line 15
    if-eq v2, v4, :cond_1

    .line 16
    .line 17
    const/16 v4, 0x27

    .line 18
    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v4, v3

    .line 22
    move v3, v7

    .line 23
    goto :goto_2

    .line 24
    .line 25
    :cond_1
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 26
    .line 27
    aget-char v9, v0, v3

    .line 28
    .line 29
    if-ne v9, v2, :cond_3

    .line 30
    .line 31
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 32
    .line 33
    if-ne v4, v2, :cond_2

    .line 34
    .line 35
    const/16 v6, 0x1a

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    add-int/2addr v3, v5

    .line 38
    .line 39
    aget-char v6, v0, v4

    .line 40
    move v4, v3

    .line 41
    .line 42
    :goto_1
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfComma()Z

    .line 48
    return-object v8

    .line 49
    :cond_3
    move v3, v2

    .line 50
    move v2, v9

    .line 51
    .line 52
    :goto_2
    const/16 v9, 0x2b

    .line 53
    .line 54
    const/16 v10, 0x2d

    .line 55
    const/4 v11, 0x1

    .line 56
    .line 57
    if-ne v2, v10, :cond_4

    .line 58
    .line 59
    iput-boolean v11, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 60
    .line 61
    add-int/lit8 v2, v4, 0x1

    .line 62
    .line 63
    aget-char v12, v0, v4

    .line 64
    .line 65
    :goto_3
    move/from16 v27, v12

    .line 66
    move v12, v2

    .line 67
    .line 68
    move/from16 v2, v27

    .line 69
    goto :goto_4

    .line 70
    .line 71
    :cond_4
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 72
    .line 73
    if-ne v2, v9, :cond_5

    .line 74
    .line 75
    add-int/lit8 v2, v4, 0x1

    .line 76
    .line 77
    aget-char v12, v0, v4

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    move v12, v4

    .line 80
    .line 81
    :goto_4
    iput-byte v11, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 82
    .line 83
    const-wide/16 v13, 0x0

    .line 84
    move v15, v7

    .line 85
    .line 86
    move/from16 v18, v15

    .line 87
    .line 88
    move-wide/from16 v16, v13

    .line 89
    .line 90
    :goto_5
    const/16 v19, 0x1f

    .line 91
    .line 92
    const/16 v6, 0x39

    .line 93
    .line 94
    const-wide/16 v20, 0xa

    .line 95
    .line 96
    move-object/from16 v22, v8

    .line 97
    .line 98
    const/16 v8, 0x30

    .line 99
    .line 100
    if-lt v2, v8, :cond_a

    .line 101
    .line 102
    if-gt v2, v6, :cond_a

    .line 103
    .line 104
    if-nez v15, :cond_7

    .line 105
    .line 106
    mul-long v23, v16, v20

    .line 107
    .line 108
    or-long v25, v16, v20

    .line 109
    .line 110
    ushr-long v25, v25, v19

    .line 111
    .line 112
    cmp-long v18, v25, v13

    .line 113
    .line 114
    if-eqz v18, :cond_8

    .line 115
    .line 116
    div-long v25, v23, v20

    .line 117
    .line 118
    cmp-long v18, v25, v16

    .line 119
    .line 120
    if-nez v18, :cond_6

    .line 121
    goto :goto_6

    .line 122
    :cond_6
    move v15, v11

    .line 123
    .line 124
    :cond_7
    move-wide/from16 v25, v13

    .line 125
    goto :goto_7

    .line 126
    .line 127
    :cond_8
    :goto_6
    add-int/lit8 v2, v2, -0x30

    .line 128
    .line 129
    move-wide/from16 v25, v13

    .line 130
    int-to-long v13, v2

    .line 131
    .line 132
    add-long v16, v23, v13

    .line 133
    .line 134
    :goto_7
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 135
    .line 136
    if-ne v12, v2, :cond_9

    .line 137
    .line 138
    add-int/lit8 v12, v12, 0x1

    .line 139
    .line 140
    move/from16 v18, v11

    .line 141
    .line 142
    const/16 v2, 0x1a

    .line 143
    goto :goto_8

    .line 144
    .line 145
    :cond_9
    add-int/lit8 v2, v12, 0x1

    .line 146
    .line 147
    aget-char v6, v0, v12

    .line 148
    move v12, v2

    .line 149
    move v2, v6

    .line 150
    .line 151
    move/from16 v18, v11

    .line 152
    .line 153
    move-object/from16 v8, v22

    .line 154
    .line 155
    move-wide/from16 v13, v25

    .line 156
    goto :goto_5

    .line 157
    .line 158
    :cond_a
    move-wide/from16 v25, v13

    .line 159
    .line 160
    :goto_8
    cmp-long v13, v16, v25

    .line 161
    .line 162
    if-gez v13, :cond_b

    .line 163
    move v15, v11

    .line 164
    .line 165
    :cond_b
    iput-short v7, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 166
    .line 167
    const/16 v13, 0x2e

    .line 168
    .line 169
    if-ne v2, v13, :cond_10

    .line 170
    .line 171
    iput-byte v5, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 172
    .line 173
    add-int/lit8 v2, v12, 0x1

    .line 174
    .line 175
    aget-char v12, v0, v12

    .line 176
    .line 177
    move/from16 v27, v12

    .line 178
    move v12, v2

    .line 179
    .line 180
    move/from16 v2, v27

    .line 181
    .line 182
    :goto_9
    if-lt v2, v8, :cond_10

    .line 183
    .line 184
    if-gt v2, v6, :cond_10

    .line 185
    .line 186
    iget-short v13, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 187
    add-int/2addr v13, v11

    .line 188
    int-to-short v13, v13

    .line 189
    .line 190
    iput-short v13, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 191
    .line 192
    if-nez v15, :cond_e

    .line 193
    .line 194
    mul-long v13, v16, v20

    .line 195
    .line 196
    or-long v23, v16, v20

    .line 197
    .line 198
    ushr-long v23, v23, v19

    .line 199
    .line 200
    cmp-long v18, v23, v25

    .line 201
    .line 202
    if-eqz v18, :cond_d

    .line 203
    .line 204
    div-long v23, v13, v20

    .line 205
    .line 206
    cmp-long v18, v23, v16

    .line 207
    .line 208
    if-nez v18, :cond_c

    .line 209
    goto :goto_a

    .line 210
    :cond_c
    move v15, v11

    .line 211
    goto :goto_b

    .line 212
    .line 213
    :cond_d
    :goto_a
    add-int/lit8 v2, v2, -0x30

    .line 214
    int-to-long v5, v2

    .line 215
    add-long/2addr v13, v5

    .line 216
    .line 217
    move-wide/from16 v16, v13

    .line 218
    .line 219
    :cond_e
    :goto_b
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 220
    .line 221
    if-ne v12, v2, :cond_f

    .line 222
    .line 223
    add-int/lit8 v12, v12, 0x1

    .line 224
    .line 225
    move/from16 v18, v11

    .line 226
    .line 227
    move-wide/from16 v5, v16

    .line 228
    .line 229
    const/16 v2, 0x1a

    .line 230
    goto :goto_c

    .line 231
    .line 232
    :cond_f
    add-int/lit8 v2, v12, 0x1

    .line 233
    .line 234
    aget-char v5, v0, v12

    .line 235
    move v12, v2

    .line 236
    move v2, v5

    .line 237
    .line 238
    move/from16 v18, v11

    .line 239
    const/4 v5, 0x2

    .line 240
    .line 241
    const/16 v6, 0x39

    .line 242
    goto :goto_9

    .line 243
    .line 244
    :cond_10
    move-wide/from16 v5, v16

    .line 245
    .line 246
    :goto_c
    const/16 v13, 0x65

    .line 247
    .line 248
    if-eq v2, v13, :cond_12

    .line 249
    .line 250
    const/16 v14, 0x45

    .line 251
    .line 252
    if-ne v2, v14, :cond_11

    .line 253
    goto :goto_d

    .line 254
    :cond_11
    move v9, v7

    .line 255
    .line 256
    goto/16 :goto_12

    .line 257
    .line 258
    :cond_12
    :goto_d
    add-int/lit8 v2, v12, 0x1

    .line 259
    .line 260
    aget-char v14, v0, v12

    .line 261
    .line 262
    if-ne v14, v10, :cond_13

    .line 263
    move v10, v11

    .line 264
    goto :goto_e

    .line 265
    :cond_13
    move v10, v7

    .line 266
    .line 267
    :goto_e
    if-nez v10, :cond_15

    .line 268
    .line 269
    if-ne v14, v9, :cond_14

    .line 270
    goto :goto_f

    .line 271
    :cond_14
    move v9, v7

    .line 272
    goto :goto_10

    .line 273
    .line 274
    :cond_15
    :goto_f
    add-int/lit8 v12, v12, 0x2

    .line 275
    .line 276
    aget-char v14, v0, v2

    .line 277
    move v9, v7

    .line 278
    move v2, v12

    .line 279
    .line 280
    :goto_10
    if-lt v14, v8, :cond_18

    .line 281
    .line 282
    const/16 v12, 0x39

    .line 283
    .line 284
    if-gt v14, v12, :cond_18

    .line 285
    .line 286
    add-int/lit8 v14, v14, -0x30

    .line 287
    .line 288
    mul-int/lit8 v9, v9, 0xa

    .line 289
    add-int/2addr v9, v14

    .line 290
    .line 291
    const/16 v14, 0x7ff

    .line 292
    .line 293
    if-gt v9, v14, :cond_17

    .line 294
    .line 295
    iget v14, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 296
    .line 297
    if-ne v2, v14, :cond_16

    .line 298
    .line 299
    add-int/lit8 v2, v2, 0x1

    .line 300
    move v12, v2

    .line 301
    .line 302
    move/from16 v18, v11

    .line 303
    .line 304
    const/16 v2, 0x1a

    .line 305
    goto :goto_11

    .line 306
    .line 307
    :cond_16
    add-int/lit8 v14, v2, 0x1

    .line 308
    .line 309
    aget-char v2, v0, v2

    .line 310
    .line 311
    move/from16 v18, v14

    .line 312
    move v14, v2

    .line 313
    .line 314
    move/from16 v2, v18

    .line 315
    .line 316
    move/from16 v18, v11

    .line 317
    goto :goto_10

    .line 318
    .line 319
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 320
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    const-string v3, "too large exp value : "

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    move-result-object v2

    .line 337
    .line 338
    .line 339
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 340
    throw v0

    .line 341
    :cond_18
    move v12, v2

    .line 342
    move v2, v14

    .line 343
    .line 344
    :goto_11
    if-eqz v10, :cond_19

    .line 345
    neg-int v9, v9

    .line 346
    :cond_19
    int-to-short v8, v9

    .line 347
    .line 348
    iput-short v8, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 349
    const/4 v8, 0x2

    .line 350
    .line 351
    iput-byte v8, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 352
    .line 353
    :goto_12
    if-ne v12, v4, :cond_26

    .line 354
    .line 355
    const/16 v8, 0x6e

    .line 356
    .line 357
    const/16 v10, 0x75

    .line 358
    .line 359
    const/16 v14, 0x6c

    .line 360
    .line 361
    if-ne v2, v8, :cond_1e

    .line 362
    .line 363
    add-int/lit8 v8, v12, 0x1

    .line 364
    .line 365
    aget-char v7, v0, v12

    .line 366
    .line 367
    if-ne v7, v10, :cond_1c

    .line 368
    .line 369
    add-int/lit8 v7, v12, 0x2

    .line 370
    .line 371
    aget-char v8, v0, v8

    .line 372
    .line 373
    if-ne v8, v14, :cond_1d

    .line 374
    .line 375
    add-int/lit8 v8, v12, 0x3

    .line 376
    .line 377
    aget-char v7, v0, v7

    .line 378
    .line 379
    if-ne v7, v14, :cond_1c

    .line 380
    .line 381
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 382
    .line 383
    iget-wide v13, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 384
    .line 385
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 386
    .line 387
    move/from16 v19, v12

    .line 388
    .line 389
    iget-wide v11, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 390
    and-long/2addr v11, v13

    .line 391
    .line 392
    cmp-long v2, v11, v25

    .line 393
    .line 394
    if-nez v2, :cond_1b

    .line 395
    const/4 v2, 0x1

    .line 396
    .line 397
    iput-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 398
    .line 399
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 400
    .line 401
    if-ne v8, v2, :cond_1a

    .line 402
    .line 403
    const/16 v2, 0x1a

    .line 404
    goto :goto_13

    .line 405
    .line 406
    :cond_1a
    aget-char v2, v0, v8

    .line 407
    .line 408
    :goto_13
    add-int/lit8 v12, v19, 0x4

    .line 409
    :goto_14
    const/4 v7, 0x0

    .line 410
    const/4 v8, 0x1

    .line 411
    .line 412
    const/16 v18, 0x1

    .line 413
    .line 414
    goto/16 :goto_1a

    .line 415
    .line 416
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 417
    .line 418
    const-string v2, "long value not support input null"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    move-result-object v2

    .line 423
    .line 424
    .line 425
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 426
    throw v0

    .line 427
    :cond_1c
    move v12, v8

    .line 428
    goto :goto_15

    .line 429
    :cond_1d
    move v12, v7

    .line 430
    goto :goto_15

    .line 431
    .line 432
    :cond_1e
    move/from16 v19, v12

    .line 433
    .line 434
    :goto_15
    const/16 v7, 0x74

    .line 435
    .line 436
    if-ne v2, v7, :cond_20

    .line 437
    .line 438
    add-int/lit8 v7, v12, 0x3

    .line 439
    .line 440
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 441
    .line 442
    if-gt v7, v8, :cond_20

    .line 443
    .line 444
    aget-char v11, v0, v12

    .line 445
    .line 446
    const/16 v14, 0x72

    .line 447
    .line 448
    if-ne v11, v14, :cond_20

    .line 449
    .line 450
    add-int/lit8 v11, v12, 0x1

    .line 451
    .line 452
    aget-char v11, v0, v11

    .line 453
    .line 454
    if-ne v11, v10, :cond_20

    .line 455
    .line 456
    add-int/lit8 v10, v12, 0x2

    .line 457
    .line 458
    aget-char v10, v0, v10

    .line 459
    .line 460
    if-ne v10, v13, :cond_20

    .line 461
    .line 462
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 463
    .line 464
    if-ne v7, v8, :cond_1f

    .line 465
    .line 466
    const/16 v7, 0x1a

    .line 467
    goto :goto_16

    .line 468
    .line 469
    :cond_1f
    aget-char v7, v0, v7

    .line 470
    .line 471
    :goto_16
    add-int/lit8 v12, v12, 0x4

    .line 472
    .line 473
    :goto_17
    move-object/from16 v22, v2

    .line 474
    move v2, v7

    .line 475
    goto :goto_14

    .line 476
    .line 477
    :cond_20
    const/16 v7, 0x66

    .line 478
    .line 479
    if-ne v2, v7, :cond_22

    .line 480
    .line 481
    add-int/lit8 v7, v12, 0x4

    .line 482
    .line 483
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 484
    .line 485
    if-gt v7, v8, :cond_22

    .line 486
    .line 487
    aget-char v10, v0, v12

    .line 488
    .line 489
    const/16 v11, 0x61

    .line 490
    .line 491
    if-ne v10, v11, :cond_22

    .line 492
    .line 493
    add-int/lit8 v10, v12, 0x1

    .line 494
    .line 495
    aget-char v10, v0, v10

    .line 496
    .line 497
    const/16 v11, 0x6c

    .line 498
    .line 499
    if-ne v10, v11, :cond_22

    .line 500
    .line 501
    add-int/lit8 v10, v12, 0x2

    .line 502
    .line 503
    aget-char v10, v0, v10

    .line 504
    .line 505
    const/16 v11, 0x73

    .line 506
    .line 507
    if-ne v10, v11, :cond_22

    .line 508
    .line 509
    add-int/lit8 v10, v12, 0x3

    .line 510
    .line 511
    aget-char v10, v0, v10

    .line 512
    .line 513
    if-ne v10, v13, :cond_22

    .line 514
    .line 515
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 516
    .line 517
    if-ne v7, v8, :cond_21

    .line 518
    .line 519
    const/16 v7, 0x1a

    .line 520
    goto :goto_18

    .line 521
    .line 522
    :cond_21
    aget-char v7, v0, v7

    .line 523
    .line 524
    :goto_18
    add-int/lit8 v12, v12, 0x5

    .line 525
    goto :goto_17

    .line 526
    .line 527
    :cond_22
    const/16 v7, 0x7b

    .line 528
    .line 529
    if-ne v2, v7, :cond_23

    .line 530
    .line 531
    if-nez v3, :cond_23

    .line 532
    .line 533
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 534
    .line 535
    .line 536
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 537
    .line 538
    move-wide/from16 v2, v25

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->readObject(Ljava/lang/Object;J)V

    .line 542
    const/4 v7, 0x0

    .line 543
    .line 544
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->decimal(Lcom/alibaba/fastjson2/JSONObject;)Ljava/math/BigDecimal;

    .line 548
    move-result-object v0

    .line 549
    return-object v0

    .line 550
    :cond_23
    const/4 v7, 0x0

    .line 551
    .line 552
    const/16 v8, 0x5b

    .line 553
    .line 554
    if-ne v2, v8, :cond_25

    .line 555
    .line 556
    if-nez v3, :cond_25

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 560
    move-result-object v0

    .line 561
    .line 562
    .line 563
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 564
    move-result v0

    .line 565
    .line 566
    if-eqz v0, :cond_24

    .line 567
    const/4 v2, 0x1

    .line 568
    .line 569
    iput-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 570
    return-object v22

    .line 571
    .line 572
    :cond_24
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 576
    move-result-object v2

    .line 577
    .line 578
    .line 579
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 580
    throw v0

    .line 581
    :cond_25
    :goto_19
    move v8, v7

    .line 582
    goto :goto_1a

    .line 583
    .line 584
    :cond_26
    move/from16 v19, v12

    .line 585
    goto :goto_19

    .line 586
    .line 587
    :goto_1a
    sub-int v10, v12, v4

    .line 588
    .line 589
    if-eqz v3, :cond_29

    .line 590
    .line 591
    if-eq v2, v3, :cond_27

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readString()Ljava/lang/String;

    .line 595
    move-result-object v0

    .line 596
    .line 597
    .line 598
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 599
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    return-object v0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .line 603
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 607
    move-result-object v3

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 611
    move-result-object v3

    .line 612
    .line 613
    .line 614
    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    throw v2

    .line 616
    .line 617
    :cond_27
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 618
    .line 619
    if-lt v12, v2, :cond_28

    .line 620
    .line 621
    const/16 v2, 0x1a

    .line 622
    goto :goto_1b

    .line 623
    .line 624
    :cond_28
    add-int/lit8 v2, v12, 0x1

    .line 625
    .line 626
    aget-char v3, v0, v12

    .line 627
    move v12, v2

    .line 628
    move v2, v3

    .line 629
    .line 630
    :cond_29
    :goto_1b
    if-nez v8, :cond_2f

    .line 631
    .line 632
    if-nez v9, :cond_2b

    .line 633
    .line 634
    if-nez v15, :cond_2b

    .line 635
    .line 636
    const-wide/16 v25, 0x0

    .line 637
    .line 638
    cmp-long v3, v5, v25

    .line 639
    .line 640
    if-eqz v3, :cond_2b

    .line 641
    .line 642
    iget-boolean v3, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 643
    .line 644
    if-eqz v3, :cond_2a

    .line 645
    neg-long v5, v5

    .line 646
    .line 647
    :cond_2a
    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 648
    .line 649
    .line 650
    invoke-static {v5, v6, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 651
    move-result-object v22

    .line 652
    const/4 v8, 0x1

    .line 653
    .line 654
    :cond_2b
    const/16 v17, 0x1

    .line 655
    .line 656
    if-nez v8, :cond_2c

    .line 657
    .line 658
    add-int/lit8 v4, v4, -0x1

    .line 659
    .line 660
    .line 661
    invoke-static {v0, v4, v10}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    .line 662
    move-result-object v3

    .line 663
    .line 664
    move-object/from16 v22, v3

    .line 665
    .line 666
    :cond_2c
    const/16 v3, 0x4c

    .line 667
    .line 668
    if-eq v2, v3, :cond_2d

    .line 669
    .line 670
    const/16 v3, 0x46

    .line 671
    .line 672
    if-eq v2, v3, :cond_2d

    .line 673
    .line 674
    const/16 v3, 0x44

    .line 675
    .line 676
    if-eq v2, v3, :cond_2d

    .line 677
    .line 678
    const/16 v3, 0x42

    .line 679
    .line 680
    if-eq v2, v3, :cond_2d

    .line 681
    .line 682
    const/16 v3, 0x53

    .line 683
    .line 684
    if-ne v2, v3, :cond_30

    .line 685
    .line 686
    :cond_2d
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 687
    .line 688
    if-lt v12, v2, :cond_2e

    .line 689
    .line 690
    :goto_1c
    const/16 v2, 0x1a

    .line 691
    goto :goto_1e

    .line 692
    .line 693
    :cond_2e
    add-int/lit8 v2, v12, 0x1

    .line 694
    .line 695
    aget-char v3, v0, v12

    .line 696
    :goto_1d
    move v12, v2

    .line 697
    move v2, v3

    .line 698
    goto :goto_1e

    .line 699
    .line 700
    :cond_2f
    const/16 v17, 0x1

    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    :cond_30
    :goto_1e
    const-wide v3, 0x100003701L

    .line 706
    .line 707
    const-wide/16 v5, 0x1

    .line 708
    .line 709
    const/16 v8, 0x20

    .line 710
    .line 711
    if-gt v2, v8, :cond_32

    .line 712
    .line 713
    shl-long v9, v5, v2

    .line 714
    and-long/2addr v9, v3

    .line 715
    .line 716
    const-wide/16 v25, 0x0

    .line 717
    .line 718
    cmp-long v9, v9, v25

    .line 719
    .line 720
    if-eqz v9, :cond_32

    .line 721
    .line 722
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 723
    .line 724
    if-ne v12, v2, :cond_31

    .line 725
    goto :goto_1c

    .line 726
    .line 727
    :cond_31
    add-int/lit8 v2, v12, 0x1

    .line 728
    .line 729
    aget-char v3, v0, v12

    .line 730
    goto :goto_1d

    .line 731
    .line 732
    :cond_32
    const/16 v9, 0x2c

    .line 733
    .line 734
    if-ne v2, v9, :cond_33

    .line 735
    .line 736
    move/from16 v7, v17

    .line 737
    .line 738
    :cond_33
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 739
    .line 740
    if-eqz v7, :cond_36

    .line 741
    .line 742
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 743
    .line 744
    if-ne v12, v2, :cond_34

    .line 745
    .line 746
    const/16 v7, 0x1a

    .line 747
    goto :goto_1f

    .line 748
    .line 749
    :cond_34
    add-int/lit8 v2, v12, 0x1

    .line 750
    .line 751
    aget-char v7, v0, v12

    .line 752
    goto :goto_21

    .line 753
    :goto_1f
    move v2, v7

    .line 754
    .line 755
    :goto_20
    if-gt v2, v8, :cond_36

    .line 756
    .line 757
    shl-long v9, v5, v2

    .line 758
    and-long/2addr v9, v3

    .line 759
    .line 760
    const-wide/16 v25, 0x0

    .line 761
    .line 762
    cmp-long v7, v9, v25

    .line 763
    .line 764
    if-eqz v7, :cond_36

    .line 765
    .line 766
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 767
    .line 768
    if-ne v12, v2, :cond_35

    .line 769
    .line 770
    const/16 v2, 0x1a

    .line 771
    goto :goto_20

    .line 772
    .line 773
    :cond_35
    add-int/lit8 v2, v12, 0x1

    .line 774
    .line 775
    aget-char v7, v0, v12

    .line 776
    :goto_21
    move v12, v2

    .line 777
    goto :goto_1f

    .line 778
    .line 779
    :cond_36
    if-eqz v18, :cond_37

    .line 780
    .line 781
    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 782
    .line 783
    iput v12, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 784
    return-object v22

    .line 785
    .line 786
    :cond_37
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 787
    .line 788
    const-string v2, "illegal input error"

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 792
    move-result-object v2

    .line 793
    .line 794
    .line 795
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 796
    throw v0
.end method

.method public readBoolValue()Z
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 8
    .line 9
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 10
    .line 11
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 12
    .line 13
    const/16 v5, 0x74

    .line 14
    .line 15
    const/16 v6, 0x65

    .line 16
    .line 17
    const/16 v7, 0x75

    .line 18
    .line 19
    const-wide/16 v8, 0x0

    .line 20
    const/4 v10, 0x1

    .line 21
    .line 22
    if-ne v4, v5, :cond_1

    .line 23
    .line 24
    add-int/lit8 v5, v3, 0x2

    .line 25
    array-length v11, v2

    .line 26
    .line 27
    if-ge v5, v11, :cond_1

    .line 28
    .line 29
    aget-char v11, v2, v3

    .line 30
    .line 31
    const/16 v12, 0x72

    .line 32
    .line 33
    if-ne v11, v12, :cond_1

    .line 34
    .line 35
    add-int/lit8 v11, v3, 0x1

    .line 36
    .line 37
    aget-char v11, v2, v11

    .line 38
    .line 39
    if-ne v11, v7, :cond_1

    .line 40
    .line 41
    aget-char v5, v2, v5

    .line 42
    .line 43
    if-ne v5, v6, :cond_1

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x3

    .line 46
    :cond_0
    :goto_0
    move v4, v10

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    const/16 v5, 0x66

    .line 51
    .line 52
    const/16 v11, 0x6c

    .line 53
    .line 54
    if-ne v4, v5, :cond_3

    .line 55
    .line 56
    add-int/lit8 v5, v3, 0x3

    .line 57
    array-length v12, v2

    .line 58
    .line 59
    if-ge v5, v12, :cond_3

    .line 60
    .line 61
    aget-char v12, v2, v3

    .line 62
    .line 63
    const/16 v13, 0x61

    .line 64
    .line 65
    if-ne v12, v13, :cond_3

    .line 66
    .line 67
    add-int/lit8 v12, v3, 0x1

    .line 68
    .line 69
    aget-char v12, v2, v12

    .line 70
    .line 71
    if-ne v12, v11, :cond_3

    .line 72
    .line 73
    add-int/lit8 v12, v3, 0x2

    .line 74
    .line 75
    aget-char v12, v2, v12

    .line 76
    .line 77
    const/16 v13, 0x73

    .line 78
    .line 79
    if-ne v12, v13, :cond_3

    .line 80
    .line 81
    aget-char v5, v2, v5

    .line 82
    .line 83
    if-ne v5, v6, :cond_3

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x4

    .line 86
    :cond_2
    :goto_1
    move v4, v1

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_3
    const/16 v5, 0x2d

    .line 91
    .line 92
    if-eq v4, v5, :cond_16

    .line 93
    .line 94
    const/16 v5, 0x30

    .line 95
    .line 96
    if-lt v4, v5, :cond_4

    .line 97
    .line 98
    const/16 v6, 0x39

    .line 99
    .line 100
    if-gt v4, v6, :cond_4

    .line 101
    .line 102
    goto/16 :goto_9

    .line 103
    .line 104
    :cond_4
    const/16 v6, 0x6e

    .line 105
    .line 106
    if-ne v4, v6, :cond_6

    .line 107
    .line 108
    add-int/lit8 v6, v3, 0x2

    .line 109
    array-length v12, v2

    .line 110
    .line 111
    if-ge v6, v12, :cond_6

    .line 112
    .line 113
    aget-char v12, v2, v3

    .line 114
    .line 115
    if-ne v12, v7, :cond_6

    .line 116
    .line 117
    add-int/lit8 v7, v3, 0x1

    .line 118
    .line 119
    aget-char v7, v2, v7

    .line 120
    .line 121
    if-ne v7, v11, :cond_6

    .line 122
    .line 123
    aget-char v6, v2, v6

    .line 124
    .line 125
    if-ne v6, v11, :cond_6

    .line 126
    .line 127
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 128
    .line 129
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 130
    .line 131
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 132
    .line 133
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 134
    and-long/2addr v4, v6

    .line 135
    .line 136
    cmp-long v4, v4, v8

    .line 137
    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 141
    .line 142
    add-int/lit8 v3, v3, 0x3

    .line 143
    goto :goto_1

    .line 144
    .line 145
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 146
    .line 147
    const-string v2, "boolean value not support input null"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v1

    .line 156
    .line 157
    :cond_6
    const/16 v6, 0x22

    .line 158
    .line 159
    if-ne v4, v6, :cond_15

    .line 160
    .line 161
    add-int/lit8 v4, v3, 0x1

    .line 162
    array-length v7, v2

    .line 163
    .line 164
    const-string v11, "can not convert to boolean : "

    .line 165
    .line 166
    if-ge v4, v7, :cond_10

    .line 167
    .line 168
    aget-char v4, v2, v4

    .line 169
    .line 170
    if-ne v4, v6, :cond_10

    .line 171
    .line 172
    aget-char v4, v2, v3

    .line 173
    .line 174
    add-int/lit8 v3, v3, 0x2

    .line 175
    .line 176
    if-eq v4, v5, :cond_2

    .line 177
    .line 178
    const/16 v5, 0x4e

    .line 179
    .line 180
    if-ne v4, v5, :cond_7

    .line 181
    goto :goto_1

    .line 182
    .line 183
    :cond_7
    const/16 v5, 0x31

    .line 184
    .line 185
    if-eq v4, v5, :cond_0

    .line 186
    .line 187
    const/16 v5, 0x59

    .line 188
    .line 189
    if-ne v4, v5, :cond_8

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 212
    throw v1

    .line 213
    .line 214
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 215
    .line 216
    const/16 v6, 0x1a

    .line 217
    .line 218
    if-ne v3, v5, :cond_9

    .line 219
    move v5, v3

    .line 220
    :goto_3
    move v3, v6

    .line 221
    goto :goto_4

    .line 222
    .line 223
    :cond_9
    add-int/lit8 v5, v3, 0x1

    .line 224
    .line 225
    aget-char v3, v2, v3

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    :goto_4
    const-wide v11, 0x100003701L

    .line 231
    .line 232
    const-wide/16 v13, 0x1

    .line 233
    .line 234
    const/16 v7, 0x20

    .line 235
    .line 236
    if-gt v3, v7, :cond_b

    .line 237
    .line 238
    shl-long v15, v13, v3

    .line 239
    and-long/2addr v15, v11

    .line 240
    .line 241
    cmp-long v15, v15, v8

    .line 242
    .line 243
    if-eqz v15, :cond_b

    .line 244
    .line 245
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 246
    .line 247
    if-ne v5, v3, :cond_a

    .line 248
    goto :goto_3

    .line 249
    .line 250
    :cond_a
    add-int/lit8 v3, v5, 0x1

    .line 251
    .line 252
    aget-char v5, v2, v5

    .line 253
    .line 254
    move/from16 v17, v5

    .line 255
    move v5, v3

    .line 256
    .line 257
    move/from16 v3, v17

    .line 258
    goto :goto_4

    .line 259
    .line 260
    :cond_b
    const/16 v15, 0x2c

    .line 261
    .line 262
    if-ne v3, v15, :cond_c

    .line 263
    move v1, v10

    .line 264
    .line 265
    :cond_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 266
    .line 267
    if-eqz v1, :cond_f

    .line 268
    .line 269
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 270
    .line 271
    if-ne v5, v1, :cond_d

    .line 272
    :goto_5
    move v3, v6

    .line 273
    goto :goto_7

    .line 274
    .line 275
    :cond_d
    add-int/lit8 v1, v5, 0x1

    .line 276
    .line 277
    aget-char v3, v2, v5

    .line 278
    :goto_6
    move v5, v1

    .line 279
    .line 280
    :goto_7
    if-gt v3, v7, :cond_f

    .line 281
    .line 282
    shl-long v15, v13, v3

    .line 283
    and-long/2addr v15, v11

    .line 284
    .line 285
    cmp-long v1, v15, v8

    .line 286
    .line 287
    if-eqz v1, :cond_f

    .line 288
    .line 289
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 290
    .line 291
    if-ne v5, v1, :cond_e

    .line 292
    goto :goto_5

    .line 293
    .line 294
    :cond_e
    add-int/lit8 v1, v5, 0x1

    .line 295
    .line 296
    aget-char v3, v2, v5

    .line 297
    goto :goto_6

    .line 298
    .line 299
    :cond_f
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 300
    .line 301
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 302
    return v4

    .line 303
    .line 304
    .line 305
    :cond_10
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readString()Ljava/lang/String;

    .line 306
    move-result-object v2

    .line 307
    .line 308
    const-string v3, "true"

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 312
    move-result v3

    .line 313
    .line 314
    if-eqz v3, :cond_11

    .line 315
    return v10

    .line 316
    .line 317
    :cond_11
    const-string v3, "false"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 321
    move-result v3

    .line 322
    .line 323
    if-eqz v3, :cond_12

    .line 324
    return v1

    .line 325
    .line 326
    .line 327
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 328
    move-result v3

    .line 329
    .line 330
    if-nez v3, :cond_14

    .line 331
    .line 332
    const-string v3, "null"

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 336
    move-result v3

    .line 337
    .line 338
    if-eqz v3, :cond_13

    .line 339
    goto :goto_8

    .line 340
    .line 341
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 342
    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v2

    .line 357
    .line 358
    .line 359
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 360
    throw v1

    .line 361
    .line 362
    :cond_14
    :goto_8
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 363
    return v1

    .line 364
    .line 365
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 366
    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    const-string v3, "syntax error : "

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v2

    .line 383
    .line 384
    .line 385
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 386
    throw v1

    .line 387
    .line 388
    .line 389
    :cond_16
    :goto_9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    .line 390
    .line 391
    iget-byte v2, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 392
    .line 393
    if-ne v2, v10, :cond_1a

    .line 394
    .line 395
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 396
    .line 397
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 398
    .line 399
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 400
    .line 401
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 402
    and-long/2addr v2, v4

    .line 403
    .line 404
    cmp-long v2, v2, v8

    .line 405
    .line 406
    if-eqz v2, :cond_19

    .line 407
    .line 408
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 409
    .line 410
    if-nez v2, :cond_18

    .line 411
    .line 412
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 413
    .line 414
    if-nez v2, :cond_18

    .line 415
    .line 416
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 417
    .line 418
    if-nez v2, :cond_18

    .line 419
    .line 420
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 421
    .line 422
    if-eqz v2, :cond_17

    .line 423
    goto :goto_a

    .line 424
    :cond_17
    return v1

    .line 425
    :cond_18
    :goto_a
    return v10

    .line 426
    .line 427
    :cond_19
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 428
    .line 429
    if-nez v2, :cond_1a

    .line 430
    .line 431
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 432
    .line 433
    if-nez v2, :cond_1a

    .line 434
    .line 435
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 436
    .line 437
    if-nez v2, :cond_1a

    .line 438
    .line 439
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 440
    .line 441
    if-ne v2, v10, :cond_1a

    .line 442
    return v10

    .line 443
    :cond_1a
    return v1
.end method

.method public readDoubleValue()D
    .locals 35

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 11
    .line 12
    const/16 v5, 0x22

    .line 13
    .line 14
    if-eq v2, v5, :cond_1

    .line 15
    .line 16
    const/16 v5, 0x27

    .line 17
    .line 18
    if-ne v2, v5, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v5, v3

    .line 21
    move v3, v2

    .line 22
    const/4 v2, 0x0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    :goto_0
    if-ne v3, v4, :cond_2

    .line 26
    move v5, v3

    .line 27
    .line 28
    const/16 v3, 0x1a

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_2
    add-int/lit8 v5, v3, 0x1

    .line 32
    .line 33
    aget-char v3, v1, v3

    .line 34
    .line 35
    :goto_1
    const/16 v8, 0x2c

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-ne v3, v2, :cond_4

    .line 40
    .line 41
    if-ne v5, v4, :cond_3

    .line 42
    .line 43
    const/16 v3, 0x1a

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_3
    add-int/lit8 v2, v5, 0x1

    .line 47
    .line 48
    aget-char v3, v1, v5

    .line 49
    move v5, v2

    .line 50
    :goto_2
    move-object v7, v1

    .line 51
    .line 52
    const-wide/16 v11, 0x0

    .line 53
    const/4 v13, 0x1

    .line 54
    .line 55
    const-wide/16 v14, 0x0

    .line 56
    .line 57
    const-wide/16 v16, 0x1

    .line 58
    .line 59
    const-wide/16 v18, 0x0

    .line 60
    .line 61
    goto/16 :goto_1b

    .line 62
    .line 63
    :cond_4
    const/16 v6, 0x2b

    .line 64
    .line 65
    const/16 v7, 0x2d

    .line 66
    .line 67
    const-wide/16 v16, 0x1

    .line 68
    .line 69
    const/16 v9, 0x39

    .line 70
    .line 71
    const/16 v10, 0x30

    .line 72
    .line 73
    if-lt v3, v10, :cond_5

    .line 74
    .line 75
    if-gt v3, v9, :cond_5

    .line 76
    .line 77
    const-wide/16 v18, 0x0

    .line 78
    .line 79
    rsub-int/lit8 v11, v3, 0x30

    .line 80
    int-to-long v11, v11

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_5
    const-wide/16 v18, 0x0

    .line 84
    .line 85
    if-eq v3, v7, :cond_6

    .line 86
    .line 87
    if-ne v3, v6, :cond_7

    .line 88
    .line 89
    :cond_6
    move-wide/from16 v11, v18

    .line 90
    .line 91
    :goto_3
    cmp-long v20, v11, v18

    .line 92
    .line 93
    const-wide/16 v21, 0x64

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const-wide v23, -0x147ae147ae147aeL

    .line 99
    const/4 v13, -0x1

    .line 100
    .line 101
    if-gtz v20, :cond_8

    .line 102
    .line 103
    const-wide/16 v25, 0x0

    .line 104
    .line 105
    add-int/lit8 v14, v5, 0x1

    .line 106
    .line 107
    if-ge v14, v4, :cond_9

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([CI)I

    .line 111
    move-result v14

    .line 112
    .line 113
    if-eq v14, v13, :cond_9

    .line 114
    .line 115
    cmp-long v13, v23, v11

    .line 116
    .line 117
    if-gtz v13, :cond_7

    .line 118
    .line 119
    mul-long v11, v11, v21

    .line 120
    int-to-long v13, v14

    .line 121
    sub-long/2addr v11, v13

    .line 122
    .line 123
    add-int/lit8 v5, v5, 0x2

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_7
    move-wide/from16 v11, v16

    .line 127
    goto :goto_3

    .line 128
    .line 129
    :cond_8
    const-wide/16 v25, 0x0

    .line 130
    .line 131
    :cond_9
    const-wide/16 v27, 0xa

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    const-wide v29, -0xcccccccccccccccL

    .line 137
    .line 138
    if-gtz v20, :cond_b

    .line 139
    .line 140
    if-ge v5, v4, :cond_b

    .line 141
    .line 142
    const-wide/16 v31, 0x30

    .line 143
    .line 144
    aget-char v14, v1, v5

    .line 145
    .line 146
    if-lt v14, v10, :cond_c

    .line 147
    .line 148
    if-gt v14, v9, :cond_c

    .line 149
    .line 150
    cmp-long v15, v29, v11

    .line 151
    .line 152
    if-gtz v15, :cond_a

    .line 153
    .line 154
    mul-long v11, v11, v27

    .line 155
    .line 156
    add-long v11, v11, v31

    .line 157
    int-to-long v6, v14

    .line 158
    sub-long/2addr v11, v6

    .line 159
    .line 160
    add-int/lit8 v5, v5, 0x1

    .line 161
    goto :goto_4

    .line 162
    .line 163
    :cond_a
    move-wide/from16 v11, v16

    .line 164
    goto :goto_4

    .line 165
    .line 166
    :cond_b
    const-wide/16 v31, 0x30

    .line 167
    move v14, v3

    .line 168
    .line 169
    :cond_c
    :goto_4
    cmp-long v6, v11, v18

    .line 170
    .line 171
    if-gtz v6, :cond_11

    .line 172
    .line 173
    if-ge v5, v4, :cond_11

    .line 174
    .line 175
    aget-char v6, v1, v5

    .line 176
    .line 177
    const/16 v7, 0x2e

    .line 178
    .line 179
    if-ne v6, v7, :cond_11

    .line 180
    .line 181
    add-int/lit8 v5, v5, 0x1

    .line 182
    const/4 v6, 0x0

    .line 183
    .line 184
    :goto_5
    cmp-long v7, v11, v18

    .line 185
    .line 186
    if-gtz v7, :cond_e

    .line 187
    .line 188
    add-int/lit8 v15, v5, 0x1

    .line 189
    .line 190
    if-ge v15, v4, :cond_e

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([CI)I

    .line 194
    move-result v15

    .line 195
    .line 196
    if-eq v15, v13, :cond_e

    .line 197
    .line 198
    cmp-long v7, v23, v11

    .line 199
    .line 200
    if-gtz v7, :cond_d

    .line 201
    .line 202
    mul-long v11, v11, v21

    .line 203
    .line 204
    move/from16 v33, v14

    .line 205
    int-to-long v13, v15

    .line 206
    sub-long/2addr v11, v13

    .line 207
    .line 208
    add-int/lit8 v5, v5, 0x2

    .line 209
    .line 210
    add-int/lit8 v6, v6, 0x2

    .line 211
    .line 212
    move/from16 v14, v33

    .line 213
    const/4 v13, -0x1

    .line 214
    goto :goto_5

    .line 215
    .line 216
    :cond_d
    move-wide/from16 v11, v16

    .line 217
    goto :goto_5

    .line 218
    .line 219
    :cond_e
    move/from16 v33, v14

    .line 220
    .line 221
    if-gtz v7, :cond_10

    .line 222
    .line 223
    if-ge v5, v4, :cond_10

    .line 224
    .line 225
    aget-char v14, v1, v5

    .line 226
    .line 227
    if-lt v14, v10, :cond_12

    .line 228
    .line 229
    if-gt v14, v9, :cond_12

    .line 230
    .line 231
    cmp-long v7, v29, v11

    .line 232
    .line 233
    if-gtz v7, :cond_f

    .line 234
    .line 235
    mul-long v11, v11, v27

    .line 236
    .line 237
    add-long v11, v11, v31

    .line 238
    int-to-long v9, v14

    .line 239
    sub-long/2addr v11, v9

    .line 240
    .line 241
    add-int/lit8 v5, v5, 0x1

    .line 242
    .line 243
    add-int/lit8 v6, v6, 0x1

    .line 244
    goto :goto_6

    .line 245
    .line 246
    :cond_f
    move-wide/from16 v11, v16

    .line 247
    goto :goto_6

    .line 248
    .line 249
    :cond_10
    move/from16 v14, v33

    .line 250
    goto :goto_6

    .line 251
    .line 252
    :cond_11
    move/from16 v33, v14

    .line 253
    .line 254
    move/from16 v14, v33

    .line 255
    const/4 v6, 0x0

    .line 256
    .line 257
    :cond_12
    :goto_6
    cmp-long v9, v11, v18

    .line 258
    .line 259
    if-gtz v9, :cond_14

    .line 260
    .line 261
    if-ne v5, v4, :cond_13

    .line 262
    .line 263
    const/16 v14, 0x1a

    .line 264
    goto :goto_7

    .line 265
    .line 266
    :cond_13
    add-int/lit8 v10, v5, 0x1

    .line 267
    .line 268
    aget-char v5, v1, v5

    .line 269
    move v14, v5

    .line 270
    move v5, v10

    .line 271
    .line 272
    :cond_14
    :goto_7
    if-gtz v9, :cond_24

    .line 273
    .line 274
    const/16 v9, 0x65

    .line 275
    .line 276
    if-eq v14, v9, :cond_18

    .line 277
    .line 278
    const/16 v9, 0x45

    .line 279
    .line 280
    if-ne v14, v9, :cond_15

    .line 281
    goto :goto_8

    .line 282
    .line 283
    :cond_15
    const/16 v7, 0x4c

    .line 284
    .line 285
    if-eq v14, v7, :cond_16

    .line 286
    .line 287
    const/16 v7, 0x46

    .line 288
    .line 289
    if-eq v14, v7, :cond_16

    .line 290
    .line 291
    const/16 v7, 0x44

    .line 292
    .line 293
    if-eq v14, v7, :cond_16

    .line 294
    .line 295
    const/16 v7, 0x42

    .line 296
    .line 297
    if-eq v14, v7, :cond_16

    .line 298
    .line 299
    const/16 v7, 0x53

    .line 300
    .line 301
    if-ne v14, v7, :cond_24

    .line 302
    .line 303
    :cond_16
    if-ne v5, v4, :cond_17

    .line 304
    .line 305
    const/16 v14, 0x1a

    .line 306
    .line 307
    goto/16 :goto_12

    .line 308
    .line 309
    :cond_17
    add-int/lit8 v7, v5, 0x1

    .line 310
    .line 311
    aget-char v5, v1, v5

    .line 312
    move v14, v5

    .line 313
    move v5, v7

    .line 314
    .line 315
    goto/16 :goto_12

    .line 316
    .line 317
    :cond_18
    :goto_8
    if-ne v5, v4, :cond_19

    .line 318
    move v9, v5

    .line 319
    .line 320
    const/16 v5, 0x1a

    .line 321
    .line 322
    :goto_9
    const/16 v10, 0x2d

    .line 323
    goto :goto_a

    .line 324
    .line 325
    :cond_19
    add-int/lit8 v9, v5, 0x1

    .line 326
    .line 327
    aget-char v5, v1, v5

    .line 328
    goto :goto_9

    .line 329
    .line 330
    :goto_a
    if-ne v5, v10, :cond_1a

    .line 331
    const/4 v10, 0x1

    .line 332
    goto :goto_b

    .line 333
    :cond_1a
    const/4 v10, 0x0

    .line 334
    .line 335
    :goto_b
    if-nez v10, :cond_1d

    .line 336
    .line 337
    const/16 v15, 0x2b

    .line 338
    .line 339
    if-ne v5, v15, :cond_1b

    .line 340
    goto :goto_d

    .line 341
    .line 342
    :cond_1b
    if-eq v5, v8, :cond_1c

    .line 343
    .line 344
    :goto_c
    const/16 v13, 0x30

    .line 345
    goto :goto_e

    .line 346
    .line 347
    .line 348
    :cond_1c
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->numberError()Lcom/alibaba/fastjson2/JSONException;

    .line 349
    move-result-object v1

    .line 350
    throw v1

    .line 351
    .line 352
    :cond_1d
    :goto_d
    if-ne v9, v4, :cond_1e

    .line 353
    .line 354
    const/16 v5, 0x1a

    .line 355
    goto :goto_c

    .line 356
    .line 357
    :cond_1e
    add-int/lit8 v5, v9, 0x1

    .line 358
    .line 359
    aget-char v9, v1, v9

    .line 360
    .line 361
    move/from16 v34, v9

    .line 362
    move v9, v5

    .line 363
    .line 364
    move/from16 v5, v34

    .line 365
    goto :goto_c

    .line 366
    .line 367
    :goto_e
    if-lt v5, v13, :cond_23

    .line 368
    .line 369
    const/16 v7, 0x39

    .line 370
    .line 371
    if-gt v5, v7, :cond_23

    .line 372
    .line 373
    add-int/lit8 v5, v5, -0x30

    .line 374
    .line 375
    :goto_f
    if-ge v9, v4, :cond_20

    .line 376
    .line 377
    aget-char v14, v1, v9

    .line 378
    .line 379
    if-lt v14, v13, :cond_20

    .line 380
    .line 381
    if-gt v14, v7, :cond_20

    .line 382
    .line 383
    add-int/lit8 v14, v14, -0x30

    .line 384
    .line 385
    mul-int/lit8 v5, v5, 0xa

    .line 386
    add-int/2addr v5, v14

    .line 387
    .line 388
    const/16 v14, 0x7ff

    .line 389
    .line 390
    if-gt v5, v14, :cond_1f

    .line 391
    .line 392
    add-int/lit8 v9, v9, 0x1

    .line 393
    goto :goto_f

    .line 394
    .line 395
    :cond_1f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 396
    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    const-string v3, "too large exp value : "

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v2

    .line 413
    .line 414
    .line 415
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 416
    throw v1

    .line 417
    .line 418
    :cond_20
    if-eqz v10, :cond_21

    .line 419
    neg-int v5, v5

    .line 420
    :cond_21
    sub-int/2addr v6, v5

    .line 421
    .line 422
    if-ne v9, v4, :cond_22

    .line 423
    .line 424
    const/16 v7, 0x1a

    .line 425
    goto :goto_10

    .line 426
    .line 427
    :cond_22
    add-int/lit8 v5, v9, 0x1

    .line 428
    .line 429
    aget-char v7, v1, v9

    .line 430
    move v9, v5

    .line 431
    :goto_10
    move v14, v7

    .line 432
    :goto_11
    move v5, v9

    .line 433
    goto :goto_12

    .line 434
    :cond_23
    move v14, v5

    .line 435
    .line 436
    move-wide/from16 v11, v16

    .line 437
    goto :goto_11

    .line 438
    .line 439
    :cond_24
    :goto_12
    cmp-long v7, v11, v18

    .line 440
    .line 441
    if-gtz v7, :cond_27

    .line 442
    .line 443
    if-eqz v2, :cond_27

    .line 444
    .line 445
    if-ne v14, v2, :cond_26

    .line 446
    .line 447
    if-ne v5, v4, :cond_25

    .line 448
    move v2, v5

    .line 449
    .line 450
    const/16 v5, 0x1a

    .line 451
    goto :goto_13

    .line 452
    .line 453
    :cond_25
    add-int/lit8 v2, v5, 0x1

    .line 454
    .line 455
    aget-char v5, v1, v5

    .line 456
    :goto_13
    move v14, v5

    .line 457
    move v5, v2

    .line 458
    goto :goto_14

    .line 459
    .line 460
    :cond_26
    move-wide/from16 v11, v16

    .line 461
    .line 462
    :cond_27
    :goto_14
    cmp-long v2, v11, v18

    .line 463
    .line 464
    if-gtz v2, :cond_30

    .line 465
    .line 466
    if-nez v6, :cond_28

    .line 467
    long-to-double v9, v11

    .line 468
    move-object v7, v1

    .line 469
    move v13, v2

    .line 470
    :goto_15
    const/4 v1, 0x1

    .line 471
    goto :goto_16

    .line 472
    :cond_28
    long-to-double v9, v11

    .line 473
    move-object v7, v1

    .line 474
    move v13, v2

    .line 475
    double-to-long v1, v9

    .line 476
    .line 477
    cmp-long v1, v1, v11

    .line 478
    .line 479
    if-nez v1, :cond_2a

    .line 480
    .line 481
    if-lez v6, :cond_29

    .line 482
    .line 483
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    .line 484
    array-length v2, v1

    .line 485
    .line 486
    if-ge v6, v2, :cond_29

    .line 487
    .line 488
    aget-wide v21, v1, v6

    .line 489
    .line 490
    div-double v9, v9, v21

    .line 491
    goto :goto_15

    .line 492
    .line 493
    :cond_29
    if-gez v6, :cond_2a

    .line 494
    .line 495
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    .line 496
    array-length v2, v1

    .line 497
    neg-int v2, v2

    .line 498
    .line 499
    if-le v6, v2, :cond_2a

    .line 500
    neg-int v2, v6

    .line 501
    .line 502
    aget-wide v21, v1, v2

    .line 503
    .line 504
    mul-double v9, v9, v21

    .line 505
    goto :goto_15

    .line 506
    .line 507
    :cond_2a
    move-wide/from16 v9, v25

    .line 508
    const/4 v1, 0x0

    .line 509
    .line 510
    :goto_16
    if-nez v1, :cond_2d

    .line 511
    .line 512
    const/16 v1, -0x80

    .line 513
    .line 514
    if-le v6, v1, :cond_2c

    .line 515
    .line 516
    const/16 v1, 0x80

    .line 517
    .line 518
    if-ge v6, v1, :cond_2c

    .line 519
    .line 520
    const/16 v1, 0x2d

    .line 521
    .line 522
    if-ne v3, v1, :cond_2b

    .line 523
    const/4 v13, -0x1

    .line 524
    goto :goto_17

    .line 525
    :cond_2b
    const/4 v13, 0x1

    .line 526
    .line 527
    .line 528
    :goto_17
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 529
    move-result-wide v1

    .line 530
    .line 531
    .line 532
    invoke-static {v13, v1, v2, v6}, Lcom/alibaba/fastjson2/util/TypeUtils;->doubleValue(IJI)D

    .line 533
    move-result-wide v1

    .line 534
    :goto_18
    move v3, v14

    .line 535
    const/4 v13, 0x0

    .line 536
    move-wide v14, v1

    .line 537
    goto :goto_1b

    .line 538
    :cond_2c
    move v3, v14

    .line 539
    .line 540
    move-wide/from16 v11, v16

    .line 541
    :goto_19
    const/4 v13, 0x0

    .line 542
    move-wide v14, v9

    .line 543
    goto :goto_1b

    .line 544
    .line 545
    :cond_2d
    const/16 v1, 0x2d

    .line 546
    .line 547
    if-eq v3, v1, :cond_2e

    .line 548
    .line 549
    cmpl-double v1, v9, v25

    .line 550
    .line 551
    if-eqz v1, :cond_2f

    .line 552
    :goto_1a
    neg-double v1, v9

    .line 553
    goto :goto_18

    .line 554
    .line 555
    :cond_2e
    if-nez v13, :cond_2f

    .line 556
    goto :goto_1a

    .line 557
    :cond_2f
    move v3, v14

    .line 558
    goto :goto_19

    .line 559
    :cond_30
    move-object v7, v1

    .line 560
    move v3, v14

    .line 561
    .line 562
    move-wide/from16 v14, v25

    .line 563
    const/4 v13, 0x0

    .line 564
    .line 565
    :goto_1b
    cmp-long v1, v11, v18

    .line 566
    .line 567
    if-lez v1, :cond_31

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readNumber0()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getDoubleValue()D

    .line 574
    move-result-wide v1

    .line 575
    return-wide v1

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    :cond_31
    :goto_1c
    const-wide v1, 0x100003701L

    .line 581
    .line 582
    const/16 v6, 0x20

    .line 583
    .line 584
    if-gt v3, v6, :cond_33

    .line 585
    .line 586
    shl-long v9, v16, v3

    .line 587
    and-long/2addr v9, v1

    .line 588
    .line 589
    cmp-long v9, v9, v18

    .line 590
    .line 591
    if-eqz v9, :cond_33

    .line 592
    .line 593
    if-ne v5, v4, :cond_32

    .line 594
    .line 595
    const/16 v3, 0x1a

    .line 596
    goto :goto_1c

    .line 597
    .line 598
    :cond_32
    add-int/lit8 v1, v5, 0x1

    .line 599
    .line 600
    aget-char v2, v7, v5

    .line 601
    move v5, v1

    .line 602
    move v3, v2

    .line 603
    goto :goto_1c

    .line 604
    .line 605
    :cond_33
    if-ne v3, v8, :cond_34

    .line 606
    const/4 v8, 0x1

    .line 607
    goto :goto_1d

    .line 608
    :cond_34
    const/4 v8, 0x0

    .line 609
    .line 610
    :goto_1d
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 611
    .line 612
    if-eqz v8, :cond_37

    .line 613
    .line 614
    if-ne v5, v4, :cond_35

    .line 615
    move v3, v5

    .line 616
    .line 617
    const/16 v5, 0x1a

    .line 618
    goto :goto_1e

    .line 619
    .line 620
    :cond_35
    add-int/lit8 v3, v5, 0x1

    .line 621
    .line 622
    aget-char v5, v7, v5

    .line 623
    .line 624
    :goto_1e
    move/from16 v34, v5

    .line 625
    move v5, v3

    .line 626
    .line 627
    move/from16 v3, v34

    .line 628
    .line 629
    :goto_1f
    if-gt v3, v6, :cond_37

    .line 630
    .line 631
    shl-long v8, v16, v3

    .line 632
    and-long/2addr v8, v1

    .line 633
    .line 634
    cmp-long v8, v8, v18

    .line 635
    .line 636
    if-eqz v8, :cond_37

    .line 637
    .line 638
    if-ne v5, v4, :cond_36

    .line 639
    .line 640
    const/16 v3, 0x1a

    .line 641
    goto :goto_1f

    .line 642
    .line 643
    :cond_36
    add-int/lit8 v3, v5, 0x1

    .line 644
    .line 645
    aget-char v5, v7, v5

    .line 646
    goto :goto_1e

    .line 647
    .line 648
    :cond_37
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 649
    int-to-char v1, v3

    .line 650
    .line 651
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 652
    .line 653
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 654
    return-wide v14
.end method

.method public readFieldName()Ljava/lang/String;
    .locals 32

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
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 66
    const/4 v5, 0x0

    .line 67
    .line 68
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 69
    .line 70
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 71
    .line 72
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 73
    .line 74
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 75
    const/4 v7, 0x0

    .line 76
    move v8, v5

    .line 77
    .line 78
    :goto_1
    const/16 v9, 0x20

    .line 79
    const/4 v10, 0x1

    .line 80
    .line 81
    if-ge v8, v6, :cond_d

    .line 82
    .line 83
    aget-char v11, v2, v8

    .line 84
    .line 85
    const/16 v12, 0x5c

    .line 86
    .line 87
    if-ne v11, v12, :cond_6

    .line 88
    .line 89
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 90
    .line 91
    add-int/lit8 v9, v8, 0x1

    .line 92
    .line 93
    aget-char v11, v2, v9

    .line 94
    .line 95
    const/16 v12, 0x75

    .line 96
    .line 97
    if-eq v11, v12, :cond_5

    .line 98
    .line 99
    const/16 v12, 0x78

    .line 100
    .line 101
    if-eq v11, v12, :cond_4

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_4
    add-int/lit8 v9, v8, 0x3

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_5
    add-int/lit8 v9, v8, 0x5

    .line 108
    :goto_2
    add-int/2addr v9, v10

    .line 109
    move v8, v9

    .line 110
    goto :goto_5

    .line 111
    .line 112
    :cond_6
    if-ne v11, v1, :cond_c

    .line 113
    .line 114
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 115
    .line 116
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 117
    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    if-ge v8, v6, :cond_7

    .line 121
    .line 122
    aget-char v1, v2, v8

    .line 123
    goto :goto_3

    .line 124
    .line 125
    :cond_7
    const/16 v1, 0x1a

    .line 126
    .line 127
    :goto_3
    if-gt v1, v9, :cond_8

    .line 128
    .line 129
    const-wide/16 v11, 0x1

    .line 130
    shl-long/2addr v11, v1

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    const-wide v13, 0x100003701L

    .line 136
    and-long/2addr v11, v13

    .line 137
    .line 138
    cmp-long v7, v11, v3

    .line 139
    .line 140
    if-eqz v7, :cond_8

    .line 141
    .line 142
    add-int/lit8 v8, v8, 0x1

    .line 143
    .line 144
    aget-char v1, v2, v8

    .line 145
    goto :goto_3

    .line 146
    .line 147
    :cond_8
    const/16 v7, 0x3a

    .line 148
    .line 149
    if-ne v1, v7, :cond_b

    .line 150
    add-int/2addr v8, v10

    .line 151
    .line 152
    if-ne v8, v6, :cond_9

    .line 153
    .line 154
    const/16 v1, 0x1a

    .line 155
    goto :goto_4

    .line 156
    .line 157
    :cond_9
    aget-char v1, v2, v8

    .line 158
    .line 159
    :goto_4
    if-gt v1, v9, :cond_a

    .line 160
    .line 161
    const-wide/16 v6, 0x1

    .line 162
    shl-long/2addr v6, v1

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    const-wide v11, 0x100003701L

    .line 168
    and-long/2addr v6, v11

    .line 169
    .line 170
    cmp-long v6, v6, v3

    .line 171
    .line 172
    if-eqz v6, :cond_a

    .line 173
    .line 174
    add-int/lit8 v8, v8, 0x1

    .line 175
    .line 176
    aget-char v1, v2, v8

    .line 177
    goto :goto_4

    .line 178
    .line 179
    :cond_a
    add-int/lit8 v3, v8, 0x1

    .line 180
    .line 181
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 182
    int-to-char v1, v1

    .line 183
    .line 184
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 185
    goto :goto_6

    .line 186
    .line 187
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    const-string v3, "syntax error : "

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 208
    throw v1

    .line 209
    .line 210
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 211
    .line 212
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_d
    :goto_6
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 217
    .line 218
    if-lt v1, v5, :cond_18

    .line 219
    .line 220
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 221
    .line 222
    if-nez v3, :cond_17

    .line 223
    .line 224
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 225
    .line 226
    .line 227
    packed-switch v3, :pswitch_data_0

    .line 228
    .line 229
    move/from16 v28, v1

    .line 230
    .line 231
    move-object/from16 v27, v2

    .line 232
    .line 233
    move/from16 v29, v5

    .line 234
    .line 235
    move/from16 v21, v9

    .line 236
    .line 237
    move/from16 v22, v10

    .line 238
    .line 239
    const-wide/16 v18, -0x1

    .line 240
    .line 241
    goto/16 :goto_b

    .line 242
    .line 243
    :pswitch_0
    aget-char v3, v2, v5

    .line 244
    .line 245
    add-int/lit8 v15, v5, 0x1

    .line 246
    .line 247
    aget-char v15, v2, v15

    .line 248
    .line 249
    add-int/lit8 v16, v5, 0x2

    .line 250
    .line 251
    const/16 v17, 0x38

    .line 252
    .line 253
    aget-char v4, v2, v16

    .line 254
    .line 255
    add-int/lit8 v16, v5, 0x3

    .line 256
    .line 257
    const-wide/16 v18, -0x1

    .line 258
    .line 259
    aget-char v6, v2, v16

    .line 260
    .line 261
    add-int/lit8 v7, v5, 0x4

    .line 262
    .line 263
    aget-char v7, v2, v7

    .line 264
    .line 265
    add-int/lit8 v16, v5, 0x5

    .line 266
    .line 267
    const/16 v20, 0x30

    .line 268
    .line 269
    aget-char v8, v2, v16

    .line 270
    .line 271
    add-int/lit8 v16, v5, 0x6

    .line 272
    .line 273
    move/from16 v21, v9

    .line 274
    .line 275
    aget-char v9, v2, v16

    .line 276
    .line 277
    add-int/lit8 v16, v5, 0x7

    .line 278
    .line 279
    move/from16 v22, v10

    .line 280
    .line 281
    aget-char v10, v2, v16

    .line 282
    .line 283
    add-int/lit8 v16, v5, 0x8

    .line 284
    .line 285
    const/16 v23, 0x28

    .line 286
    .line 287
    aget-char v11, v2, v16

    .line 288
    .line 289
    add-int/lit8 v16, v5, 0x9

    .line 290
    .line 291
    const/16 v24, 0x18

    .line 292
    .line 293
    aget-char v12, v2, v16

    .line 294
    .line 295
    add-int/lit8 v16, v5, 0xa

    .line 296
    .line 297
    const/16 v25, 0x10

    .line 298
    .line 299
    aget-char v13, v2, v16

    .line 300
    .line 301
    add-int/lit8 v16, v5, 0xb

    .line 302
    .line 303
    const/16 v26, 0x8

    .line 304
    .line 305
    aget-char v14, v2, v16

    .line 306
    .line 307
    add-int/lit8 v16, v5, 0xc

    .line 308
    .line 309
    move-object/from16 v27, v2

    .line 310
    .line 311
    aget-char v2, v27, v16

    .line 312
    .line 313
    add-int/lit8 v16, v5, 0xd

    .line 314
    .line 315
    move/from16 v28, v1

    .line 316
    .line 317
    aget-char v1, v27, v16

    .line 318
    .line 319
    add-int/lit8 v16, v5, 0xe

    .line 320
    .line 321
    move/from16 v29, v5

    .line 322
    .line 323
    aget-char v5, v27, v16

    .line 324
    .line 325
    add-int/lit8 v16, v29, 0xf

    .line 326
    .line 327
    aget-char v0, v27, v16

    .line 328
    .line 329
    move/from16 v16, v0

    .line 330
    .line 331
    and-int/lit16 v0, v3, 0xff

    .line 332
    .line 333
    if-ne v0, v3, :cond_e

    .line 334
    .line 335
    and-int/lit16 v0, v15, 0xff

    .line 336
    .line 337
    if-ne v0, v15, :cond_e

    .line 338
    .line 339
    and-int/lit16 v0, v4, 0xff

    .line 340
    .line 341
    if-ne v0, v4, :cond_e

    .line 342
    .line 343
    and-int/lit16 v0, v6, 0xff

    .line 344
    .line 345
    if-ne v0, v6, :cond_e

    .line 346
    .line 347
    and-int/lit16 v0, v7, 0xff

    .line 348
    .line 349
    if-ne v0, v7, :cond_e

    .line 350
    .line 351
    and-int/lit16 v0, v8, 0xff

    .line 352
    .line 353
    if-ne v0, v8, :cond_e

    .line 354
    .line 355
    and-int/lit16 v0, v9, 0xff

    .line 356
    .line 357
    if-ne v0, v9, :cond_e

    .line 358
    .line 359
    and-int/lit16 v0, v10, 0xff

    .line 360
    .line 361
    if-ne v0, v10, :cond_e

    .line 362
    .line 363
    and-int/lit16 v0, v11, 0xff

    .line 364
    .line 365
    if-ne v0, v11, :cond_e

    .line 366
    .line 367
    and-int/lit16 v0, v12, 0xff

    .line 368
    .line 369
    if-ne v0, v12, :cond_e

    .line 370
    .line 371
    and-int/lit16 v0, v13, 0xff

    .line 372
    .line 373
    if-ne v0, v13, :cond_e

    .line 374
    .line 375
    and-int/lit16 v0, v14, 0xff

    .line 376
    .line 377
    if-ne v0, v14, :cond_e

    .line 378
    .line 379
    and-int/lit16 v0, v2, 0xff

    .line 380
    .line 381
    if-ne v0, v2, :cond_e

    .line 382
    .line 383
    and-int/lit16 v0, v1, 0xff

    .line 384
    .line 385
    if-ne v0, v1, :cond_e

    .line 386
    .line 387
    and-int/lit16 v0, v5, 0xff

    .line 388
    .line 389
    if-ne v0, v5, :cond_e

    .line 390
    .line 391
    move/from16 v0, v16

    .line 392
    .line 393
    move/from16 v16, v11

    .line 394
    .line 395
    and-int/lit16 v11, v0, 0xff

    .line 396
    .line 397
    if-ne v11, v0, :cond_e

    .line 398
    int-to-long v10, v10

    .line 399
    .line 400
    shl-long v10, v10, v17

    .line 401
    .line 402
    move-wide/from16 v30, v10

    .line 403
    int-to-long v9, v9

    .line 404
    .line 405
    shl-long v9, v9, v20

    .line 406
    .line 407
    add-long v9, v30, v9

    .line 408
    .line 409
    move-wide/from16 v30, v9

    .line 410
    int-to-long v8, v8

    .line 411
    .line 412
    shl-long v8, v8, v23

    .line 413
    .line 414
    add-long v8, v30, v8

    .line 415
    int-to-long v10, v7

    .line 416
    .line 417
    shl-long v10, v10, v21

    .line 418
    add-long/2addr v8, v10

    .line 419
    int-to-long v6, v6

    .line 420
    .line 421
    shl-long v6, v6, v24

    .line 422
    add-long/2addr v8, v6

    .line 423
    int-to-long v6, v4

    .line 424
    .line 425
    shl-long v6, v6, v25

    .line 426
    add-long/2addr v8, v6

    .line 427
    int-to-long v6, v15

    .line 428
    .line 429
    shl-long v6, v6, v26

    .line 430
    add-long/2addr v8, v6

    .line 431
    int-to-long v3, v3

    .line 432
    add-long/2addr v8, v3

    .line 433
    int-to-long v3, v0

    .line 434
    .line 435
    shl-long v3, v3, v17

    .line 436
    int-to-long v5, v5

    .line 437
    .line 438
    shl-long v5, v5, v20

    .line 439
    add-long/2addr v3, v5

    .line 440
    int-to-long v0, v1

    .line 441
    .line 442
    shl-long v0, v0, v23

    .line 443
    add-long/2addr v3, v0

    .line 444
    int-to-long v0, v2

    .line 445
    .line 446
    shl-long v0, v0, v21

    .line 447
    add-long/2addr v3, v0

    .line 448
    int-to-long v0, v14

    .line 449
    .line 450
    shl-long v0, v0, v24

    .line 451
    add-long/2addr v3, v0

    .line 452
    int-to-long v0, v13

    .line 453
    .line 454
    shl-long v0, v0, v25

    .line 455
    add-long/2addr v3, v0

    .line 456
    int-to-long v0, v12

    .line 457
    .line 458
    shl-long v0, v0, v26

    .line 459
    add-long/2addr v3, v0

    .line 460
    .line 461
    move/from16 v0, v16

    .line 462
    int-to-long v0, v0

    .line 463
    add-long/2addr v3, v0

    .line 464
    move-wide v4, v3

    .line 465
    move-wide v2, v8

    .line 466
    .line 467
    goto/16 :goto_c

    .line 468
    .line 469
    :pswitch_1
    move/from16 v28, v1

    .line 470
    .line 471
    move-object/from16 v27, v2

    .line 472
    .line 473
    move/from16 v29, v5

    .line 474
    .line 475
    move/from16 v21, v9

    .line 476
    .line 477
    move/from16 v22, v10

    .line 478
    .line 479
    const/16 v17, 0x38

    .line 480
    .line 481
    const-wide/16 v18, -0x1

    .line 482
    .line 483
    const/16 v20, 0x30

    .line 484
    .line 485
    const/16 v23, 0x28

    .line 486
    .line 487
    const/16 v24, 0x18

    .line 488
    .line 489
    const/16 v25, 0x10

    .line 490
    .line 491
    const/16 v26, 0x8

    .line 492
    .line 493
    aget-char v0, v27, v29

    .line 494
    .line 495
    add-int/lit8 v5, v29, 0x1

    .line 496
    .line 497
    aget-char v1, v27, v5

    .line 498
    .line 499
    add-int/lit8 v5, v29, 0x2

    .line 500
    .line 501
    aget-char v2, v27, v5

    .line 502
    .line 503
    add-int/lit8 v5, v29, 0x3

    .line 504
    .line 505
    aget-char v3, v27, v5

    .line 506
    .line 507
    add-int/lit8 v5, v29, 0x4

    .line 508
    .line 509
    aget-char v4, v27, v5

    .line 510
    .line 511
    add-int/lit8 v5, v29, 0x5

    .line 512
    .line 513
    aget-char v5, v27, v5

    .line 514
    .line 515
    add-int/lit8 v6, v29, 0x6

    .line 516
    .line 517
    aget-char v6, v27, v6

    .line 518
    .line 519
    add-int/lit8 v7, v29, 0x7

    .line 520
    .line 521
    aget-char v7, v27, v7

    .line 522
    .line 523
    add-int/lit8 v8, v29, 0x8

    .line 524
    .line 525
    aget-char v8, v27, v8

    .line 526
    .line 527
    add-int/lit8 v9, v29, 0x9

    .line 528
    .line 529
    aget-char v9, v27, v9

    .line 530
    .line 531
    add-int/lit8 v10, v29, 0xa

    .line 532
    .line 533
    aget-char v10, v27, v10

    .line 534
    .line 535
    add-int/lit8 v11, v29, 0xb

    .line 536
    .line 537
    aget-char v11, v27, v11

    .line 538
    .line 539
    add-int/lit8 v12, v29, 0xc

    .line 540
    .line 541
    aget-char v12, v27, v12

    .line 542
    .line 543
    add-int/lit8 v13, v29, 0xd

    .line 544
    .line 545
    aget-char v13, v27, v13

    .line 546
    .line 547
    add-int/lit8 v14, v29, 0xe

    .line 548
    .line 549
    aget-char v14, v27, v14

    .line 550
    .line 551
    and-int/lit16 v15, v0, 0xff

    .line 552
    .line 553
    if-ne v15, v0, :cond_e

    .line 554
    .line 555
    and-int/lit16 v15, v1, 0xff

    .line 556
    .line 557
    if-ne v15, v1, :cond_e

    .line 558
    .line 559
    and-int/lit16 v15, v2, 0xff

    .line 560
    .line 561
    if-ne v15, v2, :cond_e

    .line 562
    .line 563
    and-int/lit16 v15, v3, 0xff

    .line 564
    .line 565
    if-ne v15, v3, :cond_e

    .line 566
    .line 567
    and-int/lit16 v15, v4, 0xff

    .line 568
    .line 569
    if-ne v15, v4, :cond_e

    .line 570
    .line 571
    and-int/lit16 v15, v5, 0xff

    .line 572
    .line 573
    if-ne v15, v5, :cond_e

    .line 574
    .line 575
    and-int/lit16 v15, v6, 0xff

    .line 576
    .line 577
    if-ne v15, v6, :cond_e

    .line 578
    .line 579
    and-int/lit16 v15, v7, 0xff

    .line 580
    .line 581
    if-ne v15, v7, :cond_e

    .line 582
    .line 583
    and-int/lit16 v15, v8, 0xff

    .line 584
    .line 585
    if-ne v15, v8, :cond_e

    .line 586
    .line 587
    and-int/lit16 v15, v9, 0xff

    .line 588
    .line 589
    if-ne v15, v9, :cond_e

    .line 590
    .line 591
    and-int/lit16 v15, v10, 0xff

    .line 592
    .line 593
    if-ne v15, v10, :cond_e

    .line 594
    .line 595
    and-int/lit16 v15, v11, 0xff

    .line 596
    .line 597
    if-ne v15, v11, :cond_e

    .line 598
    .line 599
    and-int/lit16 v15, v12, 0xff

    .line 600
    .line 601
    if-ne v15, v12, :cond_e

    .line 602
    .line 603
    and-int/lit16 v15, v13, 0xff

    .line 604
    .line 605
    if-ne v15, v13, :cond_e

    .line 606
    .line 607
    and-int/lit16 v15, v14, 0xff

    .line 608
    .line 609
    if-ne v15, v14, :cond_e

    .line 610
    move v15, v7

    .line 611
    int-to-long v6, v6

    .line 612
    .line 613
    shl-long v6, v6, v20

    .line 614
    .line 615
    move-wide/from16 v30, v6

    .line 616
    int-to-long v5, v5

    .line 617
    .line 618
    shl-long v5, v5, v23

    .line 619
    .line 620
    add-long v5, v30, v5

    .line 621
    .line 622
    move-wide/from16 v30, v5

    .line 623
    int-to-long v4, v4

    .line 624
    .line 625
    shl-long v4, v4, v21

    .line 626
    .line 627
    add-long v4, v30, v4

    .line 628
    int-to-long v6, v3

    .line 629
    .line 630
    shl-long v6, v6, v24

    .line 631
    add-long/2addr v4, v6

    .line 632
    int-to-long v2, v2

    .line 633
    .line 634
    shl-long v2, v2, v25

    .line 635
    add-long/2addr v4, v2

    .line 636
    int-to-long v1, v1

    .line 637
    .line 638
    shl-long v1, v1, v26

    .line 639
    add-long/2addr v4, v1

    .line 640
    int-to-long v0, v0

    .line 641
    add-long/2addr v0, v4

    .line 642
    int-to-long v2, v14

    .line 643
    .line 644
    shl-long v2, v2, v17

    .line 645
    int-to-long v4, v13

    .line 646
    .line 647
    shl-long v4, v4, v20

    .line 648
    add-long/2addr v2, v4

    .line 649
    int-to-long v4, v12

    .line 650
    .line 651
    shl-long v4, v4, v23

    .line 652
    add-long/2addr v2, v4

    .line 653
    int-to-long v4, v11

    .line 654
    .line 655
    shl-long v4, v4, v21

    .line 656
    add-long/2addr v2, v4

    .line 657
    int-to-long v4, v10

    .line 658
    .line 659
    shl-long v4, v4, v24

    .line 660
    add-long/2addr v2, v4

    .line 661
    int-to-long v4, v9

    .line 662
    .line 663
    shl-long v4, v4, v25

    .line 664
    add-long/2addr v2, v4

    .line 665
    int-to-long v4, v8

    .line 666
    .line 667
    shl-long v4, v4, v26

    .line 668
    add-long/2addr v2, v4

    .line 669
    int-to-long v4, v15

    .line 670
    :goto_7
    add-long/2addr v2, v4

    .line 671
    :goto_8
    move-wide v4, v2

    .line 672
    move-wide v2, v0

    .line 673
    .line 674
    goto/16 :goto_c

    .line 675
    .line 676
    :pswitch_2
    move/from16 v28, v1

    .line 677
    .line 678
    move-object/from16 v27, v2

    .line 679
    .line 680
    move/from16 v29, v5

    .line 681
    .line 682
    move/from16 v21, v9

    .line 683
    .line 684
    move/from16 v22, v10

    .line 685
    .line 686
    const/16 v17, 0x38

    .line 687
    .line 688
    const-wide/16 v18, -0x1

    .line 689
    .line 690
    const/16 v20, 0x30

    .line 691
    .line 692
    const/16 v23, 0x28

    .line 693
    .line 694
    const/16 v24, 0x18

    .line 695
    .line 696
    const/16 v25, 0x10

    .line 697
    .line 698
    const/16 v26, 0x8

    .line 699
    .line 700
    aget-char v0, v27, v29

    .line 701
    .line 702
    add-int/lit8 v5, v29, 0x1

    .line 703
    .line 704
    aget-char v1, v27, v5

    .line 705
    .line 706
    add-int/lit8 v5, v29, 0x2

    .line 707
    .line 708
    aget-char v2, v27, v5

    .line 709
    .line 710
    add-int/lit8 v5, v29, 0x3

    .line 711
    .line 712
    aget-char v3, v27, v5

    .line 713
    .line 714
    add-int/lit8 v5, v29, 0x4

    .line 715
    .line 716
    aget-char v4, v27, v5

    .line 717
    .line 718
    add-int/lit8 v5, v29, 0x5

    .line 719
    .line 720
    aget-char v5, v27, v5

    .line 721
    .line 722
    add-int/lit8 v6, v29, 0x6

    .line 723
    .line 724
    aget-char v6, v27, v6

    .line 725
    .line 726
    add-int/lit8 v7, v29, 0x7

    .line 727
    .line 728
    aget-char v7, v27, v7

    .line 729
    .line 730
    add-int/lit8 v8, v29, 0x8

    .line 731
    .line 732
    aget-char v8, v27, v8

    .line 733
    .line 734
    add-int/lit8 v9, v29, 0x9

    .line 735
    .line 736
    aget-char v9, v27, v9

    .line 737
    .line 738
    add-int/lit8 v10, v29, 0xa

    .line 739
    .line 740
    aget-char v10, v27, v10

    .line 741
    .line 742
    add-int/lit8 v11, v29, 0xb

    .line 743
    .line 744
    aget-char v11, v27, v11

    .line 745
    .line 746
    add-int/lit8 v12, v29, 0xc

    .line 747
    .line 748
    aget-char v12, v27, v12

    .line 749
    .line 750
    add-int/lit8 v13, v29, 0xd

    .line 751
    .line 752
    aget-char v13, v27, v13

    .line 753
    .line 754
    and-int/lit16 v14, v0, 0xff

    .line 755
    .line 756
    if-ne v14, v0, :cond_e

    .line 757
    .line 758
    and-int/lit16 v14, v1, 0xff

    .line 759
    .line 760
    if-ne v14, v1, :cond_e

    .line 761
    .line 762
    and-int/lit16 v14, v2, 0xff

    .line 763
    .line 764
    if-ne v14, v2, :cond_e

    .line 765
    .line 766
    and-int/lit16 v14, v3, 0xff

    .line 767
    .line 768
    if-ne v14, v3, :cond_e

    .line 769
    .line 770
    and-int/lit16 v14, v4, 0xff

    .line 771
    .line 772
    if-ne v14, v4, :cond_e

    .line 773
    .line 774
    and-int/lit16 v14, v5, 0xff

    .line 775
    .line 776
    if-ne v14, v5, :cond_e

    .line 777
    .line 778
    and-int/lit16 v14, v6, 0xff

    .line 779
    .line 780
    if-ne v14, v6, :cond_e

    .line 781
    .line 782
    and-int/lit16 v14, v7, 0xff

    .line 783
    .line 784
    if-ne v14, v7, :cond_e

    .line 785
    .line 786
    and-int/lit16 v14, v8, 0xff

    .line 787
    .line 788
    if-ne v14, v8, :cond_e

    .line 789
    .line 790
    and-int/lit16 v14, v9, 0xff

    .line 791
    .line 792
    if-ne v14, v9, :cond_e

    .line 793
    .line 794
    and-int/lit16 v14, v10, 0xff

    .line 795
    .line 796
    if-ne v14, v10, :cond_e

    .line 797
    .line 798
    and-int/lit16 v14, v11, 0xff

    .line 799
    .line 800
    if-ne v14, v11, :cond_e

    .line 801
    .line 802
    and-int/lit16 v14, v12, 0xff

    .line 803
    .line 804
    if-ne v14, v12, :cond_e

    .line 805
    .line 806
    and-int/lit16 v14, v13, 0xff

    .line 807
    .line 808
    if-ne v14, v13, :cond_e

    .line 809
    int-to-long v14, v5

    .line 810
    .line 811
    shl-long v14, v14, v23

    .line 812
    int-to-long v4, v4

    .line 813
    .line 814
    shl-long v4, v4, v21

    .line 815
    add-long/2addr v14, v4

    .line 816
    int-to-long v3, v3

    .line 817
    .line 818
    shl-long v3, v3, v24

    .line 819
    add-long/2addr v14, v3

    .line 820
    int-to-long v2, v2

    .line 821
    .line 822
    shl-long v2, v2, v25

    .line 823
    add-long/2addr v14, v2

    .line 824
    int-to-long v1, v1

    .line 825
    .line 826
    shl-long v1, v1, v26

    .line 827
    add-long/2addr v14, v1

    .line 828
    int-to-long v0, v0

    .line 829
    add-long/2addr v0, v14

    .line 830
    int-to-long v2, v13

    .line 831
    .line 832
    shl-long v2, v2, v17

    .line 833
    int-to-long v4, v12

    .line 834
    .line 835
    shl-long v4, v4, v20

    .line 836
    add-long/2addr v2, v4

    .line 837
    int-to-long v4, v11

    .line 838
    .line 839
    shl-long v4, v4, v23

    .line 840
    add-long/2addr v2, v4

    .line 841
    int-to-long v4, v10

    .line 842
    .line 843
    shl-long v4, v4, v21

    .line 844
    add-long/2addr v2, v4

    .line 845
    int-to-long v4, v9

    .line 846
    .line 847
    shl-long v4, v4, v24

    .line 848
    add-long/2addr v2, v4

    .line 849
    int-to-long v4, v8

    .line 850
    .line 851
    shl-long v4, v4, v25

    .line 852
    add-long/2addr v2, v4

    .line 853
    int-to-long v4, v7

    .line 854
    .line 855
    shl-long v4, v4, v26

    .line 856
    add-long/2addr v2, v4

    .line 857
    int-to-long v4, v6

    .line 858
    .line 859
    goto/16 :goto_7

    .line 860
    .line 861
    :pswitch_3
    move/from16 v28, v1

    .line 862
    .line 863
    move-object/from16 v27, v2

    .line 864
    .line 865
    move/from16 v29, v5

    .line 866
    .line 867
    move/from16 v21, v9

    .line 868
    .line 869
    move/from16 v22, v10

    .line 870
    .line 871
    const/16 v17, 0x38

    .line 872
    .line 873
    const-wide/16 v18, -0x1

    .line 874
    .line 875
    const/16 v20, 0x30

    .line 876
    .line 877
    const/16 v23, 0x28

    .line 878
    .line 879
    const/16 v24, 0x18

    .line 880
    .line 881
    const/16 v25, 0x10

    .line 882
    .line 883
    const/16 v26, 0x8

    .line 884
    .line 885
    aget-char v0, v27, v29

    .line 886
    .line 887
    add-int/lit8 v5, v29, 0x1

    .line 888
    .line 889
    aget-char v1, v27, v5

    .line 890
    .line 891
    add-int/lit8 v5, v29, 0x2

    .line 892
    .line 893
    aget-char v2, v27, v5

    .line 894
    .line 895
    add-int/lit8 v5, v29, 0x3

    .line 896
    .line 897
    aget-char v3, v27, v5

    .line 898
    .line 899
    add-int/lit8 v5, v29, 0x4

    .line 900
    .line 901
    aget-char v4, v27, v5

    .line 902
    .line 903
    add-int/lit8 v5, v29, 0x5

    .line 904
    .line 905
    aget-char v5, v27, v5

    .line 906
    .line 907
    add-int/lit8 v6, v29, 0x6

    .line 908
    .line 909
    aget-char v6, v27, v6

    .line 910
    .line 911
    add-int/lit8 v7, v29, 0x7

    .line 912
    .line 913
    aget-char v7, v27, v7

    .line 914
    .line 915
    add-int/lit8 v8, v29, 0x8

    .line 916
    .line 917
    aget-char v8, v27, v8

    .line 918
    .line 919
    add-int/lit8 v9, v29, 0x9

    .line 920
    .line 921
    aget-char v9, v27, v9

    .line 922
    .line 923
    add-int/lit8 v10, v29, 0xa

    .line 924
    .line 925
    aget-char v10, v27, v10

    .line 926
    .line 927
    add-int/lit8 v11, v29, 0xb

    .line 928
    .line 929
    aget-char v11, v27, v11

    .line 930
    .line 931
    add-int/lit8 v12, v29, 0xc

    .line 932
    .line 933
    aget-char v12, v27, v12

    .line 934
    .line 935
    and-int/lit16 v13, v0, 0xff

    .line 936
    .line 937
    if-ne v13, v0, :cond_e

    .line 938
    .line 939
    and-int/lit16 v13, v1, 0xff

    .line 940
    .line 941
    if-ne v13, v1, :cond_e

    .line 942
    .line 943
    and-int/lit16 v13, v2, 0xff

    .line 944
    .line 945
    if-ne v13, v2, :cond_e

    .line 946
    .line 947
    and-int/lit16 v13, v3, 0xff

    .line 948
    .line 949
    if-ne v13, v3, :cond_e

    .line 950
    .line 951
    and-int/lit16 v13, v4, 0xff

    .line 952
    .line 953
    if-ne v13, v4, :cond_e

    .line 954
    .line 955
    and-int/lit16 v13, v5, 0xff

    .line 956
    .line 957
    if-ne v13, v5, :cond_e

    .line 958
    .line 959
    and-int/lit16 v13, v6, 0xff

    .line 960
    .line 961
    if-ne v13, v6, :cond_e

    .line 962
    .line 963
    and-int/lit16 v13, v7, 0xff

    .line 964
    .line 965
    if-ne v13, v7, :cond_e

    .line 966
    .line 967
    and-int/lit16 v13, v8, 0xff

    .line 968
    .line 969
    if-ne v13, v8, :cond_e

    .line 970
    .line 971
    and-int/lit16 v13, v9, 0xff

    .line 972
    .line 973
    if-ne v13, v9, :cond_e

    .line 974
    .line 975
    and-int/lit16 v13, v10, 0xff

    .line 976
    .line 977
    if-ne v13, v10, :cond_e

    .line 978
    .line 979
    and-int/lit16 v13, v11, 0xff

    .line 980
    .line 981
    if-ne v13, v11, :cond_e

    .line 982
    .line 983
    and-int/lit16 v13, v12, 0xff

    .line 984
    .line 985
    if-ne v13, v12, :cond_e

    .line 986
    int-to-long v13, v4

    .line 987
    .line 988
    shl-long v13, v13, v21

    .line 989
    int-to-long v3, v3

    .line 990
    .line 991
    shl-long v3, v3, v24

    .line 992
    add-long/2addr v13, v3

    .line 993
    int-to-long v2, v2

    .line 994
    .line 995
    shl-long v2, v2, v25

    .line 996
    add-long/2addr v13, v2

    .line 997
    int-to-long v1, v1

    .line 998
    .line 999
    shl-long v1, v1, v26

    .line 1000
    add-long/2addr v13, v1

    .line 1001
    int-to-long v0, v0

    .line 1002
    add-long/2addr v0, v13

    .line 1003
    int-to-long v2, v12

    .line 1004
    .line 1005
    shl-long v2, v2, v17

    .line 1006
    int-to-long v11, v11

    .line 1007
    .line 1008
    shl-long v11, v11, v20

    .line 1009
    add-long/2addr v2, v11

    .line 1010
    int-to-long v10, v10

    .line 1011
    .line 1012
    shl-long v10, v10, v23

    .line 1013
    add-long/2addr v2, v10

    .line 1014
    int-to-long v9, v9

    .line 1015
    .line 1016
    shl-long v9, v9, v21

    .line 1017
    add-long/2addr v2, v9

    .line 1018
    int-to-long v8, v8

    .line 1019
    .line 1020
    shl-long v8, v8, v24

    .line 1021
    add-long/2addr v2, v8

    .line 1022
    int-to-long v7, v7

    .line 1023
    .line 1024
    shl-long v7, v7, v25

    .line 1025
    add-long/2addr v2, v7

    .line 1026
    int-to-long v6, v6

    .line 1027
    .line 1028
    shl-long v6, v6, v26

    .line 1029
    add-long/2addr v2, v6

    .line 1030
    int-to-long v4, v5

    .line 1031
    .line 1032
    goto/16 :goto_7

    .line 1033
    .line 1034
    :pswitch_4
    move/from16 v28, v1

    .line 1035
    .line 1036
    move-object/from16 v27, v2

    .line 1037
    .line 1038
    move/from16 v29, v5

    .line 1039
    .line 1040
    move/from16 v21, v9

    .line 1041
    .line 1042
    move/from16 v22, v10

    .line 1043
    .line 1044
    const/16 v17, 0x38

    .line 1045
    .line 1046
    const-wide/16 v18, -0x1

    .line 1047
    .line 1048
    const/16 v20, 0x30

    .line 1049
    .line 1050
    const/16 v23, 0x28

    .line 1051
    .line 1052
    const/16 v24, 0x18

    .line 1053
    .line 1054
    const/16 v25, 0x10

    .line 1055
    .line 1056
    const/16 v26, 0x8

    .line 1057
    .line 1058
    aget-char v0, v27, v29

    .line 1059
    .line 1060
    add-int/lit8 v5, v29, 0x1

    .line 1061
    .line 1062
    aget-char v1, v27, v5

    .line 1063
    .line 1064
    add-int/lit8 v5, v29, 0x2

    .line 1065
    .line 1066
    aget-char v2, v27, v5

    .line 1067
    .line 1068
    add-int/lit8 v5, v29, 0x3

    .line 1069
    .line 1070
    aget-char v3, v27, v5

    .line 1071
    .line 1072
    add-int/lit8 v5, v29, 0x4

    .line 1073
    .line 1074
    aget-char v4, v27, v5

    .line 1075
    .line 1076
    add-int/lit8 v5, v29, 0x5

    .line 1077
    .line 1078
    aget-char v5, v27, v5

    .line 1079
    .line 1080
    add-int/lit8 v6, v29, 0x6

    .line 1081
    .line 1082
    aget-char v6, v27, v6

    .line 1083
    .line 1084
    add-int/lit8 v7, v29, 0x7

    .line 1085
    .line 1086
    aget-char v7, v27, v7

    .line 1087
    .line 1088
    add-int/lit8 v8, v29, 0x8

    .line 1089
    .line 1090
    aget-char v8, v27, v8

    .line 1091
    .line 1092
    add-int/lit8 v9, v29, 0x9

    .line 1093
    .line 1094
    aget-char v9, v27, v9

    .line 1095
    .line 1096
    add-int/lit8 v10, v29, 0xa

    .line 1097
    .line 1098
    aget-char v10, v27, v10

    .line 1099
    .line 1100
    add-int/lit8 v11, v29, 0xb

    .line 1101
    .line 1102
    aget-char v11, v27, v11

    .line 1103
    .line 1104
    and-int/lit16 v12, v0, 0xff

    .line 1105
    .line 1106
    if-ne v12, v0, :cond_e

    .line 1107
    .line 1108
    and-int/lit16 v12, v1, 0xff

    .line 1109
    .line 1110
    if-ne v12, v1, :cond_e

    .line 1111
    .line 1112
    and-int/lit16 v12, v2, 0xff

    .line 1113
    .line 1114
    if-ne v12, v2, :cond_e

    .line 1115
    .line 1116
    and-int/lit16 v12, v3, 0xff

    .line 1117
    .line 1118
    if-ne v12, v3, :cond_e

    .line 1119
    .line 1120
    and-int/lit16 v12, v4, 0xff

    .line 1121
    .line 1122
    if-ne v12, v4, :cond_e

    .line 1123
    .line 1124
    and-int/lit16 v12, v5, 0xff

    .line 1125
    .line 1126
    if-ne v12, v5, :cond_e

    .line 1127
    .line 1128
    and-int/lit16 v12, v6, 0xff

    .line 1129
    .line 1130
    if-ne v12, v6, :cond_e

    .line 1131
    .line 1132
    and-int/lit16 v12, v7, 0xff

    .line 1133
    .line 1134
    if-ne v12, v7, :cond_e

    .line 1135
    .line 1136
    and-int/lit16 v12, v8, 0xff

    .line 1137
    .line 1138
    if-ne v12, v8, :cond_e

    .line 1139
    .line 1140
    and-int/lit16 v12, v9, 0xff

    .line 1141
    .line 1142
    if-ne v12, v9, :cond_e

    .line 1143
    .line 1144
    and-int/lit16 v12, v10, 0xff

    .line 1145
    .line 1146
    if-ne v12, v10, :cond_e

    .line 1147
    .line 1148
    and-int/lit16 v12, v11, 0xff

    .line 1149
    .line 1150
    if-ne v12, v11, :cond_e

    .line 1151
    .line 1152
    shl-int/lit8 v3, v3, 0x18

    .line 1153
    .line 1154
    shl-int/lit8 v2, v2, 0x10

    .line 1155
    add-int/2addr v3, v2

    .line 1156
    .line 1157
    shl-int/lit8 v1, v1, 0x8

    .line 1158
    add-int/2addr v3, v1

    .line 1159
    add-int/2addr v3, v0

    .line 1160
    int-to-long v0, v3

    .line 1161
    int-to-long v2, v11

    .line 1162
    .line 1163
    shl-long v2, v2, v17

    .line 1164
    int-to-long v10, v10

    .line 1165
    .line 1166
    shl-long v10, v10, v20

    .line 1167
    add-long/2addr v2, v10

    .line 1168
    int-to-long v9, v9

    .line 1169
    .line 1170
    shl-long v9, v9, v23

    .line 1171
    add-long/2addr v2, v9

    .line 1172
    int-to-long v8, v8

    .line 1173
    .line 1174
    shl-long v8, v8, v21

    .line 1175
    add-long/2addr v2, v8

    .line 1176
    int-to-long v7, v7

    .line 1177
    .line 1178
    shl-long v7, v7, v24

    .line 1179
    add-long/2addr v2, v7

    .line 1180
    int-to-long v6, v6

    .line 1181
    .line 1182
    shl-long v6, v6, v25

    .line 1183
    add-long/2addr v2, v6

    .line 1184
    int-to-long v5, v5

    .line 1185
    .line 1186
    shl-long v5, v5, v26

    .line 1187
    add-long/2addr v2, v5

    .line 1188
    int-to-long v4, v4

    .line 1189
    .line 1190
    goto/16 :goto_7

    .line 1191
    .line 1192
    :pswitch_5
    move/from16 v28, v1

    .line 1193
    .line 1194
    move-object/from16 v27, v2

    .line 1195
    .line 1196
    move/from16 v29, v5

    .line 1197
    .line 1198
    move/from16 v21, v9

    .line 1199
    .line 1200
    move/from16 v22, v10

    .line 1201
    .line 1202
    const/16 v17, 0x38

    .line 1203
    .line 1204
    const-wide/16 v18, -0x1

    .line 1205
    .line 1206
    const/16 v20, 0x30

    .line 1207
    .line 1208
    const/16 v23, 0x28

    .line 1209
    .line 1210
    const/16 v24, 0x18

    .line 1211
    .line 1212
    const/16 v25, 0x10

    .line 1213
    .line 1214
    const/16 v26, 0x8

    .line 1215
    .line 1216
    aget-char v0, v27, v29

    .line 1217
    .line 1218
    add-int/lit8 v5, v29, 0x1

    .line 1219
    .line 1220
    aget-char v1, v27, v5

    .line 1221
    .line 1222
    add-int/lit8 v5, v29, 0x2

    .line 1223
    .line 1224
    aget-char v2, v27, v5

    .line 1225
    .line 1226
    add-int/lit8 v5, v29, 0x3

    .line 1227
    .line 1228
    aget-char v3, v27, v5

    .line 1229
    .line 1230
    add-int/lit8 v5, v29, 0x4

    .line 1231
    .line 1232
    aget-char v4, v27, v5

    .line 1233
    .line 1234
    add-int/lit8 v5, v29, 0x5

    .line 1235
    .line 1236
    aget-char v5, v27, v5

    .line 1237
    .line 1238
    add-int/lit8 v6, v29, 0x6

    .line 1239
    .line 1240
    aget-char v6, v27, v6

    .line 1241
    .line 1242
    add-int/lit8 v7, v29, 0x7

    .line 1243
    .line 1244
    aget-char v7, v27, v7

    .line 1245
    .line 1246
    add-int/lit8 v8, v29, 0x8

    .line 1247
    .line 1248
    aget-char v8, v27, v8

    .line 1249
    .line 1250
    add-int/lit8 v9, v29, 0x9

    .line 1251
    .line 1252
    aget-char v9, v27, v9

    .line 1253
    .line 1254
    add-int/lit8 v10, v29, 0xa

    .line 1255
    .line 1256
    aget-char v10, v27, v10

    .line 1257
    .line 1258
    and-int/lit16 v11, v0, 0xff

    .line 1259
    .line 1260
    if-ne v11, v0, :cond_e

    .line 1261
    .line 1262
    and-int/lit16 v11, v1, 0xff

    .line 1263
    .line 1264
    if-ne v11, v1, :cond_e

    .line 1265
    .line 1266
    and-int/lit16 v11, v2, 0xff

    .line 1267
    .line 1268
    if-ne v11, v2, :cond_e

    .line 1269
    .line 1270
    and-int/lit16 v11, v3, 0xff

    .line 1271
    .line 1272
    if-ne v11, v3, :cond_e

    .line 1273
    .line 1274
    and-int/lit16 v11, v4, 0xff

    .line 1275
    .line 1276
    if-ne v11, v4, :cond_e

    .line 1277
    .line 1278
    and-int/lit16 v11, v5, 0xff

    .line 1279
    .line 1280
    if-ne v11, v5, :cond_e

    .line 1281
    .line 1282
    and-int/lit16 v11, v6, 0xff

    .line 1283
    .line 1284
    if-ne v11, v6, :cond_e

    .line 1285
    .line 1286
    and-int/lit16 v11, v7, 0xff

    .line 1287
    .line 1288
    if-ne v11, v7, :cond_e

    .line 1289
    .line 1290
    and-int/lit16 v11, v8, 0xff

    .line 1291
    .line 1292
    if-ne v11, v8, :cond_e

    .line 1293
    .line 1294
    and-int/lit16 v11, v9, 0xff

    .line 1295
    .line 1296
    if-ne v11, v9, :cond_e

    .line 1297
    .line 1298
    and-int/lit16 v11, v10, 0xff

    .line 1299
    .line 1300
    if-ne v11, v10, :cond_e

    .line 1301
    .line 1302
    shl-int/lit8 v2, v2, 0x10

    .line 1303
    .line 1304
    shl-int/lit8 v1, v1, 0x8

    .line 1305
    add-int/2addr v2, v1

    .line 1306
    add-int/2addr v2, v0

    .line 1307
    int-to-long v0, v2

    .line 1308
    int-to-long v10, v10

    .line 1309
    .line 1310
    shl-long v10, v10, v17

    .line 1311
    int-to-long v12, v9

    .line 1312
    .line 1313
    shl-long v12, v12, v20

    .line 1314
    add-long/2addr v10, v12

    .line 1315
    int-to-long v8, v8

    .line 1316
    .line 1317
    shl-long v8, v8, v23

    .line 1318
    add-long/2addr v10, v8

    .line 1319
    int-to-long v7, v7

    .line 1320
    .line 1321
    shl-long v7, v7, v21

    .line 1322
    add-long/2addr v10, v7

    .line 1323
    int-to-long v6, v6

    .line 1324
    .line 1325
    shl-long v6, v6, v24

    .line 1326
    add-long/2addr v10, v6

    .line 1327
    int-to-long v5, v5

    .line 1328
    .line 1329
    shl-long v5, v5, v25

    .line 1330
    add-long/2addr v10, v5

    .line 1331
    int-to-long v4, v4

    .line 1332
    .line 1333
    shl-long v4, v4, v26

    .line 1334
    add-long/2addr v10, v4

    .line 1335
    int-to-long v2, v3

    .line 1336
    add-long/2addr v2, v10

    .line 1337
    .line 1338
    goto/16 :goto_8

    .line 1339
    .line 1340
    :pswitch_6
    move/from16 v28, v1

    .line 1341
    .line 1342
    move-object/from16 v27, v2

    .line 1343
    .line 1344
    move/from16 v29, v5

    .line 1345
    .line 1346
    move/from16 v21, v9

    .line 1347
    .line 1348
    move/from16 v22, v10

    .line 1349
    .line 1350
    const/16 v17, 0x38

    .line 1351
    .line 1352
    const-wide/16 v18, -0x1

    .line 1353
    .line 1354
    const/16 v20, 0x30

    .line 1355
    .line 1356
    const/16 v23, 0x28

    .line 1357
    .line 1358
    const/16 v24, 0x18

    .line 1359
    .line 1360
    const/16 v25, 0x10

    .line 1361
    .line 1362
    const/16 v26, 0x8

    .line 1363
    .line 1364
    aget-char v0, v27, v29

    .line 1365
    .line 1366
    add-int/lit8 v5, v29, 0x1

    .line 1367
    .line 1368
    aget-char v1, v27, v5

    .line 1369
    .line 1370
    add-int/lit8 v5, v29, 0x2

    .line 1371
    .line 1372
    aget-char v2, v27, v5

    .line 1373
    .line 1374
    add-int/lit8 v5, v29, 0x3

    .line 1375
    .line 1376
    aget-char v3, v27, v5

    .line 1377
    .line 1378
    add-int/lit8 v5, v29, 0x4

    .line 1379
    .line 1380
    aget-char v4, v27, v5

    .line 1381
    .line 1382
    add-int/lit8 v5, v29, 0x5

    .line 1383
    .line 1384
    aget-char v5, v27, v5

    .line 1385
    .line 1386
    add-int/lit8 v6, v29, 0x6

    .line 1387
    .line 1388
    aget-char v6, v27, v6

    .line 1389
    .line 1390
    add-int/lit8 v7, v29, 0x7

    .line 1391
    .line 1392
    aget-char v7, v27, v7

    .line 1393
    .line 1394
    add-int/lit8 v8, v29, 0x8

    .line 1395
    .line 1396
    aget-char v8, v27, v8

    .line 1397
    .line 1398
    add-int/lit8 v9, v29, 0x9

    .line 1399
    .line 1400
    aget-char v9, v27, v9

    .line 1401
    .line 1402
    and-int/lit16 v10, v0, 0xff

    .line 1403
    .line 1404
    if-ne v10, v0, :cond_e

    .line 1405
    .line 1406
    and-int/lit16 v10, v1, 0xff

    .line 1407
    .line 1408
    if-ne v10, v1, :cond_e

    .line 1409
    .line 1410
    and-int/lit16 v10, v2, 0xff

    .line 1411
    .line 1412
    if-ne v10, v2, :cond_e

    .line 1413
    .line 1414
    and-int/lit16 v10, v3, 0xff

    .line 1415
    .line 1416
    if-ne v10, v3, :cond_e

    .line 1417
    .line 1418
    and-int/lit16 v10, v4, 0xff

    .line 1419
    .line 1420
    if-ne v10, v4, :cond_e

    .line 1421
    .line 1422
    and-int/lit16 v10, v5, 0xff

    .line 1423
    .line 1424
    if-ne v10, v5, :cond_e

    .line 1425
    .line 1426
    and-int/lit16 v10, v6, 0xff

    .line 1427
    .line 1428
    if-ne v10, v6, :cond_e

    .line 1429
    .line 1430
    and-int/lit16 v10, v7, 0xff

    .line 1431
    .line 1432
    if-ne v10, v7, :cond_e

    .line 1433
    .line 1434
    and-int/lit16 v10, v8, 0xff

    .line 1435
    .line 1436
    if-ne v10, v8, :cond_e

    .line 1437
    .line 1438
    and-int/lit16 v10, v9, 0xff

    .line 1439
    .line 1440
    if-ne v10, v9, :cond_e

    .line 1441
    .line 1442
    shl-int/lit8 v1, v1, 0x8

    .line 1443
    add-int/2addr v1, v0

    .line 1444
    int-to-long v0, v1

    .line 1445
    int-to-long v9, v9

    .line 1446
    .line 1447
    shl-long v9, v9, v17

    .line 1448
    int-to-long v11, v8

    .line 1449
    .line 1450
    shl-long v11, v11, v20

    .line 1451
    add-long/2addr v9, v11

    .line 1452
    int-to-long v7, v7

    .line 1453
    .line 1454
    shl-long v7, v7, v23

    .line 1455
    add-long/2addr v9, v7

    .line 1456
    int-to-long v6, v6

    .line 1457
    .line 1458
    shl-long v6, v6, v21

    .line 1459
    add-long/2addr v9, v6

    .line 1460
    int-to-long v5, v5

    .line 1461
    .line 1462
    shl-long v5, v5, v24

    .line 1463
    add-long/2addr v9, v5

    .line 1464
    int-to-long v4, v4

    .line 1465
    .line 1466
    shl-long v4, v4, v25

    .line 1467
    add-long/2addr v9, v4

    .line 1468
    int-to-long v3, v3

    .line 1469
    .line 1470
    shl-long v3, v3, v26

    .line 1471
    add-long/2addr v9, v3

    .line 1472
    int-to-long v2, v2

    .line 1473
    add-long/2addr v2, v9

    .line 1474
    .line 1475
    goto/16 :goto_8

    .line 1476
    .line 1477
    :pswitch_7
    move/from16 v28, v1

    .line 1478
    .line 1479
    move-object/from16 v27, v2

    .line 1480
    .line 1481
    move/from16 v29, v5

    .line 1482
    .line 1483
    move/from16 v21, v9

    .line 1484
    .line 1485
    move/from16 v22, v10

    .line 1486
    .line 1487
    const/16 v17, 0x38

    .line 1488
    .line 1489
    const-wide/16 v18, -0x1

    .line 1490
    .line 1491
    const/16 v20, 0x30

    .line 1492
    .line 1493
    const/16 v23, 0x28

    .line 1494
    .line 1495
    const/16 v24, 0x18

    .line 1496
    .line 1497
    const/16 v25, 0x10

    .line 1498
    .line 1499
    const/16 v26, 0x8

    .line 1500
    .line 1501
    aget-char v0, v27, v29

    .line 1502
    .line 1503
    add-int/lit8 v5, v29, 0x1

    .line 1504
    .line 1505
    aget-char v1, v27, v5

    .line 1506
    .line 1507
    add-int/lit8 v5, v29, 0x2

    .line 1508
    .line 1509
    aget-char v2, v27, v5

    .line 1510
    .line 1511
    add-int/lit8 v5, v29, 0x3

    .line 1512
    .line 1513
    aget-char v3, v27, v5

    .line 1514
    .line 1515
    add-int/lit8 v5, v29, 0x4

    .line 1516
    .line 1517
    aget-char v4, v27, v5

    .line 1518
    .line 1519
    add-int/lit8 v5, v29, 0x5

    .line 1520
    .line 1521
    aget-char v5, v27, v5

    .line 1522
    .line 1523
    add-int/lit8 v6, v29, 0x6

    .line 1524
    .line 1525
    aget-char v6, v27, v6

    .line 1526
    .line 1527
    add-int/lit8 v7, v29, 0x7

    .line 1528
    .line 1529
    aget-char v7, v27, v7

    .line 1530
    .line 1531
    add-int/lit8 v8, v29, 0x8

    .line 1532
    .line 1533
    aget-char v8, v27, v8

    .line 1534
    .line 1535
    and-int/lit16 v9, v0, 0xff

    .line 1536
    .line 1537
    if-ne v9, v0, :cond_e

    .line 1538
    .line 1539
    and-int/lit16 v9, v1, 0xff

    .line 1540
    .line 1541
    if-ne v9, v1, :cond_e

    .line 1542
    .line 1543
    and-int/lit16 v9, v2, 0xff

    .line 1544
    .line 1545
    if-ne v9, v2, :cond_e

    .line 1546
    .line 1547
    and-int/lit16 v9, v3, 0xff

    .line 1548
    .line 1549
    if-ne v9, v3, :cond_e

    .line 1550
    .line 1551
    and-int/lit16 v9, v4, 0xff

    .line 1552
    .line 1553
    if-ne v9, v4, :cond_e

    .line 1554
    .line 1555
    and-int/lit16 v9, v5, 0xff

    .line 1556
    .line 1557
    if-ne v9, v5, :cond_e

    .line 1558
    .line 1559
    and-int/lit16 v9, v6, 0xff

    .line 1560
    .line 1561
    if-ne v9, v6, :cond_e

    .line 1562
    .line 1563
    and-int/lit16 v9, v7, 0xff

    .line 1564
    .line 1565
    if-ne v9, v7, :cond_e

    .line 1566
    .line 1567
    and-int/lit16 v9, v8, 0xff

    .line 1568
    .line 1569
    if-ne v9, v8, :cond_e

    .line 1570
    int-to-long v9, v0

    .line 1571
    int-to-long v11, v8

    .line 1572
    .line 1573
    shl-long v11, v11, v17

    .line 1574
    int-to-long v7, v7

    .line 1575
    .line 1576
    shl-long v7, v7, v20

    .line 1577
    add-long/2addr v11, v7

    .line 1578
    int-to-long v6, v6

    .line 1579
    .line 1580
    shl-long v6, v6, v23

    .line 1581
    add-long/2addr v11, v6

    .line 1582
    int-to-long v5, v5

    .line 1583
    .line 1584
    shl-long v5, v5, v21

    .line 1585
    add-long/2addr v11, v5

    .line 1586
    int-to-long v4, v4

    .line 1587
    .line 1588
    shl-long v4, v4, v24

    .line 1589
    add-long/2addr v11, v4

    .line 1590
    int-to-long v3, v3

    .line 1591
    .line 1592
    shl-long v3, v3, v25

    .line 1593
    add-long/2addr v11, v3

    .line 1594
    int-to-long v2, v2

    .line 1595
    .line 1596
    shl-long v2, v2, v26

    .line 1597
    add-long/2addr v11, v2

    .line 1598
    int-to-long v0, v1

    .line 1599
    .line 1600
    add-long v3, v11, v0

    .line 1601
    move-wide v4, v3

    .line 1602
    move-wide v2, v9

    .line 1603
    .line 1604
    goto/16 :goto_c

    .line 1605
    .line 1606
    :pswitch_8
    move/from16 v28, v1

    .line 1607
    .line 1608
    move-object/from16 v27, v2

    .line 1609
    .line 1610
    move/from16 v29, v5

    .line 1611
    .line 1612
    move/from16 v21, v9

    .line 1613
    .line 1614
    move/from16 v22, v10

    .line 1615
    .line 1616
    const/16 v17, 0x38

    .line 1617
    .line 1618
    const-wide/16 v18, -0x1

    .line 1619
    .line 1620
    const/16 v20, 0x30

    .line 1621
    .line 1622
    const/16 v23, 0x28

    .line 1623
    .line 1624
    const/16 v24, 0x18

    .line 1625
    .line 1626
    const/16 v25, 0x10

    .line 1627
    .line 1628
    const/16 v26, 0x8

    .line 1629
    .line 1630
    aget-char v0, v27, v29

    .line 1631
    .line 1632
    add-int/lit8 v5, v29, 0x1

    .line 1633
    .line 1634
    aget-char v1, v27, v5

    .line 1635
    .line 1636
    add-int/lit8 v5, v29, 0x2

    .line 1637
    .line 1638
    aget-char v2, v27, v5

    .line 1639
    .line 1640
    add-int/lit8 v5, v29, 0x3

    .line 1641
    .line 1642
    aget-char v3, v27, v5

    .line 1643
    .line 1644
    add-int/lit8 v5, v29, 0x4

    .line 1645
    .line 1646
    aget-char v4, v27, v5

    .line 1647
    .line 1648
    add-int/lit8 v5, v29, 0x5

    .line 1649
    .line 1650
    aget-char v5, v27, v5

    .line 1651
    .line 1652
    add-int/lit8 v6, v29, 0x6

    .line 1653
    .line 1654
    aget-char v6, v27, v6

    .line 1655
    .line 1656
    add-int/lit8 v7, v29, 0x7

    .line 1657
    .line 1658
    aget-char v7, v27, v7

    .line 1659
    .line 1660
    and-int/lit16 v8, v0, 0xff

    .line 1661
    .line 1662
    if-ne v8, v0, :cond_e

    .line 1663
    .line 1664
    and-int/lit16 v8, v1, 0xff

    .line 1665
    .line 1666
    if-ne v8, v1, :cond_e

    .line 1667
    .line 1668
    and-int/lit16 v8, v2, 0xff

    .line 1669
    .line 1670
    if-ne v8, v2, :cond_e

    .line 1671
    .line 1672
    and-int/lit16 v8, v3, 0xff

    .line 1673
    .line 1674
    if-ne v8, v3, :cond_e

    .line 1675
    .line 1676
    and-int/lit16 v8, v4, 0xff

    .line 1677
    .line 1678
    if-ne v8, v4, :cond_e

    .line 1679
    .line 1680
    and-int/lit16 v8, v5, 0xff

    .line 1681
    .line 1682
    if-ne v8, v5, :cond_e

    .line 1683
    .line 1684
    and-int/lit16 v8, v6, 0xff

    .line 1685
    .line 1686
    if-ne v8, v6, :cond_e

    .line 1687
    .line 1688
    and-int/lit16 v8, v7, 0xff

    .line 1689
    .line 1690
    if-ne v8, v7, :cond_e

    .line 1691
    int-to-long v7, v7

    .line 1692
    .line 1693
    shl-long v7, v7, v17

    .line 1694
    int-to-long v9, v6

    .line 1695
    .line 1696
    shl-long v9, v9, v20

    .line 1697
    add-long/2addr v7, v9

    .line 1698
    int-to-long v5, v5

    .line 1699
    .line 1700
    shl-long v5, v5, v23

    .line 1701
    add-long/2addr v7, v5

    .line 1702
    int-to-long v4, v4

    .line 1703
    .line 1704
    shl-long v4, v4, v21

    .line 1705
    add-long/2addr v7, v4

    .line 1706
    int-to-long v3, v3

    .line 1707
    .line 1708
    shl-long v3, v3, v24

    .line 1709
    add-long/2addr v7, v3

    .line 1710
    int-to-long v2, v2

    .line 1711
    .line 1712
    shl-long v2, v2, v25

    .line 1713
    add-long/2addr v7, v2

    .line 1714
    int-to-long v1, v1

    .line 1715
    .line 1716
    shl-long v1, v1, v26

    .line 1717
    add-long/2addr v7, v1

    .line 1718
    int-to-long v0, v0

    .line 1719
    add-long/2addr v0, v7

    .line 1720
    move-wide v2, v0

    .line 1721
    .line 1722
    :goto_9
    move-wide/from16 v4, v18

    .line 1723
    .line 1724
    goto/16 :goto_c

    .line 1725
    .line 1726
    :pswitch_9
    move/from16 v28, v1

    .line 1727
    .line 1728
    move-object/from16 v27, v2

    .line 1729
    .line 1730
    move/from16 v29, v5

    .line 1731
    .line 1732
    move/from16 v21, v9

    .line 1733
    .line 1734
    move/from16 v22, v10

    .line 1735
    .line 1736
    const-wide/16 v18, -0x1

    .line 1737
    .line 1738
    const/16 v20, 0x30

    .line 1739
    .line 1740
    const/16 v23, 0x28

    .line 1741
    .line 1742
    const/16 v24, 0x18

    .line 1743
    .line 1744
    const/16 v25, 0x10

    .line 1745
    .line 1746
    const/16 v26, 0x8

    .line 1747
    .line 1748
    aget-char v0, v27, v29

    .line 1749
    .line 1750
    add-int/lit8 v5, v29, 0x1

    .line 1751
    .line 1752
    aget-char v1, v27, v5

    .line 1753
    .line 1754
    add-int/lit8 v5, v29, 0x2

    .line 1755
    .line 1756
    aget-char v2, v27, v5

    .line 1757
    .line 1758
    add-int/lit8 v5, v29, 0x3

    .line 1759
    .line 1760
    aget-char v3, v27, v5

    .line 1761
    .line 1762
    add-int/lit8 v5, v29, 0x4

    .line 1763
    .line 1764
    aget-char v4, v27, v5

    .line 1765
    .line 1766
    add-int/lit8 v5, v29, 0x5

    .line 1767
    .line 1768
    aget-char v5, v27, v5

    .line 1769
    .line 1770
    add-int/lit8 v6, v29, 0x6

    .line 1771
    .line 1772
    aget-char v6, v27, v6

    .line 1773
    .line 1774
    and-int/lit16 v7, v0, 0xff

    .line 1775
    .line 1776
    if-ne v7, v0, :cond_e

    .line 1777
    .line 1778
    and-int/lit16 v7, v1, 0xff

    .line 1779
    .line 1780
    if-ne v7, v1, :cond_e

    .line 1781
    .line 1782
    and-int/lit16 v7, v2, 0xff

    .line 1783
    .line 1784
    if-ne v7, v2, :cond_e

    .line 1785
    .line 1786
    and-int/lit16 v7, v3, 0xff

    .line 1787
    .line 1788
    if-ne v7, v3, :cond_e

    .line 1789
    .line 1790
    and-int/lit16 v7, v4, 0xff

    .line 1791
    .line 1792
    if-ne v7, v4, :cond_e

    .line 1793
    .line 1794
    and-int/lit16 v7, v5, 0xff

    .line 1795
    .line 1796
    if-ne v7, v5, :cond_e

    .line 1797
    .line 1798
    and-int/lit16 v7, v6, 0xff

    .line 1799
    .line 1800
    if-ne v7, v6, :cond_e

    .line 1801
    int-to-long v6, v6

    .line 1802
    .line 1803
    shl-long v6, v6, v20

    .line 1804
    int-to-long v8, v5

    .line 1805
    .line 1806
    shl-long v8, v8, v23

    .line 1807
    add-long/2addr v6, v8

    .line 1808
    int-to-long v4, v4

    .line 1809
    .line 1810
    shl-long v4, v4, v21

    .line 1811
    add-long/2addr v6, v4

    .line 1812
    int-to-long v3, v3

    .line 1813
    .line 1814
    shl-long v3, v3, v24

    .line 1815
    add-long/2addr v6, v3

    .line 1816
    int-to-long v2, v2

    .line 1817
    .line 1818
    shl-long v2, v2, v25

    .line 1819
    add-long/2addr v6, v2

    .line 1820
    int-to-long v1, v1

    .line 1821
    .line 1822
    shl-long v1, v1, v26

    .line 1823
    add-long/2addr v6, v1

    .line 1824
    int-to-long v0, v0

    .line 1825
    .line 1826
    add-long v8, v6, v0

    .line 1827
    :goto_a
    move-wide v2, v8

    .line 1828
    goto :goto_9

    .line 1829
    .line 1830
    :pswitch_a
    move/from16 v28, v1

    .line 1831
    .line 1832
    move-object/from16 v27, v2

    .line 1833
    .line 1834
    move/from16 v29, v5

    .line 1835
    .line 1836
    move/from16 v21, v9

    .line 1837
    .line 1838
    move/from16 v22, v10

    .line 1839
    .line 1840
    const-wide/16 v18, -0x1

    .line 1841
    .line 1842
    const/16 v23, 0x28

    .line 1843
    .line 1844
    const/16 v24, 0x18

    .line 1845
    .line 1846
    const/16 v25, 0x10

    .line 1847
    .line 1848
    const/16 v26, 0x8

    .line 1849
    .line 1850
    aget-char v0, v27, v29

    .line 1851
    .line 1852
    add-int/lit8 v5, v29, 0x1

    .line 1853
    .line 1854
    aget-char v1, v27, v5

    .line 1855
    .line 1856
    add-int/lit8 v5, v29, 0x2

    .line 1857
    .line 1858
    aget-char v2, v27, v5

    .line 1859
    .line 1860
    add-int/lit8 v5, v29, 0x3

    .line 1861
    .line 1862
    aget-char v3, v27, v5

    .line 1863
    .line 1864
    add-int/lit8 v5, v29, 0x4

    .line 1865
    .line 1866
    aget-char v4, v27, v5

    .line 1867
    .line 1868
    add-int/lit8 v5, v29, 0x5

    .line 1869
    .line 1870
    aget-char v5, v27, v5

    .line 1871
    .line 1872
    and-int/lit16 v6, v0, 0xff

    .line 1873
    .line 1874
    if-ne v6, v0, :cond_e

    .line 1875
    .line 1876
    and-int/lit16 v6, v1, 0xff

    .line 1877
    .line 1878
    if-ne v6, v1, :cond_e

    .line 1879
    .line 1880
    and-int/lit16 v6, v2, 0xff

    .line 1881
    .line 1882
    if-ne v6, v2, :cond_e

    .line 1883
    .line 1884
    and-int/lit16 v6, v3, 0xff

    .line 1885
    .line 1886
    if-ne v6, v3, :cond_e

    .line 1887
    .line 1888
    and-int/lit16 v6, v4, 0xff

    .line 1889
    .line 1890
    if-ne v6, v4, :cond_e

    .line 1891
    .line 1892
    and-int/lit16 v6, v5, 0xff

    .line 1893
    .line 1894
    if-ne v6, v5, :cond_e

    .line 1895
    int-to-long v5, v5

    .line 1896
    .line 1897
    shl-long v5, v5, v23

    .line 1898
    int-to-long v7, v4

    .line 1899
    .line 1900
    shl-long v7, v7, v21

    .line 1901
    add-long/2addr v5, v7

    .line 1902
    int-to-long v3, v3

    .line 1903
    .line 1904
    shl-long v3, v3, v24

    .line 1905
    add-long/2addr v5, v3

    .line 1906
    int-to-long v2, v2

    .line 1907
    .line 1908
    shl-long v2, v2, v25

    .line 1909
    add-long/2addr v5, v2

    .line 1910
    int-to-long v1, v1

    .line 1911
    .line 1912
    shl-long v1, v1, v26

    .line 1913
    add-long/2addr v5, v1

    .line 1914
    int-to-long v0, v0

    .line 1915
    .line 1916
    add-long v8, v5, v0

    .line 1917
    goto :goto_a

    .line 1918
    .line 1919
    :pswitch_b
    move/from16 v28, v1

    .line 1920
    .line 1921
    move-object/from16 v27, v2

    .line 1922
    .line 1923
    move/from16 v29, v5

    .line 1924
    .line 1925
    move/from16 v21, v9

    .line 1926
    .line 1927
    move/from16 v22, v10

    .line 1928
    .line 1929
    const-wide/16 v18, -0x1

    .line 1930
    .line 1931
    const/16 v24, 0x18

    .line 1932
    .line 1933
    const/16 v25, 0x10

    .line 1934
    .line 1935
    const/16 v26, 0x8

    .line 1936
    .line 1937
    aget-char v0, v27, v29

    .line 1938
    .line 1939
    add-int/lit8 v5, v29, 0x1

    .line 1940
    .line 1941
    aget-char v1, v27, v5

    .line 1942
    .line 1943
    add-int/lit8 v5, v29, 0x2

    .line 1944
    .line 1945
    aget-char v2, v27, v5

    .line 1946
    .line 1947
    add-int/lit8 v5, v29, 0x3

    .line 1948
    .line 1949
    aget-char v3, v27, v5

    .line 1950
    .line 1951
    add-int/lit8 v5, v29, 0x4

    .line 1952
    .line 1953
    aget-char v4, v27, v5

    .line 1954
    .line 1955
    and-int/lit16 v5, v0, 0xff

    .line 1956
    .line 1957
    if-ne v5, v0, :cond_e

    .line 1958
    .line 1959
    and-int/lit16 v5, v1, 0xff

    .line 1960
    .line 1961
    if-ne v5, v1, :cond_e

    .line 1962
    .line 1963
    and-int/lit16 v5, v2, 0xff

    .line 1964
    .line 1965
    if-ne v5, v2, :cond_e

    .line 1966
    .line 1967
    and-int/lit16 v5, v3, 0xff

    .line 1968
    .line 1969
    if-ne v5, v3, :cond_e

    .line 1970
    .line 1971
    and-int/lit16 v5, v4, 0xff

    .line 1972
    .line 1973
    if-ne v5, v4, :cond_e

    .line 1974
    int-to-long v4, v4

    .line 1975
    .line 1976
    shl-long v4, v4, v21

    .line 1977
    int-to-long v6, v3

    .line 1978
    .line 1979
    shl-long v6, v6, v24

    .line 1980
    add-long/2addr v4, v6

    .line 1981
    int-to-long v2, v2

    .line 1982
    .line 1983
    shl-long v2, v2, v25

    .line 1984
    add-long/2addr v4, v2

    .line 1985
    int-to-long v1, v1

    .line 1986
    .line 1987
    shl-long v1, v1, v26

    .line 1988
    add-long/2addr v4, v1

    .line 1989
    int-to-long v0, v0

    .line 1990
    .line 1991
    add-long v8, v4, v0

    .line 1992
    .line 1993
    goto/16 :goto_a

    .line 1994
    .line 1995
    :pswitch_c
    move/from16 v28, v1

    .line 1996
    .line 1997
    move-object/from16 v27, v2

    .line 1998
    .line 1999
    move/from16 v29, v5

    .line 2000
    .line 2001
    move/from16 v21, v9

    .line 2002
    .line 2003
    move/from16 v22, v10

    .line 2004
    .line 2005
    const-wide/16 v18, -0x1

    .line 2006
    .line 2007
    const/16 v24, 0x18

    .line 2008
    .line 2009
    const/16 v25, 0x10

    .line 2010
    .line 2011
    const/16 v26, 0x8

    .line 2012
    .line 2013
    aget-char v0, v27, v29

    .line 2014
    .line 2015
    add-int/lit8 v5, v29, 0x1

    .line 2016
    .line 2017
    aget-char v1, v27, v5

    .line 2018
    .line 2019
    add-int/lit8 v5, v29, 0x2

    .line 2020
    .line 2021
    aget-char v2, v27, v5

    .line 2022
    .line 2023
    add-int/lit8 v5, v29, 0x3

    .line 2024
    .line 2025
    aget-char v3, v27, v5

    .line 2026
    .line 2027
    and-int/lit16 v4, v0, 0xff

    .line 2028
    .line 2029
    if-ne v4, v0, :cond_e

    .line 2030
    .line 2031
    and-int/lit16 v4, v1, 0xff

    .line 2032
    .line 2033
    if-ne v4, v1, :cond_e

    .line 2034
    .line 2035
    and-int/lit16 v4, v2, 0xff

    .line 2036
    .line 2037
    if-ne v4, v2, :cond_e

    .line 2038
    .line 2039
    and-int/lit16 v4, v3, 0xff

    .line 2040
    .line 2041
    if-ne v4, v3, :cond_e

    .line 2042
    .line 2043
    shl-int/lit8 v3, v3, 0x18

    .line 2044
    .line 2045
    shl-int/lit8 v2, v2, 0x10

    .line 2046
    add-int/2addr v3, v2

    .line 2047
    .line 2048
    shl-int/lit8 v1, v1, 0x8

    .line 2049
    add-int/2addr v3, v1

    .line 2050
    add-int/2addr v3, v0

    .line 2051
    int-to-long v8, v3

    .line 2052
    .line 2053
    goto/16 :goto_a

    .line 2054
    .line 2055
    :pswitch_d
    move/from16 v28, v1

    .line 2056
    .line 2057
    move-object/from16 v27, v2

    .line 2058
    .line 2059
    move/from16 v29, v5

    .line 2060
    .line 2061
    move/from16 v21, v9

    .line 2062
    .line 2063
    move/from16 v22, v10

    .line 2064
    .line 2065
    const-wide/16 v18, -0x1

    .line 2066
    .line 2067
    const/16 v25, 0x10

    .line 2068
    .line 2069
    const/16 v26, 0x8

    .line 2070
    .line 2071
    aget-char v0, v27, v29

    .line 2072
    .line 2073
    add-int/lit8 v5, v29, 0x1

    .line 2074
    .line 2075
    aget-char v1, v27, v5

    .line 2076
    .line 2077
    add-int/lit8 v5, v29, 0x2

    .line 2078
    .line 2079
    aget-char v2, v27, v5

    .line 2080
    .line 2081
    and-int/lit16 v3, v0, 0xff

    .line 2082
    .line 2083
    if-ne v3, v0, :cond_e

    .line 2084
    .line 2085
    and-int/lit16 v3, v1, 0xff

    .line 2086
    .line 2087
    if-ne v3, v1, :cond_e

    .line 2088
    .line 2089
    and-int/lit16 v3, v2, 0xff

    .line 2090
    .line 2091
    if-ne v3, v2, :cond_e

    .line 2092
    .line 2093
    shl-int/lit8 v2, v2, 0x10

    .line 2094
    .line 2095
    shl-int/lit8 v1, v1, 0x8

    .line 2096
    add-int/2addr v2, v1

    .line 2097
    add-int/2addr v2, v0

    .line 2098
    int-to-long v8, v2

    .line 2099
    .line 2100
    goto/16 :goto_a

    .line 2101
    .line 2102
    :pswitch_e
    move/from16 v28, v1

    .line 2103
    .line 2104
    move-object/from16 v27, v2

    .line 2105
    .line 2106
    move/from16 v29, v5

    .line 2107
    .line 2108
    move/from16 v21, v9

    .line 2109
    .line 2110
    move/from16 v22, v10

    .line 2111
    .line 2112
    const-wide/16 v18, -0x1

    .line 2113
    .line 2114
    const/16 v26, 0x8

    .line 2115
    .line 2116
    aget-char v0, v27, v29

    .line 2117
    .line 2118
    add-int/lit8 v5, v29, 0x1

    .line 2119
    .line 2120
    aget-char v1, v27, v5

    .line 2121
    .line 2122
    and-int/lit16 v2, v0, 0xff

    .line 2123
    .line 2124
    if-ne v2, v0, :cond_e

    .line 2125
    .line 2126
    and-int/lit16 v2, v1, 0xff

    .line 2127
    .line 2128
    if-ne v2, v1, :cond_e

    .line 2129
    .line 2130
    shl-int/lit8 v1, v1, 0x8

    .line 2131
    add-int/2addr v1, v0

    .line 2132
    int-to-long v8, v1

    .line 2133
    .line 2134
    goto/16 :goto_a

    .line 2135
    .line 2136
    :pswitch_f
    move/from16 v28, v1

    .line 2137
    .line 2138
    move-object/from16 v27, v2

    .line 2139
    .line 2140
    move/from16 v29, v5

    .line 2141
    .line 2142
    move/from16 v21, v9

    .line 2143
    .line 2144
    move/from16 v22, v10

    .line 2145
    .line 2146
    const-wide/16 v18, -0x1

    .line 2147
    .line 2148
    aget-char v0, v27, v29

    .line 2149
    .line 2150
    and-int/lit16 v1, v0, 0xff

    .line 2151
    .line 2152
    if-ne v1, v0, :cond_e

    .line 2153
    int-to-long v8, v0

    .line 2154
    .line 2155
    goto/16 :goto_a

    .line 2156
    .line 2157
    :cond_e
    :goto_b
    move-wide/from16 v2, v18

    .line 2158
    move-wide v4, v2

    .line 2159
    .line 2160
    :goto_c
    cmp-long v0, v2, v18

    .line 2161
    .line 2162
    if-eqz v0, :cond_14

    .line 2163
    .line 2164
    cmp-long v0, v4, v18

    .line 2165
    .line 2166
    if-eqz v0, :cond_11

    .line 2167
    .line 2168
    xor-long v0, v2, v4

    .line 2169
    .line 2170
    ushr-long v6, v0, v21

    .line 2171
    xor-long/2addr v0, v6

    .line 2172
    long-to-int v0, v0

    .line 2173
    .line 2174
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 2175
    array-length v1, v6

    .line 2176
    .line 2177
    add-int/lit8 v1, v1, -0x1

    .line 2178
    .line 2179
    and-int v7, v0, v1

    .line 2180
    .line 2181
    aget-object v0, v6, v7

    .line 2182
    .line 2183
    if-nez v0, :cond_10

    .line 2184
    .line 2185
    move-object/from16 v9, p0

    .line 2186
    .line 2187
    iget-object v0, v9, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 2188
    .line 2189
    if-eqz v0, :cond_f

    .line 2190
    .line 2191
    move/from16 v8, v28

    .line 2192
    .line 2193
    move/from16 v1, v29

    .line 2194
    .line 2195
    .line 2196
    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2197
    move-result-object v0

    .line 2198
    :goto_d
    move-object v1, v0

    .line 2199
    goto :goto_e

    .line 2200
    .line 2201
    :cond_f
    move/from16 v8, v28

    .line 2202
    .line 2203
    move/from16 v1, v29

    .line 2204
    .line 2205
    new-instance v0, Ljava/lang/String;

    .line 2206
    sub-int/2addr v8, v1

    .line 2207
    .line 2208
    move-object/from16 v10, v27

    .line 2209
    .line 2210
    .line 2211
    invoke-direct {v0, v10, v1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 2212
    goto :goto_d

    .line 2213
    .line 2214
    :goto_e
    new-instance v0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 2215
    .line 2216
    .line 2217
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;-><init>(Ljava/lang/String;JJ)V

    .line 2218
    .line 2219
    aput-object v0, v6, v7

    .line 2220
    return-object v1

    .line 2221
    .line 2222
    :cond_10
    move-object/from16 v9, p0

    .line 2223
    .line 2224
    move-object/from16 v10, v27

    .line 2225
    .line 2226
    move/from16 v8, v28

    .line 2227
    .line 2228
    move/from16 v1, v29

    .line 2229
    .line 2230
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    .line 2231
    .line 2232
    cmp-long v2, v6, v2

    .line 2233
    .line 2234
    if-nez v2, :cond_15

    .line 2235
    .line 2236
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    .line 2237
    .line 2238
    cmp-long v2, v2, v4

    .line 2239
    .line 2240
    if-nez v2, :cond_15

    .line 2241
    .line 2242
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    .line 2243
    return-object v0

    .line 2244
    .line 2245
    :cond_11
    move-object/from16 v9, p0

    .line 2246
    .line 2247
    move-object/from16 v10, v27

    .line 2248
    .line 2249
    move/from16 v8, v28

    .line 2250
    .line 2251
    move/from16 v1, v29

    .line 2252
    .line 2253
    ushr-long v4, v2, v21

    .line 2254
    xor-long/2addr v4, v2

    .line 2255
    long-to-int v0, v4

    .line 2256
    .line 2257
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 2258
    array-length v5, v4

    .line 2259
    .line 2260
    add-int/lit8 v5, v5, -0x1

    .line 2261
    and-int/2addr v0, v5

    .line 2262
    .line 2263
    aget-object v5, v4, v0

    .line 2264
    .line 2265
    if-nez v5, :cond_13

    .line 2266
    .line 2267
    iget-object v5, v9, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 2268
    .line 2269
    if-eqz v5, :cond_12

    .line 2270
    .line 2271
    .line 2272
    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2273
    move-result-object v1

    .line 2274
    goto :goto_f

    .line 2275
    .line 2276
    :cond_12
    new-instance v5, Ljava/lang/String;

    .line 2277
    .line 2278
    sub-int v6, v8, v1

    .line 2279
    .line 2280
    .line 2281
    invoke-direct {v5, v10, v1, v6}, Ljava/lang/String;-><init>([CII)V

    .line 2282
    move-object v1, v5

    .line 2283
    .line 2284
    :goto_f
    new-instance v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 2285
    .line 2286
    .line 2287
    invoke-direct {v5, v1, v2, v3}, Lcom/alibaba/fastjson2/util/NameCacheEntry;-><init>(Ljava/lang/String;J)V

    .line 2288
    .line 2289
    aput-object v5, v4, v0

    .line 2290
    return-object v1

    .line 2291
    .line 2292
    :cond_13
    iget-wide v6, v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    .line 2293
    .line 2294
    cmp-long v0, v6, v2

    .line 2295
    .line 2296
    if-nez v0, :cond_15

    .line 2297
    .line 2298
    iget-object v0, v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;

    .line 2299
    return-object v0

    .line 2300
    .line 2301
    :cond_14
    move-object/from16 v9, p0

    .line 2302
    .line 2303
    move-object/from16 v10, v27

    .line 2304
    .line 2305
    move/from16 v8, v28

    .line 2306
    .line 2307
    move/from16 v1, v29

    .line 2308
    .line 2309
    :cond_15
    iget-object v0, v9, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 2310
    .line 2311
    if-eqz v0, :cond_16

    .line 2312
    .line 2313
    .line 2314
    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2315
    move-result-object v0

    .line 2316
    return-object v0

    .line 2317
    .line 2318
    :cond_16
    new-instance v0, Ljava/lang/String;

    .line 2319
    .line 2320
    sub-int v2, v8, v1

    .line 2321
    .line 2322
    .line 2323
    invoke-direct {v0, v10, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2324
    return-object v0

    .line 2325
    :cond_17
    move-object v9, v0

    .line 2326
    .line 2327
    .line 2328
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getFieldName()Ljava/lang/String;

    .line 2329
    move-result-object v0

    .line 2330
    return-object v0

    .line 2331
    :cond_18
    move-object v9, v0

    .line 2332
    .line 2333
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 2334
    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2336
    .line 2337
    .line 2338
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2339
    .line 2340
    const-string v2, "syntax error : "

    .line 2341
    .line 2342
    .line 2343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    .line 2345
    .line 2346
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2347
    .line 2348
    .line 2349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2350
    move-result-object v1

    .line 2351
    .line 2352
    .line 2353
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 2354
    throw v0

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
    .locals 35

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readFieldNameHashCodeUnquote()J

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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->isNull()Z

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
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 88
    .line 89
    if-lez v1, :cond_5

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v3, "illegal fieldName input "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v2, ", previous fieldName "

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->getFieldName()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    const-string v3, "illegal fieldName input"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    :goto_1
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 146
    throw v2

    .line 147
    .line 148
    :cond_6
    :goto_2
    const-wide/16 v1, -0x1

    .line 149
    return-wide v1

    .line 150
    :cond_7
    const/4 v3, 0x0

    .line 151
    .line 152
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 153
    const/4 v3, 0x0

    .line 154
    .line 155
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 156
    .line 157
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 158
    .line 159
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 160
    .line 161
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 162
    .line 163
    add-int/lit8 v8, v6, 0x9

    .line 164
    .line 165
    move-wide/from16 v16, v4

    .line 166
    .line 167
    if-ge v8, v7, :cond_12

    .line 168
    .line 169
    const/16 v18, 0x38

    .line 170
    .line 171
    aget-char v9, v1, v6

    .line 172
    .line 173
    const/16 v19, 0x30

    .line 174
    .line 175
    add-int/lit8 v10, v6, 0x1

    .line 176
    .line 177
    const/16 v20, 0x28

    .line 178
    .line 179
    aget-char v11, v1, v10

    .line 180
    .line 181
    const/16 v21, 0x18

    .line 182
    .line 183
    add-int/lit8 v12, v6, 0x2

    .line 184
    .line 185
    const/16 v22, 0x10

    .line 186
    .line 187
    aget-char v14, v1, v12

    .line 188
    .line 189
    const/16 v23, 0x20

    .line 190
    .line 191
    add-int/lit8 v13, v6, 0x3

    .line 192
    .line 193
    const/16 v24, 0x8

    .line 194
    .line 195
    aget-char v15, v1, v13

    .line 196
    .line 197
    add-int/lit8 v3, v6, 0x4

    .line 198
    .line 199
    aget-char v4, v1, v3

    .line 200
    .line 201
    add-int/lit8 v5, v6, 0x5

    .line 202
    .line 203
    move-object/from16 v26, v1

    .line 204
    .line 205
    aget-char v1, v26, v5

    .line 206
    .line 207
    move/from16 v27, v6

    .line 208
    .line 209
    add-int/lit8 v6, v27, 0x6

    .line 210
    .line 211
    move/from16 v28, v8

    .line 212
    .line 213
    aget-char v8, v26, v6

    .line 214
    .line 215
    move/from16 v29, v7

    .line 216
    .line 217
    add-int/lit8 v7, v27, 0x7

    .line 218
    .line 219
    move/from16 v30, v7

    .line 220
    .line 221
    aget-char v7, v26, v30

    .line 222
    .line 223
    move/from16 v31, v7

    .line 224
    .line 225
    add-int/lit8 v7, v27, 0x8

    .line 226
    .line 227
    move/from16 v32, v7

    .line 228
    .line 229
    aget-char v7, v26, v32

    .line 230
    .line 231
    if-ne v9, v2, :cond_9

    .line 232
    .line 233
    :cond_8
    :goto_3
    move-wide/from16 v3, v16

    .line 234
    .line 235
    move/from16 v6, v27

    .line 236
    .line 237
    goto/16 :goto_4

    .line 238
    .line 239
    :cond_9
    if-ne v11, v2, :cond_a

    .line 240
    .line 241
    if-eqz v9, :cond_a

    .line 242
    .line 243
    move/from16 v33, v7

    .line 244
    .line 245
    const/16 v7, 0x5c

    .line 246
    .line 247
    if-eq v9, v7, :cond_b

    .line 248
    .line 249
    const/16 v7, 0xff

    .line 250
    .line 251
    if-gt v9, v7, :cond_b

    .line 252
    int-to-byte v1, v9

    .line 253
    int-to-long v3, v1

    .line 254
    const/4 v1, 0x1

    .line 255
    .line 256
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 257
    .line 258
    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 259
    move v6, v12

    .line 260
    .line 261
    goto/16 :goto_4

    .line 262
    .line 263
    :cond_a
    move/from16 v33, v7

    .line 264
    .line 265
    :cond_b
    if-ne v14, v2, :cond_c

    .line 266
    .line 267
    if-eqz v9, :cond_c

    .line 268
    .line 269
    const/16 v7, 0x5c

    .line 270
    .line 271
    if-eq v9, v7, :cond_c

    .line 272
    .line 273
    if-eq v11, v7, :cond_c

    .line 274
    .line 275
    const/16 v7, 0xff

    .line 276
    .line 277
    if-gt v9, v7, :cond_c

    .line 278
    .line 279
    if-gt v11, v7, :cond_c

    .line 280
    int-to-byte v1, v11

    .line 281
    .line 282
    shl-int/lit8 v1, v1, 0x8

    .line 283
    add-int/2addr v1, v9

    .line 284
    int-to-long v3, v1

    .line 285
    const/4 v1, 0x2

    .line 286
    .line 287
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 288
    .line 289
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 290
    move v6, v13

    .line 291
    .line 292
    goto/16 :goto_4

    .line 293
    .line 294
    :cond_c
    if-ne v15, v2, :cond_d

    .line 295
    .line 296
    if-eqz v9, :cond_d

    .line 297
    .line 298
    const/16 v7, 0x5c

    .line 299
    .line 300
    if-eq v9, v7, :cond_d

    .line 301
    .line 302
    if-eq v11, v7, :cond_d

    .line 303
    .line 304
    if-eq v14, v7, :cond_d

    .line 305
    .line 306
    const/16 v7, 0xff

    .line 307
    .line 308
    if-gt v9, v7, :cond_d

    .line 309
    .line 310
    if-gt v11, v7, :cond_d

    .line 311
    .line 312
    if-gt v14, v7, :cond_d

    .line 313
    int-to-byte v1, v14

    .line 314
    .line 315
    shl-int/lit8 v1, v1, 0x10

    .line 316
    .line 317
    shl-int/lit8 v4, v11, 0x8

    .line 318
    add-int/2addr v1, v4

    .line 319
    add-int/2addr v1, v9

    .line 320
    int-to-long v4, v1

    .line 321
    const/4 v1, 0x3

    .line 322
    .line 323
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 324
    .line 325
    iput v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 326
    move v6, v3

    .line 327
    move-wide v3, v4

    .line 328
    .line 329
    goto/16 :goto_4

    .line 330
    .line 331
    :cond_d
    if-ne v4, v2, :cond_e

    .line 332
    .line 333
    if-eqz v9, :cond_e

    .line 334
    .line 335
    const/16 v7, 0x5c

    .line 336
    .line 337
    if-eq v9, v7, :cond_e

    .line 338
    .line 339
    if-eq v11, v7, :cond_e

    .line 340
    .line 341
    if-eq v14, v7, :cond_e

    .line 342
    .line 343
    if-eq v15, v7, :cond_e

    .line 344
    .line 345
    const/16 v7, 0xff

    .line 346
    .line 347
    if-gt v9, v7, :cond_e

    .line 348
    .line 349
    if-gt v11, v7, :cond_e

    .line 350
    .line 351
    if-gt v14, v7, :cond_e

    .line 352
    .line 353
    if-gt v15, v7, :cond_e

    .line 354
    int-to-byte v1, v15

    .line 355
    .line 356
    shl-int/lit8 v1, v1, 0x18

    .line 357
    .line 358
    shl-int/lit8 v4, v14, 0x10

    .line 359
    add-int/2addr v1, v4

    .line 360
    .line 361
    shl-int/lit8 v4, v11, 0x8

    .line 362
    add-int/2addr v1, v4

    .line 363
    add-int/2addr v1, v9

    .line 364
    int-to-long v6, v1

    .line 365
    const/4 v1, 0x4

    .line 366
    .line 367
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 368
    .line 369
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 370
    move-wide v3, v6

    .line 371
    move v6, v5

    .line 372
    .line 373
    goto/16 :goto_4

    .line 374
    .line 375
    :cond_e
    if-ne v1, v2, :cond_f

    .line 376
    .line 377
    if-eqz v9, :cond_f

    .line 378
    .line 379
    const/16 v7, 0x5c

    .line 380
    .line 381
    if-eq v9, v7, :cond_f

    .line 382
    .line 383
    if-eq v11, v7, :cond_f

    .line 384
    .line 385
    if-eq v14, v7, :cond_f

    .line 386
    .line 387
    if-eq v15, v7, :cond_f

    .line 388
    .line 389
    if-eq v4, v7, :cond_f

    .line 390
    .line 391
    const/16 v7, 0xff

    .line 392
    .line 393
    if-gt v9, v7, :cond_f

    .line 394
    .line 395
    if-gt v11, v7, :cond_f

    .line 396
    .line 397
    if-gt v14, v7, :cond_f

    .line 398
    .line 399
    if-gt v15, v7, :cond_f

    .line 400
    .line 401
    if-gt v4, v7, :cond_f

    .line 402
    int-to-byte v1, v4

    .line 403
    int-to-long v3, v1

    .line 404
    .line 405
    shl-long v3, v3, v23

    .line 406
    int-to-long v7, v15

    .line 407
    .line 408
    shl-long v7, v7, v21

    .line 409
    add-long/2addr v3, v7

    .line 410
    int-to-long v7, v14

    .line 411
    .line 412
    shl-long v7, v7, v22

    .line 413
    add-long/2addr v3, v7

    .line 414
    int-to-long v7, v11

    .line 415
    .line 416
    shl-long v7, v7, v24

    .line 417
    add-long/2addr v3, v7

    .line 418
    int-to-long v7, v9

    .line 419
    add-long/2addr v3, v7

    .line 420
    const/4 v1, 0x5

    .line 421
    .line 422
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 423
    .line 424
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 425
    .line 426
    goto/16 :goto_4

    .line 427
    .line 428
    :cond_f
    if-ne v8, v2, :cond_10

    .line 429
    .line 430
    if-eqz v9, :cond_10

    .line 431
    .line 432
    const/16 v7, 0x5c

    .line 433
    .line 434
    if-eq v9, v7, :cond_10

    .line 435
    .line 436
    if-eq v11, v7, :cond_10

    .line 437
    .line 438
    if-eq v14, v7, :cond_10

    .line 439
    .line 440
    if-eq v15, v7, :cond_10

    .line 441
    .line 442
    if-eq v4, v7, :cond_10

    .line 443
    .line 444
    if-eq v1, v7, :cond_10

    .line 445
    .line 446
    const/16 v7, 0xff

    .line 447
    .line 448
    if-gt v9, v7, :cond_10

    .line 449
    .line 450
    if-gt v11, v7, :cond_10

    .line 451
    .line 452
    if-gt v14, v7, :cond_10

    .line 453
    .line 454
    if-gt v15, v7, :cond_10

    .line 455
    .line 456
    if-gt v4, v7, :cond_10

    .line 457
    .line 458
    if-gt v1, v7, :cond_10

    .line 459
    int-to-byte v1, v1

    .line 460
    int-to-long v7, v1

    .line 461
    .line 462
    shl-long v7, v7, v20

    .line 463
    int-to-long v3, v4

    .line 464
    .line 465
    shl-long v3, v3, v23

    .line 466
    add-long/2addr v7, v3

    .line 467
    int-to-long v3, v15

    .line 468
    .line 469
    shl-long v3, v3, v21

    .line 470
    add-long/2addr v7, v3

    .line 471
    int-to-long v3, v14

    .line 472
    .line 473
    shl-long v3, v3, v22

    .line 474
    add-long/2addr v7, v3

    .line 475
    int-to-long v3, v11

    .line 476
    .line 477
    shl-long v3, v3, v24

    .line 478
    add-long/2addr v7, v3

    .line 479
    int-to-long v3, v9

    .line 480
    add-long/2addr v3, v7

    .line 481
    const/4 v1, 0x6

    .line 482
    .line 483
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 484
    .line 485
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 486
    .line 487
    move/from16 v6, v30

    .line 488
    .line 489
    goto/16 :goto_4

    .line 490
    .line 491
    :cond_10
    move/from16 v3, v31

    .line 492
    .line 493
    if-ne v3, v2, :cond_11

    .line 494
    .line 495
    if-eqz v9, :cond_11

    .line 496
    .line 497
    const/16 v7, 0x5c

    .line 498
    .line 499
    if-eq v9, v7, :cond_11

    .line 500
    .line 501
    if-eq v11, v7, :cond_11

    .line 502
    .line 503
    if-eq v14, v7, :cond_11

    .line 504
    .line 505
    if-eq v15, v7, :cond_11

    .line 506
    .line 507
    if-eq v4, v7, :cond_11

    .line 508
    .line 509
    if-eq v1, v7, :cond_11

    .line 510
    .line 511
    if-eq v8, v7, :cond_11

    .line 512
    .line 513
    const/16 v7, 0xff

    .line 514
    .line 515
    if-gt v9, v7, :cond_11

    .line 516
    .line 517
    if-gt v11, v7, :cond_11

    .line 518
    .line 519
    if-gt v14, v7, :cond_11

    .line 520
    .line 521
    if-gt v15, v7, :cond_11

    .line 522
    .line 523
    if-gt v4, v7, :cond_11

    .line 524
    .line 525
    if-gt v1, v7, :cond_11

    .line 526
    .line 527
    if-gt v8, v7, :cond_11

    .line 528
    int-to-byte v3, v8

    .line 529
    int-to-long v5, v3

    .line 530
    .line 531
    shl-long v5, v5, v19

    .line 532
    int-to-long v7, v1

    .line 533
    .line 534
    shl-long v7, v7, v20

    .line 535
    add-long/2addr v5, v7

    .line 536
    int-to-long v3, v4

    .line 537
    .line 538
    shl-long v3, v3, v23

    .line 539
    add-long/2addr v5, v3

    .line 540
    int-to-long v3, v15

    .line 541
    .line 542
    shl-long v3, v3, v21

    .line 543
    add-long/2addr v5, v3

    .line 544
    int-to-long v3, v14

    .line 545
    .line 546
    shl-long v3, v3, v22

    .line 547
    add-long/2addr v5, v3

    .line 548
    int-to-long v3, v11

    .line 549
    .line 550
    shl-long v3, v3, v24

    .line 551
    add-long/2addr v5, v3

    .line 552
    int-to-long v3, v9

    .line 553
    add-long/2addr v3, v5

    .line 554
    const/4 v1, 0x7

    .line 555
    .line 556
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 557
    .line 558
    move/from16 v6, v30

    .line 559
    .line 560
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 561
    .line 562
    move/from16 v6, v32

    .line 563
    .line 564
    goto/16 :goto_4

    .line 565
    .line 566
    :cond_11
    move/from16 v5, v33

    .line 567
    .line 568
    if-ne v5, v2, :cond_8

    .line 569
    .line 570
    if-eqz v9, :cond_8

    .line 571
    .line 572
    const/16 v7, 0x5c

    .line 573
    .line 574
    if-eq v9, v7, :cond_8

    .line 575
    .line 576
    if-eq v11, v7, :cond_8

    .line 577
    .line 578
    if-eq v14, v7, :cond_8

    .line 579
    .line 580
    if-eq v15, v7, :cond_8

    .line 581
    .line 582
    if-eq v4, v7, :cond_8

    .line 583
    .line 584
    if-eq v1, v7, :cond_8

    .line 585
    .line 586
    if-eq v8, v7, :cond_8

    .line 587
    .line 588
    if-eq v3, v7, :cond_8

    .line 589
    .line 590
    const/16 v7, 0xff

    .line 591
    .line 592
    if-gt v9, v7, :cond_8

    .line 593
    .line 594
    if-gt v11, v7, :cond_8

    .line 595
    .line 596
    if-gt v14, v7, :cond_8

    .line 597
    .line 598
    if-gt v15, v7, :cond_8

    .line 599
    .line 600
    if-gt v4, v7, :cond_8

    .line 601
    .line 602
    if-gt v1, v7, :cond_8

    .line 603
    .line 604
    if-gt v8, v7, :cond_8

    .line 605
    .line 606
    if-gt v3, v7, :cond_8

    .line 607
    int-to-byte v3, v3

    .line 608
    int-to-long v5, v3

    .line 609
    .line 610
    shl-long v5, v5, v18

    .line 611
    int-to-long v7, v8

    .line 612
    .line 613
    shl-long v7, v7, v19

    .line 614
    add-long/2addr v5, v7

    .line 615
    int-to-long v7, v1

    .line 616
    .line 617
    shl-long v7, v7, v20

    .line 618
    add-long/2addr v5, v7

    .line 619
    int-to-long v3, v4

    .line 620
    .line 621
    shl-long v3, v3, v23

    .line 622
    add-long/2addr v5, v3

    .line 623
    int-to-long v3, v15

    .line 624
    .line 625
    shl-long v3, v3, v21

    .line 626
    add-long/2addr v5, v3

    .line 627
    int-to-long v3, v14

    .line 628
    .line 629
    shl-long v3, v3, v22

    .line 630
    add-long/2addr v5, v3

    .line 631
    int-to-long v3, v11

    .line 632
    .line 633
    shl-long v3, v3, v24

    .line 634
    add-long/2addr v5, v3

    .line 635
    int-to-long v3, v9

    .line 636
    add-long/2addr v3, v5

    .line 637
    .line 638
    move/from16 v1, v24

    .line 639
    .line 640
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 641
    .line 642
    move/from16 v6, v32

    .line 643
    .line 644
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 645
    .line 646
    move/from16 v6, v28

    .line 647
    goto :goto_4

    .line 648
    .line 649
    :cond_12
    move-object/from16 v26, v1

    .line 650
    .line 651
    move/from16 v27, v6

    .line 652
    .line 653
    move/from16 v29, v7

    .line 654
    .line 655
    const/16 v18, 0x38

    .line 656
    .line 657
    const/16 v19, 0x30

    .line 658
    .line 659
    const/16 v20, 0x28

    .line 660
    .line 661
    const/16 v21, 0x18

    .line 662
    .line 663
    const/16 v22, 0x10

    .line 664
    .line 665
    const/16 v23, 0x20

    .line 666
    .line 667
    goto/16 :goto_3

    .line 668
    .line 669
    :goto_4
    cmp-long v1, v3, v16

    .line 670
    .line 671
    const/16 v5, 0x78

    .line 672
    .line 673
    const/16 v7, 0x75

    .line 674
    .line 675
    if-nez v1, :cond_1a

    .line 676
    .line 677
    move/from16 v1, v29

    .line 678
    const/4 v8, 0x0

    .line 679
    .line 680
    :goto_5
    if-ge v6, v1, :cond_1b

    .line 681
    .line 682
    aget-char v9, v26, v6

    .line 683
    .line 684
    if-ne v9, v2, :cond_14

    .line 685
    .line 686
    if-nez v8, :cond_13

    .line 687
    .line 688
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 689
    .line 690
    goto/16 :goto_d

    .line 691
    .line 692
    :cond_13
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 693
    .line 694
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 695
    .line 696
    add-int/lit8 v6, v6, 0x1

    .line 697
    .line 698
    goto/16 :goto_d

    .line 699
    .line 700
    :cond_14
    const/16 v10, 0x5c

    .line 701
    .line 702
    if-ne v9, v10, :cond_15

    .line 703
    const/4 v10, 0x1

    .line 704
    .line 705
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 706
    .line 707
    add-int/lit8 v9, v6, 0x1

    .line 708
    .line 709
    aget-char v10, v26, v9

    .line 710
    .line 711
    if-eq v10, v7, :cond_17

    .line 712
    .line 713
    if-eq v10, v5, :cond_16

    .line 714
    .line 715
    .line 716
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 717
    move-result v6

    .line 718
    move v10, v9

    .line 719
    move v9, v6

    .line 720
    move v6, v10

    .line 721
    .line 722
    :cond_15
    :goto_6
    const/16 v10, 0xff

    .line 723
    goto :goto_7

    .line 724
    .line 725
    :cond_16
    add-int/lit8 v9, v6, 0x2

    .line 726
    .line 727
    aget-char v9, v26, v9

    .line 728
    .line 729
    add-int/lit8 v6, v6, 0x3

    .line 730
    .line 731
    aget-char v10, v26, v6

    .line 732
    .line 733
    .line 734
    invoke-static {v9, v10}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 735
    move-result v9

    .line 736
    goto :goto_6

    .line 737
    .line 738
    :cond_17
    add-int/lit8 v9, v6, 0x2

    .line 739
    .line 740
    aget-char v9, v26, v9

    .line 741
    .line 742
    add-int/lit8 v10, v6, 0x3

    .line 743
    .line 744
    aget-char v10, v26, v10

    .line 745
    .line 746
    add-int/lit8 v11, v6, 0x4

    .line 747
    .line 748
    aget-char v11, v26, v11

    .line 749
    .line 750
    add-int/lit8 v6, v6, 0x5

    .line 751
    .line 752
    aget-char v12, v26, v6

    .line 753
    .line 754
    .line 755
    invoke-static {v9, v10, v11, v12}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 756
    move-result v9

    .line 757
    goto :goto_6

    .line 758
    .line 759
    :goto_7
    if-gt v9, v10, :cond_19

    .line 760
    .line 761
    const/16 v11, 0x8

    .line 762
    .line 763
    if-ge v8, v11, :cond_19

    .line 764
    .line 765
    if-nez v8, :cond_18

    .line 766
    .line 767
    if-nez v9, :cond_18

    .line 768
    goto :goto_c

    .line 769
    .line 770
    .line 771
    :cond_18
    packed-switch v8, :pswitch_data_0

    .line 772
    .line 773
    :goto_8
    const/16 v24, 0x8

    .line 774
    .line 775
    :goto_9
    const/16 v25, 0x1

    .line 776
    goto :goto_b

    .line 777
    :pswitch_0
    int-to-byte v9, v9

    .line 778
    int-to-long v11, v9

    .line 779
    .line 780
    shl-long v11, v11, v18

    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    const-wide v13, 0xffffffffffffffL

    .line 786
    :goto_a
    and-long/2addr v3, v13

    .line 787
    add-long/2addr v11, v3

    .line 788
    move-wide v3, v11

    .line 789
    goto :goto_8

    .line 790
    :pswitch_1
    int-to-byte v9, v9

    .line 791
    int-to-long v11, v9

    .line 792
    .line 793
    shl-long v11, v11, v19

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    const-wide v13, 0xffffffffffffL

    .line 799
    goto :goto_a

    .line 800
    :pswitch_2
    int-to-byte v9, v9

    .line 801
    int-to-long v11, v9

    .line 802
    .line 803
    shl-long v11, v11, v20

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    const-wide v13, 0xffffffffffL

    .line 809
    goto :goto_a

    .line 810
    :pswitch_3
    int-to-byte v9, v9

    .line 811
    int-to-long v11, v9

    .line 812
    .line 813
    shl-long v11, v11, v23

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    const-wide v13, 0xffffffffL

    .line 819
    goto :goto_a

    .line 820
    :pswitch_4
    int-to-byte v9, v9

    .line 821
    .line 822
    shl-int/lit8 v9, v9, 0x18

    .line 823
    int-to-long v11, v9

    .line 824
    .line 825
    .line 826
    const-wide/32 v13, 0xffffff

    .line 827
    goto :goto_a

    .line 828
    :pswitch_5
    int-to-byte v9, v9

    .line 829
    .line 830
    shl-int/lit8 v9, v9, 0x10

    .line 831
    int-to-long v11, v9

    .line 832
    .line 833
    .line 834
    const-wide/32 v13, 0xffff

    .line 835
    goto :goto_a

    .line 836
    :pswitch_6
    int-to-byte v9, v9

    .line 837
    .line 838
    const/16 v24, 0x8

    .line 839
    .line 840
    shl-int/lit8 v9, v9, 0x8

    .line 841
    int-to-long v11, v9

    .line 842
    .line 843
    const-wide/16 v13, 0xff

    .line 844
    and-long/2addr v3, v13

    .line 845
    add-long/2addr v11, v3

    .line 846
    move-wide v3, v11

    .line 847
    goto :goto_9

    .line 848
    .line 849
    :pswitch_7
    const/16 v24, 0x8

    .line 850
    int-to-byte v3, v9

    .line 851
    int-to-long v3, v3

    .line 852
    goto :goto_9

    .line 853
    .line 854
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 855
    .line 856
    add-int/lit8 v8, v8, 0x1

    .line 857
    .line 858
    goto/16 :goto_5

    .line 859
    .line 860
    :cond_19
    :goto_c
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 861
    .line 862
    move-wide/from16 v3, v16

    .line 863
    goto :goto_d

    .line 864
    .line 865
    :cond_1a
    move/from16 v1, v29

    .line 866
    .line 867
    :cond_1b
    :goto_d
    cmp-long v8, v3, v16

    .line 868
    .line 869
    if-eqz v8, :cond_1c

    .line 870
    goto :goto_12

    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    :cond_1c
    const-wide v3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 876
    move v8, v6

    .line 877
    const/4 v6, 0x0

    .line 878
    .line 879
    :goto_e
    aget-char v9, v26, v8

    .line 880
    .line 881
    const/16 v10, 0x5c

    .line 882
    .line 883
    if-ne v9, v10, :cond_1f

    .line 884
    const/4 v11, 0x1

    .line 885
    .line 886
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 887
    .line 888
    add-int/lit8 v9, v8, 0x1

    .line 889
    .line 890
    aget-char v11, v26, v9

    .line 891
    .line 892
    if-eq v11, v7, :cond_1e

    .line 893
    .line 894
    if-eq v11, v5, :cond_1d

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 898
    move-result v8

    .line 899
    .line 900
    :goto_f
    const/16 v25, 0x1

    .line 901
    goto :goto_11

    .line 902
    .line 903
    :cond_1d
    add-int/lit8 v9, v8, 0x2

    .line 904
    .line 905
    aget-char v9, v26, v9

    .line 906
    .line 907
    add-int/lit8 v8, v8, 0x3

    .line 908
    .line 909
    aget-char v11, v26, v8

    .line 910
    .line 911
    .line 912
    invoke-static {v9, v11}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 913
    move-result v9

    .line 914
    .line 915
    :goto_10
    move/from16 v25, v9

    .line 916
    move v9, v8

    .line 917
    .line 918
    move/from16 v8, v25

    .line 919
    goto :goto_f

    .line 920
    .line 921
    :cond_1e
    add-int/lit8 v9, v8, 0x2

    .line 922
    .line 923
    aget-char v9, v26, v9

    .line 924
    .line 925
    add-int/lit8 v11, v8, 0x3

    .line 926
    .line 927
    aget-char v11, v26, v11

    .line 928
    .line 929
    add-int/lit8 v12, v8, 0x4

    .line 930
    .line 931
    aget-char v12, v26, v12

    .line 932
    .line 933
    add-int/lit8 v8, v8, 0x5

    .line 934
    .line 935
    aget-char v13, v26, v8

    .line 936
    .line 937
    .line 938
    invoke-static {v9, v11, v12, v13}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 939
    move-result v9

    .line 940
    goto :goto_10

    .line 941
    .line 942
    :goto_11
    add-int/lit8 v9, v9, 0x1

    .line 943
    int-to-long v11, v8

    .line 944
    xor-long/2addr v3, v11

    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    const-wide v11, 0x100000001b3L

    .line 950
    mul-long/2addr v3, v11

    .line 951
    move v8, v9

    .line 952
    .line 953
    move/from16 v11, v23

    .line 954
    .line 955
    goto/16 :goto_18

    .line 956
    .line 957
    :cond_1f
    const/16 v25, 0x1

    .line 958
    .line 959
    if-ne v9, v2, :cond_27

    .line 960
    .line 961
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 962
    .line 963
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 964
    .line 965
    add-int/lit8 v6, v8, 0x1

    .line 966
    .line 967
    :goto_12
    const/16 v2, 0x1a

    .line 968
    .line 969
    if-ne v6, v1, :cond_20

    .line 970
    move v5, v6

    .line 971
    move v6, v2

    .line 972
    goto :goto_13

    .line 973
    .line 974
    :cond_20
    add-int/lit8 v5, v6, 0x1

    .line 975
    .line 976
    aget-char v6, v26, v6

    .line 977
    .line 978
    :goto_13
    move/from16 v7, v23

    .line 979
    .line 980
    :goto_14
    if-gt v6, v7, :cond_22

    .line 981
    .line 982
    const-wide/16 v7, 0x1

    .line 983
    shl-long/2addr v7, v6

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    const-wide v9, 0x100003701L

    .line 989
    and-long/2addr v7, v9

    .line 990
    .line 991
    cmp-long v7, v7, v16

    .line 992
    .line 993
    if-eqz v7, :cond_22

    .line 994
    .line 995
    if-ne v5, v1, :cond_21

    .line 996
    move v6, v2

    .line 997
    goto :goto_15

    .line 998
    .line 999
    :cond_21
    add-int/lit8 v6, v5, 0x1

    .line 1000
    .line 1001
    aget-char v5, v26, v5

    .line 1002
    .line 1003
    move/from16 v34, v6

    .line 1004
    move v6, v5

    .line 1005
    .line 1006
    move/from16 v5, v34

    .line 1007
    .line 1008
    :goto_15
    const/16 v7, 0x20

    .line 1009
    goto :goto_14

    .line 1010
    .line 1011
    :cond_22
    const/16 v7, 0x3a

    .line 1012
    .line 1013
    if-ne v6, v7, :cond_26

    .line 1014
    .line 1015
    if-ne v5, v1, :cond_23

    .line 1016
    move v6, v5

    .line 1017
    move v5, v2

    .line 1018
    goto :goto_16

    .line 1019
    .line 1020
    :cond_23
    add-int/lit8 v6, v5, 0x1

    .line 1021
    .line 1022
    aget-char v5, v26, v5

    .line 1023
    .line 1024
    :goto_16
    const/16 v11, 0x20

    .line 1025
    .line 1026
    :goto_17
    if-gt v5, v11, :cond_25

    .line 1027
    .line 1028
    const-wide/16 v7, 0x1

    .line 1029
    shl-long/2addr v7, v5

    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    const-wide v9, 0x100003701L

    .line 1035
    and-long/2addr v7, v9

    .line 1036
    .line 1037
    cmp-long v7, v7, v16

    .line 1038
    .line 1039
    if-eqz v7, :cond_25

    .line 1040
    .line 1041
    if-ne v6, v1, :cond_24

    .line 1042
    move v5, v2

    .line 1043
    goto :goto_17

    .line 1044
    .line 1045
    :cond_24
    add-int/lit8 v5, v6, 0x1

    .line 1046
    .line 1047
    aget-char v6, v26, v6

    .line 1048
    .line 1049
    move/from16 v34, v6

    .line 1050
    move v6, v5

    .line 1051
    .line 1052
    move/from16 v5, v34

    .line 1053
    goto :goto_17

    .line 1054
    .line 1055
    :cond_25
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1056
    .line 1057
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 1058
    return-wide v3

    .line 1059
    .line 1060
    :cond_26
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 1061
    .line 1062
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    .line 1067
    const-string v3, "expect \':\', but "

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1077
    move-result-object v2

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    move-result-object v2

    .line 1082
    .line 1083
    .line 1084
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 1085
    throw v1

    .line 1086
    .line 1087
    :cond_27
    move/from16 v11, v23

    .line 1088
    .line 1089
    add-int/lit8 v8, v8, 0x1

    .line 1090
    int-to-long v12, v9

    .line 1091
    xor-long/2addr v3, v12

    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    const-wide v12, 0x100000001b3L

    .line 1097
    mul-long/2addr v3, v12

    .line 1098
    .line 1099
    :goto_18
    add-int/lit8 v6, v6, 0x1

    .line 1100
    .line 1101
    move/from16 v23, v11

    .line 1102
    .line 1103
    goto/16 :goto_e

    .line 1104
    nop

    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
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

.method public readFieldNameHashCodeUnquote()J
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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 10
    .line 11
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 12
    .line 13
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 14
    .line 15
    add-int/lit8 v6, v2, -0x1

    .line 16
    .line 17
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

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
    const/16 v12, 0x5d

    .line 26
    .line 27
    const/16 v13, 0x5b

    .line 28
    .line 29
    const/16 v14, 0xd

    .line 30
    .line 31
    const/16 v15, 0xc

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
    const/16 v1, 0x3a

    .line 41
    .line 42
    const/16 v6, 0x1a

    .line 43
    const/4 v7, 0x1

    .line 44
    .line 45
    if-gt v2, v3, :cond_a

    .line 46
    .line 47
    if-eq v8, v15, :cond_7

    .line 48
    .line 49
    if-eq v8, v14, :cond_7

    .line 50
    .line 51
    if-eq v8, v6, :cond_7

    .line 52
    .line 53
    if-eq v8, v1, :cond_7

    .line 54
    .line 55
    if-eq v8, v13, :cond_7

    .line 56
    .line 57
    if-eq v8, v12, :cond_7

    .line 58
    .line 59
    const/16 v12, 0x7b

    .line 60
    .line 61
    if-eq v8, v12, :cond_7

    .line 62
    .line 63
    const/16 v12, 0x7d

    .line 64
    .line 65
    if-eq v8, v12, :cond_7

    .line 66
    .line 67
    const/16 v12, 0x20

    .line 68
    .line 69
    if-eq v8, v12, :cond_7

    .line 70
    .line 71
    const/16 v12, 0x21

    .line 72
    .line 73
    if-eq v8, v12, :cond_7

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
    const/16 v12, 0x5c

    .line 85
    .line 86
    if-ne v8, v12, :cond_3

    .line 87
    .line 88
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 89
    .line 90
    add-int/lit8 v8, v2, 0x1

    .line 91
    .line 92
    aget-char v13, v4, v2

    .line 93
    .line 94
    const/16 v14, 0x22

    .line 95
    .line 96
    if-eq v13, v14, :cond_2

    .line 97
    .line 98
    if-eq v13, v1, :cond_2

    .line 99
    .line 100
    const/16 v14, 0x40

    .line 101
    .line 102
    if-eq v13, v14, :cond_2

    .line 103
    .line 104
    if-eq v13, v12, :cond_2

    .line 105
    .line 106
    const/16 v12, 0x75

    .line 107
    .line 108
    if-eq v13, v12, :cond_1

    .line 109
    .line 110
    const/16 v12, 0x78

    .line 111
    .line 112
    if-eq v13, v12, :cond_0

    .line 113
    .line 114
    const/16 v2, 0x2a

    .line 115
    .line 116
    if-eq v13, v2, :cond_2

    .line 117
    .line 118
    const/16 v2, 0x2b

    .line 119
    .line 120
    if-eq v13, v2, :cond_2

    .line 121
    .line 122
    .line 123
    packed-switch v13, :pswitch_data_3

    .line 124
    .line 125
    .line 126
    packed-switch v13, :pswitch_data_4

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 130
    move-result v2

    .line 131
    .line 132
    move/from16 v24, v8

    .line 133
    move v8, v2

    .line 134
    .line 135
    move/from16 v2, v24

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_0
    aget-char v8, v4, v8

    .line 139
    .line 140
    add-int/lit8 v12, v2, 0x2

    .line 141
    .line 142
    aget-char v12, v4, v12

    .line 143
    .line 144
    .line 145
    invoke-static {v8, v12}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 146
    move-result v8

    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x3

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_1
    aget-char v8, v4, v8

    .line 152
    .line 153
    add-int/lit8 v12, v2, 0x2

    .line 154
    .line 155
    aget-char v12, v4, v12

    .line 156
    .line 157
    add-int/lit8 v13, v2, 0x3

    .line 158
    .line 159
    aget-char v13, v4, v13

    .line 160
    .line 161
    add-int/lit8 v14, v2, 0x4

    .line 162
    .line 163
    aget-char v14, v4, v14

    .line 164
    .line 165
    .line 166
    invoke-static {v8, v12, v13, v14}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 167
    move-result v8

    .line 168
    .line 169
    add-int/lit8 v2, v2, 0x5

    .line 170
    goto :goto_1

    .line 171
    :cond_2
    :pswitch_0
    move v2, v8

    .line 172
    move v8, v13

    .line 173
    .line 174
    :cond_3
    :goto_1
    const/16 v12, 0xff

    .line 175
    .line 176
    if-gt v8, v12, :cond_6

    .line 177
    .line 178
    const/16 v12, 0x8

    .line 179
    .line 180
    if-ge v9, v12, :cond_6

    .line 181
    .line 182
    if-nez v9, :cond_4

    .line 183
    .line 184
    if-nez v8, :cond_4

    .line 185
    goto :goto_5

    .line 186
    :cond_4
    int-to-byte v1, v8

    .line 187
    .line 188
    .line 189
    packed-switch v9, :pswitch_data_5

    .line 190
    goto :goto_3

    .line 191
    :pswitch_1
    int-to-long v7, v1

    .line 192
    .line 193
    const/16 v1, 0x38

    .line 194
    shl-long/2addr v7, v1

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    const-wide v12, 0xffffffffffffffL

    .line 200
    :goto_2
    and-long/2addr v10, v12

    .line 201
    add-long/2addr v10, v7

    .line 202
    goto :goto_3

    .line 203
    :pswitch_2
    int-to-long v7, v1

    .line 204
    .line 205
    const/16 v1, 0x30

    .line 206
    shl-long/2addr v7, v1

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    const-wide v12, 0xffffffffffffL

    .line 212
    goto :goto_2

    .line 213
    :pswitch_3
    int-to-long v7, v1

    .line 214
    .line 215
    const/16 v1, 0x28

    .line 216
    shl-long/2addr v7, v1

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    const-wide v12, 0xffffffffffL

    .line 222
    goto :goto_2

    .line 223
    :pswitch_4
    int-to-long v7, v1

    .line 224
    .line 225
    const/16 v23, 0x20

    .line 226
    .line 227
    shl-long v7, v7, v23

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    const-wide v12, 0xffffffffL

    .line 233
    goto :goto_2

    .line 234
    .line 235
    :pswitch_5
    shl-int/lit8 v1, v1, 0x18

    .line 236
    int-to-long v7, v1

    .line 237
    .line 238
    .line 239
    const-wide/32 v12, 0xffffff

    .line 240
    goto :goto_2

    .line 241
    .line 242
    :pswitch_6
    shl-int/lit8 v1, v1, 0x10

    .line 243
    int-to-long v7, v1

    .line 244
    .line 245
    .line 246
    const-wide/32 v12, 0xffff

    .line 247
    goto :goto_2

    .line 248
    .line 249
    :pswitch_7
    shl-int/lit8 v1, v1, 0x8

    .line 250
    int-to-long v7, v1

    .line 251
    .line 252
    const-wide/16 v12, 0xff

    .line 253
    goto :goto_2

    .line 254
    :pswitch_8
    int-to-long v10, v1

    .line 255
    .line 256
    :goto_3
    if-ne v2, v3, :cond_5

    .line 257
    move v8, v6

    .line 258
    goto :goto_4

    .line 259
    .line 260
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .line 261
    .line 262
    aget-char v2, v4, v2

    .line 263
    move v8, v2

    .line 264
    move v2, v1

    .line 265
    .line 266
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 267
    const/4 v1, 0x0

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_6
    :goto_5
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 272
    add-int/2addr v2, v7

    .line 273
    .line 274
    move-wide/from16 v10, v16

    .line 275
    goto :goto_7

    .line 276
    .line 277
    :cond_7
    :pswitch_9
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 278
    .line 279
    if-ne v8, v6, :cond_8

    .line 280
    move v5, v2

    .line 281
    goto :goto_6

    .line 282
    .line 283
    :cond_8
    add-int/lit8 v5, v2, -0x1

    .line 284
    .line 285
    :goto_6
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 286
    .line 287
    const/16 v12, 0x20

    .line 288
    .line 289
    if-gt v8, v12, :cond_a

    .line 290
    .line 291
    shl-long v12, v21, v8

    .line 292
    .line 293
    and-long v12, v12, v19

    .line 294
    .line 295
    cmp-long v5, v12, v16

    .line 296
    .line 297
    if-eqz v5, :cond_a

    .line 298
    .line 299
    if-ne v2, v3, :cond_9

    .line 300
    move v5, v6

    .line 301
    goto :goto_7

    .line 302
    .line 303
    :cond_9
    add-int/lit8 v5, v2, 0x1

    .line 304
    .line 305
    aget-char v2, v4, v2

    .line 306
    .line 307
    move/from16 v24, v5

    .line 308
    move v5, v2

    .line 309
    .line 310
    move/from16 v2, v24

    .line 311
    goto :goto_7

    .line 312
    :cond_a
    move v5, v8

    .line 313
    .line 314
    :goto_7
    cmp-long v8, v10, v16

    .line 315
    .line 316
    if-eqz v8, :cond_b

    .line 317
    .line 318
    goto/16 :goto_f

    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :cond_b
    const-wide v8, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 324
    move-wide v10, v8

    .line 325
    move v8, v5

    .line 326
    move v5, v2

    .line 327
    const/4 v2, 0x0

    .line 328
    .line 329
    :goto_8
    const/16 v12, 0x5c

    .line 330
    .line 331
    if-ne v8, v12, :cond_11

    .line 332
    .line 333
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 334
    .line 335
    add-int/lit8 v8, v5, 0x1

    .line 336
    .line 337
    aget-char v9, v4, v5

    .line 338
    .line 339
    const/16 v14, 0x22

    .line 340
    .line 341
    if-eq v9, v14, :cond_e

    .line 342
    .line 343
    if-eq v9, v1, :cond_e

    .line 344
    .line 345
    const/16 v13, 0x40

    .line 346
    .line 347
    if-eq v9, v13, :cond_f

    .line 348
    .line 349
    if-eq v9, v12, :cond_f

    .line 350
    .line 351
    const/16 v7, 0x75

    .line 352
    .line 353
    if-eq v9, v7, :cond_d

    .line 354
    .line 355
    const/16 v7, 0x78

    .line 356
    .line 357
    if-eq v9, v7, :cond_c

    .line 358
    .line 359
    const/16 v5, 0x2a

    .line 360
    .line 361
    if-eq v9, v5, :cond_f

    .line 362
    .line 363
    const/16 v5, 0x2b

    .line 364
    .line 365
    if-eq v9, v5, :cond_f

    .line 366
    .line 367
    .line 368
    packed-switch v9, :pswitch_data_6

    .line 369
    .line 370
    .line 371
    packed-switch v9, :pswitch_data_7

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 375
    move-result v9

    .line 376
    goto :goto_9

    .line 377
    .line 378
    :cond_c
    aget-char v8, v4, v8

    .line 379
    .line 380
    add-int/lit8 v9, v5, 0x2

    .line 381
    .line 382
    aget-char v9, v4, v9

    .line 383
    .line 384
    .line 385
    invoke-static {v8, v9}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 386
    move-result v9

    .line 387
    .line 388
    add-int/lit8 v8, v5, 0x3

    .line 389
    goto :goto_9

    .line 390
    .line 391
    :cond_d
    const/16 v7, 0x78

    .line 392
    .line 393
    aget-char v8, v4, v8

    .line 394
    .line 395
    add-int/lit8 v9, v5, 0x2

    .line 396
    .line 397
    aget-char v9, v4, v9

    .line 398
    .line 399
    add-int/lit8 v18, v5, 0x3

    .line 400
    .line 401
    aget-char v7, v4, v18

    .line 402
    .line 403
    add-int/lit8 v18, v5, 0x4

    .line 404
    .line 405
    aget-char v12, v4, v18

    .line 406
    .line 407
    .line 408
    invoke-static {v8, v9, v7, v12}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 409
    move-result v9

    .line 410
    .line 411
    add-int/lit8 v8, v5, 0x5

    .line 412
    goto :goto_9

    .line 413
    .line 414
    :cond_e
    const/16 v13, 0x40

    .line 415
    :cond_f
    :goto_9
    :pswitch_a
    int-to-long v13, v9

    .line 416
    xor-long/2addr v10, v13

    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    const-wide v12, 0x100000001b3L

    .line 422
    mul-long/2addr v10, v12

    .line 423
    .line 424
    if-ne v8, v3, :cond_10

    .line 425
    move v5, v8

    .line 426
    move v8, v6

    .line 427
    goto :goto_a

    .line 428
    .line 429
    :cond_10
    add-int/lit8 v5, v8, 0x1

    .line 430
    .line 431
    aget-char v8, v4, v8

    .line 432
    .line 433
    :goto_a
    const/16 v9, 0xd

    .line 434
    .line 435
    const/16 v12, 0x5b

    .line 436
    .line 437
    const/16 v13, 0x5d

    .line 438
    .line 439
    const/16 v14, 0x7b

    .line 440
    goto :goto_c

    .line 441
    .line 442
    :cond_11
    if-eq v8, v15, :cond_13

    .line 443
    .line 444
    const/16 v9, 0xd

    .line 445
    .line 446
    if-eq v8, v9, :cond_13

    .line 447
    .line 448
    if-eq v8, v6, :cond_13

    .line 449
    .line 450
    if-eq v8, v1, :cond_13

    .line 451
    .line 452
    const/16 v12, 0x5b

    .line 453
    .line 454
    if-eq v8, v12, :cond_13

    .line 455
    .line 456
    const/16 v13, 0x5d

    .line 457
    .line 458
    if-eq v8, v13, :cond_13

    .line 459
    .line 460
    const/16 v14, 0x7b

    .line 461
    .line 462
    if-eq v8, v14, :cond_13

    .line 463
    .line 464
    const/16 v7, 0x7d

    .line 465
    .line 466
    if-eq v8, v7, :cond_13

    .line 467
    .line 468
    const/16 v7, 0x20

    .line 469
    .line 470
    if-eq v8, v7, :cond_13

    .line 471
    .line 472
    const/16 v7, 0x21

    .line 473
    .line 474
    if-eq v8, v7, :cond_13

    .line 475
    .line 476
    .line 477
    packed-switch v8, :pswitch_data_8

    .line 478
    .line 479
    .line 480
    packed-switch v8, :pswitch_data_9

    .line 481
    .line 482
    .line 483
    packed-switch v8, :pswitch_data_a

    .line 484
    int-to-long v7, v8

    .line 485
    xor-long/2addr v7, v10

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    const-wide v10, 0x100000001b3L

    .line 491
    mul-long/2addr v7, v10

    .line 492
    .line 493
    if-ne v5, v3, :cond_12

    .line 494
    move v10, v5

    .line 495
    move v5, v6

    .line 496
    goto :goto_b

    .line 497
    .line 498
    :cond_12
    add-int/lit8 v10, v5, 0x1

    .line 499
    .line 500
    aget-char v5, v4, v5

    .line 501
    .line 502
    :goto_b
    move-wide/from16 v24, v7

    .line 503
    move v8, v5

    .line 504
    move v5, v10

    .line 505
    .line 506
    move-wide/from16 v10, v24

    .line 507
    .line 508
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 509
    const/4 v7, 0x1

    .line 510
    .line 511
    goto/16 :goto_8

    .line 512
    .line 513
    :cond_13
    :pswitch_b
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 514
    .line 515
    if-ne v8, v6, :cond_14

    .line 516
    move v2, v5

    .line 517
    goto :goto_d

    .line 518
    .line 519
    :cond_14
    add-int/lit8 v2, v5, -0x1

    .line 520
    .line 521
    :goto_d
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 522
    move v2, v5

    .line 523
    move v5, v8

    .line 524
    .line 525
    :goto_e
    const/16 v12, 0x20

    .line 526
    .line 527
    if-gt v5, v12, :cond_16

    .line 528
    .line 529
    shl-long v7, v21, v5

    .line 530
    .line 531
    and-long v7, v7, v19

    .line 532
    .line 533
    cmp-long v7, v7, v16

    .line 534
    .line 535
    if-eqz v7, :cond_16

    .line 536
    .line 537
    if-ne v2, v3, :cond_15

    .line 538
    move v5, v6

    .line 539
    goto :goto_e

    .line 540
    .line 541
    :cond_15
    add-int/lit8 v5, v2, 0x1

    .line 542
    .line 543
    aget-char v2, v4, v2

    .line 544
    .line 545
    move/from16 v24, v5

    .line 546
    move v5, v2

    .line 547
    .line 548
    move/from16 v2, v24

    .line 549
    goto :goto_e

    .line 550
    .line 551
    :cond_16
    :goto_f
    if-ne v5, v1, :cond_19

    .line 552
    .line 553
    if-ne v2, v3, :cond_17

    .line 554
    move v1, v2

    .line 555
    move v2, v6

    .line 556
    goto :goto_10

    .line 557
    .line 558
    :cond_17
    add-int/lit8 v1, v2, 0x1

    .line 559
    .line 560
    aget-char v2, v4, v2

    .line 561
    :goto_10
    move v5, v2

    .line 562
    .line 563
    const/16 v12, 0x20

    .line 564
    :goto_11
    move v2, v1

    .line 565
    .line 566
    :goto_12
    if-gt v5, v12, :cond_19

    .line 567
    .line 568
    shl-long v7, v21, v5

    .line 569
    .line 570
    and-long v7, v7, v19

    .line 571
    .line 572
    cmp-long v1, v7, v16

    .line 573
    .line 574
    if-eqz v1, :cond_19

    .line 575
    .line 576
    if-ne v2, v3, :cond_18

    .line 577
    move v5, v6

    .line 578
    goto :goto_12

    .line 579
    .line 580
    :cond_18
    add-int/lit8 v1, v2, 0x1

    .line 581
    .line 582
    aget-char v2, v4, v2

    .line 583
    move v5, v2

    .line 584
    goto :goto_11

    .line 585
    .line 586
    :cond_19
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 587
    .line 588
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 589
    return-wide v10

    .line 590
    nop

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
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

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
    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
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
    .line 667
    .line 668
    .line 669
    .line 670
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

    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    :pswitch_data_6
    .packed-switch 0x2d
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

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
    :pswitch_data_7
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    :pswitch_data_8
    .packed-switch 0x8
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
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
    .line 717
    .line 718
    .line 719
    .line 720
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

    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    :pswitch_data_a
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public readFloatValue()F
    .locals 32

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 11
    .line 12
    const/16 v5, 0x22

    .line 13
    .line 14
    if-eq v2, v5, :cond_1

    .line 15
    .line 16
    const/16 v5, 0x27

    .line 17
    .line 18
    if-ne v2, v5, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v5, v3

    .line 21
    move v3, v2

    .line 22
    const/4 v2, 0x0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    :goto_0
    if-ne v3, v4, :cond_2

    .line 26
    move v5, v3

    .line 27
    .line 28
    const/16 v3, 0x1a

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_2
    add-int/lit8 v5, v3, 0x1

    .line 32
    .line 33
    aget-char v3, v1, v3

    .line 34
    .line 35
    :goto_1
    const/16 v8, 0x2c

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-ne v3, v2, :cond_4

    .line 40
    .line 41
    if-ne v5, v4, :cond_3

    .line 42
    .line 43
    const/16 v3, 0x1a

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_3
    add-int/lit8 v2, v5, 0x1

    .line 47
    .line 48
    aget-char v3, v1, v5

    .line 49
    move v5, v2

    .line 50
    .line 51
    :goto_2
    const-wide/16 v11, 0x0

    .line 52
    const/4 v13, 0x1

    .line 53
    const/4 v14, 0x0

    .line 54
    .line 55
    const-wide/16 v16, 0x1

    .line 56
    .line 57
    const-wide/16 v18, 0x0

    .line 58
    .line 59
    goto/16 :goto_19

    .line 60
    .line 61
    :cond_4
    const/16 v15, 0x2b

    .line 62
    .line 63
    const/16 v6, 0x2d

    .line 64
    .line 65
    const/16 v7, 0x39

    .line 66
    .line 67
    const-wide/16 v16, 0x1

    .line 68
    .line 69
    const/16 v9, 0x30

    .line 70
    .line 71
    if-lt v3, v9, :cond_5

    .line 72
    .line 73
    if-gt v3, v7, :cond_5

    .line 74
    .line 75
    rsub-int/lit8 v10, v3, 0x30

    .line 76
    .line 77
    const-wide/16 v18, 0x0

    .line 78
    int-to-long v11, v10

    .line 79
    goto :goto_3

    .line 80
    .line 81
    :cond_5
    const-wide/16 v18, 0x0

    .line 82
    .line 83
    if-eq v3, v6, :cond_6

    .line 84
    .line 85
    if-ne v3, v15, :cond_7

    .line 86
    .line 87
    :cond_6
    move-wide/from16 v11, v18

    .line 88
    .line 89
    :goto_3
    cmp-long v10, v11, v18

    .line 90
    .line 91
    const-wide/16 v20, 0x64

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    const-wide v22, -0x147ae147ae147aeL

    .line 97
    const/4 v13, -0x1

    .line 98
    .line 99
    if-gtz v10, :cond_8

    .line 100
    .line 101
    const/16 v24, 0x0

    .line 102
    .line 103
    add-int/lit8 v14, v5, 0x1

    .line 104
    .line 105
    if-ge v14, v4, :cond_9

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([CI)I

    .line 109
    move-result v14

    .line 110
    .line 111
    if-eq v14, v13, :cond_9

    .line 112
    .line 113
    cmp-long v10, v22, v11

    .line 114
    .line 115
    if-gtz v10, :cond_7

    .line 116
    .line 117
    mul-long v11, v11, v20

    .line 118
    int-to-long v13, v14

    .line 119
    sub-long/2addr v11, v13

    .line 120
    .line 121
    add-int/lit8 v5, v5, 0x2

    .line 122
    goto :goto_3

    .line 123
    .line 124
    :cond_7
    move-wide/from16 v11, v16

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_8
    const/16 v24, 0x0

    .line 128
    .line 129
    :cond_9
    const-wide/16 v25, 0x30

    .line 130
    .line 131
    const-wide/16 v27, 0xa

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    const-wide v29, -0xcccccccccccccccL

    .line 137
    .line 138
    if-gtz v10, :cond_b

    .line 139
    .line 140
    if-ge v5, v4, :cond_b

    .line 141
    .line 142
    aget-char v10, v1, v5

    .line 143
    .line 144
    if-lt v10, v9, :cond_c

    .line 145
    .line 146
    if-gt v10, v7, :cond_c

    .line 147
    .line 148
    cmp-long v14, v29, v11

    .line 149
    .line 150
    if-gtz v14, :cond_a

    .line 151
    .line 152
    mul-long v11, v11, v27

    .line 153
    .line 154
    add-long v11, v11, v25

    .line 155
    int-to-long v6, v10

    .line 156
    sub-long/2addr v11, v6

    .line 157
    .line 158
    add-int/lit8 v5, v5, 0x1

    .line 159
    goto :goto_4

    .line 160
    .line 161
    :cond_a
    move-wide/from16 v11, v16

    .line 162
    goto :goto_4

    .line 163
    :cond_b
    move v10, v3

    .line 164
    .line 165
    :cond_c
    :goto_4
    cmp-long v6, v11, v18

    .line 166
    .line 167
    if-gtz v6, :cond_10

    .line 168
    .line 169
    if-ge v5, v4, :cond_10

    .line 170
    .line 171
    aget-char v6, v1, v5

    .line 172
    .line 173
    const/16 v7, 0x2e

    .line 174
    .line 175
    if-ne v6, v7, :cond_10

    .line 176
    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 178
    const/4 v6, 0x0

    .line 179
    .line 180
    :goto_5
    cmp-long v7, v11, v18

    .line 181
    .line 182
    if-gtz v7, :cond_e

    .line 183
    .line 184
    add-int/lit8 v14, v5, 0x1

    .line 185
    .line 186
    if-ge v14, v4, :cond_e

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([CI)I

    .line 190
    move-result v14

    .line 191
    .line 192
    if-eq v14, v13, :cond_e

    .line 193
    .line 194
    cmp-long v7, v22, v11

    .line 195
    .line 196
    if-gtz v7, :cond_d

    .line 197
    .line 198
    mul-long v11, v11, v20

    .line 199
    int-to-long v13, v14

    .line 200
    sub-long/2addr v11, v13

    .line 201
    .line 202
    add-int/lit8 v5, v5, 0x2

    .line 203
    .line 204
    add-int/lit8 v6, v6, 0x2

    .line 205
    const/4 v13, -0x1

    .line 206
    goto :goto_5

    .line 207
    .line 208
    :cond_d
    move-wide/from16 v11, v16

    .line 209
    goto :goto_5

    .line 210
    .line 211
    :cond_e
    if-gtz v7, :cond_11

    .line 212
    .line 213
    if-ge v5, v4, :cond_11

    .line 214
    .line 215
    aget-char v10, v1, v5

    .line 216
    .line 217
    if-lt v10, v9, :cond_11

    .line 218
    .line 219
    const/16 v7, 0x39

    .line 220
    .line 221
    if-gt v10, v7, :cond_11

    .line 222
    .line 223
    cmp-long v7, v29, v11

    .line 224
    .line 225
    if-gtz v7, :cond_f

    .line 226
    .line 227
    mul-long v11, v11, v27

    .line 228
    .line 229
    add-long v11, v11, v25

    .line 230
    int-to-long v13, v10

    .line 231
    sub-long/2addr v11, v13

    .line 232
    .line 233
    add-int/lit8 v5, v5, 0x1

    .line 234
    .line 235
    add-int/lit8 v6, v6, 0x1

    .line 236
    goto :goto_6

    .line 237
    .line 238
    :cond_f
    move-wide/from16 v11, v16

    .line 239
    goto :goto_6

    .line 240
    :cond_10
    const/4 v6, 0x0

    .line 241
    .line 242
    :cond_11
    :goto_6
    cmp-long v7, v11, v18

    .line 243
    .line 244
    if-gtz v7, :cond_13

    .line 245
    .line 246
    if-ne v5, v4, :cond_12

    .line 247
    .line 248
    const/16 v10, 0x1a

    .line 249
    goto :goto_7

    .line 250
    .line 251
    :cond_12
    add-int/lit8 v10, v5, 0x1

    .line 252
    .line 253
    aget-char v5, v1, v5

    .line 254
    .line 255
    move/from16 v31, v10

    .line 256
    move v10, v5

    .line 257
    .line 258
    move/from16 v5, v31

    .line 259
    .line 260
    :cond_13
    :goto_7
    if-gtz v7, :cond_23

    .line 261
    .line 262
    const/16 v7, 0x65

    .line 263
    .line 264
    if-eq v10, v7, :cond_17

    .line 265
    .line 266
    const/16 v7, 0x45

    .line 267
    .line 268
    if-ne v10, v7, :cond_14

    .line 269
    goto :goto_8

    .line 270
    .line 271
    :cond_14
    const/16 v7, 0x4c

    .line 272
    .line 273
    if-eq v10, v7, :cond_15

    .line 274
    .line 275
    const/16 v7, 0x46

    .line 276
    .line 277
    if-eq v10, v7, :cond_15

    .line 278
    .line 279
    const/16 v7, 0x44

    .line 280
    .line 281
    if-eq v10, v7, :cond_15

    .line 282
    .line 283
    const/16 v7, 0x42

    .line 284
    .line 285
    if-eq v10, v7, :cond_15

    .line 286
    .line 287
    const/16 v7, 0x53

    .line 288
    .line 289
    if-ne v10, v7, :cond_23

    .line 290
    .line 291
    :cond_15
    if-ne v5, v4, :cond_16

    .line 292
    .line 293
    const/16 v10, 0x1a

    .line 294
    .line 295
    goto/16 :goto_10

    .line 296
    .line 297
    :cond_16
    add-int/lit8 v7, v5, 0x1

    .line 298
    .line 299
    aget-char v5, v1, v5

    .line 300
    move v10, v5

    .line 301
    move v5, v7

    .line 302
    .line 303
    goto/16 :goto_10

    .line 304
    .line 305
    :cond_17
    :goto_8
    if-ne v5, v4, :cond_18

    .line 306
    move v7, v5

    .line 307
    .line 308
    const/16 v5, 0x1a

    .line 309
    .line 310
    :goto_9
    const/16 v14, 0x2d

    .line 311
    goto :goto_a

    .line 312
    .line 313
    :cond_18
    add-int/lit8 v7, v5, 0x1

    .line 314
    .line 315
    aget-char v5, v1, v5

    .line 316
    goto :goto_9

    .line 317
    .line 318
    :goto_a
    if-ne v5, v14, :cond_19

    .line 319
    const/4 v10, 0x1

    .line 320
    goto :goto_b

    .line 321
    :cond_19
    const/4 v10, 0x0

    .line 322
    .line 323
    :goto_b
    if-nez v10, :cond_1c

    .line 324
    .line 325
    if-ne v5, v15, :cond_1a

    .line 326
    goto :goto_c

    .line 327
    .line 328
    :cond_1a
    if-eq v5, v8, :cond_1b

    .line 329
    goto :goto_d

    .line 330
    .line 331
    .line 332
    :cond_1b
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->numberError()Lcom/alibaba/fastjson2/JSONException;

    .line 333
    move-result-object v1

    .line 334
    throw v1

    .line 335
    .line 336
    :cond_1c
    :goto_c
    if-ne v7, v4, :cond_1d

    .line 337
    .line 338
    const/16 v5, 0x1a

    .line 339
    goto :goto_d

    .line 340
    .line 341
    :cond_1d
    add-int/lit8 v5, v7, 0x1

    .line 342
    .line 343
    aget-char v7, v1, v7

    .line 344
    .line 345
    move/from16 v31, v7

    .line 346
    move v7, v5

    .line 347
    .line 348
    move/from16 v5, v31

    .line 349
    .line 350
    :goto_d
    if-lt v5, v9, :cond_22

    .line 351
    .line 352
    const/16 v13, 0x39

    .line 353
    .line 354
    if-gt v5, v13, :cond_22

    .line 355
    .line 356
    add-int/lit8 v5, v5, -0x30

    .line 357
    .line 358
    :goto_e
    if-ge v7, v4, :cond_1f

    .line 359
    .line 360
    aget-char v15, v1, v7

    .line 361
    .line 362
    if-lt v15, v9, :cond_1f

    .line 363
    .line 364
    if-gt v15, v13, :cond_1f

    .line 365
    .line 366
    add-int/lit8 v15, v15, -0x30

    .line 367
    .line 368
    mul-int/lit8 v5, v5, 0xa

    .line 369
    add-int/2addr v5, v15

    .line 370
    .line 371
    const/16 v15, 0x7ff

    .line 372
    .line 373
    if-gt v5, v15, :cond_1e

    .line 374
    .line 375
    add-int/lit8 v7, v7, 0x1

    .line 376
    goto :goto_e

    .line 377
    .line 378
    :cond_1e
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 379
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    const-string v3, "too large exp value : "

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object v2

    .line 396
    .line 397
    .line 398
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 399
    throw v1

    .line 400
    .line 401
    :cond_1f
    if-eqz v10, :cond_20

    .line 402
    neg-int v5, v5

    .line 403
    :cond_20
    sub-int/2addr v6, v5

    .line 404
    .line 405
    if-ne v7, v4, :cond_21

    .line 406
    move v5, v7

    .line 407
    .line 408
    const/16 v7, 0x1a

    .line 409
    goto :goto_f

    .line 410
    .line 411
    :cond_21
    add-int/lit8 v5, v7, 0x1

    .line 412
    .line 413
    aget-char v7, v1, v7

    .line 414
    :goto_f
    move v10, v7

    .line 415
    goto :goto_10

    .line 416
    :cond_22
    move v10, v5

    .line 417
    move v5, v7

    .line 418
    .line 419
    move-wide/from16 v11, v16

    .line 420
    .line 421
    :cond_23
    :goto_10
    cmp-long v7, v11, v18

    .line 422
    .line 423
    if-gtz v7, :cond_26

    .line 424
    .line 425
    if-eqz v2, :cond_26

    .line 426
    .line 427
    if-ne v10, v2, :cond_25

    .line 428
    .line 429
    if-ne v5, v4, :cond_24

    .line 430
    move v2, v5

    .line 431
    .line 432
    const/16 v5, 0x1a

    .line 433
    goto :goto_11

    .line 434
    .line 435
    :cond_24
    add-int/lit8 v2, v5, 0x1

    .line 436
    .line 437
    aget-char v5, v1, v5

    .line 438
    :goto_11
    move v10, v5

    .line 439
    move v5, v2

    .line 440
    goto :goto_12

    .line 441
    .line 442
    :cond_25
    move-wide/from16 v11, v16

    .line 443
    .line 444
    :cond_26
    :goto_12
    cmp-long v2, v11, v18

    .line 445
    .line 446
    if-gtz v2, :cond_2f

    .line 447
    .line 448
    if-nez v6, :cond_27

    .line 449
    long-to-float v7, v11

    .line 450
    :goto_13
    const/4 v9, 0x1

    .line 451
    goto :goto_14

    .line 452
    :cond_27
    long-to-float v7, v11

    .line 453
    float-to-long v14, v7

    .line 454
    .line 455
    cmp-long v9, v14, v11

    .line 456
    .line 457
    if-nez v9, :cond_29

    .line 458
    .line 459
    if-lez v6, :cond_28

    .line 460
    .line 461
    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->FLOAT_10_POW:[F

    .line 462
    array-length v13, v9

    .line 463
    .line 464
    if-ge v6, v13, :cond_28

    .line 465
    .line 466
    aget v9, v9, v6

    .line 467
    div-float/2addr v7, v9

    .line 468
    goto :goto_13

    .line 469
    .line 470
    :cond_28
    if-gez v6, :cond_29

    .line 471
    .line 472
    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->FLOAT_10_POW:[F

    .line 473
    array-length v13, v9

    .line 474
    neg-int v13, v13

    .line 475
    .line 476
    if-le v6, v13, :cond_29

    .line 477
    neg-int v13, v6

    .line 478
    .line 479
    aget v9, v9, v13

    .line 480
    mul-float/2addr v7, v9

    .line 481
    goto :goto_13

    .line 482
    .line 483
    :cond_29
    move/from16 v7, v24

    .line 484
    const/4 v9, 0x0

    .line 485
    .line 486
    :goto_14
    if-nez v9, :cond_2c

    .line 487
    .line 488
    const/16 v2, -0x80

    .line 489
    .line 490
    if-le v6, v2, :cond_2b

    .line 491
    .line 492
    const/16 v2, 0x80

    .line 493
    .line 494
    if-ge v6, v2, :cond_2b

    .line 495
    .line 496
    const/16 v14, 0x2d

    .line 497
    .line 498
    if-ne v3, v14, :cond_2a

    .line 499
    const/4 v13, -0x1

    .line 500
    goto :goto_15

    .line 501
    :cond_2a
    const/4 v13, 0x1

    .line 502
    .line 503
    .line 504
    :goto_15
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 505
    move-result-wide v2

    .line 506
    .line 507
    .line 508
    invoke-static {v13, v2, v3, v6}, Lcom/alibaba/fastjson2/util/TypeUtils;->floatValue(IJI)F

    .line 509
    move-result v14

    .line 510
    :goto_16
    move v3, v10

    .line 511
    :goto_17
    const/4 v13, 0x0

    .line 512
    goto :goto_19

    .line 513
    :cond_2b
    move v14, v7

    .line 514
    move v3, v10

    .line 515
    .line 516
    move-wide/from16 v11, v16

    .line 517
    goto :goto_17

    .line 518
    .line 519
    :cond_2c
    const/16 v14, 0x2d

    .line 520
    .line 521
    if-eq v3, v14, :cond_2d

    .line 522
    .line 523
    cmpl-float v2, v7, v24

    .line 524
    .line 525
    if-eqz v2, :cond_2e

    .line 526
    :goto_18
    neg-float v14, v7

    .line 527
    goto :goto_16

    .line 528
    .line 529
    :cond_2d
    if-nez v2, :cond_2e

    .line 530
    goto :goto_18

    .line 531
    :cond_2e
    move v14, v7

    .line 532
    goto :goto_16

    .line 533
    :cond_2f
    move v3, v10

    .line 534
    .line 535
    move/from16 v14, v24

    .line 536
    goto :goto_17

    .line 537
    .line 538
    :goto_19
    cmp-long v2, v11, v18

    .line 539
    .line 540
    if-lez v2, :cond_30

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readNumber0()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getFloatValue()F

    .line 547
    move-result v1

    .line 548
    return v1

    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    :cond_30
    :goto_1a
    const-wide v6, 0x100003701L

    .line 554
    .line 555
    const/16 v2, 0x20

    .line 556
    .line 557
    if-gt v3, v2, :cond_32

    .line 558
    .line 559
    shl-long v9, v16, v3

    .line 560
    and-long/2addr v9, v6

    .line 561
    .line 562
    cmp-long v9, v9, v18

    .line 563
    .line 564
    if-eqz v9, :cond_32

    .line 565
    .line 566
    if-ne v5, v4, :cond_31

    .line 567
    .line 568
    const/16 v3, 0x1a

    .line 569
    goto :goto_1a

    .line 570
    .line 571
    :cond_31
    add-int/lit8 v2, v5, 0x1

    .line 572
    .line 573
    aget-char v3, v1, v5

    .line 574
    move v5, v2

    .line 575
    goto :goto_1a

    .line 576
    .line 577
    :cond_32
    if-ne v3, v8, :cond_33

    .line 578
    const/4 v8, 0x1

    .line 579
    goto :goto_1b

    .line 580
    :cond_33
    const/4 v8, 0x0

    .line 581
    .line 582
    :goto_1b
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 583
    .line 584
    if-eqz v8, :cond_36

    .line 585
    .line 586
    if-ne v5, v4, :cond_34

    .line 587
    move v3, v5

    .line 588
    .line 589
    const/16 v5, 0x1a

    .line 590
    goto :goto_1c

    .line 591
    .line 592
    :cond_34
    add-int/lit8 v3, v5, 0x1

    .line 593
    .line 594
    aget-char v5, v1, v5

    .line 595
    .line 596
    :goto_1c
    move/from16 v31, v5

    .line 597
    move v5, v3

    .line 598
    .line 599
    move/from16 v3, v31

    .line 600
    .line 601
    :goto_1d
    if-gt v3, v2, :cond_36

    .line 602
    .line 603
    shl-long v8, v16, v3

    .line 604
    and-long/2addr v8, v6

    .line 605
    .line 606
    cmp-long v8, v8, v18

    .line 607
    .line 608
    if-eqz v8, :cond_36

    .line 609
    .line 610
    if-ne v5, v4, :cond_35

    .line 611
    .line 612
    const/16 v3, 0x1a

    .line 613
    goto :goto_1d

    .line 614
    .line 615
    :cond_35
    add-int/lit8 v3, v5, 0x1

    .line 616
    .line 617
    aget-char v5, v1, v5

    .line 618
    goto :goto_1c

    .line 619
    .line 620
    :cond_36
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 621
    int-to-char v1, v3

    .line 622
    .line 623
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 624
    .line 625
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 626
    return v14
.end method

.method public readHex()[B
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 9
    .line 10
    const/16 v4, 0x78

    .line 11
    .line 12
    const/16 v5, 0x1a

    .line 13
    .line 14
    if-ne v1, v4, :cond_1

    .line 15
    .line 16
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 17
    .line 18
    if-ne v2, v1, :cond_0

    .line 19
    move v1, v5

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .line 23
    .line 24
    aget-char v2, v3, v2

    .line 25
    .line 26
    move/from16 v17, v2

    .line 27
    move v2, v1

    .line 28
    .line 29
    move/from16 v1, v17

    .line 30
    .line 31
    :cond_1
    :goto_0
    const/16 v4, 0x27

    .line 32
    .line 33
    if-eq v1, v4, :cond_3

    .line 34
    .line 35
    const/16 v4, 0x22

    .line 36
    .line 37
    if-ne v1, v4, :cond_2

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 42
    move-result-object v1

    .line 43
    throw v1

    .line 44
    .line 45
    :cond_3
    :goto_1
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 46
    .line 47
    if-ne v2, v4, :cond_4

    .line 48
    move v4, v2

    .line 49
    :goto_2
    move v6, v5

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_4
    add-int/lit8 v4, v2, 0x1

    .line 53
    .line 54
    aget-char v6, v3, v2

    .line 55
    .line 56
    :goto_3
    const/16 v7, 0x39

    .line 57
    .line 58
    const/16 v8, 0x30

    .line 59
    .line 60
    if-lt v6, v8, :cond_5

    .line 61
    .line 62
    if-le v6, v7, :cond_6

    .line 63
    .line 64
    :cond_5
    const/16 v9, 0x41

    .line 65
    .line 66
    if-lt v6, v9, :cond_8

    .line 67
    .line 68
    const/16 v9, 0x46

    .line 69
    .line 70
    if-gt v6, v9, :cond_8

    .line 71
    .line 72
    :cond_6
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 73
    .line 74
    if-ne v4, v6, :cond_7

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_7
    add-int/lit8 v6, v4, 0x1

    .line 78
    .line 79
    aget-char v4, v3, v4

    .line 80
    .line 81
    move/from16 v17, v6

    .line 82
    move v6, v4

    .line 83
    .line 84
    move/from16 v4, v17

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_8
    if-ne v6, v1, :cond_17

    .line 88
    .line 89
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 90
    .line 91
    if-ne v4, v1, :cond_9

    .line 92
    move v1, v4

    .line 93
    move v4, v5

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_9
    add-int/lit8 v1, v4, 0x1

    .line 97
    .line 98
    aget-char v4, v3, v4

    .line 99
    .line 100
    :goto_4
    sub-int v6, v1, v2

    .line 101
    .line 102
    add-int/lit8 v9, v6, -0x2

    .line 103
    const/4 v10, 0x1

    .line 104
    .line 105
    if-ne v4, v5, :cond_a

    .line 106
    .line 107
    add-int/lit8 v9, v6, -0x1

    .line 108
    .line 109
    :cond_a
    rem-int/lit8 v6, v9, 0x2

    .line 110
    .line 111
    if-nez v6, :cond_16

    .line 112
    .line 113
    div-int/lit8 v9, v9, 0x2

    .line 114
    .line 115
    new-array v6, v9, [B

    .line 116
    const/4 v11, 0x0

    .line 117
    .line 118
    :goto_5
    if-ge v11, v9, :cond_d

    .line 119
    .line 120
    mul-int/lit8 v12, v11, 0x2

    .line 121
    add-int/2addr v12, v2

    .line 122
    .line 123
    aget-char v13, v3, v12

    .line 124
    add-int/2addr v12, v10

    .line 125
    .line 126
    aget-char v12, v3, v12

    .line 127
    .line 128
    const/16 v14, 0x37

    .line 129
    .line 130
    if-gt v13, v7, :cond_b

    .line 131
    move v15, v8

    .line 132
    goto :goto_6

    .line 133
    :cond_b
    move v15, v14

    .line 134
    :goto_6
    sub-int/2addr v13, v15

    .line 135
    .line 136
    if-gt v12, v7, :cond_c

    .line 137
    move v14, v8

    .line 138
    :cond_c
    sub-int/2addr v12, v14

    .line 139
    .line 140
    shl-int/lit8 v13, v13, 0x4

    .line 141
    or-int/2addr v12, v13

    .line 142
    int-to-byte v12, v12

    .line 143
    .line 144
    aput-byte v12, v6, v11

    .line 145
    .line 146
    add-int/lit8 v11, v11, 0x1

    .line 147
    goto :goto_5

    .line 148
    .line 149
    :cond_d
    :goto_7
    const-wide/16 v7, 0x0

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    const-wide v11, 0x100003701L

    .line 155
    .line 156
    const-wide/16 v13, 0x1

    .line 157
    .line 158
    const/16 v2, 0x20

    .line 159
    .line 160
    if-gt v4, v2, :cond_f

    .line 161
    .line 162
    shl-long v15, v13, v4

    .line 163
    and-long/2addr v15, v11

    .line 164
    .line 165
    cmp-long v9, v15, v7

    .line 166
    .line 167
    if-eqz v9, :cond_f

    .line 168
    .line 169
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 170
    .line 171
    if-ne v1, v2, :cond_e

    .line 172
    move v4, v5

    .line 173
    goto :goto_7

    .line 174
    .line 175
    :cond_e
    add-int/lit8 v2, v1, 0x1

    .line 176
    .line 177
    aget-char v1, v3, v1

    .line 178
    move v4, v1

    .line 179
    move v1, v2

    .line 180
    goto :goto_7

    .line 181
    .line 182
    :cond_f
    const/16 v9, 0x2c

    .line 183
    .line 184
    if-ne v4, v9, :cond_15

    .line 185
    .line 186
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 187
    .line 188
    if-lt v1, v9, :cond_10

    .line 189
    goto :goto_a

    .line 190
    .line 191
    :cond_10
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 192
    .line 193
    if-ne v1, v9, :cond_11

    .line 194
    move v4, v1

    .line 195
    :goto_8
    move v1, v5

    .line 196
    goto :goto_9

    .line 197
    .line 198
    :cond_11
    add-int/lit8 v4, v1, 0x1

    .line 199
    .line 200
    aget-char v1, v3, v1

    .line 201
    .line 202
    :goto_9
    if-gt v1, v2, :cond_13

    .line 203
    .line 204
    shl-long v9, v13, v1

    .line 205
    and-long/2addr v9, v11

    .line 206
    .line 207
    cmp-long v9, v9, v7

    .line 208
    .line 209
    if-eqz v9, :cond_13

    .line 210
    .line 211
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 212
    .line 213
    if-ne v4, v1, :cond_12

    .line 214
    goto :goto_8

    .line 215
    .line 216
    :cond_12
    add-int/lit8 v1, v4, 0x1

    .line 217
    .line 218
    aget-char v4, v3, v4

    .line 219
    .line 220
    move/from16 v17, v4

    .line 221
    move v4, v1

    .line 222
    .line 223
    move/from16 v1, v17

    .line 224
    goto :goto_9

    .line 225
    .line 226
    :cond_13
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 227
    .line 228
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 229
    .line 230
    const/16 v2, 0x2f

    .line 231
    .line 232
    if-ne v1, v2, :cond_14

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 236
    :cond_14
    return-object v6

    .line 237
    .line 238
    :cond_15
    :goto_a
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 239
    .line 240
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 241
    return-object v6

    .line 242
    .line 243
    .line 244
    :cond_16
    invoke-static {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 245
    move-result-object v1

    .line 246
    throw v1

    .line 247
    .line 248
    .line 249
    :cond_17
    invoke-static {v4, v6}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 250
    move-result-object v1

    .line 251
    throw v1
.end method

.method public readIfNull()Z
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 9
    .line 10
    const/16 v4, 0x6e

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    if-ne v3, v4, :cond_7

    .line 14
    .line 15
    aget-char v3, v1, v2

    .line 16
    .line 17
    const/16 v4, 0x75

    .line 18
    .line 19
    if-ne v3, v4, :cond_7

    .line 20
    .line 21
    add-int/lit8 v3, v2, 0x1

    .line 22
    .line 23
    aget-char v3, v1, v3

    .line 24
    .line 25
    const/16 v4, 0x6c

    .line 26
    .line 27
    if-ne v3, v4, :cond_7

    .line 28
    .line 29
    add-int/lit8 v3, v2, 0x2

    .line 30
    .line 31
    aget-char v3, v1, v3

    .line 32
    .line 33
    if-ne v3, v4, :cond_7

    .line 34
    .line 35
    add-int/lit8 v3, v2, 0x3

    .line 36
    .line 37
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 38
    .line 39
    const/16 v6, 0x1a

    .line 40
    .line 41
    if-ne v3, v4, :cond_0

    .line 42
    move v3, v6

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    aget-char v3, v1, v3

    .line 46
    .line 47
    :goto_0
    add-int/lit8 v2, v2, 0x4

    .line 48
    .line 49
    :goto_1
    const-wide/16 v7, 0x0

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide v9, 0x100003701L

    .line 55
    .line 56
    const-wide/16 v11, 0x1

    .line 57
    .line 58
    const/16 v4, 0x20

    .line 59
    .line 60
    if-gt v3, v4, :cond_2

    .line 61
    .line 62
    shl-long v13, v11, v3

    .line 63
    and-long/2addr v13, v9

    .line 64
    .line 65
    cmp-long v13, v13, v7

    .line 66
    .line 67
    if-eqz v13, :cond_2

    .line 68
    .line 69
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 70
    .line 71
    if-ne v2, v3, :cond_1

    .line 72
    move v3, v6

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 76
    .line 77
    aget-char v2, v1, v2

    .line 78
    .line 79
    move/from16 v17, v3

    .line 80
    move v3, v2

    .line 81
    .line 82
    move/from16 v2, v17

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_2
    const/16 v13, 0x2c

    .line 86
    const/4 v14, 0x1

    .line 87
    .line 88
    if-ne v3, v13, :cond_3

    .line 89
    move v5, v14

    .line 90
    .line 91
    :cond_3
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 92
    .line 93
    if-eqz v5, :cond_6

    .line 94
    .line 95
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 96
    .line 97
    if-ne v2, v3, :cond_4

    .line 98
    move v3, v2

    .line 99
    move v2, v6

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 103
    .line 104
    aget-char v2, v1, v2

    .line 105
    .line 106
    :goto_2
    move/from16 v17, v3

    .line 107
    move v3, v2

    .line 108
    .line 109
    move/from16 v2, v17

    .line 110
    .line 111
    :goto_3
    if-gt v3, v4, :cond_6

    .line 112
    .line 113
    shl-long v15, v11, v3

    .line 114
    and-long/2addr v15, v9

    .line 115
    .line 116
    cmp-long v5, v15, v7

    .line 117
    .line 118
    if-eqz v5, :cond_6

    .line 119
    .line 120
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 121
    .line 122
    if-ne v2, v3, :cond_5

    .line 123
    move v3, v6

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_5
    add-int/lit8 v3, v2, 0x1

    .line 127
    .line 128
    aget-char v2, v1, v2

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :cond_6
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 132
    .line 133
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 134
    return v14

    .line 135
    :cond_7
    return v5
.end method

.method public readInt32Value()I
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 11
    .line 12
    const/16 v5, 0x22

    .line 13
    .line 14
    if-eq v1, v5, :cond_1

    .line 15
    .line 16
    const/16 v5, 0x27

    .line 17
    .line 18
    if-ne v1, v5, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v5, v2

    .line 21
    const/4 v2, 0x0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    :goto_0
    add-int/lit8 v5, v2, 0x1

    .line 25
    .line 26
    aget-char v2, v4, v2

    .line 27
    .line 28
    move/from16 v20, v2

    .line 29
    move v2, v1

    .line 30
    .line 31
    move/from16 v1, v20

    .line 32
    .line 33
    :goto_1
    const/16 v7, 0x39

    .line 34
    .line 35
    const/16 v8, 0x2d

    .line 36
    .line 37
    const/16 v9, 0x30

    .line 38
    const/4 v10, 0x1

    .line 39
    .line 40
    if-lt v1, v9, :cond_2

    .line 41
    .line 42
    if-gt v1, v7, :cond_2

    .line 43
    .line 44
    rsub-int/lit8 v11, v1, 0x30

    .line 45
    goto :goto_3

    .line 46
    .line 47
    :cond_2
    if-eq v1, v8, :cond_4

    .line 48
    .line 49
    const/16 v11, 0x2b

    .line 50
    .line 51
    if-ne v1, v11, :cond_3

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v11, v10

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    :goto_2
    const/4 v11, 0x0

    .line 56
    .line 57
    :goto_3
    add-int/lit8 v12, v5, 0x1

    .line 58
    .line 59
    if-ge v12, v3, :cond_7

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([CI)I

    .line 63
    move-result v13

    .line 64
    const/4 v14, -0x1

    .line 65
    .line 66
    if-eq v13, v14, :cond_7

    .line 67
    .line 68
    .line 69
    const v14, -0x147ae14

    .line 70
    .line 71
    if-gt v14, v11, :cond_5

    .line 72
    move v14, v10

    .line 73
    goto :goto_4

    .line 74
    :cond_5
    const/4 v14, 0x0

    .line 75
    .line 76
    :goto_4
    if-gtz v11, :cond_6

    .line 77
    move v15, v10

    .line 78
    goto :goto_5

    .line 79
    :cond_6
    const/4 v15, 0x0

    .line 80
    :goto_5
    and-int/2addr v14, v15

    .line 81
    .line 82
    if-eqz v14, :cond_7

    .line 83
    .line 84
    mul-int/lit8 v11, v11, 0x64

    .line 85
    sub-int/2addr v11, v13

    .line 86
    .line 87
    add-int/lit8 v5, v5, 0x2

    .line 88
    goto :goto_3

    .line 89
    .line 90
    :cond_7
    if-ge v5, v3, :cond_a

    .line 91
    .line 92
    aget-char v13, v4, v5

    .line 93
    .line 94
    if-lt v13, v9, :cond_a

    .line 95
    .line 96
    if-gt v13, v7, :cond_a

    .line 97
    .line 98
    .line 99
    const v7, -0xccccccc

    .line 100
    .line 101
    if-gt v7, v11, :cond_8

    .line 102
    move v7, v10

    .line 103
    goto :goto_6

    .line 104
    :cond_8
    const/4 v7, 0x0

    .line 105
    .line 106
    :goto_6
    if-gtz v11, :cond_9

    .line 107
    move v14, v10

    .line 108
    goto :goto_7

    .line 109
    :cond_9
    const/4 v14, 0x0

    .line 110
    :goto_7
    and-int/2addr v7, v14

    .line 111
    .line 112
    if-eqz v7, :cond_a

    .line 113
    .line 114
    mul-int/lit8 v11, v11, 0xa

    .line 115
    add-int/2addr v11, v9

    .line 116
    sub-int/2addr v11, v13

    .line 117
    move v5, v12

    .line 118
    .line 119
    :cond_a
    const/16 v7, 0x1a

    .line 120
    .line 121
    if-ne v5, v3, :cond_b

    .line 122
    move v9, v5

    .line 123
    move v5, v7

    .line 124
    goto :goto_8

    .line 125
    .line 126
    :cond_b
    add-int/lit8 v9, v5, 0x1

    .line 127
    .line 128
    aget-char v5, v4, v5

    .line 129
    .line 130
    :goto_8
    if-gtz v11, :cond_1a

    .line 131
    .line 132
    const/high16 v12, -0x80000000

    .line 133
    .line 134
    if-lt v12, v11, :cond_c

    .line 135
    .line 136
    if-ne v1, v8, :cond_1a

    .line 137
    .line 138
    :cond_c
    sget-object v12, Lcom/alibaba/fastjson2/JSONReader;->INT_VALUE_END:[Z

    .line 139
    .line 140
    and-int/lit16 v13, v5, 0xff

    .line 141
    .line 142
    aget-boolean v12, v12, v13

    .line 143
    .line 144
    if-eqz v12, :cond_1a

    .line 145
    .line 146
    if-eqz v2, :cond_d

    .line 147
    .line 148
    if-ne v5, v2, :cond_1a

    .line 149
    .line 150
    :cond_d
    if-eqz v2, :cond_f

    .line 151
    .line 152
    if-ne v9, v3, :cond_e

    .line 153
    move v5, v7

    .line 154
    goto :goto_9

    .line 155
    .line 156
    :cond_e
    add-int/lit8 v2, v9, 0x1

    .line 157
    .line 158
    aget-char v5, v4, v9

    .line 159
    move v9, v2

    .line 160
    .line 161
    :cond_f
    :goto_9
    const/16 v2, 0x4c

    .line 162
    .line 163
    if-eq v5, v2, :cond_10

    .line 164
    .line 165
    const/16 v2, 0x46

    .line 166
    .line 167
    if-eq v5, v2, :cond_10

    .line 168
    .line 169
    const/16 v2, 0x44

    .line 170
    .line 171
    if-eq v5, v2, :cond_10

    .line 172
    .line 173
    const/16 v2, 0x42

    .line 174
    .line 175
    if-eq v5, v2, :cond_10

    .line 176
    .line 177
    const/16 v2, 0x53

    .line 178
    .line 179
    if-ne v5, v2, :cond_12

    .line 180
    .line 181
    :cond_10
    if-ne v9, v3, :cond_11

    .line 182
    :goto_a
    move v5, v7

    .line 183
    goto :goto_c

    .line 184
    .line 185
    :cond_11
    add-int/lit8 v2, v9, 0x1

    .line 186
    .line 187
    aget-char v5, v4, v9

    .line 188
    :goto_b
    move v9, v2

    .line 189
    .line 190
    :cond_12
    :goto_c
    const-wide/16 v12, 0x0

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    const-wide v14, 0x100003701L

    .line 196
    .line 197
    const-wide/16 v16, 0x1

    .line 198
    .line 199
    const/16 v2, 0x20

    .line 200
    .line 201
    if-gt v5, v2, :cond_14

    .line 202
    .line 203
    shl-long v18, v16, v5

    .line 204
    .line 205
    and-long v18, v18, v14

    .line 206
    .line 207
    cmp-long v18, v18, v12

    .line 208
    .line 209
    if-eqz v18, :cond_14

    .line 210
    .line 211
    if-ne v9, v3, :cond_13

    .line 212
    goto :goto_a

    .line 213
    .line 214
    :cond_13
    add-int/lit8 v2, v9, 0x1

    .line 215
    .line 216
    aget-char v5, v4, v9

    .line 217
    goto :goto_b

    .line 218
    .line 219
    :cond_14
    const/16 v6, 0x2c

    .line 220
    .line 221
    if-ne v5, v6, :cond_15

    .line 222
    move v6, v10

    .line 223
    goto :goto_d

    .line 224
    :cond_15
    const/4 v6, 0x0

    .line 225
    .line 226
    :goto_d
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 227
    .line 228
    if-eqz v6, :cond_18

    .line 229
    .line 230
    if-ne v9, v3, :cond_16

    .line 231
    move v6, v7

    .line 232
    goto :goto_e

    .line 233
    .line 234
    :cond_16
    add-int/lit8 v5, v9, 0x1

    .line 235
    .line 236
    aget-char v6, v4, v9

    .line 237
    goto :goto_10

    .line 238
    :goto_e
    move v5, v6

    .line 239
    .line 240
    :goto_f
    if-gt v5, v2, :cond_18

    .line 241
    .line 242
    shl-long v18, v16, v5

    .line 243
    .line 244
    and-long v18, v18, v14

    .line 245
    .line 246
    cmp-long v6, v18, v12

    .line 247
    .line 248
    if-eqz v6, :cond_18

    .line 249
    .line 250
    if-ne v9, v3, :cond_17

    .line 251
    move v5, v7

    .line 252
    goto :goto_f

    .line 253
    .line 254
    :cond_17
    add-int/lit8 v5, v9, 0x1

    .line 255
    .line 256
    aget-char v6, v4, v9

    .line 257
    :goto_10
    move v9, v5

    .line 258
    goto :goto_e

    .line 259
    :cond_18
    int-to-char v2, v5

    .line 260
    .line 261
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 262
    .line 263
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 264
    .line 265
    if-ne v1, v8, :cond_19

    .line 266
    return v11

    .line 267
    :cond_19
    neg-int v1, v11

    .line 268
    return v1

    .line 269
    .line 270
    .line 271
    :cond_1a
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32ValueOverflow()I

    .line 272
    move-result v1

    .line 273
    return v1
.end method

.method public readInt64Value()J
    .locals 23

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 9
    .line 10
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 11
    .line 12
    const/16 v5, 0x22

    .line 13
    .line 14
    if-eq v1, v5, :cond_1

    .line 15
    .line 16
    const/16 v5, 0x27

    .line 17
    .line 18
    if-ne v1, v5, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v5, v2

    .line 21
    const/4 v2, 0x0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    :goto_0
    add-int/lit8 v5, v2, 0x1

    .line 25
    .line 26
    aget-char v2, v4, v2

    .line 27
    .line 28
    move/from16 v22, v2

    .line 29
    move v2, v1

    .line 30
    .line 31
    move/from16 v1, v22

    .line 32
    .line 33
    :goto_1
    const/16 v7, 0x39

    .line 34
    .line 35
    const/16 v10, 0x2d

    .line 36
    .line 37
    const/16 v11, 0x30

    .line 38
    .line 39
    const-wide/16 v12, 0x0

    .line 40
    .line 41
    if-lt v1, v11, :cond_2

    .line 42
    .line 43
    if-gt v1, v7, :cond_2

    .line 44
    .line 45
    rsub-int/lit8 v14, v1, 0x30

    .line 46
    int-to-long v14, v14

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_2
    if-eq v1, v10, :cond_4

    .line 50
    .line 51
    const/16 v14, 0x2b

    .line 52
    .line 53
    if-ne v1, v14, :cond_3

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_3
    const-wide/16 v14, 0x1

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    :goto_2
    move-wide v14, v12

    .line 59
    .line 60
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .line 61
    .line 62
    const/16 v17, 0x1

    .line 63
    .line 64
    const-wide/16 v18, 0x1

    .line 65
    .line 66
    if-ge v6, v3, :cond_7

    .line 67
    .line 68
    .line 69
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([CI)I

    .line 70
    move-result v8

    .line 71
    const/4 v9, -0x1

    .line 72
    .line 73
    if-eq v8, v9, :cond_7

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const-wide v20, -0x147ae147ae147aeL

    .line 79
    .line 80
    cmp-long v9, v20, v14

    .line 81
    .line 82
    if-gtz v9, :cond_5

    .line 83
    .line 84
    move/from16 v9, v17

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const/4 v9, 0x0

    .line 87
    .line 88
    :goto_4
    cmp-long v20, v14, v12

    .line 89
    .line 90
    if-gtz v20, :cond_6

    .line 91
    .line 92
    move/from16 v20, v17

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_6
    const/16 v20, 0x0

    .line 96
    .line 97
    :goto_5
    and-int v9, v9, v20

    .line 98
    .line 99
    if-eqz v9, :cond_7

    .line 100
    .line 101
    const-wide/16 v20, 0x64

    .line 102
    .line 103
    mul-long v14, v14, v20

    .line 104
    int-to-long v8, v8

    .line 105
    sub-long/2addr v14, v8

    .line 106
    .line 107
    add-int/lit8 v5, v5, 0x2

    .line 108
    goto :goto_3

    .line 109
    .line 110
    :cond_7
    if-ge v5, v3, :cond_a

    .line 111
    .line 112
    aget-char v8, v4, v5

    .line 113
    .line 114
    if-lt v8, v11, :cond_a

    .line 115
    .line 116
    if-gt v8, v7, :cond_a

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    const-wide v20, -0xcccccccccccccccL

    .line 122
    .line 123
    cmp-long v7, v20, v14

    .line 124
    .line 125
    if-gtz v7, :cond_8

    .line 126
    .line 127
    move/from16 v7, v17

    .line 128
    goto :goto_6

    .line 129
    :cond_8
    const/4 v7, 0x0

    .line 130
    .line 131
    :goto_6
    cmp-long v9, v14, v12

    .line 132
    .line 133
    if-gtz v9, :cond_9

    .line 134
    .line 135
    move/from16 v9, v17

    .line 136
    goto :goto_7

    .line 137
    :cond_9
    const/4 v9, 0x0

    .line 138
    :goto_7
    and-int/2addr v7, v9

    .line 139
    .line 140
    if-eqz v7, :cond_a

    .line 141
    .line 142
    const-wide/16 v20, 0xa

    .line 143
    .line 144
    mul-long v14, v14, v20

    .line 145
    .line 146
    const-wide/16 v20, 0x30

    .line 147
    .line 148
    add-long v14, v14, v20

    .line 149
    int-to-long v7, v8

    .line 150
    sub-long/2addr v14, v7

    .line 151
    move v5, v6

    .line 152
    .line 153
    :cond_a
    const/16 v6, 0x1a

    .line 154
    .line 155
    if-ne v5, v3, :cond_b

    .line 156
    move v7, v5

    .line 157
    move v5, v6

    .line 158
    goto :goto_8

    .line 159
    .line 160
    :cond_b
    add-int/lit8 v7, v5, 0x1

    .line 161
    .line 162
    aget-char v5, v4, v5

    .line 163
    .line 164
    :goto_8
    cmp-long v8, v14, v12

    .line 165
    .line 166
    if-gtz v8, :cond_1a

    .line 167
    .line 168
    const-wide/high16 v8, -0x8000000000000000L

    .line 169
    .line 170
    cmp-long v8, v8, v14

    .line 171
    .line 172
    if-ltz v8, :cond_c

    .line 173
    .line 174
    if-ne v1, v10, :cond_1a

    .line 175
    .line 176
    :cond_c
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader;->INT_VALUE_END:[Z

    .line 177
    .line 178
    and-int/lit16 v9, v5, 0xff

    .line 179
    .line 180
    aget-boolean v8, v8, v9

    .line 181
    .line 182
    if-eqz v8, :cond_1a

    .line 183
    .line 184
    if-eqz v2, :cond_d

    .line 185
    .line 186
    if-ne v5, v2, :cond_1a

    .line 187
    .line 188
    :cond_d
    if-eqz v2, :cond_f

    .line 189
    .line 190
    if-ne v7, v3, :cond_e

    .line 191
    move v5, v6

    .line 192
    goto :goto_9

    .line 193
    .line 194
    :cond_e
    add-int/lit8 v2, v7, 0x1

    .line 195
    .line 196
    aget-char v5, v4, v7

    .line 197
    move v7, v2

    .line 198
    .line 199
    :cond_f
    :goto_9
    const/16 v2, 0x4c

    .line 200
    .line 201
    if-eq v5, v2, :cond_10

    .line 202
    .line 203
    const/16 v2, 0x46

    .line 204
    .line 205
    if-eq v5, v2, :cond_10

    .line 206
    .line 207
    const/16 v2, 0x44

    .line 208
    .line 209
    if-eq v5, v2, :cond_10

    .line 210
    .line 211
    const/16 v2, 0x42

    .line 212
    .line 213
    if-eq v5, v2, :cond_10

    .line 214
    .line 215
    const/16 v2, 0x53

    .line 216
    .line 217
    if-ne v5, v2, :cond_12

    .line 218
    .line 219
    :cond_10
    if-ne v7, v3, :cond_11

    .line 220
    :goto_a
    move v5, v6

    .line 221
    goto :goto_c

    .line 222
    .line 223
    :cond_11
    add-int/lit8 v2, v7, 0x1

    .line 224
    .line 225
    aget-char v5, v4, v7

    .line 226
    :goto_b
    move v7, v2

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :cond_12
    :goto_c
    const-wide v8, 0x100003701L

    .line 232
    .line 233
    const/16 v2, 0x20

    .line 234
    .line 235
    if-gt v5, v2, :cond_14

    .line 236
    .line 237
    shl-long v20, v18, v5

    .line 238
    .line 239
    and-long v20, v20, v8

    .line 240
    .line 241
    cmp-long v11, v20, v12

    .line 242
    .line 243
    if-eqz v11, :cond_14

    .line 244
    .line 245
    if-ne v7, v3, :cond_13

    .line 246
    goto :goto_a

    .line 247
    .line 248
    :cond_13
    add-int/lit8 v2, v7, 0x1

    .line 249
    .line 250
    aget-char v5, v4, v7

    .line 251
    goto :goto_b

    .line 252
    .line 253
    :cond_14
    const/16 v11, 0x2c

    .line 254
    .line 255
    if-ne v5, v11, :cond_15

    .line 256
    .line 257
    move/from16 v11, v17

    .line 258
    goto :goto_d

    .line 259
    :cond_15
    const/4 v11, 0x0

    .line 260
    .line 261
    :goto_d
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 262
    .line 263
    if-eqz v11, :cond_18

    .line 264
    .line 265
    if-ne v7, v3, :cond_16

    .line 266
    move v5, v7

    .line 267
    move v7, v6

    .line 268
    goto :goto_e

    .line 269
    .line 270
    :cond_16
    add-int/lit8 v5, v7, 0x1

    .line 271
    .line 272
    aget-char v7, v4, v7

    .line 273
    .line 274
    :goto_e
    move/from16 v22, v7

    .line 275
    move v7, v5

    .line 276
    .line 277
    move/from16 v5, v22

    .line 278
    .line 279
    :goto_f
    if-gt v5, v2, :cond_18

    .line 280
    .line 281
    shl-long v16, v18, v5

    .line 282
    .line 283
    and-long v16, v16, v8

    .line 284
    .line 285
    cmp-long v11, v16, v12

    .line 286
    .line 287
    if-eqz v11, :cond_18

    .line 288
    .line 289
    if-ne v7, v3, :cond_17

    .line 290
    move v5, v6

    .line 291
    goto :goto_f

    .line 292
    .line 293
    :cond_17
    add-int/lit8 v5, v7, 0x1

    .line 294
    .line 295
    aget-char v7, v4, v7

    .line 296
    goto :goto_e

    .line 297
    :cond_18
    int-to-char v2, v5

    .line 298
    .line 299
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 300
    .line 301
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 302
    .line 303
    if-ne v1, v10, :cond_19

    .line 304
    return-wide v14

    .line 305
    :cond_19
    neg-long v1, v14

    .line 306
    return-wide v1

    .line 307
    .line 308
    .line 309
    :cond_1a
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64ValueOverflow()J

    .line 310
    move-result-wide v1

    .line 311
    return-wide v1
.end method

.method public readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    const/16 v2, 0x22

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x27

    .line 11
    .line 12
    if-ne v1, v2, :cond_8

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    .line 33
    .line 34
    if-eqz v2, :cond_8

    .line 35
    .line 36
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 37
    .line 38
    add-int/lit8 v3, v2, 0xa

    .line 39
    array-length v4, v0

    .line 40
    .line 41
    if-ge v3, v4, :cond_8

    .line 42
    .line 43
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 44
    .line 45
    if-ge v3, v4, :cond_8

    .line 46
    .line 47
    add-int/lit8 v3, v2, 0x4

    .line 48
    .line 49
    aget-char v3, v0, v3

    .line 50
    .line 51
    const/16 v4, 0x2d

    .line 52
    .line 53
    if-ne v3, v4, :cond_8

    .line 54
    .line 55
    add-int/lit8 v3, v2, 0x7

    .line 56
    .line 57
    aget-char v3, v0, v3

    .line 58
    .line 59
    if-ne v3, v4, :cond_8

    .line 60
    .line 61
    add-int/lit8 v3, v2, 0xa

    .line 62
    .line 63
    aget-char v3, v0, v3

    .line 64
    .line 65
    if-ne v3, v1, :cond_8

    .line 66
    .line 67
    aget-char v1, v0, v2

    .line 68
    .line 69
    add-int/lit8 v3, v2, 0x1

    .line 70
    .line 71
    aget-char v3, v0, v3

    .line 72
    .line 73
    add-int/lit8 v4, v2, 0x2

    .line 74
    .line 75
    aget-char v4, v0, v4

    .line 76
    .line 77
    add-int/lit8 v5, v2, 0x3

    .line 78
    .line 79
    aget-char v5, v0, v5

    .line 80
    .line 81
    add-int/lit8 v6, v2, 0x5

    .line 82
    .line 83
    aget-char v6, v0, v6

    .line 84
    .line 85
    add-int/lit8 v7, v2, 0x6

    .line 86
    .line 87
    aget-char v7, v0, v7

    .line 88
    .line 89
    add-int/lit8 v8, v2, 0x8

    .line 90
    .line 91
    aget-char v8, v0, v8

    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x9

    .line 94
    .line 95
    aget-char v0, v0, v2

    .line 96
    .line 97
    const/16 v2, 0x30

    .line 98
    .line 99
    if-lt v1, v2, :cond_7

    .line 100
    .line 101
    const/16 v9, 0x39

    .line 102
    .line 103
    if-gt v1, v9, :cond_7

    .line 104
    .line 105
    if-lt v3, v2, :cond_7

    .line 106
    .line 107
    if-gt v3, v9, :cond_7

    .line 108
    .line 109
    if-lt v4, v2, :cond_7

    .line 110
    .line 111
    if-gt v4, v9, :cond_7

    .line 112
    .line 113
    if-lt v5, v2, :cond_7

    .line 114
    .line 115
    if-gt v5, v9, :cond_7

    .line 116
    sub-int/2addr v1, v2

    .line 117
    .line 118
    mul-int/lit16 v1, v1, 0x3e8

    .line 119
    sub-int/2addr v3, v2

    .line 120
    .line 121
    mul-int/lit8 v3, v3, 0x64

    .line 122
    add-int/2addr v1, v3

    .line 123
    sub-int/2addr v4, v2

    .line 124
    .line 125
    mul-int/lit8 v4, v4, 0xa

    .line 126
    add-int/2addr v1, v4

    .line 127
    sub-int/2addr v5, v2

    .line 128
    add-int/2addr v1, v5

    .line 129
    .line 130
    if-lt v6, v2, :cond_6

    .line 131
    .line 132
    if-gt v6, v9, :cond_6

    .line 133
    .line 134
    if-lt v7, v2, :cond_6

    .line 135
    .line 136
    if-gt v7, v9, :cond_6

    .line 137
    sub-int/2addr v6, v2

    .line 138
    .line 139
    mul-int/lit8 v6, v6, 0xa

    .line 140
    sub-int/2addr v7, v2

    .line 141
    add-int/2addr v6, v7

    .line 142
    .line 143
    if-lt v8, v2, :cond_5

    .line 144
    .line 145
    if-gt v8, v9, :cond_5

    .line 146
    .line 147
    if-lt v0, v2, :cond_5

    .line 148
    .line 149
    if-gt v0, v9, :cond_5

    .line 150
    sub-int/2addr v8, v2

    .line 151
    .line 152
    mul-int/lit8 v8, v8, 0xa

    .line 153
    sub-int/2addr v0, v2

    .line 154
    add-int/2addr v8, v0

    .line 155
    .line 156
    if-nez v1, :cond_2

    .line 157
    .line 158
    if-nez v6, :cond_2

    .line 159
    .line 160
    if-nez v8, :cond_2

    .line 161
    const/4 v0, 0x0

    .line 162
    goto :goto_0

    .line 163
    .line 164
    .line 165
    :cond_2
    :try_start_0
    invoke-static {v1, v6, v8}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 166
    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 169
    .line 170
    add-int/lit8 v1, v1, 0xb

    .line 171
    .line 172
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 176
    .line 177
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 178
    .line 179
    const/16 v2, 0x2c

    .line 180
    .line 181
    if-ne v1, v2, :cond_3

    .line 182
    const/4 v1, 0x1

    .line 183
    goto :goto_1

    .line 184
    :cond_3
    const/4 v1, 0x0

    .line 185
    .line 186
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 187
    .line 188
    if-eqz v1, :cond_4

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 192
    :cond_4
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .line 195
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 196
    .line 197
    const-string v2, "read date error"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v2

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    throw v1

    .line 206
    .line 207
    .line 208
    :cond_5
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 209
    move-result-object v0

    .line 210
    return-object v0

    .line 211
    .line 212
    .line 213
    :cond_6
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 214
    move-result-object v0

    .line 215
    return-object v0

    .line 216
    .line 217
    .line 218
    :cond_7
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 219
    move-result-object v0

    .line 220
    return-object v0

    .line 221
    .line 222
    .line 223
    :cond_8
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 224
    move-result-object v0

    .line 225
    return-object v0
.end method

.method public readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localDate only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 27
    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0xb

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .line 60
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 61
    .line 62
    const-string v2, "read date error"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    throw v1
.end method

.method public readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localDate only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0xc

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localDate only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 27
    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x9

    .line 32
    .line 33
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 37
    .line 38
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 39
    .line 40
    const/16 v2, 0x2c

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    .line 47
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 53
    :cond_3
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .line 56
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 57
    .line 58
    const-string v2, "read date error"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    throw v1
.end method

.method public readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localDate only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 27
    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0xa

    .line 32
    .line 33
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 37
    .line 38
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 39
    .line 40
    const/16 v2, 0x2c

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    .line 47
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 53
    :cond_3
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .line 56
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 57
    .line 58
    const-string v2, "read date error"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    throw v1
.end method

.method public readLocalDateTime12()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0xd

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalDateTime14()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0xf

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalDateTime16()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x11

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalDateTime17()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x12

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalDateTime18()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x13

    .line 32
    .line 33
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 37
    .line 38
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 39
    .line 40
    const/16 v2, 0x2c

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    .line 47
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 53
    :cond_3
    return-object v0
.end method

.method public readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x14

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x15

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalDateTimeX(I)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v0, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([CII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 p1, 0x0

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    const/4 v2, 0x1

    .line 35
    add-int/2addr p1, v2

    .line 36
    add-int/2addr v1, p1

    .line 37
    .line 38
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 42
    .line 43
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 44
    .line 45
    const/16 v1, 0x2c

    .line 46
    .line 47
    if-ne p1, v1, :cond_3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v2, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalTime10()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localTime only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime10([CI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0xb

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalTime11()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localTime only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime11([CI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0xc

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalTime12()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localTime only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime12([CI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0xd

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalTime18()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localTime only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime18([CI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x13

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalTime5()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localTime only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime5([CI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x6

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readLocalTime8()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "localTime only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([CI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x9

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 41
    .line 42
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public readMillis19()J
    .locals 7

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v1, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 22
    .line 23
    add-int/lit8 v2, v1, 0x12

    .line 24
    .line 25
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 26
    const/4 v4, 0x1

    .line 27
    .line 28
    if-lt v2, v3, :cond_2

    .line 29
    .line 30
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 31
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    return-wide v0

    .line 34
    .line 35
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 36
    .line 37
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([CILcom/alibaba/fastjson2/time/ZoneId;)J

    .line 43
    move-result-wide v1

    .line 44
    .line 45
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 46
    .line 47
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 48
    .line 49
    add-int/lit8 v6, v5, 0x13

    .line 50
    .line 51
    aget-char v3, v3, v6

    .line 52
    .line 53
    if-ne v3, v0, :cond_5

    .line 54
    .line 55
    add-int/lit8 v5, v5, 0x14

    .line 56
    .line 57
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 61
    .line 62
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 63
    .line 64
    const/16 v3, 0x2c

    .line 65
    .line 66
    if-ne v0, v3, :cond_3

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v4, 0x0

    .line 69
    .line 70
    :goto_1
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 76
    :cond_4
    return-wide v1

    .line 77
    .line 78
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 79
    .line 80
    const-string v1, "illegal date input"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0
.end method

.method public final readNaN()D
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-char v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x61

    .line 9
    .line 10
    if-ne v2, v3, :cond_7

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    aget-char v2, v0, v2

    .line 15
    .line 16
    const/16 v3, 0x4e

    .line 17
    .line 18
    if-ne v2, v3, :cond_7

    .line 19
    .line 20
    add-int/lit8 v2, v1, 0x2

    .line 21
    .line 22
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 23
    .line 24
    const/16 v4, 0x1a

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    move v1, v2

    .line 28
    :goto_0
    move v2, v4

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x3

    .line 32
    .line 33
    aget-char v2, v0, v2

    .line 34
    .line 35
    :goto_1
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide v7, 0x100003701L

    .line 41
    .line 42
    const-wide/16 v9, 0x1

    .line 43
    .line 44
    const/16 v3, 0x20

    .line 45
    .line 46
    if-gt v2, v3, :cond_2

    .line 47
    .line 48
    shl-long v11, v9, v2

    .line 49
    and-long/2addr v11, v7

    .line 50
    .line 51
    cmp-long v11, v11, v5

    .line 52
    .line 53
    if-eqz v11, :cond_2

    .line 54
    .line 55
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 56
    .line 57
    if-lt v1, v2, :cond_1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 61
    .line 62
    aget-char v1, v0, v1

    .line 63
    move v13, v2

    .line 64
    move v2, v1

    .line 65
    move v1, v13

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    const/16 v11, 0x2c

    .line 69
    .line 70
    if-ne v2, v11, :cond_3

    .line 71
    const/4 v11, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const/4 v11, 0x0

    .line 74
    .line 75
    :goto_2
    iput-boolean v11, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 76
    .line 77
    if-eqz v11, :cond_6

    .line 78
    .line 79
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 80
    .line 81
    if-lt v1, v2, :cond_4

    .line 82
    move v2, v1

    .line 83
    move v1, v4

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 87
    .line 88
    aget-char v1, v0, v1

    .line 89
    :goto_3
    move v13, v2

    .line 90
    move v2, v1

    .line 91
    move v1, v13

    .line 92
    .line 93
    :goto_4
    if-gt v2, v3, :cond_6

    .line 94
    .line 95
    shl-long v11, v9, v2

    .line 96
    and-long/2addr v11, v7

    .line 97
    .line 98
    cmp-long v11, v11, v5

    .line 99
    .line 100
    if-eqz v11, :cond_6

    .line 101
    .line 102
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 103
    .line 104
    if-lt v1, v2, :cond_5

    .line 105
    move v2, v4

    .line 106
    goto :goto_4

    .line 107
    .line 108
    :cond_5
    add-int/lit8 v2, v1, 0x1

    .line 109
    .line 110
    aget-char v1, v0, v1

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    int-to-char v0, v2

    .line 113
    .line 114
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 115
    .line 116
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 117
    .line 118
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 119
    return-wide v0

    .line 120
    .line 121
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    const-string v3, "json syntax error, not NaN "

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 142
    throw v0
.end method

.method public readNull()V
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-char v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x75

    .line 9
    .line 10
    if-ne v2, v3, :cond_7

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    aget-char v2, v0, v2

    .line 15
    .line 16
    const/16 v3, 0x6c

    .line 17
    .line 18
    if-ne v2, v3, :cond_7

    .line 19
    .line 20
    add-int/lit8 v2, v1, 0x2

    .line 21
    .line 22
    aget-char v2, v0, v2

    .line 23
    .line 24
    if-ne v2, v3, :cond_7

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x3

    .line 27
    .line 28
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 29
    .line 30
    const/16 v4, 0x1a

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    move v2, v4

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    aget-char v2, v0, v2

    .line 37
    .line 38
    :goto_0
    add-int/lit8 v1, v1, 0x4

    .line 39
    .line 40
    :goto_1
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v7, 0x100003701L

    .line 46
    .line 47
    const-wide/16 v9, 0x1

    .line 48
    .line 49
    const/16 v3, 0x20

    .line 50
    .line 51
    if-gt v2, v3, :cond_2

    .line 52
    .line 53
    shl-long v11, v9, v2

    .line 54
    and-long/2addr v11, v7

    .line 55
    .line 56
    cmp-long v11, v11, v5

    .line 57
    .line 58
    if-eqz v11, :cond_2

    .line 59
    .line 60
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 61
    .line 62
    if-ne v1, v2, :cond_1

    .line 63
    move v2, v4

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 67
    .line 68
    aget-char v1, v0, v1

    .line 69
    move v13, v2

    .line 70
    move v2, v1

    .line 71
    move v1, v13

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_2
    const/16 v11, 0x2c

    .line 75
    .line 76
    if-ne v2, v11, :cond_3

    .line 77
    const/4 v11, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 v11, 0x0

    .line 80
    .line 81
    :goto_2
    iput-boolean v11, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 82
    .line 83
    if-eqz v11, :cond_6

    .line 84
    .line 85
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 86
    .line 87
    if-ne v1, v2, :cond_4

    .line 88
    move v2, v1

    .line 89
    move v1, v4

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 93
    .line 94
    aget-char v1, v0, v1

    .line 95
    :goto_3
    move v13, v2

    .line 96
    move v2, v1

    .line 97
    move v1, v13

    .line 98
    .line 99
    :goto_4
    if-gt v2, v3, :cond_6

    .line 100
    .line 101
    shl-long v11, v9, v2

    .line 102
    and-long/2addr v11, v7

    .line 103
    .line 104
    cmp-long v11, v11, v5

    .line 105
    .line 106
    if-eqz v11, :cond_6

    .line 107
    .line 108
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 109
    .line 110
    if-ne v1, v2, :cond_5

    .line 111
    move v2, v4

    .line 112
    goto :goto_4

    .line 113
    .line 114
    :cond_5
    add-int/lit8 v2, v1, 0x1

    .line 115
    .line 116
    aget-char v1, v0, v1

    .line 117
    goto :goto_3

    .line 118
    .line 119
    :cond_6
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 120
    .line 121
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 122
    return-void

    .line 123
    .line 124
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    const-string v3, "json syntax error, not match null, offset "

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 145
    throw v0
.end method

.method public readNullOrNewDate()Ljava/util/Date;
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x2

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v7, 0x100003701L

    .line 18
    .line 19
    const-wide/16 v9, 0x1

    .line 20
    .line 21
    const/16 v11, 0x20

    .line 22
    .line 23
    const/16 v12, 0x1a

    .line 24
    .line 25
    if-ge v3, v4, :cond_1

    .line 26
    .line 27
    aget-char v13, v1, v2

    .line 28
    .line 29
    const/16 v14, 0x75

    .line 30
    .line 31
    if-ne v13, v14, :cond_1

    .line 32
    .line 33
    add-int/lit8 v13, v2, 0x1

    .line 34
    .line 35
    aget-char v13, v1, v13

    .line 36
    .line 37
    const/16 v14, 0x6c

    .line 38
    .line 39
    if-ne v13, v14, :cond_1

    .line 40
    .line 41
    aget-char v13, v1, v3

    .line 42
    .line 43
    if-ne v13, v14, :cond_1

    .line 44
    .line 45
    add-int/lit8 v3, v2, 0x3

    .line 46
    .line 47
    if-ne v3, v4, :cond_0

    .line 48
    move v3, v12

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    aget-char v3, v1, v3

    .line 52
    .line 53
    :goto_0
    add-int/lit8 v2, v2, 0x4

    .line 54
    const/4 v4, 0x0

    .line 55
    .line 56
    move-wide/from16 v16, v5

    .line 57
    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_1
    add-int/lit8 v13, v2, 0x1

    .line 61
    .line 62
    if-ge v13, v4, :cond_14

    .line 63
    .line 64
    aget-char v14, v1, v2

    .line 65
    .line 66
    const/16 v15, 0x65

    .line 67
    .line 68
    if-ne v14, v15, :cond_14

    .line 69
    .line 70
    aget-char v13, v1, v13

    .line 71
    .line 72
    const/16 v14, 0x77

    .line 73
    .line 74
    if-ne v13, v14, :cond_14

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x3

    .line 77
    .line 78
    if-ne v2, v4, :cond_2

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_2
    aget-char v3, v1, v3

    .line 82
    .line 83
    :goto_1
    if-gt v3, v11, :cond_4

    .line 84
    .line 85
    shl-long v13, v9, v3

    .line 86
    and-long/2addr v13, v7

    .line 87
    .line 88
    cmp-long v4, v13, v5

    .line 89
    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 93
    .line 94
    if-lt v2, v3, :cond_3

    .line 95
    :goto_2
    move v3, v12

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 99
    .line 100
    aget-char v2, v1, v2

    .line 101
    .line 102
    move/from16 v18, v3

    .line 103
    move v3, v2

    .line 104
    .line 105
    move/from16 v2, v18

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :cond_4
    add-int/lit8 v4, v2, 0x4

    .line 109
    .line 110
    iget v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 111
    .line 112
    const-string v14, "json syntax error, not match new Date"

    .line 113
    .line 114
    if-ge v4, v13, :cond_13

    .line 115
    .line 116
    move-wide/from16 v16, v5

    .line 117
    .line 118
    const/16 v5, 0x44

    .line 119
    .line 120
    if-ne v3, v5, :cond_13

    .line 121
    .line 122
    aget-char v3, v1, v2

    .line 123
    .line 124
    const/16 v5, 0x61

    .line 125
    .line 126
    if-ne v3, v5, :cond_13

    .line 127
    .line 128
    add-int/lit8 v3, v2, 0x1

    .line 129
    .line 130
    aget-char v3, v1, v3

    .line 131
    .line 132
    const/16 v5, 0x74

    .line 133
    .line 134
    if-ne v3, v5, :cond_13

    .line 135
    .line 136
    add-int/lit8 v3, v2, 0x2

    .line 137
    .line 138
    aget-char v3, v1, v3

    .line 139
    .line 140
    if-ne v3, v15, :cond_13

    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x3

    .line 143
    .line 144
    if-ne v2, v13, :cond_5

    .line 145
    :goto_3
    move v2, v12

    .line 146
    goto :goto_4

    .line 147
    .line 148
    :cond_5
    aget-char v2, v1, v2

    .line 149
    .line 150
    :goto_4
    if-gt v2, v11, :cond_7

    .line 151
    .line 152
    shl-long v5, v9, v2

    .line 153
    and-long/2addr v5, v7

    .line 154
    .line 155
    cmp-long v3, v5, v16

    .line 156
    .line 157
    if-eqz v3, :cond_7

    .line 158
    .line 159
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 160
    .line 161
    if-ne v4, v2, :cond_6

    .line 162
    goto :goto_3

    .line 163
    .line 164
    :cond_6
    add-int/lit8 v2, v4, 0x1

    .line 165
    .line 166
    aget-char v3, v1, v4

    .line 167
    move v4, v2

    .line 168
    move v2, v3

    .line 169
    goto :goto_4

    .line 170
    .line 171
    :cond_7
    const/16 v3, 0x28

    .line 172
    .line 173
    if-ne v2, v3, :cond_12

    .line 174
    .line 175
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 176
    .line 177
    if-ge v4, v2, :cond_12

    .line 178
    .line 179
    add-int/lit8 v2, v4, 0x1

    .line 180
    .line 181
    aget-char v3, v1, v4

    .line 182
    .line 183
    :goto_5
    if-gt v3, v11, :cond_9

    .line 184
    .line 185
    shl-long v4, v9, v3

    .line 186
    and-long/2addr v4, v7

    .line 187
    .line 188
    cmp-long v4, v4, v16

    .line 189
    .line 190
    if-eqz v4, :cond_9

    .line 191
    .line 192
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 193
    .line 194
    if-ne v2, v3, :cond_8

    .line 195
    move v3, v12

    .line 196
    goto :goto_5

    .line 197
    .line 198
    :cond_8
    add-int/lit8 v3, v2, 0x1

    .line 199
    .line 200
    aget-char v2, v1, v2

    .line 201
    .line 202
    move/from16 v18, v3

    .line 203
    move v3, v2

    .line 204
    .line 205
    move/from16 v2, v18

    .line 206
    goto :goto_5

    .line 207
    .line 208
    :cond_9
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 209
    .line 210
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readInt64Value()J

    .line 214
    move-result-wide v2

    .line 215
    .line 216
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 217
    .line 218
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 219
    .line 220
    const/16 v6, 0x29

    .line 221
    .line 222
    if-ne v4, v6, :cond_11

    .line 223
    .line 224
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 225
    .line 226
    if-ne v5, v4, :cond_a

    .line 227
    move v4, v5

    .line 228
    move v5, v12

    .line 229
    goto :goto_6

    .line 230
    .line 231
    :cond_a
    add-int/lit8 v4, v5, 0x1

    .line 232
    .line 233
    aget-char v5, v1, v5

    .line 234
    .line 235
    :goto_6
    new-instance v6, Ljava/util/Date;

    .line 236
    .line 237
    .line 238
    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 239
    move v2, v4

    .line 240
    move v3, v5

    .line 241
    move-object v4, v6

    .line 242
    .line 243
    :goto_7
    if-gt v3, v11, :cond_c

    .line 244
    .line 245
    shl-long v5, v9, v3

    .line 246
    and-long/2addr v5, v7

    .line 247
    .line 248
    cmp-long v5, v5, v16

    .line 249
    .line 250
    if-eqz v5, :cond_c

    .line 251
    .line 252
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 253
    .line 254
    if-ne v2, v3, :cond_b

    .line 255
    move v3, v12

    .line 256
    goto :goto_7

    .line 257
    .line 258
    :cond_b
    add-int/lit8 v3, v2, 0x1

    .line 259
    .line 260
    aget-char v2, v1, v2

    .line 261
    .line 262
    move/from16 v18, v3

    .line 263
    move v3, v2

    .line 264
    .line 265
    move/from16 v2, v18

    .line 266
    goto :goto_7

    .line 267
    .line 268
    :cond_c
    const/16 v5, 0x2c

    .line 269
    .line 270
    if-ne v3, v5, :cond_d

    .line 271
    const/4 v5, 0x1

    .line 272
    goto :goto_8

    .line 273
    :cond_d
    const/4 v5, 0x0

    .line 274
    .line 275
    :goto_8
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 276
    .line 277
    if-eqz v5, :cond_10

    .line 278
    .line 279
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 280
    .line 281
    if-ne v2, v3, :cond_e

    .line 282
    move v3, v2

    .line 283
    move v2, v12

    .line 284
    goto :goto_9

    .line 285
    .line 286
    :cond_e
    add-int/lit8 v3, v2, 0x1

    .line 287
    .line 288
    aget-char v2, v1, v2

    .line 289
    .line 290
    :goto_9
    move/from16 v18, v3

    .line 291
    move v3, v2

    .line 292
    .line 293
    move/from16 v2, v18

    .line 294
    .line 295
    :goto_a
    if-gt v3, v11, :cond_10

    .line 296
    .line 297
    shl-long v5, v9, v3

    .line 298
    and-long/2addr v5, v7

    .line 299
    .line 300
    cmp-long v5, v5, v16

    .line 301
    .line 302
    if-eqz v5, :cond_10

    .line 303
    .line 304
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 305
    .line 306
    if-ne v2, v3, :cond_f

    .line 307
    move v3, v12

    .line 308
    goto :goto_a

    .line 309
    .line 310
    :cond_f
    add-int/lit8 v3, v2, 0x1

    .line 311
    .line 312
    aget-char v2, v1, v2

    .line 313
    goto :goto_9

    .line 314
    .line 315
    :cond_10
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 316
    .line 317
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 318
    return-object v4

    .line 319
    .line 320
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 321
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object v2

    .line 336
    .line 337
    .line 338
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 339
    throw v1

    .line 340
    .line 341
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 342
    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v2

    .line 357
    .line 358
    .line 359
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 360
    throw v1

    .line 361
    .line 362
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 363
    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    move-result-object v2

    .line 378
    .line 379
    .line 380
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 381
    throw v1

    .line 382
    .line 383
    :cond_14
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 384
    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    const-string v4, "json syntax error, not match null or new Date"

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object v2

    .line 401
    .line 402
    .line 403
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 404
    throw v1
.end method

.method public readNumber0()V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 6
    .line 7
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 8
    .line 9
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 10
    .line 11
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 12
    .line 13
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 14
    .line 15
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 16
    .line 17
    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 18
    .line 19
    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 20
    .line 21
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 22
    .line 23
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 24
    .line 25
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 26
    .line 27
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 28
    .line 29
    const/16 v6, 0x22

    .line 30
    const/4 v7, 0x5

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v10, 0x100003701L

    .line 36
    .line 37
    const-wide/16 v12, 0x1

    .line 38
    .line 39
    const/16 v14, 0x20

    .line 40
    const/4 v15, 0x2

    .line 41
    .line 42
    const/16 v16, 0x1a

    .line 43
    .line 44
    const-wide/16 v17, 0x0

    .line 45
    const/4 v8, 0x1

    .line 46
    .line 47
    if-eq v4, v6, :cond_1

    .line 48
    .line 49
    const/16 v6, 0x27

    .line 50
    .line 51
    if-ne v4, v6, :cond_0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    move v6, v1

    .line 54
    move v9, v2

    .line 55
    .line 56
    :goto_0
    move-wide/from16 v19, v10

    .line 57
    goto :goto_4

    .line 58
    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v6, v2, 0x1

    .line 60
    .line 61
    aget-char v9, v3, v2

    .line 62
    .line 63
    if-ne v9, v4, :cond_5

    .line 64
    .line 65
    if-ne v6, v5, :cond_2

    .line 66
    .line 67
    :goto_2
    move/from16 v1, v16

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    add-int/2addr v2, v15

    .line 70
    .line 71
    aget-char v1, v3, v6

    .line 72
    move v6, v2

    .line 73
    .line 74
    :goto_3
    if-gt v1, v14, :cond_4

    .line 75
    .line 76
    shl-long v19, v12, v1

    .line 77
    .line 78
    and-long v19, v19, v10

    .line 79
    .line 80
    cmp-long v2, v19, v17

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    if-ne v6, v5, :cond_3

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v6, 0x1

    .line 88
    .line 89
    aget-char v2, v3, v6

    .line 90
    move v6, v1

    .line 91
    move v1, v2

    .line 92
    goto :goto_3

    .line 93
    .line 94
    :cond_4
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 95
    .line 96
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfComma()Z

    .line 100
    move-result v1

    .line 101
    .line 102
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 103
    .line 104
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 105
    .line 106
    iput-byte v7, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 107
    return-void

    .line 108
    .line 109
    :cond_5
    move/from16 v19, v6

    .line 110
    move v6, v4

    .line 111
    move v4, v9

    .line 112
    .line 113
    move/from16 v9, v19

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :goto_4
    const/16 v10, 0x2b

    .line 117
    .line 118
    const/16 v11, 0x2d

    .line 119
    .line 120
    move-wide/from16 v21, v12

    .line 121
    .line 122
    const-string v12, "illegal input"

    .line 123
    .line 124
    if-ne v4, v11, :cond_7

    .line 125
    .line 126
    if-eq v9, v5, :cond_6

    .line 127
    .line 128
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 129
    .line 130
    add-int/lit8 v4, v9, 0x1

    .line 131
    .line 132
    aget-char v13, v3, v9

    .line 133
    goto :goto_6

    .line 134
    .line 135
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 143
    throw v1

    .line 144
    .line 145
    :cond_7
    if-ne v4, v10, :cond_9

    .line 146
    .line 147
    if-eq v9, v5, :cond_8

    .line 148
    .line 149
    add-int/lit8 v4, v9, 0x1

    .line 150
    .line 151
    aget-char v13, v3, v9

    .line 152
    .line 153
    move/from16 v27, v13

    .line 154
    move v13, v4

    .line 155
    .line 156
    move/from16 v4, v27

    .line 157
    goto :goto_5

    .line 158
    .line 159
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    .line 166
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 167
    throw v1

    .line 168
    :cond_9
    move v13, v9

    .line 169
    .line 170
    :goto_5
    move/from16 v27, v13

    .line 171
    move v13, v4

    .line 172
    .line 173
    move/from16 v4, v27

    .line 174
    .line 175
    :goto_6
    iput-byte v8, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 176
    .line 177
    move/from16 v23, v1

    .line 178
    .line 179
    move/from16 v24, v23

    .line 180
    .line 181
    :goto_7
    const/16 v14, 0x39

    .line 182
    .line 183
    const/16 v25, 0xa

    .line 184
    .line 185
    const/16 v1, 0x30

    .line 186
    .line 187
    .line 188
    const v7, -0xccccccc

    .line 189
    .line 190
    if-lt v13, v1, :cond_e

    .line 191
    .line 192
    if-gt v13, v14, :cond_e

    .line 193
    .line 194
    if-nez v23, :cond_b

    .line 195
    .line 196
    add-int/lit8 v13, v13, -0x30

    .line 197
    .line 198
    move/from16 v26, v8

    .line 199
    .line 200
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 201
    .line 202
    mul-int/lit8 v8, v8, 0xa

    .line 203
    .line 204
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 205
    .line 206
    if-ge v8, v7, :cond_a

    .line 207
    .line 208
    :goto_8
    move/from16 v23, v26

    .line 209
    goto :goto_9

    .line 210
    :cond_a
    sub-int/2addr v8, v13

    .line 211
    .line 212
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 213
    .line 214
    if-ge v8, v7, :cond_c

    .line 215
    goto :goto_8

    .line 216
    .line 217
    :cond_b
    move/from16 v26, v8

    .line 218
    .line 219
    :cond_c
    :goto_9
    if-ne v4, v5, :cond_d

    .line 220
    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 222
    .line 223
    move/from16 v13, v16

    .line 224
    .line 225
    move/from16 v24, v26

    .line 226
    goto :goto_a

    .line 227
    .line 228
    :cond_d
    add-int/lit8 v1, v4, 0x1

    .line 229
    .line 230
    aget-char v13, v3, v4

    .line 231
    move v4, v1

    .line 232
    .line 233
    move/from16 v8, v26

    .line 234
    .line 235
    move/from16 v24, v8

    .line 236
    const/4 v1, 0x0

    .line 237
    const/4 v7, 0x5

    .line 238
    goto :goto_7

    .line 239
    .line 240
    :cond_e
    move/from16 v26, v8

    .line 241
    .line 242
    :goto_a
    const/16 v8, 0x2e

    .line 243
    .line 244
    if-ne v13, v8, :cond_13

    .line 245
    .line 246
    iput-byte v15, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 247
    .line 248
    if-eq v4, v5, :cond_12

    .line 249
    .line 250
    add-int/lit8 v8, v4, 0x1

    .line 251
    .line 252
    aget-char v4, v3, v4

    .line 253
    move v13, v4

    .line 254
    :goto_b
    move v4, v8

    .line 255
    .line 256
    if-lt v13, v1, :cond_13

    .line 257
    .line 258
    if-gt v13, v14, :cond_13

    .line 259
    .line 260
    if-nez v23, :cond_10

    .line 261
    .line 262
    add-int/lit8 v13, v13, -0x30

    .line 263
    .line 264
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 265
    .line 266
    mul-int/lit8 v8, v8, 0xa

    .line 267
    .line 268
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 269
    .line 270
    if-ge v8, v7, :cond_f

    .line 271
    .line 272
    :goto_c
    move/from16 v23, v26

    .line 273
    goto :goto_d

    .line 274
    :cond_f
    sub-int/2addr v8, v13

    .line 275
    .line 276
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 277
    .line 278
    if-ge v8, v7, :cond_10

    .line 279
    goto :goto_c

    .line 280
    .line 281
    :cond_10
    :goto_d
    iget-short v8, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 282
    .line 283
    add-int/lit8 v8, v8, 0x1

    .line 284
    int-to-short v8, v8

    .line 285
    .line 286
    iput-short v8, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 287
    .line 288
    if-ne v4, v5, :cond_11

    .line 289
    .line 290
    add-int/lit8 v4, v4, 0x1

    .line 291
    .line 292
    move/from16 v13, v16

    .line 293
    .line 294
    move/from16 v24, v26

    .line 295
    goto :goto_e

    .line 296
    .line 297
    :cond_11
    add-int/lit8 v8, v4, 0x1

    .line 298
    .line 299
    aget-char v13, v3, v4

    .line 300
    .line 301
    move/from16 v24, v26

    .line 302
    goto :goto_b

    .line 303
    .line 304
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    move-result-object v2

    .line 309
    .line 310
    .line 311
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 312
    throw v1

    .line 313
    .line 314
    :cond_13
    :goto_e
    if-eqz v23, :cond_18

    .line 315
    .line 316
    iget-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 317
    .line 318
    if-eqz v7, :cond_14

    .line 319
    move v8, v9

    .line 320
    goto :goto_f

    .line 321
    .line 322
    :cond_14
    add-int/lit8 v8, v9, -0x1

    .line 323
    .line 324
    :goto_f
    iget-short v12, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 325
    .line 326
    if-lez v12, :cond_15

    .line 327
    .line 328
    add-int/lit8 v12, v4, -0x2

    .line 329
    :goto_10
    sub-int/2addr v12, v8

    .line 330
    goto :goto_11

    .line 331
    .line 332
    :cond_15
    add-int/lit8 v12, v4, -0x1

    .line 333
    goto :goto_10

    .line 334
    .line 335
    :goto_11
    const/16 v15, 0x26

    .line 336
    .line 337
    if-le v12, v15, :cond_17

    .line 338
    .line 339
    const/16 v12, 0x8

    .line 340
    .line 341
    iput-byte v12, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 342
    .line 343
    if-eqz v7, :cond_16

    .line 344
    .line 345
    add-int/lit8 v8, v8, -0x1

    .line 346
    .line 347
    :cond_16
    new-instance v7, Ljava/lang/String;

    .line 348
    .line 349
    add-int/lit8 v12, v4, -0x1

    .line 350
    sub-int/2addr v12, v8

    .line 351
    .line 352
    .line 353
    invoke-direct {v7, v3, v8, v12}, Ljava/lang/String;-><init>([CII)V

    .line 354
    .line 355
    iput-object v7, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 356
    goto :goto_12

    .line 357
    .line 358
    :cond_17
    add-int/lit8 v7, v4, -0x1

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v3, v8, v7}, Lcom/alibaba/fastjson2/JSONReader;->bigInt([CII)V

    .line 362
    goto :goto_12

    .line 363
    .line 364
    :cond_18
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 365
    neg-int v7, v7

    .line 366
    .line 367
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 368
    .line 369
    :goto_12
    const/16 v7, 0x65

    .line 370
    .line 371
    if-eq v13, v7, :cond_19

    .line 372
    .line 373
    const/16 v8, 0x45

    .line 374
    .line 375
    if-ne v13, v8, :cond_20

    .line 376
    .line 377
    :cond_19
    add-int/lit8 v8, v4, 0x1

    .line 378
    .line 379
    aget-char v12, v3, v4

    .line 380
    .line 381
    if-ne v12, v11, :cond_1a

    .line 382
    .line 383
    add-int/lit8 v4, v4, 0x2

    .line 384
    .line 385
    aget-char v12, v3, v8

    .line 386
    .line 387
    move/from16 v8, v26

    .line 388
    :goto_13
    const/4 v10, 0x0

    .line 389
    goto :goto_15

    .line 390
    .line 391
    :cond_1a
    if-ne v12, v10, :cond_1b

    .line 392
    .line 393
    add-int/lit8 v4, v4, 0x2

    .line 394
    .line 395
    aget-char v12, v3, v8

    .line 396
    :goto_14
    const/4 v8, 0x0

    .line 397
    goto :goto_13

    .line 398
    :cond_1b
    move v4, v8

    .line 399
    goto :goto_14

    .line 400
    .line 401
    :goto_15
    if-lt v12, v1, :cond_1e

    .line 402
    .line 403
    if-gt v12, v14, :cond_1e

    .line 404
    .line 405
    add-int/lit8 v12, v12, -0x30

    .line 406
    .line 407
    mul-int/lit8 v10, v10, 0xa

    .line 408
    add-int/2addr v10, v12

    .line 409
    .line 410
    const/16 v11, 0x7ff

    .line 411
    .line 412
    if-gt v10, v11, :cond_1d

    .line 413
    .line 414
    if-ne v4, v5, :cond_1c

    .line 415
    .line 416
    move/from16 v13, v16

    .line 417
    .line 418
    move/from16 v24, v26

    .line 419
    goto :goto_16

    .line 420
    .line 421
    :cond_1c
    add-int/lit8 v11, v4, 0x1

    .line 422
    .line 423
    aget-char v12, v3, v4

    .line 424
    move v4, v11

    .line 425
    .line 426
    move/from16 v24, v26

    .line 427
    goto :goto_15

    .line 428
    .line 429
    :cond_1d
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 430
    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    const-string v3, "too large exp value : "

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    move-result-object v2

    .line 447
    .line 448
    .line 449
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 450
    throw v1

    .line 451
    :cond_1e
    move v13, v12

    .line 452
    .line 453
    :goto_16
    if-eqz v8, :cond_1f

    .line 454
    neg-int v10, v10

    .line 455
    :cond_1f
    int-to-short v1, v10

    .line 456
    .line 457
    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 458
    const/4 v1, 0x2

    .line 459
    .line 460
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 461
    .line 462
    :cond_20
    if-ne v4, v9, :cond_2b

    .line 463
    .line 464
    const/16 v1, 0x6e

    .line 465
    .line 466
    const/16 v8, 0x75

    .line 467
    .line 468
    const/16 v10, 0x6c

    .line 469
    .line 470
    if-ne v13, v1, :cond_23

    .line 471
    .line 472
    aget-char v1, v3, v4

    .line 473
    .line 474
    if-ne v1, v8, :cond_22

    .line 475
    .line 476
    add-int/lit8 v1, v4, 0x1

    .line 477
    .line 478
    aget-char v1, v3, v1

    .line 479
    .line 480
    if-ne v1, v10, :cond_22

    .line 481
    .line 482
    add-int/lit8 v1, v4, 0x2

    .line 483
    .line 484
    aget-char v1, v3, v1

    .line 485
    .line 486
    if-ne v1, v10, :cond_22

    .line 487
    .line 488
    add-int/lit8 v1, v4, 0x3

    .line 489
    .line 490
    move/from16 v7, v26

    .line 491
    .line 492
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 493
    const/4 v7, 0x5

    .line 494
    .line 495
    iput-byte v7, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 496
    .line 497
    if-ne v1, v5, :cond_21

    .line 498
    move v4, v1

    .line 499
    .line 500
    move/from16 v13, v16

    .line 501
    goto :goto_17

    .line 502
    .line 503
    :cond_21
    add-int/lit8 v4, v4, 0x4

    .line 504
    .line 505
    aget-char v1, v3, v1

    .line 506
    move v13, v1

    .line 507
    :goto_17
    const/4 v7, 0x0

    .line 508
    const/4 v8, 0x1

    .line 509
    .line 510
    const/16 v24, 0x1

    .line 511
    .line 512
    goto/16 :goto_1d

    .line 513
    :cond_22
    const/4 v7, 0x0

    .line 514
    const/4 v8, 0x1

    .line 515
    .line 516
    goto/16 :goto_1d

    .line 517
    .line 518
    :cond_23
    const/16 v1, 0x74

    .line 519
    const/4 v11, 0x4

    .line 520
    .line 521
    if-ne v13, v1, :cond_25

    .line 522
    .line 523
    aget-char v1, v3, v4

    .line 524
    .line 525
    const/16 v12, 0x72

    .line 526
    .line 527
    if-ne v1, v12, :cond_25

    .line 528
    .line 529
    add-int/lit8 v1, v4, 0x1

    .line 530
    .line 531
    aget-char v1, v3, v1

    .line 532
    .line 533
    if-ne v1, v8, :cond_25

    .line 534
    .line 535
    add-int/lit8 v1, v4, 0x2

    .line 536
    .line 537
    aget-char v1, v3, v1

    .line 538
    .line 539
    if-ne v1, v7, :cond_25

    .line 540
    .line 541
    add-int/lit8 v1, v4, 0x3

    .line 542
    const/4 v8, 0x1

    .line 543
    .line 544
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 545
    .line 546
    iput-byte v11, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 547
    .line 548
    if-ne v1, v5, :cond_24

    .line 549
    move v4, v1

    .line 550
    .line 551
    move/from16 v13, v16

    .line 552
    goto :goto_18

    .line 553
    .line 554
    :cond_24
    add-int/lit8 v4, v4, 0x4

    .line 555
    .line 556
    aget-char v1, v3, v1

    .line 557
    move v13, v1

    .line 558
    .line 559
    :goto_18
    move/from16 v24, v8

    .line 560
    :goto_19
    const/4 v7, 0x0

    .line 561
    .line 562
    goto/16 :goto_1d

    .line 563
    :cond_25
    const/4 v8, 0x1

    .line 564
    .line 565
    const/16 v1, 0x66

    .line 566
    .line 567
    const/16 v12, 0x61

    .line 568
    .line 569
    if-ne v13, v1, :cond_27

    .line 570
    .line 571
    aget-char v1, v3, v4

    .line 572
    .line 573
    if-ne v1, v12, :cond_27

    .line 574
    .line 575
    add-int/lit8 v1, v4, 0x1

    .line 576
    .line 577
    aget-char v1, v3, v1

    .line 578
    .line 579
    if-ne v1, v10, :cond_27

    .line 580
    .line 581
    add-int/lit8 v1, v4, 0x2

    .line 582
    .line 583
    aget-char v1, v3, v1

    .line 584
    .line 585
    const/16 v10, 0x73

    .line 586
    .line 587
    if-ne v1, v10, :cond_27

    .line 588
    .line 589
    add-int/lit8 v1, v4, 0x3

    .line 590
    .line 591
    aget-char v1, v3, v1

    .line 592
    .line 593
    if-ne v1, v7, :cond_27

    .line 594
    .line 595
    add-int/lit8 v1, v4, 0x4

    .line 596
    const/4 v7, 0x0

    .line 597
    .line 598
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 599
    .line 600
    iput-byte v11, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 601
    .line 602
    if-ne v1, v5, :cond_26

    .line 603
    :goto_1a
    move v4, v1

    .line 604
    .line 605
    move/from16 v13, v16

    .line 606
    goto :goto_1c

    .line 607
    .line 608
    :cond_26
    add-int/lit8 v4, v4, 0x5

    .line 609
    .line 610
    aget-char v1, v3, v1

    .line 611
    :goto_1b
    move v13, v1

    .line 612
    .line 613
    :goto_1c
    move/from16 v24, v8

    .line 614
    goto :goto_1d

    .line 615
    :cond_27
    const/4 v7, 0x0

    .line 616
    .line 617
    const/16 v1, 0x4e

    .line 618
    .line 619
    if-ne v13, v1, :cond_29

    .line 620
    .line 621
    aget-char v10, v3, v4

    .line 622
    .line 623
    if-ne v10, v12, :cond_29

    .line 624
    .line 625
    add-int/lit8 v10, v4, 0x1

    .line 626
    .line 627
    aget-char v10, v3, v10

    .line 628
    .line 629
    if-ne v10, v1, :cond_29

    .line 630
    .line 631
    add-int/lit8 v1, v4, 0x2

    .line 632
    .line 633
    const/16 v10, 0xe

    .line 634
    .line 635
    iput-byte v10, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 636
    .line 637
    if-ne v1, v5, :cond_28

    .line 638
    goto :goto_1a

    .line 639
    .line 640
    :cond_28
    add-int/lit8 v4, v4, 0x3

    .line 641
    .line 642
    aget-char v1, v3, v1

    .line 643
    goto :goto_1b

    .line 644
    .line 645
    :cond_29
    const/16 v1, 0x7b

    .line 646
    .line 647
    if-ne v13, v1, :cond_2a

    .line 648
    .line 649
    if-nez v6, :cond_2a

    .line 650
    .line 651
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 652
    .line 653
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    .line 657
    move-result-object v1

    .line 658
    .line 659
    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 660
    const/4 v1, 0x6

    .line 661
    .line 662
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 663
    return-void

    .line 664
    .line 665
    :cond_2a
    const/16 v1, 0x5b

    .line 666
    .line 667
    if-ne v13, v1, :cond_2c

    .line 668
    .line 669
    if-nez v6, :cond_2c

    .line 670
    .line 671
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 672
    .line 673
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 677
    move-result-object v1

    .line 678
    .line 679
    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 680
    const/4 v1, 0x7

    .line 681
    .line 682
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 683
    return-void

    .line 684
    .line 685
    :cond_2b
    move/from16 v8, v26

    .line 686
    goto :goto_19

    .line 687
    .line 688
    :cond_2c
    :goto_1d
    if-eqz v6, :cond_2f

    .line 689
    .line 690
    if-eq v13, v6, :cond_2d

    .line 691
    .line 692
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 693
    .line 694
    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 695
    .line 696
    .line 697
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readString0()V

    .line 698
    const/4 v1, 0x3

    .line 699
    .line 700
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 701
    return-void

    .line 702
    .line 703
    :cond_2d
    if-ne v4, v5, :cond_2e

    .line 704
    .line 705
    move/from16 v13, v16

    .line 706
    goto :goto_1e

    .line 707
    .line 708
    :cond_2e
    add-int/lit8 v1, v4, 0x1

    .line 709
    .line 710
    aget-char v2, v3, v4

    .line 711
    move v4, v1

    .line 712
    move v13, v2

    .line 713
    .line 714
    :cond_2f
    :goto_1e
    const/16 v1, 0x4c

    .line 715
    .line 716
    if-eq v13, v1, :cond_31

    .line 717
    .line 718
    const/16 v1, 0x46

    .line 719
    .line 720
    if-eq v13, v1, :cond_31

    .line 721
    .line 722
    const/16 v1, 0x44

    .line 723
    .line 724
    if-eq v13, v1, :cond_31

    .line 725
    .line 726
    const/16 v1, 0x42

    .line 727
    .line 728
    if-eq v13, v1, :cond_31

    .line 729
    .line 730
    const/16 v1, 0x53

    .line 731
    .line 732
    if-ne v13, v1, :cond_30

    .line 733
    goto :goto_20

    .line 734
    .line 735
    :cond_30
    :goto_1f
    const/16 v1, 0x20

    .line 736
    goto :goto_24

    .line 737
    .line 738
    :cond_31
    :goto_20
    const/16 v1, 0x42

    .line 739
    .line 740
    if-eq v13, v1, :cond_36

    .line 741
    .line 742
    const/16 v1, 0x44

    .line 743
    .line 744
    if-eq v13, v1, :cond_35

    .line 745
    .line 746
    const/16 v1, 0x46

    .line 747
    .line 748
    if-eq v13, v1, :cond_34

    .line 749
    .line 750
    const/16 v1, 0x4c

    .line 751
    .line 752
    if-eq v13, v1, :cond_33

    .line 753
    .line 754
    const/16 v1, 0x53

    .line 755
    .line 756
    if-eq v13, v1, :cond_32

    .line 757
    goto :goto_21

    .line 758
    .line 759
    :cond_32
    if-nez v23, :cond_37

    .line 760
    .line 761
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 762
    const/4 v2, 0x2

    .line 763
    .line 764
    if-eq v1, v2, :cond_37

    .line 765
    .line 766
    move/from16 v1, v25

    .line 767
    .line 768
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 769
    goto :goto_21

    .line 770
    :cond_33
    const/4 v2, 0x2

    .line 771
    .line 772
    sub-int v1, v4, v9

    .line 773
    .line 774
    const/16 v6, 0x13

    .line 775
    .line 776
    if-ge v1, v6, :cond_37

    .line 777
    .line 778
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 779
    .line 780
    if-eq v1, v2, :cond_37

    .line 781
    .line 782
    const/16 v1, 0xb

    .line 783
    .line 784
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 785
    goto :goto_21

    .line 786
    .line 787
    :cond_34
    const/16 v1, 0xc

    .line 788
    .line 789
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 790
    goto :goto_21

    .line 791
    .line 792
    :cond_35
    const/16 v1, 0xd

    .line 793
    .line 794
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 795
    goto :goto_21

    .line 796
    .line 797
    :cond_36
    if-nez v23, :cond_37

    .line 798
    .line 799
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 800
    const/4 v2, 0x2

    .line 801
    .line 802
    if-eq v1, v2, :cond_37

    .line 803
    .line 804
    const/16 v1, 0x9

    .line 805
    .line 806
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 807
    .line 808
    :cond_37
    :goto_21
    if-ne v4, v5, :cond_38

    .line 809
    .line 810
    :goto_22
    move/from16 v13, v16

    .line 811
    goto :goto_1f

    .line 812
    .line 813
    :cond_38
    add-int/lit8 v1, v4, 0x1

    .line 814
    .line 815
    aget-char v2, v3, v4

    .line 816
    :goto_23
    move v4, v1

    .line 817
    move v13, v2

    .line 818
    goto :goto_1f

    .line 819
    .line 820
    :goto_24
    if-gt v13, v1, :cond_3a

    .line 821
    .line 822
    shl-long v1, v21, v13

    .line 823
    .line 824
    and-long v1, v1, v19

    .line 825
    .line 826
    cmp-long v1, v1, v17

    .line 827
    .line 828
    if-eqz v1, :cond_3a

    .line 829
    .line 830
    if-ne v4, v5, :cond_39

    .line 831
    goto :goto_22

    .line 832
    .line 833
    :cond_39
    add-int/lit8 v1, v4, 0x1

    .line 834
    .line 835
    aget-char v2, v3, v4

    .line 836
    goto :goto_23

    .line 837
    .line 838
    :cond_3a
    const/16 v1, 0x2c

    .line 839
    .line 840
    if-ne v13, v1, :cond_3b

    .line 841
    move v1, v8

    .line 842
    goto :goto_25

    .line 843
    :cond_3b
    move v1, v7

    .line 844
    .line 845
    :goto_25
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 846
    .line 847
    if-eqz v1, :cond_3e

    .line 848
    .line 849
    if-ne v4, v5, :cond_3c

    .line 850
    .line 851
    move/from16 v2, v16

    .line 852
    goto :goto_26

    .line 853
    .line 854
    :cond_3c
    add-int/lit8 v1, v4, 0x1

    .line 855
    .line 856
    aget-char v2, v3, v4

    .line 857
    move v4, v1

    .line 858
    :goto_26
    move v13, v2

    .line 859
    .line 860
    const/16 v1, 0x20

    .line 861
    .line 862
    :goto_27
    if-gt v13, v1, :cond_3e

    .line 863
    .line 864
    shl-long v6, v21, v13

    .line 865
    .line 866
    and-long v6, v6, v19

    .line 867
    .line 868
    cmp-long v2, v6, v17

    .line 869
    .line 870
    if-eqz v2, :cond_3e

    .line 871
    .line 872
    if-ne v4, v5, :cond_3d

    .line 873
    .line 874
    move/from16 v13, v16

    .line 875
    goto :goto_27

    .line 876
    .line 877
    :cond_3d
    add-int/lit8 v2, v4, 0x1

    .line 878
    .line 879
    aget-char v4, v3, v4

    .line 880
    move v13, v4

    .line 881
    move v4, v2

    .line 882
    goto :goto_27

    .line 883
    .line 884
    :cond_3e
    if-eqz v24, :cond_3f

    .line 885
    .line 886
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 887
    .line 888
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 889
    return-void

    .line 890
    .line 891
    :cond_3f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 892
    .line 893
    const-string v2, "illegal input error"

    .line 894
    .line 895
    .line 896
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 897
    move-result-object v2

    .line 898
    .line 899
    .line 900
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 901
    throw v1
.end method

.method public readPattern()Ljava/lang/String;
    .locals 15

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x2f

    .line 5
    .line 6
    if-ne v0, v1, :cond_9

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 9
    .line 10
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    move v3, v2

    .line 12
    .line 13
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 14
    .line 15
    if-ge v3, v4, :cond_1

    .line 16
    .line 17
    aget-char v4, v0, v3

    .line 18
    .line 19
    if-ne v4, v1, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/String;

    .line 26
    .line 27
    sub-int v4, v3, v2

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 31
    .line 32
    add-int/lit8 v2, v3, 0x1

    .line 33
    .line 34
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 35
    .line 36
    const/16 v5, 0x1a

    .line 37
    .line 38
    if-ne v2, v4, :cond_2

    .line 39
    move v3, v2

    .line 40
    :goto_2
    move v2, v5

    .line 41
    goto :goto_3

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 44
    .line 45
    aget-char v2, v0, v2

    .line 46
    .line 47
    :goto_3
    const-wide/16 v6, 0x0

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide v8, 0x100003701L

    .line 53
    .line 54
    const-wide/16 v10, 0x1

    .line 55
    .line 56
    const/16 v4, 0x20

    .line 57
    .line 58
    if-gt v2, v4, :cond_4

    .line 59
    .line 60
    shl-long v12, v10, v2

    .line 61
    and-long/2addr v12, v8

    .line 62
    .line 63
    cmp-long v12, v12, v6

    .line 64
    .line 65
    if-eqz v12, :cond_4

    .line 66
    .line 67
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 68
    .line 69
    if-ne v3, v2, :cond_3

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .line 73
    .line 74
    aget-char v3, v0, v3

    .line 75
    move v14, v3

    .line 76
    move v3, v2

    .line 77
    move v2, v14

    .line 78
    goto :goto_3

    .line 79
    .line 80
    :cond_4
    const/16 v12, 0x2c

    .line 81
    .line 82
    if-ne v2, v12, :cond_5

    .line 83
    const/4 v12, 0x1

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    const/4 v12, 0x0

    .line 86
    .line 87
    :goto_4
    iput-boolean v12, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 88
    .line 89
    if-eqz v12, :cond_8

    .line 90
    .line 91
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 92
    .line 93
    if-ne v3, v2, :cond_6

    .line 94
    move v2, v3

    .line 95
    move v3, v5

    .line 96
    goto :goto_5

    .line 97
    .line 98
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .line 99
    .line 100
    aget-char v3, v0, v3

    .line 101
    :goto_5
    move v14, v3

    .line 102
    move v3, v2

    .line 103
    move v2, v14

    .line 104
    .line 105
    :goto_6
    if-gt v2, v4, :cond_8

    .line 106
    .line 107
    shl-long v12, v10, v2

    .line 108
    and-long/2addr v12, v8

    .line 109
    .line 110
    cmp-long v12, v12, v6

    .line 111
    .line 112
    if-eqz v12, :cond_8

    .line 113
    .line 114
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 115
    .line 116
    if-ne v3, v2, :cond_7

    .line 117
    move v2, v5

    .line 118
    goto :goto_6

    .line 119
    .line 120
    :cond_7
    add-int/lit8 v2, v3, 0x1

    .line 121
    .line 122
    aget-char v3, v0, v3

    .line 123
    goto :goto_5

    .line 124
    .line 125
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 126
    .line 127
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 128
    return-object v1

    .line 129
    .line 130
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 131
    .line 132
    const-string v1, "illegal pattern"

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 136
    throw v0
.end method

.method public readReference()Ljava/lang/String;
    .locals 15

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->referenceBegin:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 11
    .line 12
    add-int/lit8 v2, v0, 0x1

    .line 13
    .line 14
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    .line 16
    aget-char v0, v1, v0

    .line 17
    .line 18
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 25
    .line 26
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 27
    .line 28
    :goto_0
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const-wide v6, 0x100003701L

    .line 34
    .line 35
    const-wide/16 v8, 0x1

    .line 36
    .line 37
    const/16 v10, 0x20

    .line 38
    .line 39
    const/16 v11, 0x1a

    .line 40
    .line 41
    if-gt v2, v10, :cond_2

    .line 42
    .line 43
    shl-long v12, v8, v2

    .line 44
    and-long/2addr v12, v6

    .line 45
    .line 46
    cmp-long v12, v12, v4

    .line 47
    .line 48
    if-eqz v12, :cond_2

    .line 49
    .line 50
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 51
    .line 52
    if-ne v3, v2, :cond_1

    .line 53
    move v2, v11

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 57
    .line 58
    aget-char v3, v1, v3

    .line 59
    move v14, v3

    .line 60
    move v3, v2

    .line 61
    move v2, v14

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_2
    const/16 v12, 0x7d

    .line 65
    .line 66
    if-ne v2, v12, :cond_a

    .line 67
    .line 68
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 69
    .line 70
    if-ne v3, v2, :cond_3

    .line 71
    move v2, v3

    .line 72
    :goto_1
    move v3, v11

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .line 76
    .line 77
    aget-char v3, v1, v3

    .line 78
    .line 79
    :goto_2
    if-gt v3, v10, :cond_5

    .line 80
    .line 81
    shl-long v12, v8, v3

    .line 82
    and-long/2addr v12, v6

    .line 83
    .line 84
    cmp-long v12, v12, v4

    .line 85
    .line 86
    if-eqz v12, :cond_5

    .line 87
    .line 88
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 89
    .line 90
    if-ne v2, v3, :cond_4

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 94
    .line 95
    aget-char v2, v1, v2

    .line 96
    move v14, v3

    .line 97
    move v3, v2

    .line 98
    move v2, v14

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_5
    const/16 v12, 0x2c

    .line 102
    .line 103
    if-ne v3, v12, :cond_6

    .line 104
    const/4 v12, 0x1

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    const/4 v12, 0x0

    .line 107
    .line 108
    :goto_3
    iput-boolean v12, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 109
    .line 110
    if-eqz v12, :cond_9

    .line 111
    .line 112
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 113
    .line 114
    if-ne v2, v3, :cond_7

    .line 115
    move v3, v2

    .line 116
    move v2, v11

    .line 117
    goto :goto_4

    .line 118
    .line 119
    :cond_7
    add-int/lit8 v3, v2, 0x1

    .line 120
    .line 121
    aget-char v2, v1, v2

    .line 122
    :goto_4
    move v14, v3

    .line 123
    move v3, v2

    .line 124
    move v2, v14

    .line 125
    .line 126
    :goto_5
    if-gt v3, v10, :cond_9

    .line 127
    .line 128
    shl-long v12, v8, v3

    .line 129
    and-long/2addr v12, v6

    .line 130
    .line 131
    cmp-long v12, v12, v4

    .line 132
    .line 133
    if-eqz v12, :cond_9

    .line 134
    .line 135
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 136
    .line 137
    if-ne v2, v3, :cond_8

    .line 138
    move v3, v11

    .line 139
    goto :goto_5

    .line 140
    .line 141
    :cond_8
    add-int/lit8 v3, v2, 0x1

    .line 142
    .line 143
    aget-char v2, v1, v2

    .line 144
    goto :goto_4

    .line 145
    .line 146
    :cond_9
    iput-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 147
    .line 148
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 149
    return-object v0

    .line 150
    .line 151
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 152
    .line 153
    const-string v2, "illegal reference : "

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 161
    throw v1
.end method

.method public readString()Ljava/lang/String;
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    const/16 v3, 0x22

    .line 9
    .line 10
    if-eq v2, v3, :cond_1

    .line 11
    .line 12
    const/16 v4, 0x27

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readStringNotMatch()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    return-object v1

    .line 21
    .line 22
    :cond_1
    :goto_0
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v4

    .line 25
    move v7, v5

    .line 26
    move v8, v7

    .line 27
    .line 28
    :goto_1
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 29
    .line 30
    if-ge v6, v9, :cond_1c

    .line 31
    .line 32
    aget-char v9, v1, v6

    .line 33
    .line 34
    const/16 v10, 0x78

    .line 35
    .line 36
    const/16 v11, 0x75

    .line 37
    .line 38
    const/16 v12, 0x5c

    .line 39
    const/4 v13, 0x1

    .line 40
    .line 41
    if-ne v9, v12, :cond_4

    .line 42
    .line 43
    add-int/lit8 v8, v6, 0x1

    .line 44
    .line 45
    aget-char v9, v1, v8

    .line 46
    .line 47
    if-eq v9, v11, :cond_3

    .line 48
    .line 49
    if-eq v9, v10, :cond_2

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    add-int/lit8 v8, v6, 0x3

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_3
    add-int/lit8 v8, v6, 0x5

    .line 56
    :goto_2
    add-int/2addr v8, v13

    .line 57
    move v6, v8

    .line 58
    move v8, v13

    .line 59
    .line 60
    goto/16 :goto_b

    .line 61
    .line 62
    :cond_4
    if-ne v9, v2, :cond_1b

    .line 63
    .line 64
    if-eqz v8, :cond_f

    .line 65
    .line 66
    new-array v7, v7, [C

    .line 67
    move v6, v5

    .line 68
    .line 69
    :goto_3
    aget-char v8, v1, v4

    .line 70
    .line 71
    if-ne v8, v12, :cond_d

    .line 72
    .line 73
    add-int/lit8 v8, v4, 0x1

    .line 74
    .line 75
    aget-char v9, v1, v8

    .line 76
    .line 77
    if-eq v9, v3, :cond_c

    .line 78
    .line 79
    if-eq v9, v12, :cond_c

    .line 80
    .line 81
    const/16 v14, 0x62

    .line 82
    .line 83
    if-eq v9, v14, :cond_b

    .line 84
    .line 85
    const/16 v14, 0x66

    .line 86
    .line 87
    if-eq v9, v14, :cond_a

    .line 88
    .line 89
    const/16 v14, 0x6e

    .line 90
    .line 91
    if-eq v9, v14, :cond_9

    .line 92
    .line 93
    const/16 v14, 0x72

    .line 94
    .line 95
    if-eq v9, v14, :cond_8

    .line 96
    .line 97
    if-eq v9, v10, :cond_7

    .line 98
    .line 99
    const/16 v14, 0x74

    .line 100
    .line 101
    if-eq v9, v14, :cond_6

    .line 102
    .line 103
    if-eq v9, v11, :cond_5

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 107
    move-result v4

    .line 108
    .line 109
    :goto_4
    move/from16 v18, v8

    .line 110
    move v8, v4

    .line 111
    .line 112
    move/from16 v4, v18

    .line 113
    goto :goto_5

    .line 114
    .line 115
    :cond_5
    add-int/lit8 v8, v4, 0x2

    .line 116
    .line 117
    aget-char v8, v1, v8

    .line 118
    .line 119
    add-int/lit8 v9, v4, 0x3

    .line 120
    .line 121
    aget-char v9, v1, v9

    .line 122
    .line 123
    add-int/lit8 v14, v4, 0x4

    .line 124
    .line 125
    aget-char v14, v1, v14

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x5

    .line 128
    .line 129
    aget-char v15, v1, v4

    .line 130
    .line 131
    .line 132
    invoke-static {v8, v9, v14, v15}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 133
    move-result v8

    .line 134
    goto :goto_5

    .line 135
    .line 136
    :cond_6
    const/16 v4, 0x9

    .line 137
    goto :goto_4

    .line 138
    .line 139
    :cond_7
    add-int/lit8 v8, v4, 0x2

    .line 140
    .line 141
    aget-char v8, v1, v8

    .line 142
    .line 143
    add-int/lit8 v4, v4, 0x3

    .line 144
    .line 145
    aget-char v9, v1, v4

    .line 146
    .line 147
    .line 148
    invoke-static {v8, v9}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 149
    move-result v8

    .line 150
    goto :goto_5

    .line 151
    .line 152
    :cond_8
    const/16 v4, 0xd

    .line 153
    goto :goto_4

    .line 154
    .line 155
    :cond_9
    const/16 v4, 0xa

    .line 156
    goto :goto_4

    .line 157
    .line 158
    :cond_a
    const/16 v4, 0xc

    .line 159
    goto :goto_4

    .line 160
    .line 161
    :cond_b
    const/16 v4, 0x8

    .line 162
    goto :goto_4

    .line 163
    :cond_c
    move v4, v8

    .line 164
    move v8, v9

    .line 165
    goto :goto_5

    .line 166
    .line 167
    :cond_d
    if-ne v8, v2, :cond_e

    .line 168
    .line 169
    new-instance v2, Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([C)V

    .line 173
    move v6, v4

    .line 174
    goto :goto_6

    .line 175
    .line 176
    :cond_e
    :goto_5
    aput-char v8, v7, v6

    .line 177
    add-int/2addr v4, v13

    .line 178
    add-int/2addr v6, v13

    .line 179
    goto :goto_3

    .line 180
    .line 181
    :cond_f
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->str:Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v2, :cond_10

    .line 184
    .line 185
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    goto :goto_6

    .line 191
    .line 192
    :cond_10
    new-instance v2, Ljava/lang/String;

    .line 193
    .line 194
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 195
    .line 196
    sub-int v4, v6, v3

    .line 197
    .line 198
    .line 199
    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 200
    .line 201
    :goto_6
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 202
    .line 203
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 204
    .line 205
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 206
    .line 207
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 208
    and-long/2addr v3, v7

    .line 209
    .line 210
    const-wide/16 v7, 0x0

    .line 211
    .line 212
    cmp-long v3, v3, v7

    .line 213
    .line 214
    if-eqz v3, :cond_11

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    .line 221
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 222
    move-result v3

    .line 223
    .line 224
    if-eqz v3, :cond_12

    .line 225
    .line 226
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 227
    .line 228
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 229
    .line 230
    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 231
    .line 232
    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 233
    and-long/2addr v3, v9

    .line 234
    .line 235
    cmp-long v3, v3, v7

    .line 236
    .line 237
    if-eqz v3, :cond_12

    .line 238
    const/4 v2, 0x0

    .line 239
    .line 240
    :cond_12
    add-int/lit8 v3, v6, 0x1

    .line 241
    .line 242
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 243
    .line 244
    const/16 v9, 0x1a

    .line 245
    .line 246
    if-eq v3, v4, :cond_1a

    .line 247
    .line 248
    add-int/lit8 v6, v6, 0x2

    .line 249
    .line 250
    aget-char v3, v1, v3

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :goto_7
    const-wide v10, 0x100003701L

    .line 256
    .line 257
    const-wide/16 v14, 0x1

    .line 258
    .line 259
    const/16 v4, 0x20

    .line 260
    .line 261
    if-gt v3, v4, :cond_14

    .line 262
    .line 263
    shl-long v16, v14, v3

    .line 264
    .line 265
    and-long v16, v16, v10

    .line 266
    .line 267
    cmp-long v12, v16, v7

    .line 268
    .line 269
    if-eqz v12, :cond_14

    .line 270
    .line 271
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 272
    .line 273
    if-ne v6, v3, :cond_13

    .line 274
    move v3, v6

    .line 275
    goto :goto_a

    .line 276
    .line 277
    :cond_13
    add-int/lit8 v3, v6, 0x1

    .line 278
    .line 279
    aget-char v4, v1, v6

    .line 280
    move v6, v3

    .line 281
    move v3, v4

    .line 282
    goto :goto_7

    .line 283
    .line 284
    :cond_14
    const/16 v12, 0x2c

    .line 285
    .line 286
    if-ne v3, v12, :cond_15

    .line 287
    move v5, v13

    .line 288
    .line 289
    :cond_15
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 290
    .line 291
    if-eqz v5, :cond_19

    .line 292
    .line 293
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 294
    .line 295
    if-ne v6, v3, :cond_16

    .line 296
    goto :goto_9

    .line 297
    .line 298
    :cond_16
    add-int/lit8 v3, v6, 0x1

    .line 299
    .line 300
    aget-char v5, v1, v6

    .line 301
    :goto_8
    move v6, v3

    .line 302
    .line 303
    if-gt v5, v4, :cond_18

    .line 304
    .line 305
    shl-long v12, v14, v5

    .line 306
    and-long/2addr v12, v10

    .line 307
    .line 308
    cmp-long v3, v12, v7

    .line 309
    .line 310
    if-eqz v3, :cond_18

    .line 311
    .line 312
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 313
    .line 314
    if-ne v6, v3, :cond_17

    .line 315
    goto :goto_9

    .line 316
    .line 317
    :cond_17
    add-int/lit8 v3, v6, 0x1

    .line 318
    .line 319
    aget-char v5, v1, v6

    .line 320
    goto :goto_8

    .line 321
    :cond_18
    move v9, v5

    .line 322
    goto :goto_9

    .line 323
    :cond_19
    move v9, v3

    .line 324
    .line 325
    :goto_9
    iput-char v9, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 326
    .line 327
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 328
    return-object v2

    .line 329
    .line 330
    :cond_1a
    :goto_a
    iput-char v9, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 331
    .line 332
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 333
    .line 334
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 335
    return-object v2

    .line 336
    .line 337
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    .line 338
    .line 339
    :goto_b
    add-int/lit8 v7, v7, 0x1

    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :cond_1c
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 344
    .line 345
    const-string v2, "invalid escape character EOI"

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    move-result-object v2

    .line 350
    .line 351
    .line 352
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 353
    throw v1
.end method

.method public readString0()V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 10
    move v4, v2

    .line 11
    move v5, v3

    .line 12
    .line 13
    :goto_0
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 14
    .line 15
    aget-char v7, v6, v4

    .line 16
    .line 17
    const/16 v8, 0x78

    .line 18
    .line 19
    const/16 v9, 0x75

    .line 20
    .line 21
    const/16 v10, 0x5c

    .line 22
    const/4 v11, 0x1

    .line 23
    .line 24
    if-ne v7, v10, :cond_2

    .line 25
    .line 26
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 27
    .line 28
    add-int/lit8 v7, v4, 0x1

    .line 29
    .line 30
    aget-char v6, v6, v7

    .line 31
    .line 32
    if-eq v6, v9, :cond_1

    .line 33
    .line 34
    if-eq v6, v8, :cond_0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    add-int/lit8 v7, v4, 0x3

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v7, v4, 0x5

    .line 41
    :goto_1
    add-int/2addr v7, v11

    .line 42
    move v4, v7

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_2
    if-ne v7, v1, :cond_f

    .line 47
    .line 48
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 49
    .line 50
    if-eqz v1, :cond_8

    .line 51
    .line 52
    new-array v1, v5, [C

    .line 53
    move v4, v3

    .line 54
    .line 55
    :goto_2
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 56
    .line 57
    aget-char v6, v5, v2

    .line 58
    .line 59
    const/16 v7, 0x22

    .line 60
    .line 61
    if-ne v6, v10, :cond_6

    .line 62
    .line 63
    add-int/lit8 v6, v2, 0x1

    .line 64
    .line 65
    aget-char v12, v5, v6

    .line 66
    .line 67
    if-eq v12, v7, :cond_5

    .line 68
    .line 69
    if-eq v12, v10, :cond_5

    .line 70
    .line 71
    if-eq v12, v9, :cond_4

    .line 72
    .line 73
    if-eq v12, v8, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 77
    move-result v2

    .line 78
    .line 79
    move/from16 v16, v6

    .line 80
    move v6, v2

    .line 81
    .line 82
    move/from16 v2, v16

    .line 83
    goto :goto_3

    .line 84
    .line 85
    :cond_3
    add-int/lit8 v6, v2, 0x2

    .line 86
    .line 87
    aget-char v6, v5, v6

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x3

    .line 90
    .line 91
    aget-char v5, v5, v2

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v5}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 95
    move-result v6

    .line 96
    goto :goto_3

    .line 97
    .line 98
    :cond_4
    add-int/lit8 v6, v2, 0x2

    .line 99
    .line 100
    aget-char v6, v5, v6

    .line 101
    .line 102
    add-int/lit8 v7, v2, 0x3

    .line 103
    .line 104
    aget-char v7, v5, v7

    .line 105
    .line 106
    add-int/lit8 v12, v2, 0x4

    .line 107
    .line 108
    aget-char v12, v5, v12

    .line 109
    .line 110
    add-int/lit8 v2, v2, 0x5

    .line 111
    .line 112
    aget-char v5, v5, v2

    .line 113
    .line 114
    .line 115
    invoke-static {v6, v7, v12, v5}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 116
    move-result v6

    .line 117
    goto :goto_3

    .line 118
    :cond_5
    move v2, v6

    .line 119
    move v6, v12

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_6
    if-ne v6, v7, :cond_7

    .line 123
    .line 124
    new-instance v4, Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    .line 128
    move-object v1, v4

    .line 129
    move v4, v2

    .line 130
    goto :goto_4

    .line 131
    .line 132
    :cond_7
    :goto_3
    aput-char v6, v1, v4

    .line 133
    add-int/2addr v2, v11

    .line 134
    add-int/2addr v4, v11

    .line 135
    goto :goto_2

    .line 136
    .line 137
    :cond_8
    new-instance v1, Ljava/lang/String;

    .line 138
    .line 139
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 140
    .line 141
    sub-int v5, v4, v2

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v6, v2, v5}, Ljava/lang/String;-><init>([CII)V

    .line 145
    :goto_4
    add-int/2addr v4, v11

    .line 146
    .line 147
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 148
    .line 149
    const/16 v5, 0x1a

    .line 150
    .line 151
    if-ne v4, v2, :cond_9

    .line 152
    move v2, v5

    .line 153
    goto :goto_5

    .line 154
    .line 155
    :cond_9
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 156
    .line 157
    aget-char v2, v2, v4

    .line 158
    .line 159
    :goto_5
    const-wide/16 v6, 0x0

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    const-wide v8, 0x100003701L

    .line 165
    .line 166
    const-wide/16 v12, 0x1

    .line 167
    .line 168
    const/16 v10, 0x20

    .line 169
    .line 170
    if-gt v2, v10, :cond_a

    .line 171
    .line 172
    shl-long v14, v12, v2

    .line 173
    and-long/2addr v14, v8

    .line 174
    .line 175
    cmp-long v14, v14, v6

    .line 176
    .line 177
    if-eqz v14, :cond_a

    .line 178
    .line 179
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 180
    .line 181
    add-int/lit8 v4, v4, 0x1

    .line 182
    .line 183
    aget-char v2, v2, v4

    .line 184
    goto :goto_5

    .line 185
    .line 186
    :cond_a
    const/16 v14, 0x2c

    .line 187
    .line 188
    if-ne v2, v14, :cond_b

    .line 189
    move v3, v11

    .line 190
    .line 191
    :cond_b
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 192
    .line 193
    if-eqz v3, :cond_d

    .line 194
    .line 195
    add-int/lit8 v2, v4, 0x1

    .line 196
    .line 197
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 198
    .line 199
    add-int/lit8 v4, v4, 0x2

    .line 200
    .line 201
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 202
    .line 203
    aget-char v2, v3, v2

    .line 204
    .line 205
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 206
    .line 207
    :goto_6
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 208
    .line 209
    if-gt v2, v10, :cond_e

    .line 210
    .line 211
    shl-long v2, v12, v2

    .line 212
    and-long/2addr v2, v8

    .line 213
    .line 214
    cmp-long v2, v2, v6

    .line 215
    .line 216
    if-eqz v2, :cond_e

    .line 217
    .line 218
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 219
    .line 220
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 221
    .line 222
    if-lt v2, v3, :cond_c

    .line 223
    .line 224
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 225
    goto :goto_6

    .line 226
    .line 227
    :cond_c
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 228
    .line 229
    add-int/lit8 v4, v2, 0x1

    .line 230
    .line 231
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 232
    .line 233
    aget-char v2, v3, v2

    .line 234
    .line 235
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 236
    goto :goto_6

    .line 237
    :cond_d
    add-int/2addr v4, v11

    .line 238
    .line 239
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 240
    int-to-char v2, v2

    .line 241
    .line 242
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 243
    .line 244
    :cond_e
    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 245
    return-void

    .line 246
    .line 247
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 248
    .line 249
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 250
    .line 251
    goto/16 :goto_0
.end method

.method public readUUID()Ljava/util/UUID;
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    const/16 v2, 0x6e

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readNull()V

    .line 13
    return-object v3

    .line 14
    .line 15
    :cond_0
    const/16 v2, 0x22

    .line 16
    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    const/16 v2, 0x27

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 25
    .line 26
    const-string v2, "syntax error, can not read uuid"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v1

    .line 35
    .line 36
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 37
    .line 38
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 39
    .line 40
    add-int/lit8 v5, v4, 0x24

    .line 41
    array-length v6, v2

    .line 42
    .line 43
    const/16 v7, 0x20

    .line 44
    const/4 v8, 0x0

    .line 45
    .line 46
    const-wide/16 v9, 0x0

    .line 47
    const/4 v11, 0x4

    .line 48
    .line 49
    if-ge v5, v6, :cond_8

    .line 50
    .line 51
    aget-char v5, v2, v5

    .line 52
    .line 53
    if-ne v5, v1, :cond_8

    .line 54
    .line 55
    add-int/lit8 v5, v4, 0x8

    .line 56
    .line 57
    aget-char v5, v2, v5

    .line 58
    .line 59
    const/16 v6, 0x2d

    .line 60
    .line 61
    if-ne v5, v6, :cond_8

    .line 62
    .line 63
    add-int/lit8 v5, v4, 0xd

    .line 64
    .line 65
    aget-char v5, v2, v5

    .line 66
    .line 67
    if-ne v5, v6, :cond_8

    .line 68
    .line 69
    add-int/lit8 v5, v4, 0x12

    .line 70
    .line 71
    aget-char v5, v2, v5

    .line 72
    .line 73
    if-ne v5, v6, :cond_8

    .line 74
    .line 75
    add-int/lit8 v5, v4, 0x17

    .line 76
    .line 77
    aget-char v5, v2, v5

    .line 78
    .line 79
    if-ne v5, v6, :cond_8

    .line 80
    move v1, v8

    .line 81
    move-wide v5, v9

    .line 82
    .line 83
    :goto_1
    const/16 v3, 0x8

    .line 84
    .line 85
    if-ge v1, v3, :cond_3

    .line 86
    shl-long/2addr v5, v11

    .line 87
    .line 88
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 89
    .line 90
    add-int v12, v4, v1

    .line 91
    .line 92
    aget-char v12, v2, v12

    .line 93
    .line 94
    add-int/lit8 v12, v12, -0x30

    .line 95
    .line 96
    aget-byte v3, v3, v12

    .line 97
    int-to-long v12, v3

    .line 98
    add-long/2addr v5, v12

    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_3
    const/16 v1, 0x9

    .line 104
    .line 105
    :goto_2
    const/16 v3, 0xd

    .line 106
    .line 107
    if-ge v1, v3, :cond_4

    .line 108
    shl-long/2addr v5, v11

    .line 109
    .line 110
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 111
    .line 112
    add-int v12, v4, v1

    .line 113
    .line 114
    aget-char v12, v2, v12

    .line 115
    .line 116
    add-int/lit8 v12, v12, -0x30

    .line 117
    .line 118
    aget-byte v3, v3, v12

    .line 119
    int-to-long v12, v3

    .line 120
    add-long/2addr v5, v12

    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    goto :goto_2

    .line 124
    .line 125
    :cond_4
    const/16 v1, 0xe

    .line 126
    .line 127
    :goto_3
    const/16 v3, 0x12

    .line 128
    .line 129
    if-ge v1, v3, :cond_5

    .line 130
    shl-long/2addr v5, v11

    .line 131
    .line 132
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 133
    .line 134
    add-int v12, v4, v1

    .line 135
    .line 136
    aget-char v12, v2, v12

    .line 137
    .line 138
    add-int/lit8 v12, v12, -0x30

    .line 139
    .line 140
    aget-byte v3, v3, v12

    .line 141
    int-to-long v12, v3

    .line 142
    add-long/2addr v5, v12

    .line 143
    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    goto :goto_3

    .line 146
    .line 147
    :cond_5
    const/16 v1, 0x13

    .line 148
    move-wide v12, v9

    .line 149
    .line 150
    :goto_4
    const/16 v3, 0x17

    .line 151
    .line 152
    if-ge v1, v3, :cond_6

    .line 153
    shl-long/2addr v12, v11

    .line 154
    .line 155
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 156
    .line 157
    add-int v14, v4, v1

    .line 158
    .line 159
    aget-char v14, v2, v14

    .line 160
    .line 161
    add-int/lit8 v14, v14, -0x30

    .line 162
    .line 163
    aget-byte v3, v3, v14

    .line 164
    int-to-long v14, v3

    .line 165
    add-long/2addr v12, v14

    .line 166
    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto :goto_4

    .line 169
    .line 170
    :cond_6
    const/16 v1, 0x18

    .line 171
    .line 172
    :goto_5
    const/16 v3, 0x24

    .line 173
    .line 174
    if-ge v1, v3, :cond_7

    .line 175
    shl-long/2addr v12, v11

    .line 176
    .line 177
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 178
    .line 179
    add-int v14, v4, v1

    .line 180
    .line 181
    aget-char v14, v2, v14

    .line 182
    .line 183
    add-int/lit8 v14, v14, -0x30

    .line 184
    .line 185
    aget-byte v3, v3, v14

    .line 186
    int-to-long v14, v3

    .line 187
    add-long/2addr v12, v14

    .line 188
    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    goto :goto_5

    .line 191
    .line 192
    :cond_7
    add-int/lit8 v4, v4, 0x25

    .line 193
    goto :goto_8

    .line 194
    .line 195
    :cond_8
    add-int/lit8 v5, v4, 0x20

    .line 196
    array-length v6, v2

    .line 197
    .line 198
    if-ge v5, v6, :cond_10

    .line 199
    .line 200
    aget-char v5, v2, v5

    .line 201
    .line 202
    if-ne v5, v1, :cond_10

    .line 203
    move v1, v8

    .line 204
    move-wide v5, v9

    .line 205
    .line 206
    :goto_6
    const/16 v3, 0x10

    .line 207
    .line 208
    if-ge v1, v3, :cond_9

    .line 209
    shl-long/2addr v5, v11

    .line 210
    .line 211
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 212
    .line 213
    add-int v12, v4, v1

    .line 214
    .line 215
    aget-char v12, v2, v12

    .line 216
    .line 217
    add-int/lit8 v12, v12, -0x30

    .line 218
    .line 219
    aget-byte v3, v3, v12

    .line 220
    int-to-long v12, v3

    .line 221
    add-long/2addr v5, v12

    .line 222
    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 224
    goto :goto_6

    .line 225
    :cond_9
    move-wide v12, v9

    .line 226
    .line 227
    :goto_7
    if-ge v3, v7, :cond_a

    .line 228
    shl-long/2addr v12, v11

    .line 229
    .line 230
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 231
    .line 232
    add-int v14, v4, v3

    .line 233
    .line 234
    aget-char v14, v2, v14

    .line 235
    .line 236
    add-int/lit8 v14, v14, -0x30

    .line 237
    .line 238
    aget-byte v1, v1, v14

    .line 239
    int-to-long v14, v1

    .line 240
    add-long/2addr v12, v14

    .line 241
    .line 242
    add-int/lit8 v3, v3, 0x1

    .line 243
    goto :goto_7

    .line 244
    .line 245
    :cond_a
    add-int/lit8 v4, v4, 0x21

    .line 246
    .line 247
    :goto_8
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 248
    .line 249
    const/16 v3, 0x1a

    .line 250
    .line 251
    if-ne v4, v1, :cond_b

    .line 252
    move v1, v4

    .line 253
    :goto_9
    move v4, v3

    .line 254
    goto :goto_a

    .line 255
    .line 256
    :cond_b
    add-int/lit8 v1, v4, 0x1

    .line 257
    .line 258
    aget-char v4, v2, v4

    .line 259
    .line 260
    :goto_a
    if-gt v4, v7, :cond_d

    .line 261
    .line 262
    const-wide/16 v14, 0x1

    .line 263
    shl-long/2addr v14, v4

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    const-wide v16, 0x100003701L

    .line 269
    .line 270
    and-long v14, v14, v16

    .line 271
    .line 272
    cmp-long v11, v14, v9

    .line 273
    .line 274
    if-eqz v11, :cond_d

    .line 275
    .line 276
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 277
    .line 278
    if-ne v1, v4, :cond_c

    .line 279
    goto :goto_9

    .line 280
    .line 281
    :cond_c
    add-int/lit8 v4, v1, 0x1

    .line 282
    .line 283
    aget-char v1, v2, v1

    .line 284
    .line 285
    move/from16 v18, v4

    .line 286
    move v4, v1

    .line 287
    .line 288
    move/from16 v1, v18

    .line 289
    goto :goto_a

    .line 290
    .line 291
    :cond_d
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 292
    .line 293
    const/16 v1, 0x2c

    .line 294
    .line 295
    if-ne v4, v1, :cond_e

    .line 296
    const/4 v8, 0x1

    .line 297
    .line 298
    :cond_e
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 299
    .line 300
    if-eqz v8, :cond_f

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 304
    goto :goto_b

    .line 305
    .line 306
    :cond_f
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 307
    .line 308
    :goto_b
    new-instance v1, Ljava/util/UUID;

    .line 309
    .line 310
    .line 311
    invoke-direct {v1, v5, v6, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 312
    return-object v1

    .line 313
    .line 314
    .line 315
    :cond_10
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readString()Ljava/lang/String;

    .line 316
    move-result-object v1

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 320
    move-result v2

    .line 321
    .line 322
    if-eqz v2, :cond_11

    .line 323
    return-object v3

    .line 324
    .line 325
    .line 326
    :cond_11
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 327
    move-result-object v1

    .line 328
    return-object v1
.end method

.method public readValueHashCode()J
    .locals 22

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
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 21
    .line 22
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 23
    .line 24
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 25
    .line 26
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 27
    move v9, v4

    .line 28
    .line 29
    const-wide/16 v10, 0x0

    .line 30
    .line 31
    :goto_0
    const/16 v12, 0x78

    .line 32
    .line 33
    const/16 v13, 0x75

    .line 34
    .line 35
    const/16 v14, 0x5c

    .line 36
    const/4 v4, 0x1

    .line 37
    .line 38
    const-wide/16 v16, 0x0

    .line 39
    .line 40
    if-ge v5, v6, :cond_1

    .line 41
    .line 42
    aget-char v7, v3, v5

    .line 43
    .line 44
    if-ne v7, v1, :cond_3

    .line 45
    .line 46
    if-nez v9, :cond_2

    .line 47
    .line 48
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 49
    .line 50
    move-wide/from16 v10, v16

    .line 51
    .line 52
    :cond_1
    :goto_1
    const/16 v19, 0x20

    .line 53
    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :cond_2
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 57
    .line 58
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 59
    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_3
    if-ne v7, v14, :cond_4

    .line 64
    .line 65
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 66
    .line 67
    add-int/lit8 v7, v5, 0x1

    .line 68
    .line 69
    aget-char v8, v3, v7

    .line 70
    .line 71
    if-eq v8, v13, :cond_6

    .line 72
    .line 73
    if-eq v8, v12, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 77
    move-result v5

    .line 78
    .line 79
    move/from16 v19, v7

    .line 80
    move v7, v5

    .line 81
    .line 82
    move/from16 v5, v19

    .line 83
    .line 84
    :cond_4
    :goto_2
    const/16 v19, 0x20

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_5
    add-int/lit8 v7, v5, 0x2

    .line 88
    .line 89
    aget-char v7, v3, v7

    .line 90
    .line 91
    add-int/lit8 v5, v5, 0x3

    .line 92
    .line 93
    aget-char v8, v3, v5

    .line 94
    .line 95
    .line 96
    invoke-static {v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 97
    move-result v7

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_6
    add-int/lit8 v7, v5, 0x2

    .line 101
    .line 102
    aget-char v7, v3, v7

    .line 103
    .line 104
    add-int/lit8 v8, v5, 0x3

    .line 105
    .line 106
    aget-char v8, v3, v8

    .line 107
    .line 108
    add-int/lit8 v18, v5, 0x4

    .line 109
    .line 110
    const/16 v19, 0x20

    .line 111
    .line 112
    aget-char v15, v3, v18

    .line 113
    .line 114
    add-int/lit8 v5, v5, 0x5

    .line 115
    .line 116
    aget-char v2, v3, v5

    .line 117
    .line 118
    .line 119
    invoke-static {v7, v8, v15, v2}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 120
    move-result v7

    .line 121
    .line 122
    :goto_3
    const/16 v2, 0xff

    .line 123
    .line 124
    if-gt v7, v2, :cond_8

    .line 125
    .line 126
    const/16 v2, 0x8

    .line 127
    .line 128
    if-ge v9, v2, :cond_8

    .line 129
    .line 130
    if-nez v9, :cond_7

    .line 131
    .line 132
    if-nez v7, :cond_7

    .line 133
    goto :goto_6

    .line 134
    .line 135
    .line 136
    :cond_7
    packed-switch v9, :pswitch_data_0

    .line 137
    goto :goto_5

    .line 138
    :pswitch_0
    int-to-byte v2, v7

    .line 139
    int-to-long v7, v2

    .line 140
    .line 141
    const/16 v2, 0x38

    .line 142
    shl-long/2addr v7, v2

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    const-wide v12, 0xffffffffffffffL

    .line 148
    :goto_4
    and-long/2addr v10, v12

    .line 149
    add-long/2addr v10, v7

    .line 150
    goto :goto_5

    .line 151
    :pswitch_1
    int-to-byte v2, v7

    .line 152
    int-to-long v7, v2

    .line 153
    .line 154
    const/16 v2, 0x30

    .line 155
    shl-long/2addr v7, v2

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    const-wide v12, 0xffffffffffffL

    .line 161
    goto :goto_4

    .line 162
    :pswitch_2
    int-to-byte v2, v7

    .line 163
    int-to-long v7, v2

    .line 164
    .line 165
    const/16 v2, 0x28

    .line 166
    shl-long/2addr v7, v2

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    const-wide v12, 0xffffffffffL

    .line 172
    goto :goto_4

    .line 173
    :pswitch_3
    int-to-byte v2, v7

    .line 174
    int-to-long v7, v2

    .line 175
    .line 176
    shl-long v7, v7, v19

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    const-wide v12, 0xffffffffL

    .line 182
    goto :goto_4

    .line 183
    :pswitch_4
    int-to-byte v2, v7

    .line 184
    .line 185
    shl-int/lit8 v2, v2, 0x18

    .line 186
    int-to-long v7, v2

    .line 187
    .line 188
    .line 189
    const-wide/32 v12, 0xffffff

    .line 190
    goto :goto_4

    .line 191
    :pswitch_5
    int-to-byte v2, v7

    .line 192
    .line 193
    shl-int/lit8 v2, v2, 0x10

    .line 194
    int-to-long v7, v2

    .line 195
    .line 196
    .line 197
    const-wide/32 v12, 0xffff

    .line 198
    goto :goto_4

    .line 199
    :pswitch_6
    int-to-byte v7, v7

    .line 200
    .line 201
    shl-int/lit8 v2, v7, 0x8

    .line 202
    int-to-long v7, v2

    .line 203
    .line 204
    const-wide/16 v12, 0xff

    .line 205
    goto :goto_4

    .line 206
    :pswitch_7
    int-to-byte v2, v7

    .line 207
    int-to-long v10, v2

    .line 208
    :goto_5
    add-int/2addr v5, v4

    .line 209
    .line 210
    add-int/lit8 v9, v9, 0x1

    .line 211
    .line 212
    const/16 v2, 0x22

    .line 213
    const/4 v4, 0x0

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_8
    :goto_6
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameBegin:I

    .line 218
    .line 219
    move-wide/from16 v10, v16

    .line 220
    .line 221
    :goto_7
    cmp-long v1, v10, v16

    .line 222
    .line 223
    if-eqz v1, :cond_9

    .line 224
    .line 225
    move/from16 v20, v4

    .line 226
    .line 227
    goto/16 :goto_b

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    :cond_9
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 233
    move-wide v10, v1

    .line 234
    const/4 v1, 0x0

    .line 235
    .line 236
    :goto_8
    aget-char v2, v3, v5

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    const-wide v7, 0x100000001b3L

    .line 242
    .line 243
    if-ne v2, v14, :cond_c

    .line 244
    .line 245
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 246
    .line 247
    add-int/lit8 v2, v5, 0x1

    .line 248
    .line 249
    aget-char v9, v3, v2

    .line 250
    .line 251
    if-eq v9, v13, :cond_b

    .line 252
    .line 253
    if-eq v9, v12, :cond_a

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 257
    move-result v5

    .line 258
    .line 259
    :goto_9
    move/from16 v20, v4

    .line 260
    goto :goto_a

    .line 261
    .line 262
    :cond_a
    add-int/lit8 v2, v5, 0x2

    .line 263
    .line 264
    aget-char v2, v3, v2

    .line 265
    .line 266
    add-int/lit8 v5, v5, 0x3

    .line 267
    .line 268
    aget-char v9, v3, v5

    .line 269
    .line 270
    .line 271
    invoke-static {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 272
    move-result v2

    .line 273
    .line 274
    move/from16 v20, v5

    .line 275
    move v5, v2

    .line 276
    .line 277
    move/from16 v2, v20

    .line 278
    goto :goto_9

    .line 279
    .line 280
    :cond_b
    add-int/lit8 v2, v5, 0x2

    .line 281
    .line 282
    aget-char v2, v3, v2

    .line 283
    .line 284
    add-int/lit8 v9, v5, 0x3

    .line 285
    .line 286
    aget-char v9, v3, v9

    .line 287
    .line 288
    add-int/lit8 v15, v5, 0x4

    .line 289
    .line 290
    aget-char v15, v3, v15

    .line 291
    .line 292
    add-int/lit8 v5, v5, 0x5

    .line 293
    .line 294
    move/from16 v20, v4

    .line 295
    .line 296
    aget-char v4, v3, v5

    .line 297
    .line 298
    .line 299
    invoke-static {v2, v9, v15, v4}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 300
    move-result v2

    .line 301
    .line 302
    move/from16 v21, v5

    .line 303
    move v5, v2

    .line 304
    .line 305
    move/from16 v2, v21

    .line 306
    .line 307
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 308
    int-to-long v4, v5

    .line 309
    xor-long/2addr v4, v10

    .line 310
    mul-long/2addr v4, v7

    .line 311
    move-wide v10, v4

    .line 312
    .line 313
    move/from16 v9, v19

    .line 314
    move v5, v2

    .line 315
    .line 316
    goto/16 :goto_10

    .line 317
    .line 318
    :cond_c
    move/from16 v20, v4

    .line 319
    .line 320
    const/16 v4, 0x22

    .line 321
    .line 322
    if-ne v2, v4, :cond_13

    .line 323
    .line 324
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameLength:I

    .line 325
    .line 326
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nameEnd:I

    .line 327
    const/4 v1, 0x0

    .line 328
    .line 329
    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 330
    .line 331
    add-int/lit8 v5, v5, 0x1

    .line 332
    .line 333
    :goto_b
    const/16 v1, 0x1a

    .line 334
    .line 335
    if-ne v5, v6, :cond_d

    .line 336
    move v2, v1

    .line 337
    goto :goto_c

    .line 338
    .line 339
    :cond_d
    aget-char v2, v3, v5

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    :goto_c
    const-wide v7, 0x100003701L

    .line 345
    .line 346
    const-wide/16 v12, 0x1

    .line 347
    .line 348
    move/from16 v4, v19

    .line 349
    .line 350
    if-gt v2, v4, :cond_e

    .line 351
    .line 352
    shl-long v14, v12, v2

    .line 353
    and-long/2addr v14, v7

    .line 354
    .line 355
    cmp-long v4, v14, v16

    .line 356
    .line 357
    if-eqz v4, :cond_e

    .line 358
    .line 359
    add-int/lit8 v5, v5, 0x1

    .line 360
    .line 361
    aget-char v2, v3, v5

    .line 362
    .line 363
    const/16 v19, 0x20

    .line 364
    goto :goto_c

    .line 365
    .line 366
    :cond_e
    const/16 v4, 0x2c

    .line 367
    .line 368
    if-ne v2, v4, :cond_f

    .line 369
    .line 370
    move/from16 v4, v20

    .line 371
    goto :goto_d

    .line 372
    :cond_f
    const/4 v4, 0x0

    .line 373
    .line 374
    :goto_d
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 375
    .line 376
    if-eqz v4, :cond_12

    .line 377
    .line 378
    add-int/lit8 v5, v5, 0x1

    .line 379
    .line 380
    if-ne v5, v6, :cond_10

    .line 381
    .line 382
    :goto_e
    const/16 v9, 0x20

    .line 383
    goto :goto_f

    .line 384
    .line 385
    :cond_10
    aget-char v1, v3, v5

    .line 386
    goto :goto_e

    .line 387
    .line 388
    :goto_f
    if-gt v1, v9, :cond_11

    .line 389
    .line 390
    shl-long v14, v12, v1

    .line 391
    and-long/2addr v14, v7

    .line 392
    .line 393
    cmp-long v2, v14, v16

    .line 394
    .line 395
    if-eqz v2, :cond_11

    .line 396
    .line 397
    add-int/lit8 v5, v5, 0x1

    .line 398
    .line 399
    aget-char v1, v3, v5

    .line 400
    goto :goto_f

    .line 401
    :cond_11
    move v2, v1

    .line 402
    .line 403
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 404
    .line 405
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 406
    .line 407
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 408
    return-wide v10

    .line 409
    .line 410
    :cond_13
    move/from16 v9, v19

    .line 411
    .line 412
    add-int/lit8 v5, v5, 0x1

    .line 413
    move v15, v5

    .line 414
    int-to-long v4, v2

    .line 415
    xor-long/2addr v4, v10

    .line 416
    mul-long/2addr v4, v7

    .line 417
    move-wide v10, v4

    .line 418
    move v5, v15

    .line 419
    .line 420
    :goto_10
    add-int/lit8 v1, v1, 0x1

    .line 421
    .line 422
    move/from16 v19, v9

    .line 423
    .line 424
    move/from16 v4, v20

    .line 425
    .line 426
    goto/16 :goto_8

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

.method public readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 5

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 14
    .line 15
    const-string v0, "date only support string input"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    .line 21
    :cond_1
    :goto_0
    const/16 v0, 0x13

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-ge p1, v0, :cond_2

    .line 25
    return-object v1

    .line 26
    .line 27
    :cond_2
    const/16 v0, 0x1e

    .line 28
    .line 29
    const/16 v2, 0x5a

    .line 30
    .line 31
    if-ne p1, v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 34
    .line 35
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 36
    .line 37
    add-int/lit8 v4, v3, 0x1d

    .line 38
    .line 39
    aget-char v4, v0, v4

    .line 40
    .line 41
    if-ne v4, v2, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime29([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_3
    const/16 v0, 0x1d

    .line 55
    .line 56
    if-ne p1, v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 59
    .line 60
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 61
    .line 62
    add-int/lit8 v4, v3, 0x1c

    .line 63
    .line 64
    aget-char v4, v0, v4

    .line 65
    .line 66
    if-ne v4, v2, :cond_4

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime28([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 76
    move-result-object v0

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_4
    const/16 v0, 0x1c

    .line 80
    .line 81
    if-ne p1, v0, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 84
    .line 85
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 86
    .line 87
    add-int/lit8 v4, v3, 0x1b

    .line 88
    .line 89
    aget-char v4, v0, v4

    .line 90
    .line 91
    if-ne v4, v2, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime27([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 101
    move-result-object v0

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_5
    const/16 v0, 0x1b

    .line 105
    .line 106
    if-ne p1, v0, :cond_6

    .line 107
    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 109
    .line 110
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 111
    .line 112
    add-int/lit8 v4, v3, 0x1a

    .line 113
    .line 114
    aget-char v4, v0, v4

    .line 115
    .line 116
    if-ne v4, v2, :cond_6

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime26([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 126
    move-result-object v0

    .line 127
    goto :goto_1

    .line 128
    .line 129
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 130
    .line 131
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 132
    .line 133
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 134
    .line 135
    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v2, p1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([CIILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    :goto_1
    if-nez v0, :cond_7

    .line 142
    return-object v1

    .line 143
    .line 144
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 145
    const/4 v2, 0x1

    .line 146
    add-int/2addr p1, v2

    .line 147
    add-int/2addr v1, p1

    .line 148
    .line 149
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 153
    .line 154
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 155
    .line 156
    const/16 v1, 0x2c

    .line 157
    .line 158
    if-ne p1, v1, :cond_8

    .line 159
    goto :goto_2

    .line 160
    :cond_8
    const/4 v2, 0x0

    .line 161
    .line 162
    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 163
    .line 164
    if-eqz v2, :cond_9

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 168
    :cond_9
    return-object v0
.end method

.method public skipComment()V
    .locals 12

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_a

    .line 9
    .line 10
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 11
    .line 12
    aget-char v3, v2, v0

    .line 13
    .line 14
    const/16 v4, 0x2a

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    const/16 v6, 0x2f

    .line 18
    const/4 v7, 0x1

    .line 19
    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    move v3, v7

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    if-ne v3, v6, :cond_9

    .line 25
    move v3, v5

    .line 26
    .line 27
    :goto_0
    add-int/lit8 v0, v0, 0x2

    .line 28
    .line 29
    aget-char v1, v2, v1

    .line 30
    .line 31
    :goto_1
    if-eqz v3, :cond_2

    .line 32
    .line 33
    if-ne v1, v4, :cond_1

    .line 34
    .line 35
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 36
    .line 37
    if-gt v0, v1, :cond_1

    .line 38
    .line 39
    aget-char v1, v2, v0

    .line 40
    .line 41
    if-ne v1, v6, :cond_1

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    :goto_2
    move v1, v7

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    move v1, v5

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_2
    const/16 v8, 0xa

    .line 50
    .line 51
    if-ne v1, v8, :cond_1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :goto_3
    const/16 v8, 0x1a

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 59
    .line 60
    if-lt v0, v1, :cond_3

    .line 61
    goto :goto_6

    .line 62
    .line 63
    :cond_3
    aget-char v1, v2, v0

    .line 64
    .line 65
    :goto_4
    const/16 v3, 0x20

    .line 66
    .line 67
    if-gt v1, v3, :cond_5

    .line 68
    .line 69
    const-wide/16 v3, 0x1

    .line 70
    shl-long/2addr v3, v1

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const-wide v9, 0x100003701L

    .line 76
    and-long/2addr v3, v9

    .line 77
    .line 78
    const-wide/16 v9, 0x0

    .line 79
    .line 80
    cmp-long v3, v3, v9

    .line 81
    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 87
    .line 88
    if-lt v0, v1, :cond_4

    .line 89
    goto :goto_5

    .line 90
    .line 91
    :cond_4
    aget-char v1, v2, v0

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move v8, v1

    .line 94
    :goto_5
    add-int/2addr v0, v7

    .line 95
    goto :goto_6

    .line 96
    .line 97
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 98
    .line 99
    if-lt v0, v1, :cond_8

    .line 100
    .line 101
    :goto_6
    iput-char v8, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 102
    .line 103
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 104
    .line 105
    if-ne v8, v6, :cond_7

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipComment()V

    .line 109
    :cond_7
    return-void

    .line 110
    .line 111
    :cond_8
    add-int/lit8 v1, v0, 0x1

    .line 112
    .line 113
    aget-char v0, v2, v0

    .line 114
    move v11, v1

    .line 115
    move v1, v0

    .line 116
    move v0, v11

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 120
    .line 121
    const-string v1, "parse comment error"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 129
    throw v0

    .line 130
    .line 131
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 139
    throw v0
.end method

.method public skipName()Z
    .locals 15

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    const/16 v3, 0x27

    .line 7
    .line 8
    if-ne v0, v3, :cond_1

    .line 9
    .line 10
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    .line 12
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 13
    .line 14
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableSingleQuote:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 15
    .line 16
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 17
    and-long/2addr v4, v6

    .line 18
    .line 19
    cmp-long v4, v4, v1

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->notSupportName()Lcom/alibaba/fastjson2/JSONException;

    .line 26
    move-result-object v0

    .line 27
    throw v0

    .line 28
    .line 29
    :cond_1
    :goto_0
    const/16 v4, 0x22

    .line 30
    const/4 v5, 0x1

    .line 31
    .line 32
    if-eq v0, v4, :cond_3

    .line 33
    .line 34
    if-eq v0, v3, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 37
    .line 38
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 39
    .line 40
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 41
    .line 42
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 43
    and-long/2addr v3, v6

    .line 44
    .line 45
    cmp-long v0, v3, v1

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->readFieldNameHashCodeUnquote()J

    .line 51
    return v5

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->notSupportName()Lcom/alibaba/fastjson2/JSONException;

    .line 55
    move-result-object v0

    .line 56
    throw v0

    .line 57
    .line 58
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 59
    .line 60
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 61
    .line 62
    :goto_1
    add-int/lit8 v6, v3, 0x1

    .line 63
    .line 64
    aget-char v7, v4, v3

    .line 65
    .line 66
    const/16 v8, 0x5c

    .line 67
    .line 68
    if-ne v7, v8, :cond_6

    .line 69
    .line 70
    aget-char v3, v4, v6

    .line 71
    .line 72
    const/16 v7, 0x75

    .line 73
    .line 74
    if-ne v3, v7, :cond_4

    .line 75
    const/4 v3, 0x5

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_4
    const/16 v7, 0x78

    .line 79
    .line 80
    if-ne v3, v7, :cond_5

    .line 81
    const/4 v3, 0x3

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move v3, v5

    .line 84
    :goto_2
    add-int/2addr v3, v6

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_6
    if-ne v7, v0, :cond_e

    .line 88
    .line 89
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 90
    .line 91
    const/16 v7, 0x1a

    .line 92
    .line 93
    if-ne v6, v0, :cond_7

    .line 94
    :goto_3
    move v0, v7

    .line 95
    goto :goto_4

    .line 96
    .line 97
    :cond_7
    add-int/lit8 v3, v3, 0x2

    .line 98
    .line 99
    aget-char v0, v4, v6

    .line 100
    move v6, v3

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :goto_4
    const-wide v8, 0x100003701L

    .line 106
    .line 107
    const-wide/16 v10, 0x1

    .line 108
    .line 109
    const/16 v3, 0x20

    .line 110
    .line 111
    if-gt v0, v3, :cond_9

    .line 112
    .line 113
    shl-long v12, v10, v0

    .line 114
    and-long/2addr v12, v8

    .line 115
    .line 116
    cmp-long v12, v12, v1

    .line 117
    .line 118
    if-eqz v12, :cond_9

    .line 119
    .line 120
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 121
    .line 122
    if-ne v6, v0, :cond_8

    .line 123
    goto :goto_3

    .line 124
    .line 125
    :cond_8
    add-int/lit8 v0, v6, 0x1

    .line 126
    .line 127
    aget-char v3, v4, v6

    .line 128
    move v6, v0

    .line 129
    move v0, v3

    .line 130
    goto :goto_4

    .line 131
    .line 132
    :cond_9
    const/16 v12, 0x3a

    .line 133
    .line 134
    if-ne v0, v12, :cond_d

    .line 135
    .line 136
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 137
    .line 138
    if-ne v6, v0, :cond_a

    .line 139
    move v0, v6

    .line 140
    :goto_5
    move v6, v7

    .line 141
    goto :goto_6

    .line 142
    .line 143
    :cond_a
    add-int/lit8 v0, v6, 0x1

    .line 144
    .line 145
    aget-char v6, v4, v6

    .line 146
    .line 147
    :goto_6
    if-gt v6, v3, :cond_c

    .line 148
    .line 149
    shl-long v12, v10, v6

    .line 150
    and-long/2addr v12, v8

    .line 151
    .line 152
    cmp-long v12, v12, v1

    .line 153
    .line 154
    if-eqz v12, :cond_c

    .line 155
    .line 156
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 157
    .line 158
    if-ne v0, v6, :cond_b

    .line 159
    goto :goto_5

    .line 160
    .line 161
    :cond_b
    add-int/lit8 v6, v0, 0x1

    .line 162
    .line 163
    aget-char v0, v4, v0

    .line 164
    move v14, v6

    .line 165
    move v6, v0

    .line 166
    move v0, v14

    .line 167
    goto :goto_6

    .line 168
    .line 169
    :cond_c
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 170
    .line 171
    iput-char v6, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 172
    return v5

    .line 173
    .line 174
    .line 175
    :cond_d
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(I)Lcom/alibaba/fastjson2/JSONException;

    .line 176
    move-result-object v0

    .line 177
    throw v0

    .line 178
    :cond_e
    move v3, v6

    .line 179
    goto :goto_1
.end method

.method public skipValue()V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->chars:[C

    .line 5
    .line 6
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    const/16 v4, 0x5d

    .line 11
    .line 12
    const/16 v7, 0x53

    .line 13
    .line 14
    const/16 v8, 0x65

    .line 15
    .line 16
    const/16 v9, 0x2e

    .line 17
    .line 18
    const/16 v10, 0x2d

    .line 19
    const/4 v11, 0x0

    .line 20
    .line 21
    const/16 v14, 0x2b

    .line 22
    .line 23
    if-eq v2, v14, :cond_17

    .line 24
    .line 25
    const/16 v15, 0x66

    .line 26
    .line 27
    const-wide/16 v16, 0x0

    .line 28
    .line 29
    const/16 v5, 0x6c

    .line 30
    .line 31
    if-eq v2, v15, :cond_13

    .line 32
    .line 33
    const/16 v6, 0x6e

    .line 34
    .line 35
    const/16 v15, 0x75

    .line 36
    .line 37
    if-eq v2, v6, :cond_f

    .line 38
    .line 39
    const/16 v5, 0x74

    .line 40
    .line 41
    if-eq v2, v5, :cond_b

    .line 42
    .line 43
    if-eq v2, v10, :cond_18

    .line 44
    .line 45
    if-eq v2, v9, :cond_18

    .line 46
    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    const/16 v5, 0x22

    .line 51
    .line 52
    const/16 v6, 0x27

    .line 53
    .line 54
    if-eq v2, v5, :cond_8

    .line 55
    .line 56
    if-ne v2, v6, :cond_0

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_0
    const/16 v5, 0x5b

    .line 60
    .line 61
    if-ne v2, v5, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 65
    move v2, v11

    .line 66
    .line 67
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    if-ne v3, v4, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 73
    goto :goto_5

    .line 74
    .line 75
    :cond_1
    if-eqz v2, :cond_3

    .line 76
    .line 77
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->valueError()Lcom/alibaba/fastjson2/JSONException;

    .line 84
    move-result-object v1

    .line 85
    throw v1

    .line 86
    .line 87
    :cond_3
    :goto_1
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipValue()V

    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_4
    const/16 v5, 0x7b

    .line 96
    .line 97
    if-ne v2, v5, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 101
    .line 102
    :goto_2
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 103
    .line 104
    const/16 v3, 0x7d

    .line 105
    .line 106
    if-ne v2, v3, :cond_5

    .line 107
    .line 108
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->next()V

    .line 112
    goto :goto_5

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipName()Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipValue()V

    .line 119
    goto :goto_2

    .line 120
    .line 121
    :cond_6
    if-ne v2, v7, :cond_7

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfSet()Z

    .line 125
    move-result v5

    .line 126
    .line 127
    if-eqz v5, :cond_7

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipValue()V

    .line 131
    goto :goto_5

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 135
    move-result-object v1

    .line 136
    throw v1

    .line 137
    .line 138
    :cond_8
    :goto_3
    if-ne v2, v6, :cond_a

    .line 139
    .line 140
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 141
    .line 142
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 143
    .line 144
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableSingleQuote:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 145
    .line 146
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 147
    and-long/2addr v2, v5

    .line 148
    .line 149
    cmp-long v2, v2, v16

    .line 150
    .line 151
    if-nez v2, :cond_9

    .line 152
    goto :goto_4

    .line 153
    .line 154
    .line 155
    :cond_9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->notSupportName()Lcom/alibaba/fastjson2/JSONException;

    .line 156
    move-result-object v1

    .line 157
    throw v1

    .line 158
    .line 159
    .line 160
    :cond_a
    :goto_4
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->skipString()V

    .line 161
    .line 162
    :goto_5
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 163
    .line 164
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 165
    .line 166
    goto/16 :goto_16

    .line 167
    .line 168
    :cond_b
    add-int/lit8 v5, v3, 0x3

    .line 169
    .line 170
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 171
    .line 172
    if-gt v5, v6, :cond_e

    .line 173
    .line 174
    aget-char v7, v1, v3

    .line 175
    .line 176
    const/16 v9, 0x72

    .line 177
    .line 178
    if-ne v7, v9, :cond_d

    .line 179
    .line 180
    add-int/lit8 v7, v3, 0x1

    .line 181
    .line 182
    aget-char v7, v1, v7

    .line 183
    .line 184
    if-ne v7, v15, :cond_d

    .line 185
    .line 186
    add-int/lit8 v7, v3, 0x2

    .line 187
    .line 188
    aget-char v7, v1, v7

    .line 189
    .line 190
    if-ne v7, v8, :cond_d

    .line 191
    .line 192
    if-ne v5, v6, :cond_c

    .line 193
    move v3, v5

    .line 194
    .line 195
    :goto_6
    const/16 v2, 0x1a

    .line 196
    .line 197
    goto/16 :goto_16

    .line 198
    .line 199
    :cond_c
    add-int/lit8 v3, v3, 0x4

    .line 200
    .line 201
    aget-char v2, v1, v5

    .line 202
    .line 203
    goto/16 :goto_16

    .line 204
    .line 205
    .line 206
    :cond_d
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 207
    move-result-object v1

    .line 208
    throw v1

    .line 209
    .line 210
    .line 211
    :cond_e
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 212
    move-result-object v1

    .line 213
    throw v1

    .line 214
    .line 215
    :cond_f
    add-int/lit8 v6, v3, 0x3

    .line 216
    .line 217
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 218
    .line 219
    if-gt v6, v7, :cond_12

    .line 220
    .line 221
    aget-char v8, v1, v3

    .line 222
    .line 223
    if-ne v8, v15, :cond_11

    .line 224
    .line 225
    add-int/lit8 v8, v3, 0x1

    .line 226
    .line 227
    aget-char v8, v1, v8

    .line 228
    .line 229
    if-ne v8, v5, :cond_11

    .line 230
    .line 231
    add-int/lit8 v8, v3, 0x2

    .line 232
    .line 233
    aget-char v8, v1, v8

    .line 234
    .line 235
    if-ne v8, v5, :cond_11

    .line 236
    .line 237
    if-ne v6, v7, :cond_10

    .line 238
    :goto_7
    move v3, v6

    .line 239
    goto :goto_6

    .line 240
    .line 241
    :cond_10
    add-int/lit8 v3, v3, 0x4

    .line 242
    .line 243
    aget-char v2, v1, v6

    .line 244
    .line 245
    goto/16 :goto_16

    .line 246
    .line 247
    .line 248
    :cond_11
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 249
    move-result-object v1

    .line 250
    throw v1

    .line 251
    .line 252
    .line 253
    :cond_12
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 254
    move-result-object v1

    .line 255
    throw v1

    .line 256
    .line 257
    :cond_13
    add-int/lit8 v6, v3, 0x4

    .line 258
    .line 259
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 260
    .line 261
    if-gt v6, v7, :cond_16

    .line 262
    .line 263
    aget-char v9, v1, v3

    .line 264
    .line 265
    const/16 v10, 0x61

    .line 266
    .line 267
    if-ne v9, v10, :cond_15

    .line 268
    .line 269
    add-int/lit8 v9, v3, 0x1

    .line 270
    .line 271
    aget-char v9, v1, v9

    .line 272
    .line 273
    if-ne v9, v5, :cond_15

    .line 274
    .line 275
    add-int/lit8 v5, v3, 0x2

    .line 276
    .line 277
    aget-char v5, v1, v5

    .line 278
    .line 279
    const/16 v9, 0x73

    .line 280
    .line 281
    if-ne v5, v9, :cond_15

    .line 282
    .line 283
    add-int/lit8 v5, v3, 0x3

    .line 284
    .line 285
    aget-char v5, v1, v5

    .line 286
    .line 287
    if-ne v5, v8, :cond_15

    .line 288
    .line 289
    if-ne v6, v7, :cond_14

    .line 290
    goto :goto_7

    .line 291
    .line 292
    :cond_14
    add-int/lit8 v3, v3, 0x5

    .line 293
    .line 294
    aget-char v2, v1, v6

    .line 295
    .line 296
    goto/16 :goto_16

    .line 297
    .line 298
    .line 299
    :cond_15
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 300
    move-result-object v1

    .line 301
    throw v1

    .line 302
    .line 303
    .line 304
    :cond_16
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 305
    move-result-object v1

    .line 306
    throw v1

    .line 307
    .line 308
    :cond_17
    const-wide/16 v16, 0x0

    .line 309
    .line 310
    :cond_18
    :pswitch_0
    if-eq v2, v10, :cond_19

    .line 311
    .line 312
    if-ne v2, v14, :cond_1a

    .line 313
    .line 314
    :cond_19
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 315
    .line 316
    if-ge v3, v5, :cond_3c

    .line 317
    .line 318
    add-int/lit8 v2, v3, 0x1

    .line 319
    .line 320
    aget-char v3, v1, v3

    .line 321
    .line 322
    move/from16 v19, v3

    .line 323
    move v3, v2

    .line 324
    .line 325
    move/from16 v2, v19

    .line 326
    .line 327
    :cond_1a
    if-ne v2, v9, :cond_1b

    .line 328
    const/4 v5, 0x1

    .line 329
    goto :goto_8

    .line 330
    :cond_1b
    move v5, v11

    .line 331
    .line 332
    :goto_8
    const/16 v6, 0x39

    .line 333
    .line 334
    const/16 v15, 0x30

    .line 335
    .line 336
    if-nez v5, :cond_1f

    .line 337
    .line 338
    if-lt v2, v15, :cond_1f

    .line 339
    .line 340
    if-gt v2, v6, :cond_1f

    .line 341
    .line 342
    :cond_1c
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 343
    .line 344
    if-ne v3, v2, :cond_1d

    .line 345
    .line 346
    const/16 v2, 0x1a

    .line 347
    goto :goto_9

    .line 348
    .line 349
    :cond_1d
    add-int/lit8 v2, v3, 0x1

    .line 350
    .line 351
    aget-char v3, v1, v3

    .line 352
    .line 353
    move/from16 v19, v3

    .line 354
    move v3, v2

    .line 355
    .line 356
    move/from16 v2, v19

    .line 357
    .line 358
    :goto_9
    if-lt v2, v15, :cond_1e

    .line 359
    .line 360
    if-le v2, v6, :cond_1c

    .line 361
    :cond_1e
    const/4 v5, 0x1

    .line 362
    goto :goto_a

    .line 363
    :cond_1f
    move v5, v11

    .line 364
    .line 365
    :goto_a
    const/16 v11, 0x42

    .line 366
    .line 367
    const/16 v4, 0x44

    .line 368
    .line 369
    const/16 v12, 0x46

    .line 370
    .line 371
    const/16 v13, 0x4c

    .line 372
    .line 373
    if-eqz v5, :cond_21

    .line 374
    .line 375
    if-eq v2, v13, :cond_20

    .line 376
    .line 377
    if-eq v2, v12, :cond_20

    .line 378
    .line 379
    if-eq v2, v4, :cond_20

    .line 380
    .line 381
    if-eq v2, v11, :cond_20

    .line 382
    .line 383
    if-ne v2, v7, :cond_21

    .line 384
    .line 385
    :cond_20
    add-int/lit8 v2, v3, 0x1

    .line 386
    .line 387
    aget-char v3, v1, v3

    .line 388
    .line 389
    move/from16 v19, v3

    .line 390
    move v3, v2

    .line 391
    .line 392
    move/from16 v2, v19

    .line 393
    .line 394
    :cond_21
    if-ne v2, v9, :cond_26

    .line 395
    .line 396
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 397
    .line 398
    if-ne v3, v2, :cond_22

    .line 399
    .line 400
    const/16 v2, 0x1a

    .line 401
    goto :goto_b

    .line 402
    .line 403
    :cond_22
    add-int/lit8 v2, v3, 0x1

    .line 404
    .line 405
    aget-char v3, v1, v3

    .line 406
    .line 407
    move/from16 v19, v3

    .line 408
    move v3, v2

    .line 409
    .line 410
    move/from16 v2, v19

    .line 411
    .line 412
    :goto_b
    if-lt v2, v15, :cond_25

    .line 413
    .line 414
    if-gt v2, v6, :cond_25

    .line 415
    .line 416
    :cond_23
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 417
    .line 418
    if-ne v3, v2, :cond_24

    .line 419
    .line 420
    const/16 v2, 0x1a

    .line 421
    goto :goto_c

    .line 422
    .line 423
    :cond_24
    add-int/lit8 v2, v3, 0x1

    .line 424
    .line 425
    aget-char v3, v1, v3

    .line 426
    .line 427
    move/from16 v19, v3

    .line 428
    move v3, v2

    .line 429
    .line 430
    move/from16 v2, v19

    .line 431
    .line 432
    :goto_c
    if-lt v2, v15, :cond_25

    .line 433
    .line 434
    if-le v2, v6, :cond_23

    .line 435
    :cond_25
    const/4 v9, 0x1

    .line 436
    goto :goto_d

    .line 437
    :cond_26
    const/4 v9, 0x0

    .line 438
    .line 439
    :goto_d
    if-nez v5, :cond_28

    .line 440
    .line 441
    if-eqz v9, :cond_27

    .line 442
    goto :goto_e

    .line 443
    .line 444
    .line 445
    :cond_27
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->numberError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 446
    move-result-object v1

    .line 447
    throw v1

    .line 448
    .line 449
    :cond_28
    :goto_e
    if-eq v2, v8, :cond_29

    .line 450
    .line 451
    const/16 v5, 0x45

    .line 452
    .line 453
    if-ne v2, v5, :cond_2f

    .line 454
    .line 455
    :cond_29
    add-int/lit8 v2, v3, 0x1

    .line 456
    .line 457
    aget-char v5, v1, v3

    .line 458
    .line 459
    if-eq v5, v14, :cond_2b

    .line 460
    .line 461
    if-ne v5, v10, :cond_2a

    .line 462
    goto :goto_f

    .line 463
    .line 464
    :cond_2a
    const/16 v18, 0x0

    .line 465
    goto :goto_10

    .line 466
    .line 467
    :cond_2b
    :goto_f
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 468
    .line 469
    if-ge v2, v8, :cond_3b

    .line 470
    .line 471
    add-int/lit8 v3, v3, 0x2

    .line 472
    .line 473
    aget-char v5, v1, v2

    .line 474
    move v2, v3

    .line 475
    .line 476
    const/16 v18, 0x1

    .line 477
    .line 478
    :goto_10
    if-lt v5, v15, :cond_2e

    .line 479
    .line 480
    if-gt v5, v6, :cond_2e

    .line 481
    .line 482
    :goto_11
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 483
    .line 484
    if-ne v2, v3, :cond_2c

    .line 485
    move v3, v2

    .line 486
    .line 487
    const/16 v2, 0x1a

    .line 488
    goto :goto_12

    .line 489
    .line 490
    :cond_2c
    add-int/lit8 v3, v2, 0x1

    .line 491
    .line 492
    aget-char v2, v1, v2

    .line 493
    .line 494
    :goto_12
    if-lt v2, v15, :cond_2f

    .line 495
    .line 496
    if-le v2, v6, :cond_2d

    .line 497
    goto :goto_13

    .line 498
    :cond_2d
    move v2, v3

    .line 499
    goto :goto_11

    .line 500
    .line 501
    :cond_2e
    if-nez v18, :cond_3a

    .line 502
    move v3, v2

    .line 503
    move v2, v5

    .line 504
    .line 505
    :cond_2f
    :goto_13
    if-eq v2, v13, :cond_30

    .line 506
    .line 507
    if-eq v2, v12, :cond_30

    .line 508
    .line 509
    if-eq v2, v4, :cond_30

    .line 510
    .line 511
    if-eq v2, v11, :cond_30

    .line 512
    .line 513
    if-ne v2, v7, :cond_32

    .line 514
    .line 515
    :cond_30
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 516
    .line 517
    if-ne v3, v2, :cond_31

    .line 518
    .line 519
    :goto_14
    goto/16 :goto_6

    .line 520
    .line 521
    :cond_31
    add-int/lit8 v2, v3, 0x1

    .line 522
    .line 523
    aget-char v3, v1, v3

    .line 524
    .line 525
    :goto_15
    move/from16 v19, v3

    .line 526
    move v3, v2

    .line 527
    .line 528
    move/from16 v2, v19

    .line 529
    .line 530
    :cond_32
    :goto_16
    const/16 v4, 0x20

    .line 531
    .line 532
    if-gt v2, v4, :cond_34

    .line 533
    .line 534
    const-wide/16 v4, 0x1

    .line 535
    shl-long/2addr v4, v2

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    const-wide v6, 0x100003701L

    .line 541
    and-long/2addr v4, v6

    .line 542
    .line 543
    cmp-long v4, v4, v16

    .line 544
    .line 545
    if-eqz v4, :cond_34

    .line 546
    .line 547
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 548
    .line 549
    if-ne v3, v2, :cond_33

    .line 550
    goto :goto_14

    .line 551
    .line 552
    :cond_33
    add-int/lit8 v2, v3, 0x1

    .line 553
    .line 554
    aget-char v3, v1, v3

    .line 555
    goto :goto_15

    .line 556
    .line 557
    :cond_34
    const/16 v4, 0x2c

    .line 558
    .line 559
    if-ne v2, v4, :cond_37

    .line 560
    const/4 v4, 0x1

    .line 561
    .line 562
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 563
    .line 564
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 565
    .line 566
    if-ne v3, v2, :cond_35

    .line 567
    move v2, v3

    .line 568
    .line 569
    const/16 v3, 0x1a

    .line 570
    goto :goto_17

    .line 571
    .line 572
    :cond_35
    add-int/lit8 v2, v3, 0x1

    .line 573
    .line 574
    aget-char v3, v1, v3

    .line 575
    .line 576
    :goto_17
    move/from16 v19, v3

    .line 577
    move v3, v2

    .line 578
    .line 579
    move/from16 v2, v19

    .line 580
    .line 581
    :goto_18
    const/16 v4, 0x20

    .line 582
    .line 583
    if-gt v2, v4, :cond_37

    .line 584
    .line 585
    const-wide/16 v4, 0x1

    .line 586
    shl-long/2addr v4, v2

    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    const-wide v6, 0x100003701L

    .line 592
    and-long/2addr v4, v6

    .line 593
    .line 594
    cmp-long v4, v4, v16

    .line 595
    .line 596
    if-eqz v4, :cond_37

    .line 597
    .line 598
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;->end:I

    .line 599
    .line 600
    if-ne v3, v2, :cond_36

    .line 601
    .line 602
    const/16 v2, 0x1a

    .line 603
    goto :goto_18

    .line 604
    .line 605
    :cond_36
    add-int/lit8 v2, v3, 0x1

    .line 606
    .line 607
    aget-char v3, v1, v3

    .line 608
    goto :goto_17

    .line 609
    .line 610
    :cond_37
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 611
    .line 612
    if-nez v1, :cond_39

    .line 613
    .line 614
    const/16 v1, 0x1a

    .line 615
    .line 616
    if-eq v2, v1, :cond_39

    .line 617
    .line 618
    const/16 v4, 0x7d

    .line 619
    .line 620
    if-eq v2, v4, :cond_39

    .line 621
    .line 622
    const/16 v4, 0x5d

    .line 623
    .line 624
    if-eq v2, v4, :cond_39

    .line 625
    .line 626
    if-ne v2, v1, :cond_38

    .line 627
    goto :goto_19

    .line 628
    .line 629
    .line 630
    :cond_38
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 631
    move-result-object v1

    .line 632
    throw v1

    .line 633
    :cond_39
    :goto_19
    int-to-char v1, v2

    .line 634
    .line 635
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 636
    .line 637
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 638
    return-void

    .line 639
    .line 640
    .line 641
    :cond_3a
    invoke-static {v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->numberError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 642
    move-result-object v1

    .line 643
    throw v1

    .line 644
    .line 645
    .line 646
    :cond_3b
    invoke-static {v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->numberError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 647
    move-result-object v1

    .line 648
    throw v1

    .line 649
    .line 650
    .line 651
    :cond_3c
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->numberError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 652
    move-result-object v1

    .line 653
    throw v1

    .line 654
    nop

    .line 655
    .line 656
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
    .line 677
    .line 678
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
