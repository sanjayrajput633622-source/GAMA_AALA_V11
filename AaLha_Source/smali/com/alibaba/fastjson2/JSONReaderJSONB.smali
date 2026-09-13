.class final Lcom/alibaba/fastjson2/JSONReaderJSONB;
.super Lcom/alibaba/fastjson2/JSONReader;
.source "SourceFile"


# static fields
.field static final BASE:J

.field static final FIXED_TYPE_SIZE:[B

.field static GB18030:Ljava/nio/charset/Charset;

.field static final SHANGHAI_ZONE_ID_NAME_BYTES:[B


# instance fields
.field protected final bytes:[B

.field protected final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field protected charBuf:[C

.field protected final end:I

.field protected final length:I

.field protected strBegin:I

.field protected strlen:I

.field protected strtype:B

.field protected symbol0Begin:I

.field protected symbol0Hash:J

.field protected symbol0Length:I

.field protected symbol0StrType:B

.field protected final symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

.field protected symbols:[J

.field protected type:B

.field protected valueBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    const-class v1, [B

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    .line 11
    sput-wide v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 12
    .line 13
    const-string v0, "Asia/Shanghai"

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->SHANGHAI_ZONE_ID_NAME_BYTES:[B

    .line 20
    .line 21
    const/16 v0, 0x100

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    .line 26
    fill-array-data v0, :array_0

    .line 27
    .line 28
    sput-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->FIXED_TYPE_SIZE:[B

    .line 29
    return-void

    .line 30
    nop

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x5t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x5t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x2t
        0x9t
        0x5t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v3, v2

    sub-int/2addr v3, v0

    and-int v0, v1, v3

    .line 3
    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 4
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 5
    iget v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    new-array v0, v0, [B

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p2, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 7
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 8
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->length:I

    .line 10
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 11
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    return-void

    :cond_2
    add-int/2addr v2, v3

    .line 12
    :try_start_1
    array-length v3, v0

    if-ne v2, v3, :cond_1

    .line 13
    array-length v3, v0

    iget v4, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "read error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    .line 16
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 17
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 18
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->length:I

    add-int/2addr p3, p4

    .line 19
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 20
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 21
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    array-length p3, p1

    sub-int/2addr p3, v0

    and-int/2addr p2, p3

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

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

.method public static getInt3([BII)I
    .locals 1

    .line 1
    .line 2
    add-int/lit8 p2, p2, -0x44

    .line 3
    .line 4
    shl-int/lit8 p2, p2, 0x10

    .line 5
    .line 6
    aget-byte v0, p0, p1

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    shl-int/lit8 v0, v0, 0x8

    .line 11
    add-int/2addr p2, v0

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    aget-byte p0, p0, p1

    .line 16
    .line 17
    and-int/lit16 p0, p0, 0xff

    .line 18
    add-int/2addr p2, p0

    .line 19
    return p2
.end method

.method private getObjectReaderContext(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-class p3, Lcom/alibaba/fastjson2/JSON;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    :catch_0
    :cond_1
    if-eqz v1, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 34
    move-result-object p1

    .line 35
    :cond_2
    return-object p1
.end method

.method private notSupportString()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "readString not support type "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, ", offset "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 39
    array-length v2, v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method private static notSupportType(B)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "name not support input : "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 27
    return-object v0
.end method

.method private readBigInteger0(B)Ljava/math/BigInteger;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    const/16 v1, -0x6f

    .line 5
    .line 6
    if-eq p1, v1, :cond_12

    .line 7
    .line 8
    const/16 v1, -0x47

    .line 9
    .line 10
    if-eq p1, v1, :cond_10

    .line 11
    .line 12
    const/16 v1, 0x48

    .line 13
    .line 14
    if-eq p1, v1, :cond_f

    .line 15
    .line 16
    const/16 v1, 0x7c

    .line 17
    const/4 v2, -0x1

    .line 18
    .line 19
    const/16 v3, 0x2e

    .line 20
    .line 21
    if-eq p1, v1, :cond_d

    .line 22
    .line 23
    const/16 v1, 0x79

    .line 24
    .line 25
    if-eq p1, v1, :cond_b

    .line 26
    .line 27
    const/16 v1, 0x7a

    .line 28
    .line 29
    if-eq p1, v1, :cond_9

    .line 30
    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    packed-switch p1, :pswitch_data_1

    .line 36
    .line 37
    const/16 v1, -0x10

    .line 38
    .line 39
    if-lt p1, v1, :cond_0

    .line 40
    .line 41
    const/16 v1, 0x2f

    .line 42
    .line 43
    if-gt p1, v1, :cond_0

    .line 44
    int-to-long v0, p1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    .line 51
    :cond_0
    const/16 v1, 0x30

    .line 52
    .line 53
    if-lt p1, v1, :cond_1

    .line 54
    .line 55
    const/16 v1, 0x3f

    .line 56
    .line 57
    if-gt p1, v1, :cond_1

    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x38

    .line 60
    .line 61
    shl-int/lit8 p1, p1, 0x8

    .line 62
    .line 63
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 64
    .line 65
    add-int/lit8 v2, v1, 0x1

    .line 66
    .line 67
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 68
    .line 69
    aget-byte v0, v0, v1

    .line 70
    .line 71
    and-int/lit16 v0, v0, 0xff

    .line 72
    add-int/2addr p1, v0

    .line 73
    int-to-long v0, p1

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    .line 80
    :cond_1
    const/16 v1, 0x40

    .line 81
    .line 82
    if-lt p1, v1, :cond_2

    .line 83
    .line 84
    const/16 v1, 0x47

    .line 85
    .line 86
    if-gt p1, v1, :cond_2

    .line 87
    .line 88
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 92
    move-result p1

    .line 93
    .line 94
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x2

    .line 97
    .line 98
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 99
    int-to-long v0, p1

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    .line 106
    :cond_2
    const/16 v1, -0x28

    .line 107
    .line 108
    if-lt p1, v1, :cond_3

    .line 109
    .line 110
    const/16 v1, -0x11

    .line 111
    .line 112
    if-gt p1, v1, :cond_3

    .line 113
    .line 114
    add-int/lit8 p1, p1, 0x20

    .line 115
    int-to-long v0, p1

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    .line 122
    :cond_3
    const/16 v1, -0x38

    .line 123
    .line 124
    if-lt p1, v1, :cond_4

    .line 125
    .line 126
    const/16 v1, -0x29

    .line 127
    .line 128
    if-gt p1, v1, :cond_4

    .line 129
    .line 130
    add-int/lit8 p1, p1, 0x30

    .line 131
    .line 132
    shl-int/lit8 p1, p1, 0x8

    .line 133
    .line 134
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 135
    .line 136
    add-int/lit8 v2, v1, 0x1

    .line 137
    .line 138
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 139
    .line 140
    aget-byte v0, v0, v1

    .line 141
    .line 142
    and-int/lit16 v0, v0, 0xff

    .line 143
    add-int/2addr p1, v0

    .line 144
    int-to-long v0, p1

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    .line 151
    :cond_4
    const/16 v1, -0x40

    .line 152
    .line 153
    if-lt p1, v1, :cond_5

    .line 154
    .line 155
    const/16 v1, -0x39

    .line 156
    .line 157
    if-gt p1, v1, :cond_5

    .line 158
    .line 159
    add-int/lit8 p1, p1, 0x3c

    .line 160
    .line 161
    shl-int/lit8 p1, p1, 0x10

    .line 162
    .line 163
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 164
    .line 165
    add-int/lit8 v2, v1, 0x1

    .line 166
    .line 167
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 168
    .line 169
    aget-byte v3, v0, v1

    .line 170
    .line 171
    and-int/lit16 v3, v3, 0xff

    .line 172
    .line 173
    shl-int/lit8 v3, v3, 0x8

    .line 174
    add-int/2addr p1, v3

    .line 175
    .line 176
    add-int/lit8 v1, v1, 0x2

    .line 177
    .line 178
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 179
    .line 180
    aget-byte v0, v0, v2

    .line 181
    .line 182
    and-int/lit16 v0, v0, 0xff

    .line 183
    add-int/2addr p1, v0

    .line 184
    int-to-long v0, p1

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 188
    move-result-object p1

    .line 189
    return-object p1

    .line 190
    .line 191
    :cond_5
    const/16 v0, 0x49

    .line 192
    .line 193
    if-lt p1, v0, :cond_6

    .line 194
    .line 195
    const/16 v1, 0x78

    .line 196
    .line 197
    if-gt p1, v1, :cond_6

    .line 198
    sub-int/2addr p1, v0

    .line 199
    .line 200
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 207
    add-int/2addr v1, p1

    .line 208
    .line 209
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 210
    .line 211
    new-instance p1, Ljava/math/BigInteger;

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 215
    return-object p1

    .line 216
    .line 217
    .line 218
    :cond_6
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 219
    move-result-object p1

    .line 220
    throw p1

    .line 221
    .line 222
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 223
    .line 224
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 225
    .line 226
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 227
    int-to-long v3, v3

    .line 228
    add-long/2addr v1, v3

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 232
    move-result-wide v0

    .line 233
    .line 234
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 235
    .line 236
    add-int/lit8 p1, p1, 0x8

    .line 237
    .line 238
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 239
    .line 240
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 241
    .line 242
    if-eqz p1, :cond_7

    .line 243
    goto :goto_0

    .line 244
    .line 245
    .line 246
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 247
    move-result-wide v0

    .line 248
    .line 249
    .line 250
    :goto_0
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 251
    move-result-object p1

    .line 252
    return-object p1

    .line 253
    .line 254
    :pswitch_1
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 255
    .line 256
    add-int/lit8 v1, p1, 0x1

    .line 257
    .line 258
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 259
    .line 260
    aget-byte p1, v0, p1

    .line 261
    int-to-long v0, p1

    .line 262
    .line 263
    .line 264
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 265
    move-result-object p1

    .line 266
    return-object p1

    .line 267
    .line 268
    :pswitch_2
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 269
    .line 270
    add-int/lit8 v1, p1, 0x1

    .line 271
    .line 272
    aget-byte v1, v0, v1

    .line 273
    .line 274
    and-int/lit16 v1, v1, 0xff

    .line 275
    .line 276
    aget-byte v0, v0, p1

    .line 277
    .line 278
    shl-int/lit8 v0, v0, 0x8

    .line 279
    add-int/2addr v1, v0

    .line 280
    .line 281
    add-int/lit8 p1, p1, 0x2

    .line 282
    .line 283
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 284
    int-to-long v0, v1

    .line 285
    .line 286
    .line 287
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 288
    move-result-object p1

    .line 289
    return-object p1

    .line 290
    .line 291
    :pswitch_3
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 292
    .line 293
    .line 294
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 295
    move-result p1

    .line 296
    .line 297
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 298
    .line 299
    add-int/lit8 v0, v0, 0x4

    .line 300
    .line 301
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 302
    .line 303
    .line 304
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 305
    move-result p1

    .line 306
    float-to-long v0, p1

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 310
    move-result-object p1

    .line 311
    return-object p1

    .line 312
    .line 313
    .line 314
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 315
    move-result p1

    .line 316
    int-to-float p1, p1

    .line 317
    float-to-long v0, p1

    .line 318
    .line 319
    .line 320
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 321
    move-result-object p1

    .line 322
    return-object p1

    .line 323
    .line 324
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 325
    .line 326
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 327
    .line 328
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 329
    int-to-long v3, v3

    .line 330
    add-long/2addr v1, v3

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 334
    move-result-wide v0

    .line 335
    .line 336
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 337
    .line 338
    add-int/lit8 p1, p1, 0x8

    .line 339
    .line 340
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 341
    .line 342
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 343
    .line 344
    if-eqz p1, :cond_8

    .line 345
    goto :goto_1

    .line 346
    .line 347
    .line 348
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 349
    move-result-wide v0

    .line 350
    .line 351
    .line 352
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 353
    move-result-wide v0

    .line 354
    double-to-long v0, v0

    .line 355
    .line 356
    .line 357
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 358
    move-result-object p1

    .line 359
    return-object p1

    .line 360
    .line 361
    .line 362
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 363
    move-result-wide v0

    .line 364
    long-to-double v0, v0

    .line 365
    double-to-long v0, v0

    .line 366
    .line 367
    .line 368
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 369
    move-result-object p1

    .line 370
    return-object p1

    .line 371
    .line 372
    :pswitch_7
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 373
    return-object p1

    .line 374
    .line 375
    :pswitch_8
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 376
    return-object p1

    .line 377
    :pswitch_9
    const/4 p1, 0x0

    .line 378
    return-object p1

    .line 379
    .line 380
    .line 381
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 382
    move-result p1

    .line 383
    .line 384
    new-instance v1, Ljava/lang/String;

    .line 385
    .line 386
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 387
    .line 388
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 389
    .line 390
    .line 391
    invoke-direct {v1, v0, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 392
    .line 393
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 394
    add-int/2addr v0, p1

    .line 395
    .line 396
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 400
    move-result p1

    .line 401
    .line 402
    if-ne p1, v2, :cond_a

    .line 403
    .line 404
    new-instance p1, Ljava/math/BigInteger;

    .line 405
    .line 406
    .line 407
    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 408
    return-object p1

    .line 409
    .line 410
    .line 411
    :cond_a
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 412
    move-result-object p1

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    .line 416
    move-result-object p1

    .line 417
    return-object p1

    .line 418
    .line 419
    .line 420
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 421
    move-result p1

    .line 422
    .line 423
    new-instance v1, Ljava/lang/String;

    .line 424
    .line 425
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 426
    .line 427
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 428
    .line 429
    .line 430
    invoke-direct {v1, v0, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 431
    .line 432
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 433
    add-int/2addr v0, p1

    .line 434
    .line 435
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 439
    move-result p1

    .line 440
    .line 441
    if-ne p1, v2, :cond_c

    .line 442
    .line 443
    new-instance p1, Ljava/math/BigInteger;

    .line 444
    .line 445
    .line 446
    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 447
    return-object p1

    .line 448
    .line 449
    .line 450
    :cond_c
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 451
    move-result-object p1

    .line 452
    .line 453
    .line 454
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    .line 455
    move-result-object p1

    .line 456
    return-object p1

    .line 457
    .line 458
    .line 459
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 460
    move-result p1

    .line 461
    .line 462
    new-instance v1, Ljava/lang/String;

    .line 463
    .line 464
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 465
    .line 466
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 467
    .line 468
    .line 469
    invoke-direct {v1, v0, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 470
    .line 471
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 472
    add-int/2addr v0, p1

    .line 473
    .line 474
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 478
    move-result p1

    .line 479
    .line 480
    if-ne p1, v2, :cond_e

    .line 481
    .line 482
    new-instance p1, Ljava/math/BigInteger;

    .line 483
    .line 484
    .line 485
    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 486
    return-object p1

    .line 487
    .line 488
    .line 489
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 490
    move-result-object p1

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    .line 494
    move-result-object p1

    .line 495
    return-object p1

    .line 496
    .line 497
    :cond_f
    :pswitch_a
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 498
    .line 499
    .line 500
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 501
    move-result p1

    .line 502
    .line 503
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 504
    .line 505
    add-int/lit8 v0, v0, 0x4

    .line 506
    .line 507
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 508
    int-to-long v0, p1

    .line 509
    .line 510
    .line 511
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 512
    move-result-object p1

    .line 513
    return-object p1

    .line 514
    .line 515
    .line 516
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 517
    move-result p1

    .line 518
    .line 519
    .line 520
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 521
    move-result-object v0

    .line 522
    .line 523
    if-nez p1, :cond_11

    .line 524
    .line 525
    new-instance p1, Ljava/math/BigDecimal;

    .line 526
    .line 527
    .line 528
    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 529
    goto :goto_2

    .line 530
    .line 531
    :cond_11
    new-instance v1, Ljava/math/BigDecimal;

    .line 532
    .line 533
    .line 534
    invoke-direct {v1, v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 535
    move-object p1, v1

    .line 536
    .line 537
    .line 538
    :goto_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    .line 539
    move-result-object p1

    .line 540
    return-object p1

    .line 541
    .line 542
    .line 543
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 544
    move-result p1

    .line 545
    .line 546
    new-array v0, p1, [B

    .line 547
    .line 548
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 549
    .line 550
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 551
    const/4 v3, 0x0

    .line 552
    .line 553
    .line 554
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    .line 556
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 557
    add-int/2addr v1, p1

    .line 558
    .line 559
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 560
    .line 561
    new-instance p1, Ljava/math/BigInteger;

    .line 562
    .line 563
    .line 564
    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 565
    return-object p1

    .line 566
    nop

    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
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
    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private readBoolValue0(B)Z
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 7
    .line 8
    const/16 v3, -0x51

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-eq v1, v3, :cond_1c

    .line 13
    .line 14
    const/16 v3, 0x4a

    .line 15
    .line 16
    const/16 v13, 0x66

    .line 17
    .line 18
    const/16 v14, 0x75

    .line 19
    .line 20
    const/16 v15, 0x72

    .line 21
    .line 22
    const/16 v6, 0x74

    .line 23
    .line 24
    const/16 v7, 0x59

    .line 25
    .line 26
    const-string v8, "not support input "

    .line 27
    .line 28
    const/16 v9, 0x45

    .line 29
    .line 30
    const/16 v10, 0x4e

    .line 31
    .line 32
    const/16 v11, 0x65

    .line 33
    .line 34
    const/16 v16, 0x5

    .line 35
    const/4 v12, 0x4

    .line 36
    .line 37
    if-eq v1, v3, :cond_e

    .line 38
    .line 39
    if-eqz v1, :cond_d

    .line 40
    .line 41
    if-eq v1, v5, :cond_c

    .line 42
    .line 43
    const/16 v3, 0x4d

    .line 44
    .line 45
    if-eq v1, v3, :cond_b

    .line 46
    .line 47
    if-eq v1, v10, :cond_a

    .line 48
    .line 49
    .line 50
    packed-switch v1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 54
    move-result-object v1

    .line 55
    throw v1

    .line 56
    .line 57
    .line 58
    :pswitch_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 59
    move-result v3

    .line 60
    .line 61
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 62
    .line 63
    new-array v6, v3, [B

    .line 64
    .line 65
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v7, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    const/16 v2, 0x7d

    .line 71
    .line 72
    if-ne v1, v2, :cond_0

    .line 73
    .line 74
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_0
    const/16 v2, 0x7c

    .line 78
    .line 79
    if-ne v1, v2, :cond_1

    .line 80
    .line 81
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    :goto_0
    new-instance v2, Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 90
    .line 91
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 92
    .line 93
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 94
    add-int/2addr v1, v3

    .line 95
    .line 96
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 100
    move-result v1

    .line 101
    const/4 v3, -0x1

    .line 102
    .line 103
    .line 104
    sparse-switch v1, :sswitch_data_0

    .line 105
    :goto_1
    move v12, v3

    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :sswitch_0
    const-string v1, "false"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v1

    .line 114
    .line 115
    if-nez v1, :cond_2

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    const/4 v12, 0x7

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :sswitch_1
    const-string v1, "FALSE"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v1

    .line 125
    .line 126
    if-nez v1, :cond_3

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const/4 v12, 0x6

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :sswitch_2
    const-string v1, "true"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v1

    .line 136
    .line 137
    if-nez v1, :cond_4

    .line 138
    goto :goto_1

    .line 139
    .line 140
    :cond_4
    move/from16 v12, v16

    .line 141
    goto :goto_2

    .line 142
    .line 143
    :sswitch_3
    const-string v1, "TRUE"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v1

    .line 148
    .line 149
    if-nez v1, :cond_9

    .line 150
    goto :goto_1

    .line 151
    .line 152
    :sswitch_4
    const-string v1, "Y"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    .line 158
    if-nez v1, :cond_5

    .line 159
    goto :goto_1

    .line 160
    :cond_5
    const/4 v12, 0x3

    .line 161
    goto :goto_2

    .line 162
    .line 163
    :sswitch_5
    const-string v1, "N"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result v1

    .line 168
    .line 169
    if-nez v1, :cond_6

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    const/4 v12, 0x2

    .line 172
    goto :goto_2

    .line 173
    .line 174
    :sswitch_6
    const-string v1, "1"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v1

    .line 179
    .line 180
    if-nez v1, :cond_7

    .line 181
    goto :goto_1

    .line 182
    :cond_7
    move v12, v5

    .line 183
    goto :goto_2

    .line 184
    .line 185
    :sswitch_7
    const-string v1, "0"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v1

    .line 190
    .line 191
    if-nez v1, :cond_8

    .line 192
    goto :goto_1

    .line 193
    :cond_8
    move v12, v4

    .line 194
    .line 195
    .line 196
    :cond_9
    :goto_2
    packed-switch v12, :pswitch_data_1

    .line 197
    .line 198
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 199
    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    .line 216
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 217
    throw v1

    .line 218
    :pswitch_1
    return v5

    .line 219
    :pswitch_2
    return v4

    .line 220
    .line 221
    :pswitch_3
    move/from16 v17, v4

    .line 222
    .line 223
    goto/16 :goto_5

    .line 224
    .line 225
    :cond_a
    move/from16 v17, v4

    .line 226
    goto :goto_4

    .line 227
    .line 228
    :cond_b
    move/from16 v17, v4

    .line 229
    goto :goto_3

    .line 230
    :cond_c
    return v5

    .line 231
    :cond_d
    return v4

    .line 232
    .line 233
    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 234
    .line 235
    aget-byte v3, v2, v1

    .line 236
    .line 237
    move/from16 v17, v4

    .line 238
    .line 239
    const/16 v4, 0x31

    .line 240
    .line 241
    if-eq v3, v4, :cond_1b

    .line 242
    .line 243
    if-ne v3, v7, :cond_f

    .line 244
    .line 245
    goto/16 :goto_7

    .line 246
    .line 247
    :cond_f
    const/16 v4, 0x30

    .line 248
    .line 249
    if-eq v3, v4, :cond_1a

    .line 250
    .line 251
    if-ne v3, v10, :cond_10

    .line 252
    .line 253
    goto/16 :goto_6

    .line 254
    .line 255
    :cond_10
    :goto_3
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 256
    .line 257
    aget-byte v3, v2, v1

    .line 258
    .line 259
    if-ne v3, v6, :cond_11

    .line 260
    .line 261
    add-int/lit8 v4, v1, 0x1

    .line 262
    .line 263
    aget-byte v4, v2, v4

    .line 264
    .line 265
    if-ne v4, v15, :cond_11

    .line 266
    .line 267
    add-int/lit8 v4, v1, 0x2

    .line 268
    .line 269
    aget-byte v4, v2, v4

    .line 270
    .line 271
    if-ne v4, v14, :cond_11

    .line 272
    .line 273
    add-int/lit8 v4, v1, 0x3

    .line 274
    .line 275
    aget-byte v4, v2, v4

    .line 276
    .line 277
    if-ne v4, v11, :cond_11

    .line 278
    add-int/2addr v1, v12

    .line 279
    .line 280
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 281
    return v5

    .line 282
    .line 283
    :cond_11
    const/16 v4, 0x54

    .line 284
    .line 285
    if-ne v3, v4, :cond_12

    .line 286
    .line 287
    add-int/lit8 v3, v1, 0x1

    .line 288
    .line 289
    aget-byte v3, v2, v3

    .line 290
    .line 291
    const/16 v4, 0x52

    .line 292
    .line 293
    if-ne v3, v4, :cond_12

    .line 294
    .line 295
    add-int/lit8 v3, v1, 0x2

    .line 296
    .line 297
    aget-byte v3, v2, v3

    .line 298
    .line 299
    const/16 v4, 0x55

    .line 300
    .line 301
    if-ne v3, v4, :cond_12

    .line 302
    .line 303
    add-int/lit8 v3, v1, 0x3

    .line 304
    .line 305
    aget-byte v3, v2, v3

    .line 306
    .line 307
    if-ne v3, v9, :cond_12

    .line 308
    add-int/2addr v1, v12

    .line 309
    .line 310
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 311
    return v5

    .line 312
    .line 313
    :cond_12
    :goto_4
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 314
    .line 315
    aget-byte v3, v2, v1

    .line 316
    .line 317
    if-ne v3, v13, :cond_13

    .line 318
    .line 319
    add-int/lit8 v4, v1, 0x1

    .line 320
    .line 321
    aget-byte v4, v2, v4

    .line 322
    .line 323
    const/16 v13, 0x61

    .line 324
    .line 325
    if-ne v4, v13, :cond_13

    .line 326
    .line 327
    add-int/lit8 v4, v1, 0x2

    .line 328
    .line 329
    aget-byte v4, v2, v4

    .line 330
    .line 331
    const/16 v13, 0x6c

    .line 332
    .line 333
    if-ne v4, v13, :cond_13

    .line 334
    .line 335
    add-int/lit8 v4, v1, 0x3

    .line 336
    .line 337
    aget-byte v4, v2, v4

    .line 338
    .line 339
    const/16 v13, 0x73

    .line 340
    .line 341
    if-ne v4, v13, :cond_13

    .line 342
    .line 343
    add-int/lit8 v4, v1, 0x4

    .line 344
    .line 345
    aget-byte v4, v2, v4

    .line 346
    .line 347
    if-ne v4, v11, :cond_13

    .line 348
    .line 349
    add-int/lit8 v1, v1, 0x5

    .line 350
    .line 351
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 352
    return v17

    .line 353
    .line 354
    :cond_13
    const/16 v4, 0x46

    .line 355
    .line 356
    if-ne v3, v4, :cond_14

    .line 357
    .line 358
    add-int/lit8 v3, v1, 0x1

    .line 359
    .line 360
    aget-byte v3, v2, v3

    .line 361
    .line 362
    const/16 v4, 0x41

    .line 363
    .line 364
    if-ne v3, v4, :cond_14

    .line 365
    .line 366
    add-int/lit8 v3, v1, 0x2

    .line 367
    .line 368
    aget-byte v3, v2, v3

    .line 369
    .line 370
    const/16 v4, 0x4c

    .line 371
    .line 372
    if-ne v3, v4, :cond_14

    .line 373
    .line 374
    add-int/lit8 v3, v1, 0x3

    .line 375
    .line 376
    aget-byte v3, v2, v3

    .line 377
    .line 378
    const/16 v4, 0x53

    .line 379
    .line 380
    if-ne v3, v4, :cond_14

    .line 381
    .line 382
    add-int/lit8 v3, v1, 0x4

    .line 383
    .line 384
    aget-byte v3, v2, v3

    .line 385
    .line 386
    if-ne v3, v9, :cond_14

    .line 387
    .line 388
    add-int/lit8 v1, v1, 0x5

    .line 389
    .line 390
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 391
    return v17

    .line 392
    .line 393
    .line 394
    :cond_14
    :goto_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 395
    move-result v1

    .line 396
    .line 397
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 398
    .line 399
    if-ne v1, v5, :cond_16

    .line 400
    .line 401
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 402
    .line 403
    aget-byte v4, v2, v3

    .line 404
    .line 405
    if-ne v4, v7, :cond_15

    .line 406
    add-int/2addr v3, v5

    .line 407
    .line 408
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 409
    return v5

    .line 410
    .line 411
    :cond_15
    if-ne v4, v10, :cond_19

    .line 412
    add-int/2addr v3, v5

    .line 413
    .line 414
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 415
    return v5

    .line 416
    .line 417
    :cond_16
    if-ne v1, v12, :cond_17

    .line 418
    .line 419
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 420
    .line 421
    aget-byte v4, v2, v3

    .line 422
    .line 423
    if-ne v4, v6, :cond_17

    .line 424
    .line 425
    add-int/lit8 v4, v3, 0x1

    .line 426
    .line 427
    aget-byte v4, v2, v4

    .line 428
    .line 429
    if-ne v4, v15, :cond_17

    .line 430
    .line 431
    add-int/lit8 v4, v3, 0x2

    .line 432
    .line 433
    aget-byte v4, v2, v4

    .line 434
    .line 435
    if-ne v4, v14, :cond_17

    .line 436
    .line 437
    add-int/lit8 v4, v3, 0x3

    .line 438
    .line 439
    aget-byte v4, v2, v4

    .line 440
    .line 441
    if-ne v4, v11, :cond_17

    .line 442
    add-int/2addr v3, v12

    .line 443
    .line 444
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 445
    return v5

    .line 446
    .line 447
    :cond_17
    move/from16 v3, v16

    .line 448
    .line 449
    if-ne v1, v3, :cond_19

    .line 450
    .line 451
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 452
    .line 453
    aget-byte v4, v2, v3

    .line 454
    .line 455
    const/16 v5, 0x66

    .line 456
    .line 457
    if-ne v4, v5, :cond_18

    .line 458
    .line 459
    add-int/lit8 v5, v3, 0x1

    .line 460
    .line 461
    aget-byte v5, v2, v5

    .line 462
    .line 463
    const/16 v13, 0x61

    .line 464
    .line 465
    if-ne v5, v13, :cond_18

    .line 466
    .line 467
    add-int/lit8 v5, v3, 0x2

    .line 468
    .line 469
    aget-byte v5, v2, v5

    .line 470
    .line 471
    const/16 v13, 0x6c

    .line 472
    .line 473
    if-ne v5, v13, :cond_18

    .line 474
    .line 475
    add-int/lit8 v5, v3, 0x3

    .line 476
    .line 477
    aget-byte v5, v2, v5

    .line 478
    .line 479
    const/16 v13, 0x73

    .line 480
    .line 481
    if-ne v5, v13, :cond_18

    .line 482
    .line 483
    add-int/lit8 v5, v3, 0x4

    .line 484
    .line 485
    aget-byte v5, v2, v5

    .line 486
    .line 487
    if-ne v5, v11, :cond_18

    .line 488
    .line 489
    const/16 v16, 0x5

    .line 490
    .line 491
    add-int/lit8 v3, v3, 0x5

    .line 492
    .line 493
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 494
    return v17

    .line 495
    .line 496
    :cond_18
    const/16 v5, 0x46

    .line 497
    .line 498
    if-ne v4, v5, :cond_19

    .line 499
    .line 500
    add-int/lit8 v4, v3, 0x1

    .line 501
    .line 502
    aget-byte v4, v2, v4

    .line 503
    .line 504
    const/16 v5, 0x41

    .line 505
    .line 506
    if-ne v4, v5, :cond_19

    .line 507
    .line 508
    add-int/lit8 v4, v3, 0x2

    .line 509
    .line 510
    aget-byte v4, v2, v4

    .line 511
    .line 512
    const/16 v5, 0x4c

    .line 513
    .line 514
    if-ne v4, v5, :cond_19

    .line 515
    .line 516
    add-int/lit8 v4, v3, 0x3

    .line 517
    .line 518
    aget-byte v4, v2, v4

    .line 519
    .line 520
    const/16 v5, 0x53

    .line 521
    .line 522
    if-ne v4, v5, :cond_19

    .line 523
    .line 524
    add-int/lit8 v4, v3, 0x4

    .line 525
    .line 526
    aget-byte v4, v2, v4

    .line 527
    .line 528
    if-ne v4, v9, :cond_19

    .line 529
    .line 530
    const/16 v16, 0x5

    .line 531
    .line 532
    add-int/lit8 v3, v3, 0x5

    .line 533
    .line 534
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 535
    return v17

    .line 536
    .line 537
    :cond_19
    new-instance v3, Ljava/lang/String;

    .line 538
    .line 539
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 540
    .line 541
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 542
    .line 543
    .line 544
    invoke-direct {v3, v2, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 545
    .line 546
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 547
    .line 548
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 549
    add-int/2addr v1, v2

    .line 550
    .line 551
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 552
    .line 553
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 554
    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    move-result-object v2

    .line 569
    .line 570
    .line 571
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 572
    throw v1

    .line 573
    :cond_1a
    :goto_6
    add-int/2addr v1, v5

    .line 574
    .line 575
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 576
    return v17

    .line 577
    :cond_1b
    :goto_7
    add-int/2addr v1, v5

    .line 578
    .line 579
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 580
    return v5

    .line 581
    .line 582
    :cond_1c
    move/from16 v17, v4

    .line 583
    .line 584
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 585
    .line 586
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 587
    .line 588
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 589
    .line 590
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 591
    and-long/2addr v1, v3

    .line 592
    .line 593
    const-wide/16 v3, 0x0

    .line 594
    .line 595
    cmp-long v1, v1, v3

    .line 596
    .line 597
    if-nez v1, :cond_1d

    .line 598
    .line 599
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 600
    return v17

    .line 601
    .line 602
    :cond_1d
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 603
    .line 604
    const-string v2, "long value not support input null"

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 608
    move-result-object v2

    .line 609
    .line 610
    .line 611
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 612
    throw v1

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
    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 657
    .line 658
    .line 659
    .line 660
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_7
        0x31 -> :sswitch_6
        0x4e -> :sswitch_5
        0x59 -> :sswitch_4
        0x276d8e -> :sswitch_3
        0x36758e -> :sswitch_2
        0x3f92103 -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

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
    .line 679
    .line 680
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private readDecimal0(B)Ljava/math/BigDecimal;
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x48

    .line 3
    .line 4
    if-eq p1, v0, :cond_c

    .line 5
    .line 6
    const/16 v0, 0x7c

    .line 7
    .line 8
    if-eq p1, v0, :cond_b

    .line 9
    .line 10
    const/16 v0, 0x79

    .line 11
    .line 12
    if-eq p1, v0, :cond_a

    .line 13
    .line 14
    const/16 v0, 0x7a

    .line 15
    .line 16
    if-eq p1, v0, :cond_9

    .line 17
    .line 18
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    packed-switch p1, :pswitch_data_1

    .line 23
    .line 24
    const/16 v0, -0x10

    .line 25
    .line 26
    if-lt p1, v0, :cond_0

    .line 27
    .line 28
    const/16 v0, 0x2f

    .line 29
    .line 30
    if-gt p1, v0, :cond_0

    .line 31
    int-to-long v0, p1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_0
    const/16 v0, 0x30

    .line 39
    .line 40
    if-lt p1, v0, :cond_1

    .line 41
    .line 42
    const/16 v0, 0x3f

    .line 43
    .line 44
    if-gt p1, v0, :cond_1

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x38

    .line 47
    .line 48
    shl-int/lit8 p1, p1, 0x8

    .line 49
    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 51
    .line 52
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 53
    .line 54
    add-int/lit8 v2, v1, 0x1

    .line 55
    .line 56
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 57
    .line 58
    aget-byte v0, v0, v1

    .line 59
    .line 60
    and-int/lit16 v0, v0, 0xff

    .line 61
    add-int/2addr p1, v0

    .line 62
    int-to-long v0, p1

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    :cond_1
    const/16 v0, 0x40

    .line 70
    .line 71
    if-lt p1, v0, :cond_2

    .line 72
    .line 73
    const/16 v0, 0x47

    .line 74
    .line 75
    if-gt p1, v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 78
    .line 79
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 83
    move-result p1

    .line 84
    .line 85
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x2

    .line 88
    .line 89
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 90
    int-to-long v0, p1

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    .line 97
    :cond_2
    const/16 v0, -0x28

    .line 98
    .line 99
    if-lt p1, v0, :cond_3

    .line 100
    .line 101
    const/16 v0, -0x11

    .line 102
    .line 103
    if-gt p1, v0, :cond_3

    .line 104
    .line 105
    add-int/lit8 p1, p1, 0x20

    .line 106
    int-to-long v0, p1

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    .line 113
    :cond_3
    const/16 v0, -0x38

    .line 114
    .line 115
    if-lt p1, v0, :cond_4

    .line 116
    .line 117
    const/16 v0, -0x29

    .line 118
    .line 119
    if-gt p1, v0, :cond_4

    .line 120
    .line 121
    add-int/lit8 p1, p1, 0x30

    .line 122
    .line 123
    shl-int/lit8 p1, p1, 0x8

    .line 124
    .line 125
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 126
    .line 127
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 128
    .line 129
    add-int/lit8 v2, v1, 0x1

    .line 130
    .line 131
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 132
    .line 133
    aget-byte v0, v0, v1

    .line 134
    .line 135
    and-int/lit16 v0, v0, 0xff

    .line 136
    add-int/2addr p1, v0

    .line 137
    int-to-long v0, p1

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    .line 144
    :cond_4
    const/16 v0, -0x40

    .line 145
    .line 146
    if-lt p1, v0, :cond_5

    .line 147
    .line 148
    const/16 v0, -0x39

    .line 149
    .line 150
    if-gt p1, v0, :cond_5

    .line 151
    .line 152
    add-int/lit8 p1, p1, 0x3c

    .line 153
    .line 154
    shl-int/lit8 p1, p1, 0x10

    .line 155
    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 157
    .line 158
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 159
    .line 160
    add-int/lit8 v2, v1, 0x1

    .line 161
    .line 162
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 163
    .line 164
    aget-byte v3, v0, v1

    .line 165
    .line 166
    and-int/lit16 v3, v3, 0xff

    .line 167
    .line 168
    shl-int/lit8 v3, v3, 0x8

    .line 169
    add-int/2addr p1, v3

    .line 170
    .line 171
    add-int/lit8 v1, v1, 0x2

    .line 172
    .line 173
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 174
    .line 175
    aget-byte v0, v0, v2

    .line 176
    .line 177
    and-int/lit16 v0, v0, 0xff

    .line 178
    add-int/2addr p1, v0

    .line 179
    int-to-long v0, p1

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 183
    move-result-object p1

    .line 184
    return-object p1

    .line 185
    .line 186
    :cond_5
    const/16 v0, 0x49

    .line 187
    .line 188
    if-lt p1, v0, :cond_6

    .line 189
    .line 190
    const/16 v1, 0x78

    .line 191
    .line 192
    if-gt p1, v1, :cond_6

    .line 193
    sub-int/2addr p1, v0

    .line 194
    .line 195
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 202
    add-int/2addr v1, p1

    .line 203
    .line 204
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 208
    move-result-object p1

    .line 209
    return-object p1

    .line 210
    .line 211
    .line 212
    :cond_6
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 213
    move-result-object p1

    .line 214
    throw p1

    .line 215
    .line 216
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 217
    .line 218
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 219
    .line 220
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 221
    .line 222
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 223
    int-to-long v3, v3

    .line 224
    add-long/2addr v1, v3

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 228
    move-result-wide v0

    .line 229
    .line 230
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 231
    .line 232
    add-int/lit8 p1, p1, 0x8

    .line 233
    .line 234
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 235
    .line 236
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 237
    .line 238
    if-eqz p1, :cond_7

    .line 239
    goto :goto_0

    .line 240
    .line 241
    .line 242
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 243
    move-result-wide v0

    .line 244
    .line 245
    .line 246
    :goto_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 247
    move-result-object p1

    .line 248
    return-object p1

    .line 249
    .line 250
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 251
    .line 252
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 253
    .line 254
    add-int/lit8 v1, v0, 0x1

    .line 255
    .line 256
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 257
    .line 258
    aget-byte p1, p1, v0

    .line 259
    int-to-long v0, p1

    .line 260
    .line 261
    .line 262
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 263
    move-result-object p1

    .line 264
    return-object p1

    .line 265
    .line 266
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 267
    .line 268
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 269
    .line 270
    add-int/lit8 v1, v0, 0x1

    .line 271
    .line 272
    aget-byte v1, p1, v1

    .line 273
    .line 274
    and-int/lit16 v1, v1, 0xff

    .line 275
    .line 276
    aget-byte p1, p1, v0

    .line 277
    .line 278
    shl-int/lit8 p1, p1, 0x8

    .line 279
    add-int/2addr v1, p1

    .line 280
    .line 281
    add-int/lit8 v0, v0, 0x2

    .line 282
    .line 283
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 284
    int-to-long v0, v1

    .line 285
    .line 286
    .line 287
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 288
    move-result-object p1

    .line 289
    return-object p1

    .line 290
    .line 291
    .line 292
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 293
    move-result-object p1

    .line 294
    .line 295
    new-instance v0, Ljava/math/BigDecimal;

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 299
    return-object v0

    .line 300
    .line 301
    :pswitch_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 302
    .line 303
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 304
    .line 305
    .line 306
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 307
    move-result p1

    .line 308
    .line 309
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 310
    .line 311
    add-int/lit8 v0, v0, 0x4

    .line 312
    .line 313
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 314
    .line 315
    .line 316
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 317
    move-result p1

    .line 318
    float-to-long v0, p1

    .line 319
    .line 320
    .line 321
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 322
    move-result-object p1

    .line 323
    return-object p1

    .line 324
    .line 325
    .line 326
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 327
    move-result p1

    .line 328
    int-to-float p1, p1

    .line 329
    float-to-long v0, p1

    .line 330
    .line 331
    .line 332
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 333
    move-result-object p1

    .line 334
    return-object p1

    .line 335
    .line 336
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 337
    .line 338
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 339
    .line 340
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 341
    .line 342
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 343
    int-to-long v3, v3

    .line 344
    add-long/2addr v1, v3

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 348
    move-result-wide v0

    .line 349
    .line 350
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 351
    .line 352
    add-int/lit8 p1, p1, 0x8

    .line 353
    .line 354
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 355
    .line 356
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 357
    .line 358
    if-eqz p1, :cond_8

    .line 359
    goto :goto_1

    .line 360
    .line 361
    .line 362
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 363
    move-result-wide v0

    .line 364
    .line 365
    .line 366
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 367
    move-result-wide v0

    .line 368
    double-to-long v0, v0

    .line 369
    .line 370
    .line 371
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 372
    move-result-object p1

    .line 373
    return-object p1

    .line 374
    .line 375
    .line 376
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 377
    move-result-wide v0

    .line 378
    long-to-double v0, v0

    .line 379
    double-to-long v0, v0

    .line 380
    .line 381
    .line 382
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 383
    move-result-object p1

    .line 384
    return-object p1

    .line 385
    .line 386
    :pswitch_8
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 387
    return-object p1

    .line 388
    .line 389
    :pswitch_9
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 390
    return-object p1

    .line 391
    :pswitch_a
    const/4 p1, 0x0

    .line 392
    return-object p1

    .line 393
    .line 394
    .line 395
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 396
    move-result p1

    .line 397
    .line 398
    new-instance v0, Ljava/lang/String;

    .line 399
    .line 400
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 401
    .line 402
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 403
    .line 404
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 405
    .line 406
    .line 407
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 408
    .line 409
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 410
    add-int/2addr v1, p1

    .line 411
    .line 412
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 413
    .line 414
    .line 415
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 416
    move-result-object p1

    .line 417
    return-object p1

    .line 418
    .line 419
    .line 420
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 421
    move-result p1

    .line 422
    .line 423
    new-instance v0, Ljava/lang/String;

    .line 424
    .line 425
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 426
    .line 427
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 428
    .line 429
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 430
    .line 431
    .line 432
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 433
    .line 434
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 435
    add-int/2addr v1, p1

    .line 436
    .line 437
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 438
    .line 439
    .line 440
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 441
    move-result-object p1

    .line 442
    return-object p1

    .line 443
    .line 444
    .line 445
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 446
    move-result p1

    .line 447
    .line 448
    new-instance v0, Ljava/lang/String;

    .line 449
    .line 450
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 451
    .line 452
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 453
    .line 454
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 455
    .line 456
    .line 457
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 458
    .line 459
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 460
    add-int/2addr v1, p1

    .line 461
    .line 462
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 463
    .line 464
    .line 465
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 466
    move-result-object p1

    .line 467
    return-object p1

    .line 468
    .line 469
    :cond_c
    :pswitch_b
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 470
    .line 471
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 472
    .line 473
    .line 474
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 475
    move-result p1

    .line 476
    .line 477
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 478
    .line 479
    add-int/lit8 v0, v0, 0x4

    .line 480
    .line 481
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 482
    int-to-long v0, p1

    .line 483
    .line 484
    .line 485
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 486
    move-result-object p1

    .line 487
    return-object p1

    .line 488
    nop

    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch -0x45
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private readDoubleValue0()D
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    const/16 v4, -0x4a

    .line 13
    .line 14
    if-eq v3, v4, :cond_16

    .line 15
    .line 16
    const/16 v4, -0x49

    .line 17
    .line 18
    if-eq v3, v4, :cond_14

    .line 19
    .line 20
    const/16 v4, -0x47

    .line 21
    .line 22
    if-eq v3, v4, :cond_12

    .line 23
    .line 24
    const/16 v4, 0x48

    .line 25
    .line 26
    if-eq v3, v4, :cond_10

    .line 27
    .line 28
    const/16 v4, 0x7c

    .line 29
    const/4 v5, -0x1

    .line 30
    .line 31
    const/16 v6, 0x2e

    .line 32
    .line 33
    if-eq v3, v4, :cond_e

    .line 34
    .line 35
    const/16 v4, 0x79

    .line 36
    .line 37
    if-eq v3, v4, :cond_c

    .line 38
    .line 39
    const/16 v4, 0x7a

    .line 40
    .line 41
    if-eq v3, v4, :cond_a

    .line 42
    .line 43
    const-wide/16 v7, 0x0

    .line 44
    .line 45
    .line 46
    packed-switch v3, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    packed-switch v3, :pswitch_data_1

    .line 50
    .line 51
    const/16 v4, -0x10

    .line 52
    .line 53
    if-lt v3, v4, :cond_0

    .line 54
    .line 55
    const/16 v4, 0x2f

    .line 56
    .line 57
    if-gt v3, v4, :cond_0

    .line 58
    int-to-double v0, v3

    .line 59
    return-wide v0

    .line 60
    .line 61
    :cond_0
    const/16 v4, 0x30

    .line 62
    .line 63
    if-lt v3, v4, :cond_1

    .line 64
    .line 65
    const/16 v4, 0x3f

    .line 66
    .line 67
    if-gt v3, v4, :cond_1

    .line 68
    .line 69
    add-int/lit8 v3, v3, -0x38

    .line 70
    .line 71
    shl-int/lit8 v3, v3, 0x8

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x2

    .line 74
    .line 75
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 76
    .line 77
    aget-byte v0, v0, v2

    .line 78
    .line 79
    and-int/lit16 v0, v0, 0xff

    .line 80
    add-int/2addr v3, v0

    .line 81
    int-to-double v0, v3

    .line 82
    return-wide v0

    .line 83
    .line 84
    :cond_1
    const/16 v4, 0x40

    .line 85
    .line 86
    if-lt v3, v4, :cond_2

    .line 87
    .line 88
    const/16 v4, 0x47

    .line 89
    .line 90
    if-gt v3, v4, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 94
    move-result v0

    .line 95
    .line 96
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x2

    .line 99
    .line 100
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 101
    int-to-double v0, v0

    .line 102
    return-wide v0

    .line 103
    .line 104
    :cond_2
    const/16 v4, -0x28

    .line 105
    .line 106
    if-lt v3, v4, :cond_3

    .line 107
    .line 108
    const/16 v7, -0x11

    .line 109
    .line 110
    if-gt v3, v7, :cond_3

    .line 111
    sub-int/2addr v3, v4

    .line 112
    int-to-long v0, v3

    .line 113
    .line 114
    const-wide/16 v2, -0x8

    .line 115
    add-long/2addr v0, v2

    .line 116
    long-to-double v0, v0

    .line 117
    return-wide v0

    .line 118
    .line 119
    :cond_3
    const/16 v4, -0x38

    .line 120
    .line 121
    if-lt v3, v4, :cond_4

    .line 122
    .line 123
    const/16 v4, -0x29

    .line 124
    .line 125
    if-gt v3, v4, :cond_4

    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x30

    .line 128
    .line 129
    shl-int/lit8 v3, v3, 0x8

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x2

    .line 132
    .line 133
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 134
    .line 135
    aget-byte v0, v0, v2

    .line 136
    .line 137
    and-int/lit16 v0, v0, 0xff

    .line 138
    add-int/2addr v3, v0

    .line 139
    int-to-double v0, v3

    .line 140
    return-wide v0

    .line 141
    .line 142
    :cond_4
    const/16 v4, -0x40

    .line 143
    .line 144
    if-lt v3, v4, :cond_5

    .line 145
    .line 146
    const/16 v4, -0x39

    .line 147
    .line 148
    if-gt v3, v4, :cond_5

    .line 149
    .line 150
    add-int/lit8 v3, v3, 0x3c

    .line 151
    .line 152
    shl-int/lit8 v3, v3, 0x10

    .line 153
    .line 154
    add-int/lit8 v4, v1, 0x2

    .line 155
    .line 156
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 157
    .line 158
    aget-byte v2, v0, v2

    .line 159
    .line 160
    and-int/lit16 v2, v2, 0xff

    .line 161
    .line 162
    shl-int/lit8 v2, v2, 0x8

    .line 163
    add-int/2addr v3, v2

    .line 164
    .line 165
    add-int/lit8 v1, v1, 0x3

    .line 166
    .line 167
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 168
    .line 169
    aget-byte v0, v0, v4

    .line 170
    .line 171
    and-int/lit16 v0, v0, 0xff

    .line 172
    add-int/2addr v3, v0

    .line 173
    int-to-double v0, v3

    .line 174
    return-wide v0

    .line 175
    .line 176
    :cond_5
    const/16 v0, 0x49

    .line 177
    .line 178
    if-lt v3, v0, :cond_7

    .line 179
    .line 180
    const/16 v1, 0x78

    .line 181
    .line 182
    if-gt v3, v1, :cond_7

    .line 183
    sub-int/2addr v3, v0

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 190
    add-int/2addr v1, v3

    .line 191
    .line 192
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 196
    move-result v1

    .line 197
    .line 198
    if-ne v1, v5, :cond_6

    .line 199
    .line 200
    new-instance v1, Ljava/math/BigInteger;

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    .line 207
    move-result v0

    .line 208
    int-to-double v0, v0

    .line 209
    return-wide v0

    .line 210
    .line 211
    .line 212
    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 217
    move-result v0

    .line 218
    int-to-double v0, v0

    .line 219
    return-wide v0

    .line 220
    .line 221
    .line 222
    :cond_7
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 223
    move-result-object v0

    .line 224
    throw v0

    .line 225
    .line 226
    :pswitch_0
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 227
    .line 228
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 229
    int-to-long v5, v2

    .line 230
    add-long/2addr v3, v5

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 234
    move-result-wide v0

    .line 235
    .line 236
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 237
    .line 238
    add-int/lit8 v2, v2, 0x8

    .line 239
    .line 240
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 241
    .line 242
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 243
    .line 244
    if-eqz v2, :cond_8

    .line 245
    goto :goto_0

    .line 246
    .line 247
    .line 248
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 249
    move-result-wide v0

    .line 250
    :goto_0
    long-to-double v0, v0

    .line 251
    return-wide v0

    .line 252
    .line 253
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 254
    .line 255
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 256
    .line 257
    aget-byte v0, v0, v2

    .line 258
    int-to-double v0, v0

    .line 259
    return-wide v0

    .line 260
    .line 261
    :pswitch_2
    add-int/lit8 v3, v1, 0x2

    .line 262
    .line 263
    aget-byte v3, v0, v3

    .line 264
    .line 265
    and-int/lit16 v3, v3, 0xff

    .line 266
    .line 267
    aget-byte v0, v0, v2

    .line 268
    .line 269
    shl-int/lit8 v0, v0, 0x8

    .line 270
    add-int/2addr v3, v0

    .line 271
    .line 272
    add-int/lit8 v1, v1, 0x3

    .line 273
    .line 274
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 275
    int-to-double v0, v3

    .line 276
    return-wide v0

    .line 277
    .line 278
    .line 279
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 280
    move-result-wide v0

    .line 281
    long-to-double v0, v0

    .line 282
    return-wide v0

    .line 283
    .line 284
    :pswitch_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 285
    return-wide v0

    .line 286
    :pswitch_5
    return-wide v7

    .line 287
    .line 288
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 289
    .line 290
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 291
    .line 292
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 293
    .line 294
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 295
    and-long/2addr v0, v2

    .line 296
    .line 297
    const-wide/16 v2, 0x0

    .line 298
    .line 299
    cmp-long v0, v0, v2

    .line 300
    .line 301
    if-nez v0, :cond_9

    .line 302
    const/4 v0, 0x1

    .line 303
    .line 304
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 305
    return-wide v7

    .line 306
    .line 307
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 308
    .line 309
    const-string v1, "long value not support input null"

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    move-result-object v1

    .line 314
    .line 315
    .line 316
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 317
    throw v0

    .line 318
    .line 319
    .line 320
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 321
    move-result v1

    .line 322
    .line 323
    new-instance v2, Ljava/lang/String;

    .line 324
    .line 325
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 326
    .line 327
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 328
    .line 329
    .line 330
    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 331
    .line 332
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 333
    add-int/2addr v0, v1

    .line 334
    .line 335
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 339
    move-result v0

    .line 340
    .line 341
    if-ne v0, v5, :cond_b

    .line 342
    .line 343
    new-instance v0, Ljava/math/BigInteger;

    .line 344
    .line 345
    .line 346
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 350
    move-result v0

    .line 351
    int-to-double v0, v0

    .line 352
    return-wide v0

    .line 353
    .line 354
    .line 355
    :cond_b
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 356
    move-result-object v0

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 360
    move-result v0

    .line 361
    int-to-double v0, v0

    .line 362
    return-wide v0

    .line 363
    .line 364
    .line 365
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 366
    move-result v1

    .line 367
    .line 368
    new-instance v2, Ljava/lang/String;

    .line 369
    .line 370
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 371
    .line 372
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 373
    .line 374
    .line 375
    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 376
    .line 377
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 378
    add-int/2addr v0, v1

    .line 379
    .line 380
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 384
    move-result v0

    .line 385
    .line 386
    if-ne v0, v5, :cond_d

    .line 387
    .line 388
    new-instance v0, Ljava/math/BigInteger;

    .line 389
    .line 390
    .line 391
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 395
    move-result v0

    .line 396
    int-to-double v0, v0

    .line 397
    return-wide v0

    .line 398
    .line 399
    .line 400
    :cond_d
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 401
    move-result-object v0

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 405
    move-result v0

    .line 406
    int-to-double v0, v0

    .line 407
    return-wide v0

    .line 408
    .line 409
    .line 410
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 411
    move-result v1

    .line 412
    .line 413
    new-instance v2, Ljava/lang/String;

    .line 414
    .line 415
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 416
    .line 417
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 418
    .line 419
    .line 420
    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 421
    .line 422
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 423
    add-int/2addr v0, v1

    .line 424
    .line 425
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 429
    move-result v0

    .line 430
    .line 431
    if-ne v0, v5, :cond_f

    .line 432
    .line 433
    new-instance v0, Ljava/math/BigInteger;

    .line 434
    .line 435
    .line 436
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 440
    move-result v0

    .line 441
    int-to-double v0, v0

    .line 442
    return-wide v0

    .line 443
    .line 444
    .line 445
    :cond_f
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 446
    move-result-object v0

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 450
    move-result v0

    .line 451
    int-to-double v0, v0

    .line 452
    return-wide v0

    .line 453
    .line 454
    :cond_10
    :pswitch_7
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 455
    .line 456
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 457
    int-to-long v5, v2

    .line 458
    add-long/2addr v3, v5

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 462
    move-result v0

    .line 463
    .line 464
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 465
    .line 466
    add-int/lit8 v1, v1, 0x4

    .line 467
    .line 468
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 469
    .line 470
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 471
    .line 472
    if-eqz v1, :cond_11

    .line 473
    int-to-double v0, v0

    .line 474
    return-wide v0

    .line 475
    .line 476
    .line 477
    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 478
    move-result v0

    .line 479
    int-to-double v0, v0

    .line 480
    return-wide v0

    .line 481
    .line 482
    .line 483
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 484
    move-result v0

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 488
    move-result-object v1

    .line 489
    .line 490
    if-nez v0, :cond_13

    .line 491
    .line 492
    new-instance v0, Ljava/math/BigDecimal;

    .line 493
    .line 494
    .line 495
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 496
    goto :goto_1

    .line 497
    .line 498
    :cond_13
    new-instance v2, Ljava/math/BigDecimal;

    .line 499
    .line 500
    .line 501
    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 502
    move-object v0, v2

    .line 503
    .line 504
    .line 505
    :goto_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 506
    move-result v0

    .line 507
    int-to-double v0, v0

    .line 508
    return-wide v0

    .line 509
    .line 510
    :cond_14
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 511
    .line 512
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 513
    int-to-long v5, v2

    .line 514
    add-long/2addr v3, v5

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 518
    move-result v0

    .line 519
    .line 520
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 521
    .line 522
    add-int/lit8 v1, v1, 0x4

    .line 523
    .line 524
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 525
    .line 526
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 527
    .line 528
    if-eqz v1, :cond_15

    .line 529
    goto :goto_2

    .line 530
    .line 531
    .line 532
    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 533
    move-result v0

    .line 534
    .line 535
    .line 536
    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 537
    move-result v0

    .line 538
    float-to-double v0, v0

    .line 539
    return-wide v0

    .line 540
    .line 541
    .line 542
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 543
    move-result v0

    .line 544
    int-to-float v0, v0

    .line 545
    float-to-double v0, v0

    .line 546
    return-wide v0

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
    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    .line 573
    .line 574
    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private readFloat0()F
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    const/16 v4, -0x47

    .line 13
    .line 14
    if-eq v3, v4, :cond_12

    .line 15
    .line 16
    const/16 v4, 0x48

    .line 17
    .line 18
    if-eq v3, v4, :cond_11

    .line 19
    .line 20
    const/16 v4, 0x7c

    .line 21
    const/4 v5, -0x1

    .line 22
    .line 23
    const/16 v6, 0x2e

    .line 24
    .line 25
    if-eq v3, v4, :cond_f

    .line 26
    .line 27
    const/16 v4, 0x79

    .line 28
    .line 29
    if-eq v3, v4, :cond_d

    .line 30
    .line 31
    const/16 v4, 0x7a

    .line 32
    .line 33
    if-eq v3, v4, :cond_b

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    .line 37
    packed-switch v3, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    packed-switch v3, :pswitch_data_1

    .line 41
    .line 42
    const/16 v4, -0x10

    .line 43
    .line 44
    if-lt v3, v4, :cond_0

    .line 45
    .line 46
    const/16 v4, 0x2f

    .line 47
    .line 48
    if-gt v3, v4, :cond_0

    .line 49
    int-to-float v0, v3

    .line 50
    return v0

    .line 51
    .line 52
    :cond_0
    const/16 v4, 0x30

    .line 53
    .line 54
    if-lt v3, v4, :cond_1

    .line 55
    .line 56
    const/16 v4, 0x3f

    .line 57
    .line 58
    if-gt v3, v4, :cond_1

    .line 59
    .line 60
    add-int/lit8 v3, v3, -0x38

    .line 61
    .line 62
    shl-int/lit8 v3, v3, 0x8

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x2

    .line 65
    .line 66
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 67
    .line 68
    aget-byte v0, v0, v2

    .line 69
    .line 70
    and-int/lit16 v0, v0, 0xff

    .line 71
    add-int/2addr v3, v0

    .line 72
    int-to-float v0, v3

    .line 73
    return v0

    .line 74
    .line 75
    :cond_1
    const/16 v4, 0x40

    .line 76
    .line 77
    if-lt v3, v4, :cond_2

    .line 78
    .line 79
    const/16 v4, 0x47

    .line 80
    .line 81
    if-gt v3, v4, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 85
    move-result v0

    .line 86
    .line 87
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x2

    .line 90
    .line 91
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 92
    int-to-float v0, v0

    .line 93
    return v0

    .line 94
    .line 95
    :cond_2
    const/16 v4, -0x28

    .line 96
    .line 97
    if-lt v3, v4, :cond_3

    .line 98
    .line 99
    const/16 v4, -0x11

    .line 100
    .line 101
    if-gt v3, v4, :cond_3

    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x20

    .line 104
    int-to-float v0, v3

    .line 105
    return v0

    .line 106
    .line 107
    :cond_3
    const/16 v4, -0x38

    .line 108
    .line 109
    if-lt v3, v4, :cond_4

    .line 110
    .line 111
    const/16 v4, -0x29

    .line 112
    .line 113
    if-gt v3, v4, :cond_4

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x30

    .line 116
    .line 117
    shl-int/lit8 v3, v3, 0x8

    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x2

    .line 120
    .line 121
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 122
    .line 123
    aget-byte v0, v0, v2

    .line 124
    .line 125
    and-int/lit16 v0, v0, 0xff

    .line 126
    add-int/2addr v3, v0

    .line 127
    int-to-float v0, v3

    .line 128
    return v0

    .line 129
    .line 130
    :cond_4
    const/16 v4, -0x40

    .line 131
    .line 132
    if-lt v3, v4, :cond_5

    .line 133
    .line 134
    const/16 v4, -0x39

    .line 135
    .line 136
    if-gt v3, v4, :cond_5

    .line 137
    .line 138
    add-int/lit8 v3, v3, 0x3c

    .line 139
    .line 140
    shl-int/lit8 v3, v3, 0x10

    .line 141
    .line 142
    add-int/lit8 v4, v1, 0x2

    .line 143
    .line 144
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 145
    .line 146
    aget-byte v2, v0, v2

    .line 147
    .line 148
    and-int/lit16 v2, v2, 0xff

    .line 149
    .line 150
    shl-int/lit8 v2, v2, 0x8

    .line 151
    add-int/2addr v3, v2

    .line 152
    .line 153
    add-int/lit8 v1, v1, 0x3

    .line 154
    .line 155
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 156
    .line 157
    aget-byte v0, v0, v4

    .line 158
    .line 159
    and-int/lit16 v0, v0, 0xff

    .line 160
    add-int/2addr v3, v0

    .line 161
    int-to-float v0, v3

    .line 162
    return v0

    .line 163
    .line 164
    :cond_5
    const/16 v0, 0x49

    .line 165
    .line 166
    if-lt v3, v0, :cond_7

    .line 167
    .line 168
    const/16 v1, 0x78

    .line 169
    .line 170
    if-gt v3, v1, :cond_7

    .line 171
    sub-int/2addr v3, v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 178
    add-int/2addr v1, v3

    .line 179
    .line 180
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 184
    move-result v1

    .line 185
    .line 186
    if-ne v1, v5, :cond_6

    .line 187
    .line 188
    new-instance v1, Ljava/math/BigInteger;

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    .line 195
    move-result v0

    .line 196
    int-to-float v0, v0

    .line 197
    return v0

    .line 198
    .line 199
    .line 200
    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 205
    move-result v0

    .line 206
    int-to-float v0, v0

    .line 207
    return v0

    .line 208
    .line 209
    .line 210
    :cond_7
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 211
    move-result-object v0

    .line 212
    throw v0

    .line 213
    .line 214
    :pswitch_0
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 215
    .line 216
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 217
    int-to-long v5, v2

    .line 218
    add-long/2addr v3, v5

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 222
    move-result-wide v0

    .line 223
    .line 224
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 225
    .line 226
    add-int/lit8 v2, v2, 0x8

    .line 227
    .line 228
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 229
    .line 230
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 231
    .line 232
    if-eqz v2, :cond_8

    .line 233
    goto :goto_0

    .line 234
    .line 235
    .line 236
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 237
    move-result-wide v0

    .line 238
    :goto_0
    long-to-float v0, v0

    .line 239
    return v0

    .line 240
    .line 241
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 242
    .line 243
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 244
    .line 245
    aget-byte v0, v0, v2

    .line 246
    int-to-float v0, v0

    .line 247
    return v0

    .line 248
    .line 249
    :pswitch_2
    add-int/lit8 v3, v1, 0x2

    .line 250
    .line 251
    aget-byte v3, v0, v3

    .line 252
    .line 253
    and-int/lit16 v3, v3, 0xff

    .line 254
    .line 255
    aget-byte v0, v0, v2

    .line 256
    .line 257
    shl-int/lit8 v0, v0, 0x8

    .line 258
    add-int/2addr v3, v0

    .line 259
    .line 260
    add-int/lit8 v1, v1, 0x3

    .line 261
    .line 262
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 263
    int-to-float v0, v3

    .line 264
    return v0

    .line 265
    .line 266
    .line 267
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 268
    move-result v0

    .line 269
    int-to-float v0, v0

    .line 270
    return v0

    .line 271
    .line 272
    :pswitch_4
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 273
    .line 274
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 275
    int-to-long v5, v2

    .line 276
    add-long/2addr v3, v5

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 280
    move-result-wide v0

    .line 281
    .line 282
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 283
    .line 284
    add-int/lit8 v2, v2, 0x8

    .line 285
    .line 286
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 287
    .line 288
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 289
    .line 290
    if-eqz v2, :cond_9

    .line 291
    goto :goto_1

    .line 292
    .line 293
    .line 294
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 295
    move-result-wide v0

    .line 296
    .line 297
    .line 298
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 299
    move-result-wide v0

    .line 300
    double-to-float v0, v0

    .line 301
    return v0

    .line 302
    .line 303
    .line 304
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 305
    move-result-wide v0

    .line 306
    long-to-double v0, v0

    .line 307
    double-to-float v0, v0

    .line 308
    return v0

    .line 309
    .line 310
    :pswitch_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 311
    return v0

    .line 312
    :pswitch_7
    return v4

    .line 313
    .line 314
    :pswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 315
    .line 316
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 317
    .line 318
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 319
    .line 320
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 321
    and-long/2addr v0, v2

    .line 322
    .line 323
    const-wide/16 v2, 0x0

    .line 324
    .line 325
    cmp-long v0, v0, v2

    .line 326
    .line 327
    if-nez v0, :cond_a

    .line 328
    const/4 v0, 0x1

    .line 329
    .line 330
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 331
    return v4

    .line 332
    .line 333
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 334
    .line 335
    const-string v1, "long value not support input null"

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 340
    .line 341
    .line 342
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 343
    throw v0

    .line 344
    .line 345
    .line 346
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 347
    move-result v1

    .line 348
    .line 349
    new-instance v2, Ljava/lang/String;

    .line 350
    .line 351
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 352
    .line 353
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 354
    .line 355
    .line 356
    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 357
    .line 358
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 359
    add-int/2addr v0, v1

    .line 360
    .line 361
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 365
    move-result v0

    .line 366
    .line 367
    if-ne v0, v5, :cond_c

    .line 368
    .line 369
    new-instance v0, Ljava/math/BigInteger;

    .line 370
    .line 371
    .line 372
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 376
    move-result v0

    .line 377
    int-to-float v0, v0

    .line 378
    return v0

    .line 379
    .line 380
    .line 381
    :cond_c
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 382
    move-result-object v0

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 386
    move-result v0

    .line 387
    int-to-float v0, v0

    .line 388
    return v0

    .line 389
    .line 390
    .line 391
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 392
    move-result v1

    .line 393
    .line 394
    new-instance v2, Ljava/lang/String;

    .line 395
    .line 396
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 397
    .line 398
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 399
    .line 400
    .line 401
    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 402
    .line 403
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 404
    add-int/2addr v0, v1

    .line 405
    .line 406
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 410
    move-result v0

    .line 411
    .line 412
    if-ne v0, v5, :cond_e

    .line 413
    .line 414
    new-instance v0, Ljava/math/BigInteger;

    .line 415
    .line 416
    .line 417
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 421
    move-result v0

    .line 422
    int-to-float v0, v0

    .line 423
    return v0

    .line 424
    .line 425
    .line 426
    :cond_e
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 427
    move-result-object v0

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 431
    move-result v0

    .line 432
    int-to-float v0, v0

    .line 433
    return v0

    .line 434
    .line 435
    .line 436
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 437
    move-result v1

    .line 438
    .line 439
    new-instance v2, Ljava/lang/String;

    .line 440
    .line 441
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 442
    .line 443
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 444
    .line 445
    .line 446
    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 447
    .line 448
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 449
    add-int/2addr v0, v1

    .line 450
    .line 451
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 455
    move-result v0

    .line 456
    .line 457
    if-ne v0, v5, :cond_10

    .line 458
    .line 459
    new-instance v0, Ljava/math/BigInteger;

    .line 460
    .line 461
    .line 462
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 466
    move-result v0

    .line 467
    int-to-float v0, v0

    .line 468
    return v0

    .line 469
    .line 470
    .line 471
    :cond_10
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 472
    move-result-object v0

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 476
    move-result v0

    .line 477
    int-to-float v0, v0

    .line 478
    return v0

    .line 479
    .line 480
    .line 481
    :cond_11
    :pswitch_9
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 482
    move-result v0

    .line 483
    .line 484
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 485
    .line 486
    add-int/lit8 v1, v1, 0x4

    .line 487
    .line 488
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 489
    int-to-float v0, v0

    .line 490
    return v0

    .line 491
    .line 492
    .line 493
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 494
    move-result v0

    .line 495
    .line 496
    .line 497
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 498
    move-result-object v1

    .line 499
    .line 500
    if-nez v0, :cond_13

    .line 501
    .line 502
    new-instance v0, Ljava/math/BigDecimal;

    .line 503
    .line 504
    .line 505
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 506
    goto :goto_2

    .line 507
    .line 508
    :cond_13
    new-instance v2, Ljava/math/BigDecimal;

    .line 509
    .line 510
    .line 511
    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 512
    move-object v0, v2

    .line 513
    .line 514
    .line 515
    :goto_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 516
    move-result v0

    .line 517
    int-to-float v0, v0

    .line 518
    return v0

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
    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private readGB18030()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 7
    .line 8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 11
    .line 12
    sget-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "GB18030"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method private readInt32Value0([BB)I
    .locals 5

    .line 1
    .line 2
    const/16 v0, -0x28

    .line 3
    .line 4
    if-lt p2, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, -0x11

    .line 7
    .line 8
    if-gt p2, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p2, p2, 0x20

    .line 11
    return p2

    .line 12
    .line 13
    :cond_0
    const/16 v0, -0x38

    .line 14
    .line 15
    if-lt p2, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, -0x29

    .line 18
    .line 19
    if-gt p2, v0, :cond_1

    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x30

    .line 22
    .line 23
    shl-int/lit8 p2, p2, 0x8

    .line 24
    .line 25
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 26
    .line 27
    add-int/lit8 v1, v0, 0x1

    .line 28
    .line 29
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    .line 31
    aget-byte p1, p1, v0

    .line 32
    .line 33
    and-int/lit16 p1, p1, 0xff

    .line 34
    add-int/2addr p2, p1

    .line 35
    return p2

    .line 36
    .line 37
    :cond_1
    const/16 v0, -0x40

    .line 38
    .line 39
    if-lt p2, v0, :cond_2

    .line 40
    .line 41
    const/16 v0, -0x39

    .line 42
    .line 43
    if-gt p2, v0, :cond_2

    .line 44
    .line 45
    add-int/lit8 p2, p2, 0x3c

    .line 46
    .line 47
    shl-int/lit8 p2, p2, 0x10

    .line 48
    .line 49
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 50
    .line 51
    add-int/lit8 v1, v0, 0x1

    .line 52
    .line 53
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 54
    .line 55
    aget-byte v2, p1, v0

    .line 56
    .line 57
    and-int/lit16 v2, v2, 0xff

    .line 58
    .line 59
    shl-int/lit8 v2, v2, 0x8

    .line 60
    add-int/2addr p2, v2

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x2

    .line 63
    .line 64
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 65
    .line 66
    aget-byte p1, p1, v1

    .line 67
    .line 68
    and-int/lit16 p1, p1, 0xff

    .line 69
    add-int/2addr p2, p1

    .line 70
    return p2

    .line 71
    .line 72
    :cond_2
    const/16 v0, -0x54

    .line 73
    .line 74
    if-eq p2, v0, :cond_f

    .line 75
    .line 76
    const/16 v0, -0x53

    .line 77
    .line 78
    if-eq p2, v0, :cond_f

    .line 79
    .line 80
    const/16 v0, -0x47

    .line 81
    .line 82
    if-eq p2, v0, :cond_d

    .line 83
    .line 84
    const/16 v0, 0x7c

    .line 85
    const/4 v1, -0x1

    .line 86
    .line 87
    const/16 v2, 0x2e

    .line 88
    .line 89
    if-eq p2, v0, :cond_b

    .line 90
    .line 91
    const/16 v0, 0x79

    .line 92
    .line 93
    if-eq p2, v0, :cond_9

    .line 94
    .line 95
    const/16 v0, 0x7a

    .line 96
    .line 97
    if-eq p2, v0, :cond_7

    .line 98
    const/4 v0, 0x0

    .line 99
    const/4 v3, 0x1

    .line 100
    .line 101
    .line 102
    packed-switch p2, :pswitch_data_0

    .line 103
    .line 104
    .line 105
    packed-switch p2, :pswitch_data_1

    .line 106
    .line 107
    const/16 p1, 0x49

    .line 108
    .line 109
    if-lt p2, p1, :cond_4

    .line 110
    .line 111
    const/16 v0, 0x78

    .line 112
    .line 113
    if-gt p2, v0, :cond_4

    .line 114
    sub-int/2addr p2, p1

    .line 115
    .line 116
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 123
    add-int/2addr v0, p2

    .line 124
    .line 125
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 129
    move-result p2

    .line 130
    .line 131
    if-ne p2, v1, :cond_3

    .line 132
    .line 133
    new-instance p2, Ljava/math/BigInteger;

    .line 134
    .line 135
    .line 136
    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    .line 140
    move-result p1

    .line 141
    return p1

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 149
    move-result p1

    .line 150
    return p1

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32ValueError(B)Lcom/alibaba/fastjson2/JSONException;

    .line 154
    move-result-object p1

    .line 155
    throw p1

    .line 156
    .line 157
    :pswitch_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 158
    .line 159
    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 160
    .line 161
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 162
    int-to-long v2, v2

    .line 163
    add-long/2addr v0, v2

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 167
    move-result-wide p1

    .line 168
    .line 169
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 170
    .line 171
    add-int/lit8 v0, v0, 0x8

    .line 172
    .line 173
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 174
    .line 175
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 176
    .line 177
    if-eqz v0, :cond_5

    .line 178
    goto :goto_0

    .line 179
    .line 180
    .line 181
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    .line 182
    move-result-wide p1

    .line 183
    :goto_0
    long-to-int p1, p1

    .line 184
    return p1

    .line 185
    .line 186
    :pswitch_1
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 187
    .line 188
    add-int/lit8 v0, p2, 0x1

    .line 189
    .line 190
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 191
    .line 192
    aget-byte p1, p1, p2

    .line 193
    return p1

    .line 194
    .line 195
    :pswitch_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 196
    .line 197
    add-int/lit8 v0, p2, 0x1

    .line 198
    .line 199
    aget-byte v0, p1, v0

    .line 200
    .line 201
    and-int/lit16 v0, v0, 0xff

    .line 202
    .line 203
    aget-byte p1, p1, p2

    .line 204
    .line 205
    shl-int/lit8 p1, p1, 0x8

    .line 206
    add-int/2addr v0, p1

    .line 207
    .line 208
    add-int/lit8 p2, p2, 0x2

    .line 209
    .line 210
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 211
    return v0

    .line 212
    .line 213
    :pswitch_3
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 214
    .line 215
    .line 216
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 217
    move-result p1

    .line 218
    .line 219
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 220
    .line 221
    add-int/lit8 p2, p2, 0x4

    .line 222
    .line 223
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 224
    .line 225
    .line 226
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 227
    move-result p1

    .line 228
    float-to-int p1, p1

    .line 229
    return p1

    .line 230
    .line 231
    .line 232
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 233
    move-result p1

    .line 234
    int-to-float p1, p1

    .line 235
    float-to-int p1, p1

    .line 236
    return p1

    .line 237
    .line 238
    :pswitch_5
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 239
    sub-int/2addr p1, v3

    .line 240
    .line 241
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readDoubleValue()D

    .line 245
    move-result-wide p1

    .line 246
    double-to-int p1, p1

    .line 247
    return p1

    .line 248
    .line 249
    .line 250
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 251
    move-result-wide p1

    .line 252
    long-to-int p1, p1

    .line 253
    return p1

    .line 254
    :pswitch_7
    return v3

    .line 255
    :pswitch_8
    return v0

    .line 256
    .line 257
    :pswitch_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 258
    .line 259
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 260
    .line 261
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 262
    .line 263
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 264
    and-long/2addr p1, v1

    .line 265
    .line 266
    const-wide/16 v1, 0x0

    .line 267
    .line 268
    cmp-long p1, p1, v1

    .line 269
    .line 270
    if-nez p1, :cond_6

    .line 271
    .line 272
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 273
    return v0

    .line 274
    .line 275
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 276
    .line 277
    const-string p2, "int value not support input null"

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    move-result-object p2

    .line 282
    .line 283
    .line 284
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 285
    throw p1

    .line 286
    .line 287
    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 289
    move-result p2

    .line 290
    .line 291
    new-instance v0, Ljava/lang/String;

    .line 292
    .line 293
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 294
    .line 295
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 299
    .line 300
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 301
    add-int/2addr p1, p2

    .line 302
    .line 303
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 307
    move-result p1

    .line 308
    .line 309
    if-ne p1, v1, :cond_8

    .line 310
    .line 311
    new-instance p1, Ljava/math/BigInteger;

    .line 312
    .line 313
    .line 314
    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 318
    move-result p1

    .line 319
    return p1

    .line 320
    .line 321
    .line 322
    :cond_8
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 323
    move-result-object p1

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 327
    move-result p1

    .line 328
    return p1

    .line 329
    .line 330
    .line 331
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 332
    move-result p1

    .line 333
    .line 334
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 338
    move-result-object p2

    .line 339
    .line 340
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 341
    add-int/2addr v0, p1

    .line 342
    .line 343
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    .line 347
    move-result p1

    .line 348
    .line 349
    if-ne p1, v1, :cond_a

    .line 350
    .line 351
    new-instance p1, Ljava/math/BigInteger;

    .line 352
    .line 353
    .line 354
    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 358
    move-result p1

    .line 359
    return p1

    .line 360
    .line 361
    .line 362
    :cond_a
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 363
    move-result-object p1

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 367
    move-result p1

    .line 368
    return p1

    .line 369
    .line 370
    .line 371
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 372
    move-result p2

    .line 373
    .line 374
    new-instance v0, Ljava/lang/String;

    .line 375
    .line 376
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 377
    .line 378
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 379
    .line 380
    .line 381
    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 382
    .line 383
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 384
    add-int/2addr p1, p2

    .line 385
    .line 386
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 390
    move-result p1

    .line 391
    .line 392
    if-ne p1, v1, :cond_c

    .line 393
    .line 394
    new-instance p1, Ljava/math/BigInteger;

    .line 395
    .line 396
    .line 397
    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 401
    move-result p1

    .line 402
    return p1

    .line 403
    .line 404
    .line 405
    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 406
    move-result-object p1

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 410
    move-result p1

    .line 411
    return p1

    .line 412
    .line 413
    .line 414
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 415
    move-result p1

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 419
    move-result-object p2

    .line 420
    .line 421
    if-nez p1, :cond_e

    .line 422
    .line 423
    new-instance p1, Ljava/math/BigDecimal;

    .line 424
    .line 425
    .line 426
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 427
    goto :goto_1

    .line 428
    .line 429
    :cond_e
    new-instance v0, Ljava/math/BigDecimal;

    .line 430
    .line 431
    .line 432
    invoke-direct {v0, p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 433
    move-object p1, v0

    .line 434
    .line 435
    .line 436
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 437
    move-result p1

    .line 438
    return p1

    .line 439
    .line 440
    :cond_f
    :pswitch_a
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 441
    .line 442
    .line 443
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 444
    move-result p1

    .line 445
    .line 446
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 447
    .line 448
    add-int/lit8 p2, p2, 0x4

    .line 449
    .line 450
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 451
    return p1

    .line 452
    nop

    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
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
    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private readInt32ValueError(B)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "readInt32Value not support "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, ", offset "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p1, "/"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 37
    array-length p1, p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method private readInt64Value0([BB)J
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x30

    .line 3
    .line 4
    if-lt p2, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x3f

    .line 7
    .line 8
    if-gt p2, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p2, p2, -0x38

    .line 11
    .line 12
    shl-int/lit8 p2, p2, 0x8

    .line 13
    .line 14
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 19
    .line 20
    aget-byte p1, p1, v0

    .line 21
    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    add-int/2addr p2, p1

    .line 24
    int-to-long p1, p2

    .line 25
    return-wide p1

    .line 26
    .line 27
    :cond_0
    const/16 v0, -0x10

    .line 28
    .line 29
    if-lt p2, v0, :cond_1

    .line 30
    .line 31
    const/16 v0, 0x2f

    .line 32
    .line 33
    if-gt p2, v0, :cond_1

    .line 34
    int-to-long p1, p2

    .line 35
    return-wide p1

    .line 36
    .line 37
    :cond_1
    const/16 v0, 0x40

    .line 38
    .line 39
    if-lt p2, v0, :cond_2

    .line 40
    .line 41
    const/16 v0, 0x47

    .line 42
    .line 43
    if-gt p2, v0, :cond_2

    .line 44
    .line 45
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 49
    move-result p1

    .line 50
    .line 51
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 52
    .line 53
    add-int/lit8 p2, p2, 0x2

    .line 54
    .line 55
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 56
    int-to-long p1, p1

    .line 57
    return-wide p1

    .line 58
    .line 59
    :cond_2
    const/16 v0, -0x47

    .line 60
    .line 61
    if-eq p2, v0, :cond_10

    .line 62
    .line 63
    const/16 v0, 0x48

    .line 64
    .line 65
    if-eq p2, v0, :cond_f

    .line 66
    .line 67
    const/16 v0, 0x7c

    .line 68
    const/4 v1, -0x1

    .line 69
    .line 70
    const/16 v2, 0x2e

    .line 71
    .line 72
    if-eq p2, v0, :cond_d

    .line 73
    .line 74
    const/16 v0, -0x44

    .line 75
    .line 76
    if-eq p2, v0, :cond_c

    .line 77
    .line 78
    const/16 v0, -0x43

    .line 79
    .line 80
    if-eq p2, v0, :cond_b

    .line 81
    .line 82
    const/16 v0, 0x79

    .line 83
    .line 84
    if-eq p2, v0, :cond_9

    .line 85
    .line 86
    const/16 v0, 0x7a

    .line 87
    .line 88
    if-eq p2, v0, :cond_7

    .line 89
    .line 90
    .line 91
    packed-switch p2, :pswitch_data_0

    .line 92
    .line 93
    const-wide/16 v3, 0x0

    .line 94
    const/4 v0, 0x1

    .line 95
    .line 96
    .line 97
    packed-switch p2, :pswitch_data_1

    .line 98
    .line 99
    const/16 p1, 0x49

    .line 100
    .line 101
    if-lt p2, p1, :cond_4

    .line 102
    .line 103
    const/16 v0, 0x78

    .line 104
    .line 105
    if-gt p2, v0, :cond_4

    .line 106
    sub-int/2addr p2, p1

    .line 107
    .line 108
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 115
    add-int/2addr v0, p2

    .line 116
    .line 117
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 121
    move-result p2

    .line 122
    .line 123
    if-ne p2, v1, :cond_3

    .line 124
    .line 125
    new-instance p2, Ljava/math/BigInteger;

    .line 126
    .line 127
    .line 128
    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    .line 132
    move-result-wide p1

    .line 133
    return-wide p1

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    .line 141
    move-result-wide p1

    .line 142
    return-wide p1

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64ValueError(B)Lcom/alibaba/fastjson2/JSONException;

    .line 146
    move-result-object p1

    .line 147
    throw p1

    .line 148
    .line 149
    :pswitch_0
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 150
    .line 151
    .line 152
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 153
    move-result p1

    .line 154
    .line 155
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 156
    .line 157
    add-int/lit8 p2, p2, 0x4

    .line 158
    .line 159
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 163
    move-result p1

    .line 164
    float-to-long p1, p1

    .line 165
    return-wide p1

    .line 166
    .line 167
    .line 168
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 169
    move-result p1

    .line 170
    int-to-float p1, p1

    .line 171
    float-to-long p1, p1

    .line 172
    return-wide p1

    .line 173
    .line 174
    :pswitch_2
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 175
    sub-int/2addr p1, v0

    .line 176
    .line 177
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readDoubleValue()D

    .line 181
    move-result-wide p1

    .line 182
    double-to-long p1, p1

    .line 183
    return-wide p1

    .line 184
    .line 185
    .line 186
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 187
    move-result-wide p1

    .line 188
    long-to-double p1, p1

    .line 189
    double-to-long p1, p1

    .line 190
    return-wide p1

    .line 191
    .line 192
    :pswitch_4
    const-wide/16 p1, 0x1

    .line 193
    return-wide p1

    .line 194
    :pswitch_5
    return-wide v3

    .line 195
    .line 196
    :pswitch_6
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 197
    .line 198
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 199
    .line 200
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 201
    .line 202
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 203
    and-long/2addr p1, v1

    .line 204
    .line 205
    cmp-long p1, p1, v3

    .line 206
    .line 207
    if-nez p1, :cond_5

    .line 208
    .line 209
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 210
    return-wide v3

    .line 211
    .line 212
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 213
    .line 214
    const-string p2, "long value not support input null"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object p2

    .line 219
    .line 220
    .line 221
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 222
    throw p1

    .line 223
    .line 224
    :pswitch_7
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 225
    .line 226
    .line 227
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 228
    move-result p1

    .line 229
    int-to-long p1, p1

    .line 230
    .line 231
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 232
    .line 233
    add-int/lit8 v0, v0, 0x4

    .line 234
    .line 235
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 236
    .line 237
    .line 238
    const-wide/32 v0, 0xea60

    .line 239
    mul-long/2addr p1, v0

    .line 240
    return-wide p1

    .line 241
    .line 242
    :pswitch_8
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 243
    .line 244
    .line 245
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 246
    move-result p1

    .line 247
    int-to-long p1, p1

    .line 248
    .line 249
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 250
    .line 251
    add-int/lit8 v0, v0, 0x4

    .line 252
    .line 253
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 254
    .line 255
    const-wide/16 v0, 0x3e8

    .line 256
    mul-long/2addr p1, v0

    .line 257
    return-wide p1

    .line 258
    .line 259
    :pswitch_9
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 260
    .line 261
    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 262
    .line 263
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 264
    int-to-long v2, v2

    .line 265
    add-long/2addr v0, v2

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 269
    move-result-wide p1

    .line 270
    .line 271
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 272
    .line 273
    add-int/lit8 v0, v0, 0x8

    .line 274
    .line 275
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 276
    .line 277
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 278
    .line 279
    if-eqz v0, :cond_6

    .line 280
    return-wide p1

    .line 281
    .line 282
    .line 283
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    .line 284
    move-result-wide p1

    .line 285
    return-wide p1

    .line 286
    .line 287
    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 289
    move-result p2

    .line 290
    .line 291
    new-instance v0, Ljava/lang/String;

    .line 292
    .line 293
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 294
    .line 295
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 299
    .line 300
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 301
    add-int/2addr p1, p2

    .line 302
    .line 303
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 307
    move-result p1

    .line 308
    .line 309
    if-ne p1, v1, :cond_8

    .line 310
    .line 311
    new-instance p1, Ljava/math/BigInteger;

    .line 312
    .line 313
    .line 314
    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 318
    move-result p1

    .line 319
    int-to-long p1, p1

    .line 320
    return-wide p1

    .line 321
    .line 322
    .line 323
    :cond_8
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 324
    move-result-object p1

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 328
    move-result p1

    .line 329
    int-to-long p1, p1

    .line 330
    return-wide p1

    .line 331
    .line 332
    .line 333
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 334
    move-result p1

    .line 335
    .line 336
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 340
    move-result-object p2

    .line 341
    .line 342
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 343
    add-int/2addr v0, p1

    .line 344
    .line 345
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 346
    .line 347
    .line 348
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    .line 349
    move-result p1

    .line 350
    .line 351
    if-ne p1, v1, :cond_a

    .line 352
    .line 353
    new-instance p1, Ljava/math/BigInteger;

    .line 354
    .line 355
    .line 356
    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 360
    move-result p1

    .line 361
    int-to-long p1, p1

    .line 362
    return-wide p1

    .line 363
    .line 364
    .line 365
    :cond_a
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 366
    move-result-object p1

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 370
    move-result p1

    .line 371
    int-to-long p1, p1

    .line 372
    return-wide p1

    .line 373
    .line 374
    :cond_b
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 375
    .line 376
    add-int/lit8 v0, p2, 0x1

    .line 377
    .line 378
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 379
    .line 380
    aget-byte p1, p1, p2

    .line 381
    int-to-long p1, p1

    .line 382
    return-wide p1

    .line 383
    .line 384
    :cond_c
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 385
    .line 386
    add-int/lit8 v0, p2, 0x1

    .line 387
    .line 388
    aget-byte v0, p1, v0

    .line 389
    .line 390
    and-int/lit16 v0, v0, 0xff

    .line 391
    .line 392
    aget-byte p1, p1, p2

    .line 393
    .line 394
    shl-int/lit8 p1, p1, 0x8

    .line 395
    add-int/2addr v0, p1

    .line 396
    .line 397
    add-int/lit8 p2, p2, 0x2

    .line 398
    .line 399
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 400
    int-to-long p1, v0

    .line 401
    return-wide p1

    .line 402
    .line 403
    .line 404
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 405
    move-result p2

    .line 406
    .line 407
    new-instance v0, Ljava/lang/String;

    .line 408
    .line 409
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 410
    .line 411
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 412
    .line 413
    .line 414
    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 415
    .line 416
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 417
    add-int/2addr p1, p2

    .line 418
    .line 419
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 423
    move-result p1

    .line 424
    .line 425
    if-ne p1, v1, :cond_e

    .line 426
    .line 427
    new-instance p1, Ljava/math/BigInteger;

    .line 428
    .line 429
    .line 430
    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 434
    move-result p1

    .line 435
    int-to-long p1, p1

    .line 436
    return-wide p1

    .line 437
    .line 438
    .line 439
    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 440
    move-result-object p1

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    .line 444
    move-result p1

    .line 445
    int-to-long p1, p1

    .line 446
    return-wide p1

    .line 447
    .line 448
    :cond_f
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 449
    .line 450
    .line 451
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 452
    move-result p1

    .line 453
    .line 454
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 455
    .line 456
    add-int/lit8 p2, p2, 0x4

    .line 457
    .line 458
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 459
    int-to-long p1, p1

    .line 460
    return-wide p1

    .line 461
    .line 462
    .line 463
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 464
    move-result p1

    .line 465
    .line 466
    .line 467
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 468
    move-result-object p2

    .line 469
    .line 470
    if-nez p1, :cond_11

    .line 471
    .line 472
    new-instance p1, Ljava/math/BigDecimal;

    .line 473
    .line 474
    .line 475
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 476
    goto :goto_0

    .line 477
    .line 478
    :cond_11
    new-instance v0, Ljava/math/BigDecimal;

    .line 479
    .line 480
    .line 481
    invoke-direct {v0, p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 482
    move-object p1, v0

    .line 483
    .line 484
    .line 485
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    .line 486
    move-result-wide p1

    .line 487
    return-wide p1

    .line 488
    nop

    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
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
    :pswitch_data_1
    .packed-switch -0x51
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readInt64ValueError(B)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "readInt64Value not support "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, ", offset "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p1, "/"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 37
    array-length p1, p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method private readLocalDate0(I)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x49

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x78

    .line 7
    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getStringLength()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v2, "TODO : "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, ", "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0

    .line 51
    .line 52
    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    .line 57
    .line 58
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    .line 62
    .line 63
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    .line 67
    .line 68
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    .line 72
    :cond_0
    const/16 v0, 0x7a

    .line 73
    .line 74
    if-eq p1, v0, :cond_1

    .line 75
    .line 76
    const/16 v0, 0x79

    .line 77
    .line 78
    if-ne p1, v0, :cond_2

    .line 79
    :cond_1
    int-to-byte p1, p1

    .line 80
    .line 81
    iput-byte p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 82
    .line 83
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 84
    .line 85
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 91
    move-result p1

    .line 92
    .line 93
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 94
    .line 95
    .line 96
    packed-switch p1, :pswitch_data_1

    .line 97
    .line 98
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 99
    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 102
    throw p1

    .line 103
    .line 104
    .line 105
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    .line 109
    .line 110
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    .line 114
    .line 115
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    .line 119
    .line 120
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private readLocalDateTime0(I)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x49

    .line 3
    .line 4
    if-lt p1, v0, :cond_6

    .line 5
    .line 6
    const/16 v0, 0x78

    .line 7
    .line 8
    if-gt p1, v0, :cond_6

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getStringLength()I

    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    :pswitch_0
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTimeX(I)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    return-object v0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p1, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_1
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "TODO : "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p1, ", "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0

    .line 69
    .line 70
    .line 71
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    .line 75
    .line 76
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    .line 80
    .line 81
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime18()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    .line 86
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime17()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    .line 90
    .line 91
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime16()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    .line 95
    .line 96
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    if-nez p1, :cond_2

    .line 100
    return-object v0

    .line 101
    .line 102
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    .line 109
    .line 110
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    if-nez p1, :cond_3

    .line 114
    return-object v0

    .line 115
    .line 116
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 117
    .line 118
    .line 119
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 120
    move-result-object p1

    .line 121
    return-object p1

    .line 122
    .line 123
    .line 124
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    if-nez p1, :cond_4

    .line 128
    return-object v0

    .line 129
    .line 130
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    .line 137
    .line 138
    :pswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    if-nez p1, :cond_5

    .line 142
    return-object v0

    .line 143
    .line 144
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    :cond_6
    int-to-byte p1, p1

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 154
    move-result-object p1

    .line 155
    throw p1

    .line 156
    nop

    .line 157
    .line 158
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
    .line 169
    .line 170
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
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private readStringError()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "string value not support input "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, " offset "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 39
    array-length v2, v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method private readStringNonAscii()Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 3
    .line 4
    const/16 v1, 0x7a

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 10
    .line 11
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 12
    .line 13
    aget-byte v3, v0, v1

    .line 14
    .line 15
    const/16 v4, -0x10

    .line 16
    .line 17
    if-lt v3, v4, :cond_0

    .line 18
    .line 19
    const/16 v4, 0x2f

    .line 20
    .line 21
    if-gt v3, v4, :cond_0

    .line 22
    .line 23
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 v4, 0x30

    .line 31
    .line 32
    if-lt v3, v4, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x3f

    .line 35
    .line 36
    if-gt v3, v4, :cond_1

    .line 37
    .line 38
    add-int/lit8 v3, v3, -0x38

    .line 39
    .line 40
    shl-int/lit8 v3, v3, 0x8

    .line 41
    .line 42
    add-int/lit8 v4, v1, 0x1

    .line 43
    .line 44
    aget-byte v0, v0, v4

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    add-int/2addr v3, v0

    .line 48
    .line 49
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x2

    .line 52
    .line 53
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 58
    move-result v0

    .line 59
    .line 60
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 61
    .line 62
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 63
    .line 64
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 65
    .line 66
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 67
    :goto_1
    move-object v1, v0

    .line 68
    move-object v0, v2

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_2
    const/16 v1, 0x7b

    .line 72
    .line 73
    if-ne v0, v1, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 77
    move-result v0

    .line 78
    .line 79
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 80
    .line 81
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 82
    .line 83
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 84
    .line 85
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_3
    const/16 v1, 0x7c

    .line 89
    .line 90
    if-ne v0, v1, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readUTF16LE()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_4
    const/16 v1, 0x7d

    .line 100
    .line 101
    if-ne v0, v1, :cond_6

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readUTF16BE()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    return-object v0

    .line 109
    .line 110
    :cond_5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 111
    goto :goto_2

    .line 112
    .line 113
    :cond_6
    const/16 v1, 0x7e

    .line 114
    .line 115
    if-ne v0, v1, :cond_c

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readGB18030()Ljava/lang/String;

    .line 119
    .line 120
    sget-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :goto_2
    const-wide/16 v3, 0x0

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 128
    .line 129
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 130
    .line 131
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 132
    .line 133
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 134
    and-long/2addr v1, v5

    .line 135
    .line 136
    cmp-long v1, v1, v3

    .line 137
    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    :cond_7
    return-object v0

    .line 144
    .line 145
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 146
    .line 147
    if-gez v0, :cond_9

    .line 148
    .line 149
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 150
    neg-int v0, v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    .line 157
    :cond_9
    new-instance v5, Ljava/lang/String;

    .line 158
    .line 159
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 160
    .line 161
    iget v7, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 162
    .line 163
    .line 164
    invoke-direct {v5, v6, v7, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 165
    .line 166
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 167
    .line 168
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 169
    add-int/2addr v0, v1

    .line 170
    .line 171
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 172
    .line 173
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 174
    .line 175
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 176
    .line 177
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 178
    .line 179
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 180
    and-long/2addr v0, v6

    .line 181
    .line 182
    cmp-long v0, v0, v3

    .line 183
    .line 184
    if-eqz v0, :cond_a

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 188
    move-result-object v5

    .line 189
    .line 190
    .line 191
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 192
    move-result v0

    .line 193
    .line 194
    if-eqz v0, :cond_b

    .line 195
    .line 196
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 197
    .line 198
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 199
    .line 200
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 201
    .line 202
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 203
    and-long/2addr v0, v6

    .line 204
    .line 205
    cmp-long v0, v0, v3

    .line 206
    .line 207
    if-eqz v0, :cond_b

    .line 208
    return-object v2

    .line 209
    :cond_b
    return-object v5

    .line 210
    .line 211
    .line 212
    :cond_c
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readStringTypeNotMatch()Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    return-object v0
.end method

.method private readStringTypeNotMatch()Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 3
    .line 4
    const/16 v1, -0x10

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x2f

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    const/16 v1, 0x30

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x3f

    .line 22
    .line 23
    if-gt v0, v1, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x38

    .line 26
    .line 27
    shl-int/lit8 v0, v0, 0x8

    .line 28
    .line 29
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 30
    .line 31
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 32
    .line 33
    add-int/lit8 v3, v2, 0x1

    .line 34
    .line 35
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 36
    .line 37
    aget-byte v1, v1, v2

    .line 38
    .line 39
    and-int/lit16 v1, v1, 0xff

    .line 40
    add-int/2addr v0, v1

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_1
    const/16 v1, 0x40

    .line 48
    .line 49
    if-lt v0, v1, :cond_2

    .line 50
    .line 51
    const/16 v1, 0x47

    .line 52
    .line 53
    if-gt v0, v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 56
    .line 57
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 61
    move-result v0

    .line 62
    .line 63
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x2

    .line 66
    .line 67
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    .line 74
    :cond_2
    const/16 v1, -0x28

    .line 75
    .line 76
    if-lt v0, v1, :cond_3

    .line 77
    .line 78
    const/16 v1, -0x11

    .line 79
    .line 80
    if-gt v0, v1, :cond_3

    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x20

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    .line 89
    :cond_3
    const/16 v1, -0x38

    .line 90
    .line 91
    if-lt v0, v1, :cond_4

    .line 92
    .line 93
    const/16 v1, -0x29

    .line 94
    .line 95
    if-gt v0, v1, :cond_4

    .line 96
    .line 97
    add-int/lit8 v0, v0, 0x30

    .line 98
    .line 99
    shl-int/lit8 v0, v0, 0x8

    .line 100
    .line 101
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 102
    .line 103
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 104
    .line 105
    add-int/lit8 v3, v2, 0x1

    .line 106
    .line 107
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 108
    .line 109
    aget-byte v1, v1, v2

    .line 110
    .line 111
    and-int/lit16 v1, v1, 0xff

    .line 112
    add-int/2addr v0, v1

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    .line 119
    :cond_4
    const/16 v1, -0x40

    .line 120
    .line 121
    if-lt v0, v1, :cond_5

    .line 122
    .line 123
    const/16 v1, -0x39

    .line 124
    .line 125
    if-gt v0, v1, :cond_5

    .line 126
    .line 127
    add-int/lit8 v0, v0, 0x3c

    .line 128
    .line 129
    shl-int/lit8 v0, v0, 0x10

    .line 130
    .line 131
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 132
    .line 133
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 134
    .line 135
    add-int/lit8 v3, v2, 0x1

    .line 136
    .line 137
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 138
    .line 139
    aget-byte v4, v1, v2

    .line 140
    .line 141
    and-int/lit16 v4, v4, 0xff

    .line 142
    .line 143
    shl-int/lit8 v4, v4, 0x8

    .line 144
    add-int/2addr v0, v4

    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x2

    .line 147
    .line 148
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 149
    .line 150
    aget-byte v1, v1, v3

    .line 151
    .line 152
    and-int/lit16 v1, v1, 0xff

    .line 153
    add-int/2addr v0, v1

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    return-object v0

    .line 159
    .line 160
    :cond_5
    const/16 v1, -0x6e

    .line 161
    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x0

    .line 163
    .line 164
    if-eq v0, v1, :cond_d

    .line 165
    .line 166
    const/16 v1, -0x51

    .line 167
    .line 168
    if-eq v0, v1, :cond_c

    .line 169
    .line 170
    const/16 v1, 0x48

    .line 171
    .line 172
    if-eq v0, v1, :cond_b

    .line 173
    .line 174
    const/16 v1, -0x42

    .line 175
    .line 176
    if-eq v0, v1, :cond_9

    .line 177
    .line 178
    const/16 v1, -0x41

    .line 179
    .line 180
    if-eq v0, v1, :cond_b

    .line 181
    .line 182
    .line 183
    packed-switch v0, :pswitch_data_0

    .line 184
    .line 185
    .line 186
    packed-switch v0, :pswitch_data_1

    .line 187
    .line 188
    .line 189
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportString()Lcom/alibaba/fastjson2/JSONException;

    .line 190
    move-result-object v0

    .line 191
    throw v0

    .line 192
    .line 193
    .line 194
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 195
    move-result v0

    .line 196
    .line 197
    new-array v1, v0, [B

    .line 198
    .line 199
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 200
    .line 201
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 202
    .line 203
    .line 204
    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    .line 206
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 207
    add-int/2addr v2, v0

    .line 208
    .line 209
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 210
    .line 211
    new-instance v0, Ljava/math/BigInteger;

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    return-object v0

    .line 220
    .line 221
    .line 222
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 223
    move-result v0

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    if-nez v0, :cond_6

    .line 230
    .line 231
    new-instance v0, Ljava/math/BigDecimal;

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 235
    goto :goto_0

    .line 236
    .line 237
    :cond_6
    new-instance v2, Ljava/math/BigDecimal;

    .line 238
    .line 239
    .line 240
    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 241
    move-object v0, v2

    .line 242
    .line 243
    .line 244
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    return-object v0

    .line 247
    .line 248
    .line 249
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 250
    move-result-wide v0

    .line 251
    .line 252
    .line 253
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    return-object v0

    .line 256
    .line 257
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 258
    .line 259
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 260
    .line 261
    .line 262
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 263
    move-result v0

    .line 264
    .line 265
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 266
    .line 267
    add-int/lit8 v1, v1, 0x4

    .line 268
    .line 269
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 270
    .line 271
    .line 272
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 273
    move-result v0

    .line 274
    .line 275
    .line 276
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 277
    move-result-object v0

    .line 278
    return-object v0

    .line 279
    .line 280
    .line 281
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 282
    move-result v0

    .line 283
    int-to-float v0, v0

    .line 284
    .line 285
    .line 286
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 288
    return-object v0

    .line 289
    .line 290
    :pswitch_5
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 291
    .line 292
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 293
    .line 294
    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 295
    .line 296
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 297
    int-to-long v4, v4

    .line 298
    add-long/2addr v2, v4

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 302
    move-result-wide v0

    .line 303
    .line 304
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 305
    .line 306
    add-int/lit8 v2, v2, 0x8

    .line 307
    .line 308
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 309
    .line 310
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 311
    .line 312
    if-eqz v2, :cond_7

    .line 313
    goto :goto_1

    .line 314
    .line 315
    .line 316
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 317
    move-result-wide v0

    .line 318
    .line 319
    .line 320
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 321
    move-result-wide v0

    .line 322
    .line 323
    .line 324
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 325
    move-result-object v0

    .line 326
    return-object v0

    .line 327
    .line 328
    .line 329
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 330
    move-result-wide v0

    .line 331
    long-to-double v0, v0

    .line 332
    .line 333
    .line 334
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 335
    move-result-object v0

    .line 336
    return-object v0

    .line 337
    .line 338
    :pswitch_7
    const-string v0, "1.0"

    .line 339
    return-object v0

    .line 340
    .line 341
    :pswitch_8
    const-string v0, "0.0"

    .line 342
    return-object v0

    .line 343
    .line 344
    :pswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 345
    .line 346
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 350
    move-result v0

    .line 351
    int-to-long v0, v0

    .line 352
    .line 353
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 354
    .line 355
    add-int/lit8 v2, v2, 0x4

    .line 356
    .line 357
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 358
    .line 359
    .line 360
    const-wide/32 v4, 0xea60

    .line 361
    mul-long/2addr v0, v4

    .line 362
    .line 363
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 364
    .line 365
    .line 366
    invoke-static {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    .line 367
    move-result-object v0

    .line 368
    return-object v0

    .line 369
    .line 370
    :pswitch_a
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 371
    .line 372
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 373
    .line 374
    .line 375
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 376
    move-result v0

    .line 377
    int-to-long v0, v0

    .line 378
    .line 379
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 380
    .line 381
    add-int/lit8 v2, v2, 0x4

    .line 382
    .line 383
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 384
    .line 385
    const-wide/16 v4, 0x3e8

    .line 386
    mul-long/2addr v0, v4

    .line 387
    .line 388
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 389
    .line 390
    .line 391
    invoke-static {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    .line 392
    move-result-object v0

    .line 393
    return-object v0

    .line 394
    .line 395
    :pswitch_b
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 396
    .line 397
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 398
    .line 399
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 400
    .line 401
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 402
    int-to-long v6, v2

    .line 403
    add-long/2addr v4, v6

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 407
    move-result-wide v0

    .line 408
    .line 409
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 410
    .line 411
    add-int/lit8 v2, v2, 0x8

    .line 412
    .line 413
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 414
    .line 415
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 416
    .line 417
    if-eqz v2, :cond_8

    .line 418
    goto :goto_2

    .line 419
    .line 420
    .line 421
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 422
    move-result-wide v0

    .line 423
    .line 424
    :goto_2
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 425
    .line 426
    .line 427
    invoke-static {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    .line 428
    move-result-object v0

    .line 429
    return-object v0

    .line 430
    .line 431
    :cond_9
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 432
    .line 433
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 434
    .line 435
    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 436
    .line 437
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 438
    int-to-long v4, v4

    .line 439
    add-long/2addr v2, v4

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 443
    move-result-wide v0

    .line 444
    .line 445
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 446
    .line 447
    if-nez v2, :cond_a

    .line 448
    .line 449
    .line 450
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 451
    move-result-wide v0

    .line 452
    .line 453
    :cond_a
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 454
    .line 455
    add-int/lit8 v2, v2, 0x8

    .line 456
    .line 457
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 458
    .line 459
    .line 460
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 461
    move-result-object v0

    .line 462
    return-object v0

    .line 463
    .line 464
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 465
    .line 466
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 467
    .line 468
    .line 469
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 470
    move-result v0

    .line 471
    int-to-long v0, v0

    .line 472
    .line 473
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 474
    .line 475
    add-int/lit8 v2, v2, 0x4

    .line 476
    .line 477
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 478
    .line 479
    .line 480
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 481
    move-result-object v0

    .line 482
    return-object v0

    .line 483
    :cond_c
    return-object v2

    .line 484
    .line 485
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 486
    const/4 v1, 0x1

    .line 487
    sub-int/2addr v0, v1

    .line 488
    .line 489
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 493
    move-result-object v0

    .line 494
    .line 495
    if-nez v0, :cond_e

    .line 496
    return-object v2

    .line 497
    .line 498
    :cond_e
    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 499
    .line 500
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteThrowableClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 501
    .line 502
    aput-object v2, v1, v3

    .line 503
    .line 504
    .line 505
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/a;->G1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    .line 506
    move-result-object v0

    .line 507
    return-object v0

    .line 508
    nop

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
    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch -0x4e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private readStringUTF8()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x10

    .line 9
    .line 10
    if-lt v2, v3, :cond_0

    .line 11
    .line 12
    const/16 v3, 0x2f

    .line 13
    .line 14
    if-gt v2, v3, :cond_0

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 19
    .line 20
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const/16 v3, 0x30

    .line 24
    .line 25
    if-lt v2, v3, :cond_1

    .line 26
    .line 27
    const/16 v3, 0x3f

    .line 28
    .line 29
    if-gt v2, v3, :cond_1

    .line 30
    .line 31
    add-int/lit8 v3, v1, 0x1

    .line 32
    .line 33
    add-int/lit8 v2, v2, -0x38

    .line 34
    .line 35
    shl-int/lit8 v2, v2, 0x8

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 40
    .line 41
    aget-byte v0, v0, v3

    .line 42
    .line 43
    and-int/lit16 v0, v0, 0xff

    .line 44
    add-int/2addr v2, v0

    .line 45
    .line 46
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 51
    move-result v0

    .line 52
    .line 53
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 54
    .line 55
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 56
    .line 57
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 58
    const/4 v0, 0x0

    .line 59
    return-object v0
.end method

.method private readUTF16BE()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 7
    .line 8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method private readUTF16LE()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x10

    .line 9
    .line 10
    if-lt v2, v3, :cond_0

    .line 11
    .line 12
    const/16 v3, 0x2f

    .line 13
    .line 14
    if-gt v2, v3, :cond_0

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 19
    .line 20
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const/16 v3, 0x30

    .line 24
    .line 25
    if-lt v2, v3, :cond_1

    .line 26
    .line 27
    const/16 v3, 0x3f

    .line 28
    .line 29
    if-gt v2, v3, :cond_1

    .line 30
    .line 31
    add-int/lit8 v3, v1, 0x1

    .line 32
    .line 33
    add-int/lit8 v2, v2, -0x38

    .line 34
    .line 35
    shl-int/lit8 v2, v2, 0x8

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 40
    .line 41
    aget-byte v0, v0, v3

    .line 42
    .line 43
    and-int/lit16 v0, v0, 0xff

    .line 44
    add-int/2addr v2, v0

    .line 45
    .line 46
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 51
    move-result v0

    .line 52
    .line 53
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 54
    .line 55
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 56
    .line 57
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 58
    .line 59
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    const-string v0, ""

    .line 64
    return-object v0

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    return-object v0
.end method

.method public static typeRefNotFound(I)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "type ref not found : "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method


# virtual methods
.method public final autoTypeError()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "auotype not support : "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x6e

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    if-ne v0, v2, :cond_7

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    .line 19
    move-result-wide v5

    .line 20
    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 24
    .line 25
    cmp-long p2, p2, v5

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    if-ne p3, p1, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v5, v6, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(JLcom/alibaba/fastjson2/reader/ObjectReader;)V

    .line 43
    return-object p2

    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 46
    .line 47
    iget-object v4, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 48
    move-object v7, p1

    .line 49
    move-wide v8, p4

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-interface {v4, p1, v7, v8, v9}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    :cond_1
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    return-object p1

    .line 77
    .line 78
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 79
    .line 80
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 81
    or-long/2addr p1, v8

    .line 82
    .line 83
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 84
    .line 85
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 86
    and-long/2addr p3, p1

    .line 87
    .line 88
    const-wide/16 v8, 0x0

    .line 89
    .line 90
    cmp-long p3, p3, v8

    .line 91
    .line 92
    if-nez p3, :cond_4

    .line 93
    .line 94
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 95
    .line 96
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 97
    and-long/2addr p3, p1

    .line 98
    .line 99
    cmp-long p3, p3, v8

    .line 100
    .line 101
    if-nez p3, :cond_3

    .line 102
    return-object v3

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->autoTypeError()V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 109
    move-result-object p3

    .line 110
    .line 111
    if-eqz p3, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-interface {p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 115
    move-result-object p4

    .line 116
    .line 117
    if-eqz p4, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 121
    move-result-object p5

    .line 122
    .line 123
    if-eqz p5, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    if-eq p5, v0, :cond_5

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p3, p4, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getObjectReaderContext(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 137
    move-result-object p3

    .line 138
    .line 139
    :cond_5
    if-nez p3, :cond_6

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 143
    move-result-object p3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p3, v7, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 147
    move-result-object p3

    .line 148
    .line 149
    if-nez p3, :cond_6

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->autoTypeError()V

    .line 153
    .line 154
    :cond_6
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 155
    .line 156
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 157
    .line 158
    aget-byte p1, p1, p2

    .line 159
    .line 160
    iput-byte p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 161
    return-object p3

    .line 162
    :cond_7
    return-object v3
.end method

.method public close()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    .line 3
    .line 4
    const/high16 v1, 0x100000

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    array-length v2, v0

    .line 8
    .line 9
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    array-length v2, v0

    .line 22
    .line 23
    if-ge v2, v1, :cond_1

    .line 24
    .line 25
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    :cond_1
    return-void
.end method

.method public error(B)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isString()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, p1, -0x1

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 28
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    const/4 v1, 0x0

    .line 31
    .line 32
    :goto_0
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    :cond_0
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 43
    .line 44
    :cond_1
    const-string p1, ", offset "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const/16 p1, 0x2f

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 60
    array-length p1, p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLatin1String(II)Ljava/lang/String;
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
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

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
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

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
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

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
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

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

.method public final getNameHashCode()J
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-wide v5, v1

    .line 7
    move v4, v3

    .line 8
    .line 9
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 10
    .line 11
    if-ge v4, v7, :cond_2

    .line 12
    .line 13
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 14
    .line 15
    aget-byte v8, v7, v0

    .line 16
    .line 17
    if-ltz v8, :cond_1

    .line 18
    .line 19
    const/16 v9, 0x8

    .line 20
    .line 21
    if-ge v4, v9, :cond_1

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    iget v9, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 26
    .line 27
    aget-byte v7, v7, v9

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    goto :goto_3

    .line 31
    .line 32
    .line 33
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 34
    goto :goto_2

    .line 35
    :pswitch_0
    int-to-long v7, v8

    .line 36
    .line 37
    const/16 v9, 0x38

    .line 38
    shl-long/2addr v7, v9

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v9, 0xffffffffffffffL

    .line 44
    :goto_1
    and-long/2addr v5, v9

    .line 45
    add-long/2addr v5, v7

    .line 46
    goto :goto_2

    .line 47
    :pswitch_1
    int-to-long v7, v8

    .line 48
    .line 49
    const/16 v9, 0x30

    .line 50
    shl-long/2addr v7, v9

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v9, 0xffffffffffffL

    .line 56
    goto :goto_1

    .line 57
    :pswitch_2
    int-to-long v7, v8

    .line 58
    .line 59
    const/16 v9, 0x28

    .line 60
    shl-long/2addr v7, v9

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const-wide v9, 0xffffffffffL

    .line 66
    goto :goto_1

    .line 67
    :pswitch_3
    int-to-long v7, v8

    .line 68
    .line 69
    const/16 v9, 0x20

    .line 70
    shl-long/2addr v7, v9

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const-wide v9, 0xffffffffL

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :pswitch_4
    shl-int/lit8 v7, v8, 0x18

    .line 79
    int-to-long v7, v7

    .line 80
    .line 81
    .line 82
    const-wide/32 v9, 0xffffff

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :pswitch_5
    shl-int/lit8 v7, v8, 0x10

    .line 86
    int-to-long v7, v7

    .line 87
    .line 88
    .line 89
    const-wide/32 v9, 0xffff

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :pswitch_6
    shl-int/lit8 v7, v8, 0x8

    .line 93
    int-to-long v7, v7

    .line 94
    .line 95
    const-wide/16 v9, 0xff

    .line 96
    goto :goto_1

    .line 97
    :pswitch_7
    int-to-long v5, v8

    .line 98
    .line 99
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_1
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 105
    move-wide v5, v1

    .line 106
    .line 107
    :cond_2
    cmp-long v1, v5, v1

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    return-wide v5

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :cond_3
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 116
    .line 117
    :goto_4
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 118
    .line 119
    if-ge v3, v4, :cond_4

    .line 120
    .line 121
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 122
    .line 123
    add-int/lit8 v5, v0, 0x1

    .line 124
    .line 125
    aget-byte v0, v4, v0

    .line 126
    int-to-long v6, v0

    .line 127
    xor-long/2addr v1, v6

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    const-wide v6, 0x100000001b3L

    .line 133
    mul-long/2addr v1, v6

    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    move v0, v5

    .line 137
    goto :goto_4

    .line 138
    :cond_4
    return-wide v1

    .line 139
    .line 140
    .line 141
    .line 142
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

.method public getNameHashCodeLCase()J
    .locals 15

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-wide v5, v1

    .line 7
    move v4, v3

    .line 8
    .line 9
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 10
    .line 11
    const/16 v8, 0x5a

    .line 12
    .line 13
    const/16 v9, 0x41

    .line 14
    .line 15
    const/16 v10, 0x2d

    .line 16
    .line 17
    const/16 v11, 0x5f

    .line 18
    .line 19
    const/16 v12, 0x20

    .line 20
    .line 21
    if-ge v4, v7, :cond_5

    .line 22
    .line 23
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 24
    .line 25
    aget-byte v13, v7, v0

    .line 26
    .line 27
    if-ltz v13, :cond_4

    .line 28
    .line 29
    const/16 v14, 0x8

    .line 30
    .line 31
    if-ge v4, v14, :cond_4

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    iget v14, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 36
    .line 37
    aget-byte v14, v7, v14

    .line 38
    .line 39
    if-nez v14, :cond_0

    .line 40
    goto :goto_4

    .line 41
    .line 42
    :cond_0
    if-eq v13, v11, :cond_1

    .line 43
    .line 44
    if-eq v13, v10, :cond_1

    .line 45
    .line 46
    if-ne v13, v12, :cond_2

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v10, v0, 0x1

    .line 49
    .line 50
    aget-byte v7, v7, v10

    .line 51
    .line 52
    if-eq v7, v13, :cond_2

    .line 53
    goto :goto_3

    .line 54
    .line 55
    :cond_2
    if-lt v13, v9, :cond_3

    .line 56
    .line 57
    if-gt v13, v8, :cond_3

    .line 58
    .line 59
    add-int/lit8 v13, v13, 0x20

    .line 60
    int-to-byte v13, v13

    .line 61
    .line 62
    .line 63
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 64
    goto :goto_2

    .line 65
    :pswitch_0
    int-to-long v7, v13

    .line 66
    .line 67
    const/16 v9, 0x38

    .line 68
    shl-long/2addr v7, v9

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    const-wide v9, 0xffffffffffffffL

    .line 74
    :goto_1
    and-long/2addr v5, v9

    .line 75
    add-long/2addr v5, v7

    .line 76
    goto :goto_2

    .line 77
    :pswitch_1
    int-to-long v7, v13

    .line 78
    .line 79
    const/16 v9, 0x30

    .line 80
    shl-long/2addr v7, v9

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    const-wide v9, 0xffffffffffffL

    .line 86
    goto :goto_1

    .line 87
    :pswitch_2
    int-to-long v7, v13

    .line 88
    .line 89
    const/16 v9, 0x28

    .line 90
    shl-long/2addr v7, v9

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const-wide v9, 0xffffffffffL

    .line 96
    goto :goto_1

    .line 97
    :pswitch_3
    int-to-long v7, v13

    .line 98
    shl-long/2addr v7, v12

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    const-wide v9, 0xffffffffL

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :pswitch_4
    shl-int/lit8 v7, v13, 0x18

    .line 107
    int-to-long v7, v7

    .line 108
    .line 109
    .line 110
    const-wide/32 v9, 0xffffff

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :pswitch_5
    shl-int/lit8 v7, v13, 0x10

    .line 114
    int-to-long v7, v7

    .line 115
    .line 116
    .line 117
    const-wide/32 v9, 0xffff

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :pswitch_6
    shl-int/lit8 v7, v13, 0x8

    .line 121
    int-to-long v7, v7

    .line 122
    .line 123
    const-wide/16 v9, 0xff

    .line 124
    goto :goto_1

    .line 125
    :pswitch_7
    int-to-long v5, v13

    .line 126
    .line 127
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 130
    goto :goto_0

    .line 131
    .line 132
    :cond_4
    :goto_4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 133
    move-wide v5, v1

    .line 134
    .line 135
    :cond_5
    cmp-long v1, v5, v1

    .line 136
    .line 137
    if-eqz v1, :cond_6

    .line 138
    return-wide v5

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :cond_6
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 144
    .line 145
    :goto_5
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 146
    .line 147
    if-ge v3, v4, :cond_a

    .line 148
    .line 149
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 150
    .line 151
    add-int/lit8 v5, v0, 0x1

    .line 152
    .line 153
    aget-byte v0, v4, v0

    .line 154
    .line 155
    if-lt v0, v9, :cond_7

    .line 156
    .line 157
    if-gt v0, v8, :cond_7

    .line 158
    .line 159
    add-int/lit8 v0, v0, 0x20

    .line 160
    int-to-byte v0, v0

    .line 161
    .line 162
    :cond_7
    if-eq v0, v11, :cond_9

    .line 163
    .line 164
    if-eq v0, v10, :cond_9

    .line 165
    .line 166
    if-ne v0, v12, :cond_8

    .line 167
    goto :goto_6

    .line 168
    :cond_8
    int-to-long v6, v0

    .line 169
    xor-long/2addr v1, v6

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    const-wide v6, 0x100000001b3L

    .line 175
    mul-long/2addr v1, v6

    .line 176
    .line 177
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 178
    move v0, v5

    .line 179
    goto :goto_5

    .line 180
    :cond_a
    return-wide v1

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
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
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

.method public getRawInt()I
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x3

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 15
    int-to-long v5, v0

    .line 16
    add-long/2addr v3, v5

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public getRawLong()J
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x7

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 15
    int-to-long v5, v0

    .line 16
    add-long/2addr v3, v5

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    .line 23
    :cond_0
    const-wide/16 v0, 0x0

    .line 24
    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 5
    .line 6
    const/16 v2, -0x51

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    return-object v3

    .line 11
    .line 12
    :cond_0
    if-gez v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 15
    neg-int v1, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_1
    const/16 v2, 0x79

    .line 23
    .line 24
    if-eq v0, v2, :cond_7

    .line 25
    .line 26
    const/16 v2, 0x49

    .line 27
    .line 28
    if-lt v0, v2, :cond_2

    .line 29
    .line 30
    const/16 v2, 0x78

    .line 31
    .line 32
    if-gt v0, v2, :cond_2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    const/16 v2, 0x7a

    .line 36
    .line 37
    if-ne v0, v2, :cond_3

    .line 38
    .line 39
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_3
    const/16 v2, 0x7b

    .line 43
    .line 44
    if-ne v0, v2, :cond_4

    .line 45
    .line 46
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_4
    const/16 v2, 0x7c

    .line 50
    .line 51
    if-ne v0, v2, :cond_5

    .line 52
    .line 53
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_5
    const/16 v2, 0x7d

    .line 57
    .line 58
    if-ne v0, v2, :cond_6

    .line 59
    .line 60
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 65
    move-result-object v0

    .line 66
    throw v0

    .line 67
    .line 68
    :cond_7
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    sget v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 71
    .line 72
    const/16 v4, 0x22

    .line 73
    .line 74
    if-ge v2, v4, :cond_c

    .line 75
    .line 76
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 77
    .line 78
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 79
    .line 80
    if-nez v2, :cond_8

    .line 81
    .line 82
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    check-cast v2, [C

    .line 91
    .line 92
    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 93
    .line 94
    :cond_8
    if-eqz v2, :cond_9

    .line 95
    array-length v3, v2

    .line 96
    .line 97
    if-ge v3, v1, :cond_a

    .line 98
    .line 99
    :cond_9
    new-array v2, v1, [C

    .line 100
    .line 101
    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 102
    :cond_a
    const/4 v3, 0x0

    .line 103
    move v4, v3

    .line 104
    .line 105
    :goto_1
    if-ge v4, v1, :cond_b

    .line 106
    .line 107
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 108
    .line 109
    add-int v6, v0, v4

    .line 110
    .line 111
    aget-byte v5, v5, v6

    .line 112
    .line 113
    and-int/lit16 v5, v5, 0xff

    .line 114
    int-to-char v5, v5

    .line 115
    .line 116
    aput-char v5, v2, v4

    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_b
    new-instance v0, Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 125
    return-object v0

    .line 126
    .line 127
    :cond_c
    :goto_2
    new-instance v2, Ljava/lang/String;

    .line 128
    .line 129
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 130
    .line 131
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 132
    .line 133
    .line 134
    invoke-direct {v2, v3, v4, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 135
    return-object v2
.end method

.method public final getStringLength()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 9
    .line 10
    const/16 v1, 0x49

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    const/16 v2, 0x78

    .line 15
    .line 16
    if-ge v0, v2, :cond_0

    .line 17
    sub-int/2addr v0, v1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method public getType()B
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    return v0
.end method

.method public isArray()Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-lt v0, v2, :cond_0

    .line 9
    return v3

    .line 10
    .line 11
    :cond_0
    aget-byte v0, v1, v0

    .line 12
    .line 13
    const/16 v1, -0x6c

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, -0x5c

    .line 18
    .line 19
    if-gt v0, v1, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_1
    return v3
.end method

.method public isBinary()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v1, -0x6f

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public isEnd()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

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

.method public isInt()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v1, -0x46

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x48

    .line 13
    .line 14
    if-le v0, v1, :cond_2

    .line 15
    .line 16
    :cond_0
    const/16 v1, -0x54

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, -0x53

    .line 21
    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/16 v1, -0x55

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 31
    return v0
.end method

.method public isNull()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v1, -0x51

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public isNumber()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v1, -0x4e

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x48

    .line 13
    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public isObject()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 9
    .line 10
    aget-byte v0, v1, v0

    .line 11
    .line 12
    const/16 v1, -0x5a

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public isReference()Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    aget-byte v0, v1, v0

    .line 10
    .line 11
    const/16 v1, -0x6d

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isString()Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    aget-byte v0, v1, v0

    .line 10
    .line 11
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 12
    .line 13
    const/16 v1, 0x49

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public mark()Lcom/alibaba/fastjson2/JSONReader$SavePoint;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$SavePoint;

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader$SavePoint;-><init>(II)V

    .line 10
    return-object v0
.end method

.method public next()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    return-void
.end method

.method public nextIfArrayEnd()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public nextIfArrayStart()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public nextIfComma()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public nextIfInfinity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfMatch(B)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 3
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public nextIfMatch(C)Z
    .locals 1

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchIdent(CCC)Z
    .locals 0

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchIdent(CCCC)Z
    .locals 0

    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchIdent(CCCCC)Z
    .locals 0

    .line 3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchIdent(CCCCCC)Z
    .locals 0

    .line 4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchTypedAny()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x6e

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    add-int/2addr v1, v0

    .line 13
    .line 14
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public nextIfName4Match10(J)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0xb

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    add-long/2addr v3, v5

    .line 17
    .line 18
    const-wide/16 v5, 0x7

    .line 19
    sub-long/2addr v3, v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 23
    move-result-wide v2

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v4, 0xffffffffffffffL

    .line 29
    and-long/2addr v2, v4

    .line 30
    .line 31
    cmp-long p1, v2, p1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public nextIfName4Match11(J)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0xc

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    add-long/2addr v3, v5

    .line 17
    .line 18
    const-wide/16 v5, 0x8

    .line 19
    sub-long/2addr v3, v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 23
    move-result-wide v2

    .line 24
    .line 25
    cmp-long p1, v2, p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public nextIfName4Match12(JB)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xd

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v6, v2

    .line 16
    add-long/2addr v4, v6

    .line 17
    .line 18
    const-wide/16 v6, 0x9

    .line 19
    sub-long/2addr v4, v6

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 23
    move-result-wide v3

    .line 24
    .line 25
    cmp-long p1, v3, p1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0xc

    .line 30
    .line 31
    aget-byte p1, v0, v1

    .line 32
    .line 33
    if-eq p1, p3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public nextIfName4Match13(JI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xe

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0xf

    .line 9
    .line 10
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 11
    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 17
    int-to-long v5, v2

    .line 18
    .line 19
    add-long v7, v3, v5

    .line 20
    .line 21
    const-wide/16 v9, 0xa

    .line 22
    sub-long/2addr v7, v9

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v7

    .line 27
    .line 28
    cmp-long p1, v7, p1

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    add-long/2addr v3, v5

    .line 32
    .line 33
    const-wide/16 p1, 0x2

    .line 34
    sub-long/2addr v3, p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eq p1, p3, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 47
    return p1
.end method

.method public nextIfName4Match14(JI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0xf

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0xb

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    add-long/2addr v3, v5

    .line 30
    .line 31
    const-wide/16 p1, 0x3

    .line 32
    sub-long/2addr v3, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    const p2, 0xffffff

    .line 40
    and-int/2addr p1, p2

    .line 41
    .line 42
    if-eq p1, p3, :cond_0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 46
    const/4 p1, 0x1

    .line 47
    return p1

    .line 48
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 49
    return p1
.end method

.method public nextIfName4Match15(JI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x10

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0xc

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    add-long/2addr v3, v5

    .line 30
    .line 31
    const-wide/16 p1, 0x4

    .line 32
    sub-long/2addr v3, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eq p1, p3, :cond_0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 45
    return p1
.end method

.method public nextIfName4Match16(JIB)Z
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x11

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v6, v2

    .line 16
    .line 17
    add-long v8, v4, v6

    .line 18
    .line 19
    const-wide/16 v10, 0xd

    .line 20
    sub-long/2addr v8, v10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v8

    .line 25
    .line 26
    cmp-long p1, v8, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    add-long/2addr v4, v6

    .line 30
    .line 31
    const-wide/16 p1, 0x5

    .line 32
    sub-long/2addr v4, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-ne p1, p3, :cond_1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x10

    .line 41
    .line 42
    aget-byte p1, v0, v1

    .line 43
    .line 44
    move/from16 p2, p4

    .line 45
    .line 46
    if-eq p1, p2, :cond_0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method public nextIfName4Match17(JJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x12

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x13

    .line 9
    .line 10
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 11
    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 17
    int-to-long v5, v2

    .line 18
    .line 19
    add-long v7, v3, v5

    .line 20
    .line 21
    const-wide/16 v9, 0xe

    .line 22
    sub-long/2addr v7, v9

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 26
    move-result-wide v7

    .line 27
    .line 28
    cmp-long p1, v7, p1

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    add-long/2addr v3, v5

    .line 32
    .line 33
    const-wide/16 p1, 0x6

    .line 34
    sub-long/2addr v3, p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v0, 0xffffffffffffL

    .line 44
    and-long/2addr p1, v0

    .line 45
    .line 46
    cmp-long p1, p1, p3

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public nextIfName4Match18(JJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x13

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0xf

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    add-long/2addr v3, v5

    .line 30
    .line 31
    const-wide/16 p1, 0x7

    .line 32
    sub-long/2addr v3, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 36
    move-result-wide p1

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const-wide v2, 0xffffffffffffffL

    .line 42
    and-long/2addr p1, v2

    .line 43
    .line 44
    cmp-long p1, p1, p3

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method public nextIfName4Match19(JJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x14

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x10

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    add-long/2addr v3, v5

    .line 30
    .line 31
    const-wide/16 p1, 0x8

    .line 32
    sub-long/2addr v3, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 36
    move-result-wide p1

    .line 37
    .line 38
    cmp-long p1, p1, p3

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 47
    return p1
.end method

.method public nextIfName4Match2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfName4Match20(JJB)Z
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x15

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v6, v2

    .line 16
    .line 17
    add-long v8, v4, v6

    .line 18
    .line 19
    const-wide/16 v10, 0x11

    .line 20
    sub-long/2addr v8, v10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v8

    .line 25
    .line 26
    cmp-long p1, v8, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    add-long/2addr v4, v6

    .line 30
    .line 31
    const-wide/16 p1, 0x9

    .line 32
    sub-long/2addr v4, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 36
    move-result-wide p1

    .line 37
    .line 38
    cmp-long p1, p1, p3

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x14

    .line 43
    .line 44
    aget-byte p1, v0, v1

    .line 45
    .line 46
    move/from16 p2, p5

    .line 47
    .line 48
    if-eq p1, p2, :cond_0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public nextIfName4Match21(JJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x16

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x12

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0xa

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    add-long/2addr v3, v5

    .line 43
    .line 44
    const-wide/16 p1, 0x2

    .line 45
    sub-long/2addr v3, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 49
    move-result p1

    .line 50
    .line 51
    move/from16 p2, p5

    .line 52
    .line 53
    if-eq p1, p2, :cond_0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 57
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 60
    return p1
.end method

.method public nextIfName4Match22(JJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x17

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x13

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0xb

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    add-long/2addr v3, v5

    .line 43
    .line 44
    const-wide/16 p1, 0x3

    .line 45
    sub-long/2addr v3, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    move-result p1

    .line 50
    .line 51
    .line 52
    const p2, 0xffffff

    .line 53
    and-int/2addr p1, p2

    .line 54
    .line 55
    move/from16 p2, p5

    .line 56
    .line 57
    if-eq p1, p2, :cond_0

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 64
    return p1
.end method

.method public nextIfName4Match23(JJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x18

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x14

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0xc

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    add-long/2addr v3, v5

    .line 43
    .line 44
    const-wide/16 p1, 0x4

    .line 45
    sub-long/2addr v3, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    move-result p1

    .line 50
    .line 51
    move/from16 p2, p5

    .line 52
    .line 53
    if-eq p1, p2, :cond_0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 57
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 60
    return p1
.end method

.method public nextIfName4Match24(JJIB)Z
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x19

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v6, v2

    .line 16
    .line 17
    add-long v8, v4, v6

    .line 18
    .line 19
    const-wide/16 v10, 0x15

    .line 20
    sub-long/2addr v8, v10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v8

    .line 25
    .line 26
    cmp-long p1, v8, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v4, v6

    .line 31
    .line 32
    const-wide/16 v8, 0xd

    .line 33
    sub-long/2addr p1, v8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    add-long/2addr v4, v6

    .line 43
    .line 44
    const-wide/16 p1, 0x5

    .line 45
    sub-long/2addr v4, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    move-result p1

    .line 50
    .line 51
    move/from16 p2, p5

    .line 52
    .line 53
    if-ne p1, p2, :cond_1

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x18

    .line 56
    .line 57
    aget-byte p1, v0, v1

    .line 58
    .line 59
    move/from16 p2, p6

    .line 60
    .line 61
    if-eq p1, p2, :cond_0

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 68
    return p1
.end method

.method public nextIfName4Match25(JJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1a

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x16

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0xe

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    add-long/2addr v3, v5

    .line 43
    .line 44
    const-wide/16 p1, 0x6

    .line 45
    sub-long/2addr v3, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 49
    move-result-wide p1

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide p3, 0xffffffffffffL

    .line 55
    and-long/2addr p1, p3

    .line 56
    .line 57
    cmp-long p1, p1, p5

    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 63
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 66
    return p1
.end method

.method public nextIfName4Match26(JJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1b

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x17

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0xf

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    add-long/2addr v3, v5

    .line 43
    .line 44
    const-wide/16 p1, 0x7

    .line 45
    sub-long/2addr v3, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 49
    move-result-wide p1

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide p3, 0xffffffffffffffL

    .line 55
    and-long/2addr p1, p3

    .line 56
    .line 57
    cmp-long p1, p1, p5

    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 63
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 66
    return p1
.end method

.method public nextIfName4Match27(JJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1c

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x18

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x10

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    add-long/2addr v3, v5

    .line 43
    .line 44
    const-wide/16 p1, 0x8

    .line 45
    sub-long/2addr v3, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 49
    move-result-wide p1

    .line 50
    .line 51
    cmp-long p1, p1, p5

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 57
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 60
    return p1
.end method

.method public nextIfName4Match28(JJJB)Z
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1d

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v6, v2

    .line 16
    .line 17
    add-long v8, v4, v6

    .line 18
    .line 19
    const-wide/16 v10, 0x19

    .line 20
    sub-long/2addr v8, v10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v8

    .line 25
    .line 26
    cmp-long p1, v8, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v4, v6

    .line 31
    .line 32
    const-wide/16 v8, 0x11

    .line 33
    sub-long/2addr p1, v8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    add-long/2addr v4, v6

    .line 43
    .line 44
    const-wide/16 p1, 0x9

    .line 45
    sub-long/2addr v4, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 49
    move-result-wide p1

    .line 50
    .line 51
    cmp-long p1, p1, p5

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1c

    .line 56
    .line 57
    aget-byte p1, v0, v1

    .line 58
    .line 59
    move/from16 p2, p7

    .line 60
    .line 61
    if-eq p1, p2, :cond_0

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 68
    return p1
.end method

.method public nextIfName4Match29(JJJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1e

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x1a

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x12

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0xa

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    add-long/2addr v3, v5

    .line 56
    .line 57
    const-wide/16 p1, 0x2

    .line 58
    sub-long/2addr v3, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 62
    move-result p1

    .line 63
    .line 64
    move/from16 p2, p7

    .line 65
    .line 66
    if-eq p1, p2, :cond_0

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 70
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 73
    return p1
.end method

.method public nextIfName4Match3()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x4

    .line 5
    .line 6
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0
.end method

.method public nextIfName4Match30(JJJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1f

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x1b

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x13

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0xb

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    add-long/2addr v3, v5

    .line 56
    .line 57
    const-wide/16 p1, 0x3

    .line 58
    sub-long/2addr v3, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 62
    move-result p1

    .line 63
    .line 64
    .line 65
    const p2, 0xffffff

    .line 66
    and-int/2addr p1, p2

    .line 67
    .line 68
    move/from16 p2, p7

    .line 69
    .line 70
    if-eq p1, p2, :cond_0

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 77
    return p1
.end method

.method public nextIfName4Match31(JJJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x20

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x1c

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x14

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0xc

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    add-long/2addr v3, v5

    .line 56
    .line 57
    const-wide/16 p1, 0x4

    .line 58
    sub-long/2addr v3, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 62
    move-result p1

    .line 63
    .line 64
    move/from16 p2, p7

    .line 65
    .line 66
    if-eq p1, p2, :cond_0

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 70
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 73
    return p1
.end method

.method public nextIfName4Match32(JJJIB)Z
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x21

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v6, v2

    .line 16
    .line 17
    add-long v8, v4, v6

    .line 18
    .line 19
    const-wide/16 v10, 0x1d

    .line 20
    sub-long/2addr v8, v10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v8

    .line 25
    .line 26
    cmp-long p1, v8, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v4, v6

    .line 31
    .line 32
    const-wide/16 v8, 0x15

    .line 33
    sub-long/2addr p1, v8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v4, v6

    .line 44
    .line 45
    const-wide/16 v8, 0xd

    .line 46
    sub-long/2addr p1, v8

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    add-long/2addr v4, v6

    .line 56
    .line 57
    const-wide/16 p1, 0x5

    .line 58
    sub-long/2addr v4, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 62
    move-result p1

    .line 63
    .line 64
    move/from16 p2, p7

    .line 65
    .line 66
    if-ne p1, p2, :cond_1

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x20

    .line 69
    .line 70
    aget-byte p1, v0, v1

    .line 71
    .line 72
    move/from16 p2, p8

    .line 73
    .line 74
    if-eq p1, p2, :cond_0

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 78
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 81
    return p1
.end method

.method public nextIfName4Match33(JJJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x22

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x1e

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x16

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0xe

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    add-long/2addr v3, v5

    .line 56
    .line 57
    const-wide/16 p1, 0x6

    .line 58
    sub-long/2addr v3, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 62
    move-result-wide p1

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide p3, 0xffffffffffffL

    .line 68
    and-long/2addr p1, p3

    .line 69
    .line 70
    cmp-long p1, p1, p7

    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 76
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 79
    return p1
.end method

.method public nextIfName4Match34(JJJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x23

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x1f

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x17

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0xf

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    add-long/2addr v3, v5

    .line 56
    .line 57
    const-wide/16 p1, 0x7

    .line 58
    sub-long/2addr v3, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 62
    move-result-wide p1

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide p3, 0xffffffffffffffL

    .line 68
    and-long/2addr p1, p3

    .line 69
    .line 70
    cmp-long p1, p1, p7

    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 76
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 79
    return p1
.end method

.method public nextIfName4Match35(JJJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x24

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x20

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x18

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0x10

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    add-long/2addr v3, v5

    .line 56
    .line 57
    const-wide/16 p1, 0x8

    .line 58
    sub-long/2addr v3, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 62
    move-result-wide p1

    .line 63
    .line 64
    cmp-long p1, p1, p7

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 70
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 73
    return p1
.end method

.method public nextIfName4Match36(JJJJB)Z
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x25

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v6, v2

    .line 16
    .line 17
    add-long v8, v4, v6

    .line 18
    .line 19
    const-wide/16 v10, 0x21

    .line 20
    sub-long/2addr v8, v10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v8

    .line 25
    .line 26
    cmp-long p1, v8, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v4, v6

    .line 31
    .line 32
    const-wide/16 v8, 0x19

    .line 33
    sub-long/2addr p1, v8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v4, v6

    .line 44
    .line 45
    const-wide/16 v8, 0x11

    .line 46
    sub-long/2addr p1, v8

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    add-long/2addr v4, v6

    .line 56
    .line 57
    const-wide/16 p1, 0x9

    .line 58
    sub-long/2addr v4, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 62
    move-result-wide p1

    .line 63
    .line 64
    cmp-long p1, p1, p7

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x24

    .line 69
    .line 70
    aget-byte p1, v0, v1

    .line 71
    .line 72
    move/from16 p2, p9

    .line 73
    .line 74
    if-eq p1, p2, :cond_0

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 78
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 81
    return p1
.end method

.method public nextIfName4Match37(JJJJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x26

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x22

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x1a

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0x12

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    add-long p1, v3, v5

    .line 57
    .line 58
    const-wide/16 p3, 0xa

    .line 59
    sub-long/2addr p1, p3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    cmp-long p1, p1, p7

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    add-long/2addr v3, v5

    .line 69
    .line 70
    const-wide/16 p1, 0x2

    .line 71
    sub-long/2addr v3, p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 75
    move-result p1

    .line 76
    .line 77
    move/from16 p2, p9

    .line 78
    .line 79
    if-eq p1, p2, :cond_0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 83
    const/4 p1, 0x1

    .line 84
    return p1

    .line 85
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 86
    return p1
.end method

.method public nextIfName4Match38(JJJJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x27

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x23

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x1b

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0x13

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    add-long p1, v3, v5

    .line 57
    .line 58
    const-wide/16 p3, 0xb

    .line 59
    sub-long/2addr p1, p3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    cmp-long p1, p1, p7

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    add-long/2addr v3, v5

    .line 69
    .line 70
    const-wide/16 p1, 0x3

    .line 71
    sub-long/2addr v3, p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 75
    move-result p1

    .line 76
    .line 77
    .line 78
    const p2, 0xffffff

    .line 79
    and-int/2addr p1, p2

    .line 80
    .line 81
    move/from16 p2, p9

    .line 82
    .line 83
    if-eq p1, p2, :cond_0

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 87
    const/4 p1, 0x1

    .line 88
    return p1

    .line 89
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 90
    return p1
.end method

.method public nextIfName4Match39(JJJJI)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x28

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x24

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x1c

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0x14

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    add-long p1, v3, v5

    .line 57
    .line 58
    const-wide/16 p3, 0xc

    .line 59
    sub-long/2addr p1, p3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    cmp-long p1, p1, p7

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    add-long/2addr v3, v5

    .line 69
    .line 70
    const-wide/16 p1, 0x4

    .line 71
    sub-long/2addr v3, p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 75
    move-result p1

    .line 76
    .line 77
    move/from16 p2, p9

    .line 78
    .line 79
    if-eq p1, p2, :cond_0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 83
    const/4 p1, 0x1

    .line 84
    return p1

    .line 85
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 86
    return p1
.end method

.method public nextIfName4Match4(B)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x5

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-gt v2, v3, :cond_1

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x4

    .line 13
    .line 14
    aget-byte v0, v0, v1

    .line 15
    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public nextIfName4Match40(JJJJIB)Z
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x29

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v6, v2

    .line 16
    .line 17
    add-long v8, v4, v6

    .line 18
    .line 19
    const-wide/16 v10, 0x25

    .line 20
    sub-long/2addr v8, v10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v8

    .line 25
    .line 26
    cmp-long p1, v8, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v4, v6

    .line 31
    .line 32
    const-wide/16 v8, 0x1d

    .line 33
    sub-long/2addr p1, v8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v4, v6

    .line 44
    .line 45
    const-wide/16 v8, 0x15

    .line 46
    sub-long/2addr p1, v8

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    add-long p1, v4, v6

    .line 57
    .line 58
    const-wide/16 v8, 0xd

    .line 59
    sub-long/2addr p1, v8

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    cmp-long p1, p1, p7

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    add-long/2addr v4, v6

    .line 69
    .line 70
    const-wide/16 p1, 0x5

    .line 71
    sub-long/2addr v4, p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 75
    move-result p1

    .line 76
    .line 77
    move/from16 p2, p9

    .line 78
    .line 79
    if-ne p1, p2, :cond_1

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x28

    .line 82
    .line 83
    aget-byte p1, v0, v1

    .line 84
    .line 85
    move/from16 p2, p10

    .line 86
    .line 87
    if-eq p1, p2, :cond_0

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 91
    const/4 p1, 0x1

    .line 92
    return p1

    .line 93
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 94
    return p1
.end method

.method public nextIfName4Match41(JJJJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x2a

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x26

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x1e

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0x16

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    add-long p1, v3, v5

    .line 57
    .line 58
    const-wide/16 p3, 0xe

    .line 59
    sub-long/2addr p1, p3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    cmp-long p1, p1, p7

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    add-long/2addr v3, v5

    .line 69
    .line 70
    const-wide/16 p1, 0x6

    .line 71
    sub-long/2addr v3, p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 75
    move-result-wide p1

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    const-wide p3, 0xffffffffffffL

    .line 81
    and-long/2addr p1, p3

    .line 82
    .line 83
    cmp-long p1, p1, p9

    .line 84
    .line 85
    if-eqz p1, :cond_0

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    const/4 p1, 0x1

    .line 90
    return p1

    .line 91
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 92
    return p1
.end method

.method public nextIfName4Match42(JJJJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x2b

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x27

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x1f

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0x17

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    add-long p1, v3, v5

    .line 57
    .line 58
    const-wide/16 p3, 0xf

    .line 59
    sub-long/2addr p1, p3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    cmp-long p1, p1, p7

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    add-long/2addr v3, v5

    .line 69
    .line 70
    const-wide/16 p1, 0x7

    .line 71
    sub-long/2addr v3, p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 75
    move-result-wide p1

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    const-wide p3, 0xffffffffffffffL

    .line 81
    and-long/2addr p1, p3

    .line 82
    .line 83
    cmp-long p1, p1, p9

    .line 84
    .line 85
    if-eqz p1, :cond_0

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    const/4 p1, 0x1

    .line 90
    return p1

    .line 91
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 92
    return p1
.end method

.method public nextIfName4Match43(JJJJJ)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x2c

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    .line 17
    add-long v7, v3, v5

    .line 18
    .line 19
    const-wide/16 v9, 0x28

    .line 20
    sub-long/2addr v7, v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 24
    move-result-wide v7

    .line 25
    .line 26
    cmp-long p1, v7, p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    add-long p1, v3, v5

    .line 31
    .line 32
    const-wide/16 v7, 0x20

    .line 33
    sub-long/2addr p1, v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    cmp-long p1, p1, p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    add-long p1, v3, v5

    .line 44
    .line 45
    const-wide/16 p3, 0x18

    .line 46
    sub-long/2addr p1, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 50
    move-result-wide p1

    .line 51
    .line 52
    cmp-long p1, p1, p5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    add-long p1, v3, v5

    .line 57
    .line 58
    const-wide/16 p3, 0x10

    .line 59
    sub-long/2addr p1, p3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    cmp-long p1, p1, p7

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    add-long/2addr v3, v5

    .line 69
    .line 70
    const-wide/16 p1, 0x8

    .line 71
    sub-long/2addr v3, p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 75
    move-result-wide p1

    .line 76
    .line 77
    cmp-long p1, p1, p9

    .line 78
    .line 79
    if-eqz p1, :cond_0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 83
    const/4 p1, 0x1

    .line 84
    return p1

    .line 85
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 86
    return p1
.end method

.method public nextIfName4Match5(I)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x6

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-gt v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    add-long/2addr v3, v5

    .line 17
    .line 18
    const-wide/16 v5, 0x2

    .line 19
    sub-long/2addr v3, v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eq v0, p1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public nextIfName4Match6(I)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x7

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-gt v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    add-long/2addr v3, v5

    .line 17
    .line 18
    const-wide/16 v5, 0x3

    .line 19
    sub-long/2addr v3, v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    const v2, 0xffffff

    .line 27
    and-int/2addr v0, v2

    .line 28
    .line 29
    if-eq v0, p1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public nextIfName4Match7(I)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x8

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-gt v1, v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 15
    int-to-long v5, v1

    .line 16
    add-long/2addr v3, v5

    .line 17
    .line 18
    const-wide/16 v5, 0x4

    .line 19
    sub-long/2addr v3, v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eq v0, p1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public nextIfName4Match8(IB)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x9

    .line 7
    .line 8
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

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
    if-ne v3, p1, :cond_1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x8

    .line 28
    .line 29
    aget-byte p1, v0, v1

    .line 30
    .line 31
    if-eq p1, p2, :cond_0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public nextIfName4Match9(J)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0xa

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0xb

    .line 9
    .line 10
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 11
    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    sget-wide v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 17
    int-to-long v5, v2

    .line 18
    add-long/2addr v3, v5

    .line 19
    .line 20
    const-wide/16 v5, 0x6

    .line 21
    sub-long/2addr v3, v5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide v3, 0xffffffffffffL

    .line 31
    and-long/2addr v0, v3

    .line 32
    .line 33
    cmp-long p1, v0, p1

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public nextIfNull()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x51

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    add-int/2addr v1, v0

    .line 13
    .line 14
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public nextIfNullOrEmptyString()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x51

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    add-int/2addr v1, v3

    .line 13
    .line 14
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    return v3

    .line 16
    .line 17
    :cond_0
    const/16 v2, 0x49

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    add-int/2addr v1, v3

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return v3
.end method

.method public nextIfObjectEnd()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x5b

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    add-int/2addr v1, v0

    .line 15
    .line 16
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    return v0
.end method

.method public nextIfObjectStart()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x5a

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    add-int/2addr v1, v0

    .line 15
    .line 16
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    return v0
.end method

.method public nextIfSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    .line 6
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    .line 3
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/util/Map;J)V
    .locals 5

    .line 7
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p2, p2, p3

    const/16 v0, -0x5a

    if-ne p2, v0, :cond_a

    add-int/lit8 p3, p3, 0x1

    .line 8
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p2, p2, p3

    const/16 v1, -0x5b

    if-ne p2, v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 10
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_0
    const/16 p3, 0x49

    if-lt p2, p3, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object p2

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object p3

    .line 15
    const-string v1, ".."

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {p1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    const/4 p3, 0x0

    .line 18
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v1, v2

    if-lt v1, p3, :cond_4

    const/16 p3, 0x7e

    if-gt v1, p3, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    const/16 p3, -0x10

    if-lt v1, p3, :cond_5

    const/16 p3, 0x2f

    if-gt v1, p3, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 21
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    :cond_5
    const/16 p3, -0x4f

    if-ne v1, p3, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 23
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    const/16 p3, -0x50

    if-ne v1, p3, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 25
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 26
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_7
    if-ne v1, v0, :cond_8

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object p3

    goto :goto_2

    .line 28
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object p3

    :goto_2
    if-nez p3, :cond_9

    .line 29
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    goto/16 :goto_0

    .line 30
    :cond_9
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 31
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "object not support input "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAny()Ljava/lang/Object;
    .locals 26

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 7
    array-length v3, v2

    .line 8
    .line 9
    const-string v4, "/"

    .line 10
    .line 11
    if-ge v0, v3, :cond_41

    .line 12
    .line 13
    add-int/lit8 v3, v0, 0x1

    .line 14
    .line 15
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 16
    .line 17
    aget-byte v5, v2, v0

    .line 18
    .line 19
    iput-byte v5, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 20
    .line 21
    const/16 v6, 0x48

    .line 22
    .line 23
    if-eq v5, v6, :cond_40

    .line 24
    .line 25
    const-string v6, ", offset "

    .line 26
    const/4 v7, 0x0

    .line 27
    .line 28
    const-wide/16 v8, 0x0

    .line 29
    .line 30
    .line 31
    packed-switch v5, :pswitch_data_0

    .line 32
    .line 33
    const-string v10, ".."

    .line 34
    .line 35
    const/16 v11, 0x2f

    .line 36
    .line 37
    const/16 v12, -0x10

    .line 38
    .line 39
    const/16 v13, 0x49

    .line 40
    const/4 v14, 0x0

    .line 41
    .line 42
    .line 43
    packed-switch v5, :pswitch_data_1

    .line 44
    .line 45
    .line 46
    packed-switch v5, :pswitch_data_2

    .line 47
    .line 48
    if-lt v5, v12, :cond_0

    .line 49
    .line 50
    if-gt v5, v11, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    .line 57
    :cond_0
    const/16 v4, 0x30

    .line 58
    .line 59
    if-lt v5, v4, :cond_1

    .line 60
    .line 61
    const/16 v4, 0x3f

    .line 62
    .line 63
    if-gt v5, v4, :cond_1

    .line 64
    .line 65
    add-int/lit8 v5, v5, -0x38

    .line 66
    .line 67
    shl-int/lit8 v4, v5, 0x8

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x2

    .line 70
    .line 71
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 72
    .line 73
    aget-byte v0, v2, v3

    .line 74
    .line 75
    and-int/lit16 v0, v0, 0xff

    .line 76
    add-int/2addr v4, v0

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    .line 83
    :cond_1
    const/16 v4, 0x40

    .line 84
    .line 85
    if-lt v5, v4, :cond_2

    .line 86
    .line 87
    const/16 v4, 0x47

    .line 88
    .line 89
    if-gt v5, v4, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3, v5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 93
    move-result v0

    .line 94
    .line 95
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x2

    .line 98
    .line 99
    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    .line 106
    :cond_2
    const/16 v4, -0x28

    .line 107
    .line 108
    if-lt v5, v4, :cond_3

    .line 109
    .line 110
    const/16 v6, -0x11

    .line 111
    .line 112
    if-gt v5, v6, :cond_3

    .line 113
    sub-int/2addr v5, v4

    .line 114
    int-to-long v2, v5

    .line 115
    .line 116
    const-wide/16 v4, -0x8

    .line 117
    add-long/2addr v2, v4

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    .line 124
    :cond_3
    const/16 v4, -0x38

    .line 125
    .line 126
    if-lt v5, v4, :cond_4

    .line 127
    .line 128
    const/16 v4, -0x29

    .line 129
    .line 130
    if-gt v5, v4, :cond_4

    .line 131
    .line 132
    add-int/lit8 v5, v5, 0x30

    .line 133
    .line 134
    shl-int/lit8 v4, v5, 0x8

    .line 135
    int-to-long v4, v4

    .line 136
    .line 137
    add-int/lit8 v0, v0, 0x2

    .line 138
    .line 139
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 140
    .line 141
    aget-byte v0, v2, v3

    .line 142
    .line 143
    and-int/lit16 v0, v0, 0xff

    .line 144
    int-to-long v2, v0

    .line 145
    add-long/2addr v4, v2

    .line 146
    .line 147
    .line 148
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    move-result-object v0

    .line 150
    return-object v0

    .line 151
    .line 152
    :cond_4
    const/16 v4, -0x40

    .line 153
    .line 154
    if-lt v5, v4, :cond_5

    .line 155
    .line 156
    const/16 v4, -0x39

    .line 157
    .line 158
    if-gt v5, v4, :cond_5

    .line 159
    .line 160
    add-int/lit8 v5, v5, 0x3c

    .line 161
    .line 162
    shl-int/lit8 v4, v5, 0x10

    .line 163
    .line 164
    add-int/lit8 v5, v0, 0x2

    .line 165
    .line 166
    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 167
    .line 168
    aget-byte v3, v2, v3

    .line 169
    .line 170
    and-int/lit16 v3, v3, 0xff

    .line 171
    .line 172
    shl-int/lit8 v3, v3, 0x8

    .line 173
    add-int/2addr v4, v3

    .line 174
    .line 175
    add-int/lit8 v0, v0, 0x3

    .line 176
    .line 177
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 178
    .line 179
    aget-byte v0, v2, v5

    .line 180
    .line 181
    and-int/lit16 v0, v0, 0xff

    .line 182
    add-int/2addr v4, v0

    .line 183
    int-to-long v2, v4

    .line 184
    .line 185
    .line 186
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    move-result-object v0

    .line 188
    return-object v0

    .line 189
    .line 190
    :cond_5
    const/16 v0, -0x6c

    .line 191
    .line 192
    if-lt v5, v0, :cond_e

    .line 193
    .line 194
    const/16 v2, -0x5c

    .line 195
    .line 196
    if-gt v5, v2, :cond_e

    .line 197
    .line 198
    if-ne v5, v2, :cond_6

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 202
    move-result v0

    .line 203
    goto :goto_0

    .line 204
    .line 205
    :cond_6
    add-int/lit8 v0, v5, 0x6c

    .line 206
    .line 207
    :goto_0
    if-nez v0, :cond_9

    .line 208
    .line 209
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 210
    .line 211
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 212
    .line 213
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 214
    .line 215
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 216
    and-long/2addr v2, v4

    .line 217
    .line 218
    cmp-long v2, v2, v8

    .line 219
    .line 220
    if-eqz v2, :cond_7

    .line 221
    .line 222
    new-instance v0, Ljava/util/ArrayList;

    .line 223
    .line 224
    .line 225
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    return-object v0

    .line 227
    .line 228
    :cond_7
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 229
    .line 230
    if-eqz v0, :cond_8

    .line 231
    .line 232
    .line 233
    invoke-interface {v0}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 234
    move-result-object v0

    .line 235
    return-object v0

    .line 236
    .line 237
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    .line 238
    .line 239
    .line 240
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 241
    return-object v0

    .line 242
    .line 243
    :cond_9
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 244
    .line 245
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 246
    .line 247
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 248
    .line 249
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 250
    and-long/2addr v2, v4

    .line 251
    .line 252
    cmp-long v2, v2, v8

    .line 253
    .line 254
    if-eqz v2, :cond_a

    .line 255
    .line 256
    new-instance v2, Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    goto :goto_1

    .line 261
    .line 262
    :cond_a
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 263
    .line 264
    .line 265
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 266
    .line 267
    :goto_1
    if-ge v14, v0, :cond_d

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    .line 271
    move-result v3

    .line 272
    .line 273
    if-eqz v3, :cond_c

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    .line 277
    move-result-object v3

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result v4

    .line 282
    .line 283
    if-eqz v4, :cond_b

    .line 284
    .line 285
    .line 286
    invoke-interface {v2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    goto :goto_2

    .line 288
    .line 289
    .line 290
    :cond_b
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 294
    move-result-object v3

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2, v14, v3}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    .line 298
    goto :goto_2

    .line 299
    .line 300
    .line 301
    :cond_c
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 302
    move-result-object v3

    .line 303
    .line 304
    .line 305
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 308
    goto :goto_1

    .line 309
    :cond_d
    return-object v2

    .line 310
    .line 311
    :cond_e
    if-lt v5, v13, :cond_13

    .line 312
    .line 313
    const/16 v0, 0x79

    .line 314
    .line 315
    if-gt v5, v0, :cond_13

    .line 316
    .line 317
    if-ne v5, v0, :cond_f

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 321
    move-result v0

    .line 322
    goto :goto_3

    .line 323
    .line 324
    :cond_f
    add-int/lit8 v0, v5, -0x49

    .line 325
    .line 326
    :goto_3
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 327
    .line 328
    if-gez v0, :cond_10

    .line 329
    .line 330
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 331
    neg-int v0, v0

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 335
    move-result-object v0

    .line 336
    return-object v0

    .line 337
    .line 338
    :cond_10
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    .line 344
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 345
    .line 346
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 347
    add-int/2addr v2, v3

    .line 348
    .line 349
    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 350
    .line 351
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 352
    .line 353
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 354
    .line 355
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 356
    .line 357
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 358
    and-long/2addr v2, v4

    .line 359
    .line 360
    cmp-long v2, v2, v8

    .line 361
    .line 362
    if-eqz v2, :cond_11

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 366
    move-result-object v0

    .line 367
    .line 368
    :cond_11
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 369
    .line 370
    if-nez v2, :cond_12

    .line 371
    .line 372
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 373
    .line 374
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 375
    .line 376
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 377
    .line 378
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 379
    and-long/2addr v2, v4

    .line 380
    .line 381
    cmp-long v2, v2, v8

    .line 382
    .line 383
    if-eqz v2, :cond_12

    .line 384
    return-object v7

    .line 385
    :cond_12
    return-object v0

    .line 386
    .line 387
    :cond_13
    const/16 v0, 0x7f

    .line 388
    .line 389
    if-ne v5, v0, :cond_15

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 393
    move-result v0

    .line 394
    .line 395
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 396
    .line 397
    if-gez v0, :cond_14

    .line 398
    .line 399
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 400
    neg-int v0, v0

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 404
    move-result-object v0

    .line 405
    return-object v0

    .line 406
    .line 407
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 408
    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    const-string v3, "not support symbol : "

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object v2

    .line 427
    .line 428
    .line 429
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 430
    throw v0

    .line 431
    .line 432
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 433
    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    const-string v3, "not support type : "

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    iget-byte v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    .line 448
    move-result-object v3

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    move-result-object v2

    .line 456
    .line 457
    .line 458
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 459
    throw v0

    .line 460
    .line 461
    :pswitch_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 462
    .line 463
    if-nez v0, :cond_16

    .line 464
    .line 465
    const-string v0, "GB18030"

    .line 466
    .line 467
    .line 468
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 469
    move-result-object v0

    .line 470
    .line 471
    sput-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 472
    .line 473
    .line 474
    :cond_16
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 475
    move-result v0

    .line 476
    .line 477
    new-instance v2, Ljava/lang/String;

    .line 478
    .line 479
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 480
    .line 481
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 482
    .line 483
    sget-object v5, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 484
    .line 485
    .line 486
    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 487
    .line 488
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 489
    add-int/2addr v3, v0

    .line 490
    .line 491
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 492
    .line 493
    if-nez v0, :cond_17

    .line 494
    .line 495
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 496
    .line 497
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 498
    .line 499
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 500
    .line 501
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 502
    and-long/2addr v3, v5

    .line 503
    .line 504
    cmp-long v0, v3, v8

    .line 505
    .line 506
    if-eqz v0, :cond_17

    .line 507
    return-object v7

    .line 508
    :cond_17
    return-object v2

    .line 509
    .line 510
    .line 511
    :pswitch_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 512
    move-result v0

    .line 513
    .line 514
    new-instance v2, Ljava/lang/String;

    .line 515
    .line 516
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 517
    .line 518
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 519
    .line 520
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 521
    .line 522
    .line 523
    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 524
    .line 525
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 526
    add-int/2addr v3, v0

    .line 527
    .line 528
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 529
    .line 530
    if-nez v0, :cond_18

    .line 531
    .line 532
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 533
    .line 534
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 535
    .line 536
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 537
    .line 538
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 539
    and-long/2addr v3, v5

    .line 540
    .line 541
    cmp-long v0, v3, v8

    .line 542
    .line 543
    if-eqz v0, :cond_18

    .line 544
    return-object v7

    .line 545
    :cond_18
    return-object v2

    .line 546
    .line 547
    .line 548
    :pswitch_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 549
    move-result v0

    .line 550
    .line 551
    new-instance v2, Ljava/lang/String;

    .line 552
    .line 553
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 554
    .line 555
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 556
    .line 557
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 558
    .line 559
    .line 560
    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 561
    .line 562
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 563
    add-int/2addr v3, v0

    .line 564
    .line 565
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 566
    .line 567
    if-nez v0, :cond_19

    .line 568
    .line 569
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 570
    .line 571
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 572
    .line 573
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 574
    .line 575
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 576
    and-long/2addr v3, v5

    .line 577
    .line 578
    cmp-long v0, v3, v8

    .line 579
    .line 580
    if-eqz v0, :cond_19

    .line 581
    return-object v7

    .line 582
    :cond_19
    return-object v2

    .line 583
    .line 584
    .line 585
    :pswitch_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 586
    move-result v0

    .line 587
    .line 588
    new-instance v2, Ljava/lang/String;

    .line 589
    .line 590
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 591
    .line 592
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 593
    .line 594
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 595
    .line 596
    .line 597
    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 598
    .line 599
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 600
    add-int/2addr v3, v0

    .line 601
    .line 602
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 603
    .line 604
    if-nez v0, :cond_1a

    .line 605
    .line 606
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 607
    .line 608
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 609
    .line 610
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 611
    .line 612
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 613
    and-long/2addr v3, v5

    .line 614
    .line 615
    cmp-long v0, v3, v8

    .line 616
    .line 617
    if-eqz v0, :cond_1a

    .line 618
    return-object v7

    .line 619
    :cond_1a
    return-object v2

    .line 620
    .line 621
    .line 622
    :pswitch_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 623
    move-result v0

    .line 624
    .line 625
    new-instance v2, Ljava/lang/String;

    .line 626
    .line 627
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 628
    .line 629
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 630
    .line 631
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 632
    .line 633
    .line 634
    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 635
    .line 636
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 637
    add-int/2addr v3, v0

    .line 638
    .line 639
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 640
    .line 641
    if-nez v0, :cond_1b

    .line 642
    .line 643
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 644
    .line 645
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 646
    .line 647
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 648
    .line 649
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 650
    and-long/2addr v3, v5

    .line 651
    .line 652
    cmp-long v0, v3, v8

    .line 653
    .line 654
    if-eqz v0, :cond_1b

    .line 655
    return-object v7

    .line 656
    :cond_1b
    return-object v2

    .line 657
    .line 658
    .line 659
    :pswitch_5
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 660
    move-result v0

    .line 661
    .line 662
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 663
    .line 664
    add-int/lit8 v2, v2, 0x4

    .line 665
    .line 666
    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 667
    .line 668
    new-instance v2, Ljava/lang/Long;

    .line 669
    int-to-long v3, v0

    .line 670
    .line 671
    .line 672
    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 673
    return-object v2

    .line 674
    .line 675
    :pswitch_6
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 676
    .line 677
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 678
    int-to-long v6, v3

    .line 679
    add-long/2addr v4, v6

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v2, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 683
    move-result-wide v2

    .line 684
    .line 685
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 686
    .line 687
    add-int/lit8 v0, v0, 0x8

    .line 688
    .line 689
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 690
    .line 691
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 692
    .line 693
    if-eqz v0, :cond_1c

    .line 694
    goto :goto_4

    .line 695
    .line 696
    .line 697
    :cond_1c
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    .line 698
    move-result-wide v2

    .line 699
    .line 700
    .line 701
    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 702
    move-result-object v0

    .line 703
    return-object v0

    .line 704
    .line 705
    :pswitch_7
    add-int/lit8 v0, v0, 0x2

    .line 706
    .line 707
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 708
    .line 709
    aget-byte v0, v2, v3

    .line 710
    .line 711
    .line 712
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 713
    move-result-object v0

    .line 714
    return-object v0

    .line 715
    .line 716
    :pswitch_8
    add-int/lit8 v4, v0, 0x2

    .line 717
    .line 718
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 719
    .line 720
    aget-byte v3, v2, v3

    .line 721
    .line 722
    shl-int/lit8 v3, v3, 0x8

    .line 723
    .line 724
    add-int/lit8 v0, v0, 0x3

    .line 725
    .line 726
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 727
    .line 728
    aget-byte v0, v2, v4

    .line 729
    .line 730
    and-int/lit16 v0, v0, 0xff

    .line 731
    add-int/2addr v3, v0

    .line 732
    int-to-short v0, v3

    .line 733
    .line 734
    .line 735
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 736
    move-result-object v0

    .line 737
    return-object v0

    .line 738
    .line 739
    .line 740
    :pswitch_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 741
    move-result v0

    .line 742
    .line 743
    new-array v2, v0, [B

    .line 744
    .line 745
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 746
    .line 747
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 748
    .line 749
    .line 750
    invoke-static {v3, v4, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    .line 752
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 753
    add-int/2addr v3, v0

    .line 754
    .line 755
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 756
    .line 757
    new-instance v0, Ljava/math/BigInteger;

    .line 758
    .line 759
    .line 760
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 761
    return-object v0

    .line 762
    .line 763
    .line 764
    :pswitch_a
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 765
    move-result-wide v2

    .line 766
    .line 767
    .line 768
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 769
    move-result-object v0

    .line 770
    return-object v0

    .line 771
    .line 772
    .line 773
    :pswitch_b
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 774
    move-result v0

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 778
    move-result-object v2

    .line 779
    .line 780
    if-nez v0, :cond_1d

    .line 781
    .line 782
    new-instance v0, Ljava/math/BigDecimal;

    .line 783
    .line 784
    .line 785
    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 786
    return-object v0

    .line 787
    .line 788
    :cond_1d
    new-instance v3, Ljava/math/BigDecimal;

    .line 789
    .line 790
    .line 791
    invoke-direct {v3, v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 792
    return-object v3

    .line 793
    .line 794
    .line 795
    :pswitch_c
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 796
    move-result-wide v2

    .line 797
    .line 798
    .line 799
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 800
    move-result-object v0

    .line 801
    return-object v0

    .line 802
    .line 803
    .line 804
    :pswitch_d
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 805
    move-result v0

    .line 806
    .line 807
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 808
    .line 809
    add-int/lit8 v2, v2, 0x4

    .line 810
    .line 811
    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 812
    .line 813
    .line 814
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 815
    move-result v0

    .line 816
    .line 817
    .line 818
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 819
    move-result-object v0

    .line 820
    return-object v0

    .line 821
    .line 822
    .line 823
    :pswitch_e
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 824
    move-result v0

    .line 825
    int-to-float v0, v0

    .line 826
    .line 827
    .line 828
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 829
    move-result-object v0

    .line 830
    return-object v0

    .line 831
    .line 832
    :pswitch_f
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 833
    .line 834
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 835
    int-to-long v6, v3

    .line 836
    add-long/2addr v4, v6

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0, v2, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 840
    move-result-wide v2

    .line 841
    .line 842
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 843
    .line 844
    add-int/lit8 v0, v0, 0x8

    .line 845
    .line 846
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 847
    .line 848
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 849
    .line 850
    if-eqz v0, :cond_1e

    .line 851
    goto :goto_5

    .line 852
    .line 853
    .line 854
    :cond_1e
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    .line 855
    move-result-wide v2

    .line 856
    .line 857
    .line 858
    :goto_5
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 859
    move-result-wide v2

    .line 860
    .line 861
    .line 862
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 863
    move-result-object v0

    .line 864
    return-object v0

    .line 865
    .line 866
    .line 867
    :pswitch_10
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 868
    move-result-wide v2

    .line 869
    long-to-double v2, v2

    .line 870
    .line 871
    .line 872
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 873
    move-result-object v0

    .line 874
    return-object v0

    .line 875
    .line 876
    :pswitch_11
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 877
    .line 878
    .line 879
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 880
    move-result-object v0

    .line 881
    return-object v0

    .line 882
    .line 883
    :pswitch_12
    const-wide/16 v2, 0x0

    .line 884
    .line 885
    .line 886
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 887
    move-result-object v0

    .line 888
    return-object v0

    .line 889
    .line 890
    :pswitch_13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 891
    return-object v0

    .line 892
    .line 893
    :pswitch_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 894
    return-object v0

    .line 895
    :pswitch_15
    return-object v7

    .line 896
    .line 897
    .line 898
    :pswitch_16
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 899
    move-result-wide v2

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 903
    move-result v0

    .line 904
    int-to-long v4, v0

    .line 905
    .line 906
    .line 907
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 908
    move-result-object v0

    .line 909
    return-object v0

    .line 910
    .line 911
    .line 912
    :pswitch_17
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 913
    move-result v0

    .line 914
    int-to-long v2, v0

    .line 915
    .line 916
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 917
    .line 918
    add-int/lit8 v0, v0, 0x4

    .line 919
    .line 920
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 921
    .line 922
    new-instance v0, Ljava/util/Date;

    .line 923
    .line 924
    .line 925
    const-wide/32 v4, 0xea60

    .line 926
    mul-long/2addr v2, v4

    .line 927
    .line 928
    .line 929
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 930
    return-object v0

    .line 931
    .line 932
    .line 933
    :pswitch_18
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 934
    move-result v0

    .line 935
    int-to-long v2, v0

    .line 936
    .line 937
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 938
    .line 939
    add-int/lit8 v0, v0, 0x4

    .line 940
    .line 941
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 942
    .line 943
    new-instance v0, Ljava/util/Date;

    .line 944
    .line 945
    const-wide/16 v4, 0x3e8

    .line 946
    mul-long/2addr v2, v4

    .line 947
    .line 948
    .line 949
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 950
    return-object v0

    .line 951
    .line 952
    :pswitch_19
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 953
    .line 954
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 955
    int-to-long v6, v3

    .line 956
    add-long/2addr v4, v6

    .line 957
    .line 958
    .line 959
    invoke-virtual {v0, v2, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 960
    move-result-wide v2

    .line 961
    .line 962
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 963
    .line 964
    add-int/lit8 v0, v0, 0x8

    .line 965
    .line 966
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 967
    .line 968
    new-instance v0, Ljava/util/Date;

    .line 969
    .line 970
    sget-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 971
    .line 972
    if-eqz v4, :cond_1f

    .line 973
    goto :goto_6

    .line 974
    .line 975
    .line 976
    :cond_1f
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    .line 977
    move-result-wide v2

    .line 978
    .line 979
    .line 980
    :goto_6
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 981
    return-object v0

    .line 982
    .line 983
    :pswitch_1a
    add-int/lit8 v4, v0, 0x2

    .line 984
    .line 985
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 986
    .line 987
    aget-byte v3, v2, v3

    .line 988
    .line 989
    shl-int/lit8 v3, v3, 0x8

    .line 990
    .line 991
    add-int/lit8 v5, v0, 0x3

    .line 992
    .line 993
    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 994
    .line 995
    aget-byte v4, v2, v4

    .line 996
    .line 997
    and-int/lit16 v4, v4, 0xff

    .line 998
    .line 999
    add-int v6, v3, v4

    .line 1000
    .line 1001
    add-int/lit8 v3, v0, 0x4

    .line 1002
    .line 1003
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1004
    .line 1005
    aget-byte v7, v2, v5

    .line 1006
    .line 1007
    add-int/lit8 v4, v0, 0x5

    .line 1008
    .line 1009
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1010
    .line 1011
    aget-byte v8, v2, v3

    .line 1012
    .line 1013
    add-int/lit8 v3, v0, 0x6

    .line 1014
    .line 1015
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1016
    .line 1017
    aget-byte v9, v2, v4

    .line 1018
    .line 1019
    add-int/lit8 v4, v0, 0x7

    .line 1020
    .line 1021
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1022
    .line 1023
    aget-byte v10, v2, v3

    .line 1024
    .line 1025
    add-int/lit8 v0, v0, 0x8

    .line 1026
    .line 1027
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1028
    .line 1029
    aget-byte v11, v2, v4

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 1033
    move-result v12

    .line 1034
    .line 1035
    sget-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->SHANGHAI_ZONE_ID_NAME_BYTES:[B

    .line 1036
    .line 1037
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1038
    array-length v3, v0

    .line 1039
    add-int/2addr v2, v3

    .line 1040
    .line 1041
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1042
    array-length v3, v3

    .line 1043
    .line 1044
    if-ge v2, v3, :cond_22

    .line 1045
    :goto_7
    array-length v2, v0

    .line 1046
    .line 1047
    if-ge v14, v2, :cond_21

    .line 1048
    .line 1049
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1050
    .line 1051
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1052
    add-int/2addr v3, v14

    .line 1053
    .line 1054
    aget-byte v2, v2, v3

    .line 1055
    .line 1056
    aget-byte v3, v0, v14

    .line 1057
    .line 1058
    if-eq v2, v3, :cond_20

    .line 1059
    goto :goto_8

    .line 1060
    .line 1061
    :cond_20
    add-int/lit8 v14, v14, 0x1

    .line 1062
    goto :goto_7

    .line 1063
    .line 1064
    :cond_21
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1065
    array-length v0, v0

    .line 1066
    add-int/2addr v2, v0

    .line 1067
    .line 1068
    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1069
    .line 1070
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 1071
    goto :goto_9

    .line 1072
    .line 1073
    .line 1074
    :cond_22
    :goto_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 1075
    move-result-object v0

    .line 1076
    .line 1077
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 1081
    move-result-object v0

    .line 1082
    .line 1083
    .line 1084
    :goto_9
    invoke-static/range {v6 .. v12}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 1085
    move-result-object v2

    .line 1086
    .line 1087
    .line 1088
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 1089
    move-result-object v0

    .line 1090
    return-object v0

    .line 1091
    .line 1092
    :pswitch_1b
    add-int/lit8 v4, v0, 0x2

    .line 1093
    .line 1094
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1095
    .line 1096
    aget-byte v3, v2, v3

    .line 1097
    .line 1098
    shl-int/lit8 v3, v3, 0x8

    .line 1099
    .line 1100
    add-int/lit8 v5, v0, 0x3

    .line 1101
    .line 1102
    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1103
    .line 1104
    aget-byte v4, v2, v4

    .line 1105
    .line 1106
    and-int/lit16 v4, v4, 0xff

    .line 1107
    add-int/2addr v3, v4

    .line 1108
    .line 1109
    add-int/lit8 v4, v0, 0x4

    .line 1110
    .line 1111
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1112
    .line 1113
    aget-byte v5, v2, v5

    .line 1114
    .line 1115
    add-int/lit8 v0, v0, 0x5

    .line 1116
    .line 1117
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1118
    .line 1119
    aget-byte v0, v2, v4

    .line 1120
    .line 1121
    .line 1122
    invoke-static {v3, v5, v0}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 1123
    move-result-object v0

    .line 1124
    return-object v0

    .line 1125
    .line 1126
    :pswitch_1c
    add-int/lit8 v4, v0, 0x2

    .line 1127
    .line 1128
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1129
    .line 1130
    aget-byte v3, v2, v3

    .line 1131
    .line 1132
    shl-int/lit8 v3, v3, 0x8

    .line 1133
    .line 1134
    add-int/lit8 v5, v0, 0x3

    .line 1135
    .line 1136
    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1137
    .line 1138
    aget-byte v4, v2, v4

    .line 1139
    .line 1140
    and-int/lit16 v4, v4, 0xff

    .line 1141
    .line 1142
    add-int v6, v3, v4

    .line 1143
    .line 1144
    add-int/lit8 v3, v0, 0x4

    .line 1145
    .line 1146
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1147
    .line 1148
    aget-byte v7, v2, v5

    .line 1149
    .line 1150
    add-int/lit8 v4, v0, 0x5

    .line 1151
    .line 1152
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1153
    .line 1154
    aget-byte v8, v2, v3

    .line 1155
    .line 1156
    add-int/lit8 v3, v0, 0x6

    .line 1157
    .line 1158
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1159
    .line 1160
    aget-byte v9, v2, v4

    .line 1161
    .line 1162
    add-int/lit8 v4, v0, 0x7

    .line 1163
    .line 1164
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1165
    .line 1166
    aget-byte v10, v2, v3

    .line 1167
    .line 1168
    add-int/lit8 v0, v0, 0x8

    .line 1169
    .line 1170
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1171
    .line 1172
    aget-byte v11, v2, v4

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 1176
    move-result v12

    .line 1177
    .line 1178
    .line 1179
    invoke-static/range {v6 .. v12}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 1180
    move-result-object v0

    .line 1181
    return-object v0

    .line 1182
    .line 1183
    :pswitch_1d
    add-int/lit8 v4, v0, 0x2

    .line 1184
    .line 1185
    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1186
    .line 1187
    aget-byte v3, v2, v3

    .line 1188
    .line 1189
    add-int/lit8 v5, v0, 0x3

    .line 1190
    .line 1191
    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1192
    .line 1193
    aget-byte v4, v2, v4

    .line 1194
    .line 1195
    add-int/lit8 v0, v0, 0x4

    .line 1196
    .line 1197
    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1198
    .line 1199
    aget-byte v0, v2, v5

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 1203
    move-result v2

    .line 1204
    .line 1205
    .line 1206
    invoke-static {v3, v4, v0, v2}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 1207
    move-result-object v0

    .line 1208
    return-object v0

    .line 1209
    .line 1210
    :pswitch_1e
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1211
    .line 1212
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 1213
    .line 1214
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 1215
    move-wide v15, v8

    .line 1216
    .line 1217
    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 1218
    and-long/2addr v2, v8

    .line 1219
    .line 1220
    cmp-long v0, v2, v15

    .line 1221
    const/4 v2, 0x1

    .line 1222
    .line 1223
    if-eqz v0, :cond_23

    .line 1224
    move v0, v2

    .line 1225
    goto :goto_a

    .line 1226
    :cond_23
    move v0, v14

    .line 1227
    :goto_a
    move-object v3, v7

    .line 1228
    .line 1229
    :goto_b
    iget-object v5, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1230
    .line 1231
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1232
    .line 1233
    aget-byte v5, v5, v8

    .line 1234
    .line 1235
    const/16 v9, -0x5b

    .line 1236
    .line 1237
    if-ne v5, v9, :cond_26

    .line 1238
    add-int/2addr v8, v2

    .line 1239
    .line 1240
    iput v8, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1241
    .line 1242
    if-nez v3, :cond_25

    .line 1243
    .line 1244
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1245
    .line 1246
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 1247
    .line 1248
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 1249
    .line 1250
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 1251
    and-long/2addr v2, v4

    .line 1252
    .line 1253
    cmp-long v0, v2, v15

    .line 1254
    .line 1255
    if-eqz v0, :cond_24

    .line 1256
    .line 1257
    new-instance v0, Ljava/util/HashMap;

    .line 1258
    .line 1259
    .line 1260
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1261
    return-object v0

    .line 1262
    .line 1263
    :cond_24
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 1264
    .line 1265
    .line 1266
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 1267
    return-object v0

    .line 1268
    :cond_25
    return-object v3

    .line 1269
    .line 1270
    :cond_26
    if-eqz v0, :cond_2a

    .line 1271
    .line 1272
    if-nez v14, :cond_2a

    .line 1273
    .line 1274
    if-lt v5, v13, :cond_2a

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldNameHashCode()J

    .line 1278
    move-result-wide v8

    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    const-wide v17, 0x6570797440L

    .line 1284
    .line 1285
    cmp-long v5, v8, v17

    .line 1286
    .line 1287
    if-nez v5, :cond_29

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readValueHashCode()J

    .line 1291
    move-result-wide v8

    .line 1292
    .line 1293
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v0, v8, v9}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 1297
    move-result-object v0

    .line 1298
    .line 1299
    if-nez v0, :cond_28

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 1303
    move-result-object v0

    .line 1304
    .line 1305
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v3, v0, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 1309
    move-result-object v3

    .line 1310
    .line 1311
    if-eqz v3, :cond_27

    .line 1312
    move-object v0, v3

    .line 1313
    goto :goto_c

    .line 1314
    .line 1315
    :cond_27
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 1316
    .line 1317
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1321
    .line 1322
    const-string v5, "auotype not support : "

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1342
    array-length v0, v0

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1349
    move-result-object v0

    .line 1350
    .line 1351
    .line 1352
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 1353
    throw v2

    .line 1354
    .line 1355
    :cond_28
    :goto_c
    iput-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->typeRedirect:Z

    .line 1356
    const/4 v3, 0x0

    .line 1357
    .line 1358
    const-wide/16 v4, 0x0

    .line 1359
    const/4 v2, 0x0

    .line 1360
    .line 1361
    .line 1362
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1363
    move-result-object v0

    .line 1364
    return-object v0

    .line 1365
    .line 1366
    .line 1367
    :cond_29
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 1368
    move-result-object v5

    .line 1369
    goto :goto_d

    .line 1370
    .line 1371
    :cond_2a
    if-lt v5, v13, :cond_2b

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldName()Ljava/lang/String;

    .line 1375
    move-result-object v5

    .line 1376
    goto :goto_d

    .line 1377
    .line 1378
    .line 1379
    :cond_2b
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 1380
    move-result-object v5

    .line 1381
    .line 1382
    :goto_d
    if-nez v3, :cond_2e

    .line 1383
    .line 1384
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1385
    .line 1386
    iget-wide v8, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 1387
    .line 1388
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 1389
    .line 1390
    iget-wide v11, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 1391
    and-long/2addr v8, v11

    .line 1392
    .line 1393
    cmp-long v2, v8, v15

    .line 1394
    .line 1395
    if-eqz v2, :cond_2c

    .line 1396
    .line 1397
    new-instance v3, Ljava/util/HashMap;

    .line 1398
    .line 1399
    .line 1400
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1401
    goto :goto_e

    .line 1402
    .line 1403
    :cond_2c
    iget-object v2, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 1404
    .line 1405
    if-eqz v2, :cond_2d

    .line 1406
    .line 1407
    .line 1408
    invoke-interface {v2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 1409
    move-result-object v2

    .line 1410
    move-object v3, v2

    .line 1411
    .line 1412
    check-cast v3, Ljava/util/Map;

    .line 1413
    goto :goto_e

    .line 1414
    .line 1415
    :cond_2d
    new-instance v3, Lcom/alibaba/fastjson2/JSONObject;

    .line 1416
    .line 1417
    .line 1418
    invoke-direct {v3}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 1419
    .line 1420
    .line 1421
    :cond_2e
    :goto_e
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    .line 1422
    move-result v2

    .line 1423
    .line 1424
    if-eqz v2, :cond_30

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    .line 1428
    move-result-object v2

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    move-result v8

    .line 1433
    .line 1434
    if-eqz v8, :cond_2f

    .line 1435
    .line 1436
    .line 1437
    invoke-interface {v3, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    .line 1439
    :goto_f
    move-object/from16 v19, v10

    .line 1440
    .line 1441
    goto/16 :goto_11

    .line 1442
    .line 1443
    .line 1444
    :cond_2f
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 1445
    move-result-object v2

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v1, v3, v5, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 1449
    .line 1450
    .line 1451
    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    goto :goto_f

    .line 1453
    .line 1454
    :cond_30
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1455
    .line 1456
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1457
    .line 1458
    aget-byte v2, v2, v8

    .line 1459
    .line 1460
    if-lt v2, v13, :cond_31

    .line 1461
    .line 1462
    const/16 v9, 0x7e

    .line 1463
    .line 1464
    if-gt v2, v9, :cond_31

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 1468
    move-result-object v2

    .line 1469
    .line 1470
    const/16 v9, -0x10

    .line 1471
    .line 1472
    const/16 v11, 0x2f

    .line 1473
    goto :goto_10

    .line 1474
    .line 1475
    :cond_31
    const/16 v9, -0x10

    .line 1476
    .line 1477
    const/16 v11, 0x2f

    .line 1478
    .line 1479
    if-lt v2, v9, :cond_32

    .line 1480
    .line 1481
    if-gt v2, v11, :cond_32

    .line 1482
    .line 1483
    add-int/lit8 v8, v8, 0x1

    .line 1484
    .line 1485
    iput v8, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1486
    .line 1487
    .line 1488
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1489
    move-result-object v2

    .line 1490
    goto :goto_10

    .line 1491
    .line 1492
    :cond_32
    const/16 v12, -0x4f

    .line 1493
    .line 1494
    if-ne v2, v12, :cond_33

    .line 1495
    .line 1496
    add-int/lit8 v8, v8, 0x1

    .line 1497
    .line 1498
    iput v8, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1499
    .line 1500
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1501
    goto :goto_10

    .line 1502
    .line 1503
    :cond_33
    const/16 v12, -0x50

    .line 1504
    .line 1505
    if-ne v2, v12, :cond_34

    .line 1506
    .line 1507
    add-int/lit8 v8, v8, 0x1

    .line 1508
    .line 1509
    iput v8, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1510
    .line 1511
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1512
    goto :goto_10

    .line 1513
    .line 1514
    :cond_34
    const/16 v8, -0x5a

    .line 1515
    .line 1516
    if-ne v2, v8, :cond_35

    .line 1517
    .line 1518
    .line 1519
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    .line 1520
    move-result-object v2

    .line 1521
    goto :goto_10

    .line 1522
    .line 1523
    .line 1524
    :cond_35
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 1525
    move-result-object v2

    .line 1526
    .line 1527
    :goto_10
    if-nez v2, :cond_36

    .line 1528
    .line 1529
    iget-object v8, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1530
    move-object v12, v10

    .line 1531
    .line 1532
    iget-wide v9, v8, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 1533
    .line 1534
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 1535
    .line 1536
    move-object/from16 v19, v12

    .line 1537
    .line 1538
    iget-wide v11, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 1539
    and-long/2addr v9, v11

    .line 1540
    .line 1541
    cmp-long v8, v9, v15

    .line 1542
    .line 1543
    if-eqz v8, :cond_37

    .line 1544
    goto :goto_11

    .line 1545
    .line 1546
    :cond_36
    move-object/from16 v19, v10

    .line 1547
    .line 1548
    .line 1549
    :cond_37
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    .line 1551
    :goto_11
    add-int/lit8 v14, v14, 0x1

    .line 1552
    .line 1553
    move-object/from16 v10, v19

    .line 1554
    const/4 v2, 0x1

    .line 1555
    .line 1556
    const/16 v11, 0x2f

    .line 1557
    .line 1558
    const/16 v12, -0x10

    .line 1559
    .line 1560
    goto/16 :goto_b

    .line 1561
    :pswitch_1f
    move-wide v15, v8

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    .line 1565
    move-result-wide v21

    .line 1566
    .line 1567
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1568
    .line 1569
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 1570
    .line 1571
    if-eqz v2, :cond_39

    .line 1572
    .line 1573
    const/16 v23, 0x0

    .line 1574
    .line 1575
    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 1576
    .line 1577
    move-object/from16 v20, v2

    .line 1578
    .line 1579
    move-wide/from16 v24, v8

    .line 1580
    .line 1581
    .line 1582
    invoke-interface/range {v20 .. v25}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    .line 1583
    move-result-object v0

    .line 1584
    .line 1585
    move-wide/from16 v2, v21

    .line 1586
    .line 1587
    if-nez v0, :cond_38

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 1591
    move-result-object v0

    .line 1592
    .line 1593
    iget-object v5, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1594
    .line 1595
    iget-object v8, v5, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 1596
    .line 1597
    iget-wide v9, v5, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 1598
    .line 1599
    .line 1600
    invoke-interface {v8, v0, v7, v9, v10}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 1601
    move-result-object v0

    .line 1602
    .line 1603
    :cond_38
    if-eqz v0, :cond_3a

    .line 1604
    .line 1605
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 1609
    move-result-object v0

    .line 1610
    const/4 v3, 0x0

    .line 1611
    .line 1612
    const-wide/16 v4, 0x0

    .line 1613
    const/4 v2, 0x0

    .line 1614
    .line 1615
    .line 1616
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1617
    move-result-object v0

    .line 1618
    return-object v0

    .line 1619
    .line 1620
    :cond_39
    move-wide/from16 v2, v21

    .line 1621
    .line 1622
    :cond_3a
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1623
    .line 1624
    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 1625
    .line 1626
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 1627
    .line 1628
    iget-wide v10, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 1629
    and-long/2addr v8, v10

    .line 1630
    .line 1631
    cmp-long v5, v8, v15

    .line 1632
    .line 1633
    if-eqz v5, :cond_3d

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 1637
    move-result-object v0

    .line 1638
    .line 1639
    if-nez v0, :cond_3c

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 1643
    move-result-object v0

    .line 1644
    .line 1645
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1646
    .line 1647
    .line 1648
    invoke-virtual {v2, v0, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 1649
    move-result-object v2

    .line 1650
    .line 1651
    if-eqz v2, :cond_3b

    .line 1652
    move-object v0, v2

    .line 1653
    goto :goto_12

    .line 1654
    .line 1655
    :cond_3b
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 1656
    .line 1657
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1661
    .line 1662
    const-string v5, "autoType not support : "

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1674
    .line 1675
    .line 1676
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1682
    array-length v0, v0

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1689
    move-result-object v0

    .line 1690
    .line 1691
    .line 1692
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 1693
    throw v2

    .line 1694
    :cond_3c
    :goto_12
    const/4 v3, 0x0

    .line 1695
    .line 1696
    const-wide/16 v4, 0x0

    .line 1697
    const/4 v2, 0x0

    .line 1698
    .line 1699
    .line 1700
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1701
    move-result-object v0

    .line 1702
    return-object v0

    .line 1703
    .line 1704
    .line 1705
    :cond_3d
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isObject()Z

    .line 1706
    move-result v0

    .line 1707
    .line 1708
    if-eqz v0, :cond_3e

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    .line 1712
    move-result-object v0

    .line 1713
    return-object v0

    .line 1714
    .line 1715
    .line 1716
    :cond_3e
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isArray()Z

    .line 1717
    move-result v0

    .line 1718
    .line 1719
    if-eqz v0, :cond_3f

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readArray()Ljava/util/List;

    .line 1723
    move-result-object v0

    .line 1724
    return-object v0

    .line 1725
    .line 1726
    :cond_3f
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 1727
    .line 1728
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1729
    .line 1730
    .line 1731
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1732
    .line 1733
    const-string v3, "autoType not support , offset "

    .line 1734
    .line 1735
    .line 1736
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    .line 1738
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    .line 1746
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1747
    array-length v3, v3

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1754
    move-result-object v2

    .line 1755
    .line 1756
    .line 1757
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 1758
    throw v0

    .line 1759
    .line 1760
    .line 1761
    :pswitch_20
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 1762
    move-result v0

    .line 1763
    .line 1764
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1765
    .line 1766
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1767
    .line 1768
    add-int v4, v3, v0

    .line 1769
    .line 1770
    .line 1771
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 1772
    move-result-object v2

    .line 1773
    .line 1774
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1775
    add-int/2addr v3, v0

    .line 1776
    .line 1777
    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1778
    return-object v2

    .line 1779
    .line 1780
    .line 1781
    :pswitch_21
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 1782
    move-result v0

    .line 1783
    int-to-char v0, v0

    .line 1784
    .line 1785
    .line 1786
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1787
    move-result-object v0

    .line 1788
    return-object v0

    .line 1789
    .line 1790
    .line 1791
    :cond_40
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 1792
    move-result v0

    .line 1793
    .line 1794
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1795
    .line 1796
    add-int/lit8 v2, v2, 0x4

    .line 1797
    .line 1798
    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1799
    .line 1800
    new-instance v2, Ljava/lang/Integer;

    .line 1801
    .line 1802
    .line 1803
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1804
    return-object v2

    .line 1805
    .line 1806
    :cond_41
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 1807
    .line 1808
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1812
    .line 1813
    const-string v3, "readAny overflow : "

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    .line 1818
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1819
    .line 1820
    .line 1821
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1822
    .line 1823
    .line 1824
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    .line 1826
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 1827
    array-length v3, v3

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1831
    .line 1832
    .line 1833
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1834
    move-result-object v2

    .line 1835
    .line 1836
    .line 1837
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 1838
    throw v0

    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    :pswitch_data_0
    .packed-switch -0x70
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    :pswitch_data_1
    .packed-switch -0x5a
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
    .end packed-switch

    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readArray()Ljava/util/List;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_17

    .line 3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v6, v4, v5

    const/16 v7, 0x7e

    const/16 v8, 0x49

    if-lt v6, v8, :cond_0

    if-gt v6, v7, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_0
    const/16 v9, -0x10

    if-lt v6, v9, :cond_1

    const/16 v9, 0x2f

    if-gt v6, v9, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 5
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_8

    :cond_1
    const/16 v9, -0x4f

    if-ne v6, v9, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 7
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 8
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_8

    :cond_2
    const/16 v9, -0x50

    if-ne v6, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 9
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 10
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_8

    :cond_3
    const/16 v9, -0x5a

    if-ne v6, v9, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_8

    :cond_4
    const/16 v10, -0x42

    if-ne v6, v10, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 12
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v5

    add-long/2addr v7, v9

    invoke-virtual {v6, v4, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 14
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    sget-boolean v6, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_8

    .line 16
    :cond_6
    const-string v10, ".."

    const/16 v11, -0x6c

    if-lt v6, v11, :cond_10

    const/16 v11, -0x5c

    if-gt v6, v11, :cond_10

    add-int/lit8 v5, v5, 0x1

    .line 17
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-ne v6, v11, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v4

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v6, 0x6c

    :goto_2
    const-wide/16 v5, 0x0

    if-nez v4, :cond_a

    .line 19
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v7, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v5, v7, v5

    if-eqz v5, :cond_8

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_8

    .line 21
    :cond_8
    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    if-eqz v4, :cond_9

    .line 22
    invoke-interface {v4}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_8

    .line 23
    :cond_9
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto/16 :goto_8

    .line 24
    :cond_a
    iget-object v11, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v13, v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v11, v13

    cmp-long v5, v11, v5

    if-eqz v5, :cond_b

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_3

    .line 26
    :cond_b
    new-instance v5, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :goto_3
    move v6, v2

    :goto_4
    if-ge v6, v4, :cond_12

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v11

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 30
    invoke-interface {v5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    .line 31
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v11}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v11

    invoke-virtual {p0, v5, v6, v11}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_6

    .line 33
    :cond_d
    iget-object v11, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v11, v11, v12

    if-lt v11, v8, :cond_e

    if-gt v11, v7, :cond_e

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_e
    if-ne v11, v9, :cond_f

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v11

    goto :goto_5

    .line 36
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v11

    .line 37
    :goto_5
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_10
    const/16 v7, 0x30

    if-lt v6, v7, :cond_11

    const/16 v7, 0x3f

    if-gt v6, v7, :cond_11

    add-int/lit8 v6, v6, -0x38

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    .line 38
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 39
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_8

    :cond_11
    const/16 v7, 0x40

    if-lt v6, v7, :cond_13

    const/16 v7, 0x47

    if-gt v6, v7, :cond_13

    add-int/lit8 v5, v5, 0x1

    .line 40
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v4

    .line 41
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 42
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    :cond_12
    :goto_7
    move-object v4, v5

    goto :goto_8

    :cond_13
    const/16 v7, 0x48

    if-ne v6, v7, :cond_14

    add-int/lit8 v5, v5, 0x1

    .line 43
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v4

    .line 44
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 45
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_7

    :cond_14
    const/16 v4, -0x6d

    if-ne v6, v4, :cond_16

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object v4, v1

    goto :goto_8

    .line 48
    :cond_15
    invoke-static {v4}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_9

    .line 49
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v4

    .line 50
    :goto_8
    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_17
    return-object v1
.end method

.method public readArray(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_3

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object p1

    .line 54
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 55
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 56
    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 58
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    .line 60
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 61
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public readArray(Ljava/util/Collection;Ljava/lang/reflect/Type;)V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readBigDecimal()Ljava/math/BigDecimal;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v1, v0, v1

    .line 11
    .line 12
    const/16 v2, -0x47

    .line 13
    .line 14
    if-ne v1, v2, :cond_5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    aget-byte v3, v0, v2

    .line 23
    .line 24
    const/16 v4, -0x46

    .line 25
    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 34
    move-result-wide v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    .line 41
    :cond_0
    const/16 v4, 0x48

    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 49
    move-result v0

    .line 50
    int-to-long v2, v0

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x5

    .line 59
    .line 60
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 61
    return-object v0

    .line 62
    .line 63
    :cond_1
    const/16 v4, -0x42

    .line 64
    .line 65
    if-ne v3, v4, :cond_3

    .line 66
    .line 67
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 68
    .line 69
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 70
    int-to-long v6, v2

    .line 71
    add-long/2addr v4, v6

    .line 72
    .line 73
    const-wide/16 v6, 0x1

    .line 74
    add-long/2addr v4, v6

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 78
    move-result-wide v2

    .line 79
    .line 80
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    .line 87
    move-result-wide v2

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x9

    .line 96
    .line 97
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 98
    return-object v0

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    if-nez v1, :cond_4

    .line 105
    .line 106
    new-instance v1, Ljava/math/BigDecimal;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 110
    return-object v1

    .line 111
    .line 112
    :cond_4
    new-instance v2, Ljava/math/BigDecimal;

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 116
    return-object v2

    .line 117
    .line 118
    :cond_5
    const/16 v0, -0x48

    .line 119
    .line 120
    if-ne v1, v0, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 124
    move-result-wide v0

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 128
    move-result-object v0

    .line 129
    return-object v0

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readDecimal0(B)Ljava/math/BigDecimal;

    .line 133
    move-result-object v0

    .line 134
    return-object v0
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v0, v0, v1

    .line 11
    .line 12
    const/16 v1, -0x46

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_0
    const/16 v1, -0x45

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 31
    move-result v0

    .line 32
    .line 33
    new-array v1, v0, [B

    .line 34
    .line 35
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 36
    .line 37
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 38
    const/4 v4, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 44
    add-int/2addr v2, v0

    .line 45
    .line 46
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 47
    .line 48
    new-instance v0, Ljava/math/BigInteger;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 52
    return-object v0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger0(B)Ljava/math/BigInteger;

    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public readBinary()[B
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v0, v0, v1

    .line 11
    .line 12
    const/16 v1, -0x6f

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 18
    move-result v0

    .line 19
    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 23
    .line 24
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 31
    add-int/2addr v2, v0

    .line 32
    .line 33
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    return-object v1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 38
    move-result-object v0

    .line 39
    throw v0
.end method

.method public readBool()Ljava/lang/Boolean;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v0, v0, v1

    .line 11
    .line 12
    const/16 v1, -0x51

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    const/16 v1, -0x4f

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_1
    const/16 v1, -0x50

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    return-object v0

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBoolValue0(B)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public readBoolValue()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 6
    .line 7
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 8
    .line 9
    add-int/lit8 v3, v2, 0x1

    .line 10
    .line 11
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 12
    .line 13
    aget-byte v1, v1, v2

    .line 14
    .line 15
    const/16 v2, -0x4f

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    .line 21
    :cond_0
    const/16 v2, -0x50

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    return v0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBoolValue0(B)Z

    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public readCharValue()C
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x70

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 18
    move-result v0

    .line 19
    :goto_0
    int-to-char v0, v0

    .line 20
    return v0

    .line 21
    .line 22
    :cond_0
    const/16 v3, 0x49

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    return v4

    .line 31
    .line 32
    :cond_1
    if-le v2, v3, :cond_2

    .line 33
    .line 34
    const/16 v3, 0x78

    .line 35
    .line 36
    if-ge v2, v3, :cond_2

    .line 37
    .line 38
    add-int/lit8 v2, v1, 0x1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 43
    .line 44
    aget-byte v0, v0, v2

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 64
    move-result v0

    .line 65
    return v0

    .line 66
    :cond_4
    :goto_1
    return v4
.end method

.method public readDate()Ljava/util/Date;
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x57

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v1, 0x1

    .line 14
    .line 15
    add-int/lit8 v3, v1, 0x2

    .line 16
    .line 17
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 18
    .line 19
    aget-byte v2, v0, v2

    .line 20
    .line 21
    shl-int/lit8 v2, v2, 0x8

    .line 22
    .line 23
    add-int/lit8 v5, v1, 0x3

    .line 24
    .line 25
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 26
    .line 27
    aget-byte v3, v0, v3

    .line 28
    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    add-int/2addr v2, v3

    .line 31
    .line 32
    add-int/lit8 v3, v1, 0x4

    .line 33
    .line 34
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 35
    .line 36
    aget-byte v5, v0, v5

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x5

    .line 39
    .line 40
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 41
    .line 42
    aget-byte v0, v0, v3

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v5, v0}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/LocalDate;->atStartOfDay()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    const/16 v3, -0x58

    .line 54
    .line 55
    if-ne v2, v3, :cond_1

    .line 56
    .line 57
    add-int/lit8 v2, v1, 0x1

    .line 58
    .line 59
    add-int/lit8 v3, v1, 0x2

    .line 60
    .line 61
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 62
    .line 63
    aget-byte v2, v0, v2

    .line 64
    .line 65
    shl-int/lit8 v2, v2, 0x8

    .line 66
    .line 67
    add-int/lit8 v5, v1, 0x3

    .line 68
    .line 69
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 70
    .line 71
    aget-byte v3, v0, v3

    .line 72
    .line 73
    and-int/lit16 v3, v3, 0xff

    .line 74
    .line 75
    add-int v6, v2, v3

    .line 76
    .line 77
    add-int/lit8 v2, v1, 0x4

    .line 78
    .line 79
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 80
    .line 81
    aget-byte v7, v0, v5

    .line 82
    .line 83
    add-int/lit8 v3, v1, 0x5

    .line 84
    .line 85
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 86
    .line 87
    aget-byte v8, v0, v2

    .line 88
    .line 89
    add-int/lit8 v2, v1, 0x6

    .line 90
    .line 91
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 92
    .line 93
    aget-byte v9, v0, v3

    .line 94
    .line 95
    add-int/lit8 v3, v1, 0x7

    .line 96
    .line 97
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 98
    .line 99
    aget-byte v10, v0, v2

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x8

    .line 102
    .line 103
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 104
    .line 105
    aget-byte v11, v0, v3

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 109
    move-result v12

    .line 110
    .line 111
    .line 112
    invoke-static/range {v6 .. v12}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 113
    move-result-object v0

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    move-object v0, v4

    .line 116
    .line 117
    :goto_0
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->toInstant(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/Instant;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/Instant;->toDate()Ljava/util/Date;

    .line 131
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    .line 134
    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    .line 142
    move-result-wide v0

    .line 143
    .line 144
    const-wide/16 v2, 0x0

    .line 145
    .line 146
    cmp-long v2, v0, v2

    .line 147
    .line 148
    if-nez v2, :cond_3

    .line 149
    return-object v4

    .line 150
    .line 151
    :cond_3
    new-instance v2, Ljava/util/Date;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 155
    return-object v2
.end method

.method public readDoubleValue()D
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x4b

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x8

    .line 13
    .line 14
    aget-byte v2, v0, v2

    .line 15
    int-to-long v2, v2

    .line 16
    .line 17
    const-wide/16 v4, 0xff

    .line 18
    and-long/2addr v2, v4

    .line 19
    .line 20
    add-int/lit8 v6, v1, 0x7

    .line 21
    .line 22
    aget-byte v6, v0, v6

    .line 23
    int-to-long v6, v6

    .line 24
    and-long/2addr v6, v4

    .line 25
    .line 26
    const/16 v8, 0x8

    .line 27
    shl-long/2addr v6, v8

    .line 28
    add-long/2addr v2, v6

    .line 29
    .line 30
    add-int/lit8 v6, v1, 0x6

    .line 31
    .line 32
    aget-byte v6, v0, v6

    .line 33
    int-to-long v6, v6

    .line 34
    and-long/2addr v6, v4

    .line 35
    .line 36
    const/16 v8, 0x10

    .line 37
    shl-long/2addr v6, v8

    .line 38
    add-long/2addr v2, v6

    .line 39
    .line 40
    add-int/lit8 v6, v1, 0x5

    .line 41
    .line 42
    aget-byte v6, v0, v6

    .line 43
    int-to-long v6, v6

    .line 44
    and-long/2addr v6, v4

    .line 45
    .line 46
    const/16 v8, 0x18

    .line 47
    shl-long/2addr v6, v8

    .line 48
    add-long/2addr v2, v6

    .line 49
    .line 50
    add-int/lit8 v6, v1, 0x4

    .line 51
    .line 52
    aget-byte v6, v0, v6

    .line 53
    int-to-long v6, v6

    .line 54
    and-long/2addr v6, v4

    .line 55
    .line 56
    const/16 v8, 0x20

    .line 57
    shl-long/2addr v6, v8

    .line 58
    add-long/2addr v2, v6

    .line 59
    .line 60
    add-int/lit8 v6, v1, 0x3

    .line 61
    .line 62
    aget-byte v6, v0, v6

    .line 63
    int-to-long v6, v6

    .line 64
    and-long/2addr v6, v4

    .line 65
    .line 66
    const/16 v8, 0x28

    .line 67
    shl-long/2addr v6, v8

    .line 68
    add-long/2addr v2, v6

    .line 69
    .line 70
    add-int/lit8 v6, v1, 0x2

    .line 71
    .line 72
    aget-byte v6, v0, v6

    .line 73
    int-to-long v6, v6

    .line 74
    and-long/2addr v4, v6

    .line 75
    .line 76
    const/16 v6, 0x30

    .line 77
    shl-long/2addr v4, v6

    .line 78
    add-long/2addr v2, v4

    .line 79
    .line 80
    add-int/lit8 v4, v1, 0x1

    .line 81
    .line 82
    aget-byte v0, v0, v4

    .line 83
    int-to-long v4, v0

    .line 84
    .line 85
    const/16 v0, 0x38

    .line 86
    shl-long/2addr v4, v0

    .line 87
    add-long/2addr v2, v4

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x9

    .line 90
    .line 91
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 95
    move-result-wide v0

    .line 96
    return-wide v0

    .line 97
    .line 98
    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readDoubleValue0()D

    .line 100
    move-result-wide v0

    .line 101
    return-wide v0
.end method

.method public readFieldName()Ljava/lang/String;
    .locals 32

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    aget-byte v4, v1, v2

    .line 13
    .line 14
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 15
    .line 16
    const/16 v5, -0x51

    .line 17
    const/4 v6, 0x0

    .line 18
    .line 19
    if-ne v4, v5, :cond_0

    .line 20
    return-object v6

    .line 21
    .line 22
    :cond_0
    const/16 v5, 0x7f

    .line 23
    const/4 v7, 0x1

    .line 24
    .line 25
    if-ne v4, v5, :cond_1

    .line 26
    move v5, v7

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v5, 0x0

    .line 29
    .line 30
    :goto_0
    const/16 v8, 0x20

    .line 31
    .line 32
    const/16 v9, 0x8

    .line 33
    .line 34
    if-eqz v5, :cond_5

    .line 35
    .line 36
    aget-byte v4, v1, v3

    .line 37
    .line 38
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 39
    .line 40
    const/16 v3, -0x10

    .line 41
    .line 42
    if-lt v4, v3, :cond_4

    .line 43
    .line 44
    const/16 v3, 0x48

    .line 45
    .line 46
    if-gt v4, v3, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 50
    move-result v1

    .line 51
    .line 52
    if-gez v1, :cond_2

    .line 53
    .line 54
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 55
    neg-int v1, v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    return-object v1

    .line 61
    .line 62
    :cond_2
    if-nez v1, :cond_3

    .line 63
    .line 64
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 65
    .line 66
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 67
    .line 68
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 69
    .line 70
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 71
    .line 72
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 73
    .line 74
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    return-object v1

    .line 80
    .line 81
    :cond_3
    mul-int/lit8 v1, v1, 0x2

    .line 82
    add-int/2addr v1, v7

    .line 83
    .line 84
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 85
    .line 86
    aget-wide v1, v2, v1

    .line 87
    long-to-int v3, v1

    .line 88
    int-to-byte v4, v3

    .line 89
    .line 90
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 91
    shr-int/2addr v3, v9

    .line 92
    .line 93
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 94
    shr-long/2addr v1, v8

    .line 95
    long-to-int v1, v1

    .line 96
    .line 97
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    return-object v1

    .line 103
    .line 104
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 105
    .line 106
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 107
    .line 108
    :cond_5
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 109
    .line 110
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 111
    .line 112
    const/16 v3, 0x49

    .line 113
    .line 114
    const/16 v10, 0x38

    .line 115
    .line 116
    const/16 v11, 0x30

    .line 117
    .line 118
    if-lt v4, v3, :cond_c

    .line 119
    .line 120
    const/16 v3, 0x79

    .line 121
    .line 122
    if-gt v4, v3, :cond_c

    .line 123
    .line 124
    const/16 v3, 0x79

    .line 125
    .line 126
    if-ne v4, v3, :cond_6

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 130
    move-result v2

    .line 131
    .line 132
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 133
    .line 134
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 135
    .line 136
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 137
    .line 138
    :goto_1
    move/from16 v24, v7

    .line 139
    .line 140
    move/from16 v25, v8

    .line 141
    move v15, v9

    .line 142
    .line 143
    const/16 v21, 0x10

    .line 144
    .line 145
    const-wide/16 v22, -0x1

    .line 146
    .line 147
    goto/16 :goto_9

    .line 148
    .line 149
    :cond_6
    add-int/lit8 v3, v4, -0x49

    .line 150
    .line 151
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 152
    .line 153
    sget-boolean v15, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 154
    .line 155
    const/16 v16, 0x28

    .line 156
    .line 157
    const-wide/16 v17, 0xff

    .line 158
    .line 159
    if-eqz v15, :cond_7

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    const-wide v19, 0xffffffffL

    .line 165
    .line 166
    .line 167
    packed-switch v3, :pswitch_data_0

    .line 168
    goto :goto_1

    .line 169
    .line 170
    :pswitch_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 171
    .line 172
    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 173
    move v15, v9

    .line 174
    .line 175
    move-wide/from16 v16, v10

    .line 176
    int-to-long v9, v2

    .line 177
    .line 178
    const/16 v21, 0x10

    .line 179
    .line 180
    const-wide/16 v22, -0x1

    .line 181
    .line 182
    add-long v12, v16, v9

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 186
    move-result-wide v11

    .line 187
    .line 188
    add-long v9, v16, v9

    .line 189
    .line 190
    const-wide/16 v13, 0x8

    .line 191
    add-long/2addr v9, v13

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 195
    move-result-wide v2

    .line 196
    .line 197
    move-wide/from16 v30, v2

    .line 198
    .line 199
    move/from16 v24, v7

    .line 200
    .line 201
    move/from16 v25, v8

    .line 202
    .line 203
    :goto_2
    move-wide/from16 v28, v11

    .line 204
    .line 205
    goto/16 :goto_b

    .line 206
    :pswitch_1
    move v15, v9

    .line 207
    .line 208
    const/16 v21, 0x10

    .line 209
    .line 210
    const-wide/16 v22, -0x1

    .line 211
    .line 212
    add-int/lit8 v3, v2, 0x6

    .line 213
    .line 214
    aget-byte v3, v1, v3

    .line 215
    int-to-long v9, v3

    .line 216
    shl-long/2addr v9, v11

    .line 217
    .line 218
    add-int/lit8 v3, v2, 0x5

    .line 219
    .line 220
    aget-byte v3, v1, v3

    .line 221
    int-to-long v11, v3

    .line 222
    .line 223
    and-long v11, v11, v17

    .line 224
    .line 225
    shl-long v11, v11, v16

    .line 226
    add-long/2addr v9, v11

    .line 227
    .line 228
    add-int/lit8 v3, v2, 0x4

    .line 229
    .line 230
    aget-byte v3, v1, v3

    .line 231
    int-to-long v11, v3

    .line 232
    .line 233
    and-long v11, v11, v17

    .line 234
    shl-long/2addr v11, v8

    .line 235
    add-long/2addr v9, v11

    .line 236
    .line 237
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 238
    .line 239
    sget-wide v11, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 240
    int-to-long v13, v2

    .line 241
    .line 242
    move/from16 v24, v7

    .line 243
    .line 244
    move/from16 v25, v8

    .line 245
    .line 246
    add-long v7, v11, v13

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 250
    move-result v2

    .line 251
    int-to-long v7, v2

    .line 252
    .line 253
    and-long v7, v7, v19

    .line 254
    add-long/2addr v7, v9

    .line 255
    add-long/2addr v11, v13

    .line 256
    .line 257
    const-wide/16 v9, 0x7

    .line 258
    add-long/2addr v11, v9

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 262
    move-result-wide v2

    .line 263
    .line 264
    :goto_3
    move-wide/from16 v30, v2

    .line 265
    .line 266
    move-wide/from16 v28, v7

    .line 267
    .line 268
    goto/16 :goto_b

    .line 269
    .line 270
    :pswitch_2
    move/from16 v24, v7

    .line 271
    .line 272
    move/from16 v25, v8

    .line 273
    move v15, v9

    .line 274
    .line 275
    const/16 v21, 0x10

    .line 276
    .line 277
    const-wide/16 v22, -0x1

    .line 278
    .line 279
    add-int/lit8 v3, v2, 0x5

    .line 280
    .line 281
    aget-byte v3, v1, v3

    .line 282
    int-to-long v7, v3

    .line 283
    .line 284
    shl-long v7, v7, v16

    .line 285
    .line 286
    add-int/lit8 v3, v2, 0x4

    .line 287
    .line 288
    aget-byte v3, v1, v3

    .line 289
    int-to-long v9, v3

    .line 290
    .line 291
    and-long v9, v9, v17

    .line 292
    .line 293
    shl-long v9, v9, v25

    .line 294
    add-long/2addr v7, v9

    .line 295
    .line 296
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 297
    .line 298
    sget-wide v9, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 299
    int-to-long v11, v2

    .line 300
    .line 301
    add-long v13, v9, v11

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 305
    move-result v2

    .line 306
    int-to-long v13, v2

    .line 307
    .line 308
    and-long v13, v13, v19

    .line 309
    add-long/2addr v7, v13

    .line 310
    add-long/2addr v9, v11

    .line 311
    .line 312
    const-wide/16 v11, 0x6

    .line 313
    add-long/2addr v9, v11

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 317
    move-result-wide v2

    .line 318
    goto :goto_3

    .line 319
    .line 320
    :pswitch_3
    move/from16 v24, v7

    .line 321
    .line 322
    move/from16 v25, v8

    .line 323
    move v15, v9

    .line 324
    .line 325
    const/16 v21, 0x10

    .line 326
    .line 327
    const-wide/16 v22, -0x1

    .line 328
    .line 329
    add-int/lit8 v3, v2, 0x4

    .line 330
    .line 331
    aget-byte v3, v1, v3

    .line 332
    int-to-long v7, v3

    .line 333
    .line 334
    shl-long v7, v7, v25

    .line 335
    .line 336
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 337
    .line 338
    sget-wide v9, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 339
    int-to-long v11, v2

    .line 340
    .line 341
    add-long v13, v9, v11

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 345
    move-result v2

    .line 346
    int-to-long v13, v2

    .line 347
    .line 348
    and-long v13, v13, v19

    .line 349
    add-long/2addr v7, v13

    .line 350
    add-long/2addr v9, v11

    .line 351
    .line 352
    const-wide/16 v11, 0x5

    .line 353
    add-long/2addr v9, v11

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 357
    move-result-wide v2

    .line 358
    goto :goto_3

    .line 359
    .line 360
    :pswitch_4
    move/from16 v24, v7

    .line 361
    .line 362
    move/from16 v25, v8

    .line 363
    move v15, v9

    .line 364
    .line 365
    const/16 v21, 0x10

    .line 366
    .line 367
    const-wide/16 v22, -0x1

    .line 368
    .line 369
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 370
    .line 371
    sget-wide v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 372
    int-to-long v9, v2

    .line 373
    .line 374
    add-long v11, v7, v9

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 378
    move-result v2

    .line 379
    int-to-long v11, v2

    .line 380
    add-long/2addr v7, v9

    .line 381
    .line 382
    const-wide/16 v9, 0x4

    .line 383
    add-long/2addr v7, v9

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 387
    move-result-wide v2

    .line 388
    .line 389
    :goto_4
    move-wide/from16 v30, v2

    .line 390
    .line 391
    goto/16 :goto_2

    .line 392
    .line 393
    :pswitch_5
    move/from16 v24, v7

    .line 394
    .line 395
    move/from16 v25, v8

    .line 396
    move v15, v9

    .line 397
    .line 398
    const/16 v21, 0x10

    .line 399
    .line 400
    const-wide/16 v22, -0x1

    .line 401
    .line 402
    aget-byte v3, v1, v2

    .line 403
    .line 404
    shl-int/lit8 v3, v3, 0x10

    .line 405
    int-to-long v7, v3

    .line 406
    .line 407
    add-int/lit8 v3, v2, 0x1

    .line 408
    .line 409
    aget-byte v3, v1, v3

    .line 410
    int-to-long v9, v3

    .line 411
    .line 412
    and-long v9, v9, v17

    .line 413
    shl-long/2addr v9, v15

    .line 414
    add-long/2addr v7, v9

    .line 415
    .line 416
    add-int/lit8 v3, v2, 0x2

    .line 417
    .line 418
    aget-byte v3, v1, v3

    .line 419
    int-to-long v9, v3

    .line 420
    .line 421
    and-long v9, v9, v17

    .line 422
    .line 423
    add-long v11, v7, v9

    .line 424
    .line 425
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 426
    .line 427
    sget-wide v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 428
    int-to-long v9, v2

    .line 429
    add-long/2addr v7, v9

    .line 430
    .line 431
    const-wide/16 v9, 0x3

    .line 432
    add-long/2addr v7, v9

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 436
    move-result-wide v2

    .line 437
    goto :goto_4

    .line 438
    .line 439
    :pswitch_6
    move/from16 v24, v7

    .line 440
    .line 441
    move/from16 v25, v8

    .line 442
    move v15, v9

    .line 443
    .line 444
    const/16 v21, 0x10

    .line 445
    .line 446
    const-wide/16 v22, -0x1

    .line 447
    .line 448
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 449
    .line 450
    sget-wide v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 451
    int-to-long v9, v2

    .line 452
    .line 453
    add-long v11, v7, v9

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3, v1, v11, v12}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 457
    move-result v2

    .line 458
    int-to-long v11, v2

    .line 459
    add-long/2addr v7, v9

    .line 460
    .line 461
    const-wide/16 v9, 0x2

    .line 462
    add-long/2addr v7, v9

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 466
    move-result-wide v2

    .line 467
    goto :goto_4

    .line 468
    .line 469
    :pswitch_7
    move/from16 v24, v7

    .line 470
    .line 471
    move/from16 v25, v8

    .line 472
    move v15, v9

    .line 473
    .line 474
    const/16 v21, 0x10

    .line 475
    .line 476
    const-wide/16 v22, -0x1

    .line 477
    .line 478
    aget-byte v3, v1, v2

    .line 479
    int-to-long v11, v3

    .line 480
    .line 481
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 482
    .line 483
    sget-wide v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 484
    int-to-long v9, v2

    .line 485
    add-long/2addr v7, v9

    .line 486
    .line 487
    const-wide/16 v9, 0x1

    .line 488
    add-long/2addr v7, v9

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 492
    move-result-wide v2

    .line 493
    goto :goto_4

    .line 494
    .line 495
    :pswitch_8
    move/from16 v24, v7

    .line 496
    .line 497
    move/from16 v25, v8

    .line 498
    move v15, v9

    .line 499
    .line 500
    const/16 v21, 0x10

    .line 501
    .line 502
    const-wide/16 v22, -0x1

    .line 503
    .line 504
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 505
    .line 506
    sget-wide v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 507
    int-to-long v9, v2

    .line 508
    add-long/2addr v7, v9

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 512
    move-result-wide v11

    .line 513
    .line 514
    :goto_5
    move-wide/from16 v28, v11

    .line 515
    .line 516
    move-wide/from16 v30, v22

    .line 517
    .line 518
    goto/16 :goto_b

    .line 519
    .line 520
    :pswitch_9
    move/from16 v24, v7

    .line 521
    .line 522
    move/from16 v25, v8

    .line 523
    move v15, v9

    .line 524
    .line 525
    const/16 v21, 0x10

    .line 526
    .line 527
    const-wide/16 v22, -0x1

    .line 528
    .line 529
    add-int/lit8 v3, v2, 0x6

    .line 530
    .line 531
    aget-byte v3, v1, v3

    .line 532
    int-to-long v7, v3

    .line 533
    shl-long/2addr v7, v11

    .line 534
    .line 535
    add-int/lit8 v3, v2, 0x5

    .line 536
    .line 537
    aget-byte v3, v1, v3

    .line 538
    int-to-long v9, v3

    .line 539
    .line 540
    and-long v9, v9, v17

    .line 541
    .line 542
    shl-long v9, v9, v16

    .line 543
    add-long/2addr v7, v9

    .line 544
    .line 545
    add-int/lit8 v3, v2, 0x4

    .line 546
    .line 547
    aget-byte v3, v1, v3

    .line 548
    int-to-long v9, v3

    .line 549
    .line 550
    and-long v9, v9, v17

    .line 551
    .line 552
    shl-long v9, v9, v25

    .line 553
    add-long/2addr v7, v9

    .line 554
    .line 555
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 556
    .line 557
    sget-wide v9, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 558
    int-to-long v11, v2

    .line 559
    add-long/2addr v9, v11

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 563
    move-result v2

    .line 564
    :goto_6
    int-to-long v2, v2

    .line 565
    .line 566
    and-long v2, v2, v19

    .line 567
    .line 568
    :goto_7
    add-long v11, v7, v2

    .line 569
    goto :goto_5

    .line 570
    .line 571
    :pswitch_a
    move/from16 v24, v7

    .line 572
    .line 573
    move/from16 v25, v8

    .line 574
    move v15, v9

    .line 575
    .line 576
    const/16 v21, 0x10

    .line 577
    .line 578
    const-wide/16 v22, -0x1

    .line 579
    .line 580
    add-int/lit8 v3, v2, 0x5

    .line 581
    .line 582
    aget-byte v3, v1, v3

    .line 583
    int-to-long v7, v3

    .line 584
    .line 585
    shl-long v7, v7, v16

    .line 586
    .line 587
    add-int/lit8 v3, v2, 0x4

    .line 588
    .line 589
    aget-byte v3, v1, v3

    .line 590
    int-to-long v9, v3

    .line 591
    .line 592
    and-long v9, v9, v17

    .line 593
    .line 594
    shl-long v9, v9, v25

    .line 595
    add-long/2addr v7, v9

    .line 596
    .line 597
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 598
    .line 599
    sget-wide v9, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 600
    int-to-long v11, v2

    .line 601
    add-long/2addr v9, v11

    .line 602
    .line 603
    .line 604
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 605
    move-result v2

    .line 606
    goto :goto_6

    .line 607
    .line 608
    :pswitch_b
    move/from16 v24, v7

    .line 609
    .line 610
    move/from16 v25, v8

    .line 611
    move v15, v9

    .line 612
    .line 613
    const/16 v21, 0x10

    .line 614
    .line 615
    const-wide/16 v22, -0x1

    .line 616
    .line 617
    add-int/lit8 v3, v2, 0x4

    .line 618
    .line 619
    aget-byte v3, v1, v3

    .line 620
    int-to-long v7, v3

    .line 621
    .line 622
    shl-long v7, v7, v25

    .line 623
    .line 624
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 625
    .line 626
    sget-wide v9, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 627
    int-to-long v11, v2

    .line 628
    add-long/2addr v9, v11

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 632
    move-result v2

    .line 633
    goto :goto_6

    .line 634
    .line 635
    :pswitch_c
    move/from16 v24, v7

    .line 636
    .line 637
    move/from16 v25, v8

    .line 638
    move v15, v9

    .line 639
    .line 640
    const/16 v21, 0x10

    .line 641
    .line 642
    const-wide/16 v22, -0x1

    .line 643
    .line 644
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 645
    .line 646
    sget-wide v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 647
    int-to-long v9, v2

    .line 648
    add-long/2addr v7, v9

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 652
    move-result v2

    .line 653
    int-to-long v11, v2

    .line 654
    .line 655
    goto/16 :goto_5

    .line 656
    .line 657
    :pswitch_d
    move/from16 v24, v7

    .line 658
    .line 659
    move/from16 v25, v8

    .line 660
    move v15, v9

    .line 661
    .line 662
    const/16 v21, 0x10

    .line 663
    .line 664
    const-wide/16 v22, -0x1

    .line 665
    .line 666
    add-int/lit8 v3, v2, 0x2

    .line 667
    .line 668
    aget-byte v3, v1, v3

    .line 669
    .line 670
    shl-int/lit8 v3, v3, 0x10

    .line 671
    int-to-long v7, v3

    .line 672
    .line 673
    add-int/lit8 v3, v2, 0x1

    .line 674
    .line 675
    aget-byte v3, v1, v3

    .line 676
    int-to-long v9, v3

    .line 677
    .line 678
    and-long v9, v9, v17

    .line 679
    shl-long/2addr v9, v15

    .line 680
    add-long/2addr v7, v9

    .line 681
    .line 682
    aget-byte v2, v1, v2

    .line 683
    :goto_8
    int-to-long v2, v2

    .line 684
    .line 685
    and-long v2, v2, v17

    .line 686
    goto :goto_7

    .line 687
    .line 688
    :pswitch_e
    move/from16 v24, v7

    .line 689
    .line 690
    move/from16 v25, v8

    .line 691
    move v15, v9

    .line 692
    .line 693
    const/16 v21, 0x10

    .line 694
    .line 695
    const-wide/16 v22, -0x1

    .line 696
    .line 697
    add-int/lit8 v3, v2, 0x1

    .line 698
    .line 699
    aget-byte v3, v1, v3

    .line 700
    int-to-long v7, v3

    .line 701
    .line 702
    and-long v7, v7, v17

    .line 703
    shl-long/2addr v7, v15

    .line 704
    .line 705
    aget-byte v2, v1, v2

    .line 706
    goto :goto_8

    .line 707
    .line 708
    :pswitch_f
    move/from16 v24, v7

    .line 709
    .line 710
    move/from16 v25, v8

    .line 711
    move v15, v9

    .line 712
    .line 713
    const/16 v21, 0x10

    .line 714
    .line 715
    const-wide/16 v22, -0x1

    .line 716
    .line 717
    aget-byte v2, v1, v2

    .line 718
    int-to-long v2, v2

    .line 719
    .line 720
    and-long v11, v2, v17

    .line 721
    .line 722
    goto/16 :goto_5

    .line 723
    .line 724
    :cond_7
    move/from16 v24, v7

    .line 725
    .line 726
    move/from16 v25, v8

    .line 727
    move v15, v9

    .line 728
    .line 729
    const/16 v21, 0x10

    .line 730
    .line 731
    const-wide/16 v22, -0x1

    .line 732
    .line 733
    const/16 v7, 0x18

    .line 734
    .line 735
    .line 736
    packed-switch v3, :pswitch_data_1

    .line 737
    .line 738
    :goto_9
    move-wide/from16 v28, v22

    .line 739
    .line 740
    move-wide/from16 v30, v28

    .line 741
    .line 742
    goto/16 :goto_b

    .line 743
    .line 744
    :pswitch_10
    add-int/lit8 v3, v2, 0x7

    .line 745
    .line 746
    aget-byte v3, v1, v3

    .line 747
    int-to-long v8, v3

    .line 748
    shl-long/2addr v8, v10

    .line 749
    .line 750
    add-int/lit8 v3, v2, 0x6

    .line 751
    .line 752
    aget-byte v3, v1, v3

    .line 753
    shl-int/2addr v3, v11

    .line 754
    int-to-long v12, v3

    .line 755
    add-long/2addr v8, v12

    .line 756
    .line 757
    add-int/lit8 v3, v2, 0x5

    .line 758
    .line 759
    aget-byte v3, v1, v3

    .line 760
    int-to-long v12, v3

    .line 761
    .line 762
    and-long v12, v12, v17

    .line 763
    .line 764
    shl-long v12, v12, v16

    .line 765
    add-long/2addr v8, v12

    .line 766
    .line 767
    add-int/lit8 v3, v2, 0x4

    .line 768
    .line 769
    aget-byte v3, v1, v3

    .line 770
    int-to-long v12, v3

    .line 771
    .line 772
    and-long v12, v12, v17

    .line 773
    .line 774
    shl-long v12, v12, v25

    .line 775
    add-long/2addr v8, v12

    .line 776
    .line 777
    add-int/lit8 v3, v2, 0x3

    .line 778
    .line 779
    aget-byte v3, v1, v3

    .line 780
    int-to-long v12, v3

    .line 781
    .line 782
    and-long v12, v12, v17

    .line 783
    shl-long/2addr v12, v7

    .line 784
    add-long/2addr v8, v12

    .line 785
    .line 786
    add-int/lit8 v3, v2, 0x2

    .line 787
    .line 788
    aget-byte v3, v1, v3

    .line 789
    int-to-long v12, v3

    .line 790
    .line 791
    and-long v12, v12, v17

    .line 792
    .line 793
    shl-long v12, v12, v21

    .line 794
    add-long/2addr v8, v12

    .line 795
    .line 796
    add-int/lit8 v3, v2, 0x1

    .line 797
    .line 798
    aget-byte v3, v1, v3

    .line 799
    int-to-long v12, v3

    .line 800
    .line 801
    and-long v12, v12, v17

    .line 802
    shl-long/2addr v12, v15

    .line 803
    add-long/2addr v8, v12

    .line 804
    .line 805
    aget-byte v3, v1, v2

    .line 806
    int-to-long v12, v3

    .line 807
    .line 808
    and-long v12, v12, v17

    .line 809
    add-long/2addr v8, v12

    .line 810
    .line 811
    add-int/lit8 v3, v2, 0xf

    .line 812
    .line 813
    aget-byte v3, v1, v3

    .line 814
    int-to-long v12, v3

    .line 815
    shl-long/2addr v12, v10

    .line 816
    .line 817
    add-int/lit8 v3, v2, 0xe

    .line 818
    .line 819
    aget-byte v3, v1, v3

    .line 820
    move v14, v7

    .line 821
    .line 822
    move-wide/from16 v19, v8

    .line 823
    int-to-long v7, v3

    .line 824
    .line 825
    and-long v7, v7, v17

    .line 826
    shl-long/2addr v7, v11

    .line 827
    add-long/2addr v12, v7

    .line 828
    .line 829
    add-int/lit8 v3, v2, 0xd

    .line 830
    .line 831
    aget-byte v3, v1, v3

    .line 832
    int-to-long v7, v3

    .line 833
    .line 834
    and-long v7, v7, v17

    .line 835
    .line 836
    shl-long v7, v7, v16

    .line 837
    add-long/2addr v12, v7

    .line 838
    .line 839
    add-int/lit8 v3, v2, 0xc

    .line 840
    .line 841
    aget-byte v3, v1, v3

    .line 842
    int-to-long v7, v3

    .line 843
    .line 844
    and-long v7, v7, v17

    .line 845
    .line 846
    shl-long v7, v7, v25

    .line 847
    add-long/2addr v12, v7

    .line 848
    .line 849
    add-int/lit8 v3, v2, 0xb

    .line 850
    .line 851
    aget-byte v3, v1, v3

    .line 852
    int-to-long v7, v3

    .line 853
    .line 854
    and-long v7, v7, v17

    .line 855
    shl-long/2addr v7, v14

    .line 856
    add-long/2addr v12, v7

    .line 857
    .line 858
    add-int/lit8 v3, v2, 0xa

    .line 859
    .line 860
    aget-byte v3, v1, v3

    .line 861
    int-to-long v7, v3

    .line 862
    .line 863
    and-long v7, v7, v17

    .line 864
    .line 865
    shl-long v7, v7, v21

    .line 866
    add-long/2addr v12, v7

    .line 867
    .line 868
    add-int/lit8 v3, v2, 0x9

    .line 869
    .line 870
    aget-byte v3, v1, v3

    .line 871
    int-to-long v7, v3

    .line 872
    .line 873
    and-long v7, v7, v17

    .line 874
    shl-long/2addr v7, v15

    .line 875
    add-long/2addr v12, v7

    .line 876
    add-int/2addr v2, v15

    .line 877
    .line 878
    aget-byte v2, v1, v2

    .line 879
    int-to-long v2, v2

    .line 880
    .line 881
    and-long v2, v2, v17

    .line 882
    add-long/2addr v2, v12

    .line 883
    .line 884
    move-wide/from16 v30, v2

    .line 885
    .line 886
    move-wide/from16 v28, v19

    .line 887
    .line 888
    goto/16 :goto_b

    .line 889
    :pswitch_11
    move v14, v7

    .line 890
    .line 891
    add-int/lit8 v3, v2, 0x6

    .line 892
    .line 893
    aget-byte v3, v1, v3

    .line 894
    int-to-long v7, v3

    .line 895
    shl-long/2addr v7, v11

    .line 896
    .line 897
    add-int/lit8 v3, v2, 0x5

    .line 898
    .line 899
    aget-byte v3, v1, v3

    .line 900
    int-to-long v12, v3

    .line 901
    .line 902
    and-long v12, v12, v17

    .line 903
    .line 904
    shl-long v12, v12, v16

    .line 905
    add-long/2addr v7, v12

    .line 906
    .line 907
    add-int/lit8 v3, v2, 0x4

    .line 908
    .line 909
    aget-byte v3, v1, v3

    .line 910
    int-to-long v12, v3

    .line 911
    .line 912
    and-long v12, v12, v17

    .line 913
    .line 914
    shl-long v12, v12, v25

    .line 915
    add-long/2addr v7, v12

    .line 916
    .line 917
    add-int/lit8 v3, v2, 0x3

    .line 918
    .line 919
    aget-byte v3, v1, v3

    .line 920
    int-to-long v12, v3

    .line 921
    .line 922
    and-long v12, v12, v17

    .line 923
    shl-long/2addr v12, v14

    .line 924
    add-long/2addr v7, v12

    .line 925
    .line 926
    add-int/lit8 v3, v2, 0x2

    .line 927
    .line 928
    aget-byte v3, v1, v3

    .line 929
    int-to-long v12, v3

    .line 930
    .line 931
    and-long v12, v12, v17

    .line 932
    .line 933
    shl-long v12, v12, v21

    .line 934
    add-long/2addr v7, v12

    .line 935
    .line 936
    add-int/lit8 v3, v2, 0x1

    .line 937
    .line 938
    aget-byte v3, v1, v3

    .line 939
    int-to-long v12, v3

    .line 940
    .line 941
    and-long v12, v12, v17

    .line 942
    shl-long/2addr v12, v15

    .line 943
    add-long/2addr v7, v12

    .line 944
    .line 945
    aget-byte v3, v1, v2

    .line 946
    int-to-long v12, v3

    .line 947
    .line 948
    and-long v12, v12, v17

    .line 949
    add-long/2addr v7, v12

    .line 950
    .line 951
    add-int/lit8 v3, v2, 0xe

    .line 952
    .line 953
    aget-byte v3, v1, v3

    .line 954
    int-to-long v12, v3

    .line 955
    .line 956
    shl-long v9, v12, v10

    .line 957
    .line 958
    add-int/lit8 v3, v2, 0xd

    .line 959
    .line 960
    aget-byte v3, v1, v3

    .line 961
    int-to-long v12, v3

    .line 962
    .line 963
    and-long v12, v12, v17

    .line 964
    .line 965
    shl-long v11, v12, v11

    .line 966
    add-long/2addr v9, v11

    .line 967
    .line 968
    add-int/lit8 v3, v2, 0xc

    .line 969
    .line 970
    aget-byte v3, v1, v3

    .line 971
    int-to-long v11, v3

    .line 972
    .line 973
    and-long v11, v11, v17

    .line 974
    .line 975
    shl-long v11, v11, v16

    .line 976
    add-long/2addr v9, v11

    .line 977
    .line 978
    add-int/lit8 v3, v2, 0xb

    .line 979
    .line 980
    aget-byte v3, v1, v3

    .line 981
    int-to-long v11, v3

    .line 982
    .line 983
    and-long v11, v11, v17

    .line 984
    .line 985
    shl-long v11, v11, v25

    .line 986
    add-long/2addr v9, v11

    .line 987
    .line 988
    add-int/lit8 v3, v2, 0xa

    .line 989
    .line 990
    aget-byte v3, v1, v3

    .line 991
    int-to-long v11, v3

    .line 992
    .line 993
    and-long v11, v11, v17

    .line 994
    shl-long/2addr v11, v14

    .line 995
    add-long/2addr v9, v11

    .line 996
    .line 997
    add-int/lit8 v3, v2, 0x9

    .line 998
    .line 999
    aget-byte v3, v1, v3

    .line 1000
    int-to-long v11, v3

    .line 1001
    .line 1002
    and-long v11, v11, v17

    .line 1003
    .line 1004
    shl-long v11, v11, v21

    .line 1005
    add-long/2addr v9, v11

    .line 1006
    .line 1007
    add-int/lit8 v3, v2, 0x8

    .line 1008
    .line 1009
    aget-byte v3, v1, v3

    .line 1010
    int-to-long v11, v3

    .line 1011
    .line 1012
    and-long v11, v11, v17

    .line 1013
    shl-long/2addr v11, v15

    .line 1014
    add-long/2addr v9, v11

    .line 1015
    .line 1016
    add-int/lit8 v2, v2, 0x7

    .line 1017
    .line 1018
    aget-byte v2, v1, v2

    .line 1019
    :goto_a
    int-to-long v2, v2

    .line 1020
    .line 1021
    and-long v2, v2, v17

    .line 1022
    add-long/2addr v2, v9

    .line 1023
    .line 1024
    goto/16 :goto_3

    .line 1025
    :pswitch_12
    move v14, v7

    .line 1026
    .line 1027
    add-int/lit8 v3, v2, 0x5

    .line 1028
    .line 1029
    aget-byte v3, v1, v3

    .line 1030
    int-to-long v7, v3

    .line 1031
    .line 1032
    shl-long v7, v7, v16

    .line 1033
    .line 1034
    add-int/lit8 v3, v2, 0x4

    .line 1035
    .line 1036
    aget-byte v3, v1, v3

    .line 1037
    int-to-long v12, v3

    .line 1038
    .line 1039
    and-long v12, v12, v17

    .line 1040
    .line 1041
    shl-long v12, v12, v25

    .line 1042
    add-long/2addr v7, v12

    .line 1043
    .line 1044
    add-int/lit8 v3, v2, 0x3

    .line 1045
    .line 1046
    aget-byte v3, v1, v3

    .line 1047
    int-to-long v12, v3

    .line 1048
    .line 1049
    and-long v12, v12, v17

    .line 1050
    shl-long/2addr v12, v14

    .line 1051
    add-long/2addr v7, v12

    .line 1052
    .line 1053
    add-int/lit8 v3, v2, 0x2

    .line 1054
    .line 1055
    aget-byte v3, v1, v3

    .line 1056
    int-to-long v12, v3

    .line 1057
    .line 1058
    and-long v12, v12, v17

    .line 1059
    .line 1060
    shl-long v12, v12, v21

    .line 1061
    add-long/2addr v7, v12

    .line 1062
    .line 1063
    add-int/lit8 v3, v2, 0x1

    .line 1064
    .line 1065
    aget-byte v3, v1, v3

    .line 1066
    int-to-long v12, v3

    .line 1067
    .line 1068
    and-long v12, v12, v17

    .line 1069
    shl-long/2addr v12, v15

    .line 1070
    add-long/2addr v7, v12

    .line 1071
    .line 1072
    aget-byte v3, v1, v2

    .line 1073
    int-to-long v12, v3

    .line 1074
    .line 1075
    and-long v12, v12, v17

    .line 1076
    add-long/2addr v7, v12

    .line 1077
    .line 1078
    add-int/lit8 v3, v2, 0xd

    .line 1079
    .line 1080
    aget-byte v3, v1, v3

    .line 1081
    int-to-long v12, v3

    .line 1082
    .line 1083
    shl-long v9, v12, v10

    .line 1084
    .line 1085
    add-int/lit8 v3, v2, 0xc

    .line 1086
    .line 1087
    aget-byte v3, v1, v3

    .line 1088
    int-to-long v12, v3

    .line 1089
    .line 1090
    and-long v12, v12, v17

    .line 1091
    .line 1092
    shl-long v11, v12, v11

    .line 1093
    add-long/2addr v9, v11

    .line 1094
    .line 1095
    add-int/lit8 v3, v2, 0xb

    .line 1096
    .line 1097
    aget-byte v3, v1, v3

    .line 1098
    int-to-long v11, v3

    .line 1099
    .line 1100
    and-long v11, v11, v17

    .line 1101
    .line 1102
    shl-long v11, v11, v16

    .line 1103
    add-long/2addr v9, v11

    .line 1104
    .line 1105
    add-int/lit8 v3, v2, 0xa

    .line 1106
    .line 1107
    aget-byte v3, v1, v3

    .line 1108
    int-to-long v11, v3

    .line 1109
    .line 1110
    and-long v11, v11, v17

    .line 1111
    .line 1112
    shl-long v11, v11, v25

    .line 1113
    add-long/2addr v9, v11

    .line 1114
    .line 1115
    add-int/lit8 v3, v2, 0x9

    .line 1116
    .line 1117
    aget-byte v3, v1, v3

    .line 1118
    int-to-long v11, v3

    .line 1119
    .line 1120
    and-long v11, v11, v17

    .line 1121
    shl-long/2addr v11, v14

    .line 1122
    add-long/2addr v9, v11

    .line 1123
    .line 1124
    add-int/lit8 v3, v2, 0x8

    .line 1125
    .line 1126
    aget-byte v3, v1, v3

    .line 1127
    int-to-long v11, v3

    .line 1128
    .line 1129
    and-long v11, v11, v17

    .line 1130
    .line 1131
    shl-long v11, v11, v21

    .line 1132
    add-long/2addr v9, v11

    .line 1133
    .line 1134
    add-int/lit8 v3, v2, 0x7

    .line 1135
    .line 1136
    aget-byte v3, v1, v3

    .line 1137
    int-to-long v11, v3

    .line 1138
    .line 1139
    and-long v11, v11, v17

    .line 1140
    shl-long/2addr v11, v15

    .line 1141
    add-long/2addr v9, v11

    .line 1142
    .line 1143
    add-int/lit8 v2, v2, 0x6

    .line 1144
    .line 1145
    aget-byte v2, v1, v2

    .line 1146
    goto :goto_a

    .line 1147
    :pswitch_13
    move v14, v7

    .line 1148
    .line 1149
    add-int/lit8 v3, v2, 0x4

    .line 1150
    .line 1151
    aget-byte v3, v1, v3

    .line 1152
    int-to-long v7, v3

    .line 1153
    .line 1154
    shl-long v7, v7, v25

    .line 1155
    .line 1156
    add-int/lit8 v3, v2, 0x3

    .line 1157
    .line 1158
    aget-byte v3, v1, v3

    .line 1159
    int-to-long v12, v3

    .line 1160
    .line 1161
    and-long v12, v12, v17

    .line 1162
    shl-long/2addr v12, v14

    .line 1163
    add-long/2addr v7, v12

    .line 1164
    .line 1165
    add-int/lit8 v3, v2, 0x2

    .line 1166
    .line 1167
    aget-byte v3, v1, v3

    .line 1168
    int-to-long v12, v3

    .line 1169
    .line 1170
    and-long v12, v12, v17

    .line 1171
    .line 1172
    shl-long v12, v12, v21

    .line 1173
    add-long/2addr v7, v12

    .line 1174
    .line 1175
    add-int/lit8 v3, v2, 0x1

    .line 1176
    .line 1177
    aget-byte v3, v1, v3

    .line 1178
    int-to-long v12, v3

    .line 1179
    .line 1180
    and-long v12, v12, v17

    .line 1181
    shl-long/2addr v12, v15

    .line 1182
    add-long/2addr v7, v12

    .line 1183
    .line 1184
    aget-byte v3, v1, v2

    .line 1185
    int-to-long v12, v3

    .line 1186
    .line 1187
    and-long v12, v12, v17

    .line 1188
    add-long/2addr v7, v12

    .line 1189
    .line 1190
    add-int/lit8 v3, v2, 0xc

    .line 1191
    .line 1192
    aget-byte v3, v1, v3

    .line 1193
    int-to-long v12, v3

    .line 1194
    .line 1195
    shl-long v9, v12, v10

    .line 1196
    .line 1197
    add-int/lit8 v3, v2, 0xb

    .line 1198
    .line 1199
    aget-byte v3, v1, v3

    .line 1200
    int-to-long v12, v3

    .line 1201
    .line 1202
    and-long v12, v12, v17

    .line 1203
    .line 1204
    shl-long v11, v12, v11

    .line 1205
    add-long/2addr v9, v11

    .line 1206
    .line 1207
    add-int/lit8 v3, v2, 0xa

    .line 1208
    .line 1209
    aget-byte v3, v1, v3

    .line 1210
    int-to-long v11, v3

    .line 1211
    .line 1212
    and-long v11, v11, v17

    .line 1213
    .line 1214
    shl-long v11, v11, v16

    .line 1215
    add-long/2addr v9, v11

    .line 1216
    .line 1217
    add-int/lit8 v3, v2, 0x9

    .line 1218
    .line 1219
    aget-byte v3, v1, v3

    .line 1220
    int-to-long v11, v3

    .line 1221
    .line 1222
    and-long v11, v11, v17

    .line 1223
    .line 1224
    shl-long v11, v11, v25

    .line 1225
    add-long/2addr v9, v11

    .line 1226
    .line 1227
    add-int/lit8 v3, v2, 0x8

    .line 1228
    .line 1229
    aget-byte v3, v1, v3

    .line 1230
    int-to-long v11, v3

    .line 1231
    .line 1232
    and-long v11, v11, v17

    .line 1233
    shl-long/2addr v11, v14

    .line 1234
    add-long/2addr v9, v11

    .line 1235
    .line 1236
    add-int/lit8 v3, v2, 0x7

    .line 1237
    .line 1238
    aget-byte v3, v1, v3

    .line 1239
    int-to-long v11, v3

    .line 1240
    .line 1241
    and-long v11, v11, v17

    .line 1242
    .line 1243
    shl-long v11, v11, v21

    .line 1244
    add-long/2addr v9, v11

    .line 1245
    .line 1246
    add-int/lit8 v3, v2, 0x6

    .line 1247
    .line 1248
    aget-byte v3, v1, v3

    .line 1249
    int-to-long v11, v3

    .line 1250
    .line 1251
    and-long v11, v11, v17

    .line 1252
    shl-long/2addr v11, v15

    .line 1253
    add-long/2addr v9, v11

    .line 1254
    .line 1255
    add-int/lit8 v2, v2, 0x5

    .line 1256
    .line 1257
    aget-byte v2, v1, v2

    .line 1258
    .line 1259
    goto/16 :goto_a

    .line 1260
    :pswitch_14
    move v14, v7

    .line 1261
    .line 1262
    add-int/lit8 v3, v2, 0x3

    .line 1263
    .line 1264
    aget-byte v3, v1, v3

    .line 1265
    shl-int/2addr v3, v14

    .line 1266
    int-to-long v7, v3

    .line 1267
    .line 1268
    add-int/lit8 v3, v2, 0x2

    .line 1269
    .line 1270
    aget-byte v3, v1, v3

    .line 1271
    int-to-long v12, v3

    .line 1272
    .line 1273
    and-long v12, v12, v17

    .line 1274
    .line 1275
    shl-long v12, v12, v21

    .line 1276
    add-long/2addr v7, v12

    .line 1277
    .line 1278
    add-int/lit8 v3, v2, 0x1

    .line 1279
    .line 1280
    aget-byte v3, v1, v3

    .line 1281
    int-to-long v12, v3

    .line 1282
    .line 1283
    and-long v12, v12, v17

    .line 1284
    shl-long/2addr v12, v15

    .line 1285
    add-long/2addr v7, v12

    .line 1286
    .line 1287
    aget-byte v3, v1, v2

    .line 1288
    int-to-long v12, v3

    .line 1289
    .line 1290
    and-long v12, v12, v17

    .line 1291
    add-long/2addr v7, v12

    .line 1292
    .line 1293
    add-int/lit8 v3, v2, 0xb

    .line 1294
    .line 1295
    aget-byte v3, v1, v3

    .line 1296
    int-to-long v12, v3

    .line 1297
    .line 1298
    shl-long v9, v12, v10

    .line 1299
    .line 1300
    add-int/lit8 v3, v2, 0xa

    .line 1301
    .line 1302
    aget-byte v3, v1, v3

    .line 1303
    int-to-long v12, v3

    .line 1304
    .line 1305
    and-long v12, v12, v17

    .line 1306
    .line 1307
    shl-long v11, v12, v11

    .line 1308
    add-long/2addr v9, v11

    .line 1309
    .line 1310
    add-int/lit8 v3, v2, 0x9

    .line 1311
    .line 1312
    aget-byte v3, v1, v3

    .line 1313
    int-to-long v11, v3

    .line 1314
    .line 1315
    and-long v11, v11, v17

    .line 1316
    .line 1317
    shl-long v11, v11, v16

    .line 1318
    add-long/2addr v9, v11

    .line 1319
    .line 1320
    add-int/lit8 v3, v2, 0x8

    .line 1321
    .line 1322
    aget-byte v3, v1, v3

    .line 1323
    int-to-long v11, v3

    .line 1324
    .line 1325
    and-long v11, v11, v17

    .line 1326
    .line 1327
    shl-long v11, v11, v25

    .line 1328
    add-long/2addr v9, v11

    .line 1329
    .line 1330
    add-int/lit8 v3, v2, 0x7

    .line 1331
    .line 1332
    aget-byte v3, v1, v3

    .line 1333
    int-to-long v11, v3

    .line 1334
    .line 1335
    and-long v11, v11, v17

    .line 1336
    shl-long/2addr v11, v14

    .line 1337
    add-long/2addr v9, v11

    .line 1338
    .line 1339
    add-int/lit8 v3, v2, 0x6

    .line 1340
    .line 1341
    aget-byte v3, v1, v3

    .line 1342
    int-to-long v11, v3

    .line 1343
    .line 1344
    and-long v11, v11, v17

    .line 1345
    .line 1346
    shl-long v11, v11, v21

    .line 1347
    add-long/2addr v9, v11

    .line 1348
    .line 1349
    add-int/lit8 v3, v2, 0x5

    .line 1350
    .line 1351
    aget-byte v3, v1, v3

    .line 1352
    int-to-long v11, v3

    .line 1353
    .line 1354
    and-long v11, v11, v17

    .line 1355
    shl-long/2addr v11, v15

    .line 1356
    add-long/2addr v9, v11

    .line 1357
    .line 1358
    add-int/lit8 v2, v2, 0x4

    .line 1359
    .line 1360
    aget-byte v2, v1, v2

    .line 1361
    .line 1362
    goto/16 :goto_a

    .line 1363
    :pswitch_15
    move v14, v7

    .line 1364
    .line 1365
    add-int/lit8 v3, v2, 0x2

    .line 1366
    .line 1367
    aget-byte v3, v1, v3

    .line 1368
    .line 1369
    shl-int/lit8 v3, v3, 0x10

    .line 1370
    int-to-long v7, v3

    .line 1371
    .line 1372
    add-int/lit8 v3, v2, 0x1

    .line 1373
    .line 1374
    aget-byte v3, v1, v3

    .line 1375
    int-to-long v12, v3

    .line 1376
    .line 1377
    and-long v12, v12, v17

    .line 1378
    shl-long/2addr v12, v15

    .line 1379
    add-long/2addr v7, v12

    .line 1380
    .line 1381
    aget-byte v3, v1, v2

    .line 1382
    int-to-long v12, v3

    .line 1383
    .line 1384
    and-long v12, v12, v17

    .line 1385
    add-long/2addr v7, v12

    .line 1386
    .line 1387
    add-int/lit8 v3, v2, 0xa

    .line 1388
    .line 1389
    aget-byte v3, v1, v3

    .line 1390
    int-to-long v12, v3

    .line 1391
    .line 1392
    shl-long v9, v12, v10

    .line 1393
    .line 1394
    add-int/lit8 v3, v2, 0x9

    .line 1395
    .line 1396
    aget-byte v3, v1, v3

    .line 1397
    int-to-long v12, v3

    .line 1398
    .line 1399
    and-long v12, v12, v17

    .line 1400
    .line 1401
    shl-long v11, v12, v11

    .line 1402
    add-long/2addr v9, v11

    .line 1403
    .line 1404
    add-int/lit8 v3, v2, 0x8

    .line 1405
    .line 1406
    aget-byte v3, v1, v3

    .line 1407
    int-to-long v11, v3

    .line 1408
    .line 1409
    and-long v11, v11, v17

    .line 1410
    .line 1411
    shl-long v11, v11, v16

    .line 1412
    add-long/2addr v9, v11

    .line 1413
    .line 1414
    add-int/lit8 v3, v2, 0x7

    .line 1415
    .line 1416
    aget-byte v3, v1, v3

    .line 1417
    int-to-long v11, v3

    .line 1418
    .line 1419
    and-long v11, v11, v17

    .line 1420
    .line 1421
    shl-long v11, v11, v25

    .line 1422
    add-long/2addr v9, v11

    .line 1423
    .line 1424
    add-int/lit8 v3, v2, 0x6

    .line 1425
    .line 1426
    aget-byte v3, v1, v3

    .line 1427
    int-to-long v11, v3

    .line 1428
    .line 1429
    and-long v11, v11, v17

    .line 1430
    shl-long/2addr v11, v14

    .line 1431
    add-long/2addr v9, v11

    .line 1432
    .line 1433
    add-int/lit8 v3, v2, 0x5

    .line 1434
    .line 1435
    aget-byte v3, v1, v3

    .line 1436
    int-to-long v11, v3

    .line 1437
    .line 1438
    and-long v11, v11, v17

    .line 1439
    .line 1440
    shl-long v11, v11, v21

    .line 1441
    add-long/2addr v9, v11

    .line 1442
    .line 1443
    add-int/lit8 v3, v2, 0x4

    .line 1444
    .line 1445
    aget-byte v3, v1, v3

    .line 1446
    int-to-long v11, v3

    .line 1447
    .line 1448
    and-long v11, v11, v17

    .line 1449
    shl-long/2addr v11, v15

    .line 1450
    add-long/2addr v9, v11

    .line 1451
    .line 1452
    add-int/lit8 v2, v2, 0x3

    .line 1453
    .line 1454
    aget-byte v2, v1, v2

    .line 1455
    .line 1456
    goto/16 :goto_a

    .line 1457
    :pswitch_16
    move v14, v7

    .line 1458
    .line 1459
    add-int/lit8 v3, v2, 0x1

    .line 1460
    .line 1461
    aget-byte v3, v1, v3

    .line 1462
    shl-int/2addr v3, v15

    .line 1463
    int-to-long v7, v3

    .line 1464
    .line 1465
    aget-byte v3, v1, v2

    .line 1466
    int-to-long v12, v3

    .line 1467
    .line 1468
    and-long v12, v12, v17

    .line 1469
    add-long/2addr v7, v12

    .line 1470
    .line 1471
    add-int/lit8 v3, v2, 0x9

    .line 1472
    .line 1473
    aget-byte v3, v1, v3

    .line 1474
    int-to-long v12, v3

    .line 1475
    .line 1476
    shl-long v9, v12, v10

    .line 1477
    .line 1478
    add-int/lit8 v3, v2, 0x8

    .line 1479
    .line 1480
    aget-byte v3, v1, v3

    .line 1481
    int-to-long v12, v3

    .line 1482
    .line 1483
    and-long v12, v12, v17

    .line 1484
    .line 1485
    shl-long v11, v12, v11

    .line 1486
    add-long/2addr v9, v11

    .line 1487
    .line 1488
    add-int/lit8 v3, v2, 0x7

    .line 1489
    .line 1490
    aget-byte v3, v1, v3

    .line 1491
    int-to-long v11, v3

    .line 1492
    .line 1493
    and-long v11, v11, v17

    .line 1494
    .line 1495
    shl-long v11, v11, v16

    .line 1496
    add-long/2addr v9, v11

    .line 1497
    .line 1498
    add-int/lit8 v3, v2, 0x6

    .line 1499
    .line 1500
    aget-byte v3, v1, v3

    .line 1501
    int-to-long v11, v3

    .line 1502
    .line 1503
    and-long v11, v11, v17

    .line 1504
    .line 1505
    shl-long v11, v11, v25

    .line 1506
    add-long/2addr v9, v11

    .line 1507
    .line 1508
    add-int/lit8 v3, v2, 0x5

    .line 1509
    .line 1510
    aget-byte v3, v1, v3

    .line 1511
    int-to-long v11, v3

    .line 1512
    .line 1513
    and-long v11, v11, v17

    .line 1514
    shl-long/2addr v11, v14

    .line 1515
    add-long/2addr v9, v11

    .line 1516
    .line 1517
    add-int/lit8 v3, v2, 0x4

    .line 1518
    .line 1519
    aget-byte v3, v1, v3

    .line 1520
    int-to-long v11, v3

    .line 1521
    .line 1522
    and-long v11, v11, v17

    .line 1523
    .line 1524
    shl-long v11, v11, v21

    .line 1525
    add-long/2addr v9, v11

    .line 1526
    .line 1527
    add-int/lit8 v3, v2, 0x3

    .line 1528
    .line 1529
    aget-byte v3, v1, v3

    .line 1530
    int-to-long v11, v3

    .line 1531
    .line 1532
    and-long v11, v11, v17

    .line 1533
    shl-long/2addr v11, v15

    .line 1534
    add-long/2addr v9, v11

    .line 1535
    .line 1536
    add-int/lit8 v2, v2, 0x2

    .line 1537
    .line 1538
    aget-byte v2, v1, v2

    .line 1539
    .line 1540
    goto/16 :goto_a

    .line 1541
    :pswitch_17
    move v14, v7

    .line 1542
    .line 1543
    aget-byte v3, v1, v2

    .line 1544
    int-to-long v7, v3

    .line 1545
    .line 1546
    add-int/lit8 v3, v2, 0x8

    .line 1547
    .line 1548
    aget-byte v3, v1, v3

    .line 1549
    int-to-long v12, v3

    .line 1550
    .line 1551
    shl-long v9, v12, v10

    .line 1552
    .line 1553
    add-int/lit8 v3, v2, 0x7

    .line 1554
    .line 1555
    aget-byte v3, v1, v3

    .line 1556
    shl-int/2addr v3, v11

    .line 1557
    int-to-long v11, v3

    .line 1558
    add-long/2addr v9, v11

    .line 1559
    .line 1560
    add-int/lit8 v3, v2, 0x6

    .line 1561
    .line 1562
    aget-byte v3, v1, v3

    .line 1563
    int-to-long v11, v3

    .line 1564
    .line 1565
    and-long v11, v11, v17

    .line 1566
    .line 1567
    shl-long v11, v11, v16

    .line 1568
    add-long/2addr v9, v11

    .line 1569
    .line 1570
    add-int/lit8 v3, v2, 0x5

    .line 1571
    .line 1572
    aget-byte v3, v1, v3

    .line 1573
    int-to-long v11, v3

    .line 1574
    .line 1575
    and-long v11, v11, v17

    .line 1576
    .line 1577
    shl-long v11, v11, v25

    .line 1578
    add-long/2addr v9, v11

    .line 1579
    .line 1580
    add-int/lit8 v3, v2, 0x4

    .line 1581
    .line 1582
    aget-byte v3, v1, v3

    .line 1583
    int-to-long v11, v3

    .line 1584
    .line 1585
    and-long v11, v11, v17

    .line 1586
    shl-long/2addr v11, v14

    .line 1587
    add-long/2addr v9, v11

    .line 1588
    .line 1589
    add-int/lit8 v3, v2, 0x3

    .line 1590
    .line 1591
    aget-byte v3, v1, v3

    .line 1592
    int-to-long v11, v3

    .line 1593
    .line 1594
    and-long v11, v11, v17

    .line 1595
    .line 1596
    shl-long v11, v11, v21

    .line 1597
    add-long/2addr v9, v11

    .line 1598
    .line 1599
    add-int/lit8 v3, v2, 0x2

    .line 1600
    .line 1601
    aget-byte v3, v1, v3

    .line 1602
    int-to-long v11, v3

    .line 1603
    .line 1604
    and-long v11, v11, v17

    .line 1605
    shl-long/2addr v11, v15

    .line 1606
    add-long/2addr v9, v11

    .line 1607
    .line 1608
    add-int/lit8 v2, v2, 0x1

    .line 1609
    .line 1610
    aget-byte v2, v1, v2

    .line 1611
    .line 1612
    goto/16 :goto_a

    .line 1613
    :pswitch_18
    move v14, v7

    .line 1614
    .line 1615
    add-int/lit8 v3, v2, 0x7

    .line 1616
    .line 1617
    aget-byte v3, v1, v3

    .line 1618
    int-to-long v7, v3

    .line 1619
    shl-long/2addr v7, v10

    .line 1620
    .line 1621
    add-int/lit8 v3, v2, 0x6

    .line 1622
    .line 1623
    aget-byte v3, v1, v3

    .line 1624
    int-to-long v9, v3

    .line 1625
    .line 1626
    and-long v9, v9, v17

    .line 1627
    shl-long/2addr v9, v11

    .line 1628
    add-long/2addr v7, v9

    .line 1629
    .line 1630
    add-int/lit8 v3, v2, 0x5

    .line 1631
    .line 1632
    aget-byte v3, v1, v3

    .line 1633
    int-to-long v9, v3

    .line 1634
    .line 1635
    and-long v9, v9, v17

    .line 1636
    .line 1637
    shl-long v9, v9, v16

    .line 1638
    add-long/2addr v7, v9

    .line 1639
    .line 1640
    add-int/lit8 v3, v2, 0x4

    .line 1641
    .line 1642
    aget-byte v3, v1, v3

    .line 1643
    int-to-long v9, v3

    .line 1644
    .line 1645
    and-long v9, v9, v17

    .line 1646
    .line 1647
    shl-long v9, v9, v25

    .line 1648
    add-long/2addr v7, v9

    .line 1649
    .line 1650
    add-int/lit8 v3, v2, 0x3

    .line 1651
    .line 1652
    aget-byte v3, v1, v3

    .line 1653
    int-to-long v9, v3

    .line 1654
    .line 1655
    and-long v9, v9, v17

    .line 1656
    shl-long/2addr v9, v14

    .line 1657
    add-long/2addr v7, v9

    .line 1658
    .line 1659
    add-int/lit8 v3, v2, 0x2

    .line 1660
    .line 1661
    aget-byte v3, v1, v3

    .line 1662
    int-to-long v9, v3

    .line 1663
    .line 1664
    and-long v9, v9, v17

    .line 1665
    .line 1666
    shl-long v9, v9, v21

    .line 1667
    add-long/2addr v7, v9

    .line 1668
    .line 1669
    add-int/lit8 v3, v2, 0x1

    .line 1670
    .line 1671
    aget-byte v3, v1, v3

    .line 1672
    int-to-long v9, v3

    .line 1673
    .line 1674
    and-long v9, v9, v17

    .line 1675
    shl-long/2addr v9, v15

    .line 1676
    add-long/2addr v7, v9

    .line 1677
    .line 1678
    aget-byte v2, v1, v2

    .line 1679
    .line 1680
    goto/16 :goto_8

    .line 1681
    :pswitch_19
    move v14, v7

    .line 1682
    .line 1683
    add-int/lit8 v3, v2, 0x6

    .line 1684
    .line 1685
    aget-byte v3, v1, v3

    .line 1686
    int-to-long v7, v3

    .line 1687
    shl-long/2addr v7, v11

    .line 1688
    .line 1689
    add-int/lit8 v3, v2, 0x5

    .line 1690
    .line 1691
    aget-byte v3, v1, v3

    .line 1692
    int-to-long v9, v3

    .line 1693
    .line 1694
    and-long v9, v9, v17

    .line 1695
    .line 1696
    shl-long v9, v9, v16

    .line 1697
    add-long/2addr v7, v9

    .line 1698
    .line 1699
    add-int/lit8 v3, v2, 0x4

    .line 1700
    .line 1701
    aget-byte v3, v1, v3

    .line 1702
    int-to-long v9, v3

    .line 1703
    .line 1704
    and-long v9, v9, v17

    .line 1705
    .line 1706
    shl-long v9, v9, v25

    .line 1707
    add-long/2addr v7, v9

    .line 1708
    int-to-long v9, v3

    .line 1709
    .line 1710
    and-long v9, v9, v17

    .line 1711
    shl-long/2addr v9, v14

    .line 1712
    add-long/2addr v7, v9

    .line 1713
    .line 1714
    add-int/lit8 v3, v2, 0x3

    .line 1715
    .line 1716
    aget-byte v3, v1, v3

    .line 1717
    int-to-long v9, v3

    .line 1718
    .line 1719
    and-long v9, v9, v17

    .line 1720
    .line 1721
    shl-long v9, v9, v21

    .line 1722
    add-long/2addr v7, v9

    .line 1723
    .line 1724
    add-int/lit8 v3, v2, 0x2

    .line 1725
    .line 1726
    aget-byte v3, v1, v3

    .line 1727
    int-to-long v9, v3

    .line 1728
    .line 1729
    and-long v9, v9, v17

    .line 1730
    shl-long/2addr v9, v15

    .line 1731
    add-long/2addr v7, v9

    .line 1732
    .line 1733
    aget-byte v2, v1, v2

    .line 1734
    .line 1735
    goto/16 :goto_8

    .line 1736
    :pswitch_1a
    move v14, v7

    .line 1737
    .line 1738
    add-int/lit8 v3, v2, 0x5

    .line 1739
    .line 1740
    aget-byte v3, v1, v3

    .line 1741
    int-to-long v7, v3

    .line 1742
    .line 1743
    shl-long v7, v7, v16

    .line 1744
    .line 1745
    add-int/lit8 v3, v2, 0x4

    .line 1746
    .line 1747
    aget-byte v3, v1, v3

    .line 1748
    int-to-long v9, v3

    .line 1749
    .line 1750
    and-long v9, v9, v17

    .line 1751
    .line 1752
    shl-long v9, v9, v25

    .line 1753
    add-long/2addr v7, v9

    .line 1754
    .line 1755
    add-int/lit8 v3, v2, 0x3

    .line 1756
    .line 1757
    aget-byte v3, v1, v3

    .line 1758
    int-to-long v9, v3

    .line 1759
    .line 1760
    and-long v9, v9, v17

    .line 1761
    shl-long/2addr v9, v14

    .line 1762
    add-long/2addr v7, v9

    .line 1763
    .line 1764
    add-int/lit8 v3, v2, 0x2

    .line 1765
    .line 1766
    aget-byte v3, v1, v3

    .line 1767
    int-to-long v9, v3

    .line 1768
    .line 1769
    and-long v9, v9, v17

    .line 1770
    .line 1771
    shl-long v9, v9, v21

    .line 1772
    add-long/2addr v7, v9

    .line 1773
    .line 1774
    add-int/lit8 v3, v2, 0x1

    .line 1775
    .line 1776
    aget-byte v3, v1, v3

    .line 1777
    int-to-long v9, v3

    .line 1778
    .line 1779
    and-long v9, v9, v17

    .line 1780
    shl-long/2addr v9, v15

    .line 1781
    add-long/2addr v7, v9

    .line 1782
    .line 1783
    aget-byte v2, v1, v2

    .line 1784
    .line 1785
    goto/16 :goto_8

    .line 1786
    :pswitch_1b
    move v14, v7

    .line 1787
    .line 1788
    add-int/lit8 v3, v2, 0x4

    .line 1789
    .line 1790
    aget-byte v3, v1, v3

    .line 1791
    int-to-long v7, v3

    .line 1792
    .line 1793
    shl-long v7, v7, v25

    .line 1794
    .line 1795
    add-int/lit8 v3, v2, 0x3

    .line 1796
    .line 1797
    aget-byte v3, v1, v3

    .line 1798
    int-to-long v9, v3

    .line 1799
    .line 1800
    and-long v9, v9, v17

    .line 1801
    shl-long/2addr v9, v14

    .line 1802
    add-long/2addr v7, v9

    .line 1803
    .line 1804
    add-int/lit8 v3, v2, 0x2

    .line 1805
    .line 1806
    aget-byte v3, v1, v3

    .line 1807
    int-to-long v9, v3

    .line 1808
    .line 1809
    and-long v9, v9, v17

    .line 1810
    .line 1811
    shl-long v9, v9, v21

    .line 1812
    add-long/2addr v7, v9

    .line 1813
    .line 1814
    add-int/lit8 v3, v2, 0x1

    .line 1815
    .line 1816
    aget-byte v3, v1, v3

    .line 1817
    int-to-long v9, v3

    .line 1818
    .line 1819
    and-long v9, v9, v17

    .line 1820
    shl-long/2addr v9, v15

    .line 1821
    add-long/2addr v7, v9

    .line 1822
    .line 1823
    aget-byte v2, v1, v2

    .line 1824
    .line 1825
    goto/16 :goto_8

    .line 1826
    :pswitch_1c
    move v14, v7

    .line 1827
    .line 1828
    add-int/lit8 v3, v2, 0x3

    .line 1829
    .line 1830
    aget-byte v3, v1, v3

    .line 1831
    shl-int/2addr v3, v14

    .line 1832
    int-to-long v7, v3

    .line 1833
    .line 1834
    add-int/lit8 v3, v2, 0x2

    .line 1835
    .line 1836
    aget-byte v3, v1, v3

    .line 1837
    int-to-long v9, v3

    .line 1838
    .line 1839
    and-long v9, v9, v17

    .line 1840
    .line 1841
    shl-long v9, v9, v21

    .line 1842
    add-long/2addr v7, v9

    .line 1843
    .line 1844
    add-int/lit8 v3, v2, 0x1

    .line 1845
    .line 1846
    aget-byte v3, v1, v3

    .line 1847
    int-to-long v9, v3

    .line 1848
    .line 1849
    and-long v9, v9, v17

    .line 1850
    shl-long/2addr v9, v15

    .line 1851
    add-long/2addr v7, v9

    .line 1852
    .line 1853
    aget-byte v2, v1, v2

    .line 1854
    .line 1855
    goto/16 :goto_8

    .line 1856
    .line 1857
    :pswitch_1d
    add-int/lit8 v3, v2, 0x2

    .line 1858
    .line 1859
    aget-byte v3, v1, v3

    .line 1860
    .line 1861
    shl-int/lit8 v3, v3, 0x10

    .line 1862
    int-to-long v7, v3

    .line 1863
    .line 1864
    add-int/lit8 v3, v2, 0x1

    .line 1865
    .line 1866
    aget-byte v3, v1, v3

    .line 1867
    int-to-long v9, v3

    .line 1868
    .line 1869
    and-long v9, v9, v17

    .line 1870
    shl-long/2addr v9, v15

    .line 1871
    add-long/2addr v7, v9

    .line 1872
    .line 1873
    aget-byte v2, v1, v2

    .line 1874
    .line 1875
    goto/16 :goto_8

    .line 1876
    .line 1877
    :goto_b
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1878
    .line 1879
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1880
    .line 1881
    add-int v7, v3, v2

    .line 1882
    .line 1883
    add-int/lit8 v7, v7, -0x1

    .line 1884
    .line 1885
    aget-byte v7, v1, v7

    .line 1886
    .line 1887
    if-lez v7, :cond_b

    .line 1888
    .line 1889
    cmp-long v7, v28, v22

    .line 1890
    .line 1891
    if-eqz v7, :cond_b

    .line 1892
    .line 1893
    cmp-long v7, v30, v22

    .line 1894
    .line 1895
    if-eqz v7, :cond_9

    .line 1896
    .line 1897
    xor-long v7, v28, v30

    .line 1898
    .line 1899
    ushr-long v9, v7, v25

    .line 1900
    xor-long/2addr v7, v9

    .line 1901
    long-to-int v7, v7

    .line 1902
    .line 1903
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 1904
    array-length v9, v8

    .line 1905
    .line 1906
    add-int/lit8 v9, v9, -0x1

    .line 1907
    and-int/2addr v7, v9

    .line 1908
    .line 1909
    aget-object v9, v8, v7

    .line 1910
    .line 1911
    if-nez v9, :cond_8

    .line 1912
    .line 1913
    .line 1914
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 1915
    move-result-object v27

    .line 1916
    .line 1917
    new-instance v26, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    .line 1918
    .line 1919
    .line 1920
    invoke-direct/range {v26 .. v31}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;-><init>(Ljava/lang/String;JJ)V

    .line 1921
    .line 1922
    aput-object v26, v8, v7

    .line 1923
    .line 1924
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1925
    add-int/2addr v3, v2

    .line 1926
    .line 1927
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1928
    goto :goto_d

    .line 1929
    .line 1930
    :cond_8
    move-wide/from16 v11, v28

    .line 1931
    .line 1932
    iget-wide v7, v9, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    .line 1933
    .line 1934
    cmp-long v7, v7, v11

    .line 1935
    .line 1936
    if-nez v7, :cond_b

    .line 1937
    .line 1938
    iget-wide v7, v9, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    .line 1939
    .line 1940
    cmp-long v7, v7, v30

    .line 1941
    .line 1942
    if-nez v7, :cond_b

    .line 1943
    add-int/2addr v3, v2

    .line 1944
    .line 1945
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1946
    .line 1947
    iget-object v2, v9, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    .line 1948
    goto :goto_c

    .line 1949
    .line 1950
    :cond_9
    move-wide/from16 v11, v28

    .line 1951
    .line 1952
    ushr-long v7, v11, v25

    .line 1953
    xor-long/2addr v7, v11

    .line 1954
    long-to-int v7, v7

    .line 1955
    .line 1956
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 1957
    array-length v9, v8

    .line 1958
    .line 1959
    add-int/lit8 v9, v9, -0x1

    .line 1960
    and-int/2addr v7, v9

    .line 1961
    .line 1962
    aget-object v9, v8, v7

    .line 1963
    .line 1964
    if-nez v9, :cond_a

    .line 1965
    .line 1966
    .line 1967
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 1968
    move-result-object v3

    .line 1969
    .line 1970
    new-instance v9, Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 1971
    .line 1972
    .line 1973
    invoke-direct {v9, v3, v11, v12}, Lcom/alibaba/fastjson2/util/NameCacheEntry;-><init>(Ljava/lang/String;J)V

    .line 1974
    .line 1975
    aput-object v9, v8, v7

    .line 1976
    .line 1977
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1978
    add-int/2addr v7, v2

    .line 1979
    .line 1980
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1981
    .line 1982
    move-object/from16 v27, v3

    .line 1983
    goto :goto_d

    .line 1984
    .line 1985
    :cond_a
    iget-wide v7, v9, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    .line 1986
    .line 1987
    cmp-long v7, v7, v11

    .line 1988
    .line 1989
    if-nez v7, :cond_b

    .line 1990
    add-int/2addr v3, v2

    .line 1991
    .line 1992
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 1993
    .line 1994
    iget-object v2, v9, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;

    .line 1995
    .line 1996
    :goto_c
    move-object/from16 v27, v2

    .line 1997
    goto :goto_d

    .line 1998
    .line 1999
    :cond_b
    move-object/from16 v27, v6

    .line 2000
    .line 2001
    :goto_d
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 2002
    .line 2003
    goto/16 :goto_10

    .line 2004
    .line 2005
    :cond_c
    move/from16 v24, v7

    .line 2006
    .line 2007
    move/from16 v25, v8

    .line 2008
    move v15, v9

    .line 2009
    .line 2010
    const/16 v21, 0x10

    .line 2011
    .line 2012
    const/16 v3, 0x7a

    .line 2013
    .line 2014
    if-ne v4, v3, :cond_10

    .line 2015
    .line 2016
    aget-byte v3, v1, v2

    .line 2017
    .line 2018
    const/16 v7, -0x10

    .line 2019
    .line 2020
    if-lt v3, v7, :cond_d

    .line 2021
    .line 2022
    const/16 v7, 0x2f

    .line 2023
    .line 2024
    if-gt v3, v7, :cond_d

    .line 2025
    .line 2026
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2027
    .line 2028
    add-int/lit8 v2, v2, 0x1

    .line 2029
    .line 2030
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2031
    goto :goto_e

    .line 2032
    .line 2033
    :cond_d
    if-lt v3, v11, :cond_e

    .line 2034
    .line 2035
    const/16 v7, 0x3f

    .line 2036
    .line 2037
    if-gt v3, v7, :cond_e

    .line 2038
    sub-int/2addr v3, v10

    .line 2039
    shl-int/2addr v3, v15

    .line 2040
    .line 2041
    add-int/lit8 v7, v2, 0x1

    .line 2042
    .line 2043
    aget-byte v7, v1, v7

    .line 2044
    .line 2045
    and-int/lit16 v7, v7, 0xff

    .line 2046
    add-int/2addr v3, v7

    .line 2047
    .line 2048
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2049
    .line 2050
    add-int/lit8 v2, v2, 0x2

    .line 2051
    .line 2052
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2053
    goto :goto_e

    .line 2054
    .line 2055
    :cond_e
    const/16 v7, 0x40

    .line 2056
    .line 2057
    if-lt v3, v7, :cond_f

    .line 2058
    .line 2059
    const/16 v7, 0x47

    .line 2060
    .line 2061
    if-gt v3, v7, :cond_f

    .line 2062
    .line 2063
    add-int/lit8 v2, v2, 0x1

    .line 2064
    .line 2065
    .line 2066
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 2067
    move-result v2

    .line 2068
    .line 2069
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2070
    .line 2071
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2072
    .line 2073
    add-int/lit8 v2, v2, 0x3

    .line 2074
    .line 2075
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2076
    goto :goto_e

    .line 2077
    .line 2078
    .line 2079
    :cond_f
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 2080
    move-result v2

    .line 2081
    .line 2082
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2083
    .line 2084
    :goto_e
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2085
    .line 2086
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2087
    .line 2088
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2089
    .line 2090
    :goto_f
    move-object/from16 v27, v6

    .line 2091
    goto :goto_10

    .line 2092
    .line 2093
    :cond_10
    const/16 v2, 0x7b

    .line 2094
    .line 2095
    if-ne v4, v2, :cond_11

    .line 2096
    .line 2097
    .line 2098
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 2099
    move-result v2

    .line 2100
    .line 2101
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2102
    .line 2103
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2104
    .line 2105
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2106
    .line 2107
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 2108
    goto :goto_f

    .line 2109
    .line 2110
    :cond_11
    const/16 v2, 0x7c

    .line 2111
    .line 2112
    if-ne v4, v2, :cond_12

    .line 2113
    .line 2114
    .line 2115
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 2116
    move-result v2

    .line 2117
    .line 2118
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2119
    .line 2120
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2121
    .line 2122
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2123
    .line 2124
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 2125
    goto :goto_f

    .line 2126
    .line 2127
    :cond_12
    const/16 v2, 0x7d

    .line 2128
    .line 2129
    if-ne v4, v2, :cond_13

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 2133
    move-result v2

    .line 2134
    .line 2135
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2136
    .line 2137
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2138
    .line 2139
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2140
    .line 2141
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 2142
    goto :goto_f

    .line 2143
    .line 2144
    :cond_13
    const/16 v2, 0x7e

    .line 2145
    .line 2146
    if-ne v4, v2, :cond_15

    .line 2147
    .line 2148
    .line 2149
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 2150
    move-result v2

    .line 2151
    .line 2152
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2153
    .line 2154
    sget-object v2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 2155
    .line 2156
    if-nez v2, :cond_14

    .line 2157
    .line 2158
    const-string v2, "GB18030"

    .line 2159
    .line 2160
    .line 2161
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2162
    move-result-object v2

    .line 2163
    .line 2164
    sput-object v2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 2165
    .line 2166
    :cond_14
    sget-object v2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 2167
    goto :goto_f

    .line 2168
    .line 2169
    :cond_15
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2170
    goto :goto_f

    .line 2171
    .line 2172
    :goto_10
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2173
    .line 2174
    if-gez v3, :cond_16

    .line 2175
    .line 2176
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 2177
    neg-int v3, v3

    .line 2178
    .line 2179
    .line 2180
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 2181
    move-result-object v27

    .line 2182
    .line 2183
    :cond_16
    if-nez v27, :cond_1d

    .line 2184
    .line 2185
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 2186
    .line 2187
    if-ne v2, v3, :cond_1b

    .line 2188
    .line 2189
    sget v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 2190
    .line 2191
    const/16 v7, 0x22

    .line 2192
    .line 2193
    if-ge v3, v7, :cond_1b

    .line 2194
    .line 2195
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 2196
    .line 2197
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2198
    .line 2199
    if-nez v3, :cond_17

    .line 2200
    .line 2201
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2202
    .line 2203
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 2204
    .line 2205
    .line 2206
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    move-result-object v3

    .line 2208
    .line 2209
    check-cast v3, [C

    .line 2210
    .line 2211
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 2212
    .line 2213
    :cond_17
    if-eqz v3, :cond_18

    .line 2214
    array-length v6, v3

    .line 2215
    .line 2216
    if-ge v6, v7, :cond_19

    .line 2217
    .line 2218
    :cond_18
    new-array v3, v7, [C

    .line 2219
    .line 2220
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 2221
    :cond_19
    const/4 v6, 0x0

    .line 2222
    .line 2223
    :goto_11
    if-ge v6, v7, :cond_1a

    .line 2224
    .line 2225
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2226
    add-int/2addr v8, v6

    .line 2227
    .line 2228
    aget-byte v8, v1, v8

    .line 2229
    .line 2230
    and-int/lit16 v8, v8, 0xff

    .line 2231
    int-to-char v8, v8

    .line 2232
    .line 2233
    aput-char v8, v3, v6

    .line 2234
    .line 2235
    add-int/lit8 v6, v6, 0x1

    .line 2236
    goto :goto_11

    .line 2237
    .line 2238
    :cond_1a
    new-instance v6, Ljava/lang/String;

    .line 2239
    const/4 v8, 0x0

    .line 2240
    .line 2241
    .line 2242
    invoke-direct {v6, v3, v8, v7}, Ljava/lang/String;-><init>([CII)V

    .line 2243
    .line 2244
    move-object/from16 v27, v6

    .line 2245
    .line 2246
    :cond_1b
    if-nez v27, :cond_1c

    .line 2247
    .line 2248
    new-instance v3, Ljava/lang/String;

    .line 2249
    .line 2250
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2251
    .line 2252
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2253
    .line 2254
    .line 2255
    invoke-direct {v3, v1, v6, v7, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2256
    .line 2257
    move-object/from16 v27, v3

    .line 2258
    .line 2259
    :cond_1c
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2260
    .line 2261
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2262
    add-int/2addr v1, v2

    .line 2263
    .line 2264
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 2265
    .line 2266
    :cond_1d
    if-eqz v5, :cond_22

    .line 2267
    .line 2268
    .line 2269
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 2270
    move-result v1

    .line 2271
    .line 2272
    if-nez v1, :cond_1e

    .line 2273
    .line 2274
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2275
    .line 2276
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 2277
    .line 2278
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2279
    .line 2280
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 2281
    .line 2282
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 2283
    return-object v27

    .line 2284
    .line 2285
    :cond_1e
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 2286
    .line 2287
    if-nez v2, :cond_20

    .line 2288
    .line 2289
    mul-int/lit8 v2, v1, 0x2

    .line 2290
    .line 2291
    add-int/lit8 v2, v2, 0x2

    .line 2292
    .line 2293
    move/from16 v3, v25

    .line 2294
    .line 2295
    if-ge v2, v3, :cond_1f

    .line 2296
    .line 2297
    const/16 v2, 0x20

    .line 2298
    .line 2299
    :cond_1f
    new-array v2, v2, [J

    .line 2300
    .line 2301
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 2302
    goto :goto_12

    .line 2303
    :cond_20
    array-length v3, v2

    .line 2304
    .line 2305
    mul-int/lit8 v5, v1, 0x2

    .line 2306
    .line 2307
    add-int/lit8 v5, v5, 0x2

    .line 2308
    .line 2309
    if-ge v3, v5, :cond_21

    .line 2310
    array-length v3, v2

    .line 2311
    .line 2312
    add-int/lit8 v3, v3, 0x10

    .line 2313
    .line 2314
    .line 2315
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 2316
    move-result-object v2

    .line 2317
    .line 2318
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 2319
    .line 2320
    :cond_21
    :goto_12
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2321
    int-to-long v2, v2

    .line 2322
    .line 2323
    const/16 v25, 0x20

    .line 2324
    .line 2325
    shl-long v2, v2, v25

    .line 2326
    .line 2327
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2328
    int-to-long v5, v5

    .line 2329
    shl-long/2addr v5, v15

    .line 2330
    add-long/2addr v2, v5

    .line 2331
    int-to-long v4, v4

    .line 2332
    add-long/2addr v2, v4

    .line 2333
    .line 2334
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 2335
    .line 2336
    mul-int/lit8 v1, v1, 0x2

    .line 2337
    .line 2338
    add-int/lit8 v1, v1, 0x1

    .line 2339
    .line 2340
    aput-wide v2, v4, v1

    .line 2341
    :cond_22
    return-object v27

    .line 2342
    nop

    .line 2343
    .line 2344
    .line 2345
    .line 2346
    .line 2347
    .line 2348
    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    .line 2354
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

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public readFieldNameHashCode()J
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    aget-byte v4, v1, v2

    .line 13
    .line 14
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 15
    .line 16
    const/16 v5, 0x7f

    .line 17
    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    const/4 v5, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v5, 0x0

    .line 22
    .line 23
    :goto_0
    const/16 v8, 0x2f

    .line 24
    .line 25
    const/16 v9, -0x10

    .line 26
    .line 27
    const/16 v10, 0x8

    .line 28
    .line 29
    const-wide/16 v11, 0x0

    .line 30
    .line 31
    const/16 v13, 0x20

    .line 32
    .line 33
    if-eqz v5, :cond_7

    .line 34
    .line 35
    aget-byte v4, v1, v3

    .line 36
    .line 37
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 38
    .line 39
    if-lt v4, v9, :cond_6

    .line 40
    .line 41
    const/16 v3, 0x48

    .line 42
    .line 43
    if-gt v4, v3, :cond_6

    .line 44
    .line 45
    if-gt v4, v8, :cond_1

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x2

    .line 48
    .line 49
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 54
    move-result v4

    .line 55
    .line 56
    :goto_1
    if-gez v4, :cond_2

    .line 57
    .line 58
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 59
    neg-int v2, v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    .line 63
    move-result-wide v1

    .line 64
    return-wide v1

    .line 65
    .line 66
    :cond_2
    if-nez v4, :cond_4

    .line 67
    .line 68
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 69
    .line 70
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 71
    .line 72
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 73
    .line 74
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 75
    .line 76
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 77
    .line 78
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 79
    .line 80
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 81
    .line 82
    cmp-long v1, v1, v11

    .line 83
    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getNameHashCode()J

    .line 88
    move-result-wide v1

    .line 89
    .line 90
    iput-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 91
    .line 92
    :cond_3
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 93
    return-wide v1

    .line 94
    .line 95
    :cond_4
    mul-int/lit8 v4, v4, 0x2

    .line 96
    .line 97
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 98
    .line 99
    add-int/lit8 v2, v4, 0x1

    .line 100
    .line 101
    aget-wide v2, v1, v2

    .line 102
    long-to-int v5, v2

    .line 103
    int-to-byte v6, v5

    .line 104
    .line 105
    iput-byte v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 106
    shr-int/2addr v5, v10

    .line 107
    .line 108
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 109
    shr-long/2addr v2, v13

    .line 110
    long-to-int v2, v2

    .line 111
    .line 112
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 113
    .line 114
    aget-wide v2, v1, v4

    .line 115
    .line 116
    cmp-long v1, v2, v11

    .line 117
    .line 118
    if-nez v1, :cond_5

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getNameHashCode()J

    .line 122
    move-result-wide v1

    .line 123
    .line 124
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 125
    .line 126
    aput-wide v1, v3, v4

    .line 127
    return-wide v1

    .line 128
    :cond_5
    return-wide v2

    .line 129
    .line 130
    :cond_6
    add-int/lit8 v2, v2, 0x2

    .line 131
    .line 132
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 133
    .line 134
    :cond_7
    const/16 v2, 0x49

    .line 135
    .line 136
    if-lt v4, v2, :cond_8

    .line 137
    .line 138
    const/16 v2, 0x78

    .line 139
    .line 140
    if-gt v4, v2, :cond_8

    .line 141
    .line 142
    add-int/lit8 v2, v4, -0x49

    .line 143
    goto :goto_3

    .line 144
    .line 145
    :cond_8
    const/16 v2, 0x79

    .line 146
    .line 147
    if-eq v4, v2, :cond_a

    .line 148
    .line 149
    const/16 v2, 0x7a

    .line 150
    .line 151
    if-ne v4, v2, :cond_9

    .line 152
    goto :goto_2

    .line 153
    .line 154
    .line 155
    :cond_9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldNameHashCodeError()Lcom/alibaba/fastjson2/JSONException;

    .line 156
    move-result-object v1

    .line 157
    throw v1

    .line 158
    .line 159
    .line 160
    :cond_a
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 161
    move-result v2

    .line 162
    .line 163
    :goto_3
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 164
    .line 165
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 166
    .line 167
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 168
    .line 169
    if-gez v2, :cond_b

    .line 170
    .line 171
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 172
    neg-int v6, v2

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    .line 176
    move-result-wide v11

    .line 177
    .line 178
    move/from16 v21, v10

    .line 179
    move v7, v13

    .line 180
    .line 181
    const/16 v18, 0x1

    .line 182
    .line 183
    goto/16 :goto_a

    .line 184
    .line 185
    :cond_b
    if-gt v2, v10, :cond_c

    .line 186
    .line 187
    add-int v14, v3, v2

    .line 188
    array-length v15, v1

    .line 189
    .line 190
    if-gt v14, v15, :cond_c

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    const-wide v16, 0xffffffffL

    .line 196
    .line 197
    .line 198
    packed-switch v2, :pswitch_data_0

    .line 199
    .line 200
    sget-object v14, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 201
    .line 202
    sget-wide v15, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 203
    .line 204
    const/16 v18, 0x1

    .line 205
    int-to-long v6, v3

    .line 206
    add-long/2addr v6, v15

    .line 207
    .line 208
    .line 209
    invoke-virtual {v14, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 210
    move-result-wide v6

    .line 211
    .line 212
    move/from16 v21, v10

    .line 213
    .line 214
    move-wide/from16 v22, v11

    .line 215
    :goto_4
    move-wide v11, v6

    .line 216
    move v7, v13

    .line 217
    .line 218
    goto/16 :goto_8

    .line 219
    .line 220
    :pswitch_0
    const/16 v18, 0x1

    .line 221
    .line 222
    add-int/lit8 v6, v3, 0x6

    .line 223
    .line 224
    aget-byte v6, v1, v6

    .line 225
    int-to-long v6, v6

    .line 226
    .line 227
    const/16 v14, 0x30

    .line 228
    shl-long/2addr v6, v14

    .line 229
    .line 230
    add-int/lit8 v14, v3, 0x5

    .line 231
    .line 232
    aget-byte v14, v1, v14

    .line 233
    int-to-long v14, v14

    .line 234
    .line 235
    const-wide/16 v19, 0xff

    .line 236
    .line 237
    and-long v14, v14, v19

    .line 238
    .line 239
    const/16 v21, 0x28

    .line 240
    .line 241
    shl-long v14, v14, v21

    .line 242
    add-long/2addr v6, v14

    .line 243
    .line 244
    add-int/lit8 v14, v3, 0x4

    .line 245
    .line 246
    aget-byte v14, v1, v14

    .line 247
    int-to-long v14, v14

    .line 248
    .line 249
    and-long v14, v14, v19

    .line 250
    shl-long/2addr v14, v13

    .line 251
    add-long/2addr v6, v14

    .line 252
    .line 253
    sget-object v14, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 254
    .line 255
    sget-wide v19, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 256
    .line 257
    move/from16 v21, v10

    .line 258
    .line 259
    move-wide/from16 v22, v11

    .line 260
    int-to-long v10, v3

    .line 261
    .line 262
    add-long v10, v19, v10

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 266
    move-result v3

    .line 267
    int-to-long v10, v3

    .line 268
    .line 269
    and-long v10, v10, v16

    .line 270
    add-long/2addr v6, v10

    .line 271
    goto :goto_4

    .line 272
    .line 273
    :pswitch_1
    move/from16 v21, v10

    .line 274
    .line 275
    move-wide/from16 v22, v11

    .line 276
    .line 277
    const/16 v18, 0x1

    .line 278
    .line 279
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 280
    .line 281
    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 282
    int-to-long v14, v3

    .line 283
    .line 284
    add-long v19, v10, v14

    .line 285
    .line 286
    const-wide/16 v24, 0x4

    .line 287
    move v7, v13

    .line 288
    .line 289
    move-wide/from16 v26, v14

    .line 290
    .line 291
    add-long v13, v19, v24

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 295
    move-result v3

    .line 296
    int-to-long v12, v3

    .line 297
    shl-long/2addr v12, v7

    .line 298
    .line 299
    add-long v10, v10, v26

    .line 300
    .line 301
    .line 302
    invoke-virtual {v6, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 303
    move-result v3

    .line 304
    int-to-long v10, v3

    .line 305
    .line 306
    and-long v10, v10, v16

    .line 307
    add-long/2addr v12, v10

    .line 308
    move-wide v11, v12

    .line 309
    .line 310
    goto/16 :goto_8

    .line 311
    .line 312
    :pswitch_2
    move/from16 v21, v10

    .line 313
    .line 314
    move-wide/from16 v22, v11

    .line 315
    move v7, v13

    .line 316
    .line 317
    const/16 v18, 0x1

    .line 318
    .line 319
    add-int/lit8 v6, v3, 0x4

    .line 320
    .line 321
    aget-byte v6, v1, v6

    .line 322
    int-to-long v10, v6

    .line 323
    shl-long/2addr v10, v7

    .line 324
    .line 325
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 326
    .line 327
    sget-wide v12, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 328
    int-to-long v14, v3

    .line 329
    add-long/2addr v12, v14

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 333
    move-result v3

    .line 334
    :goto_5
    int-to-long v12, v3

    .line 335
    .line 336
    and-long v12, v12, v16

    .line 337
    add-long/2addr v10, v12

    .line 338
    :goto_6
    move-wide v11, v10

    .line 339
    goto :goto_8

    .line 340
    .line 341
    :pswitch_3
    move/from16 v21, v10

    .line 342
    .line 343
    move-wide/from16 v22, v11

    .line 344
    move v7, v13

    .line 345
    .line 346
    const/16 v18, 0x1

    .line 347
    .line 348
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 349
    .line 350
    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 351
    int-to-long v12, v3

    .line 352
    add-long/2addr v10, v12

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 356
    move-result v3

    .line 357
    :goto_7
    int-to-long v10, v3

    .line 358
    goto :goto_6

    .line 359
    .line 360
    :pswitch_4
    move/from16 v21, v10

    .line 361
    .line 362
    move-wide/from16 v22, v11

    .line 363
    move v7, v13

    .line 364
    .line 365
    const/16 v18, 0x1

    .line 366
    .line 367
    add-int/lit8 v6, v3, 0x2

    .line 368
    .line 369
    aget-byte v6, v1, v6

    .line 370
    .line 371
    shl-int/lit8 v6, v6, 0x10

    .line 372
    int-to-long v10, v6

    .line 373
    .line 374
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 375
    .line 376
    sget-wide v12, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 377
    .line 378
    .line 379
    const-wide/32 v16, 0xffff

    .line 380
    int-to-long v14, v3

    .line 381
    add-long/2addr v12, v14

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6, v1, v12, v13}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 385
    move-result v3

    .line 386
    goto :goto_5

    .line 387
    .line 388
    :pswitch_5
    move/from16 v21, v10

    .line 389
    .line 390
    move-wide/from16 v22, v11

    .line 391
    move v7, v13

    .line 392
    .line 393
    .line 394
    const-wide/32 v16, 0xffff

    .line 395
    .line 396
    const/16 v18, 0x1

    .line 397
    .line 398
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 399
    .line 400
    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    .line 401
    int-to-long v12, v3

    .line 402
    add-long/2addr v10, v12

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6, v1, v10, v11}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 406
    move-result v3

    .line 407
    int-to-long v10, v3

    .line 408
    .line 409
    and-long v10, v10, v16

    .line 410
    goto :goto_6

    .line 411
    .line 412
    :pswitch_6
    move/from16 v21, v10

    .line 413
    .line 414
    move-wide/from16 v22, v11

    .line 415
    move v7, v13

    .line 416
    .line 417
    const/16 v18, 0x1

    .line 418
    .line 419
    aget-byte v3, v1, v3

    .line 420
    goto :goto_7

    .line 421
    .line 422
    :cond_c
    move/from16 v21, v10

    .line 423
    .line 424
    move-wide/from16 v22, v11

    .line 425
    move v7, v13

    .line 426
    .line 427
    const/16 v18, 0x1

    .line 428
    .line 429
    move-wide/from16 v11, v22

    .line 430
    .line 431
    :goto_8
    cmp-long v3, v11, v22

    .line 432
    .line 433
    if-eqz v3, :cond_d

    .line 434
    .line 435
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 436
    add-int/2addr v3, v2

    .line 437
    .line 438
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 439
    goto :goto_a

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    :cond_d
    const-wide v10, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 445
    move-wide v11, v10

    .line 446
    const/4 v6, 0x0

    .line 447
    .line 448
    :goto_9
    if-ge v6, v2, :cond_e

    .line 449
    .line 450
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 451
    .line 452
    add-int/lit8 v10, v3, 0x1

    .line 453
    .line 454
    iput v10, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 455
    .line 456
    aget-byte v3, v1, v3

    .line 457
    int-to-long v13, v3

    .line 458
    xor-long/2addr v11, v13

    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    const-wide v13, 0x100000001b3L

    .line 464
    mul-long/2addr v11, v13

    .line 465
    .line 466
    add-int/lit8 v6, v6, 0x1

    .line 467
    goto :goto_9

    .line 468
    .line 469
    :cond_e
    :goto_a
    if-eqz v5, :cond_13

    .line 470
    .line 471
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 472
    .line 473
    aget-byte v1, v1, v3

    .line 474
    .line 475
    if-lt v1, v9, :cond_f

    .line 476
    .line 477
    if-gt v1, v8, :cond_f

    .line 478
    .line 479
    add-int/lit8 v3, v3, 0x1

    .line 480
    .line 481
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 482
    goto :goto_b

    .line 483
    .line 484
    .line 485
    :cond_f
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 486
    move-result v1

    .line 487
    .line 488
    :goto_b
    if-nez v1, :cond_10

    .line 489
    .line 490
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 491
    .line 492
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 493
    .line 494
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 495
    .line 496
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 497
    .line 498
    iput-wide v11, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 499
    return-wide v11

    .line 500
    .line 501
    :cond_10
    shl-int/lit8 v1, v1, 0x1

    .line 502
    .line 503
    add-int/lit8 v3, v1, 0x2

    .line 504
    .line 505
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 506
    .line 507
    if-nez v5, :cond_11

    .line 508
    .line 509
    .line 510
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 511
    move-result v3

    .line 512
    .line 513
    new-array v3, v3, [J

    .line 514
    .line 515
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 516
    goto :goto_c

    .line 517
    :cond_11
    array-length v6, v5

    .line 518
    .line 519
    if-ge v6, v3, :cond_12

    .line 520
    .line 521
    add-int/lit8 v3, v1, 0x12

    .line 522
    .line 523
    .line 524
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 525
    move-result-object v3

    .line 526
    .line 527
    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 528
    .line 529
    :cond_12
    :goto_c
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 530
    .line 531
    aput-wide v11, v3, v1

    .line 532
    .line 533
    add-int/lit8 v1, v1, 0x1

    .line 534
    .line 535
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 536
    int-to-long v5, v5

    .line 537
    .line 538
    const/16 v7, 0x20

    .line 539
    shl-long/2addr v5, v7

    .line 540
    int-to-long v7, v2

    .line 541
    .line 542
    shl-long v7, v7, v21

    .line 543
    add-long/2addr v5, v7

    .line 544
    int-to-long v7, v4

    .line 545
    add-long/2addr v5, v7

    .line 546
    .line 547
    aput-wide v5, v3, v1

    .line 548
    :cond_13
    return-wide v11

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

.method public readFieldNameHashCodeError()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "fieldName not support input type "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 22
    .line 23
    const/16 v2, -0x6d

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    const-string v1, " "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    :cond_0
    const-string v1, ", offset "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 57
    return-object v1
.end method

.method public readFieldNameHashCodeUnquote()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldNameHashCode()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public readFloatValue()F
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x49

    .line 9
    .line 10
    if-ne v2, v3, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 15
    int-to-long v5, v1

    .line 16
    add-long/2addr v3, v5

    .line 17
    .line 18
    const-wide/16 v5, 0x1

    .line 19
    add-long/2addr v3, v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 23
    move-result v0

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x5

    .line 26
    .line 27
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 28
    .line 29
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFloat0()F

    .line 45
    move-result v0

    .line 46
    return v0
.end method

.method public readHex()[B
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    new-array v2, v1, [B

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v3, v1, :cond_2

    .line 16
    .line 17
    mul-int/lit8 v4, v3, 0x2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 21
    move-result v5

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    move-result v4

    .line 28
    .line 29
    const/16 v6, 0x37

    .line 30
    .line 31
    const/16 v7, 0x30

    .line 32
    .line 33
    const/16 v8, 0x39

    .line 34
    .line 35
    if-gt v5, v8, :cond_0

    .line 36
    move v9, v7

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v9, v6

    .line 39
    :goto_1
    sub-int/2addr v5, v9

    .line 40
    .line 41
    if-gt v4, v8, :cond_1

    .line 42
    move v6, v7

    .line 43
    :cond_1
    sub-int/2addr v4, v6

    .line 44
    .line 45
    shl-int/lit8 v5, v5, 0x4

    .line 46
    or-int/2addr v4, v5

    .line 47
    int-to-byte v4, v4

    .line 48
    .line 49
    aput-byte v4, v2, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v2
.end method

.method public readIfNull()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x51

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    add-int/2addr v1, v0

    .line 13
    .line 14
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public readInstant()Lcom/alibaba/fastjson2/time/Instant;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v1, v0, v1

    .line 11
    .line 12
    const/16 v3, -0x42

    .line 13
    .line 14
    if-eq v1, v3, :cond_0

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 25
    throw v0

    .line 26
    .line 27
    .line 28
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 33
    move-result v2

    .line 34
    int-to-long v2, v2

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    .line 41
    .line 42
    :pswitch_1
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 43
    move-result v0

    .line 44
    int-to-long v0, v0

    .line 45
    .line 46
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x4

    .line 49
    .line 50
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 51
    .line 52
    const-wide/16 v5, 0x3c

    .line 53
    mul-long/2addr v0, v5

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    .line 60
    .line 61
    :pswitch_2
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 62
    move-result v0

    .line 63
    int-to-long v0, v0

    .line 64
    .line 65
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x4

    .line 68
    .line 69
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    .line 76
    :cond_0
    :pswitch_3
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 77
    .line 78
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 79
    int-to-long v5, v2

    .line 80
    add-long/2addr v3, v5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 84
    move-result-wide v0

    .line 85
    .line 86
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x8

    .line 89
    .line 90
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 91
    .line 92
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 93
    .line 94
    if-eqz v2, :cond_1

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 99
    move-result-wide v0

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readInt32()Ljava/lang/Integer;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    aget-byte v3, v0, v1

    .line 9
    .line 10
    const/16 v4, -0x51

    .line 11
    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    const/16 v4, -0x10

    .line 19
    .line 20
    if-lt v3, v4, :cond_1

    .line 21
    .line 22
    const/16 v4, 0x2f

    .line 23
    .line 24
    if-gt v3, v4, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const/16 v4, 0x30

    .line 28
    .line 29
    if-lt v3, v4, :cond_2

    .line 30
    .line 31
    const/16 v4, 0x3f

    .line 32
    .line 33
    if-gt v3, v4, :cond_2

    .line 34
    .line 35
    add-int/lit8 v3, v3, -0x38

    .line 36
    .line 37
    shl-int/lit8 v3, v3, 0x8

    .line 38
    .line 39
    aget-byte v0, v0, v2

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    add-int/2addr v3, v0

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x2

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    const/16 v4, 0x40

    .line 48
    .line 49
    if-lt v3, v4, :cond_3

    .line 50
    .line 51
    const/16 v4, 0x47

    .line 52
    .line 53
    if-gt v3, v4, :cond_3

    .line 54
    .line 55
    add-int/lit8 v3, v3, -0x44

    .line 56
    .line 57
    shl-int/lit8 v3, v3, 0x10

    .line 58
    .line 59
    aget-byte v2, v0, v2

    .line 60
    .line 61
    and-int/lit16 v2, v2, 0xff

    .line 62
    .line 63
    shl-int/lit8 v2, v2, 0x8

    .line 64
    add-int/2addr v3, v2

    .line 65
    .line 66
    add-int/lit8 v2, v1, 0x2

    .line 67
    .line 68
    aget-byte v0, v0, v2

    .line 69
    .line 70
    and-int/lit16 v0, v0, 0xff

    .line 71
    add-int/2addr v3, v0

    .line 72
    .line 73
    add-int/lit8 v2, v1, 0x3

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_3
    const/16 v4, 0x48

    .line 77
    .line 78
    if-ne v3, v4, :cond_5

    .line 79
    .line 80
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 81
    .line 82
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 83
    int-to-long v6, v2

    .line 84
    add-long/2addr v4, v6

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 88
    move-result v0

    .line 89
    .line 90
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 96
    move-result v0

    .line 97
    :cond_4
    move v3, v0

    .line 98
    .line 99
    add-int/lit8 v2, v1, 0x5

    .line 100
    .line 101
    :goto_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    .line 108
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value0([BB)I

    .line 112
    move-result v0

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public readInt32Value()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    aget-byte v3, v0, v1

    .line 9
    .line 10
    const/16 v4, -0x10

    .line 11
    .line 12
    if-lt v3, v4, :cond_0

    .line 13
    .line 14
    const/16 v4, 0x2f

    .line 15
    .line 16
    if-gt v3, v4, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const/16 v4, 0x30

    .line 20
    .line 21
    if-lt v3, v4, :cond_1

    .line 22
    .line 23
    const/16 v4, 0x3f

    .line 24
    .line 25
    if-gt v3, v4, :cond_1

    .line 26
    .line 27
    add-int/lit8 v3, v3, -0x38

    .line 28
    .line 29
    shl-int/lit8 v3, v3, 0x8

    .line 30
    .line 31
    aget-byte v0, v0, v2

    .line 32
    .line 33
    and-int/lit16 v0, v0, 0xff

    .line 34
    add-int/2addr v3, v0

    .line 35
    .line 36
    add-int/lit8 v2, v1, 0x2

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    const/16 v4, 0x40

    .line 40
    .line 41
    if-lt v3, v4, :cond_2

    .line 42
    .line 43
    const/16 v4, 0x47

    .line 44
    .line 45
    if-gt v3, v4, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 49
    move-result v3

    .line 50
    .line 51
    add-int/lit8 v2, v1, 0x3

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    const/16 v4, 0x48

    .line 55
    .line 56
    if-ne v3, v4, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 60
    move-result v3

    .line 61
    .line 62
    add-int/lit8 v2, v1, 0x5

    .line 63
    .line 64
    :goto_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 65
    return v3

    .line 66
    .line 67
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value0([BB)I

    .line 71
    move-result v0

    .line 72
    return v0
.end method

.method public readInt64()Ljava/lang/Long;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    aget-byte v3, v0, v1

    .line 9
    .line 10
    const/16 v4, -0x51

    .line 11
    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    const/16 v4, -0x28

    .line 19
    .line 20
    if-lt v3, v4, :cond_1

    .line 21
    .line 22
    const/16 v4, -0x11

    .line 23
    .line 24
    if-gt v3, v4, :cond_1

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x20

    .line 27
    int-to-long v0, v3

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    const/16 v4, -0x38

    .line 32
    .line 33
    if-lt v3, v4, :cond_2

    .line 34
    .line 35
    const/16 v4, -0x29

    .line 36
    .line 37
    if-gt v3, v4, :cond_2

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x30

    .line 40
    .line 41
    shl-int/lit8 v3, v3, 0x8

    .line 42
    .line 43
    aget-byte v0, v0, v2

    .line 44
    .line 45
    and-int/lit16 v0, v0, 0xff

    .line 46
    add-int/2addr v3, v0

    .line 47
    int-to-long v2, v3

    .line 48
    .line 49
    add-int/lit8 v0, v1, 0x2

    .line 50
    :goto_0
    move-wide v8, v2

    .line 51
    move v2, v0

    .line 52
    move-wide v0, v8

    .line 53
    goto :goto_3

    .line 54
    .line 55
    :cond_2
    const/16 v4, -0x40

    .line 56
    .line 57
    if-lt v3, v4, :cond_3

    .line 58
    .line 59
    const/16 v4, -0x39

    .line 60
    .line 61
    if-gt v3, v4, :cond_3

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x3c

    .line 64
    .line 65
    shl-int/lit8 v3, v3, 0x10

    .line 66
    .line 67
    aget-byte v2, v0, v2

    .line 68
    .line 69
    and-int/lit16 v2, v2, 0xff

    .line 70
    .line 71
    shl-int/lit8 v2, v2, 0x8

    .line 72
    add-int/2addr v3, v2

    .line 73
    .line 74
    add-int/lit8 v2, v1, 0x2

    .line 75
    .line 76
    aget-byte v0, v0, v2

    .line 77
    .line 78
    and-int/lit16 v0, v0, 0xff

    .line 79
    add-int/2addr v3, v0

    .line 80
    int-to-long v2, v3

    .line 81
    .line 82
    add-int/lit8 v0, v1, 0x3

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_3
    const/16 v4, -0x41

    .line 86
    .line 87
    if-ne v3, v4, :cond_5

    .line 88
    .line 89
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 90
    .line 91
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 92
    int-to-long v6, v2

    .line 93
    add-long/2addr v4, v6

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 97
    move-result v0

    .line 98
    .line 99
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    :goto_1
    int-to-long v2, v0

    .line 103
    goto :goto_2

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 107
    move-result v0

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :goto_2
    add-int/lit8 v0, v1, 0x5

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_5
    const/16 v4, -0x42

    .line 114
    .line 115
    if-ne v3, v4, :cond_7

    .line 116
    .line 117
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 118
    .line 119
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 120
    int-to-long v6, v2

    .line 121
    add-long/2addr v4, v6

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 125
    move-result-wide v2

    .line 126
    .line 127
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 128
    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    .line 133
    move-result-wide v2

    .line 134
    .line 135
    :cond_6
    add-int/lit8 v0, v1, 0x9

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :goto_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    move-result-object v0

    .line 143
    return-object v0

    .line 144
    .line 145
    :cond_7
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, v0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value0([BB)J

    .line 149
    move-result-wide v0

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    move-result-object v0

    .line 154
    return-object v0
.end method

.method public readInt64Value()J
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 6
    .line 7
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    aget-byte v3, v0, v1

    .line 12
    .line 13
    const/16 v4, -0x28

    .line 14
    .line 15
    if-lt v3, v4, :cond_0

    .line 16
    .line 17
    const/16 v4, -0x11

    .line 18
    .line 19
    if-gt v3, v4, :cond_0

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x20

    .line 22
    int-to-long v0, v3

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    const/16 v4, -0x38

    .line 26
    .line 27
    if-lt v3, v4, :cond_1

    .line 28
    .line 29
    const/16 v4, -0x29

    .line 30
    .line 31
    if-gt v3, v4, :cond_1

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x30

    .line 34
    .line 35
    shl-int/lit8 v3, v3, 0x8

    .line 36
    .line 37
    aget-byte v0, v0, v2

    .line 38
    .line 39
    and-int/lit16 v0, v0, 0xff

    .line 40
    add-int/2addr v3, v0

    .line 41
    int-to-long v2, v3

    .line 42
    .line 43
    add-int/lit8 v0, v1, 0x2

    .line 44
    :goto_0
    move-wide v8, v2

    .line 45
    move v2, v0

    .line 46
    move-wide v0, v8

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    const/16 v4, -0x40

    .line 50
    .line 51
    if-lt v3, v4, :cond_2

    .line 52
    .line 53
    const/16 v4, -0x39

    .line 54
    .line 55
    if-gt v3, v4, :cond_2

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x3c

    .line 58
    .line 59
    shl-int/lit8 v3, v3, 0x10

    .line 60
    .line 61
    aget-byte v2, v0, v2

    .line 62
    .line 63
    and-int/lit16 v2, v2, 0xff

    .line 64
    .line 65
    shl-int/lit8 v2, v2, 0x8

    .line 66
    add-int/2addr v3, v2

    .line 67
    .line 68
    add-int/lit8 v2, v1, 0x2

    .line 69
    .line 70
    aget-byte v0, v0, v2

    .line 71
    .line 72
    and-int/lit16 v0, v0, 0xff

    .line 73
    add-int/2addr v3, v0

    .line 74
    int-to-long v2, v3

    .line 75
    .line 76
    add-int/lit8 v0, v1, 0x3

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_2
    const/16 v4, -0x41

    .line 80
    .line 81
    if-ne v3, v4, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 85
    move-result v0

    .line 86
    int-to-long v2, v0

    .line 87
    .line 88
    add-int/lit8 v0, v1, 0x5

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_3
    const/16 v4, -0x42

    .line 92
    .line 93
    if-ne v3, v4, :cond_5

    .line 94
    .line 95
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 96
    .line 97
    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 98
    int-to-long v6, v2

    .line 99
    add-long/2addr v4, v6

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 103
    move-result-wide v2

    .line 104
    .line 105
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 106
    .line 107
    if-nez v0, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    .line 111
    move-result-wide v2

    .line 112
    .line 113
    :cond_4
    add-int/lit8 v0, v1, 0x9

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :goto_1
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 117
    return-wide v0

    .line 118
    .line 119
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value0([BB)J

    .line 123
    move-result-wide v0

    .line 124
    return-wide v0
.end method

.method public readInt64ValueArray()[J
    .locals 5

    .line 1
    .line 2
    const/16 v0, -0x6e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfMatch(B)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->HASH_TYPE:J

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64Array;->HASH_TYPE:J

    .line 21
    .line 22
    cmp-long v2, v0, v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->HASH_TYPE:J

    .line 27
    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->HASH_TYPE:J

    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v2, "not support "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    .line 72
    move-result v0

    .line 73
    const/4 v1, -0x1

    .line 74
    .line 75
    if-ne v0, v1, :cond_2

    .line 76
    const/4 v0, 0x0

    .line 77
    return-object v0

    .line 78
    .line 79
    :cond_2
    new-array v1, v0, [J

    .line 80
    const/4 v2, 0x0

    .line 81
    .line 82
    :goto_1
    if-ge v2, v0, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 86
    move-result-wide v3

    .line 87
    .line 88
    aput-wide v3, v1, v2

    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    return-object v1
.end method

.method public readLength()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    const/16 v4, -0x10

    .line 13
    .line 14
    if-lt v3, v4, :cond_0

    .line 15
    .line 16
    const/16 v4, 0x2f

    .line 17
    .line 18
    if-gt v3, v4, :cond_0

    .line 19
    return v3

    .line 20
    .line 21
    :cond_0
    const/16 v4, 0x30

    .line 22
    .line 23
    if-lt v3, v4, :cond_1

    .line 24
    .line 25
    const/16 v4, 0x3f

    .line 26
    .line 27
    if-gt v3, v4, :cond_1

    .line 28
    .line 29
    add-int/lit8 v3, v3, -0x38

    .line 30
    .line 31
    shl-int/lit8 v3, v3, 0x8

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 36
    .line 37
    aget-byte v0, v0, v2

    .line 38
    .line 39
    and-int/lit16 v0, v0, 0xff

    .line 40
    add-int/2addr v3, v0

    .line 41
    return v3

    .line 42
    .line 43
    :cond_1
    const/16 v1, 0x40

    .line 44
    .line 45
    if-lt v3, v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x47

    .line 48
    .line 49
    if-gt v3, v1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 53
    move-result v0

    .line 54
    .line 55
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 60
    return v0

    .line 61
    .line 62
    :cond_2
    const/16 v1, 0x48

    .line 63
    .line 64
    if-ne v3, v1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 68
    move-result v0

    .line 69
    .line 70
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x4

    .line 73
    .line 74
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 75
    .line 76
    const/high16 v1, 0x10000000

    .line 77
    .line 78
    if-gt v0, v1, :cond_3

    .line 79
    return v0

    .line 80
    .line 81
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 82
    .line 83
    const-string v1, "input length overflow"

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 87
    throw v0

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 91
    move-result-object v0

    .line 92
    throw v0
.end method

.method public readList([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfNull()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    .line 12
    move-result v0

    .line 13
    .line 14
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v2, v0, :cond_1

    .line 21
    .line 22
    aget-object v3, p1, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v1
.end method

.method public readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x57

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    .line 18
    aget-byte v2, v0, v2

    .line 19
    .line 20
    shl-int/lit8 v2, v2, 0x8

    .line 21
    .line 22
    add-int/lit8 v4, v1, 0x3

    .line 23
    .line 24
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    aget-byte v3, v0, v3

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    add-int/2addr v2, v3

    .line 30
    .line 31
    add-int/lit8 v3, v1, 0x4

    .line 32
    .line 33
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 34
    .line 35
    aget-byte v4, v0, v4

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x5

    .line 38
    .line 39
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 40
    .line 41
    aget-byte v0, v0, v3

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v4, v0}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_0
    const/16 v0, -0x51

    .line 49
    .line 50
    if-ne v2, v0, :cond_1

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 55
    const/4 v0, 0x0

    .line 56
    return-object v0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate0(I)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method

.method public final readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 4

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 3
    .line 4
    const/16 v1, 0x79

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x7a

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 28
    .line 29
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    .line 31
    aget-byte v2, v0, v1

    .line 32
    .line 33
    const/16 v3, 0x53

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0xb

    .line 48
    .line 49
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 50
    return-object v0

    .line 51
    .line 52
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 53
    .line 54
    const-string v1, "date only support string input"

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public final readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 4

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 3
    .line 4
    const/16 v1, 0x79

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x7a

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 28
    .line 29
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    .line 31
    aget-byte v2, v0, v1

    .line 32
    .line 33
    const/16 v3, 0x54

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0xc

    .line 48
    .line 49
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 50
    return-object v0

    .line 51
    .line 52
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 53
    .line 54
    const-string v1, "date only support string input"

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x51

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x9

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x52

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xa

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public readLocalDateTime()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x58

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    .line 18
    aget-byte v2, v0, v2

    .line 19
    .line 20
    shl-int/lit8 v2, v2, 0x8

    .line 21
    .line 22
    add-int/lit8 v4, v1, 0x3

    .line 23
    .line 24
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    aget-byte v3, v0, v3

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    add-int v5, v2, v3

    .line 31
    .line 32
    add-int/lit8 v2, v1, 0x4

    .line 33
    .line 34
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 35
    .line 36
    aget-byte v6, v0, v4

    .line 37
    .line 38
    add-int/lit8 v3, v1, 0x5

    .line 39
    .line 40
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 41
    .line 42
    aget-byte v7, v0, v2

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x6

    .line 45
    .line 46
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 47
    .line 48
    aget-byte v8, v0, v3

    .line 49
    .line 50
    add-int/lit8 v3, v1, 0x7

    .line 51
    .line 52
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 53
    .line 54
    aget-byte v9, v0, v2

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x8

    .line 57
    .line 58
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 59
    .line 60
    aget-byte v10, v0, v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 64
    move-result v11

    .line 65
    .line 66
    .line 67
    invoke-static/range {v5 .. v11}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 68
    move-result-object v0

    .line 69
    return-object v0

    .line 70
    .line 71
    :cond_0
    const/16 v0, -0x51

    .line 72
    .line 73
    if-ne v2, v0, :cond_1

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 78
    const/4 v0, 0x0

    .line 79
    return-object v0

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime0(I)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

.method public readLocalDateTime12()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x55

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xd

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalDateTime14()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x57

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xf

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalDateTime16()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x59

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x11

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalDateTime17()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x5a

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x12

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalDateTime18()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x5b

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x13

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    iput-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 9
    .line 10
    const/16 v3, 0x5c

    .line 11
    .line 12
    const-string v4, "date only support string input"

    .line 13
    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x14

    .line 27
    .line 28
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v4}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0

    .line 36
    .line 37
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v4}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method public final readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x5d

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x15

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalDateTimeX(I)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    iput-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 9
    .line 10
    const/16 v3, 0x49

    .line 11
    .line 12
    if-lt v2, v3, :cond_1

    .line 13
    .line 14
    const/16 v3, 0x78

    .line 15
    .line 16
    if-gt v2, v3, :cond_1

    .line 17
    .line 18
    const/16 v2, 0x15

    .line 19
    .line 20
    if-lt p1, v2, :cond_0

    .line 21
    .line 22
    const/16 v2, 0x1d

    .line 23
    .line 24
    if-gt p1, v2, :cond_0

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([BII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    add-int/2addr v1, p1

    .line 38
    .line 39
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 40
    return-object v0

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
    const-string v1, "illegal LocalDateTime string : "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    .line 69
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 70
    .line 71
    const-string v0, "date only support string input"

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p1
.end method

.method public readLocalTime()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, -0x59

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    .line 18
    aget-byte v2, v0, v2

    .line 19
    .line 20
    add-int/lit8 v4, v1, 0x3

    .line 21
    .line 22
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 23
    .line 24
    aget-byte v3, v0, v3

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x4

    .line 27
    .line 28
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 29
    .line 30
    aget-byte v0, v0, v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    .line 41
    :cond_0
    const/16 v0, 0x49

    .line 42
    .line 43
    if-lt v2, v0, :cond_4

    .line 44
    .line 45
    const/16 v0, 0x78

    .line 46
    .line 47
    if-gt v2, v0, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getStringLength()I

    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x5

    .line 53
    .line 54
    if-eq v0, v1, :cond_3

    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    .line 60
    const/16 v1, 0x12

    .line 61
    .line 62
    if-eq v0, v1, :cond_1

    .line 63
    .line 64
    .line 65
    packed-switch v0, :pswitch_data_0

    .line 66
    .line 67
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    const-string v3, "not support len : "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v1

    .line 89
    .line 90
    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime12()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    .line 95
    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime11()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    .line 100
    .line 101
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime10()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime18()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime8()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime5()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 117
    move-result-object v0

    .line 118
    return-object v0

    .line 119
    .line 120
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 124
    throw v0

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readLocalTime10()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x53

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime10([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xb

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalTime11()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x54

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime11([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xc

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalTime12()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x55

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime12([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xd

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalTime18()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x5b

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime18([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x13

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalTime5()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x4e

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime5([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x6

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final readLocalTime8()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x51

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x9

    .line 23
    .line 24
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    const-string v1, "date only support string input"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public readMillis19()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x5c

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([BILcom/alibaba/fastjson2/time/ZoneId;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x14

    .line 25
    .line 26
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 27
    return-wide v0

    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 30
    .line 31
    const-string v1, "date only support string input"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method

.method public readNull()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v0, v0, v1

    .line 11
    .line 12
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 13
    .line 14
    const/16 v1, -0x51

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "null not match, "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method

.method public readNullOrNewDate()Ljava/util/Date;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public readNumber()Ljava/lang/Number;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    const/16 v4, -0x10

    .line 13
    .line 14
    if-lt v3, v4, :cond_0

    .line 15
    .line 16
    const/16 v4, 0x2f

    .line 17
    .line 18
    if-gt v3, v4, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_0
    const/16 v4, 0x30

    .line 26
    .line 27
    if-lt v3, v4, :cond_1

    .line 28
    .line 29
    const/16 v4, 0x3f

    .line 30
    .line 31
    if-gt v3, v4, :cond_1

    .line 32
    .line 33
    add-int/lit8 v3, v3, -0x38

    .line 34
    .line 35
    shl-int/lit8 v3, v3, 0x8

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 40
    .line 41
    aget-byte v0, v0, v2

    .line 42
    .line 43
    and-int/lit16 v0, v0, 0xff

    .line 44
    add-int/2addr v3, v0

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    .line 51
    :cond_1
    const/16 v4, 0x40

    .line 52
    .line 53
    if-lt v3, v4, :cond_2

    .line 54
    .line 55
    const/16 v4, 0x47

    .line 56
    .line 57
    if-gt v3, v4, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 61
    move-result v0

    .line 62
    .line 63
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x2

    .line 66
    .line 67
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    .line 74
    :cond_2
    const/16 v4, -0x28

    .line 75
    .line 76
    if-lt v3, v4, :cond_3

    .line 77
    .line 78
    const/16 v5, -0x11

    .line 79
    .line 80
    if-gt v3, v5, :cond_3

    .line 81
    sub-int/2addr v3, v4

    .line 82
    int-to-long v0, v3

    .line 83
    .line 84
    const-wide/16 v2, -0x8

    .line 85
    add-long/2addr v0, v2

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    move-result-object v0

    .line 90
    return-object v0

    .line 91
    .line 92
    :cond_3
    const/16 v4, -0x38

    .line 93
    .line 94
    if-lt v3, v4, :cond_4

    .line 95
    .line 96
    const/16 v4, -0x29

    .line 97
    .line 98
    if-gt v3, v4, :cond_4

    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x30

    .line 101
    .line 102
    shl-int/lit8 v3, v3, 0x8

    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x2

    .line 105
    .line 106
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 107
    .line 108
    aget-byte v0, v0, v2

    .line 109
    .line 110
    and-int/lit16 v0, v0, 0xff

    .line 111
    add-int/2addr v3, v0

    .line 112
    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    .line 118
    :cond_4
    const/16 v4, -0x40

    .line 119
    .line 120
    if-lt v3, v4, :cond_5

    .line 121
    .line 122
    const/16 v4, -0x39

    .line 123
    .line 124
    if-gt v3, v4, :cond_5

    .line 125
    .line 126
    add-int/lit8 v3, v3, 0x3c

    .line 127
    .line 128
    shl-int/lit8 v3, v3, 0x10

    .line 129
    .line 130
    add-int/lit8 v4, v1, 0x2

    .line 131
    .line 132
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 133
    .line 134
    aget-byte v2, v0, v2

    .line 135
    .line 136
    and-int/lit16 v2, v2, 0xff

    .line 137
    .line 138
    shl-int/lit8 v2, v2, 0x8

    .line 139
    add-int/2addr v3, v2

    .line 140
    .line 141
    add-int/lit8 v1, v1, 0x3

    .line 142
    .line 143
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 144
    .line 145
    aget-byte v0, v0, v4

    .line 146
    .line 147
    and-int/lit16 v0, v0, 0xff

    .line 148
    add-int/2addr v3, v0

    .line 149
    .line 150
    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v0

    .line 153
    return-object v0

    .line 154
    .line 155
    :cond_5
    const/16 v4, -0x6e

    .line 156
    .line 157
    if-eq v3, v4, :cond_d

    .line 158
    .line 159
    const/16 v4, 0x48

    .line 160
    .line 161
    if-eq v3, v4, :cond_c

    .line 162
    .line 163
    const/16 v4, 0x79

    .line 164
    .line 165
    if-eq v3, v4, :cond_b

    .line 166
    .line 167
    const/16 v4, 0x7a

    .line 168
    .line 169
    if-eq v3, v4, :cond_a

    .line 170
    .line 171
    .line 172
    packed-switch v3, :pswitch_data_0

    .line 173
    .line 174
    const/16 v0, 0x49

    .line 175
    .line 176
    if-lt v3, v0, :cond_6

    .line 177
    .line 178
    const/16 v1, 0x78

    .line 179
    .line 180
    if-gt v3, v1, :cond_6

    .line 181
    sub-int/2addr v3, v0

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 188
    add-int/2addr v1, v3

    .line 189
    .line 190
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 191
    .line 192
    .line 193
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 194
    move-result-object v0

    .line 195
    return-object v0

    .line 196
    .line 197
    .line 198
    :cond_6
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 199
    move-result-object v0

    .line 200
    throw v0

    .line 201
    .line 202
    .line 203
    :pswitch_0
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 204
    move-result v0

    .line 205
    .line 206
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 207
    .line 208
    add-int/lit8 v1, v1, 0x4

    .line 209
    .line 210
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 211
    int-to-long v0, v0

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    move-result-object v0

    .line 216
    return-object v0

    .line 217
    .line 218
    :pswitch_1
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 219
    .line 220
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 221
    int-to-long v5, v2

    .line 222
    add-long/2addr v3, v5

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 226
    move-result-wide v0

    .line 227
    .line 228
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 229
    .line 230
    add-int/lit8 v2, v2, 0x8

    .line 231
    .line 232
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 233
    .line 234
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 235
    .line 236
    if-eqz v2, :cond_7

    .line 237
    goto :goto_0

    .line 238
    .line 239
    .line 240
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 241
    move-result-wide v0

    .line 242
    .line 243
    .line 244
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    move-result-object v0

    .line 246
    return-object v0

    .line 247
    .line 248
    :pswitch_2
    add-int/lit8 v1, v1, 0x2

    .line 249
    .line 250
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 251
    .line 252
    aget-byte v0, v0, v2

    .line 253
    .line 254
    .line 255
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 256
    move-result-object v0

    .line 257
    return-object v0

    .line 258
    .line 259
    :pswitch_3
    add-int/lit8 v3, v1, 0x2

    .line 260
    .line 261
    aget-byte v3, v0, v3

    .line 262
    .line 263
    and-int/lit16 v3, v3, 0xff

    .line 264
    .line 265
    aget-byte v0, v0, v2

    .line 266
    .line 267
    shl-int/lit8 v0, v0, 0x8

    .line 268
    add-int/2addr v3, v0

    .line 269
    .line 270
    add-int/lit8 v1, v1, 0x3

    .line 271
    .line 272
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 273
    int-to-short v0, v3

    .line 274
    .line 275
    .line 276
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 277
    move-result-object v0

    .line 278
    return-object v0

    .line 279
    .line 280
    .line 281
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 282
    move-result v0

    .line 283
    .line 284
    new-array v1, v0, [B

    .line 285
    .line 286
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 287
    .line 288
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 289
    const/4 v4, 0x0

    .line 290
    .line 291
    .line 292
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    .line 294
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 295
    add-int/2addr v2, v0

    .line 296
    .line 297
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 298
    .line 299
    new-instance v0, Ljava/math/BigInteger;

    .line 300
    .line 301
    .line 302
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 303
    return-object v0

    .line 304
    .line 305
    .line 306
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 307
    move-result-wide v0

    .line 308
    .line 309
    .line 310
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 311
    move-result-object v0

    .line 312
    return-object v0

    .line 313
    .line 314
    .line 315
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 316
    move-result v0

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 320
    move-result-object v1

    .line 321
    .line 322
    if-nez v0, :cond_8

    .line 323
    .line 324
    new-instance v0, Ljava/math/BigDecimal;

    .line 325
    .line 326
    .line 327
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 328
    return-object v0

    .line 329
    .line 330
    :cond_8
    new-instance v2, Ljava/math/BigDecimal;

    .line 331
    .line 332
    .line 333
    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 334
    return-object v2

    .line 335
    .line 336
    .line 337
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 338
    move-result-wide v0

    .line 339
    .line 340
    .line 341
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 342
    move-result-object v0

    .line 343
    return-object v0

    .line 344
    .line 345
    .line 346
    :pswitch_8
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 347
    move-result v0

    .line 348
    .line 349
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 350
    .line 351
    add-int/lit8 v1, v1, 0x4

    .line 352
    .line 353
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 354
    .line 355
    .line 356
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 357
    move-result v0

    .line 358
    .line 359
    .line 360
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 361
    move-result-object v0

    .line 362
    return-object v0

    .line 363
    .line 364
    .line 365
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 366
    move-result v0

    .line 367
    int-to-float v0, v0

    .line 368
    .line 369
    .line 370
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 371
    move-result-object v0

    .line 372
    return-object v0

    .line 373
    .line 374
    :pswitch_a
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 375
    .line 376
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 377
    int-to-long v5, v2

    .line 378
    add-long/2addr v3, v5

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 382
    move-result-wide v0

    .line 383
    .line 384
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 385
    .line 386
    add-int/lit8 v2, v2, 0x8

    .line 387
    .line 388
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 389
    .line 390
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 391
    .line 392
    if-eqz v2, :cond_9

    .line 393
    goto :goto_1

    .line 394
    .line 395
    .line 396
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 397
    move-result-wide v0

    .line 398
    .line 399
    .line 400
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 401
    move-result-wide v0

    .line 402
    .line 403
    .line 404
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 405
    move-result-object v0

    .line 406
    return-object v0

    .line 407
    .line 408
    .line 409
    :pswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 410
    move-result-wide v0

    .line 411
    long-to-double v0, v0

    .line 412
    .line 413
    .line 414
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 415
    move-result-object v0

    .line 416
    return-object v0

    .line 417
    .line 418
    :pswitch_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 419
    .line 420
    .line 421
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 422
    move-result-object v0

    .line 423
    return-object v0

    .line 424
    .line 425
    :pswitch_d
    const-wide/16 v0, 0x0

    .line 426
    .line 427
    .line 428
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 429
    move-result-object v0

    .line 430
    return-object v0

    .line 431
    :pswitch_e
    const/4 v0, 0x0

    .line 432
    return-object v0

    .line 433
    .line 434
    .line 435
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 436
    move-result v0

    .line 437
    .line 438
    new-instance v1, Ljava/lang/String;

    .line 439
    .line 440
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 441
    .line 442
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 443
    .line 444
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 445
    .line 446
    .line 447
    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 448
    .line 449
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 450
    add-int/2addr v2, v0

    .line 451
    .line 452
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 453
    .line 454
    .line 455
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 456
    move-result-object v0

    .line 457
    return-object v0

    .line 458
    .line 459
    .line 460
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 461
    move-result v0

    .line 462
    .line 463
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getLatin1String(II)Ljava/lang/String;

    .line 467
    move-result-object v1

    .line 468
    .line 469
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 470
    add-int/2addr v2, v0

    .line 471
    .line 472
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 473
    .line 474
    .line 475
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 476
    move-result-object v0

    .line 477
    return-object v0

    .line 478
    .line 479
    .line 480
    :cond_c
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 481
    move-result v0

    .line 482
    .line 483
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 484
    .line 485
    add-int/lit8 v1, v1, 0x4

    .line 486
    .line 487
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 488
    .line 489
    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    move-result-object v0

    .line 492
    return-object v0

    .line 493
    .line 494
    .line 495
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 496
    move-result-object v0

    .line 497
    .line 498
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 499
    .line 500
    const-string v2, "not support input type : "

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    move-result-object v0

    .line 505
    .line 506
    .line 507
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 508
    throw v1

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
    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public readNumber0()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public readObject()Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    .line 6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 7
    .line 8
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 9
    .line 10
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    add-int/lit8 v6, v5, 0x1

    .line 13
    .line 14
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    .line 16
    aget-byte v5, v1, v5

    .line 17
    .line 18
    iput-byte v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 19
    .line 20
    const/16 v6, -0x51

    .line 21
    const/4 v7, 0x0

    .line 22
    .line 23
    if-ne v5, v6, :cond_0

    .line 24
    return-object v7

    .line 25
    .line 26
    :cond_0
    const/16 v6, -0x5a

    .line 27
    .line 28
    if-lt v5, v6, :cond_20

    .line 29
    .line 30
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 31
    .line 32
    iget-wide v8, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 33
    and-long/2addr v8, v3

    .line 34
    .line 35
    const-wide/16 v10, 0x0

    .line 36
    .line 37
    cmp-long v5, v8, v10

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    new-instance v2, Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Ljava/util/Map;

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson2/JSONObject;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 62
    .line 63
    :goto_0
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 64
    .line 65
    aget-byte v8, v1, v5

    .line 66
    .line 67
    const/16 v9, -0x5b

    .line 68
    .line 69
    if-ne v8, v9, :cond_3

    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 74
    return-object v2

    .line 75
    .line 76
    :cond_3
    const/16 v5, 0x49

    .line 77
    .line 78
    if-lt v8, v5, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldName()Ljava/lang/String;

    .line 82
    move-result-object v8

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 87
    move-result-object v8

    .line 88
    .line 89
    :goto_1
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 90
    .line 91
    aget-byte v12, v1, v9

    .line 92
    .line 93
    const-string v13, ".."

    .line 94
    .line 95
    const/16 v14, -0x6d

    .line 96
    .line 97
    if-ne v12, v14, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    .line 104
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v9

    .line 106
    .line 107
    if-eqz v9, :cond_5

    .line 108
    .line 109
    .line 110
    invoke-interface {v2, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    :goto_2
    move/from16 v18, v6

    .line 113
    .line 114
    move-wide/from16 v16, v10

    .line 115
    move-object v10, v7

    .line 116
    .line 117
    goto/16 :goto_10

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-static {v5}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 121
    move-result-object v5

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2, v8, v5}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_6
    const/16 v15, 0x7e

    .line 128
    .line 129
    if-lt v12, v5, :cond_7

    .line 130
    .line 131
    if-gt v12, v15, :cond_7

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    move/from16 v18, v6

    .line 138
    .line 139
    move-wide/from16 v16, v10

    .line 140
    :goto_3
    move-object v10, v7

    .line 141
    .line 142
    goto/16 :goto_f

    .line 143
    .line 144
    :cond_7
    move-wide/from16 v16, v10

    .line 145
    .line 146
    const/16 v10, 0x2f

    .line 147
    .line 148
    const/16 v11, -0x10

    .line 149
    .line 150
    if-lt v12, v11, :cond_8

    .line 151
    .line 152
    if-gt v12, v10, :cond_8

    .line 153
    .line 154
    add-int/lit8 v9, v9, 0x1

    .line 155
    .line 156
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 157
    .line 158
    .line 159
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v5

    .line 161
    .line 162
    :goto_4
    move/from16 v18, v6

    .line 163
    goto :goto_3

    .line 164
    .line 165
    :cond_8
    const/16 v15, -0x4f

    .line 166
    .line 167
    if-ne v12, v15, :cond_9

    .line 168
    .line 169
    add-int/lit8 v9, v9, 0x1

    .line 170
    .line 171
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 172
    .line 173
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 174
    goto :goto_4

    .line 175
    .line 176
    :cond_9
    const/16 v15, -0x50

    .line 177
    .line 178
    if-ne v12, v15, :cond_a

    .line 179
    .line 180
    add-int/lit8 v9, v9, 0x1

    .line 181
    .line 182
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 183
    .line 184
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 185
    goto :goto_4

    .line 186
    .line 187
    :cond_a
    if-ne v12, v6, :cond_b

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    .line 191
    move-result-object v5

    .line 192
    goto :goto_4

    .line 193
    .line 194
    :cond_b
    const/16 v15, -0x42

    .line 195
    .line 196
    if-ne v12, v15, :cond_d

    .line 197
    .line 198
    add-int/lit8 v9, v9, 0x1

    .line 199
    .line 200
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 201
    .line 202
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 203
    .line 204
    sget-wide v10, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 205
    int-to-long v12, v9

    .line 206
    add-long/2addr v10, v12

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 210
    move-result-wide v9

    .line 211
    .line 212
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 213
    .line 214
    add-int/lit8 v5, v5, 0x8

    .line 215
    .line 216
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 217
    .line 218
    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 219
    .line 220
    if-eqz v5, :cond_c

    .line 221
    goto :goto_5

    .line 222
    .line 223
    .line 224
    :cond_c
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    .line 225
    move-result-wide v9

    .line 226
    .line 227
    .line 228
    :goto_5
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    move-result-object v5

    .line 230
    goto :goto_4

    .line 231
    .line 232
    :cond_d
    const/16 v15, 0x3f

    .line 233
    .line 234
    const/16 v6, 0x30

    .line 235
    .line 236
    const/16 v5, -0x6c

    .line 237
    .line 238
    if-lt v12, v5, :cond_1b

    .line 239
    .line 240
    const/16 v5, -0x5c

    .line 241
    .line 242
    if-gt v12, v5, :cond_1b

    .line 243
    .line 244
    add-int/lit8 v7, v9, 0x1

    .line 245
    .line 246
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 247
    .line 248
    if-ne v12, v5, :cond_10

    .line 249
    .line 250
    aget-byte v5, v1, v7

    .line 251
    .line 252
    if-lt v5, v11, :cond_e

    .line 253
    .line 254
    if-gt v5, v10, :cond_e

    .line 255
    .line 256
    add-int/lit8 v9, v9, 0x2

    .line 257
    .line 258
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 259
    goto :goto_6

    .line 260
    .line 261
    :cond_e
    if-lt v5, v6, :cond_f

    .line 262
    .line 263
    if-gt v5, v15, :cond_f

    .line 264
    .line 265
    add-int/lit8 v5, v5, -0x38

    .line 266
    .line 267
    shl-int/lit8 v5, v5, 0x8

    .line 268
    .line 269
    add-int/lit8 v6, v9, 0x2

    .line 270
    .line 271
    aget-byte v6, v1, v6

    .line 272
    .line 273
    and-int/lit16 v6, v6, 0xff

    .line 274
    add-int/2addr v5, v6

    .line 275
    .line 276
    add-int/lit8 v9, v9, 0x3

    .line 277
    .line 278
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 279
    goto :goto_6

    .line 280
    .line 281
    .line 282
    :cond_f
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 283
    move-result v5

    .line 284
    goto :goto_6

    .line 285
    .line 286
    :cond_10
    add-int/lit8 v5, v12, 0x6c

    .line 287
    .line 288
    :goto_6
    if-nez v5, :cond_13

    .line 289
    .line 290
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 291
    .line 292
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 293
    and-long/2addr v5, v3

    .line 294
    .line 295
    cmp-long v5, v5, v16

    .line 296
    .line 297
    if-eqz v5, :cond_11

    .line 298
    .line 299
    new-instance v5, Ljava/util/ArrayList;

    .line 300
    .line 301
    .line 302
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    :goto_7
    const/4 v10, 0x0

    .line 304
    .line 305
    const/16 v15, -0x5a

    .line 306
    .line 307
    goto/16 :goto_d

    .line 308
    .line 309
    :cond_11
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 310
    .line 311
    iget-object v5, v5, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 312
    .line 313
    if-eqz v5, :cond_12

    .line 314
    .line 315
    .line 316
    invoke-interface {v5}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 317
    move-result-object v5

    .line 318
    goto :goto_7

    .line 319
    .line 320
    :cond_12
    new-instance v5, Lcom/alibaba/fastjson2/JSONArray;

    .line 321
    .line 322
    .line 323
    invoke-direct {v5}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 324
    goto :goto_7

    .line 325
    .line 326
    :cond_13
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 327
    .line 328
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 329
    and-long/2addr v6, v3

    .line 330
    .line 331
    cmp-long v6, v6, v16

    .line 332
    .line 333
    if-eqz v6, :cond_14

    .line 334
    .line 335
    new-instance v6, Ljava/util/ArrayList;

    .line 336
    .line 337
    .line 338
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    goto :goto_8

    .line 340
    .line 341
    :cond_14
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 342
    .line 343
    iget-object v6, v6, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 344
    .line 345
    if-eqz v6, :cond_15

    .line 346
    .line 347
    .line 348
    invoke-interface {v6}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 349
    move-result-object v6

    .line 350
    .line 351
    check-cast v6, Ljava/util/List;

    .line 352
    goto :goto_8

    .line 353
    .line 354
    :cond_15
    new-instance v6, Lcom/alibaba/fastjson2/JSONArray;

    .line 355
    .line 356
    .line 357
    invoke-direct {v6, v5}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 358
    :goto_8
    const/4 v7, 0x0

    .line 359
    .line 360
    :goto_9
    if-ge v7, v5, :cond_1a

    .line 361
    .line 362
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 363
    .line 364
    aget-byte v9, v1, v9

    .line 365
    .line 366
    if-ne v9, v14, :cond_17

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    .line 370
    move-result-object v9

    .line 371
    .line 372
    .line 373
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    move-result v10

    .line 375
    .line 376
    if-eqz v10, :cond_16

    .line 377
    .line 378
    .line 379
    invoke-interface {v6, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v10, 0x0

    .line 381
    .line 382
    :goto_a
    const/16 v11, 0x49

    .line 383
    .line 384
    const/16 v12, 0x7e

    .line 385
    .line 386
    const/16 v15, -0x5a

    .line 387
    goto :goto_c

    .line 388
    :cond_16
    const/4 v10, 0x0

    .line 389
    .line 390
    .line 391
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    invoke-static {v9}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 395
    move-result-object v9

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v6, v7, v9}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    .line 399
    goto :goto_a

    .line 400
    :cond_17
    const/4 v10, 0x0

    .line 401
    .line 402
    const/16 v11, 0x49

    .line 403
    .line 404
    const/16 v12, 0x7e

    .line 405
    .line 406
    if-lt v9, v11, :cond_18

    .line 407
    .line 408
    if-gt v9, v12, :cond_18

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 412
    move-result-object v9

    .line 413
    .line 414
    const/16 v15, -0x5a

    .line 415
    goto :goto_b

    .line 416
    .line 417
    :cond_18
    const/16 v15, -0x5a

    .line 418
    .line 419
    if-ne v9, v15, :cond_19

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    .line 423
    move-result-object v9

    .line 424
    goto :goto_b

    .line 425
    .line 426
    .line 427
    :cond_19
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 428
    move-result-object v9

    .line 429
    .line 430
    .line 431
    :goto_b
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 434
    goto :goto_9

    .line 435
    :cond_1a
    const/4 v10, 0x0

    .line 436
    .line 437
    const/16 v15, -0x5a

    .line 438
    move-object v5, v6

    .line 439
    .line 440
    :goto_d
    move/from16 v18, v15

    .line 441
    goto :goto_f

    .line 442
    :cond_1b
    move-object v10, v7

    .line 443
    .line 444
    const/16 v18, -0x5a

    .line 445
    .line 446
    if-lt v12, v6, :cond_1c

    .line 447
    .line 448
    if-gt v12, v15, :cond_1c

    .line 449
    .line 450
    add-int/lit8 v12, v12, -0x38

    .line 451
    .line 452
    shl-int/lit8 v5, v12, 0x8

    .line 453
    .line 454
    add-int/lit8 v9, v9, 0x1

    .line 455
    .line 456
    aget-byte v6, v1, v9

    .line 457
    .line 458
    and-int/lit16 v6, v6, 0xff

    .line 459
    add-int/2addr v5, v6

    .line 460
    .line 461
    .line 462
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    move-result-object v5

    .line 464
    .line 465
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 466
    .line 467
    add-int/lit8 v6, v6, 0x2

    .line 468
    .line 469
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 470
    goto :goto_f

    .line 471
    .line 472
    :cond_1c
    const/16 v5, 0x40

    .line 473
    .line 474
    if-lt v12, v5, :cond_1d

    .line 475
    .line 476
    const/16 v5, 0x47

    .line 477
    .line 478
    if-gt v12, v5, :cond_1d

    .line 479
    .line 480
    add-int/lit8 v9, v9, 0x1

    .line 481
    .line 482
    .line 483
    invoke-static {v1, v9, v12}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 484
    move-result v5

    .line 485
    .line 486
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 487
    .line 488
    add-int/lit8 v6, v6, 0x3

    .line 489
    .line 490
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 491
    .line 492
    new-instance v6, Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 496
    :goto_e
    move-object v5, v6

    .line 497
    goto :goto_f

    .line 498
    .line 499
    :cond_1d
    const/16 v5, 0x48

    .line 500
    .line 501
    if-ne v12, v5, :cond_1e

    .line 502
    .line 503
    add-int/lit8 v9, v9, 0x1

    .line 504
    .line 505
    .line 506
    invoke-static {v1, v9}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 507
    move-result v5

    .line 508
    .line 509
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 510
    .line 511
    add-int/lit8 v6, v6, 0x5

    .line 512
    .line 513
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 514
    .line 515
    new-instance v6, Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 519
    goto :goto_e

    .line 520
    .line 521
    .line 522
    :cond_1e
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 523
    move-result-object v5

    .line 524
    .line 525
    :goto_f
    if-nez v5, :cond_1f

    .line 526
    .line 527
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 528
    .line 529
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 530
    and-long/2addr v6, v3

    .line 531
    .line 532
    cmp-long v6, v6, v16

    .line 533
    .line 534
    if-eqz v6, :cond_1f

    .line 535
    goto :goto_10

    .line 536
    .line 537
    .line 538
    :cond_1f
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :goto_10
    move-object v7, v10

    .line 540
    .line 541
    move-wide/from16 v10, v16

    .line 542
    .line 543
    move/from16 v6, v18

    .line 544
    .line 545
    goto/16 :goto_0

    .line 546
    .line 547
    :cond_20
    const/16 v1, -0x6e

    .line 548
    .line 549
    if-ne v5, v1, :cond_21

    .line 550
    .line 551
    const-wide/16 v2, 0x0

    .line 552
    .line 553
    const-wide/16 v4, 0x0

    .line 554
    .line 555
    const-class v1, Ljava/util/Map;

    .line 556
    .line 557
    .line 558
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 559
    move-result-object v1

    .line 560
    const/4 v3, 0x0

    .line 561
    const/4 v2, 0x0

    .line 562
    move-object v0, v1

    .line 563
    .line 564
    move-object/from16 v1, p0

    .line 565
    .line 566
    .line 567
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 568
    move-result-object v0

    .line 569
    .line 570
    check-cast v0, Ljava/util/Map;

    .line 571
    return-object v0

    .line 572
    .line 573
    .line 574
    :cond_21
    invoke-static {v5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 575
    move-result-object v0

    .line 576
    throw v0
.end method

.method public readPattern()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public readReference()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v2, -0x6d

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isString()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "reference not support input "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    iput-byte v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 13
    .line 14
    const/16 v4, -0x51

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    return-object v5

    .line 19
    .line 20
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 21
    .line 22
    const/16 v4, 0x49

    .line 23
    .line 24
    if-lt v3, v4, :cond_d

    .line 25
    .line 26
    const/16 v6, 0x79

    .line 27
    .line 28
    if-gt v3, v6, :cond_d

    .line 29
    .line 30
    if-ne v3, v6, :cond_4

    .line 31
    .line 32
    aget-byte v2, v0, v2

    .line 33
    .line 34
    const/16 v3, -0x10

    .line 35
    .line 36
    if-lt v2, v3, :cond_1

    .line 37
    .line 38
    const/16 v3, 0x2f

    .line 39
    .line 40
    if-gt v2, v3, :cond_1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    const/16 v3, 0x30

    .line 48
    .line 49
    if-lt v2, v3, :cond_2

    .line 50
    .line 51
    const/16 v3, 0x3f

    .line 52
    .line 53
    if-gt v2, v3, :cond_2

    .line 54
    .line 55
    add-int/lit8 v2, v2, -0x38

    .line 56
    .line 57
    shl-int/lit8 v2, v2, 0x8

    .line 58
    .line 59
    add-int/lit8 v3, v1, 0x2

    .line 60
    .line 61
    aget-byte v0, v0, v3

    .line 62
    .line 63
    and-int/lit16 v0, v0, 0xff

    .line 64
    add-int/2addr v2, v0

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x3

    .line 67
    .line 68
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    const/16 v3, 0x40

    .line 72
    .line 73
    if-lt v2, v3, :cond_3

    .line 74
    .line 75
    const/16 v3, 0x47

    .line 76
    .line 77
    if-gt v2, v3, :cond_3

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x2

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    .line 83
    move-result v2

    .line 84
    .line 85
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x3

    .line 88
    .line 89
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 94
    move-result v2

    .line 95
    .line 96
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 97
    .line 98
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_4
    add-int/lit8 v2, v3, -0x49

    .line 102
    .line 103
    :goto_1
    if-gez v2, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 106
    neg-int v1, v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    .line 113
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 114
    .line 115
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 116
    .line 117
    const/16 v1, 0x22

    .line 118
    .line 119
    if-ge v0, v1, :cond_a

    .line 120
    .line 121
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    check-cast v0, [C

    .line 134
    .line 135
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 136
    .line 137
    :cond_6
    if-eqz v0, :cond_7

    .line 138
    array-length v1, v0

    .line 139
    .line 140
    if-ge v1, v2, :cond_8

    .line 141
    .line 142
    :cond_7
    new-array v0, v2, [C

    .line 143
    .line 144
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->charBuf:[C

    .line 145
    :cond_8
    const/4 v1, 0x0

    .line 146
    move v3, v1

    .line 147
    .line 148
    :goto_2
    if-ge v3, v2, :cond_9

    .line 149
    .line 150
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 151
    .line 152
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 153
    add-int/2addr v6, v3

    .line 154
    .line 155
    aget-byte v4, v4, v6

    .line 156
    .line 157
    and-int/lit16 v4, v4, 0xff

    .line 158
    int-to-char v4, v4

    .line 159
    .line 160
    aput-char v4, v0, v3

    .line 161
    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 163
    goto :goto_2

    .line 164
    .line 165
    :cond_9
    new-instance v3, Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 169
    goto :goto_3

    .line 170
    .line 171
    :cond_a
    new-instance v3, Ljava/lang/String;

    .line 172
    .line 173
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 174
    .line 175
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 176
    .line 177
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 178
    .line 179
    .line 180
    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 181
    .line 182
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 183
    add-int/2addr v0, v2

    .line 184
    .line 185
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 186
    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 188
    .line 189
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 190
    .line 191
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 192
    .line 193
    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 194
    and-long/2addr v0, v6

    .line 195
    .line 196
    const-wide/16 v6, 0x0

    .line 197
    .line 198
    cmp-long v0, v0, v6

    .line 199
    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 204
    move-result-object v3

    .line 205
    .line 206
    .line 207
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 208
    move-result v0

    .line 209
    .line 210
    if-eqz v0, :cond_c

    .line 211
    .line 212
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 213
    .line 214
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 215
    .line 216
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 217
    .line 218
    iget-wide v8, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 219
    and-long/2addr v0, v8

    .line 220
    .line 221
    cmp-long v0, v0, v6

    .line 222
    .line 223
    if-eqz v0, :cond_c

    .line 224
    return-object v5

    .line 225
    :cond_c
    return-object v3

    .line 226
    .line 227
    .line 228
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readStringNonAscii()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    return-object v0
.end method

.method public readStringArray()[Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    const/16 v0, -0x6e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfMatch(B)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;->HASH_TYPE:J

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "not support type "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    .line 54
    move-result v0

    .line 55
    const/4 v1, -0x1

    .line 56
    .line 57
    if-ne v0, v1, :cond_2

    .line 58
    const/4 v0, 0x0

    .line 59
    return-object v0

    .line 60
    .line 61
    :cond_2
    new-array v1, v0, [Ljava/lang/String;

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    :goto_1
    if-ge v2, v0, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    aput-object v3, v1, v2

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    return-object v1
.end method

.method public readTypeHashCode()J
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    iput-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 9
    .line 10
    const/16 v3, 0x79

    .line 11
    .line 12
    if-ne v2, v3, :cond_5

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x1

    .line 15
    .line 16
    aget-byte v3, v0, v3

    .line 17
    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    if-le v3, v4, :cond_5

    .line 21
    .line 22
    const/16 v5, 0x3f

    .line 23
    .line 24
    if-gt v3, v5, :cond_5

    .line 25
    .line 26
    const/16 v5, 0x2f

    .line 27
    .line 28
    if-gt v3, v5, :cond_0

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v3, v3, -0x38

    .line 34
    shl-int/2addr v3, v4

    .line 35
    .line 36
    add-int/lit8 v6, v1, 0x2

    .line 37
    .line 38
    aget-byte v6, v0, v6

    .line 39
    .line 40
    and-int/lit16 v6, v6, 0xff

    .line 41
    add-int/2addr v3, v6

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x3

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    :goto_0
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 49
    const/4 v8, 0x0

    .line 50
    move v9, v1

    .line 51
    .line 52
    :goto_1
    if-ge v8, v3, :cond_1

    .line 53
    .line 54
    add-int/lit8 v10, v9, 0x1

    .line 55
    .line 56
    aget-byte v9, v0, v9

    .line 57
    int-to-long v11, v9

    .line 58
    xor-long/2addr v6, v11

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const-wide v11, 0x100000001b3L

    .line 64
    mul-long/2addr v6, v11

    .line 65
    .line 66
    add-int/lit8 v8, v8, 0x1

    .line 67
    move v9, v10

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    aget-byte v0, v0, v9

    .line 71
    .line 72
    if-ltz v0, :cond_5

    .line 73
    .line 74
    if-gt v0, v5, :cond_5

    .line 75
    .line 76
    add-int/lit8 v9, v9, 0x1

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 81
    .line 82
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 83
    .line 84
    iput-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 85
    .line 86
    iput-wide v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 87
    goto :goto_3

    .line 88
    .line 89
    :cond_2
    mul-int/lit8 v0, v0, 0x2

    .line 90
    .line 91
    add-int/lit8 v5, v0, 0x2

    .line 92
    .line 93
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 94
    .line 95
    const/16 v10, 0x20

    .line 96
    .line 97
    if-nez v8, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    .line 101
    move-result v5

    .line 102
    .line 103
    new-array v5, v5, [J

    .line 104
    .line 105
    iput-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    array-length v11, v8

    .line 108
    .line 109
    if-ge v11, v5, :cond_4

    .line 110
    .line 111
    add-int/lit8 v5, v0, 0x12

    .line 112
    .line 113
    .line 114
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 115
    move-result-object v5

    .line 116
    .line 117
    iput-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 118
    .line 119
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    int-to-long v11, v1

    .line 123
    .line 124
    shl-long v10, v11, v10

    .line 125
    int-to-long v12, v3

    .line 126
    shl-long/2addr v12, v4

    .line 127
    add-long/2addr v10, v12

    .line 128
    int-to-long v12, v2

    .line 129
    add-long/2addr v10, v12

    .line 130
    .line 131
    aput-wide v10, v5, v0

    .line 132
    .line 133
    :goto_3
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 134
    .line 135
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 136
    .line 137
    iput v9, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 138
    return-wide v6

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode0()J

    .line 142
    move-result-wide v0

    .line 143
    return-wide v0
.end method

.method public readTypeHashCode0()J
    .locals 25

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    aget-byte v3, v1, v2

    .line 9
    .line 10
    iput-byte v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 11
    .line 12
    const/16 v4, 0x7f

    .line 13
    .line 14
    const/16 v5, 0x48

    .line 15
    .line 16
    const/16 v6, 0x2f

    .line 17
    .line 18
    const/16 v7, -0x10

    .line 19
    .line 20
    const/16 v8, 0x20

    .line 21
    .line 22
    const-wide/16 v9, 0x0

    .line 23
    .line 24
    const/16 v11, 0x8

    .line 25
    .line 26
    if-ne v3, v4, :cond_5

    .line 27
    .line 28
    add-int/lit8 v3, v2, 0x1

    .line 29
    .line 30
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 31
    .line 32
    aget-byte v3, v1, v3

    .line 33
    .line 34
    iput-byte v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 35
    .line 36
    if-lt v3, v7, :cond_5

    .line 37
    .line 38
    if-gt v3, v5, :cond_5

    .line 39
    .line 40
    if-gt v3, v6, :cond_0

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x2

    .line 43
    .line 44
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 49
    move-result v3

    .line 50
    .line 51
    :goto_0
    if-gez v3, :cond_1

    .line 52
    .line 53
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 54
    neg-int v2, v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    .line 58
    move-result-wide v1

    .line 59
    return-wide v1

    .line 60
    .line 61
    :cond_1
    if-nez v3, :cond_3

    .line 62
    .line 63
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 64
    .line 65
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 66
    .line 67
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 68
    .line 69
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 70
    .line 71
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 72
    .line 73
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 74
    .line 75
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 76
    .line 77
    cmp-long v1, v1, v9

    .line 78
    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getNameHashCode()J

    .line 83
    move-result-wide v1

    .line 84
    .line 85
    iput-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 86
    .line 87
    :cond_2
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 88
    return-wide v1

    .line 89
    .line 90
    :cond_3
    mul-int/lit8 v3, v3, 0x2

    .line 91
    .line 92
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 93
    .line 94
    add-int/lit8 v2, v3, 0x1

    .line 95
    .line 96
    aget-wide v4, v1, v2

    .line 97
    long-to-int v2, v4

    .line 98
    int-to-byte v6, v2

    .line 99
    .line 100
    iput-byte v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 101
    shr-int/2addr v2, v11

    .line 102
    .line 103
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 104
    shr-long/2addr v4, v8

    .line 105
    long-to-int v2, v4

    .line 106
    .line 107
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 108
    .line 109
    aget-wide v4, v1, v3

    .line 110
    .line 111
    cmp-long v1, v4, v9

    .line 112
    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getNameHashCode()J

    .line 117
    move-result-wide v1

    .line 118
    .line 119
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 120
    .line 121
    aput-wide v1, v4, v3

    .line 122
    return-wide v1

    .line 123
    :cond_4
    return-wide v4

    .line 124
    .line 125
    :cond_5
    const/16 v2, 0x3f

    .line 126
    .line 127
    if-lt v3, v7, :cond_d

    .line 128
    .line 129
    if-gt v3, v5, :cond_d

    .line 130
    .line 131
    if-gt v3, v6, :cond_6

    .line 132
    .line 133
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 138
    move v5, v3

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_6
    if-gt v3, v2, :cond_7

    .line 142
    .line 143
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 144
    .line 145
    add-int/lit8 v4, v2, 0x1

    .line 146
    .line 147
    add-int/lit8 v5, v3, -0x38

    .line 148
    shl-int/2addr v5, v11

    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x2

    .line 151
    .line 152
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 153
    .line 154
    aget-byte v1, v1, v4

    .line 155
    .line 156
    and-int/lit16 v1, v1, 0xff

    .line 157
    add-int/2addr v5, v1

    .line 158
    goto :goto_1

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 162
    move-result v5

    .line 163
    .line 164
    :goto_1
    if-nez v5, :cond_9

    .line 165
    .line 166
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 167
    .line 168
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 169
    .line 170
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 171
    .line 172
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 173
    .line 174
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 175
    .line 176
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 177
    .line 178
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 179
    .line 180
    cmp-long v1, v1, v9

    .line 181
    .line 182
    if-nez v1, :cond_8

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    .line 189
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 190
    move-result-wide v1

    .line 191
    .line 192
    iput-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 193
    .line 194
    :cond_8
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 195
    goto :goto_2

    .line 196
    .line 197
    :cond_9
    if-gez v5, :cond_a

    .line 198
    .line 199
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 200
    .line 201
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 202
    neg-int v2, v5

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    .line 206
    move-result-wide v1

    .line 207
    goto :goto_2

    .line 208
    .line 209
    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 210
    .line 211
    mul-int/lit8 v2, v5, 0x2

    .line 212
    .line 213
    aget-wide v3, v1, v2

    .line 214
    .line 215
    cmp-long v6, v3, v9

    .line 216
    .line 217
    if-nez v6, :cond_b

    .line 218
    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 220
    .line 221
    aget-wide v2, v1, v2

    .line 222
    long-to-int v1, v2

    .line 223
    int-to-byte v4, v1

    .line 224
    .line 225
    iput-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 226
    shr-int/2addr v1, v11

    .line 227
    .line 228
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 229
    .line 230
    shr-long v1, v2, v8

    .line 231
    long-to-int v1, v1

    .line 232
    .line 233
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 237
    move-result-object v1

    .line 238
    .line 239
    .line 240
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 241
    move-result-wide v1

    .line 242
    goto :goto_2

    .line 243
    :cond_b
    move-wide v1, v3

    .line 244
    .line 245
    :goto_2
    const-wide/16 v3, -0x1

    .line 246
    .line 247
    cmp-long v3, v1, v3

    .line 248
    .line 249
    if-eqz v3, :cond_c

    .line 250
    return-wide v1

    .line 251
    .line 252
    .line 253
    :cond_c
    invoke-static {v5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->typeRefNotFound(I)Lcom/alibaba/fastjson2/JSONException;

    .line 254
    move-result-object v1

    .line 255
    throw v1

    .line 256
    .line 257
    :cond_d
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 258
    .line 259
    add-int/lit8 v5, v4, 0x1

    .line 260
    .line 261
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 262
    .line 263
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 264
    .line 265
    const/16 v12, 0x30

    .line 266
    .line 267
    const/16 v13, 0x7d

    .line 268
    .line 269
    const/16 v14, 0x7c

    .line 270
    .line 271
    const/16 v15, 0x7b

    .line 272
    .line 273
    move-wide/from16 v16, v9

    .line 274
    .line 275
    const/16 v9, 0x7a

    .line 276
    .line 277
    const/16 v10, 0x49

    .line 278
    .line 279
    const/16 v18, 0x38

    .line 280
    .line 281
    if-lt v3, v10, :cond_e

    .line 282
    .line 283
    const/16 v10, 0x78

    .line 284
    .line 285
    if-gt v3, v10, :cond_e

    .line 286
    .line 287
    add-int/lit8 v2, v3, -0x49

    .line 288
    .line 289
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 290
    goto :goto_5

    .line 291
    .line 292
    :cond_e
    const/16 v10, 0x79

    .line 293
    .line 294
    if-eq v3, v10, :cond_10

    .line 295
    .line 296
    if-eq v3, v9, :cond_10

    .line 297
    .line 298
    if-eq v3, v15, :cond_10

    .line 299
    .line 300
    if-eq v3, v14, :cond_10

    .line 301
    .line 302
    if-ne v3, v13, :cond_f

    .line 303
    goto :goto_3

    .line 304
    .line 305
    .line 306
    :cond_f
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readStringError()Lcom/alibaba/fastjson2/JSONException;

    .line 307
    move-result-object v1

    .line 308
    throw v1

    .line 309
    .line 310
    :cond_10
    :goto_3
    aget-byte v5, v1, v5

    .line 311
    .line 312
    if-lt v5, v7, :cond_11

    .line 313
    .line 314
    if-gt v5, v6, :cond_11

    .line 315
    .line 316
    add-int/lit8 v4, v4, 0x2

    .line 317
    .line 318
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 319
    .line 320
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 321
    goto :goto_4

    .line 322
    .line 323
    :cond_11
    if-lt v5, v12, :cond_12

    .line 324
    .line 325
    if-gt v5, v2, :cond_12

    .line 326
    .line 327
    add-int/lit8 v2, v4, 0x2

    .line 328
    .line 329
    add-int/lit8 v5, v5, -0x38

    .line 330
    shl-int/2addr v5, v11

    .line 331
    .line 332
    add-int/lit8 v4, v4, 0x3

    .line 333
    .line 334
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 335
    .line 336
    aget-byte v2, v1, v2

    .line 337
    .line 338
    and-int/lit16 v2, v2, 0xff

    .line 339
    add-int/2addr v5, v2

    .line 340
    .line 341
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 342
    goto :goto_4

    .line 343
    .line 344
    .line 345
    :cond_12
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 346
    move-result v2

    .line 347
    .line 348
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 349
    .line 350
    :goto_4
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 351
    .line 352
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 353
    .line 354
    :goto_5
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 355
    .line 356
    if-gez v2, :cond_13

    .line 357
    .line 358
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 359
    neg-int v2, v2

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    .line 363
    move-result-wide v4

    .line 364
    .line 365
    goto/16 :goto_12

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    :cond_13
    const-wide v4, 0x100000001b3L

    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    const-wide v19, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 376
    .line 377
    if-ne v3, v9, :cond_16

    .line 378
    .line 379
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 380
    add-int/2addr v9, v2

    .line 381
    .line 382
    :goto_6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 383
    .line 384
    if-ge v2, v9, :cond_15

    .line 385
    .line 386
    aget-byte v10, v1, v2

    .line 387
    .line 388
    if-ltz v10, :cond_14

    .line 389
    .line 390
    add-int/lit8 v2, v2, 0x1

    .line 391
    .line 392
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 393
    goto :goto_7

    .line 394
    .line 395
    :cond_14
    and-int/lit16 v10, v10, 0xff

    .line 396
    .line 397
    shr-int/lit8 v12, v10, 0x4

    .line 398
    .line 399
    .line 400
    packed-switch v12, :pswitch_data_0

    .line 401
    .line 402
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 403
    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    const-string v3, "malformed input around byte "

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object v2

    .line 422
    .line 423
    .line 424
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 425
    throw v1

    .line 426
    .line 427
    :pswitch_0
    add-int/lit8 v12, v2, 0x1

    .line 428
    .line 429
    aget-byte v12, v1, v12

    .line 430
    .line 431
    add-int/lit8 v13, v2, 0x2

    .line 432
    .line 433
    aget-byte v13, v1, v13

    .line 434
    .line 435
    .line 436
    invoke-static {v10, v12, v13, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(IIII)I

    .line 437
    move-result v10

    .line 438
    .line 439
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 440
    .line 441
    add-int/lit8 v2, v2, 0x3

    .line 442
    .line 443
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 444
    goto :goto_7

    .line 445
    .line 446
    :pswitch_1
    add-int/lit8 v12, v2, 0x1

    .line 447
    .line 448
    aget-byte v12, v1, v12

    .line 449
    .line 450
    .line 451
    invoke-static {v10, v12, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(III)I

    .line 452
    move-result v10

    .line 453
    .line 454
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 455
    .line 456
    add-int/lit8 v2, v2, 0x2

    .line 457
    .line 458
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 459
    :goto_7
    int-to-long v12, v10

    .line 460
    .line 461
    xor-long v12, v19, v12

    .line 462
    .line 463
    mul-long v19, v12, v4

    .line 464
    goto :goto_6

    .line 465
    .line 466
    :cond_15
    move-wide/from16 v4, v19

    .line 467
    .line 468
    goto/16 :goto_12

    .line 469
    :cond_16
    const/4 v9, 0x0

    .line 470
    .line 471
    if-eq v3, v15, :cond_17

    .line 472
    .line 473
    if-ne v3, v13, :cond_18

    .line 474
    .line 475
    :cond_17
    move-wide/from16 v21, v4

    .line 476
    .line 477
    goto/16 :goto_10

    .line 478
    .line 479
    :cond_18
    if-ne v3, v14, :cond_19

    .line 480
    .line 481
    :goto_8
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 482
    .line 483
    if-ge v9, v2, :cond_15

    .line 484
    .line 485
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 486
    .line 487
    add-int v10, v2, v9

    .line 488
    .line 489
    aget-byte v10, v1, v10

    .line 490
    add-int/2addr v2, v9

    .line 491
    .line 492
    add-int/lit8 v2, v2, 0x1

    .line 493
    .line 494
    aget-byte v2, v1, v2

    .line 495
    .line 496
    and-int/lit16 v10, v10, 0xff

    .line 497
    .line 498
    and-int/lit16 v2, v2, 0xff

    .line 499
    shl-int/2addr v2, v11

    .line 500
    or-int/2addr v2, v10

    .line 501
    int-to-char v2, v2

    .line 502
    int-to-long v12, v2

    .line 503
    .line 504
    xor-long v12, v19, v12

    .line 505
    .line 506
    mul-long v19, v12, v4

    .line 507
    .line 508
    add-int/lit8 v9, v9, 0x2

    .line 509
    goto :goto_8

    .line 510
    .line 511
    :cond_19
    if-gt v2, v11, :cond_1d

    .line 512
    .line 513
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 514
    move v10, v9

    .line 515
    .line 516
    move-wide/from16 v13, v16

    .line 517
    .line 518
    :goto_9
    iget v15, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 519
    .line 520
    if-ge v10, v15, :cond_1c

    .line 521
    .line 522
    iget v15, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 523
    .line 524
    move-wide/from16 v21, v4

    .line 525
    .line 526
    aget-byte v4, v1, v15

    .line 527
    .line 528
    if-ltz v4, :cond_1b

    .line 529
    .line 530
    if-nez v4, :cond_1a

    .line 531
    .line 532
    aget-byte v5, v1, v2

    .line 533
    .line 534
    if-nez v5, :cond_1a

    .line 535
    goto :goto_c

    .line 536
    .line 537
    .line 538
    :cond_1a
    packed-switch v10, :pswitch_data_1

    .line 539
    goto :goto_b

    .line 540
    :pswitch_2
    int-to-long v4, v4

    .line 541
    .line 542
    shl-long v4, v4, v18

    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    const-wide v23, 0xffffffffffffffL

    .line 548
    .line 549
    :goto_a
    and-long v13, v13, v23

    .line 550
    add-long/2addr v13, v4

    .line 551
    goto :goto_b

    .line 552
    :pswitch_3
    int-to-long v4, v4

    .line 553
    shl-long/2addr v4, v12

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    const-wide v23, 0xffffffffffffL

    .line 559
    goto :goto_a

    .line 560
    :pswitch_4
    int-to-long v4, v4

    .line 561
    .line 562
    const/16 v23, 0x28

    .line 563
    .line 564
    shl-long v4, v4, v23

    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    const-wide v23, 0xffffffffffL

    .line 570
    goto :goto_a

    .line 571
    :pswitch_5
    int-to-long v4, v4

    .line 572
    shl-long/2addr v4, v8

    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    const-wide v23, 0xffffffffL

    .line 578
    goto :goto_a

    .line 579
    .line 580
    :pswitch_6
    shl-int/lit8 v4, v4, 0x18

    .line 581
    int-to-long v4, v4

    .line 582
    .line 583
    .line 584
    const-wide/32 v23, 0xffffff

    .line 585
    goto :goto_a

    .line 586
    .line 587
    :pswitch_7
    shl-int/lit8 v4, v4, 0x10

    .line 588
    int-to-long v4, v4

    .line 589
    .line 590
    .line 591
    const-wide/32 v23, 0xffff

    .line 592
    goto :goto_a

    .line 593
    .line 594
    :pswitch_8
    shl-int/lit8 v4, v4, 0x8

    .line 595
    int-to-long v4, v4

    .line 596
    .line 597
    const-wide/16 v23, 0xff

    .line 598
    goto :goto_a

    .line 599
    :pswitch_9
    int-to-long v13, v4

    .line 600
    .line 601
    :goto_b
    add-int/lit8 v15, v15, 0x1

    .line 602
    .line 603
    iput v15, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 604
    .line 605
    add-int/lit8 v10, v10, 0x1

    .line 606
    .line 607
    move-wide/from16 v4, v21

    .line 608
    goto :goto_9

    .line 609
    .line 610
    :cond_1b
    :goto_c
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 611
    .line 612
    :goto_d
    move-wide/from16 v4, v16

    .line 613
    goto :goto_e

    .line 614
    .line 615
    :cond_1c
    move-wide/from16 v21, v4

    .line 616
    move-wide v4, v13

    .line 617
    goto :goto_e

    .line 618
    .line 619
    :cond_1d
    move-wide/from16 v21, v4

    .line 620
    goto :goto_d

    .line 621
    .line 622
    :goto_e
    cmp-long v2, v4, v16

    .line 623
    .line 624
    if-eqz v2, :cond_1e

    .line 625
    goto :goto_12

    .line 626
    .line 627
    :cond_1e
    move-wide/from16 v4, v19

    .line 628
    .line 629
    :goto_f
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 630
    .line 631
    if-ge v9, v2, :cond_1f

    .line 632
    .line 633
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 634
    .line 635
    add-int/lit8 v10, v2, 0x1

    .line 636
    .line 637
    iput v10, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 638
    .line 639
    aget-byte v2, v1, v2

    .line 640
    int-to-long v12, v2

    .line 641
    xor-long/2addr v4, v12

    .line 642
    .line 643
    mul-long v4, v4, v21

    .line 644
    .line 645
    add-int/lit8 v9, v9, 0x1

    .line 646
    goto :goto_f

    .line 647
    .line 648
    :goto_10
    move-wide/from16 v4, v19

    .line 649
    .line 650
    :goto_11
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 651
    .line 652
    if-ge v9, v2, :cond_1f

    .line 653
    .line 654
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 655
    .line 656
    add-int v10, v2, v9

    .line 657
    .line 658
    aget-byte v10, v1, v10

    .line 659
    add-int/2addr v2, v9

    .line 660
    .line 661
    add-int/lit8 v2, v2, 0x1

    .line 662
    .line 663
    aget-byte v2, v1, v2

    .line 664
    .line 665
    and-int/lit16 v2, v2, 0xff

    .line 666
    .line 667
    and-int/lit16 v10, v10, 0xff

    .line 668
    shl-int/2addr v10, v11

    .line 669
    or-int/2addr v2, v10

    .line 670
    int-to-char v2, v2

    .line 671
    int-to-long v12, v2

    .line 672
    xor-long/2addr v4, v12

    .line 673
    .line 674
    mul-long v4, v4, v21

    .line 675
    .line 676
    add-int/lit8 v9, v9, 0x2

    .line 677
    goto :goto_11

    .line 678
    .line 679
    :cond_1f
    :goto_12
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 680
    .line 681
    aget-byte v1, v1, v2

    .line 682
    .line 683
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 684
    .line 685
    if-lt v1, v7, :cond_20

    .line 686
    .line 687
    if-gt v1, v6, :cond_20

    .line 688
    .line 689
    add-int/lit8 v2, v2, 0x1

    .line 690
    .line 691
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 692
    goto :goto_13

    .line 693
    .line 694
    .line 695
    :cond_20
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 696
    move-result v1

    .line 697
    .line 698
    :goto_13
    if-nez v1, :cond_21

    .line 699
    .line 700
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 701
    .line 702
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 703
    .line 704
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 705
    .line 706
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 707
    .line 708
    iput-byte v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 709
    .line 710
    iput-wide v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 711
    return-wide v4

    .line 712
    .line 713
    :cond_21
    mul-int/lit8 v1, v1, 0x2

    .line 714
    .line 715
    add-int/lit8 v2, v1, 0x2

    .line 716
    .line 717
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 718
    .line 719
    if-nez v6, :cond_22

    .line 720
    .line 721
    .line 722
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 723
    move-result v2

    .line 724
    .line 725
    new-array v2, v2, [J

    .line 726
    .line 727
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 728
    goto :goto_14

    .line 729
    :cond_22
    array-length v7, v6

    .line 730
    .line 731
    if-ge v7, v2, :cond_23

    .line 732
    .line 733
    add-int/lit8 v2, v1, 0x12

    .line 734
    .line 735
    .line 736
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 737
    move-result-object v2

    .line 738
    .line 739
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 740
    .line 741
    :cond_23
    :goto_14
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 742
    int-to-long v6, v2

    .line 743
    shl-long/2addr v6, v8

    .line 744
    .line 745
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 746
    int-to-long v8, v2

    .line 747
    shl-long/2addr v8, v11

    .line 748
    add-long/2addr v6, v8

    .line 749
    int-to-long v2, v3

    .line 750
    add-long/2addr v6, v2

    .line 751
    .line 752
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 753
    .line 754
    add-int/lit8 v1, v1, 0x1

    .line 755
    .line 756
    aput-wide v6, v2, v1

    .line 757
    return-wide v4

    .line 758
    nop

    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    :pswitch_data_1
    .packed-switch 0x0
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

.method public readUUID()Ljava/util/UUID;
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    aget-byte v3, v1, v2

    .line 13
    .line 14
    const/16 v4, -0x6f

    .line 15
    .line 16
    const/16 v5, 0x10

    .line 17
    .line 18
    if-eq v3, v4, :cond_17

    .line 19
    .line 20
    const/16 v4, -0x51

    .line 21
    .line 22
    if-eq v3, v4, :cond_16

    .line 23
    .line 24
    const/16 v4, 0x69

    .line 25
    .line 26
    const/16 v7, 0x20

    .line 27
    .line 28
    if-eq v3, v4, :cond_13

    .line 29
    .line 30
    const/16 v4, 0x6d

    .line 31
    .line 32
    const-string v11, "Invalid UUID string:  "

    .line 33
    .line 34
    const/16 v6, 0x17

    .line 35
    .line 36
    const/16 v16, 0x4

    .line 37
    .line 38
    const/16 v8, 0x12

    .line 39
    .line 40
    const/16 v9, 0xd

    .line 41
    .line 42
    const/16 v10, 0x8

    .line 43
    .line 44
    const/16 v19, 0x18

    .line 45
    .line 46
    const/16 v12, 0x24

    .line 47
    .line 48
    const/16 v13, 0x2d

    .line 49
    .line 50
    if-eq v3, v4, :cond_c

    .line 51
    .line 52
    const/16 v2, 0x79

    .line 53
    .line 54
    if-eq v3, v2, :cond_1

    .line 55
    .line 56
    const/16 v2, 0x7a

    .line 57
    .line 58
    if-ne v3, v2, :cond_0

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 63
    move-result-object v1

    .line 64
    throw v1

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 68
    move-result v2

    .line 69
    .line 70
    if-ne v2, v7, :cond_4

    .line 71
    .line 72
    const-wide/16 v2, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    .line 75
    :goto_1
    if-ge v6, v5, :cond_2

    .line 76
    .line 77
    shl-long v2, v2, v16

    .line 78
    .line 79
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 80
    .line 81
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 82
    add-int/2addr v8, v6

    .line 83
    .line 84
    aget-byte v8, v1, v8

    .line 85
    .line 86
    add-int/lit8 v8, v8, -0x30

    .line 87
    .line 88
    aget-byte v4, v4, v8

    .line 89
    int-to-long v8, v4

    .line 90
    add-long/2addr v2, v8

    .line 91
    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_2
    const-wide/16 v9, 0x0

    .line 96
    .line 97
    :goto_2
    if-ge v5, v7, :cond_3

    .line 98
    .line 99
    shl-long v8, v9, v16

    .line 100
    .line 101
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 102
    .line 103
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 104
    add-int/2addr v6, v5

    .line 105
    .line 106
    aget-byte v6, v1, v6

    .line 107
    .line 108
    add-int/lit8 v6, v6, -0x30

    .line 109
    .line 110
    aget-byte v4, v4, v6

    .line 111
    int-to-long v10, v4

    .line 112
    add-long/2addr v8, v10

    .line 113
    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 115
    move-wide v9, v8

    .line 116
    goto :goto_2

    .line 117
    .line 118
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 119
    add-int/2addr v1, v7

    .line 120
    .line 121
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 122
    .line 123
    goto/16 :goto_13

    .line 124
    .line 125
    :cond_4
    if-ne v2, v12, :cond_b

    .line 126
    .line 127
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 128
    .line 129
    add-int/lit8 v3, v2, 0x8

    .line 130
    .line 131
    aget-byte v3, v1, v3

    .line 132
    .line 133
    add-int/lit8 v4, v2, 0xd

    .line 134
    .line 135
    aget-byte v4, v1, v4

    .line 136
    .line 137
    add-int/lit8 v5, v2, 0x12

    .line 138
    .line 139
    aget-byte v5, v1, v5

    .line 140
    add-int/2addr v2, v6

    .line 141
    .line 142
    aget-byte v2, v1, v2

    .line 143
    .line 144
    if-ne v3, v13, :cond_a

    .line 145
    .line 146
    if-ne v4, v13, :cond_a

    .line 147
    .line 148
    if-ne v5, v13, :cond_a

    .line 149
    .line 150
    if-ne v2, v13, :cond_a

    .line 151
    const/4 v2, 0x0

    .line 152
    .line 153
    const-wide/16 v3, 0x0

    .line 154
    .line 155
    :goto_3
    if-ge v2, v10, :cond_5

    .line 156
    .line 157
    shl-long v3, v3, v16

    .line 158
    .line 159
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 160
    .line 161
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 162
    add-int/2addr v7, v2

    .line 163
    .line 164
    aget-byte v7, v1, v7

    .line 165
    .line 166
    add-int/lit8 v7, v7, -0x30

    .line 167
    .line 168
    aget-byte v5, v5, v7

    .line 169
    int-to-long v14, v5

    .line 170
    add-long/2addr v3, v14

    .line 171
    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 173
    goto :goto_3

    .line 174
    .line 175
    :cond_5
    const/16 v15, 0x9

    .line 176
    .line 177
    :goto_4
    if-ge v15, v9, :cond_6

    .line 178
    .line 179
    shl-long v2, v3, v16

    .line 180
    .line 181
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 182
    .line 183
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 184
    add-int/2addr v5, v15

    .line 185
    .line 186
    aget-byte v5, v1, v5

    .line 187
    .line 188
    add-int/lit8 v5, v5, -0x30

    .line 189
    .line 190
    aget-byte v4, v4, v5

    .line 191
    int-to-long v4, v4

    .line 192
    add-long/2addr v2, v4

    .line 193
    .line 194
    add-int/lit8 v15, v15, 0x1

    .line 195
    move-wide v3, v2

    .line 196
    goto :goto_4

    .line 197
    .line 198
    :cond_6
    const/16 v14, 0xe

    .line 199
    .line 200
    :goto_5
    if-ge v14, v8, :cond_7

    .line 201
    .line 202
    shl-long v2, v3, v16

    .line 203
    .line 204
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 205
    .line 206
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 207
    add-int/2addr v5, v14

    .line 208
    .line 209
    aget-byte v5, v1, v5

    .line 210
    .line 211
    add-int/lit8 v5, v5, -0x30

    .line 212
    .line 213
    aget-byte v4, v4, v5

    .line 214
    int-to-long v4, v4

    .line 215
    add-long/2addr v2, v4

    .line 216
    .line 217
    add-int/lit8 v14, v14, 0x1

    .line 218
    move-wide v3, v2

    .line 219
    goto :goto_5

    .line 220
    .line 221
    :cond_7
    const-wide/16 v9, 0x0

    .line 222
    .line 223
    const/16 v13, 0x13

    .line 224
    .line 225
    :goto_6
    if-ge v13, v6, :cond_8

    .line 226
    .line 227
    shl-long v7, v9, v16

    .line 228
    .line 229
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 230
    .line 231
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 232
    add-int/2addr v5, v13

    .line 233
    .line 234
    aget-byte v5, v1, v5

    .line 235
    .line 236
    add-int/lit8 v5, v5, -0x30

    .line 237
    .line 238
    aget-byte v2, v2, v5

    .line 239
    int-to-long v9, v2

    .line 240
    add-long/2addr v9, v7

    .line 241
    .line 242
    add-int/lit8 v13, v13, 0x1

    .line 243
    goto :goto_6

    .line 244
    .line 245
    :cond_8
    move/from16 v2, v19

    .line 246
    .line 247
    :goto_7
    if-ge v2, v12, :cond_9

    .line 248
    .line 249
    shl-long v5, v9, v16

    .line 250
    .line 251
    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 252
    .line 253
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 254
    add-int/2addr v8, v2

    .line 255
    .line 256
    aget-byte v8, v1, v8

    .line 257
    .line 258
    add-int/lit8 v8, v8, -0x30

    .line 259
    .line 260
    aget-byte v7, v7, v8

    .line 261
    int-to-long v7, v7

    .line 262
    .line 263
    add-long v9, v5, v7

    .line 264
    .line 265
    add-int/lit8 v2, v2, 0x1

    .line 266
    goto :goto_7

    .line 267
    .line 268
    :cond_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 269
    add-int/2addr v1, v12

    .line 270
    .line 271
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 272
    .line 273
    move-wide/from16 v17, v9

    .line 274
    move-wide v9, v3

    .line 275
    goto :goto_8

    .line 276
    .line 277
    :cond_a
    const-wide/16 v9, 0x0

    .line 278
    .line 279
    const-wide/16 v17, 0x0

    .line 280
    :goto_8
    move-wide v2, v9

    .line 281
    .line 282
    move-wide/from16 v9, v17

    .line 283
    .line 284
    goto/16 :goto_13

    .line 285
    .line 286
    :cond_b
    new-instance v3, Ljava/lang/String;

    .line 287
    .line 288
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 289
    .line 290
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 291
    .line 292
    .line 293
    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 294
    .line 295
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 296
    add-int/2addr v1, v2

    .line 297
    .line 298
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 299
    .line 300
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 301
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v2

    .line 316
    .line 317
    .line 318
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 319
    throw v1

    .line 320
    .line 321
    :cond_c
    add-int/lit8 v3, v2, 0x9

    .line 322
    .line 323
    aget-byte v3, v1, v3

    .line 324
    .line 325
    add-int/lit8 v4, v2, 0xe

    .line 326
    .line 327
    aget-byte v4, v1, v4

    .line 328
    .line 329
    add-int/lit8 v5, v2, 0x13

    .line 330
    .line 331
    aget-byte v5, v1, v5

    .line 332
    .line 333
    add-int/lit8 v2, v2, 0x18

    .line 334
    .line 335
    aget-byte v2, v1, v2

    .line 336
    .line 337
    if-ne v3, v13, :cond_12

    .line 338
    .line 339
    if-ne v4, v13, :cond_12

    .line 340
    .line 341
    if-ne v5, v13, :cond_12

    .line 342
    .line 343
    if-ne v2, v13, :cond_12

    .line 344
    const/4 v2, 0x0

    .line 345
    .line 346
    const-wide/16 v3, 0x0

    .line 347
    .line 348
    :goto_9
    if-ge v2, v10, :cond_d

    .line 349
    .line 350
    shl-long v3, v3, v16

    .line 351
    .line 352
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 353
    .line 354
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 355
    add-int/2addr v7, v2

    .line 356
    .line 357
    aget-byte v7, v1, v7

    .line 358
    .line 359
    add-int/lit8 v7, v7, -0x30

    .line 360
    .line 361
    aget-byte v5, v5, v7

    .line 362
    int-to-long v13, v5

    .line 363
    add-long/2addr v3, v13

    .line 364
    .line 365
    add-int/lit8 v2, v2, 0x1

    .line 366
    goto :goto_9

    .line 367
    .line 368
    :cond_d
    const/16 v15, 0x9

    .line 369
    .line 370
    :goto_a
    if-ge v15, v9, :cond_e

    .line 371
    .line 372
    shl-long v2, v3, v16

    .line 373
    .line 374
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 375
    .line 376
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 377
    add-int/2addr v5, v15

    .line 378
    .line 379
    aget-byte v5, v1, v5

    .line 380
    .line 381
    add-int/lit8 v5, v5, -0x30

    .line 382
    .line 383
    aget-byte v4, v4, v5

    .line 384
    int-to-long v4, v4

    .line 385
    add-long/2addr v2, v4

    .line 386
    .line 387
    add-int/lit8 v15, v15, 0x1

    .line 388
    move-wide v3, v2

    .line 389
    goto :goto_a

    .line 390
    :cond_e
    move-wide v2, v3

    .line 391
    .line 392
    const/16 v14, 0xe

    .line 393
    .line 394
    :goto_b
    if-ge v14, v8, :cond_f

    .line 395
    .line 396
    shl-long v2, v2, v16

    .line 397
    .line 398
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 399
    .line 400
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 401
    add-int/2addr v5, v14

    .line 402
    .line 403
    aget-byte v5, v1, v5

    .line 404
    .line 405
    add-int/lit8 v5, v5, -0x30

    .line 406
    .line 407
    aget-byte v4, v4, v5

    .line 408
    int-to-long v4, v4

    .line 409
    add-long/2addr v2, v4

    .line 410
    .line 411
    add-int/lit8 v14, v14, 0x1

    .line 412
    goto :goto_b

    .line 413
    .line 414
    :cond_f
    const-wide/16 v9, 0x0

    .line 415
    .line 416
    const/16 v13, 0x13

    .line 417
    .line 418
    :goto_c
    if-ge v13, v6, :cond_10

    .line 419
    .line 420
    shl-long v4, v9, v16

    .line 421
    .line 422
    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 423
    .line 424
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 425
    add-int/2addr v8, v13

    .line 426
    .line 427
    aget-byte v8, v1, v8

    .line 428
    .line 429
    add-int/lit8 v8, v8, -0x30

    .line 430
    .line 431
    aget-byte v7, v7, v8

    .line 432
    int-to-long v7, v7

    .line 433
    .line 434
    add-long v9, v4, v7

    .line 435
    .line 436
    add-int/lit8 v13, v13, 0x1

    .line 437
    goto :goto_c

    .line 438
    .line 439
    :cond_10
    move/from16 v4, v19

    .line 440
    .line 441
    :goto_d
    if-ge v4, v12, :cond_11

    .line 442
    .line 443
    shl-long v5, v9, v16

    .line 444
    .line 445
    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 446
    .line 447
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 448
    add-int/2addr v8, v4

    .line 449
    .line 450
    aget-byte v8, v1, v8

    .line 451
    .line 452
    add-int/lit8 v8, v8, -0x30

    .line 453
    .line 454
    aget-byte v7, v7, v8

    .line 455
    int-to-long v7, v7

    .line 456
    .line 457
    add-long v9, v5, v7

    .line 458
    .line 459
    add-int/lit8 v4, v4, 0x1

    .line 460
    goto :goto_d

    .line 461
    .line 462
    :cond_11
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 463
    add-int/2addr v1, v12

    .line 464
    .line 465
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 466
    .line 467
    goto/16 :goto_13

    .line 468
    .line 469
    :cond_12
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 470
    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    new-instance v4, Ljava/lang/String;

    .line 480
    .line 481
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 482
    .line 483
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 484
    .line 485
    .line 486
    invoke-direct {v4, v1, v5, v12, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object v1

    .line 494
    .line 495
    .line 496
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 497
    throw v2

    .line 498
    .line 499
    :cond_13
    const/16 v16, 0x4

    .line 500
    .line 501
    const-wide/16 v2, 0x0

    .line 502
    const/4 v6, 0x0

    .line 503
    .line 504
    :goto_e
    if-ge v6, v5, :cond_14

    .line 505
    .line 506
    shl-long v2, v2, v16

    .line 507
    .line 508
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 509
    .line 510
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 511
    add-int/2addr v8, v6

    .line 512
    .line 513
    aget-byte v8, v1, v8

    .line 514
    .line 515
    add-int/lit8 v8, v8, -0x30

    .line 516
    .line 517
    aget-byte v4, v4, v8

    .line 518
    int-to-long v8, v4

    .line 519
    add-long/2addr v2, v8

    .line 520
    .line 521
    add-int/lit8 v6, v6, 0x1

    .line 522
    goto :goto_e

    .line 523
    .line 524
    :cond_14
    const-wide/16 v9, 0x0

    .line 525
    .line 526
    :goto_f
    if-ge v5, v7, :cond_15

    .line 527
    .line 528
    shl-long v8, v9, v16

    .line 529
    .line 530
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    .line 531
    .line 532
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 533
    add-int/2addr v6, v5

    .line 534
    .line 535
    aget-byte v6, v1, v6

    .line 536
    .line 537
    add-int/lit8 v6, v6, -0x30

    .line 538
    .line 539
    aget-byte v4, v4, v6

    .line 540
    int-to-long v10, v4

    .line 541
    add-long/2addr v8, v10

    .line 542
    .line 543
    add-int/lit8 v5, v5, 0x1

    .line 544
    move-wide v9, v8

    .line 545
    goto :goto_f

    .line 546
    .line 547
    :cond_15
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 548
    add-int/2addr v1, v7

    .line 549
    .line 550
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 551
    goto :goto_13

    .line 552
    :cond_16
    const/4 v1, 0x0

    .line 553
    return-object v1

    .line 554
    .line 555
    .line 556
    :cond_17
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 557
    move-result v2

    .line 558
    .line 559
    if-ne v2, v5, :cond_1a

    .line 560
    .line 561
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 562
    .line 563
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 564
    .line 565
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 566
    int-to-long v6, v6

    .line 567
    add-long/2addr v6, v3

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 571
    move-result-wide v6

    .line 572
    .line 573
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 574
    int-to-long v8, v8

    .line 575
    add-long/2addr v3, v8

    .line 576
    .line 577
    const-wide/16 v8, 0x8

    .line 578
    add-long/2addr v3, v8

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 582
    move-result-wide v1

    .line 583
    .line 584
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 585
    add-int/2addr v3, v5

    .line 586
    .line 587
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 588
    .line 589
    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 590
    .line 591
    if-eqz v3, :cond_18

    .line 592
    move-wide v4, v6

    .line 593
    goto :goto_10

    .line 594
    .line 595
    .line 596
    :cond_18
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    .line 597
    move-result-wide v4

    .line 598
    .line 599
    :goto_10
    if-eqz v3, :cond_19

    .line 600
    :goto_11
    move-wide v9, v1

    .line 601
    goto :goto_12

    .line 602
    .line 603
    .line 604
    :cond_19
    invoke-static {v1, v2}, Ljava/lang/Long;->reverseBytes(J)J

    .line 605
    move-result-wide v1

    .line 606
    goto :goto_11

    .line 607
    :goto_12
    move-wide v2, v4

    .line 608
    .line 609
    :goto_13
    new-instance v1, Ljava/util/UUID;

    .line 610
    .line 611
    .line 612
    invoke-direct {v1, v2, v3, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    .line 613
    return-object v1

    .line 614
    .line 615
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 616
    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .line 622
    const-string v4, "uuid not support "

    .line 623
    .line 624
    .line 625
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    move-result-object v2

    .line 633
    .line 634
    .line 635
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 636
    throw v1
.end method

.method public readValueHashCode()J
    .locals 36

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 11
    .line 12
    aget-byte v2, v1, v2

    .line 13
    .line 14
    iput-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 15
    .line 16
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 17
    .line 18
    const/16 v3, 0x49

    .line 19
    .line 20
    const/16 v4, 0x7f

    .line 21
    .line 22
    if-lt v2, v3, :cond_0

    .line 23
    .line 24
    const/16 v3, 0x78

    .line 25
    .line 26
    if-gt v2, v3, :cond_0

    .line 27
    .line 28
    add-int/lit8 v3, v2, -0x49

    .line 29
    .line 30
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    const/16 v3, 0x79

    .line 34
    .line 35
    if-eq v2, v3, :cond_3

    .line 36
    .line 37
    const/16 v3, 0x7a

    .line 38
    .line 39
    if-eq v2, v3, :cond_3

    .line 40
    .line 41
    const/16 v3, 0x7b

    .line 42
    .line 43
    if-eq v2, v3, :cond_3

    .line 44
    .line 45
    const/16 v3, 0x7c

    .line 46
    .line 47
    if-eq v2, v3, :cond_3

    .line 48
    .line 49
    const/16 v3, 0x7d

    .line 50
    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    if-ne v2, v4, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 58
    move-result v3

    .line 59
    .line 60
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 61
    .line 62
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 63
    .line 64
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readStringError()Lcom/alibaba/fastjson2/JSONException;

    .line 69
    move-result-object v1

    .line 70
    throw v1

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 74
    move-result v3

    .line 75
    .line 76
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 77
    .line 78
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 79
    .line 80
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 81
    .line 82
    :goto_1
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 83
    .line 84
    if-gez v3, :cond_4

    .line 85
    .line 86
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 87
    neg-int v2, v3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    .line 91
    move-result-wide v1

    .line 92
    return-wide v1

    .line 93
    .line 94
    :cond_4
    const/16 v5, 0x7a

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    const-wide v8, 0x100000001b3L

    .line 100
    const/4 v10, 0x2

    .line 101
    .line 102
    if-ne v2, v5, :cond_7

    .line 103
    .line 104
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 105
    add-int/2addr v2, v3

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 111
    .line 112
    :goto_2
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 113
    .line 114
    if-ge v3, v2, :cond_6

    .line 115
    .line 116
    aget-byte v4, v1, v3

    .line 117
    .line 118
    if-ltz v4, :cond_5

    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 123
    goto :goto_3

    .line 124
    .line 125
    :cond_5
    and-int/lit16 v4, v4, 0xff

    .line 126
    .line 127
    shr-int/lit8 v5, v4, 0x4

    .line 128
    .line 129
    .line 130
    packed-switch v5, :pswitch_data_0

    .line 131
    .line 132
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    const-string v3, "malformed input around byte "

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    :pswitch_0
    add-int/lit8 v5, v3, 0x1

    .line 158
    .line 159
    aget-byte v5, v1, v5

    .line 160
    .line 161
    add-int/lit8 v11, v3, 0x2

    .line 162
    .line 163
    aget-byte v11, v1, v11

    .line 164
    .line 165
    .line 166
    invoke-static {v4, v5, v11, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(IIII)I

    .line 167
    move-result v4

    .line 168
    .line 169
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 170
    .line 171
    add-int/lit8 v3, v3, 0x3

    .line 172
    .line 173
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 174
    goto :goto_3

    .line 175
    .line 176
    :pswitch_1
    add-int/lit8 v5, v3, 0x1

    .line 177
    .line 178
    aget-byte v5, v1, v5

    .line 179
    .line 180
    .line 181
    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2_utf8(III)I

    .line 182
    move-result v4

    .line 183
    .line 184
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 185
    add-int/2addr v3, v10

    .line 186
    .line 187
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 188
    :goto_3
    int-to-long v3, v4

    .line 189
    xor-long/2addr v3, v6

    .line 190
    .line 191
    mul-long v6, v3, v8

    .line 192
    goto :goto_2

    .line 193
    :cond_6
    return-wide v6

    .line 194
    .line 195
    :cond_7
    const/16 v5, 0x7b

    .line 196
    .line 197
    const-wide/16 v11, 0xff

    .line 198
    .line 199
    .line 200
    const-wide/32 v13, 0xffff

    .line 201
    .line 202
    .line 203
    const-wide/32 v15, 0xffffff

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    const-wide v17, 0xffffffffL

    .line 209
    .line 210
    const/16 v19, 0x20

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    const-wide v20, 0xffffffffffL

    .line 216
    .line 217
    const/16 v22, 0x28

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    const-wide v23, 0xffffffffffffL

    .line 223
    .line 224
    const/16 v25, 0x30

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    const-wide v26, 0xffffffffffffffL

    .line 230
    .line 231
    const/16 v28, 0x38

    .line 232
    .line 233
    const/16 v29, 0x0

    .line 234
    .line 235
    const/16 v6, 0x10

    .line 236
    .line 237
    const-wide/16 v32, 0x0

    .line 238
    .line 239
    const/16 v7, 0x8

    .line 240
    .line 241
    if-ne v2, v5, :cond_11

    .line 242
    .line 243
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 244
    .line 245
    aget-byte v5, v1, v2

    .line 246
    .line 247
    move-wide/from16 v34, v8

    .line 248
    const/4 v8, -0x2

    .line 249
    .line 250
    if-ne v5, v8, :cond_d

    .line 251
    .line 252
    add-int/lit8 v8, v2, 0x1

    .line 253
    .line 254
    aget-byte v8, v1, v8

    .line 255
    const/4 v9, -0x1

    .line 256
    .line 257
    if-ne v8, v9, :cond_d

    .line 258
    .line 259
    if-gt v3, v6, :cond_b

    .line 260
    move v3, v10

    .line 261
    .line 262
    move-wide/from16 v5, v32

    .line 263
    .line 264
    :goto_4
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 265
    .line 266
    if-ge v3, v8, :cond_a

    .line 267
    .line 268
    add-int v8, v2, v3

    .line 269
    .line 270
    aget-byte v9, v1, v8

    .line 271
    .line 272
    add-int/lit8 v8, v8, 0x1

    .line 273
    .line 274
    aget-byte v8, v1, v8

    .line 275
    .line 276
    and-int/lit16 v8, v8, 0xff

    .line 277
    .line 278
    and-int/lit16 v9, v9, 0xff

    .line 279
    shl-int/2addr v9, v7

    .line 280
    or-int/2addr v8, v9

    .line 281
    int-to-char v8, v8

    .line 282
    .line 283
    if-gt v8, v4, :cond_9

    .line 284
    .line 285
    if-nez v3, :cond_8

    .line 286
    .line 287
    if-nez v8, :cond_8

    .line 288
    goto :goto_7

    .line 289
    :cond_8
    int-to-byte v8, v8

    .line 290
    .line 291
    add-int/lit8 v9, v3, -0x2

    .line 292
    .line 293
    shr-int/lit8 v9, v9, 0x1

    .line 294
    .line 295
    .line 296
    packed-switch v9, :pswitch_data_1

    .line 297
    goto :goto_6

    .line 298
    :pswitch_2
    int-to-long v8, v8

    .line 299
    .line 300
    shl-long v8, v8, v28

    .line 301
    .line 302
    and-long v5, v5, v26

    .line 303
    :goto_5
    add-long/2addr v5, v8

    .line 304
    goto :goto_6

    .line 305
    :pswitch_3
    int-to-long v8, v8

    .line 306
    .line 307
    shl-long v8, v8, v25

    .line 308
    .line 309
    and-long v5, v5, v23

    .line 310
    goto :goto_5

    .line 311
    :pswitch_4
    int-to-long v8, v8

    .line 312
    .line 313
    shl-long v8, v8, v22

    .line 314
    .line 315
    and-long v5, v5, v20

    .line 316
    goto :goto_5

    .line 317
    :pswitch_5
    int-to-long v8, v8

    .line 318
    .line 319
    shl-long v8, v8, v19

    .line 320
    .line 321
    and-long v5, v5, v17

    .line 322
    goto :goto_5

    .line 323
    .line 324
    :pswitch_6
    shl-int/lit8 v8, v8, 0x18

    .line 325
    int-to-long v8, v8

    .line 326
    and-long/2addr v5, v15

    .line 327
    goto :goto_5

    .line 328
    .line 329
    :pswitch_7
    shl-int/lit8 v8, v8, 0x10

    .line 330
    int-to-long v8, v8

    .line 331
    and-long/2addr v5, v13

    .line 332
    goto :goto_5

    .line 333
    .line 334
    :pswitch_8
    shl-int/lit8 v8, v8, 0x8

    .line 335
    int-to-long v8, v8

    .line 336
    and-long/2addr v5, v11

    .line 337
    goto :goto_5

    .line 338
    :pswitch_9
    int-to-long v5, v8

    .line 339
    .line 340
    :goto_6
    add-int/lit8 v3, v3, 0x2

    .line 341
    goto :goto_4

    .line 342
    .line 343
    :cond_9
    :goto_7
    move-wide/from16 v5, v32

    .line 344
    .line 345
    :cond_a
    cmp-long v3, v5, v32

    .line 346
    .line 347
    if-eqz v3, :cond_b

    .line 348
    return-wide v5

    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :cond_b
    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 354
    .line 355
    :goto_8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 356
    .line 357
    if-ge v10, v3, :cond_c

    .line 358
    .line 359
    add-int v3, v2, v10

    .line 360
    .line 361
    aget-byte v4, v1, v3

    .line 362
    .line 363
    add-int/lit8 v3, v3, 0x1

    .line 364
    .line 365
    aget-byte v3, v1, v3

    .line 366
    .line 367
    and-int/lit16 v3, v3, 0xff

    .line 368
    .line 369
    and-int/lit16 v4, v4, 0xff

    .line 370
    shl-int/2addr v4, v7

    .line 371
    or-int/2addr v3, v4

    .line 372
    int-to-char v3, v3

    .line 373
    int-to-long v3, v3

    .line 374
    .line 375
    xor-long v3, v30, v3

    .line 376
    .line 377
    mul-long v30, v3, v34

    .line 378
    .line 379
    add-int/lit8 v10, v10, 0x2

    .line 380
    goto :goto_8

    .line 381
    :cond_c
    return-wide v30

    .line 382
    :cond_d
    const/4 v3, -0x1

    .line 383
    .line 384
    if-ne v5, v3, :cond_f

    .line 385
    .line 386
    add-int/lit8 v3, v2, 0x1

    .line 387
    .line 388
    aget-byte v3, v1, v3

    .line 389
    const/4 v4, -0x2

    .line 390
    .line 391
    if-ne v3, v4, :cond_f

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 397
    .line 398
    :goto_9
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 399
    .line 400
    if-ge v10, v3, :cond_e

    .line 401
    .line 402
    add-int v3, v2, v10

    .line 403
    .line 404
    aget-byte v4, v1, v3

    .line 405
    .line 406
    add-int/lit8 v3, v3, 0x1

    .line 407
    .line 408
    aget-byte v3, v1, v3

    .line 409
    .line 410
    and-int/lit16 v4, v4, 0xff

    .line 411
    .line 412
    and-int/lit16 v3, v3, 0xff

    .line 413
    shl-int/2addr v3, v7

    .line 414
    or-int/2addr v3, v4

    .line 415
    int-to-char v3, v3

    .line 416
    int-to-long v3, v3

    .line 417
    .line 418
    xor-long v3, v30, v3

    .line 419
    .line 420
    mul-long v30, v3, v34

    .line 421
    .line 422
    add-int/lit8 v10, v10, 0x2

    .line 423
    goto :goto_9

    .line 424
    :cond_e
    return-wide v30

    .line 425
    .line 426
    :cond_f
    move/from16 v3, v29

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 432
    .line 433
    :goto_a
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 434
    .line 435
    if-ge v3, v4, :cond_10

    .line 436
    .line 437
    add-int v4, v2, v3

    .line 438
    .line 439
    aget-byte v5, v1, v4

    .line 440
    .line 441
    add-int/lit8 v4, v4, 0x1

    .line 442
    .line 443
    aget-byte v4, v1, v4

    .line 444
    .line 445
    and-int/lit16 v5, v5, 0xff

    .line 446
    .line 447
    and-int/lit16 v4, v4, 0xff

    .line 448
    shl-int/2addr v4, v7

    .line 449
    or-int/2addr v4, v5

    .line 450
    int-to-char v4, v4

    .line 451
    int-to-long v4, v4

    .line 452
    .line 453
    xor-long v4, v30, v4

    .line 454
    .line 455
    mul-long v30, v4, v34

    .line 456
    .line 457
    add-int/lit8 v3, v3, 0x2

    .line 458
    goto :goto_a

    .line 459
    :cond_10
    return-wide v30

    .line 460
    .line 461
    :cond_11
    move-wide/from16 v34, v8

    .line 462
    .line 463
    const/16 v5, 0x7d

    .line 464
    .line 465
    if-ne v2, v5, :cond_17

    .line 466
    .line 467
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 468
    .line 469
    if-gt v3, v6, :cond_15

    .line 470
    .line 471
    move/from16 v3, v29

    .line 472
    .line 473
    move-wide/from16 v5, v32

    .line 474
    .line 475
    :goto_b
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 476
    .line 477
    if-ge v3, v8, :cond_14

    .line 478
    .line 479
    add-int v8, v2, v3

    .line 480
    .line 481
    aget-byte v9, v1, v8

    .line 482
    .line 483
    add-int/lit8 v8, v8, 0x1

    .line 484
    .line 485
    aget-byte v8, v1, v8

    .line 486
    .line 487
    and-int/lit16 v8, v8, 0xff

    .line 488
    .line 489
    and-int/lit16 v9, v9, 0xff

    .line 490
    shl-int/2addr v9, v7

    .line 491
    or-int/2addr v8, v9

    .line 492
    int-to-char v8, v8

    .line 493
    .line 494
    if-gt v8, v4, :cond_13

    .line 495
    .line 496
    if-nez v3, :cond_12

    .line 497
    .line 498
    if-nez v8, :cond_12

    .line 499
    goto :goto_e

    .line 500
    :cond_12
    int-to-byte v8, v8

    .line 501
    .line 502
    shr-int/lit8 v9, v3, 0x1

    .line 503
    .line 504
    .line 505
    packed-switch v9, :pswitch_data_2

    .line 506
    goto :goto_d

    .line 507
    :pswitch_a
    int-to-long v8, v8

    .line 508
    .line 509
    shl-long v8, v8, v28

    .line 510
    .line 511
    and-long v5, v5, v26

    .line 512
    :goto_c
    add-long/2addr v5, v8

    .line 513
    goto :goto_d

    .line 514
    :pswitch_b
    int-to-long v8, v8

    .line 515
    .line 516
    shl-long v8, v8, v25

    .line 517
    .line 518
    and-long v5, v5, v23

    .line 519
    goto :goto_c

    .line 520
    :pswitch_c
    int-to-long v8, v8

    .line 521
    .line 522
    shl-long v8, v8, v22

    .line 523
    .line 524
    and-long v5, v5, v20

    .line 525
    goto :goto_c

    .line 526
    :pswitch_d
    int-to-long v8, v8

    .line 527
    .line 528
    shl-long v8, v8, v19

    .line 529
    .line 530
    and-long v5, v5, v17

    .line 531
    goto :goto_c

    .line 532
    .line 533
    :pswitch_e
    shl-int/lit8 v8, v8, 0x18

    .line 534
    int-to-long v8, v8

    .line 535
    and-long/2addr v5, v15

    .line 536
    goto :goto_c

    .line 537
    .line 538
    :pswitch_f
    shl-int/lit8 v8, v8, 0x10

    .line 539
    int-to-long v8, v8

    .line 540
    and-long/2addr v5, v13

    .line 541
    goto :goto_c

    .line 542
    .line 543
    :pswitch_10
    shl-int/lit8 v8, v8, 0x8

    .line 544
    int-to-long v8, v8

    .line 545
    and-long/2addr v5, v11

    .line 546
    goto :goto_c

    .line 547
    :pswitch_11
    int-to-long v5, v8

    .line 548
    .line 549
    :goto_d
    add-int/lit8 v3, v3, 0x2

    .line 550
    goto :goto_b

    .line 551
    .line 552
    :cond_13
    :goto_e
    move-wide/from16 v5, v32

    .line 553
    .line 554
    :cond_14
    cmp-long v3, v5, v32

    .line 555
    .line 556
    if-eqz v3, :cond_15

    .line 557
    return-wide v5

    .line 558
    .line 559
    :cond_15
    move/from16 v3, v29

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 565
    .line 566
    :goto_f
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 567
    .line 568
    if-ge v3, v4, :cond_16

    .line 569
    .line 570
    add-int v4, v2, v3

    .line 571
    .line 572
    aget-byte v5, v1, v4

    .line 573
    .line 574
    add-int/lit8 v4, v4, 0x1

    .line 575
    .line 576
    aget-byte v4, v1, v4

    .line 577
    .line 578
    and-int/lit16 v4, v4, 0xff

    .line 579
    .line 580
    and-int/lit16 v5, v5, 0xff

    .line 581
    shl-int/2addr v5, v7

    .line 582
    or-int/2addr v4, v5

    .line 583
    int-to-char v4, v4

    .line 584
    int-to-long v4, v4

    .line 585
    .line 586
    xor-long v4, v30, v4

    .line 587
    .line 588
    mul-long v30, v4, v34

    .line 589
    .line 590
    add-int/lit8 v3, v3, 0x2

    .line 591
    goto :goto_f

    .line 592
    :cond_16
    return-wide v30

    .line 593
    .line 594
    :cond_17
    const/16 v5, 0x7c

    .line 595
    .line 596
    if-ne v2, v5, :cond_1d

    .line 597
    .line 598
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 599
    .line 600
    if-gt v3, v6, :cond_1b

    .line 601
    .line 602
    move/from16 v3, v29

    .line 603
    .line 604
    move-wide/from16 v5, v32

    .line 605
    .line 606
    :goto_10
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 607
    .line 608
    if-ge v3, v8, :cond_1a

    .line 609
    .line 610
    add-int v8, v2, v3

    .line 611
    .line 612
    aget-byte v9, v1, v8

    .line 613
    .line 614
    add-int/lit8 v8, v8, 0x1

    .line 615
    .line 616
    aget-byte v8, v1, v8

    .line 617
    .line 618
    and-int/lit16 v9, v9, 0xff

    .line 619
    .line 620
    and-int/lit16 v8, v8, 0xff

    .line 621
    shl-int/2addr v8, v7

    .line 622
    or-int/2addr v8, v9

    .line 623
    int-to-char v8, v8

    .line 624
    .line 625
    if-gt v8, v4, :cond_19

    .line 626
    .line 627
    if-nez v3, :cond_18

    .line 628
    .line 629
    if-nez v8, :cond_18

    .line 630
    goto :goto_13

    .line 631
    :cond_18
    int-to-byte v8, v8

    .line 632
    .line 633
    shr-int/lit8 v9, v3, 0x1

    .line 634
    .line 635
    .line 636
    packed-switch v9, :pswitch_data_3

    .line 637
    goto :goto_12

    .line 638
    :pswitch_12
    int-to-long v8, v8

    .line 639
    .line 640
    shl-long v8, v8, v28

    .line 641
    .line 642
    and-long v5, v5, v26

    .line 643
    :goto_11
    add-long/2addr v5, v8

    .line 644
    goto :goto_12

    .line 645
    :pswitch_13
    int-to-long v8, v8

    .line 646
    .line 647
    shl-long v8, v8, v25

    .line 648
    .line 649
    and-long v5, v5, v23

    .line 650
    goto :goto_11

    .line 651
    :pswitch_14
    int-to-long v8, v8

    .line 652
    .line 653
    shl-long v8, v8, v22

    .line 654
    .line 655
    and-long v5, v5, v20

    .line 656
    goto :goto_11

    .line 657
    :pswitch_15
    int-to-long v8, v8

    .line 658
    .line 659
    shl-long v8, v8, v19

    .line 660
    .line 661
    and-long v5, v5, v17

    .line 662
    goto :goto_11

    .line 663
    .line 664
    :pswitch_16
    shl-int/lit8 v8, v8, 0x18

    .line 665
    int-to-long v8, v8

    .line 666
    and-long/2addr v5, v15

    .line 667
    goto :goto_11

    .line 668
    .line 669
    :pswitch_17
    shl-int/lit8 v8, v8, 0x10

    .line 670
    int-to-long v8, v8

    .line 671
    and-long/2addr v5, v13

    .line 672
    goto :goto_11

    .line 673
    .line 674
    :pswitch_18
    shl-int/lit8 v8, v8, 0x8

    .line 675
    int-to-long v8, v8

    .line 676
    and-long/2addr v5, v11

    .line 677
    goto :goto_11

    .line 678
    :pswitch_19
    int-to-long v5, v8

    .line 679
    .line 680
    :goto_12
    add-int/lit8 v3, v3, 0x2

    .line 681
    goto :goto_10

    .line 682
    .line 683
    :cond_19
    :goto_13
    move-wide/from16 v5, v32

    .line 684
    .line 685
    :cond_1a
    cmp-long v3, v5, v32

    .line 686
    .line 687
    if-eqz v3, :cond_1b

    .line 688
    return-wide v5

    .line 689
    .line 690
    :cond_1b
    move/from16 v3, v29

    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 696
    .line 697
    :goto_14
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 698
    .line 699
    if-ge v3, v4, :cond_1c

    .line 700
    .line 701
    add-int v4, v2, v3

    .line 702
    .line 703
    aget-byte v5, v1, v4

    .line 704
    .line 705
    add-int/lit8 v4, v4, 0x1

    .line 706
    .line 707
    aget-byte v4, v1, v4

    .line 708
    .line 709
    and-int/lit16 v5, v5, 0xff

    .line 710
    .line 711
    and-int/lit16 v4, v4, 0xff

    .line 712
    shl-int/2addr v4, v7

    .line 713
    or-int/2addr v4, v5

    .line 714
    int-to-char v4, v4

    .line 715
    int-to-long v4, v4

    .line 716
    .line 717
    xor-long v4, v30, v4

    .line 718
    .line 719
    mul-long v30, v4, v34

    .line 720
    .line 721
    add-int/lit8 v3, v3, 0x2

    .line 722
    goto :goto_14

    .line 723
    :cond_1c
    return-wide v30

    .line 724
    .line 725
    :cond_1d
    if-gt v3, v7, :cond_21

    .line 726
    .line 727
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 728
    .line 729
    move/from16 v3, v29

    .line 730
    .line 731
    move-wide/from16 v4, v32

    .line 732
    .line 733
    :goto_15
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 734
    .line 735
    if-ge v3, v6, :cond_20

    .line 736
    .line 737
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 738
    .line 739
    aget-byte v7, v1, v6

    .line 740
    .line 741
    if-ltz v7, :cond_1f

    .line 742
    .line 743
    if-nez v7, :cond_1e

    .line 744
    .line 745
    aget-byte v8, v1, v2

    .line 746
    .line 747
    if-nez v8, :cond_1e

    .line 748
    goto :goto_18

    .line 749
    .line 750
    .line 751
    :cond_1e
    packed-switch v3, :pswitch_data_4

    .line 752
    goto :goto_17

    .line 753
    :pswitch_1a
    int-to-long v7, v7

    .line 754
    .line 755
    shl-long v7, v7, v28

    .line 756
    .line 757
    and-long v4, v4, v26

    .line 758
    :goto_16
    add-long/2addr v4, v7

    .line 759
    goto :goto_17

    .line 760
    :pswitch_1b
    int-to-long v7, v7

    .line 761
    .line 762
    shl-long v7, v7, v25

    .line 763
    .line 764
    and-long v4, v4, v23

    .line 765
    goto :goto_16

    .line 766
    :pswitch_1c
    int-to-long v7, v7

    .line 767
    .line 768
    shl-long v7, v7, v22

    .line 769
    .line 770
    and-long v4, v4, v20

    .line 771
    goto :goto_16

    .line 772
    :pswitch_1d
    int-to-long v7, v7

    .line 773
    .line 774
    shl-long v7, v7, v19

    .line 775
    .line 776
    and-long v4, v4, v17

    .line 777
    goto :goto_16

    .line 778
    .line 779
    :pswitch_1e
    shl-int/lit8 v7, v7, 0x18

    .line 780
    int-to-long v7, v7

    .line 781
    and-long/2addr v4, v15

    .line 782
    goto :goto_16

    .line 783
    .line 784
    :pswitch_1f
    shl-int/lit8 v7, v7, 0x10

    .line 785
    int-to-long v7, v7

    .line 786
    and-long/2addr v4, v13

    .line 787
    goto :goto_16

    .line 788
    .line 789
    :pswitch_20
    shl-int/lit8 v7, v7, 0x8

    .line 790
    int-to-long v7, v7

    .line 791
    and-long/2addr v4, v11

    .line 792
    goto :goto_16

    .line 793
    :pswitch_21
    int-to-long v4, v7

    .line 794
    .line 795
    :goto_17
    add-int/lit8 v6, v6, 0x1

    .line 796
    .line 797
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 798
    .line 799
    add-int/lit8 v3, v3, 0x1

    .line 800
    goto :goto_15

    .line 801
    .line 802
    :cond_1f
    :goto_18
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 803
    .line 804
    move-wide/from16 v4, v32

    .line 805
    .line 806
    :cond_20
    cmp-long v2, v4, v32

    .line 807
    .line 808
    if-eqz v2, :cond_21

    .line 809
    return-wide v4

    .line 810
    .line 811
    :cond_21
    move/from16 v2, v29

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 817
    .line 818
    :goto_19
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 819
    .line 820
    if-ge v2, v3, :cond_22

    .line 821
    .line 822
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 823
    .line 824
    add-int/lit8 v4, v3, 0x1

    .line 825
    .line 826
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 827
    .line 828
    aget-byte v3, v1, v3

    .line 829
    int-to-long v3, v3

    .line 830
    xor-long/2addr v3, v6

    .line 831
    .line 832
    mul-long v6, v3, v34

    .line 833
    .line 834
    add-int/lit8 v2, v2, 0x1

    .line 835
    goto :goto_19

    .line 836
    :cond_22
    return-wide v6

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
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 887
    .line 888
    .line 889
    .line 890
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
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

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
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public readZonedDateTime()Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    const/16 v4, -0x42

    .line 13
    .line 14
    if-eq v3, v4, :cond_3

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    .line 19
    packed-switch v3, :pswitch_data_0

    .line 20
    .line 21
    const/16 v0, 0x49

    .line 22
    .line 23
    if-lt v3, v0, :cond_0

    .line 24
    .line 25
    const/16 v2, 0x78

    .line 26
    .line 27
    if-gt v3, v2, :cond_0

    .line 28
    .line 29
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 30
    sub-int/2addr v3, v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 41
    throw v0

    .line 42
    .line 43
    .line 44
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 45
    move-result-wide v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 49
    move-result v2

    .line 50
    int-to-long v2, v2

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    .line 63
    .line 64
    :pswitch_1
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 65
    move-result v0

    .line 66
    int-to-long v0, v0

    .line 67
    .line 68
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x4

    .line 71
    .line 72
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 73
    .line 74
    const-wide/16 v2, 0x3c

    .line 75
    mul-long/2addr v0, v2

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1, v4, v5}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    .line 88
    .line 89
    :pswitch_2
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    .line 90
    move-result v0

    .line 91
    int-to-long v0, v0

    .line 92
    .line 93
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x4

    .line 96
    .line 97
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1, v4, v5}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    .line 110
    :pswitch_3
    add-int/lit8 v3, v1, 0x2

    .line 111
    .line 112
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 113
    .line 114
    aget-byte v2, v0, v2

    .line 115
    .line 116
    shl-int/lit8 v2, v2, 0x8

    .line 117
    .line 118
    add-int/lit8 v4, v1, 0x3

    .line 119
    .line 120
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 121
    .line 122
    aget-byte v3, v0, v3

    .line 123
    .line 124
    and-int/lit16 v3, v3, 0xff

    .line 125
    .line 126
    add-int v5, v2, v3

    .line 127
    .line 128
    add-int/lit8 v2, v1, 0x4

    .line 129
    .line 130
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 131
    .line 132
    aget-byte v6, v0, v4

    .line 133
    .line 134
    add-int/lit8 v3, v1, 0x5

    .line 135
    .line 136
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 137
    .line 138
    aget-byte v7, v0, v2

    .line 139
    .line 140
    add-int/lit8 v2, v1, 0x6

    .line 141
    .line 142
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 143
    .line 144
    aget-byte v8, v0, v3

    .line 145
    .line 146
    add-int/lit8 v3, v1, 0x7

    .line 147
    .line 148
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 149
    .line 150
    aget-byte v9, v0, v2

    .line 151
    .line 152
    add-int/lit8 v1, v1, 0x8

    .line 153
    .line 154
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 155
    .line 156
    aget-byte v10, v0, v3

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 160
    move-result v11

    .line 161
    .line 162
    .line 163
    invoke-static/range {v5 .. v11}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readValueHashCode()J

    .line 168
    move-result-wide v1

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    const-wide v3, -0x42a0403329fb87bfL    # -4.511835427849096E-13

    .line 174
    .line 175
    cmp-long v1, v1, v3

    .line 176
    .line 177
    if-nez v1, :cond_1

    .line 178
    .line 179
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 180
    goto :goto_0

    .line 181
    .line 182
    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 185
    .line 186
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    iget-object v3, v2, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v3

    .line 197
    .line 198
    if-eqz v3, :cond_2

    .line 199
    move-object v1, v2

    .line 200
    goto :goto_0

    .line 201
    .line 202
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 203
    .line 204
    .line 205
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    .line 209
    :goto_0
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 210
    move-result-object v0

    .line 211
    return-object v0

    .line 212
    .line 213
    :cond_3
    :pswitch_4
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 214
    .line 215
    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 216
    int-to-long v5, v2

    .line 217
    add-long/2addr v3, v5

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 221
    move-result-wide v0

    .line 222
    .line 223
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 224
    .line 225
    add-int/lit8 v2, v2, 0x8

    .line 226
    .line 227
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 228
    .line 229
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 230
    .line 231
    if-eqz v2, :cond_4

    .line 232
    goto :goto_1

    .line 233
    .line 234
    .line 235
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    .line 236
    move-result-wide v0

    .line 237
    .line 238
    .line 239
    :goto_1
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 240
    move-result-object v0

    .line 241
    .line 242
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 246
    move-result-object v0

    .line 247
    return-object v0

    .line 248
    nop

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
    :pswitch_data_0
    .packed-switch -0x56
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    iput-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 9
    .line 10
    const/16 v3, 0x49

    .line 11
    .line 12
    if-lt v2, v3, :cond_1

    .line 13
    .line 14
    const/16 v3, 0x78

    .line 15
    .line 16
    if-gt v2, v3, :cond_1

    .line 17
    .line 18
    const/16 v2, 0x13

    .line 19
    .line 20
    if-lt p1, v2, :cond_0

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    add-int/2addr v1, p1

    .line 38
    .line 39
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 40
    return-object v0

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
    const-string v1, "illegal LocalDateTime string : "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    .line 69
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 70
    .line 71
    const-string v0, "date only support string input"

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p1
.end method

.method public reset(Lcom/alibaba/fastjson2/JSONReader$SavePoint;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->offset:I

    .line 3
    .line 4
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget p1, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->current:I

    .line 7
    int-to-byte p1, p1

    .line 8
    .line 9
    iput-byte p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 10
    return-void
.end method

.method public skipComment()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public skipName()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v1, v0, v1

    .line 11
    .line 12
    iput-byte v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    const/16 v4, 0x49

    .line 16
    .line 17
    if-lt v1, v4, :cond_0

    .line 18
    .line 19
    const/16 v5, 0x78

    .line 20
    .line 21
    if-gt v1, v5, :cond_0

    .line 22
    sub-int/2addr v1, v4

    .line 23
    add-int/2addr v2, v1

    .line 24
    .line 25
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 26
    return v3

    .line 27
    .line 28
    :cond_0
    const/16 v4, 0x79

    .line 29
    .line 30
    if-eq v1, v4, :cond_4

    .line 31
    .line 32
    const/16 v4, 0x7a

    .line 33
    .line 34
    if-eq v1, v4, :cond_4

    .line 35
    .line 36
    const/16 v4, 0x7b

    .line 37
    .line 38
    if-eq v1, v4, :cond_4

    .line 39
    .line 40
    const/16 v4, 0x7c

    .line 41
    .line 42
    if-eq v1, v4, :cond_4

    .line 43
    .line 44
    const/16 v4, 0x7d

    .line 45
    .line 46
    if-ne v1, v4, :cond_1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    const/16 v4, 0x7f

    .line 50
    .line 51
    if-ne v1, v4, :cond_3

    .line 52
    .line 53
    aget-byte v0, v0, v2

    .line 54
    .line 55
    const/16 v1, -0x10

    .line 56
    .line 57
    if-lt v0, v1, :cond_2

    .line 58
    .line 59
    const/16 v1, 0x48

    .line 60
    .line 61
    if-gt v0, v1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 65
    return v3

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 72
    return v3

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 76
    move-result-object v0

    .line 77
    throw v0

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    .line 81
    move-result v0

    .line 82
    .line 83
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 84
    .line 85
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 86
    add-int/2addr v1, v0

    .line 87
    .line 88
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 89
    return v3
.end method

.method public skipValue()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v0, v0, v1

    .line 11
    .line 12
    const/16 v3, 0x48

    .line 13
    .line 14
    if-eq v0, v3, :cond_12

    .line 15
    .line 16
    const/16 v3, 0x49

    .line 17
    .line 18
    if-eq v0, v3, :cond_11

    .line 19
    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    const/4 v4, -0x1

    .line 23
    .line 24
    .line 25
    packed-switch v0, :pswitch_data_1

    .line 26
    .line 27
    .line 28
    packed-switch v0, :pswitch_data_2

    .line 29
    .line 30
    .line 31
    packed-switch v0, :pswitch_data_3

    .line 32
    .line 33
    .line 34
    packed-switch v0, :pswitch_data_4

    .line 35
    .line 36
    .line 37
    packed-switch v0, :pswitch_data_5

    .line 38
    .line 39
    const/16 v5, -0x10

    .line 40
    .line 41
    if-lt v0, v5, :cond_0

    .line 42
    .line 43
    const/16 v5, 0x2f

    .line 44
    .line 45
    if-gt v0, v5, :cond_0

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_0
    const/16 v5, -0x28

    .line 50
    .line 51
    if-lt v0, v5, :cond_1

    .line 52
    .line 53
    const/16 v5, -0x11

    .line 54
    .line 55
    if-gt v0, v5, :cond_1

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    const/16 v5, 0x30

    .line 60
    .line 61
    if-lt v0, v5, :cond_2

    .line 62
    .line 63
    const/16 v5, 0x3f

    .line 64
    .line 65
    if-gt v0, v5, :cond_2

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x2

    .line 68
    .line 69
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 70
    return-void

    .line 71
    .line 72
    :cond_2
    const/16 v5, 0x40

    .line 73
    .line 74
    if-lt v0, v5, :cond_3

    .line 75
    .line 76
    const/16 v5, 0x47

    .line 77
    .line 78
    if-gt v0, v5, :cond_3

    .line 79
    .line 80
    add-int/lit8 v1, v1, 0x3

    .line 81
    .line 82
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 83
    return-void

    .line 84
    .line 85
    :cond_3
    if-lt v0, v3, :cond_4

    .line 86
    .line 87
    const/16 v5, 0x78

    .line 88
    .line 89
    if-gt v0, v5, :cond_4

    .line 90
    sub-int/2addr v0, v3

    .line 91
    add-int/2addr v2, v0

    .line 92
    .line 93
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 94
    return-void

    .line 95
    .line 96
    :cond_4
    const/16 v2, -0x38

    .line 97
    .line 98
    if-lt v0, v2, :cond_5

    .line 99
    .line 100
    const/16 v2, -0x29

    .line 101
    .line 102
    if-gt v0, v2, :cond_5

    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x2

    .line 105
    .line 106
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 107
    return-void

    .line 108
    .line 109
    :cond_5
    const/16 v2, -0x40

    .line 110
    .line 111
    if-lt v0, v2, :cond_6

    .line 112
    .line 113
    const/16 v2, -0x39

    .line 114
    .line 115
    if-gt v0, v2, :cond_6

    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x3

    .line 118
    .line 119
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 120
    return-void

    .line 121
    .line 122
    :cond_6
    const/16 v1, -0x6c

    .line 123
    .line 124
    if-lt v0, v1, :cond_a

    .line 125
    .line 126
    const/16 v2, -0x5c

    .line 127
    .line 128
    if-gt v0, v2, :cond_a

    .line 129
    .line 130
    if-ne v0, v2, :cond_7

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 134
    move-result v0

    .line 135
    goto :goto_0

    .line 136
    :cond_7
    sub-int/2addr v0, v1

    .line 137
    :goto_0
    const/4 v1, 0x0

    .line 138
    .line 139
    :goto_1
    if-ge v1, v0, :cond_11

    .line 140
    .line 141
    sget-object v2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->FIXED_TYPE_SIZE:[B

    .line 142
    .line 143
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 144
    .line 145
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 146
    .line 147
    aget-byte v3, v3, v5

    .line 148
    .line 149
    and-int/lit16 v3, v3, 0xff

    .line 150
    .line 151
    aget-byte v2, v2, v3

    .line 152
    .line 153
    if-lez v2, :cond_8

    .line 154
    add-int/2addr v5, v2

    .line 155
    .line 156
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 157
    goto :goto_2

    .line 158
    .line 159
    :cond_8
    if-ne v2, v4, :cond_9

    .line 160
    .line 161
    add-int/lit8 v5, v5, 0x1

    .line 162
    .line 163
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 167
    move-result v2

    .line 168
    .line 169
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 170
    add-int/2addr v3, v2

    .line 171
    .line 172
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 173
    goto :goto_2

    .line 174
    .line 175
    .line 176
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipValue()V

    .line 177
    .line 178
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 179
    goto :goto_1

    .line 180
    .line 181
    .line 182
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 183
    move-result-object v0

    .line 184
    throw v0

    .line 185
    .line 186
    .line 187
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 188
    move-result v0

    .line 189
    .line 190
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 191
    add-int/2addr v1, v0

    .line 192
    .line 193
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 194
    return-void

    .line 195
    .line 196
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 197
    .line 198
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 199
    return-void

    .line 200
    .line 201
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    .line 202
    .line 203
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 204
    return-void

    .line 205
    .line 206
    .line 207
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    .line 211
    return-void

    .line 212
    .line 213
    .line 214
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 215
    return-void

    .line 216
    .line 217
    .line 218
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 219
    return-void

    .line 220
    .line 221
    .line 222
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    .line 223
    return-void

    .line 224
    .line 225
    :pswitch_7
    add-int/lit8 v1, v1, 0x9

    .line 226
    .line 227
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 228
    return-void

    .line 229
    .line 230
    :pswitch_8
    add-int/lit8 v1, v1, 0x8

    .line 231
    .line 232
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 239
    return-void

    .line 240
    .line 241
    :pswitch_9
    add-int/lit8 v1, v1, 0x8

    .line 242
    .line 243
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 247
    return-void

    .line 248
    .line 249
    :pswitch_a
    add-int/lit8 v1, v1, 0x4

    .line 250
    .line 251
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 255
    return-void

    .line 256
    .line 257
    :goto_3
    :pswitch_b
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 258
    .line 259
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 260
    .line 261
    aget-byte v0, v0, v1

    .line 262
    .line 263
    const/16 v2, -0x5b

    .line 264
    .line 265
    if-ne v0, v2, :cond_b

    .line 266
    .line 267
    add-int/lit8 v1, v1, 0x1

    .line 268
    .line 269
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 270
    return-void

    .line 271
    .line 272
    :cond_b
    sget-object v2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->FIXED_TYPE_SIZE:[B

    .line 273
    .line 274
    and-int/lit16 v0, v0, 0xff

    .line 275
    .line 276
    aget-byte v0, v2, v0

    .line 277
    .line 278
    if-lez v0, :cond_c

    .line 279
    add-int/2addr v1, v0

    .line 280
    .line 281
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 282
    goto :goto_4

    .line 283
    .line 284
    :cond_c
    if-ne v0, v4, :cond_d

    .line 285
    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 287
    .line 288
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 292
    move-result v0

    .line 293
    .line 294
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 295
    add-int/2addr v1, v0

    .line 296
    .line 297
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 298
    goto :goto_4

    .line 299
    .line 300
    .line 301
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipName()Z

    .line 302
    .line 303
    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 304
    .line 305
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 306
    .line 307
    aget-byte v0, v0, v1

    .line 308
    .line 309
    and-int/lit16 v0, v0, 0xff

    .line 310
    .line 311
    aget-byte v0, v2, v0

    .line 312
    .line 313
    if-lez v0, :cond_e

    .line 314
    add-int/2addr v1, v0

    .line 315
    .line 316
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 317
    goto :goto_3

    .line 318
    .line 319
    :cond_e
    if-ne v0, v4, :cond_f

    .line 320
    .line 321
    add-int/lit8 v1, v1, 0x1

    .line 322
    .line 323
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 327
    move-result v0

    .line 328
    .line 329
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 330
    add-int/2addr v1, v0

    .line 331
    .line 332
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 333
    goto :goto_3

    .line 334
    .line 335
    .line 336
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipValue()V

    .line 337
    goto :goto_3

    .line 338
    .line 339
    .line 340
    :pswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isString()Z

    .line 341
    move-result v1

    .line 342
    .line 343
    if-eqz v1, :cond_10

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipName()Z

    .line 347
    return-void

    .line 348
    .line 349
    .line 350
    :cond_10
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->notSupportType(B)Lcom/alibaba/fastjson2/JSONException;

    .line 351
    move-result-object v0

    .line 352
    throw v0

    .line 353
    .line 354
    .line 355
    :pswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipValue()V

    .line 359
    return-void

    .line 360
    .line 361
    .line 362
    :pswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 363
    move-result v0

    .line 364
    .line 365
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 366
    add-int/2addr v1, v0

    .line 367
    .line 368
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 369
    :cond_11
    :goto_5
    :pswitch_f
    return-void

    .line 370
    .line 371
    :cond_12
    :pswitch_10
    add-int/lit8 v1, v1, 0x5

    .line 372
    .line 373
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 374
    return-void

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
    :pswitch_data_0
    .packed-switch -0x6f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch -0x5a
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_10
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_10
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch -0x51
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

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
    :pswitch_data_3
    .packed-switch -0x4c
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_4
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_10
    .end packed-switch

    .line 445
    .line 446
    .line 447
    .line 448
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
    :pswitch_data_5
    .packed-switch 0x79
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startArray()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    .line 10
    aget-byte v0, v0, v1

    .line 11
    .line 12
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 13
    .line 14
    const/16 v1, -0x51

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    const/4 v0, -0x1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_0
    const/16 v1, -0x6c

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    const/16 v2, -0x5d

    .line 25
    .line 26
    if-gt v0, v2, :cond_1

    .line 27
    neg-int v2, v0

    .line 28
    int-to-char v2, v2

    .line 29
    .line 30
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 31
    sub-int/2addr v0, v1

    .line 32
    return v0

    .line 33
    .line 34
    :cond_1
    const/16 v1, -0x6f

    .line 35
    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    .line 43
    :cond_2
    const/16 v1, -0x5c

    .line 44
    .line 45
    if-ne v0, v1, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 49
    move-result v0

    .line 50
    return v0

    .line 51
    .line 52
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v3, "array not support input "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v1
.end method
