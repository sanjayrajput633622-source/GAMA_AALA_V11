.class Lcom/alibaba/fastjson2/JSONReaderUTF8;
.super Lcom/alibaba/fastjson2/JSONReader;
.source "SourceFile"


# static fields
.field static final REF:I


# instance fields
.field protected byteBuf:[B

.field protected final bytes:[B

.field protected final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field protected charBuf:[C

.field protected final end:I

.field protected final in:Ljava/io/InputStream;

.field protected final length:I

.field protected nameAscii:Z

.field protected nameBegin:I

.field protected nameEnd:I

.field protected nameLength:I

.field protected referenceBegin:I

.field protected final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const v0, 0x24726566

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    const v0, 0x66657224

    .line 12
    .line 13
    :goto_0
    sput v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->REF:I

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 3
    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 4
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    .line 5
    iget v1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    new-array v1, v1, [B

    :cond_0
    move v2, v0

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p2, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 7
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->byteBuf:[B

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 8
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    .line 10
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->in:Ljava/io/InputStream;

    .line 11
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->start:I

    .line 12
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 14
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_2
    return-void

    :cond_3
    add-int/2addr v2, v3

    .line 16
    :try_start_1
    array-length v3, v1

    if-ne v2, v3, :cond_1

    .line 17
    array-length v3, v1

    iget v4, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "read error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    .locals 5

    const/4 p2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    .line 40
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 41
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 42
    iput p5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->in:Ljava/io/InputStream;

    .line 44
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->start:I

    add-int/2addr p5, p4

    .line 45
    iput p5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 p1, 0x1a

    if-lt p4, p5, :cond_0

    move p2, p4

    :goto_0
    move p4, p1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p4, 0x1

    .line 46
    aget-byte p4, p3, p4

    :goto_1
    const/16 p5, 0x20

    if-gt p4, p5, :cond_2

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p4

    const-wide v2, 0x100003701L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-eqz p5, :cond_2

    .line 47
    iget p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p2, 0x1

    aget-byte p2, p3, p2

    move v4, p4

    move p4, p2

    move p2, v4

    goto :goto_1

    :cond_2
    if-gez p4, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    return-void

    .line 49
    :cond_3
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-char p1, p4

    .line 50
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p1, 0x2f

    if-ne p4, p1, :cond_4

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr p1, v2

    .line 21
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 22
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 23
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-eqz p1, :cond_0

    .line 24
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 25
    :cond_0
    new-array p1, v1, [B

    .line 26
    :cond_1
    invoke-virtual {p2, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->byteBuf:[B

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 28
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    .line 29
    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->in:Ljava/io/InputStream;

    .line 30
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->start:I

    .line 31
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 p2, 0x1a

    if-gtz v1, :cond_2

    move v3, v0

    :goto_0
    move v0, p2

    goto :goto_1

    .line 32
    :cond_2
    aget-byte v0, p1, v0

    :goto_1
    const/16 v1, 0x20

    if-gt v0, v1, :cond_4

    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    const-wide v4, 0x100003701L

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 33
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v3, v0, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    aget-byte v1, p1, v3

    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    if-gez v0, :cond_5

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    return-void

    .line 35
    :cond_5
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-char p1, v0

    .line 36
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p1, 0x2f

    if-ne v0, p1, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_6
    return-void
.end method

.method public static char2_utf8(III)I
    .locals 2

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p0, p1

    return p0

    .line 1
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "malformed input around byte "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static char2_utf8(IIII)I
    .locals 2

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, v1, :cond_0

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    return p0

    .line 2
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "malformed input around byte "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static char2_utf8([BII[CI)V
    .locals 4

    shr-int/lit8 v0, p2, 0x3

    const/4 v1, -0x2

    .line 3
    const-string v2, "malformed input around byte "

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 4
    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    .line 5
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x3

    .line 6
    aget-byte p0, p0, v3

    shl-int/lit8 p2, p2, 0x12

    shl-int/lit8 v3, v0, 0xc

    xor-int/2addr p2, v3

    shl-int/lit8 v3, v1, 0x6

    xor-int/2addr p2, v3

    const v3, 0x381f80

    xor-int/2addr v3, p0

    xor-int/2addr p2, v3

    and-int/lit16 v0, v0, 0xc0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    and-int/lit16 v0, v1, 0xc0

    if-ne v0, v3, :cond_0

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v3, :cond_0

    const/high16 p0, 0x10000

    if-lt p2, p0, :cond_0

    const/high16 p0, 0x110000

    if-ge p2, p0, :cond_0

    ushr-int/lit8 p0, p2, 0xa

    const p1, 0xd7c0

    add-int/2addr p0, p1

    int-to-char p0, p0

    .line 7
    aput-char p0, p3, p4

    add-int/lit8 p4, p4, 0x1

    and-int/lit16 p0, p2, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    .line 8
    aput-char p0, p3, p4

    return-void

    .line 9
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private char_utf8(II)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    and-int/lit16 v1, p1, 0xff

    .line 5
    .line 6
    shr-int/lit8 v2, v1, 0x4

    .line 7
    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    shr-int/lit8 v1, p1, 0x3

    .line 12
    const/4 v2, -0x2

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    aget-byte v1, v0, p2

    .line 17
    .line 18
    add-int/lit8 v2, p2, 0x1

    .line 19
    .line 20
    aget-byte v2, v0, v2

    .line 21
    .line 22
    add-int/lit8 v3, p2, 0x2

    .line 23
    .line 24
    aget-byte v0, v0, v3

    .line 25
    .line 26
    shl-int/lit8 p1, p1, 0x12

    .line 27
    .line 28
    shl-int/lit8 v1, v1, 0xc

    .line 29
    xor-int/2addr p1, v1

    .line 30
    .line 31
    shl-int/lit8 v1, v2, 0x6

    .line 32
    xor-int/2addr p1, v1

    .line 33
    .line 34
    .line 35
    const v1, 0x381f80

    .line 36
    xor-int/2addr v0, v1

    .line 37
    xor-int/2addr p1, v0

    .line 38
    .line 39
    add-int/lit8 p2, p2, 0x3

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v1, "malformed input around byte "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 64
    .line 65
    :pswitch_0
    aget-byte p1, v0, p2

    .line 66
    .line 67
    add-int/lit8 v2, p2, 0x1

    .line 68
    .line 69
    aget-byte v0, v0, v2

    .line 70
    .line 71
    .line 72
    invoke-static {v1, p1, v0, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(IIII)I

    .line 73
    move-result p1

    .line 74
    .line 75
    add-int/lit8 p2, p2, 0x2

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :pswitch_1
    add-int/lit8 p1, p2, 0x1

    .line 79
    .line 80
    aget-byte p2, v0, p2

    .line 81
    .line 82
    .line 83
    invoke-static {v1, p2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(III)I

    .line 84
    move-result p2

    .line 85
    move v4, p2

    .line 86
    move p2, p1

    .line 87
    move p1, v4

    .line 88
    :goto_0
    int-to-char p1, p1

    .line 89
    .line 90
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 91
    .line 92
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 93
    return-void

    .line 94
    nop

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isReference0([BIII)Z
    .locals 14

    .line 1
    .line 2
    move/from16 v0, p3

    .line 3
    .line 4
    add-int/lit8 v1, p2, 0x6

    .line 5
    .line 6
    aget-byte v2, p1, v1

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
    if-ltz v2, :cond_1

    .line 21
    .line 22
    if-gt v2, v9, :cond_1

    .line 23
    .line 24
    shl-long v11, v7, v2

    .line 25
    and-long/2addr v11, v5

    .line 26
    .line 27
    cmp-long v11, v11, v3

    .line 28
    .line 29
    if-eqz v11, :cond_1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    if-lt v1, v0, :cond_0

    .line 34
    return v10

    .line 35
    .line 36
    :cond_0
    aget-byte v2, p1, v1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    const/16 v11, 0x3a

    .line 40
    .line 41
    if-ne v2, v11, :cond_6

    .line 42
    const/4 v2, 0x1

    .line 43
    add-int/2addr v1, v2

    .line 44
    .line 45
    if-lt v1, v0, :cond_2

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    aget-byte v11, p1, v1

    .line 49
    .line 50
    :goto_1
    if-ltz v11, :cond_4

    .line 51
    .line 52
    if-gt v11, v9, :cond_4

    .line 53
    .line 54
    shl-long v12, v7, v11

    .line 55
    and-long/2addr v12, v5

    .line 56
    .line 57
    cmp-long v12, v12, v3

    .line 58
    .line 59
    if-eqz v12, :cond_4

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    if-lt v1, v0, :cond_3

    .line 64
    return v10

    .line 65
    .line 66
    :cond_3
    aget-byte v11, p1, v1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_4
    move/from16 v3, p4

    .line 70
    .line 71
    if-ne v11, v3, :cond_6

    .line 72
    .line 73
    add-int/lit8 v3, v1, 0x1

    .line 74
    .line 75
    if-ge v3, v0, :cond_5

    .line 76
    .line 77
    aget-byte p1, p1, v3

    .line 78
    .line 79
    const/16 v0, 0x24

    .line 80
    .line 81
    if-eq p1, v0, :cond_5

    .line 82
    .line 83
    const/16 v0, 0x2e

    .line 84
    .line 85
    if-eq p1, v0, :cond_5

    .line 86
    .line 87
    const/16 v0, 0x40

    .line 88
    .line 89
    if-eq p1, v0, :cond_5

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_5
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->referenceBegin:I

    .line 93
    return v2

    .line 94
    :cond_6
    :goto_2
    return v10
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->byteBuf:[B

    .line 5
    .line 6
    const/high16 v2, 0x100000

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    array-length v3, v1

    .line 10
    .line 11
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    array-length v3, v1

    .line 22
    .line 23
    if-ge v3, v2, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->in:Ljava/io/InputStream;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :cond_2
    return-void
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 13

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
    sub-int/2addr v1, v2

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getLatin1String(II)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_0
    new-instance v3, Ljava/lang/String;

    .line 23
    .line 24
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v0, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 28
    return-object v3

    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, [C

    .line 44
    .line 45
    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 46
    .line 47
    :cond_2
    if-eqz v2, :cond_3

    .line 48
    array-length v3, v2

    .line 49
    .line 50
    if-ge v3, v1, :cond_4

    .line 51
    .line 52
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 53
    .line 54
    new-array v2, v1, [C

    .line 55
    .line 56
    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 57
    .line 58
    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

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
    if-ge v1, v5, :cond_d

    .line 65
    .line 66
    aget-byte v5, v0, v1

    .line 67
    .line 68
    if-gez v5, :cond_7

    .line 69
    .line 70
    and-int/lit16 v6, v5, 0xff

    .line 71
    .line 72
    shr-int/lit8 v6, v6, 0x4

    .line 73
    .line 74
    const/16 v7, 0x80

    .line 75
    .line 76
    const-string v8, "malformed input around byte "

    .line 77
    .line 78
    .line 79
    packed-switch v6, :pswitch_data_0

    .line 80
    .line 81
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 100
    throw v0

    .line 101
    .line 102
    :pswitch_0
    add-int/lit8 v6, v1, 0x1

    .line 103
    .line 104
    aget-byte v6, v0, v6

    .line 105
    .line 106
    add-int/lit8 v9, v1, 0x2

    .line 107
    .line 108
    aget-byte v10, v0, v9

    .line 109
    .line 110
    and-int/lit16 v11, v6, 0xc0

    .line 111
    .line 112
    if-ne v11, v7, :cond_5

    .line 113
    .line 114
    and-int/lit16 v11, v10, 0xc0

    .line 115
    .line 116
    if-ne v11, v7, :cond_5

    .line 117
    .line 118
    and-int/lit8 v5, v5, 0xf

    .line 119
    .line 120
    shl-int/lit8 v5, v5, 0xc

    .line 121
    .line 122
    and-int/lit8 v6, v6, 0x3f

    .line 123
    .line 124
    shl-int/lit8 v6, v6, 0x6

    .line 125
    or-int/2addr v5, v6

    .line 126
    .line 127
    and-int/lit8 v6, v10, 0x3f

    .line 128
    or-int/2addr v5, v6

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x3

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 152
    throw v0

    .line 153
    .line 154
    :pswitch_1
    add-int/lit8 v6, v1, 0x1

    .line 155
    .line 156
    aget-byte v6, v0, v6

    .line 157
    .line 158
    and-int/lit16 v9, v6, 0xc0

    .line 159
    .line 160
    if-ne v9, v7, :cond_6

    .line 161
    .line 162
    and-int/lit8 v5, v5, 0x1f

    .line 163
    .line 164
    shl-int/lit8 v5, v5, 0x6

    .line 165
    .line 166
    and-int/lit8 v6, v6, 0x3f

    .line 167
    or-int/2addr v5, v6

    .line 168
    .line 169
    add-int/lit8 v1, v1, 0x2

    .line 170
    :goto_1
    int-to-char v5, v5

    .line 171
    .line 172
    aput-char v5, v2, v4

    .line 173
    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 195
    throw v0

    .line 196
    .line 197
    :cond_7
    const/16 v6, 0x22

    .line 198
    .line 199
    const/16 v7, 0x5c

    .line 200
    .line 201
    if-ne v5, v7, :cond_b

    .line 202
    .line 203
    add-int/lit8 v5, v1, 0x1

    .line 204
    .line 205
    aget-byte v8, v0, v5

    .line 206
    int-to-char v8, v8

    .line 207
    .line 208
    if-eq v8, v6, :cond_a

    .line 209
    .line 210
    const/16 v6, 0x3a

    .line 211
    .line 212
    if-eq v8, v6, :cond_a

    .line 213
    .line 214
    const/16 v6, 0x40

    .line 215
    .line 216
    if-eq v8, v6, :cond_a

    .line 217
    .line 218
    if-eq v8, v7, :cond_a

    .line 219
    .line 220
    const/16 v6, 0x75

    .line 221
    .line 222
    if-eq v8, v6, :cond_9

    .line 223
    .line 224
    const/16 v6, 0x78

    .line 225
    .line 226
    if-eq v8, v6, :cond_8

    .line 227
    .line 228
    const/16 v1, 0x2a

    .line 229
    .line 230
    if-eq v8, v1, :cond_a

    .line 231
    .line 232
    const/16 v1, 0x2b

    .line 233
    .line 234
    if-eq v8, v1, :cond_a

    .line 235
    .line 236
    .line 237
    packed-switch v8, :pswitch_data_1

    .line 238
    .line 239
    .line 240
    packed-switch v8, :pswitch_data_2

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 244
    move-result v1

    .line 245
    move v12, v5

    .line 246
    move v5, v1

    .line 247
    move v1, v12

    .line 248
    goto :goto_2

    .line 249
    .line 250
    :cond_8
    add-int/lit8 v5, v1, 0x2

    .line 251
    .line 252
    aget-byte v5, v0, v5

    .line 253
    .line 254
    add-int/lit8 v1, v1, 0x3

    .line 255
    .line 256
    aget-byte v6, v0, v1

    .line 257
    .line 258
    .line 259
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 260
    move-result v5

    .line 261
    goto :goto_2

    .line 262
    .line 263
    :cond_9
    add-int/lit8 v5, v1, 0x2

    .line 264
    .line 265
    aget-byte v5, v0, v5

    .line 266
    .line 267
    add-int/lit8 v6, v1, 0x3

    .line 268
    .line 269
    aget-byte v6, v0, v6

    .line 270
    .line 271
    add-int/lit8 v7, v1, 0x4

    .line 272
    .line 273
    aget-byte v7, v0, v7

    .line 274
    .line 275
    add-int/lit8 v1, v1, 0x5

    .line 276
    .line 277
    aget-byte v8, v0, v1

    .line 278
    .line 279
    .line 280
    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 281
    move-result v5

    .line 282
    goto :goto_2

    .line 283
    :cond_a
    :pswitch_2
    move v1, v5

    .line 284
    move v5, v8

    .line 285
    goto :goto_2

    .line 286
    .line 287
    :cond_b
    if-ne v5, v6, :cond_c

    .line 288
    goto :goto_4

    .line 289
    :cond_c
    :goto_2
    int-to-char v5, v5

    .line 290
    .line 291
    aput-char v5, v2, v4

    .line 292
    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    .line 295
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/String;

    .line 300
    .line 301
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 302
    .line 303
    .line 304
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 305
    return-object v0

    .line 306
    nop

    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getLatin1String(II)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 11
    .line 12
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, [C

    .line 32
    .line 33
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 34
    .line 35
    :cond_1
    if-eqz v0, :cond_2

    .line 36
    array-length v1, v0

    .line 37
    .line 38
    if-ge v1, p2, :cond_3

    .line 39
    .line 40
    :cond_2
    new-array v0, p2, [C

    .line 41
    .line 42
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 43
    :cond_3
    const/4 v1, 0x0

    .line 44
    move v2, v1

    .line 45
    .line 46
    :goto_0
    if-ge v2, p2, :cond_4

    .line 47
    .line 48
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 49
    .line 50
    add-int v4, p1, v2

    .line 51
    .line 52
    aget-byte v3, v3, v4

    .line 53
    .line 54
    and-int/lit16 v3, v3, 0xff

    .line 55
    int-to-char v3, v3

    .line 56
    .line 57
    aput-char v3, v0, v2

    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_4
    new-instance p1, Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 66
    return-object p1
.end method

.method public getNameHashCodeLCase()J
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 5
    .line 6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    aget-byte v5, v2, v5

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
    const/16 v12, 0x78

    .line 29
    .line 30
    const/16 v13, 0x75

    .line 31
    .line 32
    const/16 v14, 0x5c

    .line 33
    .line 34
    const-wide/16 v16, 0x0

    .line 35
    .line 36
    const/16 v7, 0x2d

    .line 37
    .line 38
    const/16 v15, 0x5f

    .line 39
    .line 40
    const/16 v6, 0x20

    .line 41
    .line 42
    if-ge v1, v11, :cond_c

    .line 43
    .line 44
    aget-byte v11, v2, v1

    .line 45
    .line 46
    if-ne v11, v14, :cond_3

    .line 47
    .line 48
    add-int/lit8 v11, v1, 0x1

    .line 49
    .line 50
    aget-byte v14, v2, v11

    .line 51
    .line 52
    if-eq v14, v13, :cond_2

    .line 53
    .line 54
    if-eq v14, v12, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

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
    goto :goto_3

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v11, v1, 0x2

    .line 67
    .line 68
    aget-byte v11, v2, v11

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x3

    .line 71
    .line 72
    aget-byte v14, v2, v1

    .line 73
    .line 74
    .line 75
    invoke-static {v11, v14}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 76
    move-result v11

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_2
    add-int/lit8 v11, v1, 0x2

    .line 80
    .line 81
    aget-byte v11, v2, v11

    .line 82
    .line 83
    add-int/lit8 v14, v1, 0x3

    .line 84
    .line 85
    aget-byte v14, v2, v14

    .line 86
    .line 87
    add-int/lit8 v18, v1, 0x4

    .line 88
    .line 89
    aget-byte v12, v2, v18

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x5

    .line 92
    .line 93
    aget-byte v13, v2, v1

    .line 94
    .line 95
    .line 96
    invoke-static {v11, v14, v12, v13}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 97
    move-result v11

    .line 98
    goto :goto_3

    .line 99
    .line 100
    :cond_3
    const/16 v12, -0x3d

    .line 101
    .line 102
    if-eq v11, v12, :cond_5

    .line 103
    .line 104
    const/16 v12, -0x3e

    .line 105
    .line 106
    if-ne v11, v12, :cond_4

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_4
    if-ne v11, v5, :cond_6

    .line 110
    .line 111
    goto/16 :goto_a

    .line 112
    .line 113
    :cond_5
    :goto_2
    and-int/lit8 v11, v11, 0x1f

    .line 114
    .line 115
    shl-int/lit8 v11, v11, 0x6

    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    .line 119
    aget-byte v12, v2, v1

    .line 120
    .line 121
    and-int/lit8 v12, v12, 0x3f

    .line 122
    or-int/2addr v11, v12

    .line 123
    .line 124
    :cond_6
    :goto_3
    const/16 v12, 0x8

    .line 125
    .line 126
    if-ge v8, v12, :cond_b

    .line 127
    .line 128
    const/16 v13, 0xff

    .line 129
    .line 130
    if-gt v11, v13, :cond_b

    .line 131
    .line 132
    if-ltz v11, :cond_b

    .line 133
    .line 134
    if-nez v8, :cond_7

    .line 135
    .line 136
    if-nez v11, :cond_7

    .line 137
    .line 138
    goto/16 :goto_9

    .line 139
    .line 140
    :cond_7
    if-eq v11, v15, :cond_9

    .line 141
    .line 142
    if-eq v11, v7, :cond_9

    .line 143
    .line 144
    if-ne v11, v6, :cond_8

    .line 145
    goto :goto_4

    .line 146
    .line 147
    :cond_8
    const/16 v7, 0x41

    .line 148
    goto :goto_5

    .line 149
    .line 150
    :cond_9
    :goto_4
    add-int/lit8 v7, v1, 0x1

    .line 151
    .line 152
    aget-byte v7, v2, v7

    .line 153
    .line 154
    if-eq v7, v4, :cond_8

    .line 155
    .line 156
    if-eq v7, v3, :cond_8

    .line 157
    .line 158
    if-eq v7, v11, :cond_8

    .line 159
    goto :goto_8

    .line 160
    .line 161
    :goto_5
    if-lt v11, v7, :cond_a

    .line 162
    .line 163
    const/16 v7, 0x5a

    .line 164
    .line 165
    if-gt v11, v7, :cond_a

    .line 166
    .line 167
    add-int/lit8 v11, v11, 0x20

    .line 168
    int-to-char v11, v11

    .line 169
    .line 170
    .line 171
    :cond_a
    packed-switch v8, :pswitch_data_0

    .line 172
    goto :goto_7

    .line 173
    :pswitch_0
    int-to-byte v6, v11

    .line 174
    int-to-long v6, v6

    .line 175
    .line 176
    const/16 v11, 0x38

    .line 177
    shl-long/2addr v6, v11

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    const-wide v11, 0xffffffffffffffL

    .line 183
    :goto_6
    and-long/2addr v9, v11

    .line 184
    add-long/2addr v9, v6

    .line 185
    goto :goto_7

    .line 186
    :pswitch_1
    int-to-byte v6, v11

    .line 187
    int-to-long v6, v6

    .line 188
    .line 189
    const/16 v11, 0x30

    .line 190
    shl-long/2addr v6, v11

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    const-wide v11, 0xffffffffffffL

    .line 196
    goto :goto_6

    .line 197
    :pswitch_2
    int-to-byte v6, v11

    .line 198
    int-to-long v6, v6

    .line 199
    .line 200
    const/16 v11, 0x28

    .line 201
    shl-long/2addr v6, v11

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    const-wide v11, 0xffffffffffL

    .line 207
    goto :goto_6

    .line 208
    :pswitch_3
    int-to-byte v7, v11

    .line 209
    int-to-long v11, v7

    .line 210
    .line 211
    shl-long v6, v11, v6

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    const-wide v11, 0xffffffffL

    .line 217
    goto :goto_6

    .line 218
    :pswitch_4
    int-to-byte v6, v11

    .line 219
    .line 220
    shl-int/lit8 v6, v6, 0x18

    .line 221
    int-to-long v6, v6

    .line 222
    .line 223
    .line 224
    const-wide/32 v11, 0xffffff

    .line 225
    goto :goto_6

    .line 226
    :pswitch_5
    int-to-byte v6, v11

    .line 227
    .line 228
    shl-int/lit8 v6, v6, 0x10

    .line 229
    int-to-long v6, v6

    .line 230
    .line 231
    .line 232
    const-wide/32 v11, 0xffff

    .line 233
    goto :goto_6

    .line 234
    :pswitch_6
    int-to-byte v6, v11

    .line 235
    shl-int/2addr v6, v12

    .line 236
    int-to-long v6, v6

    .line 237
    .line 238
    const-wide/16 v11, 0xff

    .line 239
    goto :goto_6

    .line 240
    :pswitch_7
    int-to-byte v6, v11

    .line 241
    int-to-long v9, v6

    .line 242
    .line 243
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 244
    .line 245
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_b
    :goto_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 250
    .line 251
    move-wide/from16 v9, v16

    .line 252
    .line 253
    :cond_c
    :goto_a
    cmp-long v8, v9, v16

    .line 254
    .line 255
    if-eqz v8, :cond_d

    .line 256
    return-wide v9

    .line 257
    .line 258
    :cond_d
    iget-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    const-wide v9, 0x100000001b3L

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    const-wide v11, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 269
    .line 270
    if-eqz v8, :cond_12

    .line 271
    .line 272
    iget-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 273
    .line 274
    if-nez v8, :cond_12

    .line 275
    .line 276
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 277
    .line 278
    :goto_b
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 279
    .line 280
    if-ge v1, v5, :cond_11

    .line 281
    .line 282
    aget-byte v5, v2, v1

    .line 283
    .line 284
    const/16 v8, 0x41

    .line 285
    .line 286
    if-lt v5, v8, :cond_e

    .line 287
    .line 288
    const/16 v8, 0x5a

    .line 289
    .line 290
    if-gt v5, v8, :cond_e

    .line 291
    .line 292
    add-int/lit8 v5, v5, 0x20

    .line 293
    .line 294
    :cond_e
    if-eq v5, v15, :cond_f

    .line 295
    .line 296
    if-eq v5, v7, :cond_f

    .line 297
    .line 298
    if-ne v5, v6, :cond_10

    .line 299
    .line 300
    :cond_f
    add-int/lit8 v8, v1, 0x1

    .line 301
    .line 302
    aget-byte v8, v2, v8

    .line 303
    .line 304
    if-eq v8, v4, :cond_10

    .line 305
    .line 306
    if-eq v8, v3, :cond_10

    .line 307
    .line 308
    if-eq v8, v5, :cond_10

    .line 309
    goto :goto_c

    .line 310
    :cond_10
    int-to-long v13, v5

    .line 311
    xor-long/2addr v11, v13

    .line 312
    mul-long/2addr v11, v9

    .line 313
    .line 314
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 315
    goto :goto_b

    .line 316
    :cond_11
    return-wide v11

    .line 317
    .line 318
    :cond_12
    :goto_d
    aget-byte v3, v2, v1

    .line 319
    .line 320
    const/16 v4, 0x5c

    .line 321
    .line 322
    if-ne v3, v4, :cond_15

    .line 323
    .line 324
    add-int/lit8 v3, v1, 0x1

    .line 325
    .line 326
    aget-byte v8, v2, v3

    .line 327
    .line 328
    const/16 v13, 0x75

    .line 329
    .line 330
    if-eq v8, v13, :cond_14

    .line 331
    .line 332
    const/16 v14, 0x78

    .line 333
    .line 334
    if-eq v8, v14, :cond_13

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 338
    move-result v1

    .line 339
    .line 340
    :goto_e
    move-wide/from16 v16, v9

    .line 341
    goto :goto_f

    .line 342
    .line 343
    :cond_13
    add-int/lit8 v3, v1, 0x2

    .line 344
    .line 345
    aget-byte v3, v2, v3

    .line 346
    .line 347
    add-int/lit8 v1, v1, 0x3

    .line 348
    .line 349
    aget-byte v8, v2, v1

    .line 350
    .line 351
    .line 352
    invoke-static {v3, v8}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 353
    move-result v3

    .line 354
    .line 355
    move/from16 v16, v3

    .line 356
    move v3, v1

    .line 357
    .line 358
    move/from16 v1, v16

    .line 359
    goto :goto_e

    .line 360
    .line 361
    :cond_14
    const/16 v14, 0x78

    .line 362
    .line 363
    add-int/lit8 v3, v1, 0x2

    .line 364
    .line 365
    aget-byte v3, v2, v3

    .line 366
    .line 367
    add-int/lit8 v8, v1, 0x3

    .line 368
    .line 369
    aget-byte v8, v2, v8

    .line 370
    .line 371
    add-int/lit8 v16, v1, 0x4

    .line 372
    .line 373
    aget-byte v4, v2, v16

    .line 374
    .line 375
    add-int/lit8 v1, v1, 0x5

    .line 376
    .line 377
    move-wide/from16 v16, v9

    .line 378
    .line 379
    aget-byte v9, v2, v1

    .line 380
    .line 381
    .line 382
    invoke-static {v3, v8, v4, v9}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 383
    move-result v3

    .line 384
    .line 385
    move/from16 v19, v3

    .line 386
    move v3, v1

    .line 387
    .line 388
    move/from16 v1, v19

    .line 389
    .line 390
    :goto_f
    add-int/lit8 v3, v3, 0x1

    .line 391
    .line 392
    const/16 v4, 0x5a

    .line 393
    .line 394
    const/16 v8, 0x41

    .line 395
    goto :goto_11

    .line 396
    .line 397
    :cond_15
    move-wide/from16 v16, v9

    .line 398
    .line 399
    const/16 v13, 0x75

    .line 400
    .line 401
    const/16 v14, 0x78

    .line 402
    .line 403
    if-ne v3, v5, :cond_16

    .line 404
    return-wide v11

    .line 405
    .line 406
    :cond_16
    if-ltz v3, :cond_18

    .line 407
    .line 408
    const/16 v8, 0x41

    .line 409
    .line 410
    const/16 v4, 0x5a

    .line 411
    .line 412
    if-lt v3, v8, :cond_17

    .line 413
    .line 414
    if-gt v3, v4, :cond_17

    .line 415
    .line 416
    add-int/lit8 v3, v3, 0x20

    .line 417
    .line 418
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 419
    .line 420
    :goto_10
    move/from16 v19, v3

    .line 421
    move v3, v1

    .line 422
    .line 423
    move/from16 v1, v19

    .line 424
    goto :goto_11

    .line 425
    .line 426
    :cond_18
    const/16 v4, 0x5a

    .line 427
    .line 428
    const/16 v8, 0x41

    .line 429
    .line 430
    and-int/lit16 v9, v3, 0xff

    .line 431
    .line 432
    shr-int/lit8 v9, v9, 0x4

    .line 433
    .line 434
    .line 435
    packed-switch v9, :pswitch_data_1

    .line 436
    .line 437
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 438
    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    const-string v4, "malformed input around byte "

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v1

    .line 455
    .line 456
    .line 457
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 458
    throw v2

    .line 459
    .line 460
    :pswitch_8
    add-int/lit8 v9, v1, 0x1

    .line 461
    .line 462
    aget-byte v9, v2, v9

    .line 463
    .line 464
    add-int/lit8 v10, v1, 0x2

    .line 465
    .line 466
    aget-byte v10, v2, v10

    .line 467
    .line 468
    and-int/lit8 v3, v3, 0xf

    .line 469
    .line 470
    shl-int/lit8 v3, v3, 0xc

    .line 471
    .line 472
    and-int/lit8 v9, v9, 0x3f

    .line 473
    .line 474
    shl-int/lit8 v9, v9, 0x6

    .line 475
    or-int/2addr v3, v9

    .line 476
    .line 477
    and-int/lit8 v9, v10, 0x3f

    .line 478
    or-int/2addr v3, v9

    .line 479
    .line 480
    add-int/lit8 v1, v1, 0x3

    .line 481
    goto :goto_10

    .line 482
    .line 483
    :pswitch_9
    add-int/lit8 v9, v1, 0x1

    .line 484
    .line 485
    aget-byte v9, v2, v9

    .line 486
    .line 487
    and-int/lit8 v3, v3, 0x1f

    .line 488
    .line 489
    shl-int/lit8 v3, v3, 0x6

    .line 490
    .line 491
    and-int/lit8 v9, v9, 0x3f

    .line 492
    or-int/2addr v3, v9

    .line 493
    .line 494
    add-int/lit8 v1, v1, 0x2

    .line 495
    goto :goto_10

    .line 496
    .line 497
    :goto_11
    if-eq v1, v15, :cond_1a

    .line 498
    .line 499
    if-eq v1, v7, :cond_1a

    .line 500
    .line 501
    if-ne v1, v6, :cond_19

    .line 502
    goto :goto_12

    .line 503
    :cond_19
    int-to-long v9, v1

    .line 504
    xor-long/2addr v9, v11

    .line 505
    .line 506
    mul-long v11, v9, v16

    .line 507
    :cond_1a
    :goto_12
    move v1, v3

    .line 508
    .line 509
    move-wide/from16 v9, v16

    .line 510
    .line 511
    goto/16 :goto_d

    .line 512
    nop

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
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final getRawInt()I
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7
    array-length v3, v2

    .line 8
    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 12
    .line 13
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 14
    int-to-long v5, v0

    .line 15
    add-long/2addr v3, v5

    .line 16
    .line 17
    const-wide/16 v5, 0x1

    .line 18
    sub-long/2addr v3, v5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public final getRawLong()J
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7
    array-length v3, v2

    .line 8
    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 12
    .line 13
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 14
    int-to-long v5, v0

    .line 15
    add-long/2addr v3, v5

    .line 16
    .line 17
    const-wide/16 v5, 0x1

    .line 18
    sub-long/2addr v3, v5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 22
    move-result-wide v0

    .line 23
    return-wide v0

    .line 24
    .line 25
    :cond_0
    const-wide/16 v0, 0x0

    .line 26
    return-wide v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 12

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 8
    .line 9
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 10
    .line 11
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 12
    sub-int/2addr v2, v1

    .line 13
    .line 14
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 15
    .line 16
    if-nez v3, :cond_2

    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getLatin1String(II)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_1
    new-instance v3, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 33
    return-object v3

    .line 34
    .line 35
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 36
    .line 37
    new-array v2, v2, [C

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    :goto_0
    aget-byte v4, v0, v1

    .line 41
    .line 42
    if-gez v4, :cond_7

    .line 43
    .line 44
    and-int/lit16 v5, v4, 0xff

    .line 45
    .line 46
    shr-int/lit8 v6, v5, 0x4

    .line 47
    .line 48
    const-string v7, "malformed input around byte "

    .line 49
    .line 50
    const/16 v8, 0x80

    .line 51
    .line 52
    .line 53
    packed-switch v6, :pswitch_data_0

    .line 54
    .line 55
    shr-int/lit8 v6, v4, 0x3

    .line 56
    const/4 v9, -0x2

    .line 57
    .line 58
    if-ne v6, v9, :cond_4

    .line 59
    .line 60
    add-int/lit8 v5, v1, 0x1

    .line 61
    .line 62
    aget-byte v5, v0, v5

    .line 63
    .line 64
    add-int/lit8 v6, v1, 0x2

    .line 65
    .line 66
    aget-byte v6, v0, v6

    .line 67
    .line 68
    add-int/lit8 v9, v1, 0x3

    .line 69
    .line 70
    aget-byte v9, v0, v9

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x4

    .line 73
    .line 74
    shl-int/lit8 v4, v4, 0x12

    .line 75
    .line 76
    shl-int/lit8 v10, v5, 0xc

    .line 77
    xor-int/2addr v4, v10

    .line 78
    .line 79
    shl-int/lit8 v10, v6, 0x6

    .line 80
    xor-int/2addr v4, v10

    .line 81
    .line 82
    .line 83
    const v10, 0x381f80

    .line 84
    xor-int/2addr v10, v9

    .line 85
    xor-int/2addr v4, v10

    .line 86
    .line 87
    and-int/lit16 v5, v5, 0xc0

    .line 88
    .line 89
    if-ne v5, v8, :cond_3

    .line 90
    .line 91
    and-int/lit16 v5, v6, 0xc0

    .line 92
    .line 93
    if-ne v5, v8, :cond_3

    .line 94
    .line 95
    and-int/lit16 v5, v9, 0xc0

    .line 96
    .line 97
    if-ne v5, v8, :cond_3

    .line 98
    .line 99
    const/high16 v5, 0x10000

    .line 100
    .line 101
    if-lt v4, v5, :cond_3

    .line 102
    .line 103
    const/high16 v5, 0x110000

    .line 104
    .line 105
    if-ge v4, v5, :cond_3

    .line 106
    .line 107
    add-int/lit8 v5, v3, 0x1

    .line 108
    .line 109
    ushr-int/lit8 v6, v4, 0xa

    .line 110
    .line 111
    .line 112
    const v7, 0xd7c0

    .line 113
    add-int/2addr v6, v7

    .line 114
    int-to-char v6, v6

    .line 115
    .line 116
    aput-char v6, v2, v3

    .line 117
    .line 118
    and-int/lit16 v3, v4, 0x3ff

    .line 119
    .line 120
    .line 121
    const v4, 0xdc00

    .line 122
    add-int/2addr v3, v4

    .line 123
    int-to-char v3, v3

    .line 124
    .line 125
    aput-char v3, v2, v5

    .line 126
    move v3, v5

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 149
    throw v0

    .line 150
    .line 151
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 152
    goto :goto_1

    .line 153
    .line 154
    :pswitch_0
    add-int/lit8 v5, v1, 0x1

    .line 155
    .line 156
    aget-byte v5, v0, v5

    .line 157
    .line 158
    add-int/lit8 v6, v1, 0x2

    .line 159
    .line 160
    aget-byte v9, v0, v6

    .line 161
    .line 162
    and-int/lit16 v10, v5, 0xc0

    .line 163
    .line 164
    if-ne v10, v8, :cond_5

    .line 165
    .line 166
    and-int/lit16 v10, v9, 0xc0

    .line 167
    .line 168
    if-ne v10, v8, :cond_5

    .line 169
    .line 170
    and-int/lit8 v4, v4, 0xf

    .line 171
    .line 172
    shl-int/lit8 v4, v4, 0xc

    .line 173
    .line 174
    and-int/lit8 v5, v5, 0x3f

    .line 175
    .line 176
    shl-int/lit8 v5, v5, 0x6

    .line 177
    or-int/2addr v4, v5

    .line 178
    .line 179
    and-int/lit8 v5, v9, 0x3f

    .line 180
    or-int/2addr v5, v4

    .line 181
    .line 182
    add-int/lit8 v1, v1, 0x3

    .line 183
    goto :goto_1

    .line 184
    .line 185
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 204
    throw v0

    .line 205
    .line 206
    :pswitch_1
    add-int/lit8 v5, v1, 0x1

    .line 207
    .line 208
    aget-byte v5, v0, v5

    .line 209
    .line 210
    and-int/lit16 v6, v5, 0xc0

    .line 211
    .line 212
    if-ne v6, v8, :cond_6

    .line 213
    .line 214
    and-int/lit8 v4, v4, 0x1f

    .line 215
    .line 216
    shl-int/lit8 v4, v4, 0x6

    .line 217
    .line 218
    and-int/lit8 v5, v5, 0x3f

    .line 219
    or-int/2addr v5, v4

    .line 220
    .line 221
    add-int/lit8 v1, v1, 0x2

    .line 222
    :goto_1
    int-to-char v4, v5

    .line 223
    .line 224
    aput-char v4, v2, v3

    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    .line 245
    .line 246
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 247
    throw v0

    .line 248
    .line 249
    :cond_7
    const/16 v5, 0x22

    .line 250
    .line 251
    const/16 v6, 0x5c

    .line 252
    .line 253
    if-ne v4, v6, :cond_b

    .line 254
    .line 255
    add-int/lit8 v4, v1, 0x1

    .line 256
    .line 257
    aget-byte v7, v0, v4

    .line 258
    int-to-char v7, v7

    .line 259
    .line 260
    if-eq v7, v5, :cond_a

    .line 261
    .line 262
    if-eq v7, v6, :cond_a

    .line 263
    .line 264
    const/16 v5, 0x75

    .line 265
    .line 266
    if-eq v7, v5, :cond_9

    .line 267
    .line 268
    const/16 v5, 0x78

    .line 269
    .line 270
    if-eq v7, v5, :cond_8

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 274
    move-result v1

    .line 275
    move v11, v4

    .line 276
    move v4, v1

    .line 277
    move v1, v11

    .line 278
    goto :goto_2

    .line 279
    .line 280
    :cond_8
    add-int/lit8 v4, v1, 0x2

    .line 281
    .line 282
    aget-byte v4, v0, v4

    .line 283
    .line 284
    add-int/lit8 v1, v1, 0x3

    .line 285
    .line 286
    aget-byte v5, v0, v1

    .line 287
    .line 288
    .line 289
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 290
    move-result v4

    .line 291
    goto :goto_2

    .line 292
    .line 293
    :cond_9
    add-int/lit8 v4, v1, 0x2

    .line 294
    .line 295
    aget-byte v4, v0, v4

    .line 296
    .line 297
    add-int/lit8 v5, v1, 0x3

    .line 298
    .line 299
    aget-byte v5, v0, v5

    .line 300
    .line 301
    add-int/lit8 v6, v1, 0x4

    .line 302
    .line 303
    aget-byte v6, v0, v6

    .line 304
    .line 305
    add-int/lit8 v1, v1, 0x5

    .line 306
    .line 307
    aget-byte v7, v0, v1

    .line 308
    .line 309
    .line 310
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 311
    move-result v4

    .line 312
    goto :goto_2

    .line 313
    :cond_a
    move v1, v4

    .line 314
    move v4, v7

    .line 315
    goto :goto_2

    .line 316
    .line 317
    :cond_b
    if-ne v4, v5, :cond_c

    .line 318
    .line 319
    new-instance v0, Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 323
    .line 324
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 325
    return-object v0

    .line 326
    :cond_c
    :goto_2
    int-to-char v4, v4

    .line 327
    .line 328
    aput-char v4, v2, v3

    .line 329
    .line 330
    add-int/lit8 v1, v1, 0x1

    .line 331
    .line 332
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 333
    .line 334
    goto/16 :goto_0

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
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getStringLength()I
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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 24
    .line 25
    add-int/lit8 v3, v1, 0x8

    .line 26
    .line 27
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v4, v2, v1

    .line 35
    .line 36
    if-eq v4, v0, :cond_2

    .line 37
    .line 38
    add-int/lit8 v4, v1, 0x1

    .line 39
    .line 40
    aget-byte v4, v2, v4

    .line 41
    .line 42
    if-eq v4, v0, :cond_2

    .line 43
    .line 44
    add-int/lit8 v4, v1, 0x2

    .line 45
    .line 46
    aget-byte v4, v2, v4

    .line 47
    .line 48
    if-eq v4, v0, :cond_2

    .line 49
    .line 50
    add-int/lit8 v4, v1, 0x3

    .line 51
    .line 52
    aget-byte v4, v2, v4

    .line 53
    .line 54
    if-eq v4, v0, :cond_2

    .line 55
    .line 56
    add-int/lit8 v4, v1, 0x4

    .line 57
    .line 58
    aget-byte v4, v2, v4

    .line 59
    .line 60
    if-eq v4, v0, :cond_2

    .line 61
    .line 62
    add-int/lit8 v4, v1, 0x5

    .line 63
    .line 64
    aget-byte v4, v2, v4

    .line 65
    .line 66
    if-eq v4, v0, :cond_2

    .line 67
    .line 68
    add-int/lit8 v4, v1, 0x6

    .line 69
    .line 70
    aget-byte v4, v2, v4

    .line 71
    .line 72
    if-eq v4, v0, :cond_2

    .line 73
    .line 74
    add-int/lit8 v4, v1, 0x7

    .line 75
    .line 76
    aget-byte v4, v2, v4

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
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 88
    .line 89
    if-ge v1, v4, :cond_4

    .line 90
    .line 91
    aget-byte v4, v2, v1

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

.method public final info(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    .line 6
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    const/16 v5, 0xa

    .line 9
    .line 10
    if-ge v1, v4, :cond_1

    .line 11
    .line 12
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 13
    .line 14
    if-ge v1, v4, :cond_1

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 17
    .line 18
    aget-byte v4, v4, v1

    .line 19
    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    move v2, v0

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    add-int/2addr v2, v0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 38
    move-result v4

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p1, ", "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    :cond_2
    const-string p1, "offset "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p1, ", character "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p1, ", line "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p1, ", column "

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p1, ", fastjson-version "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p1, "2.0.60"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    if-le v3, v0, :cond_3

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_3
    const/16 v5, 0x20

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    new-instance p1, Ljava/lang/String;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 107
    .line 108
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->start:I

    .line 109
    .line 110
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    .line 111
    .line 112
    .line 113
    const v4, 0xffff

    .line 114
    .line 115
    if-ge v3, v4, :cond_4

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    move v3, v4

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-direct {p1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    return-object p1
.end method

.method public final isArray()Z
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

.method public final isNull()Z
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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 15
    .line 16
    aget-byte v0, v1, v0

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
    .locals 14

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 32
    .line 33
    if-ne v4, v5, :cond_2

    .line 34
    return v1

    .line 35
    .line 36
    :cond_2
    aget-byte v6, v0, v4

    .line 37
    .line 38
    :goto_0
    const/16 v7, 0x20

    .line 39
    .line 40
    const-wide/16 v8, 0x1

    .line 41
    .line 42
    if-gt v6, v7, :cond_4

    .line 43
    .line 44
    shl-long v10, v8, v6

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v12, 0x100003701L

    .line 50
    and-long/2addr v10, v12

    .line 51
    .line 52
    cmp-long v7, v10, v2

    .line 53
    .line 54
    if-eqz v7, :cond_4

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    if-lt v4, v5, :cond_3

    .line 59
    return v1

    .line 60
    .line 61
    :cond_3
    aget-byte v6, v0, v4

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_4
    add-int/lit8 v2, v4, 0x6

    .line 65
    .line 66
    if-ge v2, v5, :cond_6

    .line 67
    .line 68
    add-int/lit8 v2, v4, 0x5

    .line 69
    .line 70
    aget-byte v2, v0, v2

    .line 71
    .line 72
    if-ne v2, v6, :cond_6

    .line 73
    .line 74
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 75
    .line 76
    sget-wide v10, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 77
    int-to-long v12, v4

    .line 78
    add-long/2addr v10, v12

    .line 79
    add-long/2addr v10, v8

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 83
    move-result v2

    .line 84
    .line 85
    sget v3, Lcom/alibaba/fastjson2/JSONReaderUTF8;->REF:I

    .line 86
    .line 87
    if-eq v2, v3, :cond_5

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isReference0([BIII)Z

    .line 92
    move-result v0

    .line 93
    return v0

    .line 94
    :cond_6
    :goto_1
    return v1
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
    const/16 v4, 0x20

    .line 20
    .line 21
    if-gt v1, v4, :cond_2

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    shl-long/2addr v4, v1

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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 39
    .line 40
    if-ne v2, v1, :cond_1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 44
    .line 45
    aget-byte v2, v0, v2

    .line 46
    move v8, v2

    .line 47
    move v2, v1

    .line 48
    move v1, v8

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    if-gez v1, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 55
    return-void

    .line 56
    .line 57
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 58
    int-to-char v0, v1

    .line 59
    .line 60
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 61
    .line 62
    const/16 v0, 0x2f

    .line 63
    .line 64
    if-ne v1, v0, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 68
    :cond_4
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
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    const/16 v4, 0x5d

    .line 11
    .line 12
    if-eq v1, v4, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 17
    .line 18
    const/16 v4, 0x1a

    .line 19
    .line 20
    if-ne v3, v1, :cond_1

    .line 21
    move v1, v3

    .line 22
    :goto_0
    move v3, v4

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 26
    .line 27
    aget-byte v3, v2, v3

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
    if-gt v3, v11, :cond_3

    .line 41
    .line 42
    shl-long v12, v9, v3

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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 50
    .line 51
    if-ne v1, v3, :cond_2

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 55
    .line 56
    aget-byte v1, v2, v1

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
    if-ne v3, v12, :cond_6

    .line 68
    .line 69
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 70
    .line 71
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 72
    .line 73
    if-ne v1, v3, :cond_4

    .line 74
    move v3, v1

    .line 75
    move v1, v4

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 79
    .line 80
    aget-byte v1, v2, v1

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
    if-gt v3, v11, :cond_6

    .line 88
    .line 89
    shl-long v14, v9, v3

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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 97
    .line 98
    if-ne v1, v3, :cond_5

    .line 99
    move v3, v4

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_5
    add-int/lit8 v3, v1, 0x1

    .line 103
    .line 104
    aget-byte v1, v2, v1

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_6
    if-gez v3, :cond_7

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v3, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 111
    return v13

    .line 112
    :cond_7
    int-to-char v2, v3

    .line 113
    .line 114
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 115
    .line 116
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 117
    .line 118
    const/16 v1, 0x2f

    .line 119
    .line 120
    if-ne v3, v1, :cond_8

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 124
    :cond_8
    return v13
.end method

.method public final nextIfArrayStart()Z
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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v2, v0, v2

    .line 54
    move v8, v2

    .line 55
    move v2, v1

    .line 56
    move v1, v8

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v0, 0x1

    .line 59
    .line 60
    if-gez v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 64
    return v0

    .line 65
    :cond_4
    int-to-char v3, v1

    .line 66
    .line 67
    iput-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 70
    .line 71
    const/16 v2, 0x2f

    .line 72
    .line 73
    if-ne v1, v2, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 77
    :cond_5
    return v0
.end method

.method public final nextIfComma()Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v0, v1

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
    int-to-char v0, v2

    .line 50
    .line 51
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 52
    const/4 v0, 0x0

    .line 53
    return v0

    .line 54
    .line 55
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 56
    .line 57
    if-ne v1, v2, :cond_3

    .line 58
    move v2, v1

    .line 59
    :goto_1
    move v1, v10

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 63
    .line 64
    aget-byte v1, v0, v1

    .line 65
    .line 66
    :goto_2
    if-gt v1, v9, :cond_5

    .line 67
    .line 68
    shl-long v11, v7, v1

    .line 69
    and-long/2addr v11, v5

    .line 70
    .line 71
    cmp-long v11, v11, v3

    .line 72
    .line 73
    if-eqz v11, :cond_5

    .line 74
    .line 75
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 76
    .line 77
    if-ne v2, v1, :cond_4

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 81
    .line 82
    aget-byte v2, v0, v2

    .line 83
    move v13, v2

    .line 84
    move v2, v1

    .line 85
    move v1, v13

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    const/4 v0, 0x1

    .line 88
    .line 89
    if-gez v1, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 93
    return v0

    .line 94
    .line 95
    :cond_6
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 96
    int-to-char v2, v1

    .line 97
    .line 98
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 99
    .line 100
    const/16 v2, 0x2f

    .line 101
    .line 102
    if-ne v1, v2, :cond_7

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 106
    :cond_7
    return v0
.end method

.method public final nextIfInfinity()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 15
    .line 16
    if-ge v2, v3, :cond_3

    .line 17
    .line 18
    aget-byte v4, v0, v1

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
    aget-byte v4, v0, v4

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
    aget-byte v4, v0, v4

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
    aget-byte v4, v0, v4

    .line 43
    .line 44
    if-ne v4, v5, :cond_3

    .line 45
    .line 46
    add-int/lit8 v4, v1, 0x4

    .line 47
    .line 48
    aget-byte v4, v0, v4

    .line 49
    .line 50
    if-ne v4, v6, :cond_3

    .line 51
    .line 52
    add-int/lit8 v4, v1, 0x5

    .line 53
    .line 54
    aget-byte v4, v0, v4

    .line 55
    .line 56
    const/16 v5, 0x74

    .line 57
    .line 58
    if-ne v4, v5, :cond_3

    .line 59
    .line 60
    aget-byte v2, v0, v2

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
    aget-byte v2, v0, v2

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v0, v1

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
    int-to-char v0, v2

    .line 113
    .line 114
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 115
    const/4 v0, 0x1

    .line 116
    return v0

    .line 117
    :cond_3
    const/4 v0, 0x0

    .line 118
    return v0
.end method

.method public final nextIfMatch(C)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v0, v1

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
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v0, v1

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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte p1, v0, p1

    .line 76
    move v13, v1

    .line 77
    move v1, p1

    .line 78
    move p1, v13

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    const/4 v0, 0x1

    .line 81
    .line 82
    if-gez v1, :cond_6

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 86
    return v0

    .line 87
    .line 88
    :cond_6
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    int-to-char p1, v1

    .line 90
    .line 91
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 92
    .line 93
    const/16 p1, 0x2f

    .line 94
    .line 95
    if-ne v1, p1, :cond_7

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 99
    :cond_7
    return v0
.end method

.method public final nextIfMatchIdent(CCC)Z
    .locals 7

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x2

    .line 4
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v2, v3, :cond_6

    aget-byte v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-byte p2, p1, p2

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
    aget-byte p3, p1, v2

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
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-byte v0, p1, v2

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

    int-to-char p1, p3

    .line 9
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfMatchIdent(CCCC)Z
    .locals 7

    .line 10
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 12
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x3

    .line 13
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v2, v3, :cond_6

    aget-byte v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-byte p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 p2, v0, 0x2

    aget-byte p2, p1, p2

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
    aget-byte p3, p1, v2

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
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-byte p4, p1, v2

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

    int-to-char p1, p3

    .line 18
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfMatchIdent(CCCCC)Z
    .locals 5

    .line 19
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 21
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x4

    .line 22
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v2, v3, :cond_6

    aget-byte v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-byte p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 p2, v0, 0x2

    aget-byte p2, p1, p2

    if-ne p2, p4, :cond_6

    add-int/lit8 p2, v0, 0x3

    aget-byte p2, p1, p2

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
    aget-byte p3, p1, v2

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
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-byte p4, p1, v2

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

    int-to-char p1, p3

    .line 27
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfMatchIdent(CCCCCC)Z
    .locals 5

    .line 28
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 30
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x5

    .line 31
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v2, v3, :cond_6

    aget-byte v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-byte p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 p2, v0, 0x2

    aget-byte p2, p1, p2

    if-ne p2, p4, :cond_6

    add-int/lit8 p2, v0, 0x3

    aget-byte p2, p1, p2

    if-ne p2, p5, :cond_6

    add-int/lit8 p2, v0, 0x4

    aget-byte p2, p1, p2

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
    aget-byte p3, p1, v2

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
    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-byte p4, p1, v2

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

    int-to-char p1, p3

    .line 36
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfName4Match10(J)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xc

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x9

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    move-result-wide v5

    .line 26
    .line 27
    cmp-long p1, v5, p1

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    add-int/lit8 p1, v1, 0xb

    .line 32
    .line 33
    aget-byte p1, v0, p1

    .line 34
    .line 35
    const/16 p2, 0x3a

    .line 36
    .line 37
    if-eq p1, p2, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0xd

    .line 41
    .line 42
    aget-byte p1, v0, v2

    .line 43
    .line 44
    and-int/lit16 p1, p1, 0xff

    .line 45
    .line 46
    :goto_0
    const/16 p2, 0x20

    .line 47
    .line 48
    if-gt p1, p2, :cond_2

    .line 49
    .line 50
    const-wide/16 v2, 0x1

    .line 51
    shl-long/2addr v2, p1

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide v4, 0x100003701L

    .line 57
    and-long/2addr v2, v4

    .line 58
    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .line 61
    cmp-long p2, v2, v4

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    add-int/lit8 p1, v1, 0x1

    .line 66
    .line 67
    aget-byte p2, v0, v1

    .line 68
    .line 69
    and-int/lit16 p2, p2, 0xff

    .line 70
    move v1, p1

    .line 71
    move p1, p2

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 75
    int-to-char p1, p1

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

.method public final nextIfName4Match11(J)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xd

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0xa

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    move-result-wide v5

    .line 26
    .line 27
    cmp-long p1, v5, p1

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    add-int/lit8 p1, v1, 0xb

    .line 32
    .line 33
    aget-byte p1, v0, p1

    .line 34
    .line 35
    const/16 p2, 0x22

    .line 36
    .line 37
    if-ne p1, p2, :cond_3

    .line 38
    .line 39
    add-int/lit8 p1, v1, 0xc

    .line 40
    .line 41
    aget-byte p1, v0, p1

    .line 42
    .line 43
    const/16 p2, 0x3a

    .line 44
    .line 45
    if-eq p1, p2, :cond_1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0xe

    .line 49
    .line 50
    aget-byte p1, v0, v2

    .line 51
    .line 52
    and-int/lit16 p1, p1, 0xff

    .line 53
    .line 54
    :goto_0
    const/16 p2, 0x20

    .line 55
    .line 56
    if-gt p1, p2, :cond_2

    .line 57
    .line 58
    const-wide/16 v2, 0x1

    .line 59
    shl-long/2addr v2, p1

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const-wide v4, 0x100003701L

    .line 65
    and-long/2addr v2, v4

    .line 66
    .line 67
    const-wide/16 v4, 0x0

    .line 68
    .line 69
    cmp-long p2, v2, v4

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    add-int/lit8 p1, v1, 0x1

    .line 74
    .line 75
    aget-byte p2, v0, v1

    .line 76
    .line 77
    and-int/lit16 p2, p2, 0xff

    .line 78
    move v1, p1

    .line 79
    move p1, p2

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 83
    int-to-char p1, p1

    .line 84
    .line 85
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 86
    const/4 p1, 0x1

    .line 87
    return p1

    .line 88
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match12(JB)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xe

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0xb

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    move-result-wide v5

    .line 26
    .line 27
    cmp-long p1, v5, p1

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    add-int/lit8 p1, v1, 0xb

    .line 32
    .line 33
    aget-byte p1, v0, p1

    .line 34
    .line 35
    if-ne p1, p3, :cond_3

    .line 36
    .line 37
    add-int/lit8 p1, v1, 0xc

    .line 38
    .line 39
    aget-byte p1, v0, p1

    .line 40
    .line 41
    const/16 p2, 0x22

    .line 42
    .line 43
    if-ne p1, p2, :cond_3

    .line 44
    .line 45
    add-int/lit8 p1, v1, 0xd

    .line 46
    .line 47
    aget-byte p1, v0, p1

    .line 48
    .line 49
    const/16 p2, 0x3a

    .line 50
    .line 51
    if-eq p1, p2, :cond_1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0xf

    .line 55
    .line 56
    aget-byte p1, v0, v2

    .line 57
    .line 58
    and-int/lit16 p1, p1, 0xff

    .line 59
    .line 60
    :goto_0
    const/16 p2, 0x20

    .line 61
    .line 62
    if-gt p1, p2, :cond_2

    .line 63
    .line 64
    const-wide/16 p2, 0x1

    .line 65
    shl-long/2addr p2, p1

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const-wide v2, 0x100003701L

    .line 71
    and-long/2addr p2, v2

    .line 72
    .line 73
    const-wide/16 v2, 0x0

    .line 74
    .line 75
    cmp-long p2, p2, v2

    .line 76
    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    add-int/lit8 p1, v1, 0x1

    .line 80
    .line 81
    aget-byte p2, v0, v1

    .line 82
    .line 83
    and-int/lit16 p2, p2, 0xff

    .line 84
    move v1, p1

    .line 85
    move p1, p2

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    int-to-char p1, p1

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

.method public final nextIfName4Match13(JI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xf

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0xc

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    add-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0x4

    .line 34
    sub-long/2addr v5, v7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 38
    move-result v3

    .line 39
    .line 40
    move/from16 v5, p3

    .line 41
    .line 42
    if-eq v3, v5, :cond_1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x10

    .line 46
    .line 47
    aget-byte v2, v0, v2

    .line 48
    .line 49
    and-int/lit16 v2, v2, 0xff

    .line 50
    .line 51
    :goto_0
    const/16 v3, 0x20

    .line 52
    .line 53
    if-gt v2, v3, :cond_2

    .line 54
    .line 55
    const-wide/16 v3, 0x1

    .line 56
    shl-long/2addr v3, v2

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const-wide v5, 0x100003701L

    .line 62
    and-long/2addr v3, v5

    .line 63
    .line 64
    const-wide/16 v5, 0x0

    .line 65
    .line 66
    cmp-long v3, v3, v5

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    add-int/lit8 v2, v1, 0x1

    .line 71
    .line 72
    aget-byte v1, v0, v1

    .line 73
    .line 74
    and-int/lit16 v1, v1, 0xff

    .line 75
    move v13, v2

    .line 76
    move v2, v1

    .line 77
    move v1, v13

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 81
    int-to-char v0, v2

    .line 82
    .line 83
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 84
    const/4 v0, 0x1

    .line 85
    return v0

    .line 86
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match14(JI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x10

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0xd

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    add-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0x5

    .line 34
    sub-long/2addr v5, v7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 38
    move-result v3

    .line 39
    .line 40
    move/from16 v5, p3

    .line 41
    .line 42
    if-ne v3, v5, :cond_3

    .line 43
    .line 44
    add-int/lit8 v3, v1, 0xf

    .line 45
    .line 46
    aget-byte v3, v0, v3

    .line 47
    .line 48
    const/16 v5, 0x3a

    .line 49
    .line 50
    if-eq v3, v5, :cond_1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x11

    .line 54
    .line 55
    aget-byte v2, v0, v2

    .line 56
    .line 57
    and-int/lit16 v2, v2, 0xff

    .line 58
    .line 59
    :goto_0
    const/16 v3, 0x20

    .line 60
    .line 61
    if-gt v2, v3, :cond_2

    .line 62
    .line 63
    const-wide/16 v3, 0x1

    .line 64
    shl-long/2addr v3, v2

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide v5, 0x100003701L

    .line 70
    and-long/2addr v3, v5

    .line 71
    .line 72
    const-wide/16 v5, 0x0

    .line 73
    .line 74
    cmp-long v3, v3, v5

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    add-int/lit8 v2, v1, 0x1

    .line 79
    .line 80
    aget-byte v1, v0, v1

    .line 81
    .line 82
    and-int/lit16 v1, v1, 0xff

    .line 83
    move v13, v2

    .line 84
    move v2, v1

    .line 85
    move v1, v13

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    int-to-char v0, v2

    .line 90
    .line 91
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 92
    const/4 v0, 0x1

    .line 93
    return v0

    .line 94
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match15(JI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x11

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0xe

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    add-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0x6

    .line 34
    sub-long/2addr v5, v7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 38
    move-result v3

    .line 39
    .line 40
    move/from16 v5, p3

    .line 41
    .line 42
    if-ne v3, v5, :cond_3

    .line 43
    .line 44
    add-int/lit8 v3, v1, 0xf

    .line 45
    .line 46
    aget-byte v3, v0, v3

    .line 47
    .line 48
    const/16 v5, 0x22

    .line 49
    .line 50
    if-ne v3, v5, :cond_3

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x10

    .line 53
    .line 54
    aget-byte v3, v0, v3

    .line 55
    .line 56
    const/16 v5, 0x3a

    .line 57
    .line 58
    if-eq v3, v5, :cond_1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x12

    .line 62
    .line 63
    aget-byte v2, v0, v2

    .line 64
    .line 65
    and-int/lit16 v2, v2, 0xff

    .line 66
    .line 67
    :goto_0
    const/16 v3, 0x20

    .line 68
    .line 69
    if-gt v2, v3, :cond_2

    .line 70
    .line 71
    const-wide/16 v3, 0x1

    .line 72
    shl-long/2addr v3, v2

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-wide v5, 0x100003701L

    .line 78
    and-long/2addr v3, v5

    .line 79
    .line 80
    const-wide/16 v5, 0x0

    .line 81
    .line 82
    cmp-long v3, v3, v5

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    add-int/lit8 v2, v1, 0x1

    .line 87
    .line 88
    aget-byte v1, v0, v1

    .line 89
    .line 90
    and-int/lit16 v1, v1, 0xff

    .line 91
    move v13, v2

    .line 92
    move v2, v1

    .line 93
    move v1, v13

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 97
    int-to-char v0, v2

    .line 98
    .line 99
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 100
    const/4 v0, 0x1

    .line 101
    return v0

    .line 102
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match16(JIB)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x12

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0xf

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    add-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0x7

    .line 34
    sub-long/2addr v5, v7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 38
    move-result v3

    .line 39
    .line 40
    move/from16 v5, p3

    .line 41
    .line 42
    if-ne v3, v5, :cond_3

    .line 43
    .line 44
    add-int/lit8 v3, v1, 0xf

    .line 45
    .line 46
    aget-byte v3, v0, v3

    .line 47
    .line 48
    move/from16 v5, p4

    .line 49
    .line 50
    if-ne v3, v5, :cond_3

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x10

    .line 53
    .line 54
    aget-byte v3, v0, v3

    .line 55
    .line 56
    const/16 v5, 0x22

    .line 57
    .line 58
    if-ne v3, v5, :cond_3

    .line 59
    .line 60
    add-int/lit8 v3, v1, 0x11

    .line 61
    .line 62
    aget-byte v3, v0, v3

    .line 63
    .line 64
    const/16 v5, 0x3a

    .line 65
    .line 66
    if-eq v3, v5, :cond_1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x13

    .line 70
    .line 71
    aget-byte v2, v0, v2

    .line 72
    .line 73
    and-int/lit16 v2, v2, 0xff

    .line 74
    .line 75
    :goto_0
    const/16 v3, 0x20

    .line 76
    .line 77
    if-gt v2, v3, :cond_2

    .line 78
    .line 79
    const-wide/16 v3, 0x1

    .line 80
    shl-long/2addr v3, v2

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    const-wide v5, 0x100003701L

    .line 86
    and-long/2addr v3, v5

    .line 87
    .line 88
    const-wide/16 v5, 0x0

    .line 89
    .line 90
    cmp-long v3, v3, v5

    .line 91
    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    add-int/lit8 v2, v1, 0x1

    .line 95
    .line 96
    aget-byte v1, v0, v1

    .line 97
    .line 98
    and-int/lit16 v1, v1, 0xff

    .line 99
    move v13, v2

    .line 100
    move v2, v1

    .line 101
    move v1, v13

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 105
    int-to-char v0, v2

    .line 106
    .line 107
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 108
    const/4 v0, 0x1

    .line 109
    return v0

    .line 110
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match17(JJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x13

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x10

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    add-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0x8

    .line 34
    sub-long/2addr v5, v7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 38
    move-result-wide v5

    .line 39
    .line 40
    cmp-long v3, v5, p3

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x14

    .line 46
    .line 47
    aget-byte v2, v0, v2

    .line 48
    .line 49
    and-int/lit16 v2, v2, 0xff

    .line 50
    .line 51
    :goto_0
    const/16 v3, 0x20

    .line 52
    .line 53
    if-gt v2, v3, :cond_2

    .line 54
    .line 55
    const-wide/16 v3, 0x1

    .line 56
    shl-long/2addr v3, v2

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const-wide v5, 0x100003701L

    .line 62
    and-long/2addr v3, v5

    .line 63
    .line 64
    const-wide/16 v5, 0x0

    .line 65
    .line 66
    cmp-long v3, v3, v5

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    add-int/lit8 v2, v1, 0x1

    .line 71
    .line 72
    aget-byte v1, v0, v1

    .line 73
    .line 74
    and-int/lit16 v1, v1, 0xff

    .line 75
    move v13, v2

    .line 76
    move v2, v1

    .line 77
    move v1, v13

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 81
    int-to-char v0, v2

    .line 82
    .line 83
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 84
    const/4 v0, 0x1

    .line 85
    return v0

    .line 86
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match18(JJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x14

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x11

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    add-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0x9

    .line 34
    sub-long/2addr v5, v7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 38
    move-result-wide v5

    .line 39
    .line 40
    cmp-long v3, v5, p3

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    add-int/lit8 v3, v1, 0x13

    .line 45
    .line 46
    aget-byte v3, v0, v3

    .line 47
    .line 48
    const/16 v5, 0x3a

    .line 49
    .line 50
    if-eq v3, v5, :cond_1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x15

    .line 54
    .line 55
    aget-byte v2, v0, v2

    .line 56
    .line 57
    and-int/lit16 v2, v2, 0xff

    .line 58
    .line 59
    :goto_0
    const/16 v3, 0x20

    .line 60
    .line 61
    if-gt v2, v3, :cond_2

    .line 62
    .line 63
    const-wide/16 v3, 0x1

    .line 64
    shl-long/2addr v3, v2

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide v5, 0x100003701L

    .line 70
    and-long/2addr v3, v5

    .line 71
    .line 72
    const-wide/16 v5, 0x0

    .line 73
    .line 74
    cmp-long v3, v3, v5

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    add-int/lit8 v2, v1, 0x1

    .line 79
    .line 80
    aget-byte v1, v0, v1

    .line 81
    .line 82
    and-int/lit16 v1, v1, 0xff

    .line 83
    move v13, v2

    .line 84
    move v2, v1

    .line 85
    move v1, v13

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    int-to-char v0, v2

    .line 90
    .line 91
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 92
    const/4 v0, 0x1

    .line 93
    return v0

    .line 94
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match19(JJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x15

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x12

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    add-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0xa

    .line 34
    sub-long/2addr v5, v7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 38
    move-result-wide v5

    .line 39
    .line 40
    cmp-long v3, v5, p3

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    add-int/lit8 v3, v1, 0x13

    .line 45
    .line 46
    aget-byte v3, v0, v3

    .line 47
    .line 48
    const/16 v5, 0x22

    .line 49
    .line 50
    if-ne v3, v5, :cond_3

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x14

    .line 53
    .line 54
    aget-byte v3, v0, v3

    .line 55
    .line 56
    const/16 v5, 0x3a

    .line 57
    .line 58
    if-eq v3, v5, :cond_1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x16

    .line 62
    .line 63
    aget-byte v2, v0, v2

    .line 64
    .line 65
    and-int/lit16 v2, v2, 0xff

    .line 66
    .line 67
    :goto_0
    const/16 v3, 0x20

    .line 68
    .line 69
    if-gt v2, v3, :cond_2

    .line 70
    .line 71
    const-wide/16 v3, 0x1

    .line 72
    shl-long/2addr v3, v2

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-wide v5, 0x100003701L

    .line 78
    and-long/2addr v3, v5

    .line 79
    .line 80
    const-wide/16 v5, 0x0

    .line 81
    .line 82
    cmp-long v3, v3, v5

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    add-int/lit8 v2, v1, 0x1

    .line 87
    .line 88
    aget-byte v1, v0, v1

    .line 89
    .line 90
    and-int/lit16 v1, v1, 0xff

    .line 91
    move v13, v2

    .line 92
    move v2, v1

    .line 93
    move v1, v13

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 97
    int-to-char v0, v2

    .line 98
    .line 99
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 100
    const/4 v0, 0x1

    .line 101
    return v0

    .line 102
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match2()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x4

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v3, v0, v3

    .line 17
    .line 18
    const/16 v5, 0x3a

    .line 19
    .line 20
    if-eq v3, v5, :cond_1

    .line 21
    return v4

    .line 22
    .line 23
    :cond_1
    add-int/lit8 v1, v1, 0x5

    .line 24
    .line 25
    aget-byte v2, v0, v2

    .line 26
    .line 27
    and-int/lit16 v2, v2, 0xff

    .line 28
    .line 29
    :goto_0
    const/16 v3, 0x20

    .line 30
    .line 31
    if-gt v2, v3, :cond_2

    .line 32
    .line 33
    const-wide/16 v3, 0x1

    .line 34
    shl-long/2addr v3, v2

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide v5, 0x100003701L

    .line 40
    and-long/2addr v3, v5

    .line 41
    .line 42
    const-wide/16 v5, 0x0

    .line 43
    .line 44
    cmp-long v3, v3, v5

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    add-int/lit8 v2, v1, 0x1

    .line 49
    .line 50
    aget-byte v1, v0, v1

    .line 51
    .line 52
    and-int/lit16 v1, v1, 0xff

    .line 53
    move v7, v2

    .line 54
    move v2, v1

    .line 55
    move v1, v7

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 59
    int-to-char v0, v2

    .line 60
    .line 61
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 62
    const/4 v0, 0x1

    .line 63
    return v0
.end method

.method public final nextIfName4Match20(JJB)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x16

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x13

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    add-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0xb

    .line 34
    sub-long/2addr v5, v7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 38
    move-result-wide v5

    .line 39
    .line 40
    cmp-long v3, v5, p3

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    add-int/lit8 v3, v1, 0x13

    .line 45
    .line 46
    aget-byte v3, v0, v3

    .line 47
    .line 48
    move/from16 v5, p5

    .line 49
    .line 50
    if-ne v3, v5, :cond_3

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x14

    .line 53
    .line 54
    aget-byte v3, v0, v3

    .line 55
    .line 56
    const/16 v5, 0x22

    .line 57
    .line 58
    if-ne v3, v5, :cond_3

    .line 59
    .line 60
    add-int/lit8 v3, v1, 0x15

    .line 61
    .line 62
    aget-byte v3, v0, v3

    .line 63
    .line 64
    const/16 v5, 0x3a

    .line 65
    .line 66
    if-eq v3, v5, :cond_1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x17

    .line 70
    .line 71
    aget-byte v2, v0, v2

    .line 72
    .line 73
    and-int/lit16 v2, v2, 0xff

    .line 74
    .line 75
    :goto_0
    const/16 v3, 0x20

    .line 76
    .line 77
    if-gt v2, v3, :cond_2

    .line 78
    .line 79
    const-wide/16 v3, 0x1

    .line 80
    shl-long/2addr v3, v2

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    const-wide v5, 0x100003701L

    .line 86
    and-long/2addr v3, v5

    .line 87
    .line 88
    const-wide/16 v5, 0x0

    .line 89
    .line 90
    cmp-long v3, v3, v5

    .line 91
    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    add-int/lit8 v2, v1, 0x1

    .line 95
    .line 96
    aget-byte v1, v0, v1

    .line 97
    .line 98
    and-int/lit16 v1, v1, 0xff

    .line 99
    move v13, v2

    .line 100
    move v2, v1

    .line 101
    move v1, v13

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 105
    int-to-char v0, v2

    .line 106
    .line 107
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 108
    const/4 v0, 0x1

    .line 109
    return v0

    .line 110
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match21(JJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x17

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x14

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0xc

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    add-long/2addr v5, v7

    .line 45
    .line 46
    const-wide/16 v7, 0x4

    .line 47
    sub-long/2addr v5, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 51
    move-result v3

    .line 52
    .line 53
    move/from16 v5, p5

    .line 54
    .line 55
    if-eq v3, v5, :cond_1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x18

    .line 59
    .line 60
    aget-byte v2, v0, v2

    .line 61
    .line 62
    and-int/lit16 v2, v2, 0xff

    .line 63
    .line 64
    :goto_0
    const/16 v3, 0x20

    .line 65
    .line 66
    if-gt v2, v3, :cond_2

    .line 67
    .line 68
    const-wide/16 v3, 0x1

    .line 69
    shl-long/2addr v3, v2

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-wide v5, 0x100003701L

    .line 75
    and-long/2addr v3, v5

    .line 76
    .line 77
    const-wide/16 v5, 0x0

    .line 78
    .line 79
    cmp-long v3, v3, v5

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    add-int/lit8 v2, v1, 0x1

    .line 84
    .line 85
    aget-byte v1, v0, v1

    .line 86
    .line 87
    and-int/lit16 v1, v1, 0xff

    .line 88
    move v13, v2

    .line 89
    move v2, v1

    .line 90
    move v1, v13

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 94
    int-to-char v0, v2

    .line 95
    .line 96
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 97
    const/4 v0, 0x1

    .line 98
    return v0

    .line 99
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match22(JJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x18

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x15

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0xd

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    add-long/2addr v5, v7

    .line 45
    .line 46
    const-wide/16 v7, 0x5

    .line 47
    sub-long/2addr v5, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 51
    move-result v3

    .line 52
    .line 53
    move/from16 v5, p5

    .line 54
    .line 55
    if-ne v3, v5, :cond_3

    .line 56
    .line 57
    add-int/lit8 v3, v1, 0x17

    .line 58
    .line 59
    aget-byte v3, v0, v3

    .line 60
    .line 61
    const/16 v5, 0x3a

    .line 62
    .line 63
    if-eq v3, v5, :cond_1

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x19

    .line 67
    .line 68
    aget-byte v2, v0, v2

    .line 69
    .line 70
    and-int/lit16 v2, v2, 0xff

    .line 71
    .line 72
    :goto_0
    const/16 v3, 0x20

    .line 73
    .line 74
    if-gt v2, v3, :cond_2

    .line 75
    .line 76
    const-wide/16 v3, 0x1

    .line 77
    shl-long/2addr v3, v2

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const-wide v5, 0x100003701L

    .line 83
    and-long/2addr v3, v5

    .line 84
    .line 85
    const-wide/16 v5, 0x0

    .line 86
    .line 87
    cmp-long v3, v3, v5

    .line 88
    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    add-int/lit8 v2, v1, 0x1

    .line 92
    .line 93
    aget-byte v1, v0, v1

    .line 94
    .line 95
    and-int/lit16 v1, v1, 0xff

    .line 96
    move v13, v2

    .line 97
    move v2, v1

    .line 98
    move v1, v13

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 102
    int-to-char v0, v2

    .line 103
    .line 104
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 105
    const/4 v0, 0x1

    .line 106
    return v0

    .line 107
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match23(JJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x19

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x16

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0xe

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    add-long/2addr v5, v7

    .line 45
    .line 46
    const-wide/16 v7, 0x6

    .line 47
    sub-long/2addr v5, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 51
    move-result v3

    .line 52
    .line 53
    move/from16 v5, p5

    .line 54
    .line 55
    if-ne v3, v5, :cond_3

    .line 56
    .line 57
    add-int/lit8 v3, v1, 0x17

    .line 58
    .line 59
    aget-byte v3, v0, v3

    .line 60
    .line 61
    const/16 v5, 0x22

    .line 62
    .line 63
    if-ne v3, v5, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v1, 0x18

    .line 66
    .line 67
    aget-byte v3, v0, v3

    .line 68
    .line 69
    const/16 v5, 0x3a

    .line 70
    .line 71
    if-eq v3, v5, :cond_1

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1a

    .line 75
    .line 76
    aget-byte v2, v0, v2

    .line 77
    .line 78
    and-int/lit16 v2, v2, 0xff

    .line 79
    .line 80
    :goto_0
    const/16 v3, 0x20

    .line 81
    .line 82
    if-gt v2, v3, :cond_2

    .line 83
    .line 84
    const-wide/16 v3, 0x1

    .line 85
    shl-long/2addr v3, v2

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const-wide v5, 0x100003701L

    .line 91
    and-long/2addr v3, v5

    .line 92
    .line 93
    const-wide/16 v5, 0x0

    .line 94
    .line 95
    cmp-long v3, v3, v5

    .line 96
    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    add-int/lit8 v2, v1, 0x1

    .line 100
    .line 101
    aget-byte v1, v0, v1

    .line 102
    .line 103
    and-int/lit16 v1, v1, 0xff

    .line 104
    move v13, v2

    .line 105
    move v2, v1

    .line 106
    move v1, v13

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 110
    int-to-char v0, v2

    .line 111
    .line 112
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 113
    const/4 v0, 0x1

    .line 114
    return v0

    .line 115
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match24(JJIB)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1a

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x17

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0xf

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    add-long/2addr v5, v7

    .line 45
    .line 46
    const-wide/16 v7, 0x7

    .line 47
    sub-long/2addr v5, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 51
    move-result v3

    .line 52
    .line 53
    move/from16 v5, p5

    .line 54
    .line 55
    if-ne v3, v5, :cond_3

    .line 56
    .line 57
    add-int/lit8 v3, v1, 0x17

    .line 58
    .line 59
    aget-byte v3, v0, v3

    .line 60
    .line 61
    move/from16 v5, p6

    .line 62
    .line 63
    if-ne v3, v5, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v1, 0x18

    .line 66
    .line 67
    aget-byte v3, v0, v3

    .line 68
    .line 69
    const/16 v5, 0x22

    .line 70
    .line 71
    if-ne v3, v5, :cond_3

    .line 72
    .line 73
    add-int/lit8 v3, v1, 0x19

    .line 74
    .line 75
    aget-byte v3, v0, v3

    .line 76
    .line 77
    const/16 v5, 0x3a

    .line 78
    .line 79
    if-eq v3, v5, :cond_1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1b

    .line 83
    .line 84
    aget-byte v2, v0, v2

    .line 85
    .line 86
    and-int/lit16 v2, v2, 0xff

    .line 87
    .line 88
    :goto_0
    const/16 v3, 0x20

    .line 89
    .line 90
    if-gt v2, v3, :cond_2

    .line 91
    .line 92
    const-wide/16 v3, 0x1

    .line 93
    shl-long/2addr v3, v2

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const-wide v5, 0x100003701L

    .line 99
    and-long/2addr v3, v5

    .line 100
    .line 101
    const-wide/16 v5, 0x0

    .line 102
    .line 103
    cmp-long v3, v3, v5

    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    add-int/lit8 v2, v1, 0x1

    .line 108
    .line 109
    aget-byte v1, v0, v1

    .line 110
    .line 111
    and-int/lit16 v1, v1, 0xff

    .line 112
    move v13, v2

    .line 113
    move v2, v1

    .line 114
    move v1, v13

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 118
    int-to-char v0, v2

    .line 119
    .line 120
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 121
    const/4 v0, 0x1

    .line 122
    return v0

    .line 123
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match25(JJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1b

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x18

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x10

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    add-long/2addr v5, v7

    .line 45
    .line 46
    const-wide/16 v7, 0x8

    .line 47
    sub-long/2addr v5, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    cmp-long v3, v5, p5

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1c

    .line 59
    .line 60
    aget-byte v2, v0, v2

    .line 61
    .line 62
    and-int/lit16 v2, v2, 0xff

    .line 63
    .line 64
    :goto_0
    const/16 v3, 0x20

    .line 65
    .line 66
    if-gt v2, v3, :cond_2

    .line 67
    .line 68
    const-wide/16 v3, 0x1

    .line 69
    shl-long/2addr v3, v2

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-wide v5, 0x100003701L

    .line 75
    and-long/2addr v3, v5

    .line 76
    .line 77
    const-wide/16 v5, 0x0

    .line 78
    .line 79
    cmp-long v3, v3, v5

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    add-int/lit8 v2, v1, 0x1

    .line 84
    .line 85
    aget-byte v1, v0, v1

    .line 86
    .line 87
    and-int/lit16 v1, v1, 0xff

    .line 88
    move v13, v2

    .line 89
    move v2, v1

    .line 90
    move v1, v13

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 94
    int-to-char v0, v2

    .line 95
    .line 96
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 97
    const/4 v0, 0x1

    .line 98
    return v0

    .line 99
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match26(JJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1c

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x19

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x11

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    add-long/2addr v5, v7

    .line 45
    .line 46
    const-wide/16 v7, 0x9

    .line 47
    sub-long/2addr v5, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    cmp-long v3, v5, p5

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    add-int/lit8 v3, v1, 0x1b

    .line 58
    .line 59
    aget-byte v3, v0, v3

    .line 60
    .line 61
    const/16 v5, 0x3a

    .line 62
    .line 63
    if-eq v3, v5, :cond_1

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x1d

    .line 67
    .line 68
    aget-byte v2, v0, v2

    .line 69
    .line 70
    and-int/lit16 v2, v2, 0xff

    .line 71
    .line 72
    :goto_0
    const/16 v3, 0x20

    .line 73
    .line 74
    if-gt v2, v3, :cond_2

    .line 75
    .line 76
    const-wide/16 v3, 0x1

    .line 77
    shl-long/2addr v3, v2

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const-wide v5, 0x100003701L

    .line 83
    and-long/2addr v3, v5

    .line 84
    .line 85
    const-wide/16 v5, 0x0

    .line 86
    .line 87
    cmp-long v3, v3, v5

    .line 88
    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    add-int/lit8 v2, v1, 0x1

    .line 92
    .line 93
    aget-byte v1, v0, v1

    .line 94
    .line 95
    and-int/lit16 v1, v1, 0xff

    .line 96
    move v13, v2

    .line 97
    move v2, v1

    .line 98
    move v1, v13

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 102
    int-to-char v0, v2

    .line 103
    .line 104
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 105
    const/4 v0, 0x1

    .line 106
    return v0

    .line 107
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match27(JJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1d

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x1a

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x12

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    add-long/2addr v5, v7

    .line 45
    .line 46
    const-wide/16 v7, 0xa

    .line 47
    sub-long/2addr v5, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    cmp-long v3, v5, p5

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    add-int/lit8 v3, v1, 0x1b

    .line 58
    .line 59
    aget-byte v3, v0, v3

    .line 60
    .line 61
    const/16 v5, 0x22

    .line 62
    .line 63
    if-ne v3, v5, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v1, 0x1c

    .line 66
    .line 67
    aget-byte v3, v0, v3

    .line 68
    .line 69
    const/16 v5, 0x3a

    .line 70
    .line 71
    if-eq v3, v5, :cond_1

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1e

    .line 75
    .line 76
    aget-byte v2, v0, v2

    .line 77
    .line 78
    and-int/lit16 v2, v2, 0xff

    .line 79
    .line 80
    :goto_0
    const/16 v3, 0x20

    .line 81
    .line 82
    if-gt v2, v3, :cond_2

    .line 83
    .line 84
    const-wide/16 v3, 0x1

    .line 85
    shl-long/2addr v3, v2

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const-wide v5, 0x100003701L

    .line 91
    and-long/2addr v3, v5

    .line 92
    .line 93
    const-wide/16 v5, 0x0

    .line 94
    .line 95
    cmp-long v3, v3, v5

    .line 96
    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    add-int/lit8 v2, v1, 0x1

    .line 100
    .line 101
    aget-byte v1, v0, v1

    .line 102
    .line 103
    and-int/lit16 v1, v1, 0xff

    .line 104
    move v13, v2

    .line 105
    move v2, v1

    .line 106
    move v1, v13

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 110
    int-to-char v0, v2

    .line 111
    .line 112
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 113
    const/4 v0, 0x1

    .line 114
    return v0

    .line 115
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match28(JJJB)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1e

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x1b

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x13

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    add-long/2addr v5, v7

    .line 45
    .line 46
    const-wide/16 v7, 0xb

    .line 47
    sub-long/2addr v5, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    cmp-long v3, v5, p5

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    add-int/lit8 v3, v1, 0x1b

    .line 58
    .line 59
    aget-byte v3, v0, v3

    .line 60
    .line 61
    move/from16 v5, p7

    .line 62
    .line 63
    if-ne v3, v5, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v1, 0x1c

    .line 66
    .line 67
    aget-byte v3, v0, v3

    .line 68
    .line 69
    const/16 v5, 0x22

    .line 70
    .line 71
    if-ne v3, v5, :cond_3

    .line 72
    .line 73
    add-int/lit8 v3, v1, 0x1d

    .line 74
    .line 75
    aget-byte v3, v0, v3

    .line 76
    .line 77
    const/16 v5, 0x3a

    .line 78
    .line 79
    if-eq v3, v5, :cond_1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1f

    .line 83
    .line 84
    aget-byte v2, v0, v2

    .line 85
    .line 86
    and-int/lit16 v2, v2, 0xff

    .line 87
    .line 88
    :goto_0
    const/16 v3, 0x20

    .line 89
    .line 90
    if-gt v2, v3, :cond_2

    .line 91
    .line 92
    const-wide/16 v3, 0x1

    .line 93
    shl-long/2addr v3, v2

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const-wide v5, 0x100003701L

    .line 99
    and-long/2addr v3, v5

    .line 100
    .line 101
    const-wide/16 v5, 0x0

    .line 102
    .line 103
    cmp-long v3, v3, v5

    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    add-int/lit8 v2, v1, 0x1

    .line 108
    .line 109
    aget-byte v1, v0, v1

    .line 110
    .line 111
    and-int/lit16 v1, v1, 0xff

    .line 112
    move v13, v2

    .line 113
    move v2, v1

    .line 114
    move v1, v13

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 118
    int-to-char v0, v2

    .line 119
    .line 120
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 121
    const/4 v0, 0x1

    .line 122
    return v0

    .line 123
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match29(JJJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1f

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x1c

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x14

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0xc

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    add-long/2addr v5, v7

    .line 58
    .line 59
    const-wide/16 v7, 0x4

    .line 60
    sub-long/2addr v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 64
    move-result v3

    .line 65
    .line 66
    move/from16 v5, p7

    .line 67
    .line 68
    if-eq v3, v5, :cond_1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    const/16 v3, 0x20

    .line 72
    add-int/2addr v1, v3

    .line 73
    .line 74
    aget-byte v2, v0, v2

    .line 75
    .line 76
    and-int/lit16 v2, v2, 0xff

    .line 77
    .line 78
    :goto_0
    if-gt v2, v3, :cond_2

    .line 79
    .line 80
    const-wide/16 v4, 0x1

    .line 81
    shl-long/2addr v4, v2

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    const-wide v6, 0x100003701L

    .line 87
    and-long/2addr v4, v6

    .line 88
    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    cmp-long v4, v4, v6

    .line 92
    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    add-int/lit8 v2, v1, 0x1

    .line 96
    .line 97
    aget-byte v1, v0, v1

    .line 98
    .line 99
    and-int/lit16 v1, v1, 0xff

    .line 100
    move v13, v2

    .line 101
    move v2, v1

    .line 102
    move v1, v13

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 106
    int-to-char v0, v2

    .line 107
    .line 108
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 109
    const/4 v0, 0x1

    .line 110
    return v0

    .line 111
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match3()Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x5

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v3, v0, v3

    .line 17
    .line 18
    const/16 v5, 0x22

    .line 19
    .line 20
    if-ne v3, v5, :cond_3

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x4

    .line 23
    .line 24
    aget-byte v1, v0, v1

    .line 25
    .line 26
    const/16 v3, 0x3a

    .line 27
    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    aget-byte v1, v0, v2

    .line 32
    .line 33
    :goto_0
    and-int/lit16 v1, v1, 0xff

    .line 34
    .line 35
    const/16 v3, 0x20

    .line 36
    .line 37
    if-gt v1, v3, :cond_2

    .line 38
    .line 39
    const-wide/16 v3, 0x1

    .line 40
    shl-long/2addr v3, v1

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v5, 0x100003701L

    .line 46
    and-long/2addr v3, v5

    .line 47
    .line 48
    const-wide/16 v5, 0x0

    .line 49
    .line 50
    cmp-long v3, v3, v5

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    aget-byte v1, v0, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x1

    .line 59
    add-int/2addr v2, v0

    .line 60
    .line 61
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 62
    int-to-char v1, v1

    .line 63
    .line 64
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 65
    return v0

    .line 66
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match30(JJJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x20

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x1d

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x15

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0xd

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    add-long/2addr v5, v7

    .line 58
    .line 59
    const-wide/16 v7, 0x5

    .line 60
    sub-long/2addr v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 64
    move-result v3

    .line 65
    .line 66
    move/from16 v5, p7

    .line 67
    .line 68
    if-ne v3, v5, :cond_3

    .line 69
    .line 70
    add-int/lit8 v3, v1, 0x1f

    .line 71
    .line 72
    aget-byte v3, v0, v3

    .line 73
    .line 74
    const/16 v5, 0x3a

    .line 75
    .line 76
    if-eq v3, v5, :cond_1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x21

    .line 80
    .line 81
    aget-byte v2, v0, v2

    .line 82
    .line 83
    and-int/lit16 v2, v2, 0xff

    .line 84
    .line 85
    :goto_0
    const/16 v3, 0x20

    .line 86
    .line 87
    if-gt v2, v3, :cond_2

    .line 88
    .line 89
    const-wide/16 v3, 0x1

    .line 90
    shl-long/2addr v3, v2

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const-wide v5, 0x100003701L

    .line 96
    and-long/2addr v3, v5

    .line 97
    .line 98
    const-wide/16 v5, 0x0

    .line 99
    .line 100
    cmp-long v3, v3, v5

    .line 101
    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    add-int/lit8 v2, v1, 0x1

    .line 105
    .line 106
    aget-byte v1, v0, v1

    .line 107
    .line 108
    and-int/lit16 v1, v1, 0xff

    .line 109
    move v13, v2

    .line 110
    move v2, v1

    .line 111
    move v1, v13

    .line 112
    goto :goto_0

    .line 113
    .line 114
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 115
    int-to-char v0, v2

    .line 116
    .line 117
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 118
    const/4 v0, 0x1

    .line 119
    return v0

    .line 120
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match31(JJJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x21

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x1e

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x16

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0xe

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    add-long/2addr v5, v7

    .line 58
    .line 59
    const-wide/16 v7, 0x6

    .line 60
    sub-long/2addr v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 64
    move-result v3

    .line 65
    .line 66
    move/from16 v5, p7

    .line 67
    .line 68
    if-ne v3, v5, :cond_3

    .line 69
    .line 70
    add-int/lit8 v3, v1, 0x1f

    .line 71
    .line 72
    aget-byte v3, v0, v3

    .line 73
    .line 74
    const/16 v5, 0x22

    .line 75
    .line 76
    if-ne v3, v5, :cond_3

    .line 77
    .line 78
    add-int/lit8 v3, v1, 0x20

    .line 79
    .line 80
    aget-byte v3, v0, v3

    .line 81
    .line 82
    const/16 v6, 0x3a

    .line 83
    .line 84
    if-eq v3, v6, :cond_1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    add-int/2addr v1, v5

    .line 87
    .line 88
    aget-byte v2, v0, v2

    .line 89
    .line 90
    and-int/lit16 v2, v2, 0xff

    .line 91
    .line 92
    :goto_0
    const/16 v3, 0x20

    .line 93
    .line 94
    if-gt v2, v3, :cond_2

    .line 95
    .line 96
    const-wide/16 v3, 0x1

    .line 97
    shl-long/2addr v3, v2

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    const-wide v5, 0x100003701L

    .line 103
    and-long/2addr v3, v5

    .line 104
    .line 105
    const-wide/16 v5, 0x0

    .line 106
    .line 107
    cmp-long v3, v3, v5

    .line 108
    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    add-int/lit8 v2, v1, 0x1

    .line 112
    .line 113
    aget-byte v1, v0, v1

    .line 114
    .line 115
    and-int/lit16 v1, v1, 0xff

    .line 116
    move v13, v2

    .line 117
    move v2, v1

    .line 118
    move v1, v13

    .line 119
    goto :goto_0

    .line 120
    .line 121
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 122
    int-to-char v0, v2

    .line 123
    .line 124
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 125
    const/4 v0, 0x1

    .line 126
    return v0

    .line 127
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match32(JJJIB)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x22

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x1f

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x17

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0xf

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    add-long/2addr v5, v7

    .line 58
    .line 59
    const-wide/16 v7, 0x7

    .line 60
    sub-long/2addr v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 64
    move-result v3

    .line 65
    .line 66
    move/from16 v5, p7

    .line 67
    .line 68
    if-ne v3, v5, :cond_3

    .line 69
    .line 70
    add-int/lit8 v3, v1, 0x1f

    .line 71
    .line 72
    aget-byte v3, v0, v3

    .line 73
    .line 74
    move/from16 v5, p8

    .line 75
    .line 76
    if-ne v3, v5, :cond_3

    .line 77
    .line 78
    add-int/lit8 v3, v1, 0x20

    .line 79
    .line 80
    aget-byte v3, v0, v3

    .line 81
    .line 82
    const/16 v5, 0x22

    .line 83
    .line 84
    if-ne v3, v5, :cond_3

    .line 85
    .line 86
    add-int/lit8 v3, v1, 0x21

    .line 87
    .line 88
    aget-byte v3, v0, v3

    .line 89
    .line 90
    const/16 v5, 0x3a

    .line 91
    .line 92
    if-eq v3, v5, :cond_1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_1
    add-int/lit8 v1, v1, 0x23

    .line 96
    .line 97
    aget-byte v2, v0, v2

    .line 98
    .line 99
    and-int/lit16 v2, v2, 0xff

    .line 100
    .line 101
    :goto_0
    const/16 v3, 0x20

    .line 102
    .line 103
    if-gt v2, v3, :cond_2

    .line 104
    .line 105
    const-wide/16 v3, 0x1

    .line 106
    shl-long/2addr v3, v2

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    const-wide v5, 0x100003701L

    .line 112
    and-long/2addr v3, v5

    .line 113
    .line 114
    const-wide/16 v5, 0x0

    .line 115
    .line 116
    cmp-long v3, v3, v5

    .line 117
    .line 118
    if-eqz v3, :cond_2

    .line 119
    .line 120
    add-int/lit8 v2, v1, 0x1

    .line 121
    .line 122
    aget-byte v1, v0, v1

    .line 123
    .line 124
    and-int/lit16 v1, v1, 0xff

    .line 125
    move v13, v2

    .line 126
    move v2, v1

    .line 127
    move v1, v13

    .line 128
    goto :goto_0

    .line 129
    .line 130
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 131
    int-to-char v0, v2

    .line 132
    .line 133
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 134
    const/4 v0, 0x1

    .line 135
    return v0

    .line 136
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match33(JJJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x23

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x20

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x18

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x10

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    add-long/2addr v5, v7

    .line 58
    .line 59
    const-wide/16 v7, 0x8

    .line 60
    sub-long/2addr v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 64
    move-result-wide v5

    .line 65
    .line 66
    cmp-long v3, v5, p7

    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    add-int/lit8 v1, v1, 0x24

    .line 72
    .line 73
    aget-byte v2, v0, v2

    .line 74
    .line 75
    and-int/lit16 v2, v2, 0xff

    .line 76
    .line 77
    :goto_0
    const/16 v3, 0x20

    .line 78
    .line 79
    if-gt v2, v3, :cond_2

    .line 80
    .line 81
    const-wide/16 v3, 0x1

    .line 82
    shl-long/2addr v3, v2

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide v5, 0x100003701L

    .line 88
    and-long/2addr v3, v5

    .line 89
    .line 90
    const-wide/16 v5, 0x0

    .line 91
    .line 92
    cmp-long v3, v3, v5

    .line 93
    .line 94
    if-eqz v3, :cond_2

    .line 95
    .line 96
    add-int/lit8 v2, v1, 0x1

    .line 97
    .line 98
    aget-byte v1, v0, v1

    .line 99
    .line 100
    and-int/lit16 v1, v1, 0xff

    .line 101
    move v13, v2

    .line 102
    move v2, v1

    .line 103
    move v1, v13

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 107
    int-to-char v0, v2

    .line 108
    .line 109
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 110
    const/4 v0, 0x1

    .line 111
    return v0

    .line 112
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match34(JJJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x24

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x21

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x19

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x11

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    add-long/2addr v5, v7

    .line 58
    .line 59
    const-wide/16 v7, 0x9

    .line 60
    sub-long/2addr v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 64
    move-result-wide v5

    .line 65
    .line 66
    cmp-long v3, v5, p7

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    add-int/lit8 v3, v1, 0x23

    .line 71
    .line 72
    aget-byte v3, v0, v3

    .line 73
    .line 74
    const/16 v5, 0x3a

    .line 75
    .line 76
    if-eq v3, v5, :cond_1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x25

    .line 80
    .line 81
    aget-byte v2, v0, v2

    .line 82
    .line 83
    and-int/lit16 v2, v2, 0xff

    .line 84
    .line 85
    :goto_0
    const/16 v3, 0x20

    .line 86
    .line 87
    if-gt v2, v3, :cond_2

    .line 88
    .line 89
    const-wide/16 v3, 0x1

    .line 90
    shl-long/2addr v3, v2

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const-wide v5, 0x100003701L

    .line 96
    and-long/2addr v3, v5

    .line 97
    .line 98
    const-wide/16 v5, 0x0

    .line 99
    .line 100
    cmp-long v3, v3, v5

    .line 101
    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    add-int/lit8 v2, v1, 0x1

    .line 105
    .line 106
    aget-byte v1, v0, v1

    .line 107
    .line 108
    and-int/lit16 v1, v1, 0xff

    .line 109
    move v13, v2

    .line 110
    move v2, v1

    .line 111
    move v1, v13

    .line 112
    goto :goto_0

    .line 113
    .line 114
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 115
    int-to-char v0, v2

    .line 116
    .line 117
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 118
    const/4 v0, 0x1

    .line 119
    return v0

    .line 120
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match35(JJJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x25

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x22

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x1a

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x12

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    add-long/2addr v5, v7

    .line 58
    .line 59
    const-wide/16 v7, 0xa

    .line 60
    sub-long/2addr v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 64
    move-result-wide v5

    .line 65
    .line 66
    cmp-long v3, v5, p7

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    add-int/lit8 v3, v1, 0x23

    .line 71
    .line 72
    aget-byte v3, v0, v3

    .line 73
    .line 74
    const/16 v5, 0x22

    .line 75
    .line 76
    if-ne v3, v5, :cond_3

    .line 77
    .line 78
    add-int/lit8 v3, v1, 0x24

    .line 79
    .line 80
    aget-byte v3, v0, v3

    .line 81
    .line 82
    const/16 v5, 0x3a

    .line 83
    .line 84
    if-eq v3, v5, :cond_1

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_1
    add-int/lit8 v1, v1, 0x26

    .line 88
    .line 89
    aget-byte v2, v0, v2

    .line 90
    .line 91
    and-int/lit16 v2, v2, 0xff

    .line 92
    .line 93
    :goto_0
    const/16 v3, 0x20

    .line 94
    .line 95
    if-gt v2, v3, :cond_2

    .line 96
    .line 97
    const-wide/16 v3, 0x1

    .line 98
    shl-long/2addr v3, v2

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    const-wide v5, 0x100003701L

    .line 104
    and-long/2addr v3, v5

    .line 105
    .line 106
    const-wide/16 v5, 0x0

    .line 107
    .line 108
    cmp-long v3, v3, v5

    .line 109
    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    add-int/lit8 v2, v1, 0x1

    .line 113
    .line 114
    aget-byte v1, v0, v1

    .line 115
    .line 116
    and-int/lit16 v1, v1, 0xff

    .line 117
    move v13, v2

    .line 118
    move v2, v1

    .line 119
    move v1, v13

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 123
    int-to-char v0, v2

    .line 124
    .line 125
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 126
    const/4 v0, 0x1

    .line 127
    return v0

    .line 128
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match36(JJJJB)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x26

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x23

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x1b

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x13

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    add-long/2addr v5, v7

    .line 58
    .line 59
    const-wide/16 v7, 0xb

    .line 60
    sub-long/2addr v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 64
    move-result-wide v5

    .line 65
    .line 66
    cmp-long v3, v5, p7

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    add-int/lit8 v3, v1, 0x23

    .line 71
    .line 72
    aget-byte v3, v0, v3

    .line 73
    .line 74
    move/from16 v5, p9

    .line 75
    .line 76
    if-ne v3, v5, :cond_3

    .line 77
    .line 78
    add-int/lit8 v3, v1, 0x24

    .line 79
    .line 80
    aget-byte v3, v0, v3

    .line 81
    .line 82
    const/16 v5, 0x22

    .line 83
    .line 84
    if-ne v3, v5, :cond_3

    .line 85
    .line 86
    add-int/lit8 v3, v1, 0x25

    .line 87
    .line 88
    aget-byte v3, v0, v3

    .line 89
    .line 90
    const/16 v5, 0x3a

    .line 91
    .line 92
    if-eq v3, v5, :cond_1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_1
    add-int/lit8 v1, v1, 0x27

    .line 96
    .line 97
    aget-byte v2, v0, v2

    .line 98
    .line 99
    and-int/lit16 v2, v2, 0xff

    .line 100
    .line 101
    :goto_0
    const/16 v3, 0x20

    .line 102
    .line 103
    if-gt v2, v3, :cond_2

    .line 104
    .line 105
    const-wide/16 v3, 0x1

    .line 106
    shl-long/2addr v3, v2

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    const-wide v5, 0x100003701L

    .line 112
    and-long/2addr v3, v5

    .line 113
    .line 114
    const-wide/16 v5, 0x0

    .line 115
    .line 116
    cmp-long v3, v3, v5

    .line 117
    .line 118
    if-eqz v3, :cond_2

    .line 119
    .line 120
    add-int/lit8 v2, v1, 0x1

    .line 121
    .line 122
    aget-byte v1, v0, v1

    .line 123
    .line 124
    and-int/lit16 v1, v1, 0xff

    .line 125
    move v13, v2

    .line 126
    move v2, v1

    .line 127
    move v1, v13

    .line 128
    goto :goto_0

    .line 129
    .line 130
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 131
    int-to-char v0, v2

    .line 132
    .line 133
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 134
    const/4 v0, 0x1

    .line 135
    return v0

    .line 136
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match37(JJJJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x27

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x24

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x1c

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x14

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    .line 58
    add-long v9, v5, v7

    .line 59
    .line 60
    const-wide/16 v11, 0xc

    .line 61
    sub-long/2addr v9, v11

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 65
    move-result-wide v9

    .line 66
    .line 67
    cmp-long v9, v9, p7

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    add-long/2addr v5, v7

    .line 71
    .line 72
    const-wide/16 v7, 0x4

    .line 73
    sub-long/2addr v5, v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 77
    move-result v3

    .line 78
    .line 79
    move/from16 v5, p9

    .line 80
    .line 81
    if-eq v3, v5, :cond_1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x28

    .line 85
    .line 86
    aget-byte v2, v0, v2

    .line 87
    .line 88
    and-int/lit16 v2, v2, 0xff

    .line 89
    .line 90
    :goto_0
    const/16 v3, 0x20

    .line 91
    .line 92
    if-gt v2, v3, :cond_2

    .line 93
    .line 94
    const-wide/16 v3, 0x1

    .line 95
    shl-long/2addr v3, v2

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const-wide v5, 0x100003701L

    .line 101
    and-long/2addr v3, v5

    .line 102
    .line 103
    const-wide/16 v5, 0x0

    .line 104
    .line 105
    cmp-long v3, v3, v5

    .line 106
    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    add-int/lit8 v2, v1, 0x1

    .line 110
    .line 111
    aget-byte v1, v0, v1

    .line 112
    .line 113
    and-int/lit16 v1, v1, 0xff

    .line 114
    move v13, v2

    .line 115
    move v2, v1

    .line 116
    move v1, v13

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 120
    int-to-char v0, v2

    .line 121
    .line 122
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 123
    const/4 v0, 0x1

    .line 124
    return v0

    .line 125
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match38(JJJJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x28

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x25

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x1d

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x15

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    .line 58
    add-long v9, v5, v7

    .line 59
    .line 60
    const-wide/16 v11, 0xd

    .line 61
    sub-long/2addr v9, v11

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 65
    move-result-wide v9

    .line 66
    .line 67
    cmp-long v9, v9, p7

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    add-long/2addr v5, v7

    .line 71
    .line 72
    const-wide/16 v7, 0x5

    .line 73
    sub-long/2addr v5, v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 77
    move-result v3

    .line 78
    .line 79
    move/from16 v5, p9

    .line 80
    .line 81
    if-ne v3, v5, :cond_3

    .line 82
    .line 83
    add-int/lit8 v3, v1, 0x27

    .line 84
    .line 85
    aget-byte v3, v0, v3

    .line 86
    .line 87
    const/16 v5, 0x3a

    .line 88
    .line 89
    if-eq v3, v5, :cond_1

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x29

    .line 93
    .line 94
    aget-byte v2, v0, v2

    .line 95
    .line 96
    and-int/lit16 v2, v2, 0xff

    .line 97
    .line 98
    :goto_0
    const/16 v3, 0x20

    .line 99
    .line 100
    if-gt v2, v3, :cond_2

    .line 101
    .line 102
    const-wide/16 v3, 0x1

    .line 103
    shl-long/2addr v3, v2

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    const-wide v5, 0x100003701L

    .line 109
    and-long/2addr v3, v5

    .line 110
    .line 111
    const-wide/16 v5, 0x0

    .line 112
    .line 113
    cmp-long v3, v3, v5

    .line 114
    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    add-int/lit8 v2, v1, 0x1

    .line 118
    .line 119
    aget-byte v1, v0, v1

    .line 120
    .line 121
    and-int/lit16 v1, v1, 0xff

    .line 122
    move v13, v2

    .line 123
    move v2, v1

    .line 124
    move v1, v13

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 128
    int-to-char v0, v2

    .line 129
    .line 130
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 131
    const/4 v0, 0x1

    .line 132
    return v0

    .line 133
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match39(JJJJI)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x29

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x26

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x1e

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x16

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    .line 58
    add-long v9, v5, v7

    .line 59
    .line 60
    const-wide/16 v11, 0xe

    .line 61
    sub-long/2addr v9, v11

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 65
    move-result-wide v9

    .line 66
    .line 67
    cmp-long v9, v9, p7

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    add-long/2addr v5, v7

    .line 71
    .line 72
    const-wide/16 v7, 0x6

    .line 73
    sub-long/2addr v5, v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 77
    move-result v3

    .line 78
    .line 79
    move/from16 v5, p9

    .line 80
    .line 81
    if-ne v3, v5, :cond_3

    .line 82
    .line 83
    add-int/lit8 v3, v1, 0x27

    .line 84
    .line 85
    aget-byte v3, v0, v3

    .line 86
    .line 87
    const/16 v5, 0x22

    .line 88
    .line 89
    if-ne v3, v5, :cond_3

    .line 90
    .line 91
    add-int/lit8 v3, v1, 0x28

    .line 92
    .line 93
    aget-byte v3, v0, v3

    .line 94
    .line 95
    const/16 v5, 0x3a

    .line 96
    .line 97
    if-eq v3, v5, :cond_1

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x2a

    .line 101
    .line 102
    aget-byte v2, v0, v2

    .line 103
    .line 104
    and-int/lit16 v2, v2, 0xff

    .line 105
    .line 106
    :goto_0
    const/16 v3, 0x20

    .line 107
    .line 108
    if-gt v2, v3, :cond_2

    .line 109
    .line 110
    const-wide/16 v3, 0x1

    .line 111
    shl-long/2addr v3, v2

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    const-wide v5, 0x100003701L

    .line 117
    and-long/2addr v3, v5

    .line 118
    .line 119
    const-wide/16 v5, 0x0

    .line 120
    .line 121
    cmp-long v3, v3, v5

    .line 122
    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    add-int/lit8 v2, v1, 0x1

    .line 126
    .line 127
    aget-byte v1, v0, v1

    .line 128
    .line 129
    and-int/lit16 v1, v1, 0xff

    .line 130
    move v13, v2

    .line 131
    move v2, v1

    .line 132
    move v1, v13

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 136
    int-to-char v0, v2

    .line 137
    .line 138
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 139
    const/4 v0, 0x1

    .line 140
    return v0

    .line 141
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match4(B)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x6

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x3

    .line 13
    .line 14
    aget-byte v3, v0, v3

    .line 15
    .line 16
    if-ne v3, p1, :cond_2

    .line 17
    .line 18
    add-int/lit8 p1, v1, 0x4

    .line 19
    .line 20
    aget-byte p1, v0, p1

    .line 21
    .line 22
    const/16 v3, 0x22

    .line 23
    .line 24
    if-ne p1, v3, :cond_2

    .line 25
    .line 26
    add-int/lit8 p1, v1, 0x5

    .line 27
    .line 28
    aget-byte p1, v0, p1

    .line 29
    .line 30
    const/16 v3, 0x3a

    .line 31
    .line 32
    if-eq p1, v3, :cond_0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x7

    .line 36
    .line 37
    aget-byte p1, v0, v2

    .line 38
    .line 39
    and-int/lit16 p1, p1, 0xff

    .line 40
    .line 41
    :goto_0
    const/16 v2, 0x20

    .line 42
    .line 43
    if-gt p1, v2, :cond_1

    .line 44
    .line 45
    const-wide/16 v2, 0x1

    .line 46
    shl-long/2addr v2, p1

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const-wide v4, 0x100003701L

    .line 52
    and-long/2addr v2, v4

    .line 53
    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    cmp-long v2, v2, v4

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    add-int/lit8 p1, v1, 0x1

    .line 61
    .line 62
    aget-byte v1, v0, v1

    .line 63
    .line 64
    and-int/lit16 v1, v1, 0xff

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
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 71
    int-to-char p1, p1

    .line 72
    .line 73
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 77
    return p1
.end method

.method public final nextIfName4Match40(JJJJIB)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2a

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x27

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x1f

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x17

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    .line 58
    add-long v9, v5, v7

    .line 59
    .line 60
    const-wide/16 v11, 0xf

    .line 61
    sub-long/2addr v9, v11

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 65
    move-result-wide v9

    .line 66
    .line 67
    cmp-long v9, v9, p7

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    add-long/2addr v5, v7

    .line 71
    .line 72
    const-wide/16 v7, 0x7

    .line 73
    sub-long/2addr v5, v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 77
    move-result v3

    .line 78
    .line 79
    move/from16 v5, p9

    .line 80
    .line 81
    if-ne v3, v5, :cond_3

    .line 82
    .line 83
    add-int/lit8 v3, v1, 0x27

    .line 84
    .line 85
    aget-byte v3, v0, v3

    .line 86
    .line 87
    move/from16 v5, p10

    .line 88
    .line 89
    if-ne v3, v5, :cond_3

    .line 90
    .line 91
    add-int/lit8 v3, v1, 0x28

    .line 92
    .line 93
    aget-byte v3, v0, v3

    .line 94
    .line 95
    const/16 v5, 0x22

    .line 96
    .line 97
    if-ne v3, v5, :cond_3

    .line 98
    .line 99
    add-int/lit8 v3, v1, 0x29

    .line 100
    .line 101
    aget-byte v3, v0, v3

    .line 102
    .line 103
    const/16 v5, 0x3a

    .line 104
    .line 105
    if-eq v3, v5, :cond_1

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x2b

    .line 109
    .line 110
    aget-byte v2, v0, v2

    .line 111
    .line 112
    and-int/lit16 v2, v2, 0xff

    .line 113
    .line 114
    :goto_0
    const/16 v3, 0x20

    .line 115
    .line 116
    if-gt v2, v3, :cond_2

    .line 117
    .line 118
    const-wide/16 v3, 0x1

    .line 119
    shl-long/2addr v3, v2

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    const-wide v5, 0x100003701L

    .line 125
    and-long/2addr v3, v5

    .line 126
    .line 127
    const-wide/16 v5, 0x0

    .line 128
    .line 129
    cmp-long v3, v3, v5

    .line 130
    .line 131
    if-eqz v3, :cond_2

    .line 132
    .line 133
    add-int/lit8 v2, v1, 0x1

    .line 134
    .line 135
    aget-byte v1, v0, v1

    .line 136
    .line 137
    and-int/lit16 v1, v1, 0xff

    .line 138
    move v13, v2

    .line 139
    move v2, v1

    .line 140
    move v1, v13

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 144
    int-to-char v0, v2

    .line 145
    .line 146
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 147
    const/4 v0, 0x1

    .line 148
    return v0

    .line 149
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match41(JJJJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2b

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x28

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x20

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x18

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    .line 58
    add-long v9, v5, v7

    .line 59
    .line 60
    const-wide/16 v11, 0x10

    .line 61
    sub-long/2addr v9, v11

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 65
    move-result-wide v9

    .line 66
    .line 67
    cmp-long v9, v9, p7

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    add-long/2addr v5, v7

    .line 71
    .line 72
    const-wide/16 v7, 0x8

    .line 73
    sub-long/2addr v5, v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 77
    move-result-wide v5

    .line 78
    .line 79
    cmp-long v3, v5, p9

    .line 80
    .line 81
    if-eqz v3, :cond_1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x2c

    .line 85
    .line 86
    aget-byte v2, v0, v2

    .line 87
    .line 88
    and-int/lit16 v2, v2, 0xff

    .line 89
    .line 90
    :goto_0
    const/16 v3, 0x20

    .line 91
    .line 92
    if-gt v2, v3, :cond_2

    .line 93
    .line 94
    const-wide/16 v3, 0x1

    .line 95
    shl-long/2addr v3, v2

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const-wide v5, 0x100003701L

    .line 101
    and-long/2addr v3, v5

    .line 102
    .line 103
    const-wide/16 v5, 0x0

    .line 104
    .line 105
    cmp-long v3, v3, v5

    .line 106
    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    add-int/lit8 v2, v1, 0x1

    .line 110
    .line 111
    aget-byte v1, v0, v1

    .line 112
    .line 113
    and-int/lit16 v1, v1, 0xff

    .line 114
    move v13, v2

    .line 115
    move v2, v1

    .line 116
    move v1, v13

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 120
    int-to-char v0, v2

    .line 121
    .line 122
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 123
    const/4 v0, 0x1

    .line 124
    return v0

    .line 125
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match42(JJJJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2c

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x29

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x21

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x19

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    .line 58
    add-long v9, v5, v7

    .line 59
    .line 60
    const-wide/16 v11, 0x11

    .line 61
    sub-long/2addr v9, v11

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 65
    move-result-wide v9

    .line 66
    .line 67
    cmp-long v9, v9, p7

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    add-long/2addr v5, v7

    .line 71
    .line 72
    const-wide/16 v7, 0x9

    .line 73
    sub-long/2addr v5, v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 77
    move-result-wide v5

    .line 78
    .line 79
    cmp-long v3, v5, p9

    .line 80
    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    add-int/lit8 v3, v1, 0x2b

    .line 84
    .line 85
    aget-byte v3, v0, v3

    .line 86
    .line 87
    const/16 v5, 0x3a

    .line 88
    .line 89
    if-eq v3, v5, :cond_1

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x2d

    .line 93
    .line 94
    aget-byte v2, v0, v2

    .line 95
    .line 96
    and-int/lit16 v2, v2, 0xff

    .line 97
    .line 98
    :goto_0
    const/16 v3, 0x20

    .line 99
    .line 100
    if-gt v2, v3, :cond_2

    .line 101
    .line 102
    const-wide/16 v3, 0x1

    .line 103
    shl-long/2addr v3, v2

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    const-wide v5, 0x100003701L

    .line 109
    and-long/2addr v3, v5

    .line 110
    .line 111
    const-wide/16 v5, 0x0

    .line 112
    .line 113
    cmp-long v3, v3, v5

    .line 114
    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    add-int/lit8 v2, v1, 0x1

    .line 118
    .line 119
    aget-byte v1, v0, v1

    .line 120
    .line 121
    and-int/lit16 v1, v1, 0xff

    .line 122
    move v13, v2

    .line 123
    move v2, v1

    .line 124
    move v1, v13

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 128
    int-to-char v0, v2

    .line 129
    .line 130
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 131
    const/4 v0, 0x1

    .line 132
    return v0

    .line 133
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match43(JJJJJ)Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2d

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    .line 19
    add-long v9, v5, v7

    .line 20
    .line 21
    const-wide/16 v11, 0x2a

    .line 22
    sub-long/2addr v9, v11

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v9

    .line 27
    .line 28
    cmp-long v9, v9, p1

    .line 29
    .line 30
    if-nez v9, :cond_3

    .line 31
    .line 32
    add-long v9, v5, v7

    .line 33
    .line 34
    const-wide/16 v11, 0x22

    .line 35
    sub-long/2addr v9, v11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v9, v9, p3

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    add-long v9, v5, v7

    .line 46
    .line 47
    const-wide/16 v11, 0x1a

    .line 48
    sub-long/2addr v9, v11

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v9, v9, p5

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    .line 58
    add-long v9, v5, v7

    .line 59
    .line 60
    const-wide/16 v11, 0x12

    .line 61
    sub-long/2addr v9, v11

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 65
    move-result-wide v9

    .line 66
    .line 67
    cmp-long v9, v9, p7

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    add-long/2addr v5, v7

    .line 71
    .line 72
    const-wide/16 v7, 0xa

    .line 73
    sub-long/2addr v5, v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 77
    move-result-wide v5

    .line 78
    .line 79
    cmp-long v3, v5, p9

    .line 80
    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    add-int/lit8 v3, v1, 0x2b

    .line 84
    .line 85
    aget-byte v3, v0, v3

    .line 86
    .line 87
    const/16 v5, 0x22

    .line 88
    .line 89
    if-ne v3, v5, :cond_3

    .line 90
    .line 91
    add-int/lit8 v3, v1, 0x2c

    .line 92
    .line 93
    aget-byte v3, v0, v3

    .line 94
    .line 95
    const/16 v5, 0x3a

    .line 96
    .line 97
    if-eq v3, v5, :cond_1

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x2e

    .line 101
    .line 102
    aget-byte v2, v0, v2

    .line 103
    .line 104
    and-int/lit16 v2, v2, 0xff

    .line 105
    .line 106
    :goto_0
    const/16 v3, 0x20

    .line 107
    .line 108
    if-gt v2, v3, :cond_2

    .line 109
    .line 110
    const-wide/16 v3, 0x1

    .line 111
    shl-long/2addr v3, v2

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    const-wide v5, 0x100003701L

    .line 117
    and-long/2addr v3, v5

    .line 118
    .line 119
    const-wide/16 v5, 0x0

    .line 120
    .line 121
    cmp-long v3, v3, v5

    .line 122
    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    add-int/lit8 v2, v1, 0x1

    .line 126
    .line 127
    aget-byte v1, v0, v1

    .line 128
    .line 129
    and-int/lit16 v1, v1, 0xff

    .line 130
    move v13, v2

    .line 131
    move v2, v1

    .line 132
    move v1, v13

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 136
    int-to-char v0, v2

    .line 137
    .line 138
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 139
    const/4 v0, 0x1

    .line 140
    return v0

    .line 141
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match5(I)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x7

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 15
    int-to-long v6, v2

    .line 16
    add-long/2addr v4, v6

    .line 17
    .line 18
    const-wide/16 v6, 0x4

    .line 19
    sub-long/2addr v4, v6

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-eq v3, p1, :cond_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 29
    .line 30
    aget-byte p1, v0, v2

    .line 31
    .line 32
    and-int/lit16 p1, p1, 0xff

    .line 33
    .line 34
    :goto_0
    const/16 v2, 0x20

    .line 35
    .line 36
    if-gt p1, v2, :cond_1

    .line 37
    .line 38
    const-wide/16 v2, 0x1

    .line 39
    shl-long/2addr v2, p1

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const-wide v4, 0x100003701L

    .line 45
    and-long/2addr v2, v4

    .line 46
    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .line 49
    cmp-long v2, v2, v4

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    add-int/lit8 p1, v1, 0x1

    .line 54
    .line 55
    aget-byte v1, v0, v1

    .line 56
    .line 57
    and-int/lit16 v1, v1, 0xff

    .line 58
    move v8, v1

    .line 59
    move v1, p1

    .line 60
    move p1, v8

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 64
    int-to-char p1, p1

    .line 65
    .line 66
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 67
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 70
    return p1
.end method

.method public final nextIfName4Match6(I)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 15
    int-to-long v6, v2

    .line 16
    add-long/2addr v4, v6

    .line 17
    .line 18
    const-wide/16 v6, 0x5

    .line 19
    sub-long/2addr v4, v6

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-ne v3, p1, :cond_2

    .line 26
    .line 27
    add-int/lit8 p1, v1, 0x7

    .line 28
    .line 29
    aget-byte p1, v0, p1

    .line 30
    .line 31
    const/16 v3, 0x3a

    .line 32
    .line 33
    if-eq p1, v3, :cond_0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x9

    .line 37
    .line 38
    aget-byte p1, v0, v2

    .line 39
    .line 40
    and-int/lit16 p1, p1, 0xff

    .line 41
    .line 42
    :goto_0
    const/16 v2, 0x20

    .line 43
    .line 44
    if-gt p1, v2, :cond_1

    .line 45
    .line 46
    const-wide/16 v2, 0x1

    .line 47
    shl-long/2addr v2, p1

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide v4, 0x100003701L

    .line 53
    and-long/2addr v2, v4

    .line 54
    .line 55
    const-wide/16 v4, 0x0

    .line 56
    .line 57
    cmp-long v2, v2, v4

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    add-int/lit8 p1, v1, 0x1

    .line 62
    .line 63
    aget-byte v1, v0, v1

    .line 64
    .line 65
    and-int/lit16 v1, v1, 0xff

    .line 66
    move v8, v1

    .line 67
    move v1, p1

    .line 68
    move p1, v8

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 72
    int-to-char p1, p1

    .line 73
    .line 74
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 75
    const/4 p1, 0x1

    .line 76
    return p1

    .line 77
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 78
    return p1
.end method

.method public final nextIfName4Match7(I)Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x9

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x6

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-ne v3, p1, :cond_3

    .line 28
    .line 29
    add-int/lit8 p1, v1, 0x7

    .line 30
    .line 31
    aget-byte p1, v0, p1

    .line 32
    .line 33
    const/16 v3, 0x22

    .line 34
    .line 35
    if-ne p1, v3, :cond_3

    .line 36
    .line 37
    add-int/lit8 p1, v1, 0x8

    .line 38
    .line 39
    aget-byte p1, v0, p1

    .line 40
    .line 41
    const/16 v3, 0x3a

    .line 42
    .line 43
    if-eq p1, v3, :cond_1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0xa

    .line 47
    .line 48
    aget-byte p1, v0, v2

    .line 49
    .line 50
    and-int/lit16 p1, p1, 0xff

    .line 51
    .line 52
    :goto_0
    const/16 v2, 0x20

    .line 53
    .line 54
    if-gt p1, v2, :cond_2

    .line 55
    .line 56
    const-wide/16 v2, 0x1

    .line 57
    shl-long/2addr v2, p1

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const-wide v4, 0x100003701L

    .line 63
    and-long/2addr v2, v4

    .line 64
    .line 65
    const-wide/16 v4, 0x0

    .line 66
    .line 67
    cmp-long v2, v2, v4

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    add-int/lit8 p1, v1, 0x1

    .line 72
    .line 73
    aget-byte v1, v0, v1

    .line 74
    .line 75
    and-int/lit16 v1, v1, 0xff

    .line 76
    move v9, v1

    .line 77
    move v1, p1

    .line 78
    move p1, v9

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 82
    int-to-char p1, p1

    .line 83
    .line 84
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 85
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match8(IB)Z
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xa

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    return v3

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 13
    .line 14
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v1

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x7

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v2, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 25
    move-result v4

    .line 26
    .line 27
    if-ne v4, p1, :cond_3

    .line 28
    .line 29
    add-int/lit8 p1, v0, 0x7

    .line 30
    .line 31
    aget-byte p1, v2, p1

    .line 32
    .line 33
    if-ne p1, p2, :cond_3

    .line 34
    .line 35
    add-int/lit8 p1, v0, 0x8

    .line 36
    .line 37
    aget-byte p1, v2, p1

    .line 38
    .line 39
    const/16 p2, 0x22

    .line 40
    .line 41
    if-ne p1, p2, :cond_3

    .line 42
    .line 43
    add-int/lit8 p1, v0, 0x9

    .line 44
    .line 45
    aget-byte p1, v2, p1

    .line 46
    .line 47
    const/16 p2, 0x3a

    .line 48
    .line 49
    if-eq p1, p2, :cond_1

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0xb

    .line 53
    .line 54
    aget-byte p1, v2, v1

    .line 55
    .line 56
    and-int/lit16 p1, p1, 0xff

    .line 57
    .line 58
    :goto_0
    const/16 p2, 0x20

    .line 59
    .line 60
    if-gt p1, p2, :cond_2

    .line 61
    .line 62
    const-wide/16 v3, 0x1

    .line 63
    shl-long/2addr v3, p1

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const-wide v5, 0x100003701L

    .line 69
    and-long/2addr v3, v5

    .line 70
    .line 71
    const-wide/16 v5, 0x0

    .line 72
    .line 73
    cmp-long p2, v3, v5

    .line 74
    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    add-int/lit8 p1, v0, 0x1

    .line 78
    .line 79
    aget-byte p2, v2, v0

    .line 80
    .line 81
    and-int/lit16 p2, p2, 0xff

    .line 82
    move v0, p1

    .line 83
    move p1, p2

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_2
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 87
    int-to-char p1, p1

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
    return v3
.end method

.method public final nextIfName4Match9(J)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xb

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x8

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    move-result-wide v5

    .line 26
    .line 27
    cmp-long p1, v5, p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    return v4

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0xc

    .line 33
    .line 34
    aget-byte p1, v0, v2

    .line 35
    .line 36
    and-int/lit16 p1, p1, 0xff

    .line 37
    .line 38
    :goto_0
    const/16 p2, 0x20

    .line 39
    .line 40
    if-gt p1, p2, :cond_2

    .line 41
    .line 42
    const-wide/16 v2, 0x1

    .line 43
    shl-long/2addr v2, p1

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const-wide v4, 0x100003701L

    .line 49
    and-long/2addr v2, v4

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    cmp-long p2, v2, v4

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    add-int/lit8 p1, v1, 0x1

    .line 58
    .line 59
    aget-byte p2, v0, v1

    .line 60
    .line 61
    and-int/lit16 p2, p2, 0xff

    .line 62
    move v1, p1

    .line 63
    move p1, p2

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 67
    int-to-char p1, p1

    .line 68
    .line 69
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 70
    const/4 p1, 0x1

    .line 71
    return p1
.end method

.method public final nextIfName8Match0()Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x7

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

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
    aget-byte v2, v0, v1

    .line 19
    .line 20
    :goto_0
    and-int/lit16 v2, v2, 0xff

    .line 21
    .line 22
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
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    aget-byte v2, v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    add-int/2addr v1, v0

    .line 47
    .line 48
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 49
    int-to-char v1, v2

    .line 50
    .line 51
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 52
    return v0
.end method

.method public final nextIfName8Match1()Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    add-int/lit8 v1, v1, 0x7

    .line 15
    .line 16
    aget-byte v1, v0, v1

    .line 17
    .line 18
    const/16 v3, 0x3a

    .line 19
    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    return v4

    .line 22
    .line 23
    :cond_1
    aget-byte v1, v0, v2

    .line 24
    .line 25
    :goto_0
    and-int/lit16 v1, v1, 0xff

    .line 26
    .line 27
    const/16 v3, 0x20

    .line 28
    .line 29
    if-gt v1, v3, :cond_2

    .line 30
    .line 31
    const-wide/16 v3, 0x1

    .line 32
    shl-long/2addr v3, v1

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v5, 0x100003701L

    .line 38
    and-long/2addr v3, v5

    .line 39
    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    cmp-long v3, v3, v5

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    aget-byte v1, v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x1

    .line 51
    add-int/2addr v2, v0

    .line 52
    .line 53
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 54
    int-to-char v1, v1

    .line 55
    .line 56
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 57
    return v0
.end method

.method public final nextIfName8Match2()Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x9

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    add-int/lit8 v3, v1, 0x7

    .line 15
    .line 16
    aget-byte v3, v0, v3

    .line 17
    .line 18
    const/16 v5, 0x22

    .line 19
    .line 20
    if-ne v3, v5, :cond_3

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    aget-byte v1, v0, v1

    .line 25
    .line 26
    const/16 v3, 0x3a

    .line 27
    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    aget-byte v1, v0, v2

    .line 32
    .line 33
    :goto_0
    and-int/lit16 v1, v1, 0xff

    .line 34
    .line 35
    const/16 v3, 0x20

    .line 36
    .line 37
    if-gt v1, v3, :cond_2

    .line 38
    .line 39
    const-wide/16 v3, 0x1

    .line 40
    shl-long/2addr v3, v1

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v5, 0x100003701L

    .line 46
    and-long/2addr v3, v5

    .line 47
    .line 48
    const-wide/16 v5, 0x0

    .line 49
    .line 50
    cmp-long v3, v3, v5

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    aget-byte v1, v0, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x1

    .line 59
    add-int/2addr v2, v0

    .line 60
    .line 61
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 62
    int-to-char v1, v1

    .line 63
    .line 64
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 65
    return v0

    .line 66
    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfNull()Z
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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 17
    .line 18
    aget-byte v0, v1, v0

    .line 19
    .line 20
    const/16 v1, 0x75

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNull()V

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
    if-ge v10, v2, :cond_d

    .line 64
    .line 65
    aget-byte v11, v4, v3

    .line 66
    .line 67
    if-ne v11, v9, :cond_d

    .line 68
    .line 69
    add-int/lit8 v9, v3, 0x1

    .line 70
    .line 71
    aget-byte v9, v4, v9

    .line 72
    .line 73
    if-ne v9, v5, :cond_d

    .line 74
    .line 75
    add-int/lit8 v5, v3, 0x2

    .line 76
    .line 77
    aget-byte v5, v4, v5

    .line 78
    .line 79
    if-ne v5, v7, :cond_d

    .line 80
    .line 81
    add-int/lit8 v5, v3, 0x3

    .line 82
    .line 83
    aget-byte v5, v4, v5

    .line 84
    .line 85
    if-ne v5, v7, :cond_d

    .line 86
    .line 87
    aget-byte v5, v4, v10

    .line 88
    .line 89
    if-ne v5, v1, :cond_d

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
    if-gez v3, :cond_c

    .line 181
    .line 182
    .line 183
    invoke-direct {v0, v3, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 184
    return v8

    .line 185
    .line 186
    :cond_c
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 187
    int-to-char v1, v3

    .line 188
    .line 189
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 190
    return v8

    .line 191
    :cond_d
    return v6
.end method

.method public nextIfObjectEnd()Z
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7
    .line 8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 11
    .line 12
    const/16 v5, 0x7d

    .line 13
    .line 14
    if-eq v1, v5, :cond_0

    .line 15
    const/4 v1, 0x0

    .line 16
    return v1

    .line 17
    .line 18
    :cond_0
    const/16 v1, 0x1a

    .line 19
    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    move v5, v3

    .line 22
    :goto_0
    move v3, v1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 26
    .line 27
    aget-byte v3, v2, v3

    .line 28
    .line 29
    :goto_1
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v8, 0x100003701L

    .line 35
    .line 36
    const-wide/16 v10, 0x1

    .line 37
    .line 38
    const/16 v12, 0x20

    .line 39
    .line 40
    if-gt v3, v12, :cond_3

    .line 41
    .line 42
    shl-long v13, v10, v3

    .line 43
    and-long/2addr v13, v8

    .line 44
    .line 45
    cmp-long v13, v13, v6

    .line 46
    .line 47
    if-eqz v13, :cond_3

    .line 48
    .line 49
    if-ne v5, v4, :cond_2

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    add-int/lit8 v3, v5, 0x1

    .line 53
    .line 54
    aget-byte v5, v2, v5

    .line 55
    .line 56
    move/from16 v17, v5

    .line 57
    move v5, v3

    .line 58
    .line 59
    move/from16 v3, v17

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_3
    const/16 v13, 0x2c

    .line 63
    const/4 v14, 0x1

    .line 64
    .line 65
    if-ne v3, v13, :cond_6

    .line 66
    .line 67
    iput-boolean v14, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 68
    .line 69
    if-ne v5, v4, :cond_4

    .line 70
    move v3, v5

    .line 71
    move v5, v1

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_4
    add-int/lit8 v3, v5, 0x1

    .line 75
    .line 76
    aget-byte v5, v2, v5

    .line 77
    .line 78
    :goto_2
    move/from16 v17, v5

    .line 79
    move v5, v3

    .line 80
    .line 81
    move/from16 v3, v17

    .line 82
    .line 83
    :goto_3
    if-gt v3, v12, :cond_6

    .line 84
    .line 85
    shl-long v15, v10, v3

    .line 86
    and-long/2addr v15, v8

    .line 87
    .line 88
    cmp-long v13, v15, v6

    .line 89
    .line 90
    if-eqz v13, :cond_6

    .line 91
    .line 92
    if-ne v5, v4, :cond_5

    .line 93
    move v3, v1

    .line 94
    goto :goto_3

    .line 95
    .line 96
    :cond_5
    add-int/lit8 v3, v5, 0x1

    .line 97
    .line 98
    aget-byte v5, v2, v5

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_6
    if-gez v3, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v3, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 105
    return v14

    .line 106
    :cond_7
    int-to-char v1, v3

    .line 107
    .line 108
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 109
    .line 110
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 111
    .line 112
    const/16 v1, 0x2f

    .line 113
    .line 114
    if-ne v3, v1, :cond_8

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 118
    :cond_8
    return v14
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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v2, v0, v2

    .line 54
    move v8, v2

    .line 55
    move v2, v1

    .line 56
    move v1, v8

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v0, 0x1

    .line 59
    .line 60
    if-gez v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 64
    return v0

    .line 65
    :cond_4
    int-to-char v3, v1

    .line 66
    .line 67
    iput-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 70
    .line 71
    const/16 v2, 0x2f

    .line 72
    .line 73
    if-ne v1, v2, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 77
    :cond_5
    return v0
.end method

.method public final nextIfSet()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 15
    .line 16
    if-ge v2, v3, :cond_3

    .line 17
    .line 18
    aget-byte v4, v0, v1

    .line 19
    .line 20
    const/16 v5, 0x65

    .line 21
    .line 22
    if-ne v4, v5, :cond_3

    .line 23
    .line 24
    aget-byte v2, v0, v2

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
    aget-byte v2, v0, v2

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v0, v1

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
    int-to-char v0, v2

    .line 77
    .line 78
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 79
    const/4 v0, 0x1

    .line 80
    return v0

    .line 81
    :cond_3
    const/4 v0, 0x0

    .line 82
    return v0
.end method

.method public final nextIfValue4Match10(J)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xb

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x8

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    move-result-wide v5

    .line 26
    .line 27
    cmp-long p1, v5, p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    return v4

    .line 31
    .line 32
    :cond_1
    aget-byte p1, v0, v2

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0xff

    .line 35
    .line 36
    const/16 p2, 0x2c

    .line 37
    .line 38
    if-eq p1, p2, :cond_2

    .line 39
    .line 40
    const/16 v3, 0x7d

    .line 41
    .line 42
    if-eq p1, v3, :cond_2

    .line 43
    .line 44
    const/16 v3, 0x5d

    .line 45
    .line 46
    if-eq p1, v3, :cond_2

    .line 47
    return v4

    .line 48
    :cond_2
    const/4 v3, 0x1

    .line 49
    .line 50
    if-ne p1, p2, :cond_4

    .line 51
    .line 52
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 53
    .line 54
    add-int/lit8 v2, v1, 0xc

    .line 55
    .line 56
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 57
    .line 58
    if-ne v2, p1, :cond_3

    .line 59
    .line 60
    const/16 p1, 0x1a

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_3
    aget-byte p1, v0, v2

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 67
    .line 68
    if-gt p1, p2, :cond_5

    .line 69
    .line 70
    const-wide/16 v4, 0x1

    .line 71
    shl-long/2addr v4, p1

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const-wide v6, 0x100003701L

    .line 77
    and-long/2addr v4, v6

    .line 78
    .line 79
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    cmp-long p2, v4, v6

    .line 82
    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    aget-byte p1, v0, v2

    .line 88
    .line 89
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    add-int/2addr v2, v3

    .line 92
    .line 93
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 94
    int-to-char p1, p1

    .line 95
    .line 96
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 97
    return v3
.end method

.method public final nextIfValue4Match11(J)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xc

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x9

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    move-result-wide v5

    .line 26
    .line 27
    cmp-long p1, v5, p1

    .line 28
    .line 29
    if-nez p1, :cond_6

    .line 30
    .line 31
    add-int/lit8 p1, v1, 0xb

    .line 32
    .line 33
    aget-byte p1, v0, p1

    .line 34
    .line 35
    const/16 p2, 0x22

    .line 36
    .line 37
    if-eq p1, p2, :cond_1

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_1
    aget-byte p1, v0, v2

    .line 41
    .line 42
    and-int/lit16 p1, p1, 0xff

    .line 43
    .line 44
    const/16 p2, 0x2c

    .line 45
    .line 46
    if-eq p1, p2, :cond_2

    .line 47
    .line 48
    const/16 v3, 0x7d

    .line 49
    .line 50
    if-eq p1, v3, :cond_2

    .line 51
    .line 52
    const/16 v3, 0x5d

    .line 53
    .line 54
    if-eq p1, v3, :cond_2

    .line 55
    return v4

    .line 56
    :cond_2
    const/4 v3, 0x1

    .line 57
    .line 58
    if-ne p1, p2, :cond_4

    .line 59
    .line 60
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 61
    .line 62
    add-int/lit8 v2, v1, 0xd

    .line 63
    .line 64
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 65
    .line 66
    if-ne v2, p1, :cond_3

    .line 67
    .line 68
    const/16 p1, 0x1a

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_3
    aget-byte p1, v0, v2

    .line 72
    goto :goto_1

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
    const-wide/16 v4, 0x1

    .line 79
    shl-long/2addr v4, p1

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const-wide v6, 0x100003701L

    .line 85
    and-long/2addr v4, v6

    .line 86
    .line 87
    const-wide/16 v6, 0x0

    .line 88
    .line 89
    cmp-long p2, v4, v6

    .line 90
    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    aget-byte p1, v0, v2

    .line 96
    .line 97
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 98
    goto :goto_0

    .line 99
    :cond_5
    add-int/2addr v2, v3

    .line 100
    .line 101
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 102
    int-to-char p1, p1

    .line 103
    .line 104
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 105
    return v3

    .line 106
    :cond_6
    :goto_2
    return v4
.end method

.method public final nextIfValue4Match2()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x3

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    add-int/lit8 v5, v1, 0x4

    .line 15
    .line 16
    aget-byte v2, v0, v2

    .line 17
    .line 18
    and-int/lit16 v2, v2, 0xff

    .line 19
    .line 20
    const/16 v6, 0x2c

    .line 21
    .line 22
    if-eq v2, v6, :cond_1

    .line 23
    .line 24
    const/16 v7, 0x7d

    .line 25
    .line 26
    if-eq v2, v7, :cond_1

    .line 27
    .line 28
    const/16 v7, 0x5d

    .line 29
    .line 30
    if-eq v2, v7, :cond_1

    .line 31
    return v4

    .line 32
    :cond_1
    const/4 v4, 0x1

    .line 33
    .line 34
    if-ne v2, v6, :cond_3

    .line 35
    .line 36
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 37
    .line 38
    if-ne v5, v3, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x1a

    .line 41
    move v2, v1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    add-int/lit8 v1, v1, 0x5

    .line 45
    .line 46
    aget-byte v2, v0, v5

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_3
    :goto_0
    const/16 v1, 0x20

    .line 50
    .line 51
    if-gt v2, v1, :cond_4

    .line 52
    .line 53
    const-wide/16 v6, 0x1

    .line 54
    shl-long/2addr v6, v2

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    const-wide v8, 0x100003701L

    .line 60
    and-long/2addr v6, v8

    .line 61
    .line 62
    const-wide/16 v8, 0x0

    .line 63
    .line 64
    cmp-long v1, v6, v8

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    add-int/lit8 v1, v5, 0x1

    .line 69
    .line 70
    aget-byte v2, v0, v5

    .line 71
    .line 72
    :goto_1
    and-int/lit16 v2, v2, 0xff

    .line 73
    move v5, v1

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_4
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 77
    int-to-char v0, v2

    .line 78
    .line 79
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 80
    return v4
.end method

.method public final nextIfValue4Match3()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x4

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v5, v0, v5

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
    aget-byte v5, v0, v2

    .line 24
    .line 25
    and-int/lit16 v5, v5, 0xff

    .line 26
    .line 27
    const/16 v6, 0x2c

    .line 28
    .line 29
    if-eq v5, v6, :cond_2

    .line 30
    .line 31
    const/16 v7, 0x7d

    .line 32
    .line 33
    if-eq v5, v7, :cond_2

    .line 34
    .line 35
    const/16 v7, 0x5d

    .line 36
    .line 37
    if-eq v5, v7, :cond_2

    .line 38
    return v4

    .line 39
    :cond_2
    const/4 v4, 0x1

    .line 40
    .line 41
    if-ne v5, v6, :cond_4

    .line 42
    .line 43
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 44
    .line 45
    add-int/lit8 v2, v1, 0x5

    .line 46
    .line 47
    if-ne v2, v3, :cond_3

    .line 48
    .line 49
    const/16 v1, 0x1a

    .line 50
    :goto_0
    move v5, v1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_3
    aget-byte v1, v0, v2

    .line 54
    .line 55
    and-int/lit16 v1, v1, 0xff

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_4
    :goto_1
    const/16 v1, 0x20

    .line 59
    .line 60
    if-gt v5, v1, :cond_5

    .line 61
    .line 62
    const-wide/16 v6, 0x1

    .line 63
    shl-long/2addr v6, v5

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const-wide v8, 0x100003701L

    .line 69
    and-long/2addr v6, v8

    .line 70
    .line 71
    const-wide/16 v8, 0x0

    .line 72
    .line 73
    cmp-long v1, v6, v8

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    aget-byte v1, v0, v2

    .line 80
    .line 81
    and-int/lit16 v5, v1, 0xff

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    add-int/2addr v2, v4

    .line 84
    .line 85
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 86
    int-to-char v0, v5

    .line 87
    .line 88
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 89
    return v4
.end method

.method public final nextIfValue4Match4(B)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x5

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v5, v0, v5

    .line 17
    .line 18
    if-ne v5, p1, :cond_6

    .line 19
    .line 20
    add-int/lit8 p1, v1, 0x4

    .line 21
    .line 22
    aget-byte p1, v0, p1

    .line 23
    .line 24
    const/16 v5, 0x22

    .line 25
    .line 26
    if-eq p1, v5, :cond_1

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :cond_1
    aget-byte p1, v0, v2

    .line 30
    .line 31
    and-int/lit16 p1, p1, 0xff

    .line 32
    .line 33
    const/16 v5, 0x2c

    .line 34
    .line 35
    if-eq p1, v5, :cond_2

    .line 36
    .line 37
    const/16 v6, 0x7d

    .line 38
    .line 39
    if-eq p1, v6, :cond_2

    .line 40
    .line 41
    const/16 v6, 0x5d

    .line 42
    .line 43
    if-eq p1, v6, :cond_2

    .line 44
    return v4

    .line 45
    :cond_2
    const/4 v4, 0x1

    .line 46
    .line 47
    if-ne p1, v5, :cond_4

    .line 48
    .line 49
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 50
    .line 51
    add-int/lit8 v2, v1, 0x6

    .line 52
    .line 53
    if-ne v2, v3, :cond_3

    .line 54
    .line 55
    const/16 p1, 0x1a

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    aget-byte p1, v0, v2

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_4
    :goto_0
    const/16 v1, 0x20

    .line 62
    .line 63
    if-gt p1, v1, :cond_5

    .line 64
    .line 65
    const-wide/16 v5, 0x1

    .line 66
    shl-long/2addr v5, p1

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    const-wide v7, 0x100003701L

    .line 72
    and-long/2addr v5, v7

    .line 73
    .line 74
    const-wide/16 v7, 0x0

    .line 75
    .line 76
    cmp-long v1, v5, v7

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    aget-byte p1, v0, v2

    .line 83
    .line 84
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    add-int/2addr v2, v4

    .line 87
    .line 88
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    int-to-char p1, p1

    .line 90
    .line 91
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 92
    :cond_6
    :goto_2
    return v4
.end method

.method public final nextIfValue4Match5(BB)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x6

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v5, v0, v5

    .line 17
    .line 18
    if-ne v5, p1, :cond_6

    .line 19
    .line 20
    add-int/lit8 p1, v1, 0x4

    .line 21
    .line 22
    aget-byte p1, v0, p1

    .line 23
    .line 24
    if-ne p1, p2, :cond_6

    .line 25
    .line 26
    add-int/lit8 p1, v1, 0x5

    .line 27
    .line 28
    aget-byte p1, v0, p1

    .line 29
    .line 30
    const/16 p2, 0x22

    .line 31
    .line 32
    if-eq p1, p2, :cond_1

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_1
    aget-byte p1, v0, v2

    .line 36
    .line 37
    and-int/lit16 p1, p1, 0xff

    .line 38
    .line 39
    const/16 p2, 0x2c

    .line 40
    .line 41
    if-eq p1, p2, :cond_2

    .line 42
    .line 43
    const/16 v5, 0x7d

    .line 44
    .line 45
    if-eq p1, v5, :cond_2

    .line 46
    .line 47
    const/16 v5, 0x5d

    .line 48
    .line 49
    if-eq p1, v5, :cond_2

    .line 50
    return v4

    .line 51
    :cond_2
    const/4 v4, 0x1

    .line 52
    .line 53
    if-ne p1, p2, :cond_4

    .line 54
    .line 55
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 56
    .line 57
    add-int/lit8 v2, v1, 0x7

    .line 58
    .line 59
    if-ne v2, v3, :cond_3

    .line 60
    .line 61
    const/16 p1, 0x1a

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    aget-byte p1, v0, v2

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 68
    .line 69
    if-gt p1, p2, :cond_5

    .line 70
    .line 71
    const-wide/16 v5, 0x1

    .line 72
    shl-long/2addr v5, p1

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-wide v7, 0x100003701L

    .line 78
    and-long/2addr v5, v7

    .line 79
    .line 80
    const-wide/16 v7, 0x0

    .line 81
    .line 82
    cmp-long p2, v5, v7

    .line 83
    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    aget-byte p1, v0, v2

    .line 89
    .line 90
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    add-int/2addr v2, v4

    .line 93
    .line 94
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 95
    int-to-char p1, p1

    .line 96
    .line 97
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 98
    :cond_6
    :goto_2
    return v4
.end method

.method public final nextIfValue4Match6(I)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x7

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x4

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eq v3, p1, :cond_1

    .line 28
    return v4

    .line 29
    .line 30
    :cond_1
    aget-byte p1, v0, v2

    .line 31
    .line 32
    and-int/lit16 p1, p1, 0xff

    .line 33
    .line 34
    const/16 v3, 0x2c

    .line 35
    .line 36
    if-eq p1, v3, :cond_2

    .line 37
    .line 38
    const/16 v5, 0x7d

    .line 39
    .line 40
    if-eq p1, v5, :cond_2

    .line 41
    .line 42
    const/16 v5, 0x5d

    .line 43
    .line 44
    if-eq p1, v5, :cond_2

    .line 45
    return v4

    .line 46
    :cond_2
    const/4 v4, 0x1

    .line 47
    .line 48
    if-ne p1, v3, :cond_4

    .line 49
    .line 50
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x8

    .line 53
    .line 54
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 55
    .line 56
    if-ne v2, p1, :cond_3

    .line 57
    .line 58
    const/16 p1, 0x1a

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    aget-byte p1, v0, v2

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_4
    :goto_0
    const/16 v1, 0x20

    .line 65
    .line 66
    if-gt p1, v1, :cond_5

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
    cmp-long v1, v5, v7

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    aget-byte p1, v0, v2

    .line 86
    .line 87
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    add-int/2addr v2, v4

    .line 90
    .line 91
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 92
    int-to-char p1, p1

    .line 93
    .line 94
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 95
    return v4
.end method

.method public final nextIfValue4Match7(I)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x5

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-ne v3, p1, :cond_6

    .line 28
    .line 29
    add-int/lit8 p1, v1, 0x7

    .line 30
    .line 31
    aget-byte p1, v0, p1

    .line 32
    .line 33
    const/16 v3, 0x22

    .line 34
    .line 35
    if-eq p1, v3, :cond_1

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    aget-byte p1, v0, v2

    .line 39
    .line 40
    and-int/lit16 p1, p1, 0xff

    .line 41
    .line 42
    const/16 v3, 0x2c

    .line 43
    .line 44
    if-eq p1, v3, :cond_2

    .line 45
    .line 46
    const/16 v5, 0x7d

    .line 47
    .line 48
    if-eq p1, v5, :cond_2

    .line 49
    .line 50
    const/16 v5, 0x5d

    .line 51
    .line 52
    if-eq p1, v5, :cond_2

    .line 53
    return v4

    .line 54
    :cond_2
    const/4 v4, 0x1

    .line 55
    .line 56
    if-ne p1, v3, :cond_4

    .line 57
    .line 58
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 59
    .line 60
    add-int/lit8 v2, v1, 0x9

    .line 61
    .line 62
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 63
    .line 64
    if-ne v2, p1, :cond_3

    .line 65
    .line 66
    const/16 p1, 0x1a

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_3
    aget-byte p1, v0, v2

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_4
    :goto_0
    const/16 v1, 0x20

    .line 73
    .line 74
    if-gt p1, v1, :cond_5

    .line 75
    .line 76
    const-wide/16 v5, 0x1

    .line 77
    shl-long/2addr v5, p1

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const-wide v7, 0x100003701L

    .line 83
    and-long/2addr v5, v7

    .line 84
    .line 85
    const-wide/16 v7, 0x0

    .line 86
    .line 87
    cmp-long v1, v5, v7

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    aget-byte p1, v0, v2

    .line 94
    .line 95
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    add-int/2addr v2, v4

    .line 98
    .line 99
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 100
    int-to-char p1, p1

    .line 101
    .line 102
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 103
    :cond_6
    :goto_2
    return v4
.end method

.method public final nextIfValue4Match8(IB)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x9

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x6

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-ne v3, p1, :cond_6

    .line 28
    .line 29
    add-int/lit8 p1, v1, 0x7

    .line 30
    .line 31
    aget-byte p1, v0, p1

    .line 32
    .line 33
    if-ne p1, p2, :cond_6

    .line 34
    .line 35
    add-int/lit8 p1, v1, 0x8

    .line 36
    .line 37
    aget-byte p1, v0, p1

    .line 38
    .line 39
    const/16 p2, 0x22

    .line 40
    .line 41
    if-eq p1, p2, :cond_1

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_1
    aget-byte p1, v0, v2

    .line 45
    .line 46
    and-int/lit16 p1, p1, 0xff

    .line 47
    .line 48
    const/16 p2, 0x2c

    .line 49
    .line 50
    if-eq p1, p2, :cond_2

    .line 51
    .line 52
    const/16 v3, 0x7d

    .line 53
    .line 54
    if-eq p1, v3, :cond_2

    .line 55
    .line 56
    const/16 v3, 0x5d

    .line 57
    .line 58
    if-eq p1, v3, :cond_2

    .line 59
    return v4

    .line 60
    :cond_2
    const/4 v3, 0x1

    .line 61
    .line 62
    if-ne p1, p2, :cond_4

    .line 63
    .line 64
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 65
    .line 66
    add-int/lit8 v2, v1, 0xa

    .line 67
    .line 68
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 69
    .line 70
    if-ne v2, p1, :cond_3

    .line 71
    .line 72
    const/16 p1, 0x1a

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_3
    aget-byte p1, v0, v2

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 79
    .line 80
    if-gt p1, p2, :cond_5

    .line 81
    .line 82
    const-wide/16 v4, 0x1

    .line 83
    shl-long/2addr v4, p1

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v6, 0x100003701L

    .line 89
    and-long/2addr v4, v6

    .line 90
    .line 91
    const-wide/16 v6, 0x0

    .line 92
    .line 93
    cmp-long p2, v4, v6

    .line 94
    .line 95
    if-eqz p2, :cond_5

    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    aget-byte p1, v0, v2

    .line 100
    .line 101
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    add-int/2addr v2, v3

    .line 104
    .line 105
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 106
    int-to-char p1, p1

    .line 107
    .line 108
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 109
    return v3

    .line 110
    :cond_6
    :goto_2
    return v4
.end method

.method public final nextIfValue4Match9(IBB)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xa

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 17
    int-to-long v7, v2

    .line 18
    add-long/2addr v5, v7

    .line 19
    .line 20
    const-wide/16 v7, 0x7

    .line 21
    sub-long/2addr v5, v7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-ne v3, p1, :cond_6

    .line 28
    .line 29
    add-int/lit8 p1, v1, 0x7

    .line 30
    .line 31
    aget-byte p1, v0, p1

    .line 32
    .line 33
    if-ne p1, p2, :cond_6

    .line 34
    .line 35
    add-int/lit8 p1, v1, 0x8

    .line 36
    .line 37
    aget-byte p1, v0, p1

    .line 38
    .line 39
    if-ne p1, p3, :cond_6

    .line 40
    .line 41
    add-int/lit8 p1, v1, 0x9

    .line 42
    .line 43
    aget-byte p1, v0, p1

    .line 44
    .line 45
    const/16 p2, 0x22

    .line 46
    .line 47
    if-eq p1, p2, :cond_1

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_1
    aget-byte p1, v0, v2

    .line 51
    .line 52
    and-int/lit16 p1, p1, 0xff

    .line 53
    .line 54
    const/16 p2, 0x2c

    .line 55
    .line 56
    if-eq p1, p2, :cond_2

    .line 57
    .line 58
    const/16 p3, 0x7d

    .line 59
    .line 60
    if-eq p1, p3, :cond_2

    .line 61
    .line 62
    const/16 p3, 0x5d

    .line 63
    .line 64
    if-eq p1, p3, :cond_2

    .line 65
    return v4

    .line 66
    :cond_2
    const/4 p3, 0x1

    .line 67
    .line 68
    if-ne p1, p2, :cond_4

    .line 69
    .line 70
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 71
    .line 72
    add-int/lit8 v2, v1, 0xb

    .line 73
    .line 74
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 75
    .line 76
    if-ne v2, p1, :cond_3

    .line 77
    .line 78
    const/16 p1, 0x1a

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_3
    aget-byte p1, v0, v2

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_4
    :goto_0
    const/16 p2, 0x20

    .line 85
    .line 86
    if-gt p1, p2, :cond_5

    .line 87
    .line 88
    const-wide/16 v3, 0x1

    .line 89
    shl-long/2addr v3, p1

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    const-wide v5, 0x100003701L

    .line 95
    and-long/2addr v3, v5

    .line 96
    .line 97
    const-wide/16 v5, 0x0

    .line 98
    .line 99
    cmp-long p2, v3, v5

    .line 100
    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    aget-byte p1, v0, v2

    .line 106
    .line 107
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 108
    goto :goto_0

    .line 109
    :cond_5
    add-int/2addr v2, p3

    .line 110
    .line 111
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 112
    int-to-char p1, p1

    .line 113
    .line 114
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 115
    return p3

    .line 116
    :cond_6
    :goto_2
    return v4
.end method

.method public final nextWithoutComment()V
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
    const/16 v4, 0x20

    .line 20
    .line 21
    if-gt v1, v4, :cond_2

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    shl-long/2addr v4, v1

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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 39
    .line 40
    if-ne v2, v1, :cond_1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 44
    .line 45
    aget-byte v2, v0, v2

    .line 46
    move v8, v2

    .line 47
    move v2, v1

    .line 48
    move v1, v8

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    if-gez v1, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char_utf8(II)V

    .line 55
    return-void

    .line 56
    .line 57
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 58
    int-to-char v0, v1

    .line 59
    .line 60
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 61
    return-void
.end method

.method public final readBigDecimal()Ljava/math/BigDecimal;
    .locals 28

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    aget-byte v9, v0, v3

    .line 28
    .line 29
    if-ne v9, v2, :cond_3

    .line 30
    .line 31
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v0, v0, v4

    .line 40
    int-to-char v6, v0

    .line 41
    move v4, v3

    .line 42
    .line 43
    :goto_1
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 44
    .line 45
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    .line 49
    return-object v8

    .line 50
    :cond_3
    move v3, v2

    .line 51
    move v2, v9

    .line 52
    .line 53
    :goto_2
    const/16 v9, 0x2b

    .line 54
    .line 55
    const/16 v10, 0x2d

    .line 56
    const/4 v11, 0x1

    .line 57
    .line 58
    if-ne v2, v10, :cond_4

    .line 59
    .line 60
    iput-boolean v11, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 61
    .line 62
    add-int/lit8 v2, v4, 0x1

    .line 63
    .line 64
    aget-byte v12, v0, v4

    .line 65
    .line 66
    :goto_3
    move/from16 v27, v12

    .line 67
    move v12, v2

    .line 68
    .line 69
    move/from16 v2, v27

    .line 70
    goto :goto_4

    .line 71
    .line 72
    :cond_4
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 73
    .line 74
    if-ne v2, v9, :cond_5

    .line 75
    .line 76
    add-int/lit8 v2, v4, 0x1

    .line 77
    .line 78
    aget-byte v12, v0, v4

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    move v12, v4

    .line 81
    .line 82
    :goto_4
    iput-byte v11, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 83
    .line 84
    const-wide/16 v13, 0x0

    .line 85
    move v15, v7

    .line 86
    .line 87
    move/from16 v18, v15

    .line 88
    .line 89
    move-wide/from16 v16, v13

    .line 90
    .line 91
    :goto_5
    const/16 v19, 0x1f

    .line 92
    .line 93
    const/16 v6, 0x39

    .line 94
    .line 95
    const-wide/16 v20, 0xa

    .line 96
    .line 97
    move-object/from16 v22, v8

    .line 98
    .line 99
    const/16 v8, 0x30

    .line 100
    .line 101
    if-lt v2, v8, :cond_a

    .line 102
    .line 103
    if-gt v2, v6, :cond_a

    .line 104
    .line 105
    if-nez v15, :cond_7

    .line 106
    .line 107
    mul-long v23, v16, v20

    .line 108
    .line 109
    or-long v25, v16, v20

    .line 110
    .line 111
    ushr-long v25, v25, v19

    .line 112
    .line 113
    cmp-long v18, v25, v13

    .line 114
    .line 115
    if-eqz v18, :cond_8

    .line 116
    .line 117
    div-long v25, v23, v20

    .line 118
    .line 119
    cmp-long v18, v25, v16

    .line 120
    .line 121
    if-nez v18, :cond_6

    .line 122
    goto :goto_6

    .line 123
    :cond_6
    move v15, v11

    .line 124
    .line 125
    :cond_7
    move-wide/from16 v25, v13

    .line 126
    goto :goto_7

    .line 127
    .line 128
    :cond_8
    :goto_6
    add-int/lit8 v2, v2, -0x30

    .line 129
    .line 130
    move-wide/from16 v25, v13

    .line 131
    int-to-long v13, v2

    .line 132
    .line 133
    add-long v16, v23, v13

    .line 134
    .line 135
    :goto_7
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 136
    .line 137
    if-ne v12, v2, :cond_9

    .line 138
    .line 139
    add-int/lit8 v12, v12, 0x1

    .line 140
    .line 141
    move/from16 v18, v11

    .line 142
    .line 143
    const/16 v2, 0x1a

    .line 144
    goto :goto_8

    .line 145
    .line 146
    :cond_9
    add-int/lit8 v2, v12, 0x1

    .line 147
    .line 148
    aget-byte v6, v0, v12

    .line 149
    move v12, v2

    .line 150
    move v2, v6

    .line 151
    .line 152
    move/from16 v18, v11

    .line 153
    .line 154
    move-object/from16 v8, v22

    .line 155
    .line 156
    move-wide/from16 v13, v25

    .line 157
    goto :goto_5

    .line 158
    .line 159
    :cond_a
    move-wide/from16 v25, v13

    .line 160
    .line 161
    :goto_8
    cmp-long v13, v16, v25

    .line 162
    .line 163
    if-gez v13, :cond_b

    .line 164
    move v15, v11

    .line 165
    .line 166
    :cond_b
    iput-short v7, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 167
    .line 168
    const/16 v13, 0x2e

    .line 169
    .line 170
    if-ne v2, v13, :cond_10

    .line 171
    .line 172
    iput-byte v5, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 173
    .line 174
    add-int/lit8 v2, v12, 0x1

    .line 175
    .line 176
    aget-byte v12, v0, v12

    .line 177
    .line 178
    move/from16 v27, v12

    .line 179
    move v12, v2

    .line 180
    .line 181
    move/from16 v2, v27

    .line 182
    .line 183
    :goto_9
    if-lt v2, v8, :cond_10

    .line 184
    .line 185
    if-gt v2, v6, :cond_10

    .line 186
    .line 187
    iget-short v13, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 188
    add-int/2addr v13, v11

    .line 189
    int-to-short v13, v13

    .line 190
    .line 191
    iput-short v13, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 192
    .line 193
    if-nez v15, :cond_e

    .line 194
    .line 195
    mul-long v13, v16, v20

    .line 196
    .line 197
    or-long v23, v16, v20

    .line 198
    .line 199
    ushr-long v23, v23, v19

    .line 200
    .line 201
    cmp-long v18, v23, v25

    .line 202
    .line 203
    if-eqz v18, :cond_d

    .line 204
    .line 205
    div-long v23, v13, v20

    .line 206
    .line 207
    cmp-long v18, v23, v16

    .line 208
    .line 209
    if-nez v18, :cond_c

    .line 210
    goto :goto_a

    .line 211
    :cond_c
    move v15, v11

    .line 212
    goto :goto_b

    .line 213
    .line 214
    :cond_d
    :goto_a
    add-int/lit8 v2, v2, -0x30

    .line 215
    int-to-long v5, v2

    .line 216
    add-long/2addr v13, v5

    .line 217
    .line 218
    move-wide/from16 v16, v13

    .line 219
    .line 220
    :cond_e
    :goto_b
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 221
    .line 222
    if-ne v12, v2, :cond_f

    .line 223
    .line 224
    add-int/lit8 v12, v12, 0x1

    .line 225
    .line 226
    move/from16 v18, v11

    .line 227
    .line 228
    move-wide/from16 v5, v16

    .line 229
    .line 230
    const/16 v2, 0x1a

    .line 231
    goto :goto_c

    .line 232
    .line 233
    :cond_f
    add-int/lit8 v2, v12, 0x1

    .line 234
    .line 235
    aget-byte v5, v0, v12

    .line 236
    move v12, v2

    .line 237
    move v2, v5

    .line 238
    .line 239
    move/from16 v18, v11

    .line 240
    const/4 v5, 0x2

    .line 241
    .line 242
    const/16 v6, 0x39

    .line 243
    goto :goto_9

    .line 244
    .line 245
    :cond_10
    move-wide/from16 v5, v16

    .line 246
    .line 247
    :goto_c
    const/16 v13, 0x65

    .line 248
    .line 249
    if-eq v2, v13, :cond_12

    .line 250
    .line 251
    const/16 v14, 0x45

    .line 252
    .line 253
    if-ne v2, v14, :cond_11

    .line 254
    goto :goto_d

    .line 255
    :cond_11
    move v9, v7

    .line 256
    .line 257
    goto/16 :goto_12

    .line 258
    .line 259
    :cond_12
    :goto_d
    add-int/lit8 v2, v12, 0x1

    .line 260
    .line 261
    aget-byte v14, v0, v12

    .line 262
    .line 263
    if-ne v14, v10, :cond_13

    .line 264
    move v10, v11

    .line 265
    goto :goto_e

    .line 266
    :cond_13
    move v10, v7

    .line 267
    .line 268
    :goto_e
    if-nez v10, :cond_15

    .line 269
    .line 270
    if-ne v14, v9, :cond_14

    .line 271
    goto :goto_f

    .line 272
    :cond_14
    move v9, v7

    .line 273
    goto :goto_10

    .line 274
    .line 275
    :cond_15
    :goto_f
    add-int/lit8 v12, v12, 0x2

    .line 276
    .line 277
    aget-byte v14, v0, v2

    .line 278
    move v9, v7

    .line 279
    move v2, v12

    .line 280
    .line 281
    :goto_10
    if-lt v14, v8, :cond_18

    .line 282
    .line 283
    const/16 v12, 0x39

    .line 284
    .line 285
    if-gt v14, v12, :cond_18

    .line 286
    .line 287
    add-int/lit8 v14, v14, -0x30

    .line 288
    .line 289
    mul-int/lit8 v9, v9, 0xa

    .line 290
    add-int/2addr v9, v14

    .line 291
    .line 292
    const/16 v14, 0x7ff

    .line 293
    .line 294
    if-gt v9, v14, :cond_17

    .line 295
    .line 296
    iget v14, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 297
    .line 298
    if-ne v2, v14, :cond_16

    .line 299
    .line 300
    add-int/lit8 v2, v2, 0x1

    .line 301
    move v12, v2

    .line 302
    .line 303
    move/from16 v18, v11

    .line 304
    .line 305
    const/16 v2, 0x1a

    .line 306
    goto :goto_11

    .line 307
    .line 308
    :cond_16
    add-int/lit8 v14, v2, 0x1

    .line 309
    .line 310
    aget-byte v2, v0, v2

    .line 311
    .line 312
    move/from16 v18, v14

    .line 313
    move v14, v2

    .line 314
    .line 315
    move/from16 v2, v18

    .line 316
    .line 317
    move/from16 v18, v11

    .line 318
    goto :goto_10

    .line 319
    .line 320
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 321
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    const-string v3, "too large exp value : "

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object v2

    .line 338
    .line 339
    .line 340
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 341
    throw v0

    .line 342
    :cond_18
    move v12, v2

    .line 343
    move v2, v14

    .line 344
    .line 345
    :goto_11
    if-eqz v10, :cond_19

    .line 346
    neg-int v9, v9

    .line 347
    :cond_19
    int-to-short v8, v9

    .line 348
    .line 349
    iput-short v8, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 350
    const/4 v8, 0x2

    .line 351
    .line 352
    iput-byte v8, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 353
    .line 354
    :goto_12
    if-ne v12, v4, :cond_26

    .line 355
    .line 356
    const/16 v8, 0x6e

    .line 357
    .line 358
    const/16 v10, 0x75

    .line 359
    .line 360
    const/16 v14, 0x6c

    .line 361
    .line 362
    if-ne v2, v8, :cond_1e

    .line 363
    .line 364
    add-int/lit8 v8, v12, 0x1

    .line 365
    .line 366
    aget-byte v7, v0, v12

    .line 367
    .line 368
    if-ne v7, v10, :cond_1c

    .line 369
    .line 370
    add-int/lit8 v7, v12, 0x2

    .line 371
    .line 372
    aget-byte v8, v0, v8

    .line 373
    .line 374
    if-ne v8, v14, :cond_1d

    .line 375
    .line 376
    add-int/lit8 v8, v12, 0x3

    .line 377
    .line 378
    aget-byte v7, v0, v7

    .line 379
    .line 380
    if-ne v7, v14, :cond_1c

    .line 381
    .line 382
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 383
    .line 384
    iget-wide v13, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 385
    .line 386
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 387
    .line 388
    move/from16 v19, v12

    .line 389
    .line 390
    iget-wide v11, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 391
    and-long/2addr v11, v13

    .line 392
    .line 393
    cmp-long v2, v11, v25

    .line 394
    .line 395
    if-nez v2, :cond_1b

    .line 396
    const/4 v2, 0x1

    .line 397
    .line 398
    iput-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 399
    .line 400
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 401
    .line 402
    if-ne v8, v2, :cond_1a

    .line 403
    .line 404
    const/16 v2, 0x1a

    .line 405
    goto :goto_13

    .line 406
    .line 407
    :cond_1a
    aget-byte v2, v0, v8

    .line 408
    .line 409
    :goto_13
    add-int/lit8 v12, v19, 0x4

    .line 410
    :goto_14
    const/4 v7, 0x0

    .line 411
    const/4 v8, 0x1

    .line 412
    .line 413
    const/16 v18, 0x1

    .line 414
    .line 415
    goto/16 :goto_1a

    .line 416
    .line 417
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 418
    .line 419
    const-string v2, "long value not support input null"

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    move-result-object v2

    .line 424
    .line 425
    .line 426
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 427
    throw v0

    .line 428
    :cond_1c
    move v12, v8

    .line 429
    goto :goto_15

    .line 430
    :cond_1d
    move v12, v7

    .line 431
    goto :goto_15

    .line 432
    .line 433
    :cond_1e
    move/from16 v19, v12

    .line 434
    .line 435
    :goto_15
    const/16 v7, 0x74

    .line 436
    .line 437
    if-ne v2, v7, :cond_20

    .line 438
    .line 439
    add-int/lit8 v7, v12, 0x3

    .line 440
    .line 441
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 442
    .line 443
    if-gt v7, v8, :cond_20

    .line 444
    .line 445
    aget-byte v11, v0, v12

    .line 446
    .line 447
    const/16 v14, 0x72

    .line 448
    .line 449
    if-ne v11, v14, :cond_20

    .line 450
    .line 451
    add-int/lit8 v11, v12, 0x1

    .line 452
    .line 453
    aget-byte v11, v0, v11

    .line 454
    .line 455
    if-ne v11, v10, :cond_20

    .line 456
    .line 457
    add-int/lit8 v10, v12, 0x2

    .line 458
    .line 459
    aget-byte v10, v0, v10

    .line 460
    .line 461
    if-ne v10, v13, :cond_20

    .line 462
    .line 463
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 464
    .line 465
    if-ne v7, v8, :cond_1f

    .line 466
    .line 467
    const/16 v7, 0x1a

    .line 468
    goto :goto_16

    .line 469
    .line 470
    :cond_1f
    aget-byte v7, v0, v7

    .line 471
    .line 472
    :goto_16
    add-int/lit8 v12, v12, 0x4

    .line 473
    .line 474
    :goto_17
    move-object/from16 v22, v2

    .line 475
    move v2, v7

    .line 476
    goto :goto_14

    .line 477
    .line 478
    :cond_20
    const/16 v7, 0x66

    .line 479
    .line 480
    if-ne v2, v7, :cond_22

    .line 481
    .line 482
    add-int/lit8 v7, v12, 0x4

    .line 483
    .line 484
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 485
    .line 486
    if-gt v7, v8, :cond_22

    .line 487
    .line 488
    aget-byte v10, v0, v12

    .line 489
    .line 490
    const/16 v11, 0x61

    .line 491
    .line 492
    if-ne v10, v11, :cond_22

    .line 493
    .line 494
    add-int/lit8 v10, v12, 0x1

    .line 495
    .line 496
    aget-byte v10, v0, v10

    .line 497
    .line 498
    const/16 v11, 0x6c

    .line 499
    .line 500
    if-ne v10, v11, :cond_22

    .line 501
    .line 502
    add-int/lit8 v10, v12, 0x2

    .line 503
    .line 504
    aget-byte v10, v0, v10

    .line 505
    .line 506
    const/16 v11, 0x73

    .line 507
    .line 508
    if-ne v10, v11, :cond_22

    .line 509
    .line 510
    add-int/lit8 v10, v12, 0x3

    .line 511
    .line 512
    aget-byte v10, v0, v10

    .line 513
    .line 514
    if-ne v10, v13, :cond_22

    .line 515
    .line 516
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 517
    .line 518
    if-ne v7, v8, :cond_21

    .line 519
    .line 520
    const/16 v7, 0x1a

    .line 521
    goto :goto_18

    .line 522
    .line 523
    :cond_21
    aget-byte v7, v0, v7

    .line 524
    .line 525
    :goto_18
    add-int/lit8 v12, v12, 0x5

    .line 526
    goto :goto_17

    .line 527
    .line 528
    :cond_22
    const/16 v7, 0x7b

    .line 529
    .line 530
    if-ne v2, v7, :cond_23

    .line 531
    .line 532
    if-nez v3, :cond_23

    .line 533
    .line 534
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 535
    .line 536
    .line 537
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 538
    .line 539
    move-wide/from16 v2, v25

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->readObject(Ljava/lang/Object;J)V

    .line 543
    const/4 v7, 0x0

    .line 544
    .line 545
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->decimal(Lcom/alibaba/fastjson2/JSONObject;)Ljava/math/BigDecimal;

    .line 549
    move-result-object v0

    .line 550
    return-object v0

    .line 551
    :cond_23
    const/4 v7, 0x0

    .line 552
    .line 553
    const/16 v8, 0x5b

    .line 554
    .line 555
    if-ne v2, v8, :cond_25

    .line 556
    .line 557
    if-nez v3, :cond_25

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 561
    move-result-object v0

    .line 562
    .line 563
    .line 564
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 565
    move-result v0

    .line 566
    .line 567
    if-eqz v0, :cond_24

    .line 568
    const/4 v2, 0x1

    .line 569
    .line 570
    iput-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 571
    return-object v22

    .line 572
    .line 573
    :cond_24
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 577
    move-result-object v2

    .line 578
    .line 579
    .line 580
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 581
    throw v0

    .line 582
    :cond_25
    :goto_19
    move v8, v7

    .line 583
    goto :goto_1a

    .line 584
    .line 585
    :cond_26
    move/from16 v19, v12

    .line 586
    goto :goto_19

    .line 587
    .line 588
    :goto_1a
    sub-int v10, v12, v4

    .line 589
    .line 590
    if-eqz v3, :cond_29

    .line 591
    .line 592
    if-eq v2, v3, :cond_27

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    .line 596
    move-result-object v0

    .line 597
    .line 598
    .line 599
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 600
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .line 604
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 608
    move-result-object v3

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    move-result-object v3

    .line 613
    .line 614
    .line 615
    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    throw v2

    .line 617
    .line 618
    :cond_27
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 619
    .line 620
    if-lt v12, v2, :cond_28

    .line 621
    .line 622
    const/16 v2, 0x1a

    .line 623
    goto :goto_1b

    .line 624
    .line 625
    :cond_28
    add-int/lit8 v2, v12, 0x1

    .line 626
    .line 627
    aget-byte v3, v0, v12

    .line 628
    move v12, v2

    .line 629
    move v2, v3

    .line 630
    .line 631
    :cond_29
    :goto_1b
    if-nez v8, :cond_2f

    .line 632
    .line 633
    if-nez v9, :cond_2b

    .line 634
    .line 635
    if-nez v15, :cond_2b

    .line 636
    .line 637
    const-wide/16 v25, 0x0

    .line 638
    .line 639
    cmp-long v3, v5, v25

    .line 640
    .line 641
    if-eqz v3, :cond_2b

    .line 642
    .line 643
    iget-boolean v3, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 644
    .line 645
    if-eqz v3, :cond_2a

    .line 646
    neg-long v5, v5

    .line 647
    .line 648
    :cond_2a
    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 649
    .line 650
    .line 651
    invoke-static {v5, v6, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 652
    move-result-object v22

    .line 653
    const/4 v8, 0x1

    .line 654
    .line 655
    :cond_2b
    const/16 v17, 0x1

    .line 656
    .line 657
    if-nez v8, :cond_2c

    .line 658
    .line 659
    add-int/lit8 v4, v4, -0x1

    .line 660
    .line 661
    .line 662
    invoke-static {v0, v4, v10}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    .line 663
    move-result-object v3

    .line 664
    .line 665
    move-object/from16 v22, v3

    .line 666
    .line 667
    :cond_2c
    const/16 v3, 0x4c

    .line 668
    .line 669
    if-eq v2, v3, :cond_2d

    .line 670
    .line 671
    const/16 v3, 0x46

    .line 672
    .line 673
    if-eq v2, v3, :cond_2d

    .line 674
    .line 675
    const/16 v3, 0x44

    .line 676
    .line 677
    if-eq v2, v3, :cond_2d

    .line 678
    .line 679
    const/16 v3, 0x42

    .line 680
    .line 681
    if-eq v2, v3, :cond_2d

    .line 682
    .line 683
    const/16 v3, 0x53

    .line 684
    .line 685
    if-ne v2, v3, :cond_30

    .line 686
    .line 687
    :cond_2d
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 688
    .line 689
    if-lt v12, v2, :cond_2e

    .line 690
    .line 691
    :goto_1c
    const/16 v2, 0x1a

    .line 692
    goto :goto_1e

    .line 693
    .line 694
    :cond_2e
    add-int/lit8 v2, v12, 0x1

    .line 695
    .line 696
    aget-byte v3, v0, v12

    .line 697
    :goto_1d
    move v12, v2

    .line 698
    move v2, v3

    .line 699
    goto :goto_1e

    .line 700
    .line 701
    :cond_2f
    const/16 v17, 0x1

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    :cond_30
    :goto_1e
    const-wide v3, 0x100003701L

    .line 707
    .line 708
    const-wide/16 v5, 0x1

    .line 709
    .line 710
    const/16 v8, 0x20

    .line 711
    .line 712
    if-gt v2, v8, :cond_32

    .line 713
    .line 714
    shl-long v9, v5, v2

    .line 715
    and-long/2addr v9, v3

    .line 716
    .line 717
    const-wide/16 v25, 0x0

    .line 718
    .line 719
    cmp-long v9, v9, v25

    .line 720
    .line 721
    if-eqz v9, :cond_32

    .line 722
    .line 723
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 724
    .line 725
    if-ne v12, v2, :cond_31

    .line 726
    goto :goto_1c

    .line 727
    .line 728
    :cond_31
    add-int/lit8 v2, v12, 0x1

    .line 729
    .line 730
    aget-byte v3, v0, v12

    .line 731
    goto :goto_1d

    .line 732
    .line 733
    :cond_32
    const/16 v9, 0x2c

    .line 734
    .line 735
    if-ne v2, v9, :cond_33

    .line 736
    .line 737
    move/from16 v7, v17

    .line 738
    .line 739
    :cond_33
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 740
    .line 741
    if-eqz v7, :cond_36

    .line 742
    .line 743
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 744
    .line 745
    if-ne v12, v2, :cond_34

    .line 746
    .line 747
    const/16 v7, 0x1a

    .line 748
    goto :goto_1f

    .line 749
    .line 750
    :cond_34
    add-int/lit8 v2, v12, 0x1

    .line 751
    .line 752
    aget-byte v7, v0, v12

    .line 753
    goto :goto_21

    .line 754
    :goto_1f
    move v2, v7

    .line 755
    .line 756
    :goto_20
    if-gt v2, v8, :cond_36

    .line 757
    .line 758
    shl-long v9, v5, v2

    .line 759
    and-long/2addr v9, v3

    .line 760
    .line 761
    const-wide/16 v25, 0x0

    .line 762
    .line 763
    cmp-long v7, v9, v25

    .line 764
    .line 765
    if-eqz v7, :cond_36

    .line 766
    .line 767
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 768
    .line 769
    if-ne v12, v2, :cond_35

    .line 770
    .line 771
    const/16 v2, 0x1a

    .line 772
    goto :goto_20

    .line 773
    .line 774
    :cond_35
    add-int/lit8 v2, v12, 0x1

    .line 775
    .line 776
    aget-byte v7, v0, v12

    .line 777
    :goto_21
    move v12, v2

    .line 778
    goto :goto_1f

    .line 779
    .line 780
    :cond_36
    if-eqz v18, :cond_37

    .line 781
    int-to-char v0, v2

    .line 782
    .line 783
    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 784
    .line 785
    iput v12, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 786
    return-object v22

    .line 787
    .line 788
    :cond_37
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 789
    .line 790
    const-string v2, "illegal input error"

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 794
    move-result-object v2

    .line 795
    .line 796
    .line 797
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 798
    throw v0
.end method

.method public final readBoolValue()Z
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
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    aget-byte v11, v2, v3

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
    aget-byte v11, v2, v11

    .line 38
    .line 39
    if-ne v11, v7, :cond_1

    .line 40
    .line 41
    aget-byte v5, v2, v5

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
    aget-byte v12, v2, v3

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
    aget-byte v12, v2, v12

    .line 70
    .line 71
    if-ne v12, v11, :cond_3

    .line 72
    .line 73
    add-int/lit8 v12, v3, 0x2

    .line 74
    .line 75
    aget-byte v12, v2, v12

    .line 76
    .line 77
    const/16 v13, 0x73

    .line 78
    .line 79
    if-ne v12, v13, :cond_3

    .line 80
    .line 81
    aget-byte v5, v2, v5

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
    aget-byte v12, v2, v3

    .line 114
    .line 115
    if-ne v12, v7, :cond_6

    .line 116
    .line 117
    add-int/lit8 v7, v3, 0x1

    .line 118
    .line 119
    aget-byte v7, v2, v7

    .line 120
    .line 121
    if-ne v7, v11, :cond_6

    .line 122
    .line 123
    aget-byte v6, v2, v6

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
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

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
    aget-byte v4, v2, v4

    .line 169
    .line 170
    if-ne v4, v6, :cond_10

    .line 171
    .line 172
    aget-byte v4, v2, v3

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
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v3, v2, v3

    .line 226
    int-to-char v3, v3

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :goto_4
    const-wide v11, 0x100003701L

    .line 232
    .line 233
    const-wide/16 v13, 0x1

    .line 234
    .line 235
    const/16 v7, 0x20

    .line 236
    .line 237
    if-gt v3, v7, :cond_b

    .line 238
    .line 239
    shl-long v15, v13, v3

    .line 240
    and-long/2addr v15, v11

    .line 241
    .line 242
    cmp-long v15, v15, v8

    .line 243
    .line 244
    if-eqz v15, :cond_b

    .line 245
    .line 246
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 247
    .line 248
    if-lt v5, v3, :cond_a

    .line 249
    goto :goto_3

    .line 250
    .line 251
    :cond_a
    add-int/lit8 v3, v5, 0x1

    .line 252
    .line 253
    aget-byte v5, v2, v5

    .line 254
    .line 255
    move/from16 v17, v5

    .line 256
    move v5, v3

    .line 257
    .line 258
    move/from16 v3, v17

    .line 259
    goto :goto_4

    .line 260
    .line 261
    :cond_b
    const/16 v15, 0x2c

    .line 262
    .line 263
    if-ne v3, v15, :cond_c

    .line 264
    move v1, v10

    .line 265
    .line 266
    :cond_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 267
    .line 268
    if-eqz v1, :cond_f

    .line 269
    .line 270
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 271
    .line 272
    if-lt v5, v1, :cond_d

    .line 273
    :goto_5
    move v3, v6

    .line 274
    goto :goto_7

    .line 275
    .line 276
    :cond_d
    add-int/lit8 v1, v5, 0x1

    .line 277
    .line 278
    aget-byte v3, v2, v5

    .line 279
    :goto_6
    move v5, v1

    .line 280
    .line 281
    :goto_7
    if-gt v3, v7, :cond_f

    .line 282
    .line 283
    shl-long v15, v13, v3

    .line 284
    and-long/2addr v15, v11

    .line 285
    .line 286
    cmp-long v1, v15, v8

    .line 287
    .line 288
    if-eqz v1, :cond_f

    .line 289
    .line 290
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 291
    .line 292
    if-lt v5, v1, :cond_e

    .line 293
    goto :goto_5

    .line 294
    .line 295
    :cond_e
    add-int/lit8 v1, v5, 0x1

    .line 296
    .line 297
    aget-byte v3, v2, v5

    .line 298
    goto :goto_6

    .line 299
    .line 300
    :cond_f
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 301
    int-to-char v1, v3

    .line 302
    .line 303
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 304
    return v4

    .line 305
    .line 306
    .line 307
    :cond_10
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    .line 308
    move-result-object v2

    .line 309
    .line 310
    const-string v3, "true"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 314
    move-result v3

    .line 315
    .line 316
    if-eqz v3, :cond_11

    .line 317
    return v10

    .line 318
    .line 319
    :cond_11
    const-string v3, "false"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 323
    move-result v3

    .line 324
    .line 325
    if-eqz v3, :cond_12

    .line 326
    return v1

    .line 327
    .line 328
    .line 329
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 330
    move-result v3

    .line 331
    .line 332
    if-nez v3, :cond_14

    .line 333
    .line 334
    const-string v3, "null"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 338
    move-result v3

    .line 339
    .line 340
    if-eqz v3, :cond_13

    .line 341
    goto :goto_8

    .line 342
    .line 343
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 344
    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v2

    .line 359
    .line 360
    .line 361
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 362
    throw v1

    .line 363
    .line 364
    :cond_14
    :goto_8
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 365
    return v1

    .line 366
    .line 367
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 368
    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    const-string v3, "syntax error : "

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    move-result-object v2

    .line 385
    .line 386
    .line 387
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 388
    throw v1

    .line 389
    .line 390
    .line 391
    :cond_16
    :goto_9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    .line 392
    .line 393
    iget-byte v2, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 394
    .line 395
    if-ne v2, v10, :cond_1a

    .line 396
    .line 397
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 398
    .line 399
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 400
    .line 401
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 402
    .line 403
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 404
    and-long/2addr v2, v4

    .line 405
    .line 406
    cmp-long v2, v2, v8

    .line 407
    .line 408
    if-eqz v2, :cond_19

    .line 409
    .line 410
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 411
    .line 412
    if-nez v2, :cond_18

    .line 413
    .line 414
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 415
    .line 416
    if-nez v2, :cond_18

    .line 417
    .line 418
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 419
    .line 420
    if-nez v2, :cond_18

    .line 421
    .line 422
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 423
    .line 424
    if-eqz v2, :cond_17

    .line 425
    goto :goto_a

    .line 426
    :cond_17
    return v1

    .line 427
    :cond_18
    :goto_a
    return v10

    .line 428
    .line 429
    :cond_19
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 430
    .line 431
    if-nez v2, :cond_1a

    .line 432
    .line 433
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 434
    .line 435
    if-nez v2, :cond_1a

    .line 436
    .line 437
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 438
    .line 439
    if-nez v2, :cond_1a

    .line 440
    .line 441
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 442
    .line 443
    if-ne v2, v10, :cond_1a

    .line 444
    return v10

    .line 445
    :cond_1a
    return v1
.end method

.method public final readDoubleValue()D
    .locals 35

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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v3, v1, v3

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
    aget-byte v3, v1, v5

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
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([BI)I

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
    aget-byte v14, v1, v5

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
    aget-byte v6, v1, v5

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
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([BI)I

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
    aget-byte v14, v1, v5

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
    aget-byte v5, v1, v5

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
    aget-byte v5, v1, v5

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
    aget-byte v5, v1, v5

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
    aget-byte v9, v1, v9

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
    aget-byte v14, v1, v9

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
    aget-byte v7, v1, v9

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
    aget-byte v5, v1, v5

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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNumber0()V

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
    aget-byte v2, v7, v5

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
    aget-byte v5, v7, v5

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
    aget-byte v5, v7, v5

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
    .locals 24

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
    const/4 v5, 0x1

    .line 67
    .line 68
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 69
    const/4 v6, 0x0

    .line 70
    .line 71
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 72
    .line 73
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 74
    .line 75
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 76
    .line 77
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 78
    move v10, v6

    .line 79
    move v9, v7

    .line 80
    .line 81
    :goto_1
    const/16 v11, 0x20

    .line 82
    .line 83
    if-ge v9, v8, :cond_11

    .line 84
    .line 85
    aget-byte v12, v2, v9

    .line 86
    .line 87
    const/16 v13, 0x5c

    .line 88
    const/4 v14, 0x4

    .line 89
    const/4 v15, 0x2

    .line 90
    .line 91
    if-ne v12, v13, :cond_6

    .line 92
    .line 93
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 94
    .line 95
    add-int/lit8 v11, v9, 0x1

    .line 96
    .line 97
    aget-byte v11, v2, v11

    .line 98
    .line 99
    const/16 v12, 0x75

    .line 100
    .line 101
    if-ne v11, v12, :cond_4

    .line 102
    const/4 v14, 0x6

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :cond_4
    const/16 v12, 0x78

    .line 106
    .line 107
    if-ne v11, v12, :cond_5

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    move v14, v15

    .line 110
    :goto_2
    add-int/2addr v9, v14

    .line 111
    .line 112
    goto/16 :goto_8

    .line 113
    .line 114
    :cond_6
    if-ne v12, v1, :cond_d

    .line 115
    .line 116
    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 117
    .line 118
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 119
    .line 120
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    if-ge v9, v8, :cond_7

    .line 123
    .line 124
    aget-byte v1, v2, v9

    .line 125
    .line 126
    :goto_3
    and-int/lit16 v1, v1, 0xff

    .line 127
    goto :goto_4

    .line 128
    .line 129
    :cond_7
    const/16 v1, 0x1a

    .line 130
    .line 131
    :goto_4
    if-gt v1, v11, :cond_8

    .line 132
    .line 133
    const-wide/16 v12, 0x1

    .line 134
    shl-long/2addr v12, v1

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    const-wide v16, 0x100003701L

    .line 140
    .line 141
    and-long v12, v12, v16

    .line 142
    .line 143
    cmp-long v10, v12, v3

    .line 144
    .line 145
    if-eqz v10, :cond_8

    .line 146
    .line 147
    add-int/lit8 v9, v9, 0x1

    .line 148
    .line 149
    aget-byte v1, v2, v9

    .line 150
    goto :goto_3

    .line 151
    .line 152
    :cond_8
    const/16 v10, 0x3a

    .line 153
    .line 154
    if-ne v1, v10, :cond_c

    .line 155
    .line 156
    add-int/lit8 v1, v9, 0x1

    .line 157
    .line 158
    if-ne v1, v8, :cond_9

    .line 159
    .line 160
    :goto_5
    const/16 v9, 0x1a

    .line 161
    goto :goto_7

    .line 162
    :cond_9
    add-int/2addr v9, v15

    .line 163
    .line 164
    aget-byte v1, v2, v1

    .line 165
    .line 166
    :goto_6
    move/from16 v23, v9

    .line 167
    move v9, v1

    .line 168
    .line 169
    move/from16 v1, v23

    .line 170
    .line 171
    :goto_7
    if-gt v9, v11, :cond_b

    .line 172
    .line 173
    const-wide/16 v12, 0x1

    .line 174
    shl-long/2addr v12, v9

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    const-wide v14, 0x100003701L

    .line 180
    and-long/2addr v12, v14

    .line 181
    .line 182
    cmp-long v10, v12, v3

    .line 183
    .line 184
    if-eqz v10, :cond_b

    .line 185
    .line 186
    if-ne v1, v8, :cond_a

    .line 187
    goto :goto_5

    .line 188
    .line 189
    :cond_a
    add-int/lit8 v9, v1, 0x1

    .line 190
    .line 191
    aget-byte v1, v2, v1

    .line 192
    goto :goto_6

    .line 193
    .line 194
    :cond_b
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 195
    int-to-char v3, v9

    .line 196
    .line 197
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 198
    move v9, v1

    .line 199
    goto :goto_9

    .line 200
    .line 201
    .line 202
    :cond_c
    invoke-static {v9, v1}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 203
    move-result-object v1

    .line 204
    throw v1

    .line 205
    .line 206
    :cond_d
    if-ltz v12, :cond_e

    .line 207
    .line 208
    add-int/lit8 v9, v9, 0x1

    .line 209
    goto :goto_8

    .line 210
    .line 211
    :cond_e
    iget-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 212
    .line 213
    if-eqz v11, :cond_f

    .line 214
    .line 215
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 216
    .line 217
    :cond_f
    and-int/lit16 v11, v12, 0xff

    .line 218
    shr-int/2addr v11, v14

    .line 219
    .line 220
    .line 221
    packed-switch v11, :pswitch_data_0

    .line 222
    .line 223
    shr-int/lit8 v11, v12, 0x3

    .line 224
    const/4 v13, -0x2

    .line 225
    .line 226
    if-ne v11, v13, :cond_10

    .line 227
    .line 228
    add-int/lit8 v9, v9, 0x4

    .line 229
    goto :goto_8

    .line 230
    .line 231
    .line 232
    :cond_10
    invoke-static {v9, v12}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 233
    move-result-object v1

    .line 234
    throw v1

    .line 235
    .line 236
    :pswitch_0
    add-int/lit8 v9, v9, 0x3

    .line 237
    goto :goto_8

    .line 238
    .line 239
    :pswitch_1
    add-int/lit8 v9, v9, 0x2

    .line 240
    .line 241
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :cond_11
    :goto_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 246
    .line 247
    if-lt v1, v7, :cond_1d

    .line 248
    sub-int/2addr v1, v7

    .line 249
    .line 250
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 251
    .line 252
    if-nez v3, :cond_1c

    .line 253
    .line 254
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 255
    .line 256
    if-eqz v3, :cond_15

    .line 257
    .line 258
    const/16 v12, 0x28

    .line 259
    .line 260
    const/16 v13, 0x18

    .line 261
    .line 262
    const/16 v14, 0x10

    .line 263
    .line 264
    const/16 v15, 0x8

    .line 265
    .line 266
    .line 267
    packed-switch v1, :pswitch_data_1

    .line 268
    .line 269
    move/from16 v16, v11

    .line 270
    .line 271
    const-wide/16 v12, -0x1

    .line 272
    .line 273
    const-wide/16 v14, -0x1

    .line 274
    .line 275
    const-wide/16 v18, -0x1

    .line 276
    .line 277
    goto/16 :goto_f

    .line 278
    .line 279
    :pswitch_2
    add-int/lit8 v16, v7, 0x7

    .line 280
    .line 281
    const/16 v17, 0x38

    .line 282
    .line 283
    aget-byte v4, v2, v16

    .line 284
    .line 285
    const-wide/16 v18, -0x1

    .line 286
    int-to-long v8, v4

    .line 287
    .line 288
    shl-long v8, v8, v17

    .line 289
    .line 290
    add-int/lit8 v4, v7, 0x6

    .line 291
    .line 292
    aget-byte v4, v2, v4

    .line 293
    .line 294
    move/from16 v16, v11

    .line 295
    .line 296
    const/16 v20, 0x30

    .line 297
    int-to-long v10, v4

    .line 298
    .line 299
    shl-long v10, v10, v20

    .line 300
    add-long/2addr v8, v10

    .line 301
    .line 302
    add-int/lit8 v4, v7, 0x5

    .line 303
    .line 304
    aget-byte v4, v2, v4

    .line 305
    int-to-long v10, v4

    .line 306
    shl-long/2addr v10, v12

    .line 307
    add-long/2addr v8, v10

    .line 308
    .line 309
    add-int/lit8 v4, v7, 0x4

    .line 310
    .line 311
    aget-byte v4, v2, v4

    .line 312
    int-to-long v10, v4

    .line 313
    .line 314
    shl-long v10, v10, v16

    .line 315
    add-long/2addr v8, v10

    .line 316
    .line 317
    add-int/lit8 v4, v7, 0x3

    .line 318
    .line 319
    aget-byte v4, v2, v4

    .line 320
    int-to-long v10, v4

    .line 321
    shl-long/2addr v10, v13

    .line 322
    add-long/2addr v8, v10

    .line 323
    .line 324
    add-int/lit8 v4, v7, 0x2

    .line 325
    .line 326
    aget-byte v4, v2, v4

    .line 327
    int-to-long v10, v4

    .line 328
    shl-long/2addr v10, v14

    .line 329
    add-long/2addr v8, v10

    .line 330
    .line 331
    add-int/lit8 v4, v7, 0x1

    .line 332
    .line 333
    aget-byte v4, v2, v4

    .line 334
    int-to-long v10, v4

    .line 335
    shl-long/2addr v10, v15

    .line 336
    add-long/2addr v8, v10

    .line 337
    .line 338
    aget-byte v4, v2, v7

    .line 339
    int-to-long v10, v4

    .line 340
    add-long/2addr v8, v10

    .line 341
    .line 342
    add-int/lit8 v4, v7, 0xf

    .line 343
    .line 344
    aget-byte v4, v2, v4

    .line 345
    int-to-long v10, v4

    .line 346
    .line 347
    shl-long v10, v10, v17

    .line 348
    .line 349
    add-int/lit8 v4, v7, 0xe

    .line 350
    .line 351
    aget-byte v4, v2, v4

    .line 352
    .line 353
    move/from16 v21, v12

    .line 354
    .line 355
    move/from16 v22, v13

    .line 356
    int-to-long v12, v4

    .line 357
    .line 358
    shl-long v12, v12, v20

    .line 359
    add-long/2addr v10, v12

    .line 360
    .line 361
    add-int/lit8 v4, v7, 0xd

    .line 362
    .line 363
    aget-byte v4, v2, v4

    .line 364
    int-to-long v12, v4

    .line 365
    .line 366
    shl-long v12, v12, v21

    .line 367
    add-long/2addr v10, v12

    .line 368
    .line 369
    add-int/lit8 v4, v7, 0xc

    .line 370
    .line 371
    aget-byte v4, v2, v4

    .line 372
    int-to-long v12, v4

    .line 373
    .line 374
    shl-long v12, v12, v16

    .line 375
    add-long/2addr v10, v12

    .line 376
    .line 377
    add-int/lit8 v4, v7, 0xb

    .line 378
    .line 379
    aget-byte v4, v2, v4

    .line 380
    int-to-long v12, v4

    .line 381
    .line 382
    shl-long v12, v12, v22

    .line 383
    add-long/2addr v10, v12

    .line 384
    .line 385
    add-int/lit8 v4, v7, 0xa

    .line 386
    .line 387
    aget-byte v4, v2, v4

    .line 388
    int-to-long v12, v4

    .line 389
    shl-long/2addr v12, v14

    .line 390
    add-long/2addr v10, v12

    .line 391
    .line 392
    add-int/lit8 v4, v7, 0x9

    .line 393
    .line 394
    aget-byte v4, v2, v4

    .line 395
    int-to-long v12, v4

    .line 396
    shl-long/2addr v12, v15

    .line 397
    add-long/2addr v10, v12

    .line 398
    .line 399
    add-int/lit8 v4, v7, 0x8

    .line 400
    .line 401
    aget-byte v4, v2, v4

    .line 402
    :goto_a
    int-to-long v12, v4

    .line 403
    add-long/2addr v10, v12

    .line 404
    move-wide v12, v8

    .line 405
    move-wide v14, v10

    .line 406
    .line 407
    goto/16 :goto_f

    .line 408
    .line 409
    :pswitch_3
    move/from16 v16, v11

    .line 410
    .line 411
    move/from16 v21, v12

    .line 412
    .line 413
    move/from16 v22, v13

    .line 414
    .line 415
    const/16 v17, 0x38

    .line 416
    .line 417
    const-wide/16 v18, -0x1

    .line 418
    .line 419
    const/16 v20, 0x30

    .line 420
    .line 421
    add-int/lit8 v4, v7, 0x6

    .line 422
    .line 423
    aget-byte v4, v2, v4

    .line 424
    int-to-long v8, v4

    .line 425
    .line 426
    shl-long v8, v8, v20

    .line 427
    .line 428
    add-int/lit8 v4, v7, 0x5

    .line 429
    .line 430
    aget-byte v4, v2, v4

    .line 431
    int-to-long v10, v4

    .line 432
    .line 433
    shl-long v10, v10, v21

    .line 434
    add-long/2addr v8, v10

    .line 435
    .line 436
    add-int/lit8 v4, v7, 0x4

    .line 437
    .line 438
    aget-byte v4, v2, v4

    .line 439
    int-to-long v10, v4

    .line 440
    .line 441
    shl-long v10, v10, v16

    .line 442
    add-long/2addr v8, v10

    .line 443
    .line 444
    add-int/lit8 v4, v7, 0x3

    .line 445
    .line 446
    aget-byte v4, v2, v4

    .line 447
    int-to-long v10, v4

    .line 448
    .line 449
    shl-long v10, v10, v22

    .line 450
    add-long/2addr v8, v10

    .line 451
    .line 452
    add-int/lit8 v4, v7, 0x2

    .line 453
    .line 454
    aget-byte v4, v2, v4

    .line 455
    int-to-long v10, v4

    .line 456
    shl-long/2addr v10, v14

    .line 457
    add-long/2addr v8, v10

    .line 458
    .line 459
    add-int/lit8 v4, v7, 0x1

    .line 460
    .line 461
    aget-byte v4, v2, v4

    .line 462
    int-to-long v10, v4

    .line 463
    shl-long/2addr v10, v15

    .line 464
    add-long/2addr v8, v10

    .line 465
    .line 466
    aget-byte v4, v2, v7

    .line 467
    int-to-long v10, v4

    .line 468
    add-long/2addr v8, v10

    .line 469
    .line 470
    add-int/lit8 v4, v7, 0xe

    .line 471
    .line 472
    aget-byte v4, v2, v4

    .line 473
    int-to-long v10, v4

    .line 474
    .line 475
    shl-long v10, v10, v17

    .line 476
    .line 477
    add-int/lit8 v4, v7, 0xd

    .line 478
    .line 479
    aget-byte v4, v2, v4

    .line 480
    int-to-long v12, v4

    .line 481
    .line 482
    shl-long v12, v12, v20

    .line 483
    add-long/2addr v10, v12

    .line 484
    .line 485
    add-int/lit8 v4, v7, 0xc

    .line 486
    .line 487
    aget-byte v4, v2, v4

    .line 488
    int-to-long v12, v4

    .line 489
    .line 490
    shl-long v12, v12, v21

    .line 491
    add-long/2addr v10, v12

    .line 492
    .line 493
    add-int/lit8 v4, v7, 0xb

    .line 494
    .line 495
    aget-byte v4, v2, v4

    .line 496
    int-to-long v12, v4

    .line 497
    .line 498
    shl-long v12, v12, v16

    .line 499
    add-long/2addr v10, v12

    .line 500
    .line 501
    add-int/lit8 v4, v7, 0xa

    .line 502
    .line 503
    aget-byte v4, v2, v4

    .line 504
    int-to-long v12, v4

    .line 505
    .line 506
    shl-long v12, v12, v22

    .line 507
    add-long/2addr v10, v12

    .line 508
    .line 509
    add-int/lit8 v4, v7, 0x9

    .line 510
    .line 511
    aget-byte v4, v2, v4

    .line 512
    int-to-long v12, v4

    .line 513
    shl-long/2addr v12, v14

    .line 514
    add-long/2addr v10, v12

    .line 515
    .line 516
    add-int/lit8 v4, v7, 0x8

    .line 517
    .line 518
    aget-byte v4, v2, v4

    .line 519
    int-to-long v12, v4

    .line 520
    shl-long/2addr v12, v15

    .line 521
    add-long/2addr v10, v12

    .line 522
    .line 523
    add-int/lit8 v4, v7, 0x7

    .line 524
    .line 525
    aget-byte v4, v2, v4

    .line 526
    goto :goto_a

    .line 527
    .line 528
    :pswitch_4
    move/from16 v16, v11

    .line 529
    .line 530
    move/from16 v21, v12

    .line 531
    .line 532
    move/from16 v22, v13

    .line 533
    .line 534
    const/16 v17, 0x38

    .line 535
    .line 536
    const-wide/16 v18, -0x1

    .line 537
    .line 538
    const/16 v20, 0x30

    .line 539
    .line 540
    add-int/lit8 v4, v7, 0x5

    .line 541
    .line 542
    aget-byte v4, v2, v4

    .line 543
    int-to-long v8, v4

    .line 544
    .line 545
    shl-long v8, v8, v21

    .line 546
    .line 547
    add-int/lit8 v4, v7, 0x4

    .line 548
    .line 549
    aget-byte v4, v2, v4

    .line 550
    int-to-long v10, v4

    .line 551
    .line 552
    shl-long v10, v10, v16

    .line 553
    add-long/2addr v8, v10

    .line 554
    .line 555
    add-int/lit8 v4, v7, 0x3

    .line 556
    .line 557
    aget-byte v4, v2, v4

    .line 558
    int-to-long v10, v4

    .line 559
    .line 560
    shl-long v10, v10, v22

    .line 561
    add-long/2addr v8, v10

    .line 562
    .line 563
    add-int/lit8 v4, v7, 0x2

    .line 564
    .line 565
    aget-byte v4, v2, v4

    .line 566
    int-to-long v10, v4

    .line 567
    shl-long/2addr v10, v14

    .line 568
    add-long/2addr v8, v10

    .line 569
    .line 570
    add-int/lit8 v4, v7, 0x1

    .line 571
    .line 572
    aget-byte v4, v2, v4

    .line 573
    int-to-long v10, v4

    .line 574
    shl-long/2addr v10, v15

    .line 575
    add-long/2addr v8, v10

    .line 576
    .line 577
    aget-byte v4, v2, v7

    .line 578
    int-to-long v10, v4

    .line 579
    add-long/2addr v8, v10

    .line 580
    .line 581
    add-int/lit8 v4, v7, 0xd

    .line 582
    .line 583
    aget-byte v4, v2, v4

    .line 584
    int-to-long v10, v4

    .line 585
    .line 586
    shl-long v10, v10, v17

    .line 587
    .line 588
    add-int/lit8 v4, v7, 0xc

    .line 589
    .line 590
    aget-byte v4, v2, v4

    .line 591
    int-to-long v12, v4

    .line 592
    .line 593
    shl-long v12, v12, v20

    .line 594
    add-long/2addr v10, v12

    .line 595
    .line 596
    add-int/lit8 v4, v7, 0xb

    .line 597
    .line 598
    aget-byte v4, v2, v4

    .line 599
    int-to-long v12, v4

    .line 600
    .line 601
    shl-long v12, v12, v21

    .line 602
    add-long/2addr v10, v12

    .line 603
    .line 604
    add-int/lit8 v4, v7, 0xa

    .line 605
    .line 606
    aget-byte v4, v2, v4

    .line 607
    int-to-long v12, v4

    .line 608
    .line 609
    shl-long v12, v12, v16

    .line 610
    add-long/2addr v10, v12

    .line 611
    .line 612
    add-int/lit8 v4, v7, 0x9

    .line 613
    .line 614
    aget-byte v4, v2, v4

    .line 615
    int-to-long v12, v4

    .line 616
    .line 617
    shl-long v12, v12, v22

    .line 618
    add-long/2addr v10, v12

    .line 619
    .line 620
    add-int/lit8 v4, v7, 0x8

    .line 621
    .line 622
    aget-byte v4, v2, v4

    .line 623
    int-to-long v12, v4

    .line 624
    shl-long/2addr v12, v14

    .line 625
    add-long/2addr v10, v12

    .line 626
    .line 627
    add-int/lit8 v4, v7, 0x7

    .line 628
    .line 629
    aget-byte v4, v2, v4

    .line 630
    int-to-long v12, v4

    .line 631
    shl-long/2addr v12, v15

    .line 632
    add-long/2addr v10, v12

    .line 633
    .line 634
    add-int/lit8 v4, v7, 0x6

    .line 635
    .line 636
    aget-byte v4, v2, v4

    .line 637
    .line 638
    goto/16 :goto_a

    .line 639
    .line 640
    :pswitch_5
    move/from16 v16, v11

    .line 641
    .line 642
    move/from16 v21, v12

    .line 643
    .line 644
    move/from16 v22, v13

    .line 645
    .line 646
    const/16 v17, 0x38

    .line 647
    .line 648
    const-wide/16 v18, -0x1

    .line 649
    .line 650
    const/16 v20, 0x30

    .line 651
    .line 652
    add-int/lit8 v4, v7, 0x4

    .line 653
    .line 654
    aget-byte v4, v2, v4

    .line 655
    int-to-long v8, v4

    .line 656
    .line 657
    shl-long v8, v8, v16

    .line 658
    .line 659
    add-int/lit8 v4, v7, 0x3

    .line 660
    .line 661
    aget-byte v4, v2, v4

    .line 662
    int-to-long v10, v4

    .line 663
    .line 664
    shl-long v10, v10, v22

    .line 665
    add-long/2addr v8, v10

    .line 666
    .line 667
    add-int/lit8 v4, v7, 0x2

    .line 668
    .line 669
    aget-byte v4, v2, v4

    .line 670
    int-to-long v10, v4

    .line 671
    shl-long/2addr v10, v14

    .line 672
    add-long/2addr v8, v10

    .line 673
    .line 674
    add-int/lit8 v4, v7, 0x1

    .line 675
    .line 676
    aget-byte v4, v2, v4

    .line 677
    int-to-long v10, v4

    .line 678
    shl-long/2addr v10, v15

    .line 679
    add-long/2addr v8, v10

    .line 680
    .line 681
    aget-byte v4, v2, v7

    .line 682
    int-to-long v10, v4

    .line 683
    add-long/2addr v8, v10

    .line 684
    .line 685
    add-int/lit8 v4, v7, 0xc

    .line 686
    .line 687
    aget-byte v4, v2, v4

    .line 688
    int-to-long v10, v4

    .line 689
    .line 690
    shl-long v10, v10, v17

    .line 691
    .line 692
    add-int/lit8 v4, v7, 0xb

    .line 693
    .line 694
    aget-byte v4, v2, v4

    .line 695
    int-to-long v12, v4

    .line 696
    .line 697
    shl-long v12, v12, v20

    .line 698
    add-long/2addr v10, v12

    .line 699
    .line 700
    add-int/lit8 v4, v7, 0xa

    .line 701
    .line 702
    aget-byte v4, v2, v4

    .line 703
    int-to-long v12, v4

    .line 704
    .line 705
    shl-long v12, v12, v21

    .line 706
    add-long/2addr v10, v12

    .line 707
    .line 708
    add-int/lit8 v4, v7, 0x9

    .line 709
    .line 710
    aget-byte v4, v2, v4

    .line 711
    int-to-long v12, v4

    .line 712
    .line 713
    shl-long v12, v12, v16

    .line 714
    add-long/2addr v10, v12

    .line 715
    .line 716
    add-int/lit8 v4, v7, 0x8

    .line 717
    .line 718
    aget-byte v4, v2, v4

    .line 719
    int-to-long v12, v4

    .line 720
    .line 721
    shl-long v12, v12, v22

    .line 722
    add-long/2addr v10, v12

    .line 723
    .line 724
    add-int/lit8 v4, v7, 0x7

    .line 725
    .line 726
    aget-byte v4, v2, v4

    .line 727
    int-to-long v12, v4

    .line 728
    shl-long/2addr v12, v14

    .line 729
    add-long/2addr v10, v12

    .line 730
    .line 731
    add-int/lit8 v4, v7, 0x6

    .line 732
    .line 733
    aget-byte v4, v2, v4

    .line 734
    int-to-long v12, v4

    .line 735
    shl-long/2addr v12, v15

    .line 736
    add-long/2addr v10, v12

    .line 737
    .line 738
    add-int/lit8 v4, v7, 0x5

    .line 739
    .line 740
    aget-byte v4, v2, v4

    .line 741
    .line 742
    goto/16 :goto_a

    .line 743
    .line 744
    :pswitch_6
    move/from16 v16, v11

    .line 745
    .line 746
    move/from16 v21, v12

    .line 747
    .line 748
    move/from16 v22, v13

    .line 749
    .line 750
    const/16 v17, 0x38

    .line 751
    .line 752
    const-wide/16 v18, -0x1

    .line 753
    .line 754
    const/16 v20, 0x30

    .line 755
    .line 756
    add-int/lit8 v4, v7, 0x3

    .line 757
    .line 758
    aget-byte v4, v2, v4

    .line 759
    .line 760
    shl-int/lit8 v4, v4, 0x18

    .line 761
    .line 762
    add-int/lit8 v8, v7, 0x2

    .line 763
    .line 764
    aget-byte v8, v2, v8

    .line 765
    shl-int/2addr v8, v14

    .line 766
    add-int/2addr v4, v8

    .line 767
    .line 768
    add-int/lit8 v8, v7, 0x1

    .line 769
    .line 770
    aget-byte v8, v2, v8

    .line 771
    shl-int/2addr v8, v15

    .line 772
    add-int/2addr v4, v8

    .line 773
    .line 774
    aget-byte v8, v2, v7

    .line 775
    add-int/2addr v4, v8

    .line 776
    int-to-long v8, v4

    .line 777
    .line 778
    add-int/lit8 v4, v7, 0xb

    .line 779
    .line 780
    aget-byte v4, v2, v4

    .line 781
    int-to-long v10, v4

    .line 782
    .line 783
    shl-long v10, v10, v17

    .line 784
    .line 785
    add-int/lit8 v4, v7, 0xa

    .line 786
    .line 787
    aget-byte v4, v2, v4

    .line 788
    int-to-long v12, v4

    .line 789
    .line 790
    shl-long v12, v12, v20

    .line 791
    add-long/2addr v10, v12

    .line 792
    .line 793
    add-int/lit8 v4, v7, 0x9

    .line 794
    .line 795
    aget-byte v4, v2, v4

    .line 796
    int-to-long v12, v4

    .line 797
    .line 798
    shl-long v12, v12, v21

    .line 799
    add-long/2addr v10, v12

    .line 800
    .line 801
    add-int/lit8 v4, v7, 0x8

    .line 802
    .line 803
    aget-byte v4, v2, v4

    .line 804
    int-to-long v12, v4

    .line 805
    .line 806
    shl-long v12, v12, v16

    .line 807
    add-long/2addr v10, v12

    .line 808
    .line 809
    add-int/lit8 v4, v7, 0x7

    .line 810
    .line 811
    aget-byte v4, v2, v4

    .line 812
    int-to-long v12, v4

    .line 813
    .line 814
    shl-long v12, v12, v22

    .line 815
    add-long/2addr v10, v12

    .line 816
    .line 817
    add-int/lit8 v4, v7, 0x6

    .line 818
    .line 819
    aget-byte v4, v2, v4

    .line 820
    int-to-long v12, v4

    .line 821
    shl-long/2addr v12, v14

    .line 822
    add-long/2addr v10, v12

    .line 823
    .line 824
    add-int/lit8 v4, v7, 0x5

    .line 825
    .line 826
    aget-byte v4, v2, v4

    .line 827
    int-to-long v12, v4

    .line 828
    shl-long/2addr v12, v15

    .line 829
    add-long/2addr v10, v12

    .line 830
    .line 831
    add-int/lit8 v4, v7, 0x4

    .line 832
    .line 833
    aget-byte v4, v2, v4

    .line 834
    .line 835
    goto/16 :goto_a

    .line 836
    .line 837
    :pswitch_7
    move/from16 v16, v11

    .line 838
    .line 839
    move/from16 v21, v12

    .line 840
    .line 841
    move/from16 v22, v13

    .line 842
    .line 843
    const/16 v17, 0x38

    .line 844
    .line 845
    const-wide/16 v18, -0x1

    .line 846
    .line 847
    const/16 v20, 0x30

    .line 848
    .line 849
    add-int/lit8 v4, v7, 0x2

    .line 850
    .line 851
    aget-byte v4, v2, v4

    .line 852
    shl-int/2addr v4, v14

    .line 853
    .line 854
    add-int/lit8 v8, v7, 0x1

    .line 855
    .line 856
    aget-byte v8, v2, v8

    .line 857
    shl-int/2addr v8, v15

    .line 858
    add-int/2addr v4, v8

    .line 859
    .line 860
    aget-byte v8, v2, v7

    .line 861
    add-int/2addr v4, v8

    .line 862
    int-to-long v8, v4

    .line 863
    .line 864
    add-int/lit8 v4, v7, 0xa

    .line 865
    .line 866
    aget-byte v4, v2, v4

    .line 867
    int-to-long v10, v4

    .line 868
    .line 869
    shl-long v10, v10, v17

    .line 870
    .line 871
    add-int/lit8 v4, v7, 0x9

    .line 872
    .line 873
    aget-byte v4, v2, v4

    .line 874
    int-to-long v12, v4

    .line 875
    .line 876
    shl-long v12, v12, v20

    .line 877
    add-long/2addr v10, v12

    .line 878
    .line 879
    add-int/lit8 v4, v7, 0x8

    .line 880
    .line 881
    aget-byte v4, v2, v4

    .line 882
    int-to-long v12, v4

    .line 883
    .line 884
    shl-long v12, v12, v21

    .line 885
    add-long/2addr v10, v12

    .line 886
    .line 887
    add-int/lit8 v4, v7, 0x7

    .line 888
    .line 889
    aget-byte v4, v2, v4

    .line 890
    int-to-long v12, v4

    .line 891
    .line 892
    shl-long v12, v12, v16

    .line 893
    add-long/2addr v10, v12

    .line 894
    .line 895
    add-int/lit8 v4, v7, 0x6

    .line 896
    .line 897
    aget-byte v4, v2, v4

    .line 898
    int-to-long v12, v4

    .line 899
    .line 900
    shl-long v12, v12, v22

    .line 901
    add-long/2addr v10, v12

    .line 902
    .line 903
    add-int/lit8 v4, v7, 0x5

    .line 904
    .line 905
    aget-byte v4, v2, v4

    .line 906
    int-to-long v12, v4

    .line 907
    shl-long/2addr v12, v14

    .line 908
    add-long/2addr v10, v12

    .line 909
    .line 910
    add-int/lit8 v4, v7, 0x4

    .line 911
    .line 912
    aget-byte v4, v2, v4

    .line 913
    int-to-long v12, v4

    .line 914
    shl-long/2addr v12, v15

    .line 915
    add-long/2addr v10, v12

    .line 916
    .line 917
    add-int/lit8 v4, v7, 0x3

    .line 918
    .line 919
    aget-byte v4, v2, v4

    .line 920
    .line 921
    goto/16 :goto_a

    .line 922
    .line 923
    :pswitch_8
    move/from16 v16, v11

    .line 924
    .line 925
    move/from16 v21, v12

    .line 926
    .line 927
    move/from16 v22, v13

    .line 928
    .line 929
    const/16 v17, 0x38

    .line 930
    .line 931
    const-wide/16 v18, -0x1

    .line 932
    .line 933
    const/16 v20, 0x30

    .line 934
    .line 935
    add-int/lit8 v4, v7, 0x1

    .line 936
    .line 937
    aget-byte v4, v2, v4

    .line 938
    shl-int/2addr v4, v15

    .line 939
    .line 940
    aget-byte v8, v2, v7

    .line 941
    add-int/2addr v4, v8

    .line 942
    int-to-long v8, v4

    .line 943
    .line 944
    add-int/lit8 v4, v7, 0x9

    .line 945
    .line 946
    aget-byte v4, v2, v4

    .line 947
    int-to-long v10, v4

    .line 948
    .line 949
    shl-long v10, v10, v17

    .line 950
    .line 951
    add-int/lit8 v4, v7, 0x8

    .line 952
    .line 953
    aget-byte v4, v2, v4

    .line 954
    int-to-long v12, v4

    .line 955
    .line 956
    shl-long v12, v12, v20

    .line 957
    add-long/2addr v10, v12

    .line 958
    .line 959
    add-int/lit8 v4, v7, 0x7

    .line 960
    .line 961
    aget-byte v4, v2, v4

    .line 962
    int-to-long v12, v4

    .line 963
    .line 964
    shl-long v12, v12, v21

    .line 965
    add-long/2addr v10, v12

    .line 966
    .line 967
    add-int/lit8 v4, v7, 0x6

    .line 968
    .line 969
    aget-byte v4, v2, v4

    .line 970
    int-to-long v12, v4

    .line 971
    .line 972
    shl-long v12, v12, v16

    .line 973
    add-long/2addr v10, v12

    .line 974
    .line 975
    add-int/lit8 v4, v7, 0x5

    .line 976
    .line 977
    aget-byte v4, v2, v4

    .line 978
    int-to-long v12, v4

    .line 979
    .line 980
    shl-long v12, v12, v22

    .line 981
    add-long/2addr v10, v12

    .line 982
    .line 983
    add-int/lit8 v4, v7, 0x4

    .line 984
    .line 985
    aget-byte v4, v2, v4

    .line 986
    int-to-long v12, v4

    .line 987
    shl-long/2addr v12, v14

    .line 988
    add-long/2addr v10, v12

    .line 989
    .line 990
    add-int/lit8 v4, v7, 0x3

    .line 991
    .line 992
    aget-byte v4, v2, v4

    .line 993
    int-to-long v12, v4

    .line 994
    shl-long/2addr v12, v15

    .line 995
    add-long/2addr v10, v12

    .line 996
    .line 997
    add-int/lit8 v4, v7, 0x2

    .line 998
    .line 999
    aget-byte v4, v2, v4

    .line 1000
    .line 1001
    goto/16 :goto_a

    .line 1002
    .line 1003
    :pswitch_9
    move/from16 v16, v11

    .line 1004
    .line 1005
    move/from16 v21, v12

    .line 1006
    .line 1007
    move/from16 v22, v13

    .line 1008
    .line 1009
    const/16 v17, 0x38

    .line 1010
    .line 1011
    const-wide/16 v18, -0x1

    .line 1012
    .line 1013
    const/16 v20, 0x30

    .line 1014
    .line 1015
    aget-byte v4, v2, v7

    .line 1016
    int-to-long v8, v4

    .line 1017
    .line 1018
    add-int/lit8 v4, v7, 0x8

    .line 1019
    .line 1020
    aget-byte v4, v2, v4

    .line 1021
    int-to-long v10, v4

    .line 1022
    .line 1023
    shl-long v10, v10, v17

    .line 1024
    .line 1025
    add-int/lit8 v4, v7, 0x7

    .line 1026
    .line 1027
    aget-byte v4, v2, v4

    .line 1028
    int-to-long v12, v4

    .line 1029
    .line 1030
    shl-long v12, v12, v20

    .line 1031
    add-long/2addr v10, v12

    .line 1032
    .line 1033
    add-int/lit8 v4, v7, 0x6

    .line 1034
    .line 1035
    aget-byte v4, v2, v4

    .line 1036
    int-to-long v12, v4

    .line 1037
    .line 1038
    shl-long v12, v12, v21

    .line 1039
    add-long/2addr v10, v12

    .line 1040
    .line 1041
    add-int/lit8 v4, v7, 0x5

    .line 1042
    .line 1043
    aget-byte v4, v2, v4

    .line 1044
    int-to-long v12, v4

    .line 1045
    .line 1046
    shl-long v12, v12, v16

    .line 1047
    add-long/2addr v10, v12

    .line 1048
    .line 1049
    add-int/lit8 v4, v7, 0x4

    .line 1050
    .line 1051
    aget-byte v4, v2, v4

    .line 1052
    int-to-long v12, v4

    .line 1053
    .line 1054
    shl-long v12, v12, v22

    .line 1055
    add-long/2addr v10, v12

    .line 1056
    .line 1057
    add-int/lit8 v4, v7, 0x3

    .line 1058
    .line 1059
    aget-byte v4, v2, v4

    .line 1060
    int-to-long v12, v4

    .line 1061
    shl-long/2addr v12, v14

    .line 1062
    add-long/2addr v10, v12

    .line 1063
    .line 1064
    add-int/lit8 v4, v7, 0x2

    .line 1065
    .line 1066
    aget-byte v4, v2, v4

    .line 1067
    int-to-long v12, v4

    .line 1068
    shl-long/2addr v12, v15

    .line 1069
    add-long/2addr v10, v12

    .line 1070
    .line 1071
    add-int/lit8 v4, v7, 0x1

    .line 1072
    .line 1073
    aget-byte v4, v2, v4

    .line 1074
    .line 1075
    goto/16 :goto_a

    .line 1076
    .line 1077
    :pswitch_a
    move/from16 v16, v11

    .line 1078
    .line 1079
    move/from16 v21, v12

    .line 1080
    .line 1081
    move/from16 v22, v13

    .line 1082
    .line 1083
    const/16 v17, 0x38

    .line 1084
    .line 1085
    const-wide/16 v18, -0x1

    .line 1086
    .line 1087
    const/16 v20, 0x30

    .line 1088
    .line 1089
    add-int/lit8 v4, v7, 0x7

    .line 1090
    .line 1091
    aget-byte v4, v2, v4

    .line 1092
    int-to-long v8, v4

    .line 1093
    .line 1094
    shl-long v8, v8, v17

    .line 1095
    .line 1096
    add-int/lit8 v4, v7, 0x6

    .line 1097
    .line 1098
    aget-byte v4, v2, v4

    .line 1099
    int-to-long v10, v4

    .line 1100
    .line 1101
    shl-long v10, v10, v20

    .line 1102
    add-long/2addr v8, v10

    .line 1103
    .line 1104
    add-int/lit8 v4, v7, 0x5

    .line 1105
    .line 1106
    aget-byte v4, v2, v4

    .line 1107
    int-to-long v10, v4

    .line 1108
    .line 1109
    shl-long v10, v10, v21

    .line 1110
    add-long/2addr v8, v10

    .line 1111
    .line 1112
    add-int/lit8 v4, v7, 0x4

    .line 1113
    .line 1114
    aget-byte v4, v2, v4

    .line 1115
    int-to-long v10, v4

    .line 1116
    .line 1117
    shl-long v10, v10, v16

    .line 1118
    add-long/2addr v8, v10

    .line 1119
    .line 1120
    add-int/lit8 v4, v7, 0x3

    .line 1121
    .line 1122
    aget-byte v4, v2, v4

    .line 1123
    int-to-long v10, v4

    .line 1124
    .line 1125
    shl-long v10, v10, v22

    .line 1126
    add-long/2addr v8, v10

    .line 1127
    .line 1128
    add-int/lit8 v4, v7, 0x2

    .line 1129
    .line 1130
    aget-byte v4, v2, v4

    .line 1131
    int-to-long v10, v4

    .line 1132
    shl-long/2addr v10, v14

    .line 1133
    add-long/2addr v8, v10

    .line 1134
    .line 1135
    add-int/lit8 v4, v7, 0x1

    .line 1136
    .line 1137
    aget-byte v4, v2, v4

    .line 1138
    int-to-long v10, v4

    .line 1139
    shl-long/2addr v10, v15

    .line 1140
    add-long/2addr v8, v10

    .line 1141
    .line 1142
    aget-byte v4, v2, v7

    .line 1143
    :goto_b
    int-to-long v10, v4

    .line 1144
    add-long/2addr v8, v10

    .line 1145
    :goto_c
    move-wide v12, v8

    .line 1146
    .line 1147
    move-wide/from16 v14, v18

    .line 1148
    .line 1149
    goto/16 :goto_f

    .line 1150
    .line 1151
    :pswitch_b
    move/from16 v16, v11

    .line 1152
    .line 1153
    move/from16 v21, v12

    .line 1154
    .line 1155
    move/from16 v22, v13

    .line 1156
    .line 1157
    const-wide/16 v18, -0x1

    .line 1158
    .line 1159
    const/16 v20, 0x30

    .line 1160
    .line 1161
    add-int/lit8 v4, v7, 0x6

    .line 1162
    .line 1163
    aget-byte v4, v2, v4

    .line 1164
    int-to-long v8, v4

    .line 1165
    .line 1166
    shl-long v8, v8, v20

    .line 1167
    .line 1168
    add-int/lit8 v4, v7, 0x5

    .line 1169
    .line 1170
    aget-byte v4, v2, v4

    .line 1171
    int-to-long v10, v4

    .line 1172
    .line 1173
    shl-long v10, v10, v21

    .line 1174
    add-long/2addr v8, v10

    .line 1175
    .line 1176
    add-int/lit8 v4, v7, 0x4

    .line 1177
    .line 1178
    aget-byte v4, v2, v4

    .line 1179
    int-to-long v10, v4

    .line 1180
    .line 1181
    shl-long v10, v10, v16

    .line 1182
    add-long/2addr v8, v10

    .line 1183
    .line 1184
    add-int/lit8 v4, v7, 0x3

    .line 1185
    .line 1186
    aget-byte v4, v2, v4

    .line 1187
    int-to-long v10, v4

    .line 1188
    .line 1189
    shl-long v10, v10, v22

    .line 1190
    add-long/2addr v8, v10

    .line 1191
    .line 1192
    add-int/lit8 v4, v7, 0x2

    .line 1193
    .line 1194
    aget-byte v4, v2, v4

    .line 1195
    int-to-long v10, v4

    .line 1196
    shl-long/2addr v10, v14

    .line 1197
    add-long/2addr v8, v10

    .line 1198
    .line 1199
    add-int/lit8 v4, v7, 0x1

    .line 1200
    .line 1201
    aget-byte v4, v2, v4

    .line 1202
    int-to-long v10, v4

    .line 1203
    shl-long/2addr v10, v15

    .line 1204
    add-long/2addr v8, v10

    .line 1205
    .line 1206
    aget-byte v4, v2, v7

    .line 1207
    goto :goto_b

    .line 1208
    .line 1209
    :pswitch_c
    move/from16 v16, v11

    .line 1210
    .line 1211
    move/from16 v21, v12

    .line 1212
    .line 1213
    move/from16 v22, v13

    .line 1214
    .line 1215
    const-wide/16 v18, -0x1

    .line 1216
    .line 1217
    add-int/lit8 v4, v7, 0x5

    .line 1218
    .line 1219
    aget-byte v4, v2, v4

    .line 1220
    int-to-long v8, v4

    .line 1221
    .line 1222
    shl-long v8, v8, v21

    .line 1223
    .line 1224
    add-int/lit8 v4, v7, 0x4

    .line 1225
    .line 1226
    aget-byte v4, v2, v4

    .line 1227
    int-to-long v10, v4

    .line 1228
    .line 1229
    shl-long v10, v10, v16

    .line 1230
    add-long/2addr v8, v10

    .line 1231
    .line 1232
    add-int/lit8 v4, v7, 0x3

    .line 1233
    .line 1234
    aget-byte v4, v2, v4

    .line 1235
    int-to-long v10, v4

    .line 1236
    .line 1237
    shl-long v10, v10, v22

    .line 1238
    add-long/2addr v8, v10

    .line 1239
    .line 1240
    add-int/lit8 v4, v7, 0x2

    .line 1241
    .line 1242
    aget-byte v4, v2, v4

    .line 1243
    int-to-long v10, v4

    .line 1244
    shl-long/2addr v10, v14

    .line 1245
    add-long/2addr v8, v10

    .line 1246
    .line 1247
    add-int/lit8 v4, v7, 0x1

    .line 1248
    .line 1249
    aget-byte v4, v2, v4

    .line 1250
    int-to-long v10, v4

    .line 1251
    shl-long/2addr v10, v15

    .line 1252
    add-long/2addr v8, v10

    .line 1253
    .line 1254
    aget-byte v4, v2, v7

    .line 1255
    goto :goto_b

    .line 1256
    .line 1257
    :pswitch_d
    move/from16 v16, v11

    .line 1258
    .line 1259
    move/from16 v22, v13

    .line 1260
    .line 1261
    const-wide/16 v18, -0x1

    .line 1262
    .line 1263
    add-int/lit8 v4, v7, 0x4

    .line 1264
    .line 1265
    aget-byte v4, v2, v4

    .line 1266
    int-to-long v8, v4

    .line 1267
    .line 1268
    shl-long v8, v8, v16

    .line 1269
    .line 1270
    add-int/lit8 v4, v7, 0x3

    .line 1271
    .line 1272
    aget-byte v4, v2, v4

    .line 1273
    int-to-long v10, v4

    .line 1274
    .line 1275
    shl-long v10, v10, v22

    .line 1276
    add-long/2addr v8, v10

    .line 1277
    .line 1278
    add-int/lit8 v4, v7, 0x2

    .line 1279
    .line 1280
    aget-byte v4, v2, v4

    .line 1281
    int-to-long v10, v4

    .line 1282
    shl-long/2addr v10, v14

    .line 1283
    add-long/2addr v8, v10

    .line 1284
    .line 1285
    add-int/lit8 v4, v7, 0x1

    .line 1286
    .line 1287
    aget-byte v4, v2, v4

    .line 1288
    int-to-long v10, v4

    .line 1289
    shl-long/2addr v10, v15

    .line 1290
    add-long/2addr v8, v10

    .line 1291
    .line 1292
    aget-byte v4, v2, v7

    .line 1293
    .line 1294
    goto/16 :goto_b

    .line 1295
    .line 1296
    :pswitch_e
    move/from16 v16, v11

    .line 1297
    .line 1298
    move/from16 v22, v13

    .line 1299
    .line 1300
    const-wide/16 v18, -0x1

    .line 1301
    .line 1302
    add-int/lit8 v4, v7, 0x3

    .line 1303
    .line 1304
    aget-byte v4, v2, v4

    .line 1305
    .line 1306
    shl-int/lit8 v4, v4, 0x18

    .line 1307
    .line 1308
    add-int/lit8 v8, v7, 0x2

    .line 1309
    .line 1310
    aget-byte v8, v2, v8

    .line 1311
    shl-int/2addr v8, v14

    .line 1312
    add-int/2addr v4, v8

    .line 1313
    .line 1314
    add-int/lit8 v8, v7, 0x1

    .line 1315
    .line 1316
    aget-byte v8, v2, v8

    .line 1317
    shl-int/2addr v8, v15

    .line 1318
    add-int/2addr v4, v8

    .line 1319
    .line 1320
    aget-byte v8, v2, v7

    .line 1321
    :goto_d
    add-int/2addr v4, v8

    .line 1322
    :goto_e
    int-to-long v8, v4

    .line 1323
    .line 1324
    goto/16 :goto_c

    .line 1325
    .line 1326
    :pswitch_f
    move/from16 v16, v11

    .line 1327
    .line 1328
    const-wide/16 v18, -0x1

    .line 1329
    .line 1330
    add-int/lit8 v4, v7, 0x2

    .line 1331
    .line 1332
    aget-byte v4, v2, v4

    .line 1333
    shl-int/2addr v4, v14

    .line 1334
    .line 1335
    add-int/lit8 v8, v7, 0x1

    .line 1336
    .line 1337
    aget-byte v8, v2, v8

    .line 1338
    shl-int/2addr v8, v15

    .line 1339
    add-int/2addr v4, v8

    .line 1340
    .line 1341
    aget-byte v8, v2, v7

    .line 1342
    goto :goto_d

    .line 1343
    .line 1344
    :pswitch_10
    move/from16 v16, v11

    .line 1345
    .line 1346
    const-wide/16 v18, -0x1

    .line 1347
    .line 1348
    add-int/lit8 v4, v7, 0x1

    .line 1349
    .line 1350
    aget-byte v4, v2, v4

    .line 1351
    shl-int/2addr v4, v15

    .line 1352
    .line 1353
    aget-byte v8, v2, v7

    .line 1354
    goto :goto_d

    .line 1355
    .line 1356
    :pswitch_11
    move/from16 v16, v11

    .line 1357
    .line 1358
    const-wide/16 v18, -0x1

    .line 1359
    .line 1360
    aget-byte v4, v2, v7

    .line 1361
    goto :goto_e

    .line 1362
    .line 1363
    :goto_f
    cmp-long v4, v12, v18

    .line 1364
    .line 1365
    if-eqz v4, :cond_15

    .line 1366
    .line 1367
    cmp-long v4, v14, v18

    .line 1368
    .line 1369
    if-eqz v4, :cond_13

    .line 1370
    .line 1371
    xor-long v8, v12, v14

    .line 1372
    .line 1373
    ushr-long v10, v8, v16

    .line 1374
    xor-long/2addr v8, v10

    .line 1375
    long-to-int v4, v8

    .line 1376
    .line 1377
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 1378
    array-length v9, v8

    .line 1379
    sub-int/2addr v9, v5

    .line 1380
    and-int/2addr v4, v9

    .line 1381
    .line 1382
    aget-object v5, v8, v4

    .line 1383
    .line 1384
    if-nez v5, :cond_12

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getLatin1String(II)Ljava/lang/String;

    .line 1388
    move-result-object v11

    .line 1389
    .line 1390
    new-instance v10, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 1391
    .line 1392
    .line 1393
    invoke-direct/range {v10 .. v15}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;-><init>(Ljava/lang/String;JJ)V

    .line 1394
    .line 1395
    aput-object v10, v8, v4

    .line 1396
    return-object v11

    .line 1397
    .line 1398
    :cond_12
    iget-wide v8, v5, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    .line 1399
    .line 1400
    cmp-long v4, v8, v12

    .line 1401
    .line 1402
    if-nez v4, :cond_15

    .line 1403
    .line 1404
    iget-wide v8, v5, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    .line 1405
    .line 1406
    cmp-long v4, v8, v14

    .line 1407
    .line 1408
    if-nez v4, :cond_15

    .line 1409
    .line 1410
    iget-object v1, v5, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    .line 1411
    return-object v1

    .line 1412
    .line 1413
    :cond_13
    ushr-long v8, v12, v16

    .line 1414
    xor-long/2addr v8, v12

    .line 1415
    long-to-int v4, v8

    .line 1416
    .line 1417
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 1418
    array-length v9, v8

    .line 1419
    sub-int/2addr v9, v5

    .line 1420
    and-int/2addr v4, v9

    .line 1421
    .line 1422
    aget-object v5, v8, v4

    .line 1423
    .line 1424
    if-nez v5, :cond_14

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getLatin1String(II)Ljava/lang/String;

    .line 1428
    move-result-object v1

    .line 1429
    .line 1430
    new-instance v2, Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 1431
    .line 1432
    .line 1433
    invoke-direct {v2, v1, v12, v13}, Lcom/alibaba/fastjson2/util/NameCacheEntry;-><init>(Ljava/lang/String;J)V

    .line 1434
    .line 1435
    aput-object v2, v8, v4

    .line 1436
    return-object v1

    .line 1437
    .line 1438
    :cond_14
    iget-wide v8, v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    .line 1439
    .line 1440
    cmp-long v4, v8, v12

    .line 1441
    .line 1442
    if-nez v4, :cond_15

    .line 1443
    .line 1444
    iget-object v1, v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;

    .line 1445
    return-object v1

    .line 1446
    .line 1447
    :cond_15
    if-eqz v3, :cond_1b

    .line 1448
    .line 1449
    sget v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 1450
    .line 1451
    const/16 v4, 0x22

    .line 1452
    .line 1453
    if-ge v3, v4, :cond_1a

    .line 1454
    .line 1455
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 1456
    .line 1457
    if-nez v3, :cond_16

    .line 1458
    .line 1459
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1460
    .line 1461
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 1462
    const/4 v5, 0x0

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    move-result-object v3

    .line 1467
    .line 1468
    check-cast v3, [C

    .line 1469
    .line 1470
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 1471
    .line 1472
    :cond_16
    if-eqz v3, :cond_17

    .line 1473
    array-length v4, v3

    .line 1474
    .line 1475
    if-ge v4, v1, :cond_18

    .line 1476
    .line 1477
    :cond_17
    new-array v3, v1, [C

    .line 1478
    .line 1479
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 1480
    :cond_18
    move v4, v6

    .line 1481
    .line 1482
    :goto_10
    if-ge v4, v1, :cond_19

    .line 1483
    .line 1484
    add-int v5, v7, v4

    .line 1485
    .line 1486
    aget-byte v5, v2, v5

    .line 1487
    int-to-char v5, v5

    .line 1488
    .line 1489
    aput-char v5, v3, v4

    .line 1490
    .line 1491
    add-int/lit8 v4, v4, 0x1

    .line 1492
    goto :goto_10

    .line 1493
    .line 1494
    :cond_19
    new-instance v2, Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    invoke-direct {v2, v3, v6, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1498
    return-object v2

    .line 1499
    .line 1500
    :cond_1a
    new-instance v3, Ljava/lang/String;

    .line 1501
    .line 1502
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 1503
    .line 1504
    .line 1505
    invoke-direct {v3, v2, v7, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1506
    return-object v3

    .line 1507
    .line 1508
    :cond_1b
    new-instance v3, Ljava/lang/String;

    .line 1509
    .line 1510
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1511
    .line 1512
    .line 1513
    invoke-direct {v3, v2, v7, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1514
    return-object v3

    .line 1515
    .line 1516
    .line 1517
    :cond_1c
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getFieldName()Ljava/lang/String;

    .line 1518
    move-result-object v1

    .line 1519
    return-object v1

    .line 1520
    .line 1521
    :cond_1d
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 1522
    .line 1523
    .line 1524
    invoke-static {v9, v1}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 1525
    move-result-object v1

    .line 1526
    throw v1

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
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
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
    .end packed-switch
.end method

.method public readFieldNameHashCode()J
    .locals 29

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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readFieldNameHashCodeUnquote()J

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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getFieldName()Ljava/lang/String;

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
    const/4 v3, 0x1

    .line 153
    .line 154
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 155
    const/4 v6, 0x0

    .line 156
    .line 157
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 158
    .line 159
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 160
    .line 161
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 162
    .line 163
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 164
    .line 165
    add-int/lit8 v9, v7, 0x9

    .line 166
    .line 167
    const/16 v15, 0x8

    .line 168
    .line 169
    move-wide/from16 v16, v4

    .line 170
    .line 171
    const/16 v4, 0x5c

    .line 172
    .line 173
    if-ge v9, v8, :cond_10

    .line 174
    .line 175
    aget-byte v5, v1, v7

    .line 176
    .line 177
    if-ne v5, v2, :cond_8

    .line 178
    move v5, v7

    .line 179
    .line 180
    move-wide/from16 v6, v16

    .line 181
    .line 182
    const/16 v18, 0x38

    .line 183
    .line 184
    const/16 v19, 0x30

    .line 185
    .line 186
    :goto_3
    const/16 v21, 0x28

    .line 187
    .line 188
    :goto_4
    const/16 v22, 0x20

    .line 189
    .line 190
    goto/16 :goto_7

    .line 191
    .line 192
    :cond_8
    const/16 v18, 0x38

    .line 193
    .line 194
    add-int/lit8 v10, v7, 0x1

    .line 195
    .line 196
    const/16 v19, 0x30

    .line 197
    .line 198
    aget-byte v11, v1, v10

    .line 199
    .line 200
    if-ne v11, v2, :cond_9

    .line 201
    .line 202
    if-eq v5, v4, :cond_9

    .line 203
    .line 204
    if-lez v5, :cond_9

    .line 205
    .line 206
    move/from16 v20, v7

    .line 207
    int-to-long v6, v5

    .line 208
    .line 209
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 210
    .line 211
    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 212
    .line 213
    add-int/lit8 v5, v20, 0x2

    .line 214
    goto :goto_3

    .line 215
    .line 216
    :cond_9
    move/from16 v20, v7

    .line 217
    .line 218
    add-int/lit8 v7, v20, 0x2

    .line 219
    .line 220
    aget-byte v6, v1, v7

    .line 221
    .line 222
    if-ne v6, v2, :cond_a

    .line 223
    .line 224
    if-eq v5, v4, :cond_a

    .line 225
    .line 226
    if-eq v11, v4, :cond_a

    .line 227
    .line 228
    if-ltz v5, :cond_a

    .line 229
    .line 230
    if-lez v11, :cond_a

    .line 231
    .line 232
    shl-int/lit8 v6, v11, 0x8

    .line 233
    add-int/2addr v6, v5

    .line 234
    int-to-long v5, v6

    .line 235
    const/4 v9, 0x2

    .line 236
    .line 237
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 238
    .line 239
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 240
    .line 241
    add-int/lit8 v7, v20, 0x3

    .line 242
    .line 243
    :goto_5
    move-wide/from16 v21, v5

    .line 244
    move v5, v7

    .line 245
    .line 246
    move-wide/from16 v6, v21

    .line 247
    goto :goto_3

    .line 248
    .line 249
    :cond_a
    add-int/lit8 v7, v20, 0x3

    .line 250
    .line 251
    aget-byte v10, v1, v7

    .line 252
    .line 253
    if-ne v10, v2, :cond_b

    .line 254
    .line 255
    if-eq v5, v4, :cond_b

    .line 256
    .line 257
    if-eq v11, v4, :cond_b

    .line 258
    .line 259
    if-eq v6, v4, :cond_b

    .line 260
    .line 261
    if-ltz v5, :cond_b

    .line 262
    .line 263
    if-ltz v11, :cond_b

    .line 264
    .line 265
    if-lez v6, :cond_b

    .line 266
    .line 267
    shl-int/lit8 v6, v6, 0x10

    .line 268
    .line 269
    shl-int/lit8 v9, v11, 0x8

    .line 270
    add-int/2addr v6, v9

    .line 271
    add-int/2addr v6, v5

    .line 272
    int-to-long v5, v6

    .line 273
    const/4 v9, 0x3

    .line 274
    .line 275
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 276
    .line 277
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 278
    .line 279
    add-int/lit8 v7, v20, 0x4

    .line 280
    goto :goto_5

    .line 281
    .line 282
    :cond_b
    add-int/lit8 v7, v20, 0x4

    .line 283
    .line 284
    const/16 v21, 0x28

    .line 285
    .line 286
    aget-byte v12, v1, v7

    .line 287
    .line 288
    if-ne v12, v2, :cond_c

    .line 289
    .line 290
    if-eq v5, v4, :cond_c

    .line 291
    .line 292
    if-eq v11, v4, :cond_c

    .line 293
    .line 294
    if-eq v6, v4, :cond_c

    .line 295
    .line 296
    if-eq v10, v4, :cond_c

    .line 297
    .line 298
    if-ltz v5, :cond_c

    .line 299
    .line 300
    if-ltz v11, :cond_c

    .line 301
    .line 302
    if-ltz v6, :cond_c

    .line 303
    .line 304
    if-lez v10, :cond_c

    .line 305
    .line 306
    shl-int/lit8 v9, v10, 0x18

    .line 307
    .line 308
    shl-int/lit8 v6, v6, 0x10

    .line 309
    add-int/2addr v9, v6

    .line 310
    .line 311
    shl-int/lit8 v6, v11, 0x8

    .line 312
    add-int/2addr v9, v6

    .line 313
    add-int/2addr v9, v5

    .line 314
    int-to-long v5, v9

    .line 315
    const/4 v9, 0x4

    .line 316
    .line 317
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 318
    .line 319
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 320
    .line 321
    add-int/lit8 v7, v20, 0x5

    .line 322
    .line 323
    move-wide/from16 v27, v5

    .line 324
    move v5, v7

    .line 325
    .line 326
    move-wide/from16 v6, v27

    .line 327
    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :cond_c
    add-int/lit8 v7, v20, 0x5

    .line 331
    .line 332
    const/16 v22, 0x20

    .line 333
    .line 334
    aget-byte v14, v1, v7

    .line 335
    .line 336
    if-ne v14, v2, :cond_d

    .line 337
    .line 338
    if-eq v5, v4, :cond_d

    .line 339
    .line 340
    if-eq v11, v4, :cond_d

    .line 341
    .line 342
    if-eq v6, v4, :cond_d

    .line 343
    .line 344
    if-eq v10, v4, :cond_d

    .line 345
    .line 346
    if-eq v12, v4, :cond_d

    .line 347
    .line 348
    if-ltz v5, :cond_d

    .line 349
    .line 350
    if-ltz v11, :cond_d

    .line 351
    .line 352
    if-ltz v6, :cond_d

    .line 353
    .line 354
    if-ltz v10, :cond_d

    .line 355
    .line 356
    if-lez v12, :cond_d

    .line 357
    int-to-long v13, v12

    .line 358
    .line 359
    shl-long v12, v13, v22

    .line 360
    .line 361
    shl-int/lit8 v9, v10, 0x18

    .line 362
    int-to-long v9, v9

    .line 363
    add-long/2addr v12, v9

    .line 364
    .line 365
    shl-int/lit8 v6, v6, 0x10

    .line 366
    int-to-long v9, v6

    .line 367
    add-long/2addr v12, v9

    .line 368
    .line 369
    shl-int/lit8 v6, v11, 0x8

    .line 370
    int-to-long v9, v6

    .line 371
    add-long/2addr v12, v9

    .line 372
    int-to-long v5, v5

    .line 373
    add-long/2addr v5, v12

    .line 374
    const/4 v9, 0x5

    .line 375
    .line 376
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 377
    .line 378
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 379
    .line 380
    add-int/lit8 v7, v20, 0x6

    .line 381
    .line 382
    move-wide/from16 v27, v5

    .line 383
    move v5, v7

    .line 384
    .line 385
    move-wide/from16 v6, v27

    .line 386
    .line 387
    goto/16 :goto_7

    .line 388
    .line 389
    :cond_d
    add-int/lit8 v7, v20, 0x6

    .line 390
    .line 391
    aget-byte v13, v1, v7

    .line 392
    .line 393
    if-ne v13, v2, :cond_e

    .line 394
    .line 395
    if-eq v5, v4, :cond_e

    .line 396
    .line 397
    if-eq v11, v4, :cond_e

    .line 398
    .line 399
    if-eq v6, v4, :cond_e

    .line 400
    .line 401
    if-eq v10, v4, :cond_e

    .line 402
    .line 403
    if-eq v12, v4, :cond_e

    .line 404
    .line 405
    if-eq v14, v4, :cond_e

    .line 406
    .line 407
    if-ltz v5, :cond_e

    .line 408
    .line 409
    if-ltz v11, :cond_e

    .line 410
    .line 411
    if-ltz v6, :cond_e

    .line 412
    .line 413
    if-ltz v10, :cond_e

    .line 414
    .line 415
    if-ltz v12, :cond_e

    .line 416
    .line 417
    if-lez v14, :cond_e

    .line 418
    int-to-long v13, v14

    .line 419
    .line 420
    shl-long v13, v13, v21

    .line 421
    int-to-long v3, v12

    .line 422
    .line 423
    shl-long v3, v3, v22

    .line 424
    add-long/2addr v13, v3

    .line 425
    .line 426
    shl-int/lit8 v3, v10, 0x18

    .line 427
    int-to-long v3, v3

    .line 428
    add-long/2addr v13, v3

    .line 429
    .line 430
    shl-int/lit8 v3, v6, 0x10

    .line 431
    int-to-long v3, v3

    .line 432
    add-long/2addr v13, v3

    .line 433
    .line 434
    shl-int/lit8 v3, v11, 0x8

    .line 435
    int-to-long v3, v3

    .line 436
    add-long/2addr v13, v3

    .line 437
    int-to-long v3, v5

    .line 438
    add-long/2addr v3, v13

    .line 439
    const/4 v5, 0x6

    .line 440
    .line 441
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 442
    .line 443
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 444
    .line 445
    add-int/lit8 v7, v20, 0x7

    .line 446
    :goto_6
    move v5, v7

    .line 447
    move-wide v6, v3

    .line 448
    .line 449
    goto/16 :goto_7

    .line 450
    .line 451
    :cond_e
    add-int/lit8 v7, v20, 0x7

    .line 452
    .line 453
    aget-byte v3, v1, v7

    .line 454
    .line 455
    if-ne v3, v2, :cond_f

    .line 456
    .line 457
    const/16 v4, 0x5c

    .line 458
    .line 459
    if-eq v5, v4, :cond_f

    .line 460
    .line 461
    if-eq v11, v4, :cond_f

    .line 462
    .line 463
    if-eq v6, v4, :cond_f

    .line 464
    .line 465
    if-eq v10, v4, :cond_f

    .line 466
    .line 467
    if-eq v12, v4, :cond_f

    .line 468
    .line 469
    if-eq v14, v4, :cond_f

    .line 470
    .line 471
    if-eq v13, v4, :cond_f

    .line 472
    .line 473
    if-ltz v5, :cond_f

    .line 474
    .line 475
    if-ltz v11, :cond_f

    .line 476
    .line 477
    if-ltz v6, :cond_f

    .line 478
    .line 479
    if-ltz v10, :cond_f

    .line 480
    .line 481
    if-ltz v12, :cond_f

    .line 482
    .line 483
    if-ltz v14, :cond_f

    .line 484
    .line 485
    if-lez v13, :cond_f

    .line 486
    int-to-long v3, v13

    .line 487
    .line 488
    shl-long v3, v3, v19

    .line 489
    int-to-long v13, v14

    .line 490
    .line 491
    shl-long v13, v13, v21

    .line 492
    add-long/2addr v3, v13

    .line 493
    int-to-long v12, v12

    .line 494
    .line 495
    shl-long v12, v12, v22

    .line 496
    add-long/2addr v3, v12

    .line 497
    .line 498
    shl-int/lit8 v9, v10, 0x18

    .line 499
    int-to-long v9, v9

    .line 500
    add-long/2addr v3, v9

    .line 501
    .line 502
    shl-int/lit8 v6, v6, 0x10

    .line 503
    int-to-long v9, v6

    .line 504
    add-long/2addr v3, v9

    .line 505
    .line 506
    shl-int/lit8 v6, v11, 0x8

    .line 507
    int-to-long v9, v6

    .line 508
    add-long/2addr v3, v9

    .line 509
    int-to-long v5, v5

    .line 510
    add-long/2addr v3, v5

    .line 511
    const/4 v5, 0x7

    .line 512
    .line 513
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 514
    .line 515
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 516
    .line 517
    add-int/lit8 v7, v20, 0x8

    .line 518
    goto :goto_6

    .line 519
    .line 520
    :cond_f
    add-int/lit8 v7, v20, 0x8

    .line 521
    .line 522
    aget-byte v4, v1, v7

    .line 523
    .line 524
    if-ne v4, v2, :cond_11

    .line 525
    .line 526
    const/16 v4, 0x5c

    .line 527
    .line 528
    if-eq v5, v4, :cond_11

    .line 529
    .line 530
    if-eq v11, v4, :cond_11

    .line 531
    .line 532
    if-eq v6, v4, :cond_11

    .line 533
    .line 534
    if-eq v10, v4, :cond_11

    .line 535
    .line 536
    if-eq v12, v4, :cond_11

    .line 537
    .line 538
    if-eq v14, v4, :cond_11

    .line 539
    .line 540
    if-eq v13, v4, :cond_11

    .line 541
    .line 542
    if-eq v3, v4, :cond_11

    .line 543
    .line 544
    if-ltz v5, :cond_11

    .line 545
    .line 546
    if-ltz v11, :cond_11

    .line 547
    .line 548
    if-ltz v6, :cond_11

    .line 549
    .line 550
    if-ltz v10, :cond_11

    .line 551
    .line 552
    if-ltz v12, :cond_11

    .line 553
    .line 554
    if-ltz v14, :cond_11

    .line 555
    .line 556
    if-ltz v13, :cond_11

    .line 557
    .line 558
    if-lez v3, :cond_11

    .line 559
    int-to-long v3, v3

    .line 560
    .line 561
    shl-long v3, v3, v18

    .line 562
    .line 563
    move-wide/from16 v25, v3

    .line 564
    int-to-long v3, v13

    .line 565
    .line 566
    shl-long v3, v3, v19

    .line 567
    .line 568
    add-long v3, v25, v3

    .line 569
    int-to-long v13, v14

    .line 570
    .line 571
    shl-long v13, v13, v21

    .line 572
    add-long/2addr v3, v13

    .line 573
    int-to-long v12, v12

    .line 574
    .line 575
    shl-long v12, v12, v22

    .line 576
    add-long/2addr v3, v12

    .line 577
    .line 578
    shl-int/lit8 v10, v10, 0x18

    .line 579
    int-to-long v12, v10

    .line 580
    add-long/2addr v3, v12

    .line 581
    .line 582
    shl-int/lit8 v6, v6, 0x10

    .line 583
    int-to-long v12, v6

    .line 584
    add-long/2addr v3, v12

    .line 585
    .line 586
    shl-int/lit8 v6, v11, 0x8

    .line 587
    int-to-long v10, v6

    .line 588
    add-long/2addr v3, v10

    .line 589
    int-to-long v5, v5

    .line 590
    add-long/2addr v3, v5

    .line 591
    .line 592
    iput v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 593
    .line 594
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 595
    move-wide v6, v3

    .line 596
    move v5, v9

    .line 597
    goto :goto_7

    .line 598
    .line 599
    :cond_10
    move/from16 v20, v7

    .line 600
    .line 601
    const/16 v18, 0x38

    .line 602
    .line 603
    const/16 v19, 0x30

    .line 604
    .line 605
    const/16 v21, 0x28

    .line 606
    .line 607
    const/16 v22, 0x20

    .line 608
    .line 609
    :cond_11
    move-wide/from16 v6, v16

    .line 610
    .line 611
    move/from16 v5, v20

    .line 612
    .line 613
    :goto_7
    cmp-long v3, v6, v16

    .line 614
    .line 615
    const/16 v4, 0x78

    .line 616
    .line 617
    const/16 v9, 0x75

    .line 618
    .line 619
    if-nez v3, :cond_1b

    .line 620
    const/4 v3, 0x0

    .line 621
    .line 622
    :goto_8
    if-ge v5, v8, :cond_1b

    .line 623
    .line 624
    aget-byte v10, v1, v5

    .line 625
    .line 626
    if-ne v10, v2, :cond_13

    .line 627
    .line 628
    if-nez v3, :cond_12

    .line 629
    .line 630
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 631
    .line 632
    goto/16 :goto_f

    .line 633
    .line 634
    :cond_12
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 635
    .line 636
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 637
    .line 638
    add-int/lit8 v5, v5, 0x1

    .line 639
    .line 640
    goto/16 :goto_f

    .line 641
    .line 642
    :cond_13
    const/16 v11, 0xff

    .line 643
    .line 644
    const/16 v12, 0x5c

    .line 645
    .line 646
    if-ne v10, v12, :cond_17

    .line 647
    const/4 v12, 0x1

    .line 648
    .line 649
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 650
    .line 651
    add-int/lit8 v10, v5, 0x1

    .line 652
    .line 653
    aget-byte v12, v1, v10

    .line 654
    .line 655
    if-eq v12, v9, :cond_15

    .line 656
    .line 657
    if-eq v12, v4, :cond_14

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 661
    move-result v5

    .line 662
    .line 663
    move/from16 v27, v10

    .line 664
    move v10, v5

    .line 665
    .line 666
    move/from16 v5, v27

    .line 667
    goto :goto_9

    .line 668
    .line 669
    :cond_14
    add-int/lit8 v10, v5, 0x2

    .line 670
    .line 671
    aget-byte v10, v1, v10

    .line 672
    .line 673
    add-int/lit8 v5, v5, 0x3

    .line 674
    .line 675
    aget-byte v12, v1, v5

    .line 676
    .line 677
    .line 678
    invoke-static {v10, v12}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 679
    move-result v10

    .line 680
    goto :goto_9

    .line 681
    .line 682
    :cond_15
    add-int/lit8 v10, v5, 0x2

    .line 683
    .line 684
    aget-byte v10, v1, v10

    .line 685
    .line 686
    add-int/lit8 v12, v5, 0x3

    .line 687
    .line 688
    aget-byte v12, v1, v12

    .line 689
    .line 690
    add-int/lit8 v13, v5, 0x4

    .line 691
    .line 692
    aget-byte v13, v1, v13

    .line 693
    .line 694
    add-int/lit8 v5, v5, 0x5

    .line 695
    .line 696
    aget-byte v14, v1, v5

    .line 697
    .line 698
    .line 699
    invoke-static {v10, v12, v13, v14}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 700
    move-result v10

    .line 701
    .line 702
    :goto_9
    if-le v10, v11, :cond_16

    .line 703
    const/4 v12, 0x0

    .line 704
    .line 705
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 706
    .line 707
    :cond_16
    const/16 v23, 0x6

    .line 708
    goto :goto_a

    .line 709
    .line 710
    :cond_17
    const/16 v12, -0x3d

    .line 711
    .line 712
    if-eq v10, v12, :cond_18

    .line 713
    .line 714
    const/16 v12, -0x3e

    .line 715
    .line 716
    if-ne v10, v12, :cond_16

    .line 717
    .line 718
    :cond_18
    add-int/lit8 v5, v5, 0x1

    .line 719
    .line 720
    aget-byte v12, v1, v5

    .line 721
    .line 722
    and-int/lit8 v10, v10, 0x1f

    .line 723
    .line 724
    const/16 v23, 0x6

    .line 725
    .line 726
    shl-int/lit8 v10, v10, 0x6

    .line 727
    .line 728
    and-int/lit8 v12, v12, 0x3f

    .line 729
    or-int/2addr v10, v12

    .line 730
    int-to-char v10, v10

    .line 731
    const/4 v12, 0x0

    .line 732
    .line 733
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 734
    .line 735
    :goto_a
    if-gt v10, v11, :cond_1a

    .line 736
    .line 737
    if-ltz v10, :cond_1a

    .line 738
    .line 739
    if-ge v3, v15, :cond_1a

    .line 740
    .line 741
    if-nez v3, :cond_19

    .line 742
    .line 743
    if-nez v10, :cond_19

    .line 744
    goto :goto_e

    .line 745
    .line 746
    .line 747
    :cond_19
    packed-switch v3, :pswitch_data_0

    .line 748
    .line 749
    :goto_b
    const/16 v24, 0x1

    .line 750
    goto :goto_d

    .line 751
    :pswitch_0
    int-to-byte v10, v10

    .line 752
    int-to-long v10, v10

    .line 753
    .line 754
    shl-long v10, v10, v18

    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    const-wide v12, 0xffffffffffffffL

    .line 760
    :goto_c
    and-long/2addr v6, v12

    .line 761
    add-long/2addr v10, v6

    .line 762
    move-wide v6, v10

    .line 763
    goto :goto_b

    .line 764
    :pswitch_1
    int-to-byte v10, v10

    .line 765
    int-to-long v10, v10

    .line 766
    .line 767
    shl-long v10, v10, v19

    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    const-wide v12, 0xffffffffffffL

    .line 773
    goto :goto_c

    .line 774
    :pswitch_2
    int-to-byte v10, v10

    .line 775
    int-to-long v10, v10

    .line 776
    .line 777
    shl-long v10, v10, v21

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    const-wide v12, 0xffffffffffL

    .line 783
    goto :goto_c

    .line 784
    :pswitch_3
    int-to-byte v10, v10

    .line 785
    int-to-long v10, v10

    .line 786
    .line 787
    shl-long v10, v10, v22

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    const-wide v12, 0xffffffffL

    .line 793
    goto :goto_c

    .line 794
    :pswitch_4
    int-to-byte v10, v10

    .line 795
    .line 796
    shl-int/lit8 v10, v10, 0x18

    .line 797
    int-to-long v10, v10

    .line 798
    .line 799
    .line 800
    const-wide/32 v12, 0xffffff

    .line 801
    goto :goto_c

    .line 802
    :pswitch_5
    int-to-byte v10, v10

    .line 803
    .line 804
    shl-int/lit8 v10, v10, 0x10

    .line 805
    int-to-long v10, v10

    .line 806
    .line 807
    .line 808
    const-wide/32 v12, 0xffff

    .line 809
    goto :goto_c

    .line 810
    :pswitch_6
    int-to-byte v10, v10

    .line 811
    shl-int/2addr v10, v15

    .line 812
    int-to-long v10, v10

    .line 813
    .line 814
    const-wide/16 v12, 0xff

    .line 815
    goto :goto_c

    .line 816
    :pswitch_7
    int-to-byte v6, v10

    .line 817
    int-to-long v6, v6

    .line 818
    goto :goto_b

    .line 819
    .line 820
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 821
    .line 822
    add-int/lit8 v3, v3, 0x1

    .line 823
    .line 824
    goto/16 :goto_8

    .line 825
    .line 826
    :cond_1a
    :goto_e
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 827
    .line 828
    move-wide/from16 v6, v16

    .line 829
    .line 830
    :cond_1b
    :goto_f
    cmp-long v3, v6, v16

    .line 831
    .line 832
    if-eqz v3, :cond_1c

    .line 833
    goto :goto_14

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    :cond_1c
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 839
    const/4 v12, 0x0

    .line 840
    .line 841
    :goto_10
    aget-byte v3, v1, v5

    .line 842
    .line 843
    const/16 v10, 0x5c

    .line 844
    .line 845
    if-ne v3, v10, :cond_1f

    .line 846
    const/4 v11, 0x1

    .line 847
    .line 848
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 849
    .line 850
    add-int/lit8 v3, v5, 0x1

    .line 851
    .line 852
    aget-byte v11, v1, v3

    .line 853
    .line 854
    if-eq v11, v9, :cond_1e

    .line 855
    .line 856
    if-eq v11, v4, :cond_1d

    .line 857
    .line 858
    .line 859
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 860
    move-result v5

    .line 861
    .line 862
    :goto_11
    const/16 v24, 0x1

    .line 863
    goto :goto_13

    .line 864
    .line 865
    :cond_1d
    add-int/lit8 v3, v5, 0x2

    .line 866
    .line 867
    aget-byte v3, v1, v3

    .line 868
    .line 869
    add-int/lit8 v5, v5, 0x3

    .line 870
    .line 871
    aget-byte v11, v1, v5

    .line 872
    .line 873
    .line 874
    invoke-static {v3, v11}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 875
    move-result v3

    .line 876
    .line 877
    :goto_12
    move/from16 v24, v5

    .line 878
    move v5, v3

    .line 879
    .line 880
    move/from16 v3, v24

    .line 881
    goto :goto_11

    .line 882
    .line 883
    :cond_1e
    add-int/lit8 v3, v5, 0x2

    .line 884
    .line 885
    aget-byte v3, v1, v3

    .line 886
    .line 887
    add-int/lit8 v11, v5, 0x3

    .line 888
    .line 889
    aget-byte v11, v1, v11

    .line 890
    .line 891
    add-int/lit8 v13, v5, 0x4

    .line 892
    .line 893
    aget-byte v13, v1, v13

    .line 894
    .line 895
    add-int/lit8 v5, v5, 0x5

    .line 896
    .line 897
    aget-byte v14, v1, v5

    .line 898
    .line 899
    .line 900
    invoke-static {v3, v11, v13, v14}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 901
    move-result v3

    .line 902
    goto :goto_12

    .line 903
    .line 904
    :goto_13
    add-int/lit8 v3, v3, 0x1

    .line 905
    int-to-long v13, v5

    .line 906
    xor-long/2addr v6, v13

    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    const-wide v13, 0x100000001b3L

    .line 912
    mul-long/2addr v6, v13

    .line 913
    move v5, v3

    .line 914
    .line 915
    move/from16 v11, v22

    .line 916
    const/4 v13, 0x0

    .line 917
    .line 918
    goto/16 :goto_1b

    .line 919
    .line 920
    :cond_1f
    const/16 v24, 0x1

    .line 921
    .line 922
    if-ne v3, v2, :cond_27

    .line 923
    .line 924
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 925
    .line 926
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 927
    .line 928
    add-int/lit8 v5, v5, 0x1

    .line 929
    .line 930
    :goto_14
    const/16 v2, 0x1a

    .line 931
    .line 932
    if-ne v5, v8, :cond_20

    .line 933
    move v4, v2

    .line 934
    goto :goto_15

    .line 935
    .line 936
    :cond_20
    add-int/lit8 v3, v5, 0x1

    .line 937
    .line 938
    aget-byte v4, v1, v5

    .line 939
    move v5, v3

    .line 940
    .line 941
    :goto_15
    move/from16 v3, v22

    .line 942
    .line 943
    :goto_16
    if-gt v4, v3, :cond_22

    .line 944
    .line 945
    const-wide/16 v9, 0x1

    .line 946
    shl-long/2addr v9, v4

    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    const-wide v11, 0x100003701L

    .line 952
    and-long/2addr v9, v11

    .line 953
    .line 954
    cmp-long v3, v9, v16

    .line 955
    .line 956
    if-eqz v3, :cond_22

    .line 957
    .line 958
    if-ne v5, v8, :cond_21

    .line 959
    move v4, v2

    .line 960
    goto :goto_17

    .line 961
    .line 962
    :cond_21
    add-int/lit8 v3, v5, 0x1

    .line 963
    .line 964
    aget-byte v4, v1, v5

    .line 965
    move v5, v3

    .line 966
    .line 967
    :goto_17
    const/16 v3, 0x20

    .line 968
    goto :goto_16

    .line 969
    .line 970
    :cond_22
    const/16 v3, 0x3a

    .line 971
    .line 972
    if-ne v4, v3, :cond_26

    .line 973
    .line 974
    if-ne v5, v8, :cond_23

    .line 975
    move v4, v2

    .line 976
    goto :goto_18

    .line 977
    .line 978
    :cond_23
    add-int/lit8 v3, v5, 0x1

    .line 979
    .line 980
    aget-byte v4, v1, v5

    .line 981
    move v5, v3

    .line 982
    .line 983
    :goto_18
    const/16 v11, 0x20

    .line 984
    .line 985
    :goto_19
    if-gt v4, v11, :cond_25

    .line 986
    .line 987
    const-wide/16 v9, 0x1

    .line 988
    shl-long/2addr v9, v4

    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    const-wide v12, 0x100003701L

    .line 994
    and-long/2addr v9, v12

    .line 995
    .line 996
    cmp-long v3, v9, v16

    .line 997
    .line 998
    if-eqz v3, :cond_25

    .line 999
    .line 1000
    if-ne v5, v8, :cond_24

    .line 1001
    move v4, v2

    .line 1002
    goto :goto_19

    .line 1003
    .line 1004
    :cond_24
    add-int/lit8 v3, v5, 0x1

    .line 1005
    .line 1006
    aget-byte v4, v1, v5

    .line 1007
    move v5, v3

    .line 1008
    goto :goto_19

    .line 1009
    .line 1010
    :cond_25
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1011
    int-to-char v1, v4

    .line 1012
    .line 1013
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 1014
    return-wide v6

    .line 1015
    .line 1016
    :cond_26
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 1017
    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    .line 1023
    const-string v3, "expect \':\', but "

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    move-result-object v2

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 1037
    move-result-object v2

    .line 1038
    .line 1039
    .line 1040
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 1041
    throw v1

    .line 1042
    .line 1043
    :cond_27
    move/from16 v11, v22

    .line 1044
    .line 1045
    if-ltz v3, :cond_28

    .line 1046
    .line 1047
    add-int/lit8 v5, v5, 0x1

    .line 1048
    const/4 v13, 0x0

    .line 1049
    goto :goto_1a

    .line 1050
    .line 1051
    :cond_28
    and-int/lit16 v3, v3, 0xff

    .line 1052
    .line 1053
    shr-int/lit8 v13, v3, 0x4

    .line 1054
    .line 1055
    .line 1056
    packed-switch v13, :pswitch_data_1

    .line 1057
    .line 1058
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 1059
    .line 1060
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1064
    .line 1065
    const-string v3, "malformed input around byte "

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1075
    move-result-object v2

    .line 1076
    .line 1077
    .line 1078
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 1079
    throw v1

    .line 1080
    .line 1081
    :pswitch_8
    add-int/lit8 v13, v5, 0x1

    .line 1082
    .line 1083
    aget-byte v13, v1, v13

    .line 1084
    .line 1085
    add-int/lit8 v14, v5, 0x2

    .line 1086
    .line 1087
    aget-byte v14, v1, v14

    .line 1088
    .line 1089
    .line 1090
    invoke-static {v3, v13, v14, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(IIII)I

    .line 1091
    move-result v3

    .line 1092
    .line 1093
    add-int/lit8 v5, v5, 0x3

    .line 1094
    const/4 v13, 0x0

    .line 1095
    .line 1096
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 1097
    goto :goto_1a

    .line 1098
    :pswitch_9
    const/4 v13, 0x0

    .line 1099
    .line 1100
    add-int/lit8 v14, v5, 0x1

    .line 1101
    .line 1102
    aget-byte v14, v1, v14

    .line 1103
    .line 1104
    .line 1105
    invoke-static {v3, v14, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(III)I

    .line 1106
    move-result v3

    .line 1107
    .line 1108
    add-int/lit8 v5, v5, 0x2

    .line 1109
    .line 1110
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 1111
    :goto_1a
    int-to-long v14, v3

    .line 1112
    xor-long/2addr v6, v14

    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    const-wide v14, 0x100000001b3L

    .line 1118
    mul-long/2addr v6, v14

    .line 1119
    .line 1120
    :goto_1b
    add-int/lit8 v12, v12, 0x1

    .line 1121
    .line 1122
    move/from16 v22, v11

    .line 1123
    .line 1124
    goto/16 :goto_10

    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
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

    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public readFieldNameHashCodeUnquote()J
    .locals 28

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
    const/16 v6, 0x5d

    .line 26
    .line 27
    const/16 v7, 0x5b

    .line 28
    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v19, 0x100003701L

    .line 35
    .line 36
    const-wide/16 v21, 0x1

    .line 37
    .line 38
    const/16 v12, 0xc

    .line 39
    .line 40
    const/16 v13, 0x3a

    .line 41
    .line 42
    const/16 v14, 0x1a

    .line 43
    const/4 v15, 0x1

    .line 44
    .line 45
    if-gt v2, v3, :cond_c

    .line 46
    .line 47
    if-eq v8, v12, :cond_9

    .line 48
    .line 49
    if-eq v8, v1, :cond_9

    .line 50
    .line 51
    if-eq v8, v14, :cond_9

    .line 52
    .line 53
    if-eq v8, v13, :cond_9

    .line 54
    .line 55
    if-eq v8, v7, :cond_9

    .line 56
    .line 57
    if-eq v8, v6, :cond_9

    .line 58
    .line 59
    const/16 v6, 0x7b

    .line 60
    .line 61
    if-eq v8, v6, :cond_9

    .line 62
    .line 63
    const/16 v6, 0x7d

    .line 64
    .line 65
    if-eq v8, v6, :cond_9

    .line 66
    .line 67
    const/16 v6, 0x20

    .line 68
    .line 69
    if-eq v8, v6, :cond_9

    .line 70
    .line 71
    const/16 v6, 0x21

    .line 72
    .line 73
    if-eq v8, v6, :cond_9

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
    const/16 v6, 0x5c

    .line 85
    .line 86
    if-ne v8, v6, :cond_3

    .line 87
    .line 88
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 89
    .line 90
    add-int/lit8 v8, v2, 0x1

    .line 91
    .line 92
    aget-byte v7, v4, v2

    .line 93
    int-to-char v7, v7

    .line 94
    .line 95
    const/16 v1, 0x22

    .line 96
    .line 97
    if-eq v7, v1, :cond_2

    .line 98
    .line 99
    if-eq v7, v13, :cond_2

    .line 100
    .line 101
    const/16 v1, 0x40

    .line 102
    .line 103
    if-eq v7, v1, :cond_2

    .line 104
    .line 105
    if-eq v7, v6, :cond_2

    .line 106
    .line 107
    const/16 v1, 0x75

    .line 108
    .line 109
    if-eq v7, v1, :cond_1

    .line 110
    .line 111
    const/16 v1, 0x78

    .line 112
    .line 113
    if-eq v7, v1, :cond_0

    .line 114
    .line 115
    const/16 v1, 0x2a

    .line 116
    .line 117
    if-eq v7, v1, :cond_2

    .line 118
    .line 119
    const/16 v1, 0x2b

    .line 120
    .line 121
    if-eq v7, v1, :cond_2

    .line 122
    .line 123
    .line 124
    packed-switch v7, :pswitch_data_3

    .line 125
    .line 126
    .line 127
    packed-switch v7, :pswitch_data_4

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 131
    move-result v1

    .line 132
    move v2, v8

    .line 133
    move v8, v1

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :cond_0
    aget-byte v1, v4, v8

    .line 137
    .line 138
    add-int/lit8 v6, v2, 0x2

    .line 139
    .line 140
    aget-byte v6, v4, v6

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v6}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 144
    move-result v8

    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x3

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_1
    aget-byte v1, v4, v8

    .line 150
    .line 151
    add-int/lit8 v6, v2, 0x2

    .line 152
    .line 153
    aget-byte v6, v4, v6

    .line 154
    .line 155
    add-int/lit8 v7, v2, 0x3

    .line 156
    .line 157
    aget-byte v7, v4, v7

    .line 158
    .line 159
    add-int/lit8 v8, v2, 0x4

    .line 160
    .line 161
    aget-byte v8, v4, v8

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v6, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 165
    move-result v8

    .line 166
    .line 167
    add-int/lit8 v2, v2, 0x5

    .line 168
    goto :goto_1

    .line 169
    :cond_2
    :pswitch_0
    move v2, v8

    .line 170
    move v8, v7

    .line 171
    .line 172
    :cond_3
    :goto_1
    if-gez v8, :cond_5

    .line 173
    .line 174
    and-int/lit16 v1, v8, 0xff

    .line 175
    .line 176
    shr-int/lit8 v6, v1, 0x4

    .line 177
    .line 178
    .line 179
    packed-switch v6, :pswitch_data_5

    .line 180
    .line 181
    shr-int/lit8 v1, v8, 0x3

    .line 182
    const/4 v6, -0x2

    .line 183
    .line 184
    if-ne v1, v6, :cond_4

    .line 185
    .line 186
    aget-byte v1, v4, v2

    .line 187
    .line 188
    add-int/lit8 v6, v2, 0x1

    .line 189
    .line 190
    aget-byte v6, v4, v6

    .line 191
    .line 192
    add-int/lit8 v7, v2, 0x2

    .line 193
    .line 194
    aget-byte v7, v4, v7

    .line 195
    .line 196
    shl-int/lit8 v8, v8, 0x12

    .line 197
    shl-int/2addr v1, v12

    .line 198
    xor-int/2addr v1, v8

    .line 199
    .line 200
    shl-int/lit8 v6, v6, 0x6

    .line 201
    xor-int/2addr v1, v6

    .line 202
    .line 203
    .line 204
    const v6, 0x381f80

    .line 205
    xor-int/2addr v6, v7

    .line 206
    .line 207
    xor-int v8, v1, v6

    .line 208
    goto :goto_2

    .line 209
    .line 210
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 211
    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    const-string v4, "malformed input around byte "

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v2

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 231
    throw v1

    .line 232
    .line 233
    :pswitch_1
    aget-byte v6, v4, v2

    .line 234
    .line 235
    add-int/lit8 v7, v2, 0x1

    .line 236
    .line 237
    aget-byte v7, v4, v7

    .line 238
    .line 239
    .line 240
    invoke-static {v1, v6, v7, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(IIII)I

    .line 241
    move-result v8

    .line 242
    .line 243
    add-int/lit8 v2, v2, 0x2

    .line 244
    goto :goto_2

    .line 245
    .line 246
    :pswitch_2
    add-int/lit8 v6, v2, 0x1

    .line 247
    .line 248
    aget-byte v2, v4, v2

    .line 249
    .line 250
    .line 251
    invoke-static {v1, v2, v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(III)I

    .line 252
    move-result v8

    .line 253
    move v2, v6

    .line 254
    .line 255
    :cond_5
    :goto_2
    const/16 v1, 0xff

    .line 256
    .line 257
    if-gt v8, v1, :cond_8

    .line 258
    .line 259
    const/16 v1, 0x8

    .line 260
    .line 261
    if-ge v9, v1, :cond_8

    .line 262
    .line 263
    if-nez v9, :cond_6

    .line 264
    .line 265
    if-nez v8, :cond_6

    .line 266
    goto :goto_6

    .line 267
    :cond_6
    int-to-byte v1, v8

    .line 268
    .line 269
    .line 270
    packed-switch v9, :pswitch_data_6

    .line 271
    goto :goto_4

    .line 272
    :pswitch_3
    int-to-long v6, v1

    .line 273
    .line 274
    const/16 v1, 0x38

    .line 275
    shl-long/2addr v6, v1

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    const-wide v12, 0xffffffffffffffL

    .line 281
    :goto_3
    and-long/2addr v10, v12

    .line 282
    add-long/2addr v10, v6

    .line 283
    goto :goto_4

    .line 284
    :pswitch_4
    int-to-long v6, v1

    .line 285
    .line 286
    const/16 v1, 0x30

    .line 287
    shl-long/2addr v6, v1

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    const-wide v12, 0xffffffffffffL

    .line 293
    goto :goto_3

    .line 294
    :pswitch_5
    int-to-long v6, v1

    .line 295
    .line 296
    const/16 v1, 0x28

    .line 297
    shl-long/2addr v6, v1

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    const-wide v12, 0xffffffffffL

    .line 303
    goto :goto_3

    .line 304
    :pswitch_6
    int-to-long v6, v1

    .line 305
    .line 306
    const/16 v24, 0x20

    .line 307
    .line 308
    shl-long v6, v6, v24

    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    const-wide v12, 0xffffffffL

    .line 314
    goto :goto_3

    .line 315
    .line 316
    :pswitch_7
    shl-int/lit8 v1, v1, 0x18

    .line 317
    int-to-long v6, v1

    .line 318
    .line 319
    .line 320
    const-wide/32 v12, 0xffffff

    .line 321
    goto :goto_3

    .line 322
    .line 323
    :pswitch_8
    shl-int/lit8 v1, v1, 0x10

    .line 324
    int-to-long v6, v1

    .line 325
    .line 326
    .line 327
    const-wide/32 v12, 0xffff

    .line 328
    goto :goto_3

    .line 329
    .line 330
    :pswitch_9
    shl-int/lit8 v1, v1, 0x8

    .line 331
    int-to-long v6, v1

    .line 332
    .line 333
    const-wide/16 v12, 0xff

    .line 334
    goto :goto_3

    .line 335
    :pswitch_a
    int-to-long v10, v1

    .line 336
    .line 337
    :goto_4
    if-ne v2, v3, :cond_7

    .line 338
    move v8, v14

    .line 339
    goto :goto_5

    .line 340
    .line 341
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .line 342
    .line 343
    aget-byte v2, v4, v2

    .line 344
    move v8, v2

    .line 345
    move v2, v1

    .line 346
    .line 347
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 348
    const/4 v1, 0x0

    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :cond_8
    :goto_6
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 353
    .line 354
    add-int/lit8 v2, v1, 0x1

    .line 355
    .line 356
    move-wide/from16 v10, v16

    .line 357
    goto :goto_8

    .line 358
    .line 359
    :cond_9
    :pswitch_b
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 360
    .line 361
    if-ne v8, v14, :cond_a

    .line 362
    move v1, v2

    .line 363
    goto :goto_7

    .line 364
    .line 365
    :cond_a
    add-int/lit8 v1, v2, -0x1

    .line 366
    .line 367
    :goto_7
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 368
    .line 369
    const/16 v6, 0x20

    .line 370
    .line 371
    if-gt v8, v6, :cond_c

    .line 372
    .line 373
    shl-long v5, v21, v8

    .line 374
    .line 375
    and-long v5, v5, v19

    .line 376
    .line 377
    cmp-long v1, v5, v16

    .line 378
    .line 379
    if-eqz v1, :cond_c

    .line 380
    .line 381
    if-ne v2, v3, :cond_b

    .line 382
    move v5, v14

    .line 383
    goto :goto_8

    .line 384
    .line 385
    :cond_b
    add-int/lit8 v1, v2, 0x1

    .line 386
    .line 387
    aget-byte v2, v4, v2

    .line 388
    int-to-char v2, v2

    .line 389
    move v5, v2

    .line 390
    move v2, v1

    .line 391
    goto :goto_8

    .line 392
    :cond_c
    move v5, v8

    .line 393
    .line 394
    :goto_8
    cmp-long v1, v10, v16

    .line 395
    .line 396
    if-eqz v1, :cond_d

    .line 397
    .line 398
    goto/16 :goto_13

    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :cond_d
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 404
    move-wide v10, v6

    .line 405
    const/4 v1, 0x0

    .line 406
    .line 407
    :goto_9
    const/16 v8, 0x5c

    .line 408
    .line 409
    if-ne v5, v8, :cond_12

    .line 410
    .line 411
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 412
    .line 413
    add-int/lit8 v5, v2, 0x1

    .line 414
    .line 415
    aget-byte v9, v4, v2

    .line 416
    .line 417
    const/16 v6, 0x22

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    const-wide v25, 0x100000001b3L

    .line 423
    .line 424
    if-eq v9, v6, :cond_10

    .line 425
    .line 426
    if-eq v9, v13, :cond_10

    .line 427
    .line 428
    const/16 v7, 0x40

    .line 429
    .line 430
    if-eq v9, v7, :cond_10

    .line 431
    .line 432
    if-eq v9, v8, :cond_10

    .line 433
    .line 434
    const/16 v7, 0x75

    .line 435
    .line 436
    if-eq v9, v7, :cond_f

    .line 437
    .line 438
    const/16 v7, 0x78

    .line 439
    .line 440
    if-eq v9, v7, :cond_e

    .line 441
    .line 442
    const/16 v2, 0x2a

    .line 443
    .line 444
    if-eq v9, v2, :cond_10

    .line 445
    .line 446
    const/16 v2, 0x2b

    .line 447
    .line 448
    if-eq v9, v2, :cond_10

    .line 449
    .line 450
    .line 451
    packed-switch v9, :pswitch_data_7

    .line 452
    .line 453
    .line 454
    packed-switch v9, :pswitch_data_8

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 458
    move-result v9

    .line 459
    goto :goto_a

    .line 460
    .line 461
    :cond_e
    aget-byte v5, v4, v5

    .line 462
    .line 463
    add-int/lit8 v7, v2, 0x2

    .line 464
    .line 465
    aget-byte v7, v4, v7

    .line 466
    .line 467
    .line 468
    invoke-static {v5, v7}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 469
    move-result v9

    .line 470
    .line 471
    add-int/lit8 v5, v2, 0x3

    .line 472
    goto :goto_a

    .line 473
    .line 474
    :cond_f
    aget-byte v5, v4, v5

    .line 475
    .line 476
    add-int/lit8 v7, v2, 0x2

    .line 477
    .line 478
    aget-byte v7, v4, v7

    .line 479
    .line 480
    add-int/lit8 v9, v2, 0x3

    .line 481
    .line 482
    aget-byte v9, v4, v9

    .line 483
    .line 484
    add-int/lit8 v23, v2, 0x4

    .line 485
    .line 486
    aget-byte v6, v4, v23

    .line 487
    .line 488
    .line 489
    invoke-static {v5, v7, v9, v6}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 490
    move-result v9

    .line 491
    .line 492
    add-int/lit8 v5, v2, 0x5

    .line 493
    :cond_10
    :goto_a
    :pswitch_c
    int-to-long v6, v9

    .line 494
    xor-long/2addr v6, v10

    .line 495
    .line 496
    mul-long v6, v6, v25

    .line 497
    .line 498
    if-ne v5, v3, :cond_11

    .line 499
    move v2, v5

    .line 500
    move v5, v14

    .line 501
    goto :goto_b

    .line 502
    .line 503
    :cond_11
    add-int/lit8 v2, v5, 0x1

    .line 504
    .line 505
    aget-byte v5, v4, v5

    .line 506
    :goto_b
    move-wide v10, v6

    .line 507
    .line 508
    const/16 v9, 0x5d

    .line 509
    .line 510
    goto/16 :goto_10

    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :cond_12
    const-wide v25, 0x100000001b3L

    .line 516
    .line 517
    if-eq v5, v12, :cond_17

    .line 518
    .line 519
    const/16 v6, 0xd

    .line 520
    .line 521
    if-eq v5, v6, :cond_17

    .line 522
    .line 523
    if-eq v5, v14, :cond_17

    .line 524
    .line 525
    if-eq v5, v13, :cond_17

    .line 526
    .line 527
    const/16 v7, 0x5b

    .line 528
    .line 529
    if-eq v5, v7, :cond_17

    .line 530
    .line 531
    const/16 v9, 0x5d

    .line 532
    .line 533
    if-eq v5, v9, :cond_17

    .line 534
    .line 535
    const/16 v6, 0x7b

    .line 536
    .line 537
    if-eq v5, v6, :cond_17

    .line 538
    .line 539
    const/16 v6, 0x7d

    .line 540
    .line 541
    if-eq v5, v6, :cond_17

    .line 542
    .line 543
    const/16 v6, 0x20

    .line 544
    .line 545
    if-eq v5, v6, :cond_17

    .line 546
    .line 547
    const/16 v6, 0x21

    .line 548
    .line 549
    if-eq v5, v6, :cond_17

    .line 550
    .line 551
    .line 552
    packed-switch v5, :pswitch_data_9

    .line 553
    .line 554
    .line 555
    packed-switch v5, :pswitch_data_a

    .line 556
    .line 557
    .line 558
    packed-switch v5, :pswitch_data_b

    .line 559
    .line 560
    if-gez v5, :cond_14

    .line 561
    .line 562
    and-int/lit16 v6, v5, 0xff

    .line 563
    .line 564
    shr-int/lit8 v23, v6, 0x4

    .line 565
    .line 566
    .line 567
    packed-switch v23, :pswitch_data_c

    .line 568
    .line 569
    shr-int/lit8 v6, v5, 0x3

    .line 570
    const/4 v7, -0x2

    .line 571
    .line 572
    if-ne v6, v7, :cond_13

    .line 573
    .line 574
    aget-byte v6, v4, v2

    .line 575
    .line 576
    add-int/lit8 v7, v2, 0x1

    .line 577
    .line 578
    aget-byte v7, v4, v7

    .line 579
    .line 580
    add-int/lit8 v23, v2, 0x2

    .line 581
    .line 582
    aget-byte v23, v4, v23

    .line 583
    .line 584
    shl-int/lit8 v5, v5, 0x12

    .line 585
    shl-int/2addr v6, v12

    .line 586
    xor-int/2addr v5, v6

    .line 587
    .line 588
    shl-int/lit8 v6, v7, 0x6

    .line 589
    xor-int/2addr v5, v6

    .line 590
    .line 591
    .line 592
    const v6, 0x381f80

    .line 593
    .line 594
    xor-int v6, v23, v6

    .line 595
    xor-int/2addr v5, v6

    .line 596
    .line 597
    add-int/lit8 v2, v2, 0x3

    .line 598
    const/4 v6, 0x0

    .line 599
    .line 600
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 601
    move v7, v6

    .line 602
    goto :goto_c

    .line 603
    .line 604
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 605
    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    const-string v4, "malformed input around byte "

    .line 612
    .line 613
    .line 614
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    move-result-object v2

    .line 622
    .line 623
    .line 624
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 625
    throw v1

    .line 626
    .line 627
    :pswitch_d
    aget-byte v5, v4, v2

    .line 628
    .line 629
    add-int/lit8 v7, v2, 0x1

    .line 630
    .line 631
    aget-byte v7, v4, v7

    .line 632
    .line 633
    .line 634
    invoke-static {v6, v5, v7, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(IIII)I

    .line 635
    move-result v5

    .line 636
    .line 637
    add-int/lit8 v2, v2, 0x2

    .line 638
    const/4 v7, 0x0

    .line 639
    .line 640
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 641
    goto :goto_c

    .line 642
    :pswitch_e
    const/4 v7, 0x0

    .line 643
    .line 644
    add-int/lit8 v5, v2, 0x1

    .line 645
    .line 646
    aget-byte v2, v4, v2

    .line 647
    .line 648
    .line 649
    invoke-static {v6, v2, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(III)I

    .line 650
    move-result v2

    .line 651
    .line 652
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 653
    .line 654
    move/from16 v27, v5

    .line 655
    move v5, v2

    .line 656
    .line 657
    move/from16 v2, v27

    .line 658
    goto :goto_c

    .line 659
    :cond_14
    const/4 v7, 0x0

    .line 660
    .line 661
    .line 662
    :goto_c
    const v6, 0xffff

    .line 663
    .line 664
    if-le v5, v6, :cond_15

    .line 665
    .line 666
    ushr-int/lit8 v6, v5, 0xa

    .line 667
    .line 668
    .line 669
    const v18, 0xd7c0

    .line 670
    .line 671
    add-int v6, v6, v18

    .line 672
    int-to-long v7, v6

    .line 673
    xor-long/2addr v7, v10

    .line 674
    .line 675
    mul-long v7, v7, v25

    .line 676
    .line 677
    and-int/lit16 v5, v5, 0x3ff

    .line 678
    .line 679
    .line 680
    const v6, 0xdc00

    .line 681
    add-int/2addr v5, v6

    .line 682
    int-to-long v5, v5

    .line 683
    xor-long/2addr v5, v7

    .line 684
    .line 685
    :goto_d
    mul-long v5, v5, v25

    .line 686
    goto :goto_e

    .line 687
    :cond_15
    int-to-long v5, v5

    .line 688
    xor-long/2addr v5, v10

    .line 689
    goto :goto_d

    .line 690
    .line 691
    :goto_e
    if-ne v2, v3, :cond_16

    .line 692
    move v7, v2

    .line 693
    move v2, v14

    .line 694
    goto :goto_f

    .line 695
    .line 696
    :cond_16
    add-int/lit8 v7, v2, 0x1

    .line 697
    .line 698
    aget-byte v2, v4, v2

    .line 699
    :goto_f
    move-wide v10, v5

    .line 700
    move v5, v2

    .line 701
    move v2, v7

    .line 702
    .line 703
    :goto_10
    add-int/lit8 v1, v1, 0x1

    .line 704
    .line 705
    goto/16 :goto_9

    .line 706
    .line 707
    :cond_17
    :pswitch_f
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 708
    .line 709
    if-ne v5, v14, :cond_18

    .line 710
    move v1, v2

    .line 711
    goto :goto_11

    .line 712
    .line 713
    :cond_18
    add-int/lit8 v1, v2, -0x1

    .line 714
    .line 715
    :goto_11
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 716
    .line 717
    :goto_12
    const/16 v6, 0x20

    .line 718
    .line 719
    if-gt v5, v6, :cond_1a

    .line 720
    .line 721
    shl-long v6, v21, v5

    .line 722
    .line 723
    and-long v6, v6, v19

    .line 724
    .line 725
    cmp-long v1, v6, v16

    .line 726
    .line 727
    if-eqz v1, :cond_1a

    .line 728
    .line 729
    if-ne v2, v3, :cond_19

    .line 730
    move v5, v14

    .line 731
    goto :goto_12

    .line 732
    .line 733
    :cond_19
    add-int/lit8 v1, v2, 0x1

    .line 734
    .line 735
    aget-byte v2, v4, v2

    .line 736
    move v5, v2

    .line 737
    move v2, v1

    .line 738
    goto :goto_12

    .line 739
    .line 740
    :cond_1a
    :goto_13
    if-ne v5, v13, :cond_1d

    .line 741
    .line 742
    if-ne v2, v3, :cond_1b

    .line 743
    move v1, v2

    .line 744
    move v2, v14

    .line 745
    goto :goto_14

    .line 746
    .line 747
    :cond_1b
    add-int/lit8 v1, v2, 0x1

    .line 748
    .line 749
    aget-byte v2, v4, v2

    .line 750
    int-to-char v2, v2

    .line 751
    :goto_14
    move v5, v2

    .line 752
    .line 753
    const/16 v6, 0x20

    .line 754
    :goto_15
    move v2, v1

    .line 755
    .line 756
    :goto_16
    if-gt v5, v6, :cond_1d

    .line 757
    .line 758
    shl-long v7, v21, v5

    .line 759
    .line 760
    and-long v7, v7, v19

    .line 761
    .line 762
    cmp-long v1, v7, v16

    .line 763
    .line 764
    if-eqz v1, :cond_1d

    .line 765
    .line 766
    if-ne v2, v3, :cond_1c

    .line 767
    move v5, v14

    .line 768
    goto :goto_16

    .line 769
    .line 770
    :cond_1c
    add-int/lit8 v1, v2, 0x1

    .line 771
    .line 772
    aget-byte v2, v4, v2

    .line 773
    move v5, v2

    .line 774
    goto :goto_15

    .line 775
    .line 776
    :cond_1d
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 777
    int-to-char v1, v5

    .line 778
    .line 779
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 780
    return-wide v10

    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    :pswitch_data_1
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

    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

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
    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    :pswitch_data_5
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

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
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_7
    .packed-switch 0x2d
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    :pswitch_data_8
    .packed-switch 0x3c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    :pswitch_data_9
    .packed-switch 0x8
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    :pswitch_data_a
    .packed-switch 0x28
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    :pswitch_data_b
    .packed-switch 0x3c
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    :pswitch_data_c
    .packed-switch 0xc
        :pswitch_e
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final readFloatValue()F
    .locals 32

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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v3, v1, v3

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
    aget-byte v3, v1, v5

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
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([BI)I

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
    aget-byte v10, v1, v5

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
    aget-byte v6, v1, v5

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
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([BI)I

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
    aget-byte v10, v1, v5

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
    aget-byte v5, v1, v5

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
    aget-byte v5, v1, v5

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
    aget-byte v5, v1, v5

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
    aget-byte v7, v1, v7

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
    aget-byte v15, v1, v7

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
    aget-byte v7, v1, v7

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
    aget-byte v5, v1, v5

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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNumber0()V

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
    aget-byte v3, v1, v5

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
    aget-byte v5, v1, v5

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
    aget-byte v5, v1, v5

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

.method public final readHex()[B
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7
    .line 8
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 9
    .line 10
    const/16 v4, 0x78

    .line 11
    .line 12
    const/16 v5, 0x1a

    .line 13
    .line 14
    if-ne v3, v4, :cond_1

    .line 15
    .line 16
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 17
    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    move v3, v5

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 23
    .line 24
    aget-byte v1, v2, v1

    .line 25
    .line 26
    move/from16 v16, v3

    .line 27
    move v3, v1

    .line 28
    .line 29
    move/from16 v1, v16

    .line 30
    .line 31
    :cond_1
    :goto_0
    const/16 v4, 0x27

    .line 32
    .line 33
    const-string v6, "illegal state. "

    .line 34
    .line 35
    if-eq v3, v4, :cond_3

    .line 36
    .line 37
    const/16 v4, 0x22

    .line 38
    .line 39
    if-ne v3, v4, :cond_2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v1

    .line 62
    .line 63
    :cond_3
    :goto_1
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 64
    .line 65
    if-ne v1, v4, :cond_4

    .line 66
    move v4, v1

    .line 67
    :goto_2
    move v7, v5

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_4
    add-int/lit8 v4, v1, 0x1

    .line 71
    .line 72
    aget-byte v7, v2, v1

    .line 73
    .line 74
    :goto_3
    const/16 v8, 0x39

    .line 75
    .line 76
    const/16 v9, 0x30

    .line 77
    .line 78
    if-lt v7, v9, :cond_5

    .line 79
    .line 80
    if-le v7, v8, :cond_6

    .line 81
    .line 82
    :cond_5
    const/16 v10, 0x41

    .line 83
    .line 84
    if-lt v7, v10, :cond_8

    .line 85
    .line 86
    const/16 v10, 0x46

    .line 87
    .line 88
    if-gt v7, v10, :cond_8

    .line 89
    .line 90
    :cond_6
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 91
    .line 92
    if-ne v4, v7, :cond_7

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :cond_7
    add-int/lit8 v7, v4, 0x1

    .line 96
    .line 97
    aget-byte v4, v2, v4

    .line 98
    .line 99
    move/from16 v16, v7

    .line 100
    move v7, v4

    .line 101
    .line 102
    move/from16 v4, v16

    .line 103
    goto :goto_3

    .line 104
    .line 105
    :cond_8
    if-ne v7, v3, :cond_17

    .line 106
    .line 107
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 108
    .line 109
    if-ne v4, v3, :cond_9

    .line 110
    move v3, v4

    .line 111
    move v4, v5

    .line 112
    goto :goto_4

    .line 113
    .line 114
    :cond_9
    add-int/lit8 v3, v4, 0x1

    .line 115
    .line 116
    aget-byte v4, v2, v4

    .line 117
    .line 118
    :goto_4
    sub-int v7, v3, v1

    .line 119
    .line 120
    add-int/lit8 v10, v7, -0x2

    .line 121
    const/4 v11, 0x1

    .line 122
    .line 123
    if-ne v4, v5, :cond_a

    .line 124
    .line 125
    add-int/lit8 v10, v7, -0x1

    .line 126
    .line 127
    :cond_a
    rem-int/lit8 v7, v10, 0x2

    .line 128
    .line 129
    if-nez v7, :cond_16

    .line 130
    .line 131
    div-int/lit8 v10, v10, 0x2

    .line 132
    .line 133
    new-array v6, v10, [B

    .line 134
    const/4 v7, 0x0

    .line 135
    .line 136
    :goto_5
    if-ge v7, v10, :cond_d

    .line 137
    .line 138
    mul-int/lit8 v12, v7, 0x2

    .line 139
    add-int/2addr v12, v1

    .line 140
    .line 141
    aget-byte v13, v2, v12

    .line 142
    add-int/2addr v12, v11

    .line 143
    .line 144
    aget-byte v12, v2, v12

    .line 145
    .line 146
    const/16 v14, 0x37

    .line 147
    .line 148
    if-gt v13, v8, :cond_b

    .line 149
    move v15, v9

    .line 150
    goto :goto_6

    .line 151
    :cond_b
    move v15, v14

    .line 152
    :goto_6
    sub-int/2addr v13, v15

    .line 153
    .line 154
    if-gt v12, v8, :cond_c

    .line 155
    move v14, v9

    .line 156
    :cond_c
    sub-int/2addr v12, v14

    .line 157
    .line 158
    shl-int/lit8 v13, v13, 0x4

    .line 159
    or-int/2addr v12, v13

    .line 160
    int-to-byte v12, v12

    .line 161
    .line 162
    aput-byte v12, v6, v7

    .line 163
    .line 164
    add-int/lit8 v7, v7, 0x1

    .line 165
    goto :goto_5

    .line 166
    .line 167
    :cond_d
    :goto_7
    const-wide/16 v7, 0x0

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    const-wide v9, 0x100003701L

    .line 173
    .line 174
    const-wide/16 v12, 0x1

    .line 175
    .line 176
    const/16 v1, 0x20

    .line 177
    .line 178
    if-gt v4, v1, :cond_f

    .line 179
    .line 180
    shl-long v14, v12, v4

    .line 181
    and-long/2addr v14, v9

    .line 182
    .line 183
    cmp-long v14, v14, v7

    .line 184
    .line 185
    if-eqz v14, :cond_f

    .line 186
    .line 187
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 188
    .line 189
    if-ne v3, v1, :cond_e

    .line 190
    move v4, v5

    .line 191
    goto :goto_7

    .line 192
    .line 193
    :cond_e
    add-int/lit8 v1, v3, 0x1

    .line 194
    .line 195
    aget-byte v3, v2, v3

    .line 196
    move v4, v3

    .line 197
    move v3, v1

    .line 198
    goto :goto_7

    .line 199
    .line 200
    :cond_f
    const/16 v14, 0x2c

    .line 201
    .line 202
    if-ne v4, v14, :cond_15

    .line 203
    .line 204
    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 205
    .line 206
    if-lt v3, v14, :cond_10

    .line 207
    goto :goto_a

    .line 208
    .line 209
    :cond_10
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 210
    .line 211
    if-ne v3, v14, :cond_11

    .line 212
    move v4, v3

    .line 213
    :goto_8
    move v3, v5

    .line 214
    goto :goto_9

    .line 215
    .line 216
    :cond_11
    add-int/lit8 v4, v3, 0x1

    .line 217
    .line 218
    aget-byte v3, v2, v3

    .line 219
    .line 220
    :goto_9
    if-gt v3, v1, :cond_13

    .line 221
    .line 222
    shl-long v14, v12, v3

    .line 223
    and-long/2addr v14, v9

    .line 224
    .line 225
    cmp-long v11, v14, v7

    .line 226
    .line 227
    if-eqz v11, :cond_13

    .line 228
    .line 229
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 230
    .line 231
    if-ne v4, v3, :cond_12

    .line 232
    goto :goto_8

    .line 233
    .line 234
    :cond_12
    add-int/lit8 v3, v4, 0x1

    .line 235
    .line 236
    aget-byte v4, v2, v4

    .line 237
    .line 238
    move/from16 v16, v4

    .line 239
    move v4, v3

    .line 240
    .line 241
    move/from16 v3, v16

    .line 242
    goto :goto_9

    .line 243
    .line 244
    :cond_13
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 245
    int-to-char v1, v3

    .line 246
    .line 247
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 248
    .line 249
    const/16 v2, 0x2f

    .line 250
    .line 251
    if-ne v1, v2, :cond_14

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 255
    :cond_14
    return-object v6

    .line 256
    .line 257
    :cond_15
    :goto_a
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 258
    int-to-char v1, v4

    .line 259
    .line 260
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 261
    return-object v6

    .line 262
    .line 263
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 264
    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object v2

    .line 279
    .line 280
    .line 281
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 282
    throw v1

    .line 283
    .line 284
    :cond_17
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 285
    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v2

    .line 300
    .line 301
    .line 302
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 303
    throw v1
.end method

.method public final readIfNull()Z
    .locals 18

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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    const/16 v4, 0x6e

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    if-ne v2, v4, :cond_7

    .line 14
    .line 15
    aget-byte v2, v1, v3

    .line 16
    .line 17
    const/16 v4, 0x75

    .line 18
    .line 19
    if-ne v2, v4, :cond_7

    .line 20
    .line 21
    add-int/lit8 v2, v3, 0x1

    .line 22
    .line 23
    aget-byte v2, v1, v2

    .line 24
    .line 25
    const/16 v4, 0x6c

    .line 26
    .line 27
    if-ne v2, v4, :cond_7

    .line 28
    .line 29
    add-int/lit8 v2, v3, 0x2

    .line 30
    .line 31
    aget-byte v2, v1, v2

    .line 32
    .line 33
    if-ne v2, v4, :cond_7

    .line 34
    .line 35
    add-int/lit8 v2, v3, 0x3

    .line 36
    .line 37
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 38
    .line 39
    const/16 v6, 0x1a

    .line 40
    .line 41
    if-ne v2, v4, :cond_0

    .line 42
    move v2, v6

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    aget-byte v2, v1, v2

    .line 46
    int-to-char v2, v2

    .line 47
    .line 48
    :goto_0
    add-int/lit8 v3, v3, 0x4

    .line 49
    .line 50
    :goto_1
    const-wide/16 v7, 0x0

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v9, 0x100003701L

    .line 56
    .line 57
    const-wide/16 v11, 0x1

    .line 58
    .line 59
    const/16 v4, 0x20

    .line 60
    .line 61
    if-gt v2, v4, :cond_2

    .line 62
    .line 63
    shl-long v13, v11, v2

    .line 64
    and-long/2addr v13, v9

    .line 65
    .line 66
    cmp-long v13, v13, v7

    .line 67
    .line 68
    if-eqz v13, :cond_2

    .line 69
    .line 70
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 71
    .line 72
    if-ne v3, v2, :cond_1

    .line 73
    move v2, v6

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 77
    .line 78
    aget-byte v3, v1, v3

    .line 79
    .line 80
    move/from16 v17, v3

    .line 81
    move v3, v2

    .line 82
    .line 83
    move/from16 v2, v17

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    const/16 v13, 0x2c

    .line 87
    const/4 v14, 0x1

    .line 88
    .line 89
    if-ne v2, v13, :cond_3

    .line 90
    move v5, v14

    .line 91
    .line 92
    :cond_3
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 93
    .line 94
    if-eqz v5, :cond_6

    .line 95
    .line 96
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 97
    .line 98
    if-ne v3, v2, :cond_4

    .line 99
    move v2, v3

    .line 100
    move v3, v6

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .line 104
    .line 105
    aget-byte v3, v1, v3

    .line 106
    int-to-char v3, v3

    .line 107
    .line 108
    :goto_2
    move/from16 v17, v3

    .line 109
    move v3, v2

    .line 110
    .line 111
    move/from16 v2, v17

    .line 112
    .line 113
    :goto_3
    if-gt v2, v4, :cond_6

    .line 114
    .line 115
    shl-long v15, v11, v2

    .line 116
    and-long/2addr v15, v9

    .line 117
    .line 118
    cmp-long v5, v15, v7

    .line 119
    .line 120
    if-eqz v5, :cond_6

    .line 121
    .line 122
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 123
    .line 124
    if-ne v3, v2, :cond_5

    .line 125
    move v2, v6

    .line 126
    goto :goto_3

    .line 127
    .line 128
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .line 129
    .line 130
    aget-byte v3, v1, v3

    .line 131
    goto :goto_2

    .line 132
    .line 133
    :cond_6
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 134
    int-to-char v1, v2

    .line 135
    .line 136
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 137
    return v14

    .line 138
    :cond_7
    return v5
.end method

.method public final readInt32Value()I
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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 9
    .line 10
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    aget-byte v2, v4, v2

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
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([BI)I

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
    aget-byte v13, v4, v5

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
    aget-byte v5, v4, v5

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
    aget-byte v5, v4, v9

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
    aget-byte v5, v4, v9

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
    aget-byte v5, v4, v9

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
    aget-byte v6, v4, v9

    .line 237
    int-to-char v6, v6

    .line 238
    goto :goto_10

    .line 239
    :goto_e
    move v5, v6

    .line 240
    .line 241
    :goto_f
    if-gt v5, v2, :cond_18

    .line 242
    .line 243
    shl-long v18, v16, v5

    .line 244
    .line 245
    and-long v18, v18, v14

    .line 246
    .line 247
    cmp-long v6, v18, v12

    .line 248
    .line 249
    if-eqz v6, :cond_18

    .line 250
    .line 251
    if-ne v9, v3, :cond_17

    .line 252
    move v5, v7

    .line 253
    goto :goto_f

    .line 254
    .line 255
    :cond_17
    add-int/lit8 v5, v9, 0x1

    .line 256
    .line 257
    aget-byte v6, v4, v9

    .line 258
    :goto_10
    move v9, v5

    .line 259
    goto :goto_e

    .line 260
    :cond_18
    int-to-char v2, v5

    .line 261
    .line 262
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 263
    .line 264
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 265
    .line 266
    if-ne v1, v8, :cond_19

    .line 267
    return v11

    .line 268
    :cond_19
    neg-int v1, v11

    .line 269
    return v1

    .line 270
    .line 271
    .line 272
    :cond_1a
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32ValueOverflow()I

    .line 273
    move-result v1

    .line 274
    return v1
.end method

.method public final readInt64Value()J
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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 9
    .line 10
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    aget-byte v2, v4, v2

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
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->digit2([BI)I

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
    aget-byte v8, v4, v5

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
    aget-byte v5, v4, v5

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
    aget-byte v5, v4, v7

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
    aget-byte v5, v4, v7

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
    aget-byte v5, v4, v7

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
    aget-byte v7, v4, v7

    .line 273
    int-to-char v7, v7

    .line 274
    .line 275
    :goto_e
    move/from16 v22, v7

    .line 276
    move v7, v5

    .line 277
    .line 278
    move/from16 v5, v22

    .line 279
    .line 280
    :goto_f
    if-gt v5, v2, :cond_18

    .line 281
    .line 282
    shl-long v16, v18, v5

    .line 283
    .line 284
    and-long v16, v16, v8

    .line 285
    .line 286
    cmp-long v11, v16, v12

    .line 287
    .line 288
    if-eqz v11, :cond_18

    .line 289
    .line 290
    if-ne v7, v3, :cond_17

    .line 291
    move v5, v6

    .line 292
    goto :goto_f

    .line 293
    .line 294
    :cond_17
    add-int/lit8 v5, v7, 0x1

    .line 295
    .line 296
    aget-byte v7, v4, v7

    .line 297
    goto :goto_e

    .line 298
    :cond_18
    int-to-char v2, v5

    .line 299
    .line 300
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 301
    .line 302
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 303
    .line 304
    if-ne v1, v10, :cond_19

    .line 305
    return-wide v14

    .line 306
    :cond_19
    neg-long v1, v14

    .line 307
    return-wide v1

    .line 308
    .line 309
    .line 310
    :cond_1a
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64ValueOverflow()J

    .line 311
    move-result-wide v1

    .line 312
    return-wide v1
.end method

.method public final readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    const/16 v3, 0x22

    .line 9
    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    const/16 v3, 0x27

    .line 13
    .line 14
    if-ne v2, v3, :cond_5

    .line 15
    .line 16
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 17
    .line 18
    iget-object v4, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget-boolean v4, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    iget-boolean v4, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    iget-boolean v4, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    iget-boolean v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    .line 35
    .line 36
    if-eqz v3, :cond_5

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v3, v1, 0xa

    .line 39
    array-length v4, v0

    .line 40
    .line 41
    if-ge v3, v4, :cond_5

    .line 42
    .line 43
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 44
    .line 45
    if-ge v3, v4, :cond_5

    .line 46
    .line 47
    add-int/lit8 v4, v1, 0x4

    .line 48
    .line 49
    aget-byte v4, v0, v4

    .line 50
    .line 51
    const/16 v5, 0x2d

    .line 52
    .line 53
    if-ne v4, v5, :cond_5

    .line 54
    .line 55
    add-int/lit8 v4, v1, 0x7

    .line 56
    .line 57
    aget-byte v4, v0, v4

    .line 58
    .line 59
    if-ne v4, v5, :cond_5

    .line 60
    .line 61
    aget-byte v3, v0, v3

    .line 62
    .line 63
    if-ne v3, v2, :cond_5

    .line 64
    .line 65
    aget-byte v2, v0, v1

    .line 66
    .line 67
    add-int/lit8 v3, v1, 0x1

    .line 68
    .line 69
    aget-byte v3, v0, v3

    .line 70
    .line 71
    add-int/lit8 v4, v1, 0x2

    .line 72
    .line 73
    aget-byte v4, v0, v4

    .line 74
    .line 75
    add-int/lit8 v5, v1, 0x3

    .line 76
    .line 77
    aget-byte v5, v0, v5

    .line 78
    .line 79
    add-int/lit8 v6, v1, 0x5

    .line 80
    .line 81
    aget-byte v6, v0, v6

    .line 82
    .line 83
    add-int/lit8 v7, v1, 0x6

    .line 84
    .line 85
    aget-byte v7, v0, v7

    .line 86
    .line 87
    add-int/lit8 v8, v1, 0x8

    .line 88
    .line 89
    aget-byte v8, v0, v8

    .line 90
    .line 91
    add-int/lit8 v9, v1, 0x9

    .line 92
    .line 93
    aget-byte v0, v0, v9

    .line 94
    .line 95
    const/16 v9, 0x30

    .line 96
    .line 97
    if-lt v2, v9, :cond_5

    .line 98
    .line 99
    const/16 v10, 0x39

    .line 100
    .line 101
    if-gt v2, v10, :cond_5

    .line 102
    .line 103
    if-lt v3, v9, :cond_5

    .line 104
    .line 105
    if-gt v3, v10, :cond_5

    .line 106
    .line 107
    if-lt v4, v9, :cond_5

    .line 108
    .line 109
    if-gt v4, v10, :cond_5

    .line 110
    .line 111
    if-lt v5, v9, :cond_5

    .line 112
    .line 113
    if-gt v5, v10, :cond_5

    .line 114
    sub-int/2addr v2, v9

    .line 115
    .line 116
    mul-int/lit16 v2, v2, 0x3e8

    .line 117
    sub-int/2addr v3, v9

    .line 118
    .line 119
    mul-int/lit8 v3, v3, 0x64

    .line 120
    add-int/2addr v2, v3

    .line 121
    sub-int/2addr v4, v9

    .line 122
    .line 123
    mul-int/lit8 v4, v4, 0xa

    .line 124
    add-int/2addr v2, v4

    .line 125
    sub-int/2addr v5, v9

    .line 126
    add-int/2addr v2, v5

    .line 127
    .line 128
    if-lt v6, v9, :cond_5

    .line 129
    .line 130
    if-gt v6, v10, :cond_5

    .line 131
    .line 132
    if-lt v7, v9, :cond_5

    .line 133
    .line 134
    if-gt v7, v10, :cond_5

    .line 135
    sub-int/2addr v6, v9

    .line 136
    .line 137
    mul-int/lit8 v6, v6, 0xa

    .line 138
    sub-int/2addr v7, v9

    .line 139
    add-int/2addr v6, v7

    .line 140
    .line 141
    if-lt v8, v9, :cond_5

    .line 142
    .line 143
    if-gt v8, v10, :cond_5

    .line 144
    .line 145
    if-lt v0, v9, :cond_5

    .line 146
    .line 147
    if-gt v0, v10, :cond_5

    .line 148
    sub-int/2addr v8, v9

    .line 149
    .line 150
    mul-int/lit8 v8, v8, 0xa

    .line 151
    sub-int/2addr v0, v9

    .line 152
    add-int/2addr v8, v0

    .line 153
    .line 154
    if-nez v2, :cond_2

    .line 155
    .line 156
    if-nez v6, :cond_2

    .line 157
    .line 158
    if-nez v8, :cond_2

    .line 159
    const/4 v0, 0x0

    .line 160
    goto :goto_0

    .line 161
    .line 162
    .line 163
    :cond_2
    :try_start_0
    invoke-static {v2, v6, v8}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 164
    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    :goto_0
    add-int/lit8 v1, v1, 0xb

    .line 167
    .line 168
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 172
    .line 173
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 174
    .line 175
    const/16 v2, 0x2c

    .line 176
    .line 177
    if-ne v1, v2, :cond_3

    .line 178
    const/4 v1, 0x1

    .line 179
    goto :goto_1

    .line 180
    :cond_3
    const/4 v1, 0x0

    .line 181
    .line 182
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 183
    .line 184
    if-eqz v1, :cond_4

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 188
    :cond_4
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .line 191
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 192
    .line 193
    const-string v2, "read date error"

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 198
    .line 199
    .line 200
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    throw v1

    .line 202
    .line 203
    .line 204
    :cond_5
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 205
    move-result-object v0

    .line 206
    return-object v0
.end method

.method public final readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 14
    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xb

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .line 47
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 48
    .line 49
    const-string v2, "read date error"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v1

    .line 58
    .line 59
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 60
    .line 61
    const-string v1, "localDate only support string input"

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0
.end method

.method public final readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xb

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "localDate only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 14
    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x9

    .line 19
    .line 20
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 24
    .line 25
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 26
    .line 27
    const/16 v2, 0x2c

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    .line 34
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 40
    :cond_1
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .line 43
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 44
    .line 45
    const-string v2, "read date error"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v1

    .line 54
    .line 55
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 56
    .line 57
    const-string v1, "localDate only support string input"

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method public final readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 14
    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0xa

    .line 19
    .line 20
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 24
    .line 25
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 26
    .line 27
    const/16 v2, 0x2c

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    .line 34
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 40
    :cond_1
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .line 43
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 44
    .line 45
    const-string v2, "read date error"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v1

    .line 54
    .line 55
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 56
    .line 57
    const-string v1, "localDate only support string input"

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method public final readLocalDateTime12()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xd

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "date only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalDateTime14()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xf

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "date only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalDateTime16()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x11

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "date only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalDateTime17()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x12

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "date only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalDateTime18()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x13

    .line 19
    .line 20
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 24
    .line 25
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 26
    .line 27
    const/16 v2, 0x2c

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    .line 34
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 40
    :cond_1
    return-object v0

    .line 41
    .line 42
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 43
    .line 44
    const-string v1, "date only support string input"

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method public final readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x14

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "date only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x15

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "date only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalDateTimeX(I)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([BII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    const/4 v2, 0x1

    .line 22
    add-int/2addr p1, v2

    .line 23
    add-int/2addr v1, p1

    .line 24
    .line 25
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 29
    .line 30
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 31
    .line 32
    const/16 v1, 0x2c

    .line 33
    .line 34
    if-ne p1, v1, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v0, "date only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method

.method public final readLocalTime10()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime10([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xb

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "localTime only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalTime11()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime11([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xc

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "localTime only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalTime12()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime12([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xd

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "localTime only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalTime18()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime18([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x13

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "localTime only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readLocalTime5()Lcom/alibaba/fastjson2/time/LocalTime;
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 22
    .line 23
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime5([BI)Lcom/alibaba/fastjson2/time/LocalTime;

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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 57
    :cond_4
    return-object v0
.end method

.method public final readLocalTime8()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x9

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 28
    .line 29
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 30
    .line 31
    const/16 v2, 0x2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 44
    :cond_2
    return-object v0

    .line 45
    .line 46
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "localTime only support string input"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public final readMillis19()J
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
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 36
    .line 37
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([BILcom/alibaba/fastjson2/time/ZoneId;)J

    .line 43
    move-result-wide v1

    .line 44
    .line 45
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 46
    .line 47
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 48
    .line 49
    add-int/lit8 v6, v5, 0x13

    .line 50
    .line 51
    aget-byte v3, v3, v6

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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

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
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

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
    aget-byte v2, v0, v2

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
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v2, v0, v2

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v0, v1

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v0, v1

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v0, v1

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

.method public final readNull()V
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

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
    aget-byte v2, v0, v2

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
    aget-byte v2, v0, v2

    .line 23
    .line 24
    if-ne v2, v3, :cond_7

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x3

    .line 27
    .line 28
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 29
    .line 30
    const/16 v4, 0x1a

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    move v1, v2

    .line 34
    :goto_0
    move v2, v4

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x4

    .line 38
    .line 39
    aget-byte v2, v0, v2

    .line 40
    .line 41
    :goto_1
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v7, 0x100003701L

    .line 47
    .line 48
    const-wide/16 v9, 0x1

    .line 49
    .line 50
    const/16 v3, 0x20

    .line 51
    .line 52
    if-gt v2, v3, :cond_2

    .line 53
    .line 54
    shl-long v11, v9, v2

    .line 55
    and-long/2addr v11, v7

    .line 56
    .line 57
    cmp-long v11, v11, v5

    .line 58
    .line 59
    if-eqz v11, :cond_2

    .line 60
    .line 61
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 62
    .line 63
    if-lt v1, v2, :cond_1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 67
    .line 68
    aget-byte v1, v0, v1

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 86
    .line 87
    if-lt v1, v2, :cond_4

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
    aget-byte v1, v0, v1

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
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 109
    .line 110
    if-lt v1, v2, :cond_5

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
    aget-byte v1, v0, v1

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    int-to-char v0, v2

    .line 119
    .line 120
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 121
    .line 122
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 123
    return-void

    .line 124
    .line 125
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    const-string v3, "json syntax error, not match null"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 146
    throw v0
.end method

.method public final readNullOrNewDate()Ljava/util/Date;
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x2

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v13, v1, v2

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
    aget-byte v13, v1, v13

    .line 36
    .line 37
    const/16 v14, 0x6c

    .line 38
    .line 39
    if-ne v13, v14, :cond_1

    .line 40
    .line 41
    aget-byte v13, v1, v3

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
    aget-byte v3, v1, v3

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
    aget-byte v14, v1, v2

    .line 65
    .line 66
    const/16 v15, 0x65

    .line 67
    .line 68
    if-ne v14, v15, :cond_14

    .line 69
    .line 70
    aget-byte v13, v1, v13

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
    :goto_1
    move v3, v12

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_2
    aget-byte v3, v1, v3

    .line 83
    .line 84
    :goto_2
    if-gt v3, v11, :cond_4

    .line 85
    .line 86
    shl-long v13, v9, v3

    .line 87
    and-long/2addr v13, v7

    .line 88
    .line 89
    cmp-long v4, v13, v5

    .line 90
    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 94
    .line 95
    if-ne v2, v3, :cond_3

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 99
    .line 100
    aget-byte v2, v1, v2

    .line 101
    .line 102
    move/from16 v18, v3

    .line 103
    move v3, v2

    .line 104
    .line 105
    move/from16 v2, v18

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_4
    add-int/lit8 v4, v2, 0x4

    .line 109
    .line 110
    iget v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v3, v1, v2

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
    aget-byte v3, v1, v3

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
    aget-byte v3, v1, v3

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
    aget-byte v2, v1, v2

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
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v3, v1, v4

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
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 176
    .line 177
    if-ge v4, v2, :cond_12

    .line 178
    .line 179
    add-int/lit8 v2, v4, 0x1

    .line 180
    .line 181
    aget-byte v3, v1, v4

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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v2, v1, v2

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
    :cond_9
    int-to-char v3, v3

    .line 208
    .line 209
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 210
    .line 211
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readInt64Value()J

    .line 215
    move-result-wide v2

    .line 216
    .line 217
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 218
    .line 219
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 220
    .line 221
    const/16 v6, 0x29

    .line 222
    .line 223
    if-ne v4, v6, :cond_11

    .line 224
    .line 225
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 226
    .line 227
    if-lt v5, v4, :cond_a

    .line 228
    move v4, v5

    .line 229
    move v5, v12

    .line 230
    goto :goto_6

    .line 231
    .line 232
    :cond_a
    add-int/lit8 v4, v5, 0x1

    .line 233
    .line 234
    aget-byte v5, v1, v5

    .line 235
    .line 236
    :goto_6
    new-instance v6, Ljava/util/Date;

    .line 237
    .line 238
    .line 239
    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 240
    move v2, v4

    .line 241
    move v3, v5

    .line 242
    move-object v4, v6

    .line 243
    .line 244
    :goto_7
    if-gt v3, v11, :cond_c

    .line 245
    .line 246
    shl-long v5, v9, v3

    .line 247
    and-long/2addr v5, v7

    .line 248
    .line 249
    cmp-long v5, v5, v16

    .line 250
    .line 251
    if-eqz v5, :cond_c

    .line 252
    .line 253
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 254
    .line 255
    if-ne v2, v3, :cond_b

    .line 256
    move v3, v12

    .line 257
    goto :goto_7

    .line 258
    .line 259
    :cond_b
    add-int/lit8 v3, v2, 0x1

    .line 260
    .line 261
    aget-byte v2, v1, v2

    .line 262
    .line 263
    move/from16 v18, v3

    .line 264
    move v3, v2

    .line 265
    .line 266
    move/from16 v2, v18

    .line 267
    goto :goto_7

    .line 268
    .line 269
    :cond_c
    const/16 v5, 0x2c

    .line 270
    .line 271
    if-ne v3, v5, :cond_d

    .line 272
    const/4 v5, 0x1

    .line 273
    goto :goto_8

    .line 274
    :cond_d
    const/4 v5, 0x0

    .line 275
    .line 276
    :goto_8
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 277
    .line 278
    if-eqz v5, :cond_10

    .line 279
    .line 280
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 281
    .line 282
    if-ne v2, v3, :cond_e

    .line 283
    move v3, v2

    .line 284
    move v2, v12

    .line 285
    goto :goto_9

    .line 286
    .line 287
    :cond_e
    add-int/lit8 v3, v2, 0x1

    .line 288
    .line 289
    aget-byte v2, v1, v2

    .line 290
    .line 291
    :goto_9
    move/from16 v18, v3

    .line 292
    move v3, v2

    .line 293
    .line 294
    move/from16 v2, v18

    .line 295
    .line 296
    :goto_a
    if-gt v3, v11, :cond_10

    .line 297
    .line 298
    shl-long v5, v9, v3

    .line 299
    and-long/2addr v5, v7

    .line 300
    .line 301
    cmp-long v5, v5, v16

    .line 302
    .line 303
    if-eqz v5, :cond_10

    .line 304
    .line 305
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 306
    .line 307
    if-ne v2, v3, :cond_f

    .line 308
    move v3, v12

    .line 309
    goto :goto_a

    .line 310
    .line 311
    :cond_f
    add-int/lit8 v3, v2, 0x1

    .line 312
    .line 313
    aget-byte v2, v1, v2

    .line 314
    goto :goto_9

    .line 315
    .line 316
    :cond_10
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 317
    int-to-char v1, v3

    .line 318
    .line 319
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 320
    return-object v4

    .line 321
    .line 322
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 323
    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object v2

    .line 338
    .line 339
    .line 340
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 341
    throw v1

    .line 342
    .line 343
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 344
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v2

    .line 359
    .line 360
    .line 361
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 362
    throw v1

    .line 363
    .line 364
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 365
    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v2

    .line 380
    .line 381
    .line 382
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 383
    throw v1

    .line 384
    .line 385
    :cond_14
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 386
    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    const-string v4, "json syntax error, not match null or new Date"

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    move-result-object v2

    .line 403
    .line 404
    .line 405
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 406
    throw v1
.end method

.method public final readNumber0()V
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
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 24
    .line 25
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 26
    .line 27
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v9, v3, v2

    .line 62
    int-to-char v9, v9

    .line 63
    .line 64
    if-ne v9, v4, :cond_5

    .line 65
    .line 66
    if-ne v6, v5, :cond_2

    .line 67
    .line 68
    :goto_2
    move/from16 v1, v16

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    add-int/2addr v2, v15

    .line 71
    .line 72
    aget-byte v1, v3, v6

    .line 73
    move v6, v2

    .line 74
    .line 75
    :goto_3
    if-gt v1, v14, :cond_4

    .line 76
    .line 77
    shl-long v19, v12, v1

    .line 78
    .line 79
    and-long v19, v19, v10

    .line 80
    .line 81
    cmp-long v2, v19, v17

    .line 82
    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    if-ne v6, v5, :cond_3

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_3
    add-int/lit8 v1, v6, 0x1

    .line 89
    .line 90
    aget-byte v2, v3, v6

    .line 91
    move v6, v1

    .line 92
    move v1, v2

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    int-to-char v1, v1

    .line 95
    .line 96
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 97
    .line 98
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    .line 102
    move-result v1

    .line 103
    .line 104
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 105
    .line 106
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 107
    .line 108
    iput-byte v7, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 109
    return-void

    .line 110
    .line 111
    :cond_5
    move/from16 v19, v6

    .line 112
    move v6, v4

    .line 113
    move v4, v9

    .line 114
    .line 115
    move/from16 v9, v19

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :goto_4
    const/16 v10, 0x2b

    .line 119
    .line 120
    const/16 v11, 0x2d

    .line 121
    .line 122
    move-wide/from16 v21, v12

    .line 123
    .line 124
    const-string v12, "illegal input"

    .line 125
    .line 126
    if-ne v4, v11, :cond_7

    .line 127
    .line 128
    if-eq v9, v5, :cond_6

    .line 129
    .line 130
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 131
    .line 132
    add-int/lit8 v4, v9, 0x1

    .line 133
    .line 134
    aget-byte v13, v3, v9

    .line 135
    goto :goto_6

    .line 136
    .line 137
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 145
    throw v1

    .line 146
    .line 147
    :cond_7
    if-ne v4, v10, :cond_9

    .line 148
    .line 149
    if-eq v9, v5, :cond_8

    .line 150
    .line 151
    add-int/lit8 v4, v9, 0x1

    .line 152
    .line 153
    aget-byte v13, v3, v9

    .line 154
    .line 155
    move/from16 v27, v13

    .line 156
    move v13, v4

    .line 157
    .line 158
    move/from16 v4, v27

    .line 159
    goto :goto_5

    .line 160
    .line 161
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 169
    throw v1

    .line 170
    :cond_9
    move v13, v9

    .line 171
    .line 172
    :goto_5
    move/from16 v27, v13

    .line 173
    move v13, v4

    .line 174
    .line 175
    move/from16 v4, v27

    .line 176
    .line 177
    :goto_6
    iput-byte v8, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 178
    .line 179
    move/from16 v23, v1

    .line 180
    .line 181
    move/from16 v24, v23

    .line 182
    .line 183
    :goto_7
    const/16 v14, 0x39

    .line 184
    .line 185
    const/16 v25, 0xa

    .line 186
    .line 187
    const/16 v1, 0x30

    .line 188
    .line 189
    .line 190
    const v7, -0xccccccc

    .line 191
    .line 192
    if-lt v13, v1, :cond_e

    .line 193
    .line 194
    if-gt v13, v14, :cond_e

    .line 195
    .line 196
    if-nez v23, :cond_b

    .line 197
    .line 198
    add-int/lit8 v13, v13, -0x30

    .line 199
    .line 200
    move/from16 v26, v8

    .line 201
    .line 202
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 203
    .line 204
    mul-int/lit8 v8, v8, 0xa

    .line 205
    .line 206
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 207
    .line 208
    if-ge v8, v7, :cond_a

    .line 209
    .line 210
    :goto_8
    move/from16 v23, v26

    .line 211
    goto :goto_9

    .line 212
    :cond_a
    sub-int/2addr v8, v13

    .line 213
    .line 214
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 215
    .line 216
    if-ge v8, v7, :cond_c

    .line 217
    goto :goto_8

    .line 218
    .line 219
    :cond_b
    move/from16 v26, v8

    .line 220
    .line 221
    :cond_c
    :goto_9
    if-ne v4, v5, :cond_d

    .line 222
    .line 223
    add-int/lit8 v4, v4, 0x1

    .line 224
    .line 225
    move/from16 v13, v16

    .line 226
    .line 227
    move/from16 v24, v26

    .line 228
    goto :goto_a

    .line 229
    .line 230
    :cond_d
    add-int/lit8 v1, v4, 0x1

    .line 231
    .line 232
    aget-byte v13, v3, v4

    .line 233
    move v4, v1

    .line 234
    .line 235
    move/from16 v8, v26

    .line 236
    .line 237
    move/from16 v24, v8

    .line 238
    const/4 v1, 0x0

    .line 239
    const/4 v7, 0x5

    .line 240
    goto :goto_7

    .line 241
    .line 242
    :cond_e
    move/from16 v26, v8

    .line 243
    .line 244
    :goto_a
    const/16 v8, 0x2e

    .line 245
    .line 246
    if-ne v13, v8, :cond_13

    .line 247
    .line 248
    iput-byte v15, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 249
    .line 250
    if-eq v4, v5, :cond_12

    .line 251
    .line 252
    add-int/lit8 v8, v4, 0x1

    .line 253
    .line 254
    aget-byte v4, v3, v4

    .line 255
    move v13, v4

    .line 256
    :goto_b
    move v4, v8

    .line 257
    .line 258
    if-lt v13, v1, :cond_13

    .line 259
    .line 260
    if-gt v13, v14, :cond_13

    .line 261
    .line 262
    if-nez v23, :cond_10

    .line 263
    .line 264
    add-int/lit8 v13, v13, -0x30

    .line 265
    .line 266
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 267
    .line 268
    mul-int/lit8 v8, v8, 0xa

    .line 269
    .line 270
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 271
    .line 272
    if-ge v8, v7, :cond_f

    .line 273
    .line 274
    :goto_c
    move/from16 v23, v26

    .line 275
    goto :goto_d

    .line 276
    :cond_f
    sub-int/2addr v8, v13

    .line 277
    .line 278
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 279
    .line 280
    if-ge v8, v7, :cond_10

    .line 281
    goto :goto_c

    .line 282
    .line 283
    :cond_10
    :goto_d
    iget-short v8, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 284
    .line 285
    add-int/lit8 v8, v8, 0x1

    .line 286
    int-to-short v8, v8

    .line 287
    .line 288
    iput-short v8, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 289
    .line 290
    if-ne v4, v5, :cond_11

    .line 291
    .line 292
    add-int/lit8 v4, v4, 0x1

    .line 293
    .line 294
    move/from16 v13, v16

    .line 295
    .line 296
    move/from16 v24, v26

    .line 297
    goto :goto_e

    .line 298
    .line 299
    :cond_11
    add-int/lit8 v8, v4, 0x1

    .line 300
    .line 301
    aget-byte v13, v3, v4

    .line 302
    .line 303
    move/from16 v24, v26

    .line 304
    goto :goto_b

    .line 305
    .line 306
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    move-result-object v2

    .line 311
    .line 312
    .line 313
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 314
    throw v1

    .line 315
    .line 316
    :cond_13
    :goto_e
    if-eqz v23, :cond_18

    .line 317
    .line 318
    iget-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 319
    .line 320
    if-eqz v7, :cond_14

    .line 321
    move v8, v9

    .line 322
    goto :goto_f

    .line 323
    .line 324
    :cond_14
    add-int/lit8 v8, v9, -0x1

    .line 325
    .line 326
    :goto_f
    iget-short v12, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 327
    .line 328
    if-lez v12, :cond_15

    .line 329
    .line 330
    add-int/lit8 v12, v4, -0x2

    .line 331
    :goto_10
    sub-int/2addr v12, v8

    .line 332
    goto :goto_11

    .line 333
    .line 334
    :cond_15
    add-int/lit8 v12, v4, -0x1

    .line 335
    goto :goto_10

    .line 336
    .line 337
    :goto_11
    const/16 v15, 0x26

    .line 338
    .line 339
    if-le v12, v15, :cond_17

    .line 340
    .line 341
    const/16 v12, 0x8

    .line 342
    .line 343
    iput-byte v12, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 344
    .line 345
    if-eqz v7, :cond_16

    .line 346
    .line 347
    add-int/lit8 v8, v8, -0x1

    .line 348
    .line 349
    :cond_16
    new-instance v7, Ljava/lang/String;

    .line 350
    .line 351
    add-int/lit8 v12, v4, -0x1

    .line 352
    sub-int/2addr v12, v8

    .line 353
    .line 354
    .line 355
    invoke-direct {v7, v3, v8, v12}, Ljava/lang/String;-><init>([BII)V

    .line 356
    .line 357
    iput-object v7, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 358
    goto :goto_12

    .line 359
    .line 360
    :cond_17
    add-int/lit8 v7, v4, -0x1

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v3, v8, v7}, Lcom/alibaba/fastjson2/JSONReader;->bigInt([BII)V

    .line 364
    goto :goto_12

    .line 365
    .line 366
    :cond_18
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 367
    neg-int v7, v7

    .line 368
    .line 369
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 370
    .line 371
    :goto_12
    const/16 v7, 0x65

    .line 372
    .line 373
    if-eq v13, v7, :cond_19

    .line 374
    .line 375
    const/16 v8, 0x45

    .line 376
    .line 377
    if-ne v13, v8, :cond_20

    .line 378
    .line 379
    :cond_19
    add-int/lit8 v8, v4, 0x1

    .line 380
    .line 381
    aget-byte v12, v3, v4

    .line 382
    .line 383
    if-ne v12, v11, :cond_1a

    .line 384
    .line 385
    add-int/lit8 v4, v4, 0x2

    .line 386
    .line 387
    aget-byte v12, v3, v8

    .line 388
    .line 389
    move/from16 v8, v26

    .line 390
    :goto_13
    const/4 v10, 0x0

    .line 391
    goto :goto_15

    .line 392
    .line 393
    :cond_1a
    if-ne v12, v10, :cond_1b

    .line 394
    .line 395
    add-int/lit8 v4, v4, 0x2

    .line 396
    .line 397
    aget-byte v8, v3, v8

    .line 398
    int-to-char v12, v8

    .line 399
    :goto_14
    const/4 v8, 0x0

    .line 400
    goto :goto_13

    .line 401
    :cond_1b
    move v4, v8

    .line 402
    goto :goto_14

    .line 403
    .line 404
    :goto_15
    if-lt v12, v1, :cond_1e

    .line 405
    .line 406
    if-gt v12, v14, :cond_1e

    .line 407
    .line 408
    add-int/lit8 v12, v12, -0x30

    .line 409
    .line 410
    mul-int/lit8 v10, v10, 0xa

    .line 411
    add-int/2addr v10, v12

    .line 412
    .line 413
    const/16 v11, 0x7ff

    .line 414
    .line 415
    if-gt v10, v11, :cond_1d

    .line 416
    .line 417
    if-ne v4, v5, :cond_1c

    .line 418
    .line 419
    move/from16 v13, v16

    .line 420
    .line 421
    move/from16 v24, v26

    .line 422
    goto :goto_16

    .line 423
    .line 424
    :cond_1c
    add-int/lit8 v11, v4, 0x1

    .line 425
    .line 426
    aget-byte v12, v3, v4

    .line 427
    move v4, v11

    .line 428
    .line 429
    move/from16 v24, v26

    .line 430
    goto :goto_15

    .line 431
    .line 432
    :cond_1d
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 433
    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    const-string v3, "too large exp value : "

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object v2

    .line 450
    .line 451
    .line 452
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 453
    throw v1

    .line 454
    :cond_1e
    move v13, v12

    .line 455
    .line 456
    :goto_16
    if-eqz v8, :cond_1f

    .line 457
    neg-int v10, v10

    .line 458
    :cond_1f
    int-to-short v1, v10

    .line 459
    .line 460
    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 461
    const/4 v1, 0x2

    .line 462
    .line 463
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 464
    .line 465
    :cond_20
    if-ne v4, v9, :cond_2b

    .line 466
    .line 467
    const/16 v1, 0x6e

    .line 468
    .line 469
    const/16 v8, 0x75

    .line 470
    .line 471
    const/16 v10, 0x6c

    .line 472
    .line 473
    if-ne v13, v1, :cond_23

    .line 474
    .line 475
    aget-byte v1, v3, v4

    .line 476
    .line 477
    if-ne v1, v8, :cond_22

    .line 478
    .line 479
    add-int/lit8 v1, v4, 0x1

    .line 480
    .line 481
    aget-byte v1, v3, v1

    .line 482
    .line 483
    if-ne v1, v10, :cond_22

    .line 484
    .line 485
    add-int/lit8 v1, v4, 0x2

    .line 486
    .line 487
    aget-byte v1, v3, v1

    .line 488
    .line 489
    if-ne v1, v10, :cond_22

    .line 490
    .line 491
    add-int/lit8 v1, v4, 0x3

    .line 492
    .line 493
    move/from16 v7, v26

    .line 494
    .line 495
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 496
    const/4 v7, 0x5

    .line 497
    .line 498
    iput-byte v7, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 499
    .line 500
    if-ne v1, v5, :cond_21

    .line 501
    :goto_17
    move v4, v1

    .line 502
    .line 503
    move/from16 v13, v16

    .line 504
    goto :goto_19

    .line 505
    .line 506
    :cond_21
    add-int/lit8 v4, v4, 0x4

    .line 507
    .line 508
    aget-byte v1, v3, v1

    .line 509
    :goto_18
    move v13, v1

    .line 510
    :goto_19
    const/4 v7, 0x0

    .line 511
    :goto_1a
    const/4 v8, 0x1

    .line 512
    .line 513
    const/16 v24, 0x1

    .line 514
    .line 515
    goto/16 :goto_1c

    .line 516
    :cond_22
    const/4 v7, 0x0

    .line 517
    const/4 v8, 0x1

    .line 518
    .line 519
    goto/16 :goto_1c

    .line 520
    .line 521
    :cond_23
    const/16 v1, 0x74

    .line 522
    const/4 v11, 0x4

    .line 523
    .line 524
    if-ne v13, v1, :cond_25

    .line 525
    .line 526
    aget-byte v1, v3, v4

    .line 527
    .line 528
    const/16 v12, 0x72

    .line 529
    .line 530
    if-ne v1, v12, :cond_25

    .line 531
    .line 532
    add-int/lit8 v1, v4, 0x1

    .line 533
    .line 534
    aget-byte v1, v3, v1

    .line 535
    .line 536
    if-ne v1, v8, :cond_25

    .line 537
    .line 538
    add-int/lit8 v1, v4, 0x2

    .line 539
    .line 540
    aget-byte v1, v3, v1

    .line 541
    .line 542
    if-ne v1, v7, :cond_25

    .line 543
    .line 544
    add-int/lit8 v1, v4, 0x3

    .line 545
    const/4 v7, 0x1

    .line 546
    .line 547
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 548
    .line 549
    iput-byte v11, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 550
    .line 551
    if-ne v1, v5, :cond_24

    .line 552
    goto :goto_17

    .line 553
    .line 554
    :cond_24
    add-int/lit8 v4, v4, 0x4

    .line 555
    .line 556
    aget-byte v1, v3, v1

    .line 557
    goto :goto_18

    .line 558
    .line 559
    :cond_25
    const/16 v1, 0x66

    .line 560
    .line 561
    const/16 v8, 0x61

    .line 562
    .line 563
    if-ne v13, v1, :cond_27

    .line 564
    .line 565
    add-int/lit8 v1, v4, 0x3

    .line 566
    .line 567
    if-ge v1, v5, :cond_27

    .line 568
    .line 569
    aget-byte v12, v3, v4

    .line 570
    .line 571
    if-ne v12, v8, :cond_27

    .line 572
    .line 573
    add-int/lit8 v12, v4, 0x1

    .line 574
    .line 575
    aget-byte v12, v3, v12

    .line 576
    .line 577
    if-ne v12, v10, :cond_27

    .line 578
    .line 579
    add-int/lit8 v10, v4, 0x2

    .line 580
    .line 581
    aget-byte v10, v3, v10

    .line 582
    .line 583
    const/16 v12, 0x73

    .line 584
    .line 585
    if-ne v10, v12, :cond_27

    .line 586
    .line 587
    aget-byte v1, v3, v1

    .line 588
    .line 589
    if-ne v1, v7, :cond_27

    .line 590
    .line 591
    add-int/lit8 v1, v4, 0x4

    .line 592
    const/4 v7, 0x0

    .line 593
    .line 594
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 595
    .line 596
    iput-byte v11, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 597
    .line 598
    if-ne v1, v5, :cond_26

    .line 599
    move v4, v1

    .line 600
    .line 601
    move/from16 v13, v16

    .line 602
    goto :goto_1a

    .line 603
    .line 604
    :cond_26
    add-int/lit8 v4, v4, 0x5

    .line 605
    .line 606
    aget-byte v1, v3, v1

    .line 607
    move v13, v1

    .line 608
    goto :goto_1a

    .line 609
    :cond_27
    const/4 v7, 0x0

    .line 610
    .line 611
    const/16 v1, 0x4e

    .line 612
    .line 613
    if-ne v13, v1, :cond_29

    .line 614
    .line 615
    aget-byte v10, v3, v4

    .line 616
    .line 617
    if-ne v10, v8, :cond_29

    .line 618
    .line 619
    add-int/lit8 v8, v4, 0x1

    .line 620
    .line 621
    aget-byte v8, v3, v8

    .line 622
    .line 623
    if-ne v8, v1, :cond_29

    .line 624
    .line 625
    add-int/lit8 v1, v4, 0x2

    .line 626
    const/4 v8, 0x1

    .line 627
    .line 628
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 629
    .line 630
    const/16 v10, 0xe

    .line 631
    .line 632
    iput-byte v10, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 633
    .line 634
    if-ne v1, v5, :cond_28

    .line 635
    move v4, v1

    .line 636
    .line 637
    move/from16 v13, v16

    .line 638
    goto :goto_1b

    .line 639
    .line 640
    :cond_28
    add-int/lit8 v4, v4, 0x3

    .line 641
    .line 642
    aget-byte v1, v3, v1

    .line 643
    move v13, v1

    .line 644
    .line 645
    :goto_1b
    move/from16 v24, v8

    .line 646
    goto :goto_1c

    .line 647
    :cond_29
    const/4 v8, 0x1

    .line 648
    .line 649
    const/16 v1, 0x7b

    .line 650
    .line 651
    if-ne v13, v1, :cond_2a

    .line 652
    .line 653
    if-nez v6, :cond_2a

    .line 654
    .line 655
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 656
    int-to-char v1, v13

    .line 657
    .line 658
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    .line 662
    move-result-object v1

    .line 663
    .line 664
    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 665
    const/4 v1, 0x6

    .line 666
    .line 667
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 668
    return-void

    .line 669
    .line 670
    :cond_2a
    const/16 v1, 0x5b

    .line 671
    .line 672
    if-ne v13, v1, :cond_2c

    .line 673
    .line 674
    if-nez v6, :cond_2c

    .line 675
    .line 676
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 677
    int-to-char v1, v13

    .line 678
    .line 679
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 683
    move-result-object v1

    .line 684
    .line 685
    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 686
    const/4 v1, 0x7

    .line 687
    .line 688
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 689
    return-void

    .line 690
    .line 691
    :cond_2b
    move/from16 v8, v26

    .line 692
    const/4 v7, 0x0

    .line 693
    .line 694
    :cond_2c
    :goto_1c
    if-eqz v6, :cond_2f

    .line 695
    .line 696
    if-eq v13, v6, :cond_2d

    .line 697
    .line 698
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 699
    int-to-char v1, v6

    .line 700
    .line 701
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString0()V

    .line 705
    const/4 v1, 0x3

    .line 706
    .line 707
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 708
    return-void

    .line 709
    .line 710
    :cond_2d
    if-ne v4, v5, :cond_2e

    .line 711
    .line 712
    move/from16 v13, v16

    .line 713
    goto :goto_1d

    .line 714
    .line 715
    :cond_2e
    add-int/lit8 v1, v4, 0x1

    .line 716
    .line 717
    aget-byte v2, v3, v4

    .line 718
    move v4, v1

    .line 719
    move v13, v2

    .line 720
    .line 721
    :cond_2f
    :goto_1d
    const/16 v1, 0x4c

    .line 722
    .line 723
    if-eq v13, v1, :cond_31

    .line 724
    .line 725
    const/16 v1, 0x46

    .line 726
    .line 727
    if-eq v13, v1, :cond_31

    .line 728
    .line 729
    const/16 v1, 0x44

    .line 730
    .line 731
    if-eq v13, v1, :cond_31

    .line 732
    .line 733
    const/16 v1, 0x42

    .line 734
    .line 735
    if-eq v13, v1, :cond_31

    .line 736
    .line 737
    const/16 v1, 0x53

    .line 738
    .line 739
    if-ne v13, v1, :cond_30

    .line 740
    goto :goto_1f

    .line 741
    .line 742
    :cond_30
    :goto_1e
    const/16 v1, 0x20

    .line 743
    goto :goto_23

    .line 744
    .line 745
    :cond_31
    :goto_1f
    const/16 v1, 0x42

    .line 746
    .line 747
    if-eq v13, v1, :cond_36

    .line 748
    .line 749
    const/16 v1, 0x44

    .line 750
    .line 751
    if-eq v13, v1, :cond_35

    .line 752
    .line 753
    const/16 v1, 0x46

    .line 754
    .line 755
    if-eq v13, v1, :cond_34

    .line 756
    .line 757
    const/16 v1, 0x4c

    .line 758
    .line 759
    if-eq v13, v1, :cond_33

    .line 760
    .line 761
    const/16 v1, 0x53

    .line 762
    .line 763
    if-eq v13, v1, :cond_32

    .line 764
    goto :goto_20

    .line 765
    .line 766
    :cond_32
    if-nez v23, :cond_37

    .line 767
    .line 768
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 769
    const/4 v2, 0x2

    .line 770
    .line 771
    if-eq v1, v2, :cond_37

    .line 772
    .line 773
    move/from16 v1, v25

    .line 774
    .line 775
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 776
    goto :goto_20

    .line 777
    :cond_33
    const/4 v2, 0x2

    .line 778
    .line 779
    sub-int v1, v4, v9

    .line 780
    .line 781
    const/16 v6, 0x13

    .line 782
    .line 783
    if-ge v1, v6, :cond_37

    .line 784
    .line 785
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 786
    .line 787
    if-eq v1, v2, :cond_37

    .line 788
    .line 789
    const/16 v1, 0xb

    .line 790
    .line 791
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 792
    goto :goto_20

    .line 793
    .line 794
    :cond_34
    const/16 v1, 0xc

    .line 795
    .line 796
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 797
    goto :goto_20

    .line 798
    .line 799
    :cond_35
    const/16 v1, 0xd

    .line 800
    .line 801
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 802
    goto :goto_20

    .line 803
    .line 804
    :cond_36
    if-nez v23, :cond_37

    .line 805
    .line 806
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 807
    const/4 v2, 0x2

    .line 808
    .line 809
    if-eq v1, v2, :cond_37

    .line 810
    .line 811
    const/16 v1, 0x9

    .line 812
    .line 813
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 814
    .line 815
    :cond_37
    :goto_20
    if-ne v4, v5, :cond_38

    .line 816
    .line 817
    :goto_21
    move/from16 v13, v16

    .line 818
    goto :goto_1e

    .line 819
    .line 820
    :cond_38
    add-int/lit8 v1, v4, 0x1

    .line 821
    .line 822
    aget-byte v2, v3, v4

    .line 823
    :goto_22
    move v4, v1

    .line 824
    move v13, v2

    .line 825
    goto :goto_1e

    .line 826
    .line 827
    :goto_23
    if-gt v13, v1, :cond_3a

    .line 828
    .line 829
    shl-long v1, v21, v13

    .line 830
    .line 831
    and-long v1, v1, v19

    .line 832
    .line 833
    cmp-long v1, v1, v17

    .line 834
    .line 835
    if-eqz v1, :cond_3a

    .line 836
    .line 837
    if-ne v4, v5, :cond_39

    .line 838
    goto :goto_21

    .line 839
    .line 840
    :cond_39
    add-int/lit8 v1, v4, 0x1

    .line 841
    .line 842
    aget-byte v2, v3, v4

    .line 843
    goto :goto_22

    .line 844
    .line 845
    :cond_3a
    const/16 v1, 0x2c

    .line 846
    .line 847
    if-ne v13, v1, :cond_3b

    .line 848
    move v1, v8

    .line 849
    goto :goto_24

    .line 850
    :cond_3b
    move v1, v7

    .line 851
    .line 852
    :goto_24
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 853
    .line 854
    if-eqz v1, :cond_3e

    .line 855
    .line 856
    if-ne v4, v5, :cond_3c

    .line 857
    .line 858
    move/from16 v2, v16

    .line 859
    goto :goto_25

    .line 860
    .line 861
    :cond_3c
    add-int/lit8 v1, v4, 0x1

    .line 862
    .line 863
    aget-byte v2, v3, v4

    .line 864
    move v4, v1

    .line 865
    :goto_25
    move v13, v2

    .line 866
    .line 867
    const/16 v1, 0x20

    .line 868
    .line 869
    :goto_26
    if-gt v13, v1, :cond_3e

    .line 870
    .line 871
    shl-long v6, v21, v13

    .line 872
    .line 873
    and-long v6, v6, v19

    .line 874
    .line 875
    cmp-long v2, v6, v17

    .line 876
    .line 877
    if-eqz v2, :cond_3e

    .line 878
    .line 879
    if-ne v4, v5, :cond_3d

    .line 880
    .line 881
    move/from16 v13, v16

    .line 882
    goto :goto_26

    .line 883
    .line 884
    :cond_3d
    add-int/lit8 v2, v4, 0x1

    .line 885
    .line 886
    aget-byte v4, v3, v4

    .line 887
    move v13, v4

    .line 888
    move v4, v2

    .line 889
    goto :goto_26

    .line 890
    .line 891
    :cond_3e
    if-eqz v24, :cond_3f

    .line 892
    .line 893
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 894
    int-to-char v1, v13

    .line 895
    .line 896
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 897
    return-void

    .line 898
    .line 899
    :cond_3f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 900
    .line 901
    const-string v2, "illegal input error"

    .line 902
    .line 903
    .line 904
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 905
    move-result-object v2

    .line 906
    .line 907
    .line 908
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 909
    throw v1
.end method

.method public final readPattern()Ljava/lang/String;
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 9
    .line 10
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    move v3, v2

    .line 12
    .line 13
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 14
    .line 15
    if-ge v3, v4, :cond_1

    .line 16
    .line 17
    aget-byte v4, v0, v3

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
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 33
    .line 34
    add-int/lit8 v2, v3, 0x1

    .line 35
    .line 36
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 37
    .line 38
    const/16 v5, 0x1a

    .line 39
    .line 40
    if-ne v2, v4, :cond_2

    .line 41
    move v3, v2

    .line 42
    :goto_2
    move v2, v5

    .line 43
    goto :goto_3

    .line 44
    .line 45
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 46
    .line 47
    aget-byte v2, v0, v2

    .line 48
    .line 49
    :goto_3
    const-wide/16 v6, 0x0

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide v8, 0x100003701L

    .line 55
    .line 56
    const-wide/16 v10, 0x1

    .line 57
    .line 58
    const/16 v4, 0x20

    .line 59
    .line 60
    if-gt v2, v4, :cond_4

    .line 61
    .line 62
    shl-long v12, v10, v2

    .line 63
    and-long/2addr v12, v8

    .line 64
    .line 65
    cmp-long v12, v12, v6

    .line 66
    .line 67
    if-eqz v12, :cond_4

    .line 68
    .line 69
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 70
    .line 71
    if-ne v3, v2, :cond_3

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .line 75
    .line 76
    aget-byte v3, v0, v3

    .line 77
    move v14, v3

    .line 78
    move v3, v2

    .line 79
    move v2, v14

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_4
    const/16 v12, 0x2c

    .line 83
    .line 84
    if-ne v2, v12, :cond_5

    .line 85
    const/4 v12, 0x1

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const/4 v12, 0x0

    .line 88
    .line 89
    :goto_4
    iput-boolean v12, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 90
    .line 91
    if-eqz v12, :cond_8

    .line 92
    .line 93
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 94
    .line 95
    if-ne v3, v2, :cond_6

    .line 96
    move v2, v3

    .line 97
    move v3, v5

    .line 98
    goto :goto_5

    .line 99
    .line 100
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .line 101
    .line 102
    aget-byte v3, v0, v3

    .line 103
    :goto_5
    move v14, v3

    .line 104
    move v3, v2

    .line 105
    move v2, v14

    .line 106
    .line 107
    :goto_6
    if-gt v2, v4, :cond_8

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
    if-eqz v12, :cond_8

    .line 115
    .line 116
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 117
    .line 118
    if-ne v3, v2, :cond_7

    .line 119
    move v2, v5

    .line 120
    goto :goto_6

    .line 121
    .line 122
    :cond_7
    add-int/lit8 v2, v3, 0x1

    .line 123
    .line 124
    aget-byte v3, v0, v3

    .line 125
    goto :goto_5

    .line 126
    .line 127
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 128
    int-to-char v0, v2

    .line 129
    .line 130
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 131
    return-object v1

    .line 132
    .line 133
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 134
    .line 135
    const-string v1, "illegal pattern"

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 139
    throw v0
.end method

.method public final readReference()Ljava/lang/String;
    .locals 15

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->referenceBegin:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 11
    .line 12
    add-int/lit8 v2, v0, 0x1

    .line 13
    .line 14
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    .line 16
    aget-byte v0, v1, v0

    .line 17
    int-to-char v0, v0

    .line 18
    .line 19
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 26
    .line 27
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 28
    .line 29
    :goto_0
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v6, 0x100003701L

    .line 35
    .line 36
    const-wide/16 v8, 0x1

    .line 37
    .line 38
    const/16 v10, 0x20

    .line 39
    .line 40
    const/16 v11, 0x1a

    .line 41
    .line 42
    if-gt v2, v10, :cond_2

    .line 43
    .line 44
    shl-long v12, v8, v2

    .line 45
    and-long/2addr v12, v6

    .line 46
    .line 47
    cmp-long v12, v12, v4

    .line 48
    .line 49
    if-eqz v12, :cond_2

    .line 50
    .line 51
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 52
    .line 53
    if-ne v3, v2, :cond_1

    .line 54
    move v2, v11

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 58
    .line 59
    aget-byte v3, v1, v3

    .line 60
    move v14, v3

    .line 61
    move v3, v2

    .line 62
    move v2, v14

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    const/16 v12, 0x7d

    .line 66
    .line 67
    if-ne v2, v12, :cond_a

    .line 68
    .line 69
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 70
    .line 71
    if-ne v3, v2, :cond_3

    .line 72
    move v2, v3

    .line 73
    :goto_1
    move v3, v11

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .line 77
    .line 78
    aget-byte v3, v1, v3

    .line 79
    .line 80
    :goto_2
    if-gt v3, v10, :cond_5

    .line 81
    .line 82
    shl-long v12, v8, v3

    .line 83
    and-long/2addr v12, v6

    .line 84
    .line 85
    cmp-long v12, v12, v4

    .line 86
    .line 87
    if-eqz v12, :cond_5

    .line 88
    .line 89
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 90
    .line 91
    if-ne v2, v3, :cond_4

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 95
    .line 96
    aget-byte v2, v1, v2

    .line 97
    move v14, v3

    .line 98
    move v3, v2

    .line 99
    move v2, v14

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_5
    const/16 v12, 0x2c

    .line 103
    .line 104
    if-ne v3, v12, :cond_6

    .line 105
    const/4 v12, 0x1

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    const/4 v12, 0x0

    .line 108
    .line 109
    :goto_3
    iput-boolean v12, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 110
    .line 111
    if-eqz v12, :cond_9

    .line 112
    .line 113
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 114
    .line 115
    if-ne v2, v3, :cond_7

    .line 116
    move v3, v2

    .line 117
    move v2, v11

    .line 118
    goto :goto_4

    .line 119
    .line 120
    :cond_7
    add-int/lit8 v3, v2, 0x1

    .line 121
    .line 122
    aget-byte v2, v1, v2

    .line 123
    :goto_4
    move v14, v3

    .line 124
    move v3, v2

    .line 125
    move v2, v14

    .line 126
    .line 127
    :goto_5
    if-gt v3, v10, :cond_9

    .line 128
    .line 129
    shl-long v12, v8, v3

    .line 130
    and-long/2addr v12, v6

    .line 131
    .line 132
    cmp-long v12, v12, v4

    .line 133
    .line 134
    if-eqz v12, :cond_9

    .line 135
    .line 136
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 137
    .line 138
    if-ne v2, v3, :cond_8

    .line 139
    move v3, v11

    .line 140
    goto :goto_5

    .line 141
    .line 142
    :cond_8
    add-int/lit8 v3, v2, 0x1

    .line 143
    .line 144
    aget-byte v2, v1, v2

    .line 145
    goto :goto_4

    .line 146
    :cond_9
    int-to-char v1, v3

    .line 147
    .line 148
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 149
    .line 150
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 151
    return-object v0

    .line 152
    .line 153
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    const-string v3, "illegal reference : "

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 174
    throw v1
.end method

.method public readString()Ljava/lang/String;
    .locals 21

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
    .line 24
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 28
    const/4 v7, 0x1

    .line 29
    move v8, v4

    .line 30
    move v9, v6

    .line 31
    move v10, v7

    .line 32
    .line 33
    :goto_1
    if-ge v8, v5, :cond_25

    .line 34
    .line 35
    aget-byte v11, v1, v8

    .line 36
    .line 37
    const/16 v12, 0x78

    .line 38
    .line 39
    const/16 v13, 0x75

    .line 40
    .line 41
    const/16 v15, 0x5c

    .line 42
    .line 43
    const/16 v16, 0x4

    .line 44
    .line 45
    const/16 v17, 0x2

    .line 46
    .line 47
    if-ne v11, v15, :cond_4

    .line 48
    .line 49
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 50
    .line 51
    add-int/lit8 v11, v8, 0x1

    .line 52
    .line 53
    aget-byte v11, v1, v11

    .line 54
    .line 55
    if-ne v11, v13, :cond_2

    .line 56
    const/4 v14, 0x6

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_2
    if-ne v11, v12, :cond_3

    .line 60
    .line 61
    move/from16 v14, v16

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_3
    move/from16 v14, v17

    .line 65
    :goto_2
    add-int/2addr v8, v14

    .line 66
    .line 67
    move/from16 v18, v7

    .line 68
    .line 69
    goto/16 :goto_14

    .line 70
    .line 71
    :cond_4
    if-ltz v11, :cond_24

    .line 72
    .line 73
    if-ne v11, v2, :cond_23

    .line 74
    .line 75
    iget-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 76
    .line 77
    move/from16 v18, v7

    .line 78
    const/4 v7, 0x0

    .line 79
    .line 80
    if-eqz v11, :cond_13

    .line 81
    .line 82
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 83
    .line 84
    if-nez v8, :cond_5

    .line 85
    .line 86
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 87
    .line 88
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v8

    .line 93
    .line 94
    check-cast v8, [C

    .line 95
    .line 96
    iput-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 97
    .line 98
    :cond_5
    if-eqz v8, :cond_7

    .line 99
    array-length v10, v8

    .line 100
    .line 101
    if-ge v10, v9, :cond_6

    .line 102
    goto :goto_4

    .line 103
    :cond_6
    :goto_3
    move-object v11, v8

    .line 104
    goto :goto_5

    .line 105
    .line 106
    :cond_7
    :goto_4
    new-array v8, v9, [C

    .line 107
    .line 108
    iput-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 109
    goto :goto_3

    .line 110
    :goto_5
    move v8, v6

    .line 111
    .line 112
    :goto_6
    aget-byte v10, v1, v4

    .line 113
    .line 114
    const/16 v19, 0xc

    .line 115
    .line 116
    if-ne v10, v15, :cond_10

    .line 117
    .line 118
    add-int/lit8 v10, v4, 0x1

    .line 119
    .line 120
    const/16 v20, 0x6

    .line 121
    .line 122
    aget-byte v14, v1, v10

    .line 123
    .line 124
    if-eq v14, v3, :cond_f

    .line 125
    .line 126
    if-eq v14, v15, :cond_f

    .line 127
    .line 128
    const/16 v15, 0x62

    .line 129
    .line 130
    if-eq v14, v15, :cond_e

    .line 131
    .line 132
    const/16 v15, 0x66

    .line 133
    .line 134
    if-eq v14, v15, :cond_8

    .line 135
    .line 136
    const/16 v15, 0x6e

    .line 137
    .line 138
    if-eq v14, v15, :cond_d

    .line 139
    .line 140
    const/16 v15, 0x72

    .line 141
    .line 142
    if-eq v14, v15, :cond_c

    .line 143
    .line 144
    if-eq v14, v12, :cond_b

    .line 145
    .line 146
    const/16 v15, 0x74

    .line 147
    .line 148
    if-eq v14, v15, :cond_a

    .line 149
    .line 150
    if-eq v14, v13, :cond_9

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 154
    move-result v19

    .line 155
    .line 156
    :cond_8
    :goto_7
    move/from16 v14, v19

    .line 157
    goto :goto_9

    .line 158
    .line 159
    :cond_9
    add-int/lit8 v10, v4, 0x2

    .line 160
    .line 161
    aget-byte v10, v1, v10

    .line 162
    .line 163
    add-int/lit8 v14, v4, 0x3

    .line 164
    .line 165
    aget-byte v14, v1, v14

    .line 166
    .line 167
    add-int/lit8 v15, v4, 0x4

    .line 168
    .line 169
    aget-byte v15, v1, v15

    .line 170
    .line 171
    add-int/lit8 v4, v4, 0x5

    .line 172
    .line 173
    aget-byte v12, v1, v4

    .line 174
    .line 175
    .line 176
    invoke-static {v10, v14, v15, v12}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 177
    move-result v19

    .line 178
    :goto_8
    move v10, v4

    .line 179
    goto :goto_7

    .line 180
    .line 181
    :cond_a
    const/16 v19, 0x9

    .line 182
    goto :goto_7

    .line 183
    .line 184
    :cond_b
    add-int/lit8 v10, v4, 0x2

    .line 185
    .line 186
    aget-byte v10, v1, v10

    .line 187
    .line 188
    add-int/lit8 v4, v4, 0x3

    .line 189
    .line 190
    aget-byte v12, v1, v4

    .line 191
    .line 192
    .line 193
    invoke-static {v10, v12}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 194
    move-result v19

    .line 195
    goto :goto_8

    .line 196
    .line 197
    :cond_c
    const/16 v19, 0xd

    .line 198
    goto :goto_7

    .line 199
    .line 200
    :cond_d
    const/16 v19, 0xa

    .line 201
    goto :goto_7

    .line 202
    .line 203
    :cond_e
    const/16 v19, 0x8

    .line 204
    goto :goto_7

    .line 205
    :cond_f
    :goto_9
    int-to-char v4, v14

    .line 206
    .line 207
    aput-char v4, v11, v8

    .line 208
    .line 209
    add-int/lit8 v10, v10, 0x1

    .line 210
    move v4, v10

    .line 211
    goto :goto_a

    .line 212
    .line 213
    :cond_10
    const/16 v20, 0x6

    .line 214
    .line 215
    if-ne v10, v2, :cond_11

    .line 216
    .line 217
    new-instance v2, Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    invoke-direct {v2, v11, v6, v9}, Ljava/lang/String;-><init>([CII)V

    .line 221
    move v8, v4

    .line 222
    .line 223
    goto/16 :goto_c

    .line 224
    .line 225
    :cond_11
    if-ltz v10, :cond_12

    .line 226
    int-to-char v10, v10

    .line 227
    .line 228
    aput-char v10, v11, v8

    .line 229
    .line 230
    add-int/lit8 v4, v4, 0x1

    .line 231
    goto :goto_a

    .line 232
    .line 233
    :cond_12
    and-int/lit16 v12, v10, 0xff

    .line 234
    .line 235
    shr-int/lit8 v12, v12, 0x4

    .line 236
    .line 237
    .line 238
    packed-switch v12, :pswitch_data_0

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v4, v10, v11, v8}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8([BII[CI)V

    .line 242
    .line 243
    add-int/lit8 v4, v4, 0x4

    .line 244
    .line 245
    add-int/lit8 v8, v8, 0x1

    .line 246
    goto :goto_a

    .line 247
    .line 248
    :pswitch_0
    and-int/lit8 v10, v10, 0xf

    .line 249
    .line 250
    shl-int/lit8 v10, v10, 0xc

    .line 251
    .line 252
    add-int/lit8 v12, v4, 0x1

    .line 253
    .line 254
    aget-byte v12, v1, v12

    .line 255
    .line 256
    and-int/lit8 v12, v12, 0x3f

    .line 257
    .line 258
    shl-int/lit8 v12, v12, 0x6

    .line 259
    or-int/2addr v10, v12

    .line 260
    .line 261
    add-int/lit8 v12, v4, 0x2

    .line 262
    .line 263
    aget-byte v12, v1, v12

    .line 264
    .line 265
    and-int/lit8 v12, v12, 0x3f

    .line 266
    or-int/2addr v10, v12

    .line 267
    int-to-char v10, v10

    .line 268
    .line 269
    aput-char v10, v11, v8

    .line 270
    .line 271
    add-int/lit8 v4, v4, 0x3

    .line 272
    goto :goto_a

    .line 273
    .line 274
    :pswitch_1
    add-int/lit8 v12, v4, 0x1

    .line 275
    .line 276
    aget-byte v12, v1, v12

    .line 277
    .line 278
    and-int/lit8 v10, v10, 0x1f

    .line 279
    .line 280
    shl-int/lit8 v10, v10, 0x6

    .line 281
    .line 282
    and-int/lit8 v12, v12, 0x3f

    .line 283
    or-int/2addr v10, v12

    .line 284
    int-to-char v10, v10

    .line 285
    .line 286
    aput-char v10, v11, v8

    .line 287
    .line 288
    add-int/lit8 v4, v4, 0x2

    .line 289
    .line 290
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 291
    .line 292
    const/16 v12, 0x78

    .line 293
    .line 294
    const/16 v15, 0x5c

    .line 295
    .line 296
    goto/16 :goto_6

    .line 297
    .line 298
    :cond_13
    if-eqz v10, :cond_19

    .line 299
    .line 300
    sub-int v2, v8, v4

    .line 301
    .line 302
    sget v9, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 303
    .line 304
    if-ge v9, v3, :cond_18

    .line 305
    .line 306
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 307
    .line 308
    if-nez v3, :cond_14

    .line 309
    .line 310
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 311
    .line 312
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3, v9, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    move-result-object v3

    .line 317
    .line 318
    check-cast v3, [C

    .line 319
    .line 320
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 321
    .line 322
    :cond_14
    if-eqz v3, :cond_15

    .line 323
    array-length v9, v3

    .line 324
    .line 325
    if-ge v9, v2, :cond_16

    .line 326
    .line 327
    :cond_15
    new-array v3, v2, [C

    .line 328
    .line 329
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->charBuf:[C

    .line 330
    :cond_16
    move v9, v6

    .line 331
    .line 332
    :goto_b
    if-ge v9, v2, :cond_17

    .line 333
    .line 334
    add-int v10, v4, v9

    .line 335
    .line 336
    aget-byte v10, v1, v10

    .line 337
    int-to-char v10, v10

    .line 338
    .line 339
    aput-char v10, v3, v9

    .line 340
    .line 341
    add-int/lit8 v9, v9, 0x1

    .line 342
    goto :goto_b

    .line 343
    .line 344
    :cond_17
    new-instance v4, Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    invoke-direct {v4, v3, v6, v2}, Ljava/lang/String;-><init>([CII)V

    .line 348
    move-object v2, v4

    .line 349
    goto :goto_c

    .line 350
    .line 351
    :cond_18
    new-instance v3, Ljava/lang/String;

    .line 352
    .line 353
    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 354
    .line 355
    .line 356
    invoke-direct {v3, v1, v4, v2, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 357
    move-object v2, v3

    .line 358
    goto :goto_c

    .line 359
    .line 360
    :cond_19
    new-instance v2, Ljava/lang/String;

    .line 361
    .line 362
    sub-int v3, v8, v4

    .line 363
    .line 364
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 365
    .line 366
    .line 367
    invoke-direct {v2, v1, v4, v3, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 368
    .line 369
    :goto_c
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 370
    .line 371
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 372
    .line 373
    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 374
    .line 375
    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 376
    and-long/2addr v3, v9

    .line 377
    .line 378
    const-wide/16 v9, 0x0

    .line 379
    .line 380
    cmp-long v3, v3, v9

    .line 381
    .line 382
    if-eqz v3, :cond_1a

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 386
    move-result-object v2

    .line 387
    .line 388
    .line 389
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 390
    move-result v3

    .line 391
    .line 392
    if-eqz v3, :cond_1b

    .line 393
    .line 394
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 395
    .line 396
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 397
    .line 398
    sget-object v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 399
    .line 400
    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 401
    and-long/2addr v3, v11

    .line 402
    .line 403
    cmp-long v3, v3, v9

    .line 404
    .line 405
    if-eqz v3, :cond_1b

    .line 406
    goto :goto_d

    .line 407
    :cond_1b
    move-object v7, v2

    .line 408
    .line 409
    :goto_d
    add-int/lit8 v2, v8, 0x1

    .line 410
    .line 411
    const/16 v3, 0x1a

    .line 412
    .line 413
    if-ne v2, v5, :cond_1c

    .line 414
    move v8, v2

    .line 415
    :goto_e
    move v2, v3

    .line 416
    goto :goto_f

    .line 417
    .line 418
    :cond_1c
    add-int/lit8 v8, v8, 0x2

    .line 419
    .line 420
    aget-byte v2, v1, v2

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :goto_f
    const-wide v11, 0x100003701L

    .line 426
    .line 427
    const-wide/16 v13, 0x1

    .line 428
    .line 429
    const/16 v4, 0x20

    .line 430
    .line 431
    if-gt v2, v4, :cond_1e

    .line 432
    .line 433
    shl-long v15, v13, v2

    .line 434
    and-long/2addr v15, v11

    .line 435
    .line 436
    cmp-long v15, v15, v9

    .line 437
    .line 438
    if-eqz v15, :cond_1e

    .line 439
    .line 440
    if-ne v8, v5, :cond_1d

    .line 441
    goto :goto_e

    .line 442
    .line 443
    :cond_1d
    add-int/lit8 v2, v8, 0x1

    .line 444
    .line 445
    aget-byte v4, v1, v8

    .line 446
    move v8, v2

    .line 447
    move v2, v4

    .line 448
    goto :goto_f

    .line 449
    .line 450
    :cond_1e
    const/16 v15, 0x2c

    .line 451
    .line 452
    if-ne v2, v15, :cond_1f

    .line 453
    .line 454
    move/from16 v6, v18

    .line 455
    .line 456
    :cond_1f
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 457
    .line 458
    if-eqz v6, :cond_22

    .line 459
    .line 460
    if-ne v8, v5, :cond_20

    .line 461
    move v6, v3

    .line 462
    goto :goto_10

    .line 463
    .line 464
    :cond_20
    add-int/lit8 v2, v8, 0x1

    .line 465
    .line 466
    aget-byte v6, v1, v8

    .line 467
    goto :goto_12

    .line 468
    :goto_10
    move v2, v6

    .line 469
    .line 470
    :goto_11
    if-gt v2, v4, :cond_22

    .line 471
    .line 472
    shl-long v15, v13, v2

    .line 473
    and-long/2addr v15, v11

    .line 474
    .line 475
    cmp-long v6, v15, v9

    .line 476
    .line 477
    if-eqz v6, :cond_22

    .line 478
    .line 479
    if-ne v8, v5, :cond_21

    .line 480
    move v2, v3

    .line 481
    goto :goto_11

    .line 482
    .line 483
    :cond_21
    add-int/lit8 v2, v8, 0x1

    .line 484
    .line 485
    aget-byte v6, v1, v8

    .line 486
    :goto_12
    move v8, v2

    .line 487
    goto :goto_10

    .line 488
    :cond_22
    int-to-char v1, v2

    .line 489
    .line 490
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 491
    .line 492
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 493
    return-object v7

    .line 494
    .line 495
    :cond_23
    move/from16 v18, v7

    .line 496
    .line 497
    add-int/lit8 v8, v8, 0x1

    .line 498
    goto :goto_14

    .line 499
    .line 500
    :cond_24
    move/from16 v18, v7

    .line 501
    .line 502
    and-int/lit16 v7, v11, 0xff

    .line 503
    .line 504
    shr-int/lit8 v7, v7, 0x4

    .line 505
    .line 506
    .line 507
    packed-switch v7, :pswitch_data_1

    .line 508
    .line 509
    add-int/lit8 v8, v8, 0x4

    .line 510
    .line 511
    add-int/lit8 v9, v9, 0x1

    .line 512
    :goto_13
    move v10, v6

    .line 513
    goto :goto_14

    .line 514
    .line 515
    :pswitch_2
    add-int/lit8 v8, v8, 0x3

    .line 516
    goto :goto_13

    .line 517
    .line 518
    :pswitch_3
    add-int/lit8 v8, v8, 0x2

    .line 519
    goto :goto_13

    .line 520
    .line 521
    :goto_14
    add-int/lit8 v9, v9, 0x1

    .line 522
    .line 523
    move/from16 v7, v18

    .line 524
    .line 525
    goto/16 :goto_1

    .line 526
    .line 527
    :cond_25
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 528
    .line 529
    const-string v2, "invalid escape character EOI"

    .line 530
    .line 531
    .line 532
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 533
    throw v1

    .line 534
    nop

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
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readString0()V
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
    const/4 v3, 0x0

    .line 8
    .line 9
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 10
    .line 11
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 12
    const/4 v5, 0x1

    .line 13
    move v6, v2

    .line 14
    move v7, v3

    .line 15
    move v8, v5

    .line 16
    .line 17
    :goto_0
    aget-byte v9, v4, v6

    .line 18
    .line 19
    const/16 v10, 0x78

    .line 20
    .line 21
    const/16 v11, 0x75

    .line 22
    .line 23
    const/16 v12, 0x5c

    .line 24
    const/4 v13, 0x6

    .line 25
    const/4 v14, 0x4

    .line 26
    .line 27
    if-ne v9, v12, :cond_2

    .line 28
    .line 29
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 30
    .line 31
    add-int/lit8 v9, v6, 0x1

    .line 32
    .line 33
    aget-byte v9, v4, v9

    .line 34
    .line 35
    if-ne v9, v11, :cond_0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    if-ne v9, v10, :cond_1

    .line 39
    move v13, v14

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v13, 0x2

    .line 42
    :goto_1
    add-int/2addr v6, v13

    .line 43
    .line 44
    move/from16 v16, v5

    .line 45
    .line 46
    goto/16 :goto_b

    .line 47
    :cond_2
    const/4 v15, -0x2

    .line 48
    .line 49
    const-string v3, "malformed input around byte "

    .line 50
    .line 51
    if-ltz v9, :cond_11

    .line 52
    .line 53
    if-ne v9, v1, :cond_10

    .line 54
    .line 55
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    .line 56
    .line 57
    if-eqz v1, :cond_b

    .line 58
    .line 59
    new-array v1, v7, [C

    .line 60
    const/4 v6, 0x0

    .line 61
    .line 62
    :goto_2
    aget-byte v7, v4, v2

    .line 63
    .line 64
    const/16 v8, 0x22

    .line 65
    .line 66
    if-ne v7, v12, :cond_6

    .line 67
    .line 68
    add-int/lit8 v7, v2, 0x1

    .line 69
    .line 70
    aget-byte v9, v4, v7

    .line 71
    .line 72
    if-eq v9, v8, :cond_3

    .line 73
    .line 74
    if-eq v9, v12, :cond_3

    .line 75
    .line 76
    if-eq v9, v11, :cond_5

    .line 77
    .line 78
    if-eq v9, v10, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 82
    move-result v9

    .line 83
    .line 84
    :cond_3
    :goto_3
    move/from16 v16, v5

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_4
    add-int/lit8 v7, v2, 0x2

    .line 88
    .line 89
    aget-byte v7, v4, v7

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x3

    .line 92
    .line 93
    aget-byte v8, v4, v2

    .line 94
    .line 95
    .line 96
    invoke-static {v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 97
    move-result v9

    .line 98
    move v7, v2

    .line 99
    goto :goto_3

    .line 100
    .line 101
    :cond_5
    add-int/lit8 v7, v2, 0x2

    .line 102
    .line 103
    aget-byte v7, v4, v7

    .line 104
    .line 105
    add-int/lit8 v8, v2, 0x3

    .line 106
    .line 107
    aget-byte v8, v4, v8

    .line 108
    .line 109
    add-int/lit8 v9, v2, 0x4

    .line 110
    .line 111
    aget-byte v9, v4, v9

    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x5

    .line 114
    .line 115
    move/from16 v16, v5

    .line 116
    .line 117
    aget-byte v5, v4, v2

    .line 118
    .line 119
    .line 120
    invoke-static {v7, v8, v9, v5}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 121
    move-result v9

    .line 122
    move v7, v2

    .line 123
    :goto_4
    int-to-char v2, v9

    .line 124
    .line 125
    aput-char v2, v1, v6

    .line 126
    .line 127
    add-int/lit8 v7, v7, 0x1

    .line 128
    move v2, v7

    .line 129
    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :cond_6
    move/from16 v16, v5

    .line 133
    .line 134
    if-ne v7, v8, :cond_7

    .line 135
    .line 136
    new-instance v3, Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    .line 140
    move v6, v2

    .line 141
    .line 142
    goto/16 :goto_6

    .line 143
    .line 144
    :cond_7
    if-ltz v7, :cond_8

    .line 145
    int-to-char v5, v7

    .line 146
    .line 147
    aput-char v5, v1, v6

    .line 148
    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :cond_8
    and-int/lit16 v5, v7, 0xff

    .line 154
    shr-int/2addr v5, v14

    .line 155
    .line 156
    .line 157
    packed-switch v5, :pswitch_data_0

    .line 158
    .line 159
    shr-int/lit8 v5, v7, 0x3

    .line 160
    .line 161
    if-ne v5, v15, :cond_a

    .line 162
    .line 163
    add-int/lit8 v5, v2, 0x1

    .line 164
    .line 165
    add-int/lit8 v8, v2, 0x2

    .line 166
    .line 167
    aget-byte v5, v4, v5

    .line 168
    .line 169
    add-int/lit8 v9, v2, 0x3

    .line 170
    .line 171
    aget-byte v8, v4, v8

    .line 172
    .line 173
    add-int/lit8 v2, v2, 0x4

    .line 174
    .line 175
    aget-byte v9, v4, v9

    .line 176
    .line 177
    shl-int/lit8 v7, v7, 0x12

    .line 178
    .line 179
    shl-int/lit8 v17, v5, 0xc

    .line 180
    .line 181
    xor-int v7, v7, v17

    .line 182
    .line 183
    shl-int/lit8 v17, v8, 0x6

    .line 184
    .line 185
    xor-int v7, v7, v17

    .line 186
    .line 187
    .line 188
    const v17, 0x381f80

    .line 189
    .line 190
    xor-int v17, v9, v17

    .line 191
    .line 192
    xor-int v7, v7, v17

    .line 193
    .line 194
    and-int/lit16 v5, v5, 0xc0

    .line 195
    .line 196
    const/16 v10, 0x80

    .line 197
    .line 198
    if-ne v5, v10, :cond_9

    .line 199
    .line 200
    and-int/lit16 v5, v8, 0xc0

    .line 201
    .line 202
    if-ne v5, v10, :cond_9

    .line 203
    .line 204
    and-int/lit16 v5, v9, 0xc0

    .line 205
    .line 206
    if-ne v5, v10, :cond_9

    .line 207
    .line 208
    const/high16 v5, 0x10000

    .line 209
    .line 210
    if-lt v7, v5, :cond_9

    .line 211
    .line 212
    const/high16 v5, 0x110000

    .line 213
    .line 214
    if-ge v7, v5, :cond_9

    .line 215
    .line 216
    add-int/lit8 v5, v6, 0x1

    .line 217
    .line 218
    ushr-int/lit8 v8, v7, 0xa

    .line 219
    .line 220
    .line 221
    const v9, 0xd7c0

    .line 222
    add-int/2addr v8, v9

    .line 223
    int-to-char v8, v8

    .line 224
    .line 225
    aput-char v8, v1, v6

    .line 226
    .line 227
    and-int/lit16 v6, v7, 0x3ff

    .line 228
    .line 229
    .line 230
    const v7, 0xdc00

    .line 231
    add-int/2addr v6, v7

    .line 232
    int-to-char v6, v6

    .line 233
    .line 234
    aput-char v6, v1, v5

    .line 235
    move v6, v5

    .line 236
    goto :goto_5

    .line 237
    .line 238
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 239
    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v2

    .line 254
    .line 255
    .line 256
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 257
    throw v1

    .line 258
    .line 259
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 260
    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v2

    .line 275
    .line 276
    .line 277
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 278
    throw v1

    .line 279
    .line 280
    :pswitch_0
    add-int/lit8 v5, v2, 0x1

    .line 281
    .line 282
    add-int/lit8 v8, v2, 0x2

    .line 283
    .line 284
    aget-byte v5, v4, v5

    .line 285
    .line 286
    add-int/lit8 v2, v2, 0x3

    .line 287
    .line 288
    aget-byte v8, v4, v8

    .line 289
    .line 290
    and-int/lit8 v7, v7, 0xf

    .line 291
    .line 292
    shl-int/lit8 v7, v7, 0xc

    .line 293
    .line 294
    and-int/lit8 v5, v5, 0x3f

    .line 295
    shl-int/2addr v5, v13

    .line 296
    or-int/2addr v5, v7

    .line 297
    .line 298
    and-int/lit8 v7, v8, 0x3f

    .line 299
    or-int/2addr v5, v7

    .line 300
    int-to-char v5, v5

    .line 301
    .line 302
    aput-char v5, v1, v6

    .line 303
    goto :goto_5

    .line 304
    .line 305
    :pswitch_1
    add-int/lit8 v5, v2, 0x1

    .line 306
    .line 307
    add-int/lit8 v2, v2, 0x2

    .line 308
    .line 309
    aget-byte v5, v4, v5

    .line 310
    .line 311
    and-int/lit8 v7, v7, 0x1f

    .line 312
    shl-int/2addr v7, v13

    .line 313
    .line 314
    and-int/lit8 v5, v5, 0x3f

    .line 315
    or-int/2addr v5, v7

    .line 316
    int-to-char v5, v5

    .line 317
    .line 318
    aput-char v5, v1, v6

    .line 319
    .line 320
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 321
    .line 322
    move/from16 v5, v16

    .line 323
    .line 324
    const/16 v10, 0x78

    .line 325
    .line 326
    goto/16 :goto_2

    .line 327
    .line 328
    :cond_b
    move/from16 v16, v5

    .line 329
    .line 330
    if-eqz v8, :cond_c

    .line 331
    .line 332
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 333
    .line 334
    sub-int v2, v6, v1

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getLatin1String(II)Ljava/lang/String;

    .line 338
    move-result-object v3

    .line 339
    goto :goto_6

    .line 340
    .line 341
    :cond_c
    new-instance v3, Ljava/lang/String;

    .line 342
    .line 343
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 344
    .line 345
    sub-int v2, v6, v1

    .line 346
    .line 347
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 348
    .line 349
    .line 350
    invoke-direct {v3, v4, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 351
    .line 352
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 353
    .line 354
    aget-byte v1, v4, v6

    .line 355
    .line 356
    :goto_7
    const/16 v2, 0x20

    .line 357
    .line 358
    if-gt v1, v2, :cond_d

    .line 359
    .line 360
    const-wide/16 v7, 0x1

    .line 361
    shl-long/2addr v7, v1

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    const-wide v9, 0x100003701L

    .line 367
    and-long/2addr v7, v9

    .line 368
    .line 369
    const-wide/16 v9, 0x0

    .line 370
    .line 371
    cmp-long v2, v7, v9

    .line 372
    .line 373
    if-eqz v2, :cond_d

    .line 374
    .line 375
    add-int/lit8 v6, v6, 0x1

    .line 376
    .line 377
    aget-byte v1, v4, v6

    .line 378
    goto :goto_7

    .line 379
    .line 380
    :cond_d
    const/16 v2, 0x2c

    .line 381
    .line 382
    if-ne v1, v2, :cond_e

    .line 383
    .line 384
    move/from16 v4, v16

    .line 385
    goto :goto_8

    .line 386
    :cond_e
    const/4 v4, 0x0

    .line 387
    .line 388
    :goto_8
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 389
    .line 390
    add-int/lit8 v6, v6, 0x1

    .line 391
    .line 392
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 393
    .line 394
    if-ne v1, v2, :cond_f

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 398
    goto :goto_9

    .line 399
    :cond_f
    int-to-char v1, v1

    .line 400
    .line 401
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 402
    .line 403
    :goto_9
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 404
    return-void

    .line 405
    .line 406
    :cond_10
    move/from16 v16, v5

    .line 407
    .line 408
    add-int/lit8 v6, v6, 0x1

    .line 409
    goto :goto_b

    .line 410
    .line 411
    :cond_11
    move/from16 v16, v5

    .line 412
    .line 413
    and-int/lit16 v5, v9, 0xff

    .line 414
    shr-int/2addr v5, v14

    .line 415
    .line 416
    .line 417
    packed-switch v5, :pswitch_data_1

    .line 418
    .line 419
    shr-int/lit8 v5, v9, 0x3

    .line 420
    .line 421
    if-ne v5, v15, :cond_12

    .line 422
    .line 423
    add-int/lit8 v6, v6, 0x4

    .line 424
    .line 425
    add-int/lit8 v7, v7, 0x1

    .line 426
    :goto_a
    const/4 v8, 0x0

    .line 427
    goto :goto_b

    .line 428
    .line 429
    :cond_12
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
    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    move-result-object v2

    .line 445
    .line 446
    .line 447
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 448
    throw v1

    .line 449
    .line 450
    :pswitch_2
    add-int/lit8 v6, v6, 0x3

    .line 451
    goto :goto_a

    .line 452
    .line 453
    :pswitch_3
    add-int/lit8 v6, v6, 0x2

    .line 454
    goto :goto_a

    .line 455
    .line 456
    :goto_b
    add-int/lit8 v7, v7, 0x1

    .line 457
    .line 458
    move/from16 v5, v16

    .line 459
    const/4 v3, 0x0

    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    nop

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
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final readUUID()Ljava/util/UUID;
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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNull()V

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
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

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
    aget-byte v5, v2, v5

    .line 52
    .line 53
    if-ne v5, v1, :cond_8

    .line 54
    .line 55
    add-int/lit8 v5, v4, 0x8

    .line 56
    .line 57
    aget-byte v5, v2, v5

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
    aget-byte v5, v2, v5

    .line 66
    .line 67
    if-ne v5, v6, :cond_8

    .line 68
    .line 69
    add-int/lit8 v5, v4, 0x12

    .line 70
    .line 71
    aget-byte v5, v2, v5

    .line 72
    .line 73
    if-ne v5, v6, :cond_8

    .line 74
    .line 75
    add-int/lit8 v5, v4, 0x17

    .line 76
    .line 77
    aget-byte v5, v2, v5

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
    aget-byte v12, v2, v12

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
    aget-byte v12, v2, v12

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
    aget-byte v12, v2, v12

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
    aget-byte v14, v2, v14

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
    aget-byte v14, v2, v14

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
    aget-byte v5, v2, v5

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
    aget-byte v12, v2, v12

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
    aget-byte v14, v2, v14

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
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v4, v2, v4

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
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v1, v2, v1

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
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 304
    goto :goto_b

    .line 305
    :cond_f
    int-to-char v1, v4

    .line 306
    .line 307
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 308
    .line 309
    :goto_b
    new-instance v1, Ljava/util/UUID;

    .line 310
    .line 311
    .line 312
    invoke-direct {v1, v5, v6, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 313
    return-object v1

    .line 314
    .line 315
    .line 316
    :cond_10
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    .line 317
    move-result-object v1

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 321
    move-result v2

    .line 322
    .line 323
    if-eqz v2, :cond_11

    .line 324
    return-object v3

    .line 325
    .line 326
    .line 327
    :cond_11
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 328
    move-result-object v1

    .line 329
    return-object v1
.end method

.method public readValueHashCode()J
    .locals 25

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
    .line 29
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 30
    move v10, v5

    .line 31
    .line 32
    const-wide/16 v11, 0x0

    .line 33
    .line 34
    :goto_0
    const/16 v13, 0x78

    .line 35
    .line 36
    const/16 v14, 0x75

    .line 37
    .line 38
    const/16 v15, 0x5c

    .line 39
    .line 40
    const-wide/16 v16, 0x0

    .line 41
    .line 42
    if-ge v6, v7, :cond_1

    .line 43
    .line 44
    aget-byte v9, v3, v6

    .line 45
    .line 46
    if-ne v9, v1, :cond_3

    .line 47
    .line 48
    if-nez v10, :cond_2

    .line 49
    .line 50
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 51
    .line 52
    move-wide/from16 v11, v16

    .line 53
    .line 54
    :cond_1
    :goto_1
    const/16 v20, 0x20

    .line 55
    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_2
    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 59
    .line 60
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 61
    .line 62
    add-int/lit8 v6, v6, 0x1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_3
    if-ne v9, v15, :cond_6

    .line 66
    .line 67
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 68
    .line 69
    add-int/lit8 v9, v6, 0x1

    .line 70
    .line 71
    aget-byte v5, v3, v9

    .line 72
    .line 73
    if-eq v5, v14, :cond_5

    .line 74
    .line 75
    if-eq v5, v13, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 79
    move-result v5

    .line 80
    move v6, v9

    .line 81
    .line 82
    const/16 v20, 0x20

    .line 83
    move v9, v5

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_4
    add-int/lit8 v5, v6, 0x2

    .line 87
    .line 88
    aget-byte v5, v3, v5

    .line 89
    .line 90
    add-int/lit8 v6, v6, 0x3

    .line 91
    .line 92
    aget-byte v9, v3, v6

    .line 93
    .line 94
    .line 95
    invoke-static {v5, v9}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 96
    move-result v9

    .line 97
    .line 98
    const/16 v20, 0x20

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_5
    add-int/lit8 v5, v6, 0x2

    .line 102
    .line 103
    aget-byte v5, v3, v5

    .line 104
    .line 105
    add-int/lit8 v9, v6, 0x3

    .line 106
    .line 107
    aget-byte v9, v3, v9

    .line 108
    .line 109
    add-int/lit8 v19, v6, 0x4

    .line 110
    .line 111
    const/16 v20, 0x20

    .line 112
    .line 113
    aget-byte v8, v3, v19

    .line 114
    .line 115
    add-int/lit8 v6, v6, 0x5

    .line 116
    .line 117
    aget-byte v2, v3, v6

    .line 118
    .line 119
    .line 120
    invoke-static {v5, v9, v8, v2}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 121
    move-result v9

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :cond_6
    const/16 v20, 0x20

    .line 125
    .line 126
    const/16 v2, -0x3d

    .line 127
    .line 128
    if-eq v9, v2, :cond_7

    .line 129
    .line 130
    const/16 v2, -0x3e

    .line 131
    .line 132
    if-ne v9, v2, :cond_8

    .line 133
    .line 134
    :cond_7
    and-int/lit8 v2, v9, 0x1f

    .line 135
    .line 136
    shl-int/lit8 v2, v2, 0x6

    .line 137
    .line 138
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    aget-byte v5, v3, v6

    .line 141
    .line 142
    and-int/lit8 v5, v5, 0x3f

    .line 143
    or-int/2addr v2, v5

    .line 144
    int-to-char v9, v2

    .line 145
    .line 146
    :cond_8
    :goto_2
    const/16 v2, 0xff

    .line 147
    .line 148
    if-gt v9, v2, :cond_a

    .line 149
    .line 150
    if-ltz v9, :cond_a

    .line 151
    .line 152
    const/16 v2, 0x8

    .line 153
    .line 154
    if-ge v10, v2, :cond_a

    .line 155
    .line 156
    if-nez v10, :cond_9

    .line 157
    .line 158
    if-nez v9, :cond_9

    .line 159
    goto :goto_5

    .line 160
    .line 161
    .line 162
    :cond_9
    packed-switch v10, :pswitch_data_0

    .line 163
    goto :goto_4

    .line 164
    :pswitch_0
    int-to-byte v2, v9

    .line 165
    int-to-long v8, v2

    .line 166
    .line 167
    const/16 v2, 0x38

    .line 168
    shl-long/2addr v8, v2

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    const-wide v13, 0xffffffffffffffL

    .line 174
    :goto_3
    and-long/2addr v11, v13

    .line 175
    add-long/2addr v11, v8

    .line 176
    goto :goto_4

    .line 177
    :pswitch_1
    int-to-byte v2, v9

    .line 178
    int-to-long v8, v2

    .line 179
    .line 180
    const/16 v2, 0x30

    .line 181
    shl-long/2addr v8, v2

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    const-wide v13, 0xffffffffffffL

    .line 187
    goto :goto_3

    .line 188
    :pswitch_2
    int-to-byte v2, v9

    .line 189
    int-to-long v8, v2

    .line 190
    .line 191
    const/16 v2, 0x28

    .line 192
    shl-long/2addr v8, v2

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    const-wide v13, 0xffffffffffL

    .line 198
    goto :goto_3

    .line 199
    :pswitch_3
    int-to-byte v2, v9

    .line 200
    int-to-long v8, v2

    .line 201
    .line 202
    shl-long v8, v8, v20

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    const-wide v13, 0xffffffffL

    .line 208
    goto :goto_3

    .line 209
    :pswitch_4
    int-to-byte v2, v9

    .line 210
    .line 211
    shl-int/lit8 v2, v2, 0x18

    .line 212
    int-to-long v8, v2

    .line 213
    .line 214
    .line 215
    const-wide/32 v13, 0xffffff

    .line 216
    goto :goto_3

    .line 217
    :pswitch_5
    int-to-byte v2, v9

    .line 218
    .line 219
    shl-int/lit8 v2, v2, 0x10

    .line 220
    int-to-long v8, v2

    .line 221
    .line 222
    .line 223
    const-wide/32 v13, 0xffff

    .line 224
    goto :goto_3

    .line 225
    :pswitch_6
    int-to-byte v5, v9

    .line 226
    .line 227
    shl-int/lit8 v2, v5, 0x8

    .line 228
    int-to-long v8, v2

    .line 229
    .line 230
    const-wide/16 v13, 0xff

    .line 231
    goto :goto_3

    .line 232
    :pswitch_7
    int-to-byte v2, v9

    .line 233
    int-to-long v11, v2

    .line 234
    :goto_4
    add-int/2addr v6, v4

    .line 235
    .line 236
    add-int/lit8 v10, v10, 0x1

    .line 237
    .line 238
    const/16 v2, 0x22

    .line 239
    const/4 v5, 0x0

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_a
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 244
    .line 245
    move-wide/from16 v11, v16

    .line 246
    .line 247
    :goto_6
    cmp-long v1, v11, v16

    .line 248
    .line 249
    if-eqz v1, :cond_b

    .line 250
    .line 251
    move/from16 v21, v4

    .line 252
    goto :goto_b

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :cond_b
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 258
    move-wide v11, v1

    .line 259
    const/4 v1, 0x0

    .line 260
    .line 261
    :goto_7
    aget-byte v2, v3, v6

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    const-wide v8, 0x100000001b3L

    .line 267
    .line 268
    if-ne v2, v15, :cond_e

    .line 269
    .line 270
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    .line 271
    .line 272
    add-int/lit8 v2, v6, 0x1

    .line 273
    .line 274
    aget-byte v5, v3, v2

    .line 275
    .line 276
    if-eq v5, v14, :cond_d

    .line 277
    .line 278
    if-eq v5, v13, :cond_c

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 282
    move-result v5

    .line 283
    .line 284
    :goto_8
    move/from16 v21, v4

    .line 285
    goto :goto_9

    .line 286
    .line 287
    :cond_c
    add-int/lit8 v2, v6, 0x2

    .line 288
    .line 289
    aget-byte v2, v3, v2

    .line 290
    .line 291
    add-int/lit8 v5, v6, 0x3

    .line 292
    .line 293
    aget-byte v6, v3, v5

    .line 294
    .line 295
    .line 296
    invoke-static {v2, v6}, Lcom/alibaba/fastjson2/JSONReader;->char2(II)C

    .line 297
    move-result v2

    .line 298
    .line 299
    move/from16 v21, v5

    .line 300
    move v5, v2

    .line 301
    .line 302
    move/from16 v2, v21

    .line 303
    goto :goto_8

    .line 304
    .line 305
    :cond_d
    add-int/lit8 v2, v6, 0x2

    .line 306
    .line 307
    aget-byte v2, v3, v2

    .line 308
    .line 309
    add-int/lit8 v5, v6, 0x3

    .line 310
    .line 311
    aget-byte v5, v3, v5

    .line 312
    .line 313
    add-int/lit8 v10, v6, 0x4

    .line 314
    .line 315
    aget-byte v10, v3, v10

    .line 316
    .line 317
    add-int/lit8 v6, v6, 0x5

    .line 318
    .line 319
    move/from16 v21, v4

    .line 320
    .line 321
    aget-byte v4, v3, v6

    .line 322
    .line 323
    .line 324
    invoke-static {v2, v5, v10, v4}, Lcom/alibaba/fastjson2/JSONReader;->char4(IIII)C

    .line 325
    move-result v5

    .line 326
    move v2, v6

    .line 327
    .line 328
    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 329
    int-to-long v4, v5

    .line 330
    xor-long/2addr v4, v11

    .line 331
    mul-long/2addr v4, v8

    .line 332
    move v6, v2

    .line 333
    :goto_a
    move-wide v11, v4

    .line 334
    const/4 v4, 0x0

    .line 335
    .line 336
    goto/16 :goto_12

    .line 337
    .line 338
    :cond_e
    move/from16 v21, v4

    .line 339
    .line 340
    const/16 v4, 0x22

    .line 341
    .line 342
    if-ne v2, v4, :cond_16

    .line 343
    .line 344
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 345
    .line 346
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 347
    .line 348
    add-int/lit8 v6, v6, 0x1

    .line 349
    .line 350
    :goto_b
    const/16 v1, 0x1a

    .line 351
    .line 352
    if-ne v6, v7, :cond_f

    .line 353
    move v4, v1

    .line 354
    goto :goto_c

    .line 355
    .line 356
    :cond_f
    add-int/lit8 v2, v6, 0x1

    .line 357
    .line 358
    aget-byte v4, v3, v6

    .line 359
    move v6, v2

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    :goto_c
    const-wide v8, 0x100003701L

    .line 365
    .line 366
    const-wide/16 v13, 0x1

    .line 367
    .line 368
    move/from16 v2, v20

    .line 369
    .line 370
    if-gt v4, v2, :cond_11

    .line 371
    .line 372
    shl-long v22, v13, v4

    .line 373
    .line 374
    and-long v22, v22, v8

    .line 375
    .line 376
    cmp-long v2, v22, v16

    .line 377
    .line 378
    if-eqz v2, :cond_11

    .line 379
    .line 380
    if-ne v6, v7, :cond_10

    .line 381
    move v4, v1

    .line 382
    goto :goto_d

    .line 383
    .line 384
    :cond_10
    add-int/lit8 v2, v6, 0x1

    .line 385
    .line 386
    aget-byte v4, v3, v6

    .line 387
    move v6, v2

    .line 388
    .line 389
    :goto_d
    const/16 v20, 0x20

    .line 390
    goto :goto_c

    .line 391
    .line 392
    :cond_11
    const/16 v2, 0x2c

    .line 393
    .line 394
    if-ne v4, v2, :cond_12

    .line 395
    .line 396
    move/from16 v2, v21

    .line 397
    goto :goto_e

    .line 398
    :cond_12
    const/4 v2, 0x0

    .line 399
    .line 400
    :goto_e
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 401
    .line 402
    if-eqz v2, :cond_15

    .line 403
    .line 404
    if-ne v6, v7, :cond_13

    .line 405
    move v4, v1

    .line 406
    goto :goto_f

    .line 407
    .line 408
    :cond_13
    add-int/lit8 v2, v6, 0x1

    .line 409
    .line 410
    aget-byte v4, v3, v6

    .line 411
    move v6, v2

    .line 412
    .line 413
    :goto_f
    const/16 v5, 0x20

    .line 414
    .line 415
    :goto_10
    if-gt v4, v5, :cond_15

    .line 416
    .line 417
    shl-long v18, v13, v4

    .line 418
    .line 419
    and-long v18, v18, v8

    .line 420
    .line 421
    cmp-long v2, v18, v16

    .line 422
    .line 423
    if-eqz v2, :cond_15

    .line 424
    .line 425
    if-ne v6, v7, :cond_14

    .line 426
    move v4, v1

    .line 427
    goto :goto_10

    .line 428
    .line 429
    :cond_14
    add-int/lit8 v2, v6, 0x1

    .line 430
    .line 431
    aget-byte v4, v3, v6

    .line 432
    move v6, v2

    .line 433
    goto :goto_10

    .line 434
    .line 435
    :cond_15
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 436
    int-to-char v1, v4

    .line 437
    .line 438
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 439
    return-wide v11

    .line 440
    .line 441
    :cond_16
    move/from16 v5, v20

    .line 442
    .line 443
    if-ltz v2, :cond_17

    .line 444
    .line 445
    add-int/lit8 v6, v6, 0x1

    .line 446
    .line 447
    move-wide/from16 v23, v8

    .line 448
    const/4 v4, 0x0

    .line 449
    .line 450
    goto/16 :goto_11

    .line 451
    .line 452
    :cond_17
    and-int/lit16 v10, v2, 0xff

    .line 453
    .line 454
    shr-int/lit8 v10, v10, 0x4

    .line 455
    .line 456
    .line 457
    packed-switch v10, :pswitch_data_1

    .line 458
    .line 459
    shr-int/lit8 v10, v2, 0x3

    .line 460
    const/4 v4, -0x2

    .line 461
    .line 462
    const-string v5, "malformed input around byte "

    .line 463
    .line 464
    if-ne v10, v4, :cond_19

    .line 465
    .line 466
    add-int/lit8 v4, v6, 0x1

    .line 467
    .line 468
    add-int/lit8 v10, v6, 0x2

    .line 469
    .line 470
    aget-byte v4, v3, v4

    .line 471
    .line 472
    add-int/lit8 v22, v6, 0x3

    .line 473
    .line 474
    aget-byte v10, v3, v10

    .line 475
    .line 476
    add-int/lit8 v6, v6, 0x4

    .line 477
    .line 478
    move-wide/from16 v23, v8

    .line 479
    .line 480
    aget-byte v8, v3, v22

    .line 481
    .line 482
    shl-int/lit8 v2, v2, 0x12

    .line 483
    .line 484
    shl-int/lit8 v9, v4, 0xc

    .line 485
    xor-int/2addr v2, v9

    .line 486
    .line 487
    shl-int/lit8 v9, v10, 0x6

    .line 488
    xor-int/2addr v2, v9

    .line 489
    .line 490
    .line 491
    const v9, 0x381f80

    .line 492
    xor-int/2addr v9, v8

    .line 493
    xor-int/2addr v2, v9

    .line 494
    .line 495
    and-int/lit16 v4, v4, 0xc0

    .line 496
    .line 497
    const/16 v9, 0x80

    .line 498
    .line 499
    if-ne v4, v9, :cond_18

    .line 500
    .line 501
    and-int/lit16 v4, v10, 0xc0

    .line 502
    .line 503
    if-ne v4, v9, :cond_18

    .line 504
    .line 505
    and-int/lit16 v4, v8, 0xc0

    .line 506
    .line 507
    if-ne v4, v9, :cond_18

    .line 508
    .line 509
    const/high16 v4, 0x10000

    .line 510
    .line 511
    if-lt v2, v4, :cond_18

    .line 512
    .line 513
    const/high16 v4, 0x110000

    .line 514
    .line 515
    if-ge v2, v4, :cond_18

    .line 516
    .line 517
    ushr-int/lit8 v4, v2, 0xa

    .line 518
    .line 519
    .line 520
    const v5, 0xd7c0

    .line 521
    add-int/2addr v4, v5

    .line 522
    int-to-char v4, v4

    .line 523
    .line 524
    and-int/lit16 v2, v2, 0x3ff

    .line 525
    .line 526
    .line 527
    const v5, 0xdc00

    .line 528
    add-int/2addr v2, v5

    .line 529
    int-to-char v2, v2

    .line 530
    int-to-long v4, v4

    .line 531
    xor-long/2addr v4, v11

    .line 532
    .line 533
    mul-long v4, v4, v23

    .line 534
    int-to-long v8, v2

    .line 535
    xor-long/2addr v4, v8

    .line 536
    .line 537
    mul-long v4, v4, v23

    .line 538
    .line 539
    add-int/lit8 v1, v1, 0x1

    .line 540
    .line 541
    goto/16 :goto_a

    .line 542
    .line 543
    :cond_18
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 544
    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    move-result-object v2

    .line 559
    .line 560
    .line 561
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 562
    throw v1

    .line 563
    .line 564
    :cond_19
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 565
    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    move-result-object v2

    .line 580
    .line 581
    .line 582
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 583
    throw v1

    .line 584
    .line 585
    :pswitch_8
    move-wide/from16 v23, v8

    .line 586
    .line 587
    add-int/lit8 v4, v6, 0x1

    .line 588
    .line 589
    aget-byte v4, v3, v4

    .line 590
    .line 591
    add-int/lit8 v5, v6, 0x2

    .line 592
    .line 593
    aget-byte v5, v3, v5

    .line 594
    .line 595
    .line 596
    invoke-static {v2, v4, v5, v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(IIII)I

    .line 597
    move-result v2

    .line 598
    .line 599
    add-int/lit8 v6, v6, 0x3

    .line 600
    const/4 v4, 0x0

    .line 601
    .line 602
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 603
    goto :goto_11

    .line 604
    .line 605
    :pswitch_9
    move-wide/from16 v23, v8

    .line 606
    const/4 v4, 0x0

    .line 607
    .line 608
    add-int/lit8 v5, v6, 0x1

    .line 609
    .line 610
    aget-byte v5, v3, v5

    .line 611
    .line 612
    .line 613
    invoke-static {v2, v5, v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(III)I

    .line 614
    move-result v2

    .line 615
    .line 616
    add-int/lit8 v6, v6, 0x2

    .line 617
    .line 618
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    .line 619
    :goto_11
    int-to-long v8, v2

    .line 620
    xor-long/2addr v8, v11

    .line 621
    .line 622
    mul-long v8, v8, v23

    .line 623
    move-wide v11, v8

    .line 624
    .line 625
    :goto_12
    add-int/lit8 v1, v1, 0x1

    .line 626
    .line 627
    move/from16 v4, v21

    .line 628
    .line 629
    const/16 v20, 0x20

    .line 630
    .line 631
    goto/16 :goto_7

    .line 632
    nop

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
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
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
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    const/16 v0, 0x13

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    return-object v1

    .line 13
    .line 14
    :cond_0
    const/16 v0, 0x1e

    .line 15
    .line 16
    const/16 v2, 0x5a

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 21
    .line 22
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 23
    .line 24
    add-int/lit8 v4, v3, 0x1d

    .line 25
    .line 26
    aget-byte v4, v0, v4

    .line 27
    .line 28
    if-ne v4, v2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime29([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    const/16 v0, 0x1d

    .line 42
    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 46
    .line 47
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 48
    .line 49
    add-int/lit8 v4, v3, 0x1c

    .line 50
    .line 51
    aget-byte v4, v0, v4

    .line 52
    .line 53
    if-ne v4, v2, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime28([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    const/16 v0, 0x1c

    .line 67
    .line 68
    if-ne p1, v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 71
    .line 72
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 73
    .line 74
    add-int/lit8 v4, v3, 0x1b

    .line 75
    .line 76
    aget-byte v4, v0, v4

    .line 77
    .line 78
    if-ne v4, v2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime27([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 88
    move-result-object v0

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_3
    const/16 v0, 0x1b

    .line 92
    .line 93
    if-ne p1, v0, :cond_4

    .line 94
    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 96
    .line 97
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 98
    .line 99
    add-int/lit8 v4, v3, 0x1a

    .line 100
    .line 101
    aget-byte v4, v0, v4

    .line 102
    .line 103
    if-ne v4, v2, :cond_4

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime26([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 113
    move-result-object v0

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 117
    .line 118
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 119
    .line 120
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 121
    .line 122
    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v2, p1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    :goto_0
    if-nez v0, :cond_5

    .line 129
    return-object v1

    .line 130
    .line 131
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 132
    const/4 v2, 0x1

    .line 133
    add-int/2addr p1, v2

    .line 134
    add-int/2addr v1, p1

    .line 135
    .line 136
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 140
    .line 141
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 142
    .line 143
    const/16 v1, 0x2c

    .line 144
    .line 145
    if-ne p1, v1, :cond_6

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    const/4 v2, 0x0

    .line 148
    .line 149
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 150
    .line 151
    if-eqz v2, :cond_7

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 155
    :cond_7
    return-object v0

    .line 156
    .line 157
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 158
    .line 159
    const-string v0, "date only support string input"

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p1
.end method

.method public final skipComment()V
    .locals 12

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_a

    .line 9
    .line 10
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 11
    .line 12
    aget-byte v3, v2, v0

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
    aget-byte v1, v2, v1

    .line 30
    .line 31
    :goto_1
    if-eqz v3, :cond_2

    .line 32
    .line 33
    if-ne v1, v4, :cond_1

    .line 34
    .line 35
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 36
    .line 37
    if-gt v0, v1, :cond_1

    .line 38
    .line 39
    aget-byte v1, v2, v0

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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 59
    .line 60
    if-lt v0, v1, :cond_3

    .line 61
    goto :goto_6

    .line 62
    .line 63
    :cond_3
    aget-byte v1, v2, v0

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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 87
    .line 88
    if-lt v0, v1, :cond_4

    .line 89
    goto :goto_5

    .line 90
    .line 91
    :cond_4
    aget-byte v1, v2, v0

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
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 98
    .line 99
    if-lt v0, v1, :cond_8

    .line 100
    :goto_6
    int-to-char v1, v8

    .line 101
    .line 102
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 103
    .line 104
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 105
    .line 106
    if-ne v8, v6, :cond_7

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    .line 110
    :cond_7
    return-void

    .line 111
    .line 112
    :cond_8
    add-int/lit8 v1, v0, 0x1

    .line 113
    .line 114
    aget-byte v0, v2, v0

    .line 115
    move v11, v1

    .line 116
    move v1, v0

    .line 117
    move v0, v11

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 121
    .line 122
    const-string v1, "parse comment error"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v0

    .line 131
    .line 132
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 140
    throw v0
.end method

.method public final skipName()Z
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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readFieldNameHashCodeUnquote()J

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
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 61
    .line 62
    :goto_1
    add-int/lit8 v6, v3, 0x1

    .line 63
    .line 64
    aget-byte v7, v4, v3

    .line 65
    .line 66
    const/16 v8, 0x5c

    .line 67
    .line 68
    if-ne v7, v8, :cond_6

    .line 69
    .line 70
    aget-byte v3, v4, v6

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
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v0, v4, v6

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
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v3, v4, v6

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
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v6, v4, v6

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
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

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
    aget-byte v0, v4, v0

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
    int-to-char v0, v6

    .line 171
    .line 172
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 173
    return v5

    .line 174
    .line 175
    .line 176
    :cond_d
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReader;->syntaxError(I)Lcom/alibaba/fastjson2/JSONException;

    .line 177
    move-result-object v0

    .line 178
    throw v0

    .line 179
    :cond_e
    move v3, v6

    .line 180
    goto :goto_1
.end method

.method public final skipValue()V
    .locals 20

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
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 14
    .line 15
    const/16 v6, 0x27

    .line 16
    .line 17
    const/16 v9, 0x75

    .line 18
    .line 19
    const/16 v12, 0x22

    .line 20
    .line 21
    if-eq v2, v12, :cond_32

    .line 22
    .line 23
    if-eq v2, v6, :cond_32

    .line 24
    .line 25
    const/16 v6, 0x53

    .line 26
    .line 27
    const/16 v12, 0x65

    .line 28
    .line 29
    const/16 v13, 0x2e

    .line 30
    .line 31
    const/16 v14, 0x2d

    .line 32
    .line 33
    const/16 v15, 0x2b

    .line 34
    .line 35
    const-wide/16 v16, 0x0

    .line 36
    .line 37
    if-eq v2, v15, :cond_15

    .line 38
    .line 39
    const/16 v7, 0x66

    .line 40
    .line 41
    const/16 v8, 0x6c

    .line 42
    .line 43
    if-eq v2, v7, :cond_11

    .line 44
    .line 45
    const/16 v7, 0x6e

    .line 46
    .line 47
    if-eq v2, v7, :cond_d

    .line 48
    .line 49
    const/16 v7, 0x74

    .line 50
    .line 51
    if-eq v2, v7, :cond_9

    .line 52
    .line 53
    if-eq v2, v14, :cond_15

    .line 54
    .line 55
    if-eq v2, v13, :cond_15

    .line 56
    .line 57
    .line 58
    packed-switch v2, :pswitch_data_0

    .line 59
    .line 60
    const/16 v7, 0x5b

    .line 61
    .line 62
    if-ne v2, v7, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 66
    move v2, v5

    .line 67
    .line 68
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 69
    .line 70
    const/16 v6, 0x5d

    .line 71
    .line 72
    if-ne v3, v6, :cond_1

    .line 73
    .line 74
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 75
    .line 76
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 77
    .line 78
    if-ne v2, v4, :cond_0

    .line 79
    :goto_1
    move v3, v2

    .line 80
    .line 81
    :goto_2
    const/16 v2, 0x1a

    .line 82
    .line 83
    goto/16 :goto_17

    .line 84
    .line 85
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 86
    .line 87
    aget-byte v2, v1, v2

    .line 88
    .line 89
    goto/16 :goto_17

    .line 90
    .line 91
    :cond_1
    if-eqz v2, :cond_3

    .line 92
    .line 93
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 94
    .line 95
    if-eqz v3, :cond_2

    .line 96
    goto :goto_3

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->valueError()Lcom/alibaba/fastjson2/JSONException;

    .line 100
    move-result-object v1

    .line 101
    throw v1

    .line 102
    .line 103
    :cond_3
    :goto_3
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipValue()V

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_4
    const/16 v7, 0x7b

    .line 112
    .line 113
    if-ne v2, v7, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 117
    .line 118
    :goto_4
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 119
    .line 120
    const/16 v3, 0x7d

    .line 121
    .line 122
    if-ne v2, v3, :cond_6

    .line 123
    .line 124
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 125
    .line 126
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 127
    .line 128
    if-ne v2, v4, :cond_5

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_5
    add-int/lit8 v3, v2, 0x1

    .line 132
    .line 133
    aget-byte v2, v1, v2

    .line 134
    .line 135
    goto/16 :goto_17

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipName()Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipValue()V

    .line 142
    goto :goto_4

    .line 143
    .line 144
    :cond_7
    if-ne v2, v6, :cond_8

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfSet()Z

    .line 148
    move-result v5

    .line 149
    .line 150
    if-eqz v5, :cond_8

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipValue()V

    .line 154
    .line 155
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 156
    .line 157
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 158
    .line 159
    goto/16 :goto_17

    .line 160
    .line 161
    .line 162
    :cond_8
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 163
    move-result-object v1

    .line 164
    throw v1

    .line 165
    .line 166
    :cond_9
    add-int/lit8 v5, v3, 0x3

    .line 167
    .line 168
    if-gt v5, v4, :cond_c

    .line 169
    .line 170
    aget-byte v6, v1, v3

    .line 171
    .line 172
    const/16 v7, 0x72

    .line 173
    .line 174
    if-ne v6, v7, :cond_b

    .line 175
    .line 176
    add-int/lit8 v6, v3, 0x1

    .line 177
    .line 178
    aget-byte v6, v1, v6

    .line 179
    .line 180
    if-ne v6, v9, :cond_b

    .line 181
    .line 182
    add-int/lit8 v6, v3, 0x2

    .line 183
    .line 184
    aget-byte v6, v1, v6

    .line 185
    .line 186
    if-ne v6, v12, :cond_b

    .line 187
    .line 188
    if-ne v5, v4, :cond_a

    .line 189
    :goto_5
    move v3, v5

    .line 190
    goto :goto_2

    .line 191
    .line 192
    :cond_a
    add-int/lit8 v3, v3, 0x4

    .line 193
    .line 194
    aget-byte v2, v1, v5

    .line 195
    .line 196
    goto/16 :goto_17

    .line 197
    .line 198
    .line 199
    :cond_b
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 200
    move-result-object v1

    .line 201
    throw v1

    .line 202
    .line 203
    .line 204
    :cond_c
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 205
    move-result-object v1

    .line 206
    throw v1

    .line 207
    .line 208
    :cond_d
    add-int/lit8 v5, v3, 0x3

    .line 209
    .line 210
    if-gt v5, v4, :cond_10

    .line 211
    .line 212
    aget-byte v6, v1, v3

    .line 213
    .line 214
    if-ne v6, v9, :cond_f

    .line 215
    .line 216
    add-int/lit8 v6, v3, 0x1

    .line 217
    .line 218
    aget-byte v6, v1, v6

    .line 219
    .line 220
    if-ne v6, v8, :cond_f

    .line 221
    .line 222
    add-int/lit8 v6, v3, 0x2

    .line 223
    .line 224
    aget-byte v6, v1, v6

    .line 225
    .line 226
    if-ne v6, v8, :cond_f

    .line 227
    .line 228
    if-ne v5, v4, :cond_e

    .line 229
    goto :goto_5

    .line 230
    .line 231
    :cond_e
    add-int/lit8 v3, v3, 0x4

    .line 232
    .line 233
    aget-byte v2, v1, v5

    .line 234
    .line 235
    goto/16 :goto_17

    .line 236
    .line 237
    .line 238
    :cond_f
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 239
    move-result-object v1

    .line 240
    throw v1

    .line 241
    .line 242
    .line 243
    :cond_10
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 244
    move-result-object v1

    .line 245
    throw v1

    .line 246
    .line 247
    :cond_11
    add-int/lit8 v5, v3, 0x4

    .line 248
    .line 249
    if-gt v5, v4, :cond_14

    .line 250
    .line 251
    aget-byte v6, v1, v3

    .line 252
    .line 253
    const/16 v7, 0x61

    .line 254
    .line 255
    if-ne v6, v7, :cond_13

    .line 256
    .line 257
    add-int/lit8 v6, v3, 0x1

    .line 258
    .line 259
    aget-byte v6, v1, v6

    .line 260
    .line 261
    if-ne v6, v8, :cond_13

    .line 262
    .line 263
    add-int/lit8 v6, v3, 0x2

    .line 264
    .line 265
    aget-byte v6, v1, v6

    .line 266
    .line 267
    const/16 v7, 0x73

    .line 268
    .line 269
    if-ne v6, v7, :cond_13

    .line 270
    .line 271
    add-int/lit8 v6, v3, 0x3

    .line 272
    .line 273
    aget-byte v6, v1, v6

    .line 274
    .line 275
    if-ne v6, v12, :cond_13

    .line 276
    .line 277
    if-ne v5, v4, :cond_12

    .line 278
    goto :goto_5

    .line 279
    .line 280
    :cond_12
    add-int/lit8 v3, v3, 0x5

    .line 281
    .line 282
    aget-byte v2, v1, v5

    .line 283
    .line 284
    goto/16 :goto_17

    .line 285
    .line 286
    .line 287
    :cond_13
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 288
    move-result-object v1

    .line 289
    throw v1

    .line 290
    .line 291
    .line 292
    :cond_14
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 293
    move-result-object v1

    .line 294
    throw v1

    .line 295
    .line 296
    :cond_15
    :pswitch_0
    if-eq v2, v14, :cond_16

    .line 297
    .line 298
    if-ne v2, v15, :cond_17

    .line 299
    .line 300
    :cond_16
    if-ge v3, v4, :cond_31

    .line 301
    .line 302
    add-int/lit8 v2, v3, 0x1

    .line 303
    .line 304
    aget-byte v3, v1, v3

    .line 305
    .line 306
    move/from16 v19, v3

    .line 307
    move v3, v2

    .line 308
    .line 309
    move/from16 v2, v19

    .line 310
    .line 311
    :cond_17
    if-ne v2, v13, :cond_18

    .line 312
    const/4 v7, 0x1

    .line 313
    goto :goto_6

    .line 314
    :cond_18
    move v7, v5

    .line 315
    .line 316
    :goto_6
    const/16 v8, 0x39

    .line 317
    .line 318
    const/16 v9, 0x30

    .line 319
    .line 320
    if-nez v7, :cond_1c

    .line 321
    .line 322
    if-lt v2, v9, :cond_1c

    .line 323
    .line 324
    if-gt v2, v8, :cond_1c

    .line 325
    .line 326
    :cond_19
    if-ne v3, v4, :cond_1a

    .line 327
    .line 328
    const/16 v2, 0x1a

    .line 329
    goto :goto_7

    .line 330
    .line 331
    :cond_1a
    add-int/lit8 v2, v3, 0x1

    .line 332
    .line 333
    aget-byte v3, v1, v3

    .line 334
    .line 335
    move/from16 v19, v3

    .line 336
    move v3, v2

    .line 337
    .line 338
    move/from16 v2, v19

    .line 339
    .line 340
    :goto_7
    if-lt v2, v9, :cond_1b

    .line 341
    .line 342
    if-le v2, v8, :cond_19

    .line 343
    :cond_1b
    const/4 v7, 0x1

    .line 344
    goto :goto_8

    .line 345
    :cond_1c
    move v7, v5

    .line 346
    .line 347
    :goto_8
    const/16 v5, 0x44

    .line 348
    .line 349
    const/16 v10, 0x46

    .line 350
    .line 351
    const/16 v11, 0x4c

    .line 352
    .line 353
    if-eqz v7, :cond_1e

    .line 354
    .line 355
    if-eq v2, v11, :cond_1d

    .line 356
    .line 357
    if-eq v2, v10, :cond_1d

    .line 358
    .line 359
    if-eq v2, v5, :cond_1d

    .line 360
    .line 361
    const/16 v5, 0x42

    .line 362
    .line 363
    if-eq v2, v5, :cond_1d

    .line 364
    .line 365
    if-ne v2, v6, :cond_1e

    .line 366
    .line 367
    :cond_1d
    add-int/lit8 v2, v3, 0x1

    .line 368
    .line 369
    aget-byte v3, v1, v3

    .line 370
    .line 371
    move/from16 v19, v3

    .line 372
    move v3, v2

    .line 373
    .line 374
    move/from16 v2, v19

    .line 375
    .line 376
    :cond_1e
    if-ne v2, v13, :cond_23

    .line 377
    .line 378
    if-ne v3, v4, :cond_1f

    .line 379
    .line 380
    const/16 v2, 0x1a

    .line 381
    goto :goto_9

    .line 382
    .line 383
    :cond_1f
    add-int/lit8 v2, v3, 0x1

    .line 384
    .line 385
    aget-byte v3, v1, v3

    .line 386
    .line 387
    move/from16 v19, v3

    .line 388
    move v3, v2

    .line 389
    .line 390
    move/from16 v2, v19

    .line 391
    .line 392
    :goto_9
    if-lt v2, v9, :cond_22

    .line 393
    .line 394
    if-gt v2, v8, :cond_22

    .line 395
    .line 396
    :cond_20
    if-ne v3, v4, :cond_21

    .line 397
    .line 398
    const/16 v2, 0x1a

    .line 399
    goto :goto_a

    .line 400
    .line 401
    :cond_21
    add-int/lit8 v2, v3, 0x1

    .line 402
    .line 403
    aget-byte v3, v1, v3

    .line 404
    .line 405
    move/from16 v19, v3

    .line 406
    move v3, v2

    .line 407
    .line 408
    move/from16 v2, v19

    .line 409
    .line 410
    :goto_a
    if-lt v2, v9, :cond_22

    .line 411
    .line 412
    if-le v2, v8, :cond_20

    .line 413
    :cond_22
    const/4 v5, 0x1

    .line 414
    goto :goto_b

    .line 415
    :cond_23
    const/4 v5, 0x0

    .line 416
    .line 417
    :goto_b
    if-nez v7, :cond_25

    .line 418
    .line 419
    if-eqz v5, :cond_24

    .line 420
    goto :goto_c

    .line 421
    .line 422
    .line 423
    :cond_24
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->numberError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 424
    move-result-object v1

    .line 425
    throw v1

    .line 426
    .line 427
    :cond_25
    :goto_c
    if-eq v2, v12, :cond_26

    .line 428
    .line 429
    const/16 v5, 0x45

    .line 430
    .line 431
    if-ne v2, v5, :cond_2c

    .line 432
    .line 433
    :cond_26
    add-int/lit8 v2, v3, 0x1

    .line 434
    .line 435
    aget-byte v5, v1, v3

    .line 436
    .line 437
    if-eq v5, v15, :cond_28

    .line 438
    .line 439
    if-ne v5, v14, :cond_27

    .line 440
    goto :goto_d

    .line 441
    .line 442
    :cond_27
    const/16 v18, 0x0

    .line 443
    goto :goto_e

    .line 444
    .line 445
    :cond_28
    :goto_d
    if-ge v2, v4, :cond_30

    .line 446
    .line 447
    add-int/lit8 v3, v3, 0x2

    .line 448
    .line 449
    aget-byte v5, v1, v2

    .line 450
    move v2, v3

    .line 451
    .line 452
    const/16 v18, 0x1

    .line 453
    .line 454
    :goto_e
    if-lt v5, v9, :cond_2b

    .line 455
    .line 456
    if-gt v5, v8, :cond_2b

    .line 457
    .line 458
    :goto_f
    if-ne v2, v4, :cond_29

    .line 459
    move v3, v2

    .line 460
    .line 461
    const/16 v2, 0x1a

    .line 462
    goto :goto_10

    .line 463
    .line 464
    :cond_29
    add-int/lit8 v3, v2, 0x1

    .line 465
    .line 466
    aget-byte v2, v1, v2

    .line 467
    .line 468
    :goto_10
    if-lt v2, v9, :cond_2c

    .line 469
    .line 470
    if-le v2, v8, :cond_2a

    .line 471
    goto :goto_11

    .line 472
    :cond_2a
    move v2, v3

    .line 473
    goto :goto_f

    .line 474
    .line 475
    :cond_2b
    if-nez v18, :cond_2f

    .line 476
    move v3, v2

    .line 477
    move v2, v5

    .line 478
    .line 479
    :cond_2c
    :goto_11
    if-eq v2, v11, :cond_2d

    .line 480
    .line 481
    if-eq v2, v10, :cond_2d

    .line 482
    .line 483
    const/16 v5, 0x44

    .line 484
    .line 485
    if-eq v2, v5, :cond_2d

    .line 486
    .line 487
    const/16 v5, 0x42

    .line 488
    .line 489
    if-eq v2, v5, :cond_2d

    .line 490
    .line 491
    if-ne v2, v6, :cond_3a

    .line 492
    .line 493
    :cond_2d
    if-ne v3, v4, :cond_2e

    .line 494
    .line 495
    :goto_12
    goto/16 :goto_2

    .line 496
    .line 497
    :cond_2e
    add-int/lit8 v2, v3, 0x1

    .line 498
    .line 499
    aget-byte v3, v1, v3

    .line 500
    .line 501
    :goto_13
    move/from16 v19, v3

    .line 502
    move v3, v2

    .line 503
    .line 504
    move/from16 v2, v19

    .line 505
    goto :goto_17

    .line 506
    .line 507
    .line 508
    :cond_2f
    invoke-static {v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->numberError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 509
    move-result-object v1

    .line 510
    throw v1

    .line 511
    .line 512
    .line 513
    :cond_30
    invoke-static {v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->numberError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 514
    move-result-object v1

    .line 515
    throw v1

    .line 516
    .line 517
    .line 518
    :cond_31
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->numberError(II)Lcom/alibaba/fastjson2/JSONException;

    .line 519
    move-result-object v1

    .line 520
    throw v1

    .line 521
    .line 522
    :cond_32
    const-wide/16 v16, 0x0

    .line 523
    .line 524
    if-ne v2, v6, :cond_34

    .line 525
    .line 526
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 527
    .line 528
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 529
    .line 530
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableSingleQuote:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 531
    .line 532
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 533
    and-long/2addr v5, v7

    .line 534
    .line 535
    cmp-long v5, v5, v16

    .line 536
    .line 537
    if-nez v5, :cond_33

    .line 538
    goto :goto_14

    .line 539
    .line 540
    .line 541
    :cond_33
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->notSupportName()Lcom/alibaba/fastjson2/JSONException;

    .line 542
    move-result-object v1

    .line 543
    throw v1

    .line 544
    .line 545
    :cond_34
    :goto_14
    add-int/lit8 v5, v3, 0x1

    .line 546
    .line 547
    aget-byte v3, v1, v3

    .line 548
    .line 549
    :goto_15
    const/16 v6, 0x5c

    .line 550
    .line 551
    if-ne v3, v6, :cond_38

    .line 552
    .line 553
    add-int/lit8 v3, v5, 0x1

    .line 554
    .line 555
    aget-byte v6, v1, v5

    .line 556
    .line 557
    if-ne v6, v9, :cond_35

    .line 558
    .line 559
    add-int/lit8 v3, v5, 0x5

    .line 560
    goto :goto_16

    .line 561
    .line 562
    :cond_35
    const/16 v7, 0x78

    .line 563
    .line 564
    if-ne v6, v7, :cond_36

    .line 565
    .line 566
    add-int/lit8 v3, v5, 0x3

    .line 567
    goto :goto_16

    .line 568
    .line 569
    :cond_36
    const/16 v5, 0x5c

    .line 570
    .line 571
    if-eq v6, v5, :cond_37

    .line 572
    .line 573
    if-eq v6, v12, :cond_37

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONReader;->char1(I)C

    .line 577
    .line 578
    :cond_37
    :goto_16
    add-int/lit8 v5, v3, 0x1

    .line 579
    .line 580
    aget-byte v3, v1, v3

    .line 581
    goto :goto_15

    .line 582
    .line 583
    :cond_38
    if-ne v3, v2, :cond_42

    .line 584
    .line 585
    if-ne v5, v4, :cond_39

    .line 586
    .line 587
    goto/16 :goto_5

    .line 588
    .line 589
    :cond_39
    add-int/lit8 v2, v5, 0x1

    .line 590
    .line 591
    aget-byte v3, v1, v5

    .line 592
    goto :goto_13

    .line 593
    .line 594
    :cond_3a
    :goto_17
    const/16 v5, 0x20

    .line 595
    .line 596
    if-gt v2, v5, :cond_3c

    .line 597
    .line 598
    const-wide/16 v5, 0x1

    .line 599
    shl-long/2addr v5, v2

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    const-wide v7, 0x100003701L

    .line 605
    and-long/2addr v5, v7

    .line 606
    .line 607
    cmp-long v5, v5, v16

    .line 608
    .line 609
    if-eqz v5, :cond_3c

    .line 610
    .line 611
    if-ne v3, v4, :cond_3b

    .line 612
    goto :goto_12

    .line 613
    .line 614
    :cond_3b
    add-int/lit8 v2, v3, 0x1

    .line 615
    .line 616
    aget-byte v3, v1, v3

    .line 617
    goto :goto_13

    .line 618
    .line 619
    :cond_3c
    const/16 v5, 0x2c

    .line 620
    .line 621
    if-ne v2, v5, :cond_3f

    .line 622
    const/4 v6, 0x1

    .line 623
    .line 624
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 625
    .line 626
    if-ne v3, v4, :cond_3d

    .line 627
    move v2, v3

    .line 628
    .line 629
    const/16 v3, 0x1a

    .line 630
    goto :goto_18

    .line 631
    .line 632
    :cond_3d
    add-int/lit8 v2, v3, 0x1

    .line 633
    .line 634
    aget-byte v3, v1, v3

    .line 635
    .line 636
    :goto_18
    move/from16 v19, v3

    .line 637
    move v3, v2

    .line 638
    .line 639
    move/from16 v2, v19

    .line 640
    .line 641
    :goto_19
    const/16 v5, 0x20

    .line 642
    .line 643
    if-gt v2, v5, :cond_3f

    .line 644
    .line 645
    const-wide/16 v5, 0x1

    .line 646
    shl-long/2addr v5, v2

    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    const-wide v7, 0x100003701L

    .line 652
    and-long/2addr v5, v7

    .line 653
    .line 654
    cmp-long v5, v5, v16

    .line 655
    .line 656
    if-eqz v5, :cond_3f

    .line 657
    .line 658
    if-ne v3, v4, :cond_3e

    .line 659
    .line 660
    const/16 v2, 0x1a

    .line 661
    goto :goto_19

    .line 662
    .line 663
    :cond_3e
    add-int/lit8 v2, v3, 0x1

    .line 664
    .line 665
    aget-byte v3, v1, v3

    .line 666
    goto :goto_18

    .line 667
    .line 668
    :cond_3f
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 669
    .line 670
    if-nez v1, :cond_41

    .line 671
    .line 672
    const/16 v7, 0x1a

    .line 673
    .line 674
    if-eq v2, v7, :cond_41

    .line 675
    .line 676
    const/16 v1, 0x7d

    .line 677
    .line 678
    if-eq v2, v1, :cond_41

    .line 679
    .line 680
    const/16 v1, 0x5d

    .line 681
    .line 682
    if-eq v2, v1, :cond_41

    .line 683
    .line 684
    if-ne v2, v7, :cond_40

    .line 685
    goto :goto_1a

    .line 686
    .line 687
    .line 688
    :cond_40
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->error(II)Lcom/alibaba/fastjson2/JSONException;

    .line 689
    move-result-object v1

    .line 690
    throw v1

    .line 691
    :cond_41
    :goto_1a
    int-to-char v1, v2

    .line 692
    .line 693
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 694
    .line 695
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 696
    return-void

    .line 697
    :cond_42
    const/4 v6, 0x1

    .line 698
    .line 699
    const/16 v7, 0x1a

    .line 700
    .line 701
    add-int/lit8 v3, v5, 0x1

    .line 702
    .line 703
    aget-byte v5, v1, v5

    .line 704
    .line 705
    move/from16 v19, v5

    .line 706
    move v5, v3

    .line 707
    .line 708
    move/from16 v3, v19

    .line 709
    .line 710
    goto/16 :goto_15

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
    .line 731
    .line 732
    .line 733
    .line 734
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
