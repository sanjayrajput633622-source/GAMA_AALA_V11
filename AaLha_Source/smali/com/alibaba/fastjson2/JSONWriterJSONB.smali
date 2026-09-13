.class final Lcom/alibaba/fastjson2/JSONWriterJSONB;
.super Lcom/alibaba/fastjson2/JSONWriter;
.source "SourceFile"


# static fields
.field static final BIGINT_INT32_MAX:Ljava/math/BigInteger;

.field static final BIGINT_INT32_MIN:Ljava/math/BigInteger;

.field static final BIGINT_INT64_MAX:Ljava/math/BigInteger;

.field static final BIGINT_INT64_MIN:Ljava/math/BigInteger;


# instance fields
.field private bytes:[B

.field private final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field protected rootTypeNameHash:J

.field private symbolIndex:I

.field private symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, -0x80000000

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->BIGINT_INT32_MIN:Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    const-wide/32 v0, 0x7fffffff

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->BIGINT_INT32_MAX:Ljava/math/BigInteger;

    .line 19
    .line 20
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->BIGINT_INT64_MIN:Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v0, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->BIGINT_INT64_MAX:Ljava/math/BigInteger;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;ZLjava/nio/charset/Charset;)V

    .line 7
    .line 8
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 16
    move-result p2

    .line 17
    array-length v0, p1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    and-int/2addr p2, v0

    .line 20
    .line 21
    aget-object p1, p1, p2

    .line 22
    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 24
    .line 25
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, [B

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const/16 p1, 0x2000

    .line 37
    .line 38
    new-array p1, p1, [B

    .line 39
    .line 40
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 41
    return-void
.end method

.method private static isInt32(Ljava/math/BigInteger;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->BIGINT_INT32_MIN:Ljava/math/BigInteger;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->BIGINT_INT32_MAX:Ljava/math/BigInteger;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 14
    move-result p0

    .line 15
    .line 16
    if-gtz p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private static isInt64(Ljava/math/BigInteger;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->BIGINT_INT64_MIN:Ljava/math/BigInteger;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->BIGINT_INT64_MAX:Ljava/math/BigInteger;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 14
    move-result p0

    .line 15
    .line 16
    if-gtz p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private static putInt([BII)V
    .locals 2

    .line 1
    .line 2
    ushr-int/lit8 v0, p2, 0x18

    .line 3
    int-to-byte v0, v0

    .line 4
    .line 5
    aput-byte v0, p0, p1

    .line 6
    .line 7
    add-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    ushr-int/lit8 v1, p2, 0x10

    .line 10
    int-to-byte v1, v1

    .line 11
    .line 12
    aput-byte v1, p0, v0

    .line 13
    .line 14
    add-int/lit8 v0, p1, 0x2

    .line 15
    .line 16
    ushr-int/lit8 v1, p2, 0x8

    .line 17
    int-to-byte v1, v1

    .line 18
    .line 19
    aput-byte v1, p0, v0

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x3

    .line 22
    int-to-byte p2, p2

    .line 23
    .line 24
    aput-byte p2, p0, p1

    .line 25
    return-void
.end method

.method public static putInt3([BII)V
    .locals 2

    .line 1
    .line 2
    shr-int/lit8 v0, p2, 0x10

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x44

    .line 5
    int-to-byte v0, v0

    .line 6
    .line 7
    aput-byte v0, p0, p1

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x1

    .line 10
    .line 11
    shr-int/lit8 v1, p2, 0x8

    .line 12
    int-to-byte v1, v1

    .line 13
    .line 14
    aput-byte v1, p0, v0

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x2

    .line 17
    int-to-byte p2, p2

    .line 18
    .line 19
    aput-byte p2, p0, p1

    .line 20
    return-void
.end method

.method private static putLong([BIJ)V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x38

    .line 3
    .line 4
    ushr-long v0, p2, v0

    .line 5
    long-to-int v0, v0

    .line 6
    int-to-byte v0, v0

    .line 7
    .line 8
    aput-byte v0, p0, p1

    .line 9
    .line 10
    add-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    const/16 v1, 0x30

    .line 13
    .line 14
    ushr-long v1, p2, v1

    .line 15
    long-to-int v1, v1

    .line 16
    int-to-byte v1, v1

    .line 17
    .line 18
    aput-byte v1, p0, v0

    .line 19
    .line 20
    add-int/lit8 v0, p1, 0x2

    .line 21
    .line 22
    const/16 v1, 0x28

    .line 23
    .line 24
    ushr-long v1, p2, v1

    .line 25
    long-to-int v1, v1

    .line 26
    int-to-byte v1, v1

    .line 27
    .line 28
    aput-byte v1, p0, v0

    .line 29
    .line 30
    add-int/lit8 v0, p1, 0x3

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    ushr-long v1, p2, v1

    .line 35
    long-to-int v1, v1

    .line 36
    int-to-byte v1, v1

    .line 37
    .line 38
    aput-byte v1, p0, v0

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x4

    .line 41
    .line 42
    const/16 v1, 0x18

    .line 43
    .line 44
    ushr-long v1, p2, v1

    .line 45
    long-to-int v1, v1

    .line 46
    int-to-byte v1, v1

    .line 47
    .line 48
    aput-byte v1, p0, v0

    .line 49
    .line 50
    add-int/lit8 v0, p1, 0x5

    .line 51
    .line 52
    const/16 v1, 0x10

    .line 53
    .line 54
    ushr-long v1, p2, v1

    .line 55
    long-to-int v1, v1

    .line 56
    int-to-byte v1, v1

    .line 57
    .line 58
    aput-byte v1, p0, v0

    .line 59
    .line 60
    add-int/lit8 v0, p1, 0x6

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    ushr-long v1, p2, v1

    .line 65
    long-to-int v1, v1

    .line 66
    int-to-byte v1, v1

    .line 67
    .line 68
    aput-byte v1, p0, v0

    .line 69
    .line 70
    add-int/lit8 p1, p1, 0x7

    .line 71
    long-to-int p2, p2

    .line 72
    int-to-byte p2, p2

    .line 73
    .line 74
    aput-byte p2, p0, p1

    .line 75
    return-void
.end method

.method public static putLong3([BII)V
    .locals 2

    .line 1
    .line 2
    shr-int/lit8 v0, p2, 0x10

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x3c

    .line 5
    int-to-byte v0, v0

    .line 6
    .line 7
    aput-byte v0, p0, p1

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x1

    .line 10
    .line 11
    shr-int/lit8 v1, p2, 0x8

    .line 12
    int-to-byte v1, v1

    .line 13
    .line 14
    aput-byte v1, p0, v0

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x2

    .line 17
    int-to-byte p2, p2

    .line 18
    .line 19
    aput-byte p2, p0, p1

    .line 20
    return-void
.end method

.method private static putStringSizeLarge([BII)I
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x3ffff

    .line 4
    .line 5
    const/16 v1, 0x79

    .line 6
    .line 7
    if-gt p2, v0, :cond_0

    .line 8
    .line 9
    aput-byte v1, p0, p1

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt3([BII)V

    .line 15
    const/4 p0, 0x4

    .line 16
    return p0

    .line 17
    .line 18
    :cond_0
    aput-byte v1, p0, p1

    .line 19
    .line 20
    add-int/lit8 v0, p1, 0x1

    .line 21
    .line 22
    const/16 v1, 0x48

    .line 23
    .line 24
    aput-byte v1, p0, v0

    .line 25
    .line 26
    add-int/lit8 v0, p1, 0x2

    .line 27
    .line 28
    ushr-int/lit8 v1, p2, 0x18

    .line 29
    int-to-byte v1, v1

    .line 30
    .line 31
    aput-byte v1, p0, v0

    .line 32
    .line 33
    add-int/lit8 v0, p1, 0x3

    .line 34
    .line 35
    ushr-int/lit8 v1, p2, 0x10

    .line 36
    int-to-byte v1, v1

    .line 37
    .line 38
    aput-byte v1, p0, v0

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x4

    .line 41
    .line 42
    ushr-int/lit8 v1, p2, 0x8

    .line 43
    int-to-byte v1, v1

    .line 44
    .line 45
    aput-byte v1, p0, v0

    .line 46
    .line 47
    add-int/lit8 p1, p1, 0x5

    .line 48
    int-to-byte p2, p2

    .line 49
    .line 50
    aput-byte p2, p0, p1

    .line 51
    const/4 p0, 0x6

    .line 52
    return p0
.end method

.method private static putStringSizeSmall([BII)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x79

    .line 3
    .line 4
    aput-byte v0, p0, p1

    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    shr-int/lit8 v1, p2, 0x8

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x38

    .line 11
    int-to-byte v1, v1

    .line 12
    .line 13
    aput-byte v1, p0, v0

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x2

    .line 16
    int-to-byte p2, p2

    .line 17
    .line 18
    aput-byte p2, p0, p1

    .line 19
    return-void
.end method

.method public static sizeOfInt(I)I
    .locals 1

    const/16 v0, -0x10

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, -0x800

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x40000

    if-lt p0, v0, :cond_2

    const v0, 0x3ffff

    if-gt p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0
.end method

.method public static writeInt32([BII)I
    .locals 2

    const/16 v0, -0x10

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x2f

    if-gt p2, v0, :cond_0

    int-to-byte p2, p2

    .line 34
    aput-byte p2, p0, p1

    return v1

    :cond_0
    const/16 v0, -0x800

    if-lt p2, v0, :cond_1

    const/16 v0, 0x7ff

    if-gt p2, v0, :cond_1

    shr-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    .line 35
    aput-byte v0, p0, p1

    add-int/2addr p1, v1

    int-to-byte p2, p2

    .line 36
    aput-byte p2, p0, p1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x40000

    if-lt p2, v0, :cond_2

    const v0, 0x3ffff

    if-gt p2, v0, :cond_2

    .line 37
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt3([BII)V

    const/4 p0, 0x3

    return p0

    :cond_2
    const/16 v0, 0x48

    .line 38
    aput-byte v0, p0, p1

    add-int/2addr p1, v1

    .line 39
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt([BII)V

    const/4 p0, 0x5

    return p0
.end method

.method private writeTypeNameSymbol(I)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    const/16 v3, -0x6e

    .line 19
    .line 20
    aput-byte v3, v1, v0

    .line 21
    .line 22
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 23
    neg-int p1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 27
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    const/high16 v2, 0x100000

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    :cond_0
    return-void
.end method

.method public endArray()V
    .locals 0

    return-void
.end method

.method public endObject()V
    .locals 3

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
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 11
    array-length v1, v1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 21
    .line 22
    const/16 v2, -0x5b

    .line 23
    .line 24
    aput-byte v2, v1, v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-lt p1, v1, :cond_2

    .line 6
    array-length v1, v0

    .line 7
    .line 8
    shr-int/lit8 v2, v1, 0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    .line 11
    sub-int v2, v1, p1

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v1

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->maxArraySize:I

    .line 18
    .line 19
    if-gt p1, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 29
    .line 30
    const-string v0, "try enabling LargeObject feature instead"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    :cond_2
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

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return v0
.end method

.method public flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBytes()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support operator"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startArray(I)V
    .locals 5

    .line 11
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 12
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 13
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-gt p1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    add-int/lit8 v4, p1, -0x6c

    int-to-byte v4, v4

    goto :goto_1

    :cond_2
    const/16 v4, -0x5c

    .line 15
    :goto_1
    aput-byte v4, v1, v0

    add-int/2addr v0, v3

    .line 16
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-nez v2, :cond_3

    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :cond_3
    return-void
.end method

.method public startArray(Ljava/lang/Object;I)V
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeTypeName(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v0, v0

    if-ne p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-gt p2, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    add-int/lit8 v3, p2, -0x6c

    int-to-byte v3, v3

    goto :goto_1

    :cond_3
    const/16 v3, -0x5c

    .line 8
    :goto_1
    aput-byte v3, v0, p1

    add-int/2addr p1, v2

    .line 9
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :cond_4
    return-void
.end method

.method public startObject()V
    .locals 3

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
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 11
    array-length v1, v1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 21
    .line 22
    const/16 v2, -0x5a

    .line 23
    .line 24
    aput-byte v2, v1, v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "<empty>"

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReader;->ofJSONB([B)Lcom/alibaba/fastjson2/JSONReader;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->of()Lcom/alibaba/fastjson2/JSONWriter;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v0

    .line 33
    .line 34
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    aget-byte v1, v1, v2

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, ", bytes length "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startObject()V

    .line 15
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endObject()V

    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Ljava/util/Map;)V
    .locals 2

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startObject()V

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endObject()V

    return-void
.end method

.method public write0(C)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v0, "unsupported operation"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public writeAny(Ljava/lang/Object;)V
    .locals 10

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

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
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

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
    .line 21
    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1, v1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->isBeanToArray()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    const/4 v7, 0x0

    .line 44
    .line 45
    const-wide/16 v8, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v4, p0

    .line 48
    move-object v5, p1

    .line 49
    .line 50
    .line 51
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 52
    return-void

    .line 53
    :cond_2
    move-object v5, p1

    .line 54
    const/4 v7, 0x0

    .line 55
    .line 56
    const-wide/16 v8, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v4, p0

    .line 59
    .line 60
    .line 61
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 62
    return-void
.end method

.method public writeArrayNull()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeArrayNull(J)V
    .locals 4

    .line 6
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 8
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v0, -0x6c

    aput-byte v0, p1, p2

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v0, -0x51

    aput-byte v0, p1, p2

    return-void
.end method

.method public writeBase64([B)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v0, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public writeBigInt(Ljava/math/BigInteger;J)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->isInt64(Ljava/math/BigInteger;)Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 15
    .line 16
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    array-length p3, p3

    .line 18
    .line 19
    if-ne p2, p3, :cond_1

    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 25
    .line 26
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 27
    .line 28
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    .line 30
    add-int/lit8 v0, p3, 0x1

    .line 31
    .line 32
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 33
    .line 34
    const/16 v0, -0x46

    .line 35
    .line 36
    aput-byte v0, p2, p3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    .line 40
    move-result-wide p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 51
    .line 52
    add-int/lit8 p2, p2, 0x5

    .line 53
    array-length p3, p1

    .line 54
    add-int/2addr p2, p3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 58
    .line 59
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 60
    .line 61
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 62
    .line 63
    add-int/lit8 v0, p3, 0x1

    .line 64
    .line 65
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 66
    .line 67
    const/16 v0, -0x45

    .line 68
    .line 69
    aput-byte v0, p2, p3

    .line 70
    array-length p2, p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 74
    .line 75
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 76
    .line 77
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 78
    array-length v0, p1

    .line 79
    const/4 v1, 0x0

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    .line 84
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 85
    array-length p1, p1

    .line 86
    add-int/2addr p2, p1

    .line 87
    .line 88
    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 89
    return-void
.end method

.method public writeBinary([B)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x6

    .line 11
    array-length v1, p1

    .line 12
    add-int/2addr v0, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 18
    .line 19
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 20
    .line 21
    add-int/lit8 v2, v1, 0x1

    .line 22
    .line 23
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 24
    .line 25
    const/16 v2, -0x6f

    .line 26
    .line 27
    aput-byte v2, v0, v1

    .line 28
    array-length v0, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 34
    .line 35
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 36
    array-length v2, p1

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 43
    array-length p1, p1

    .line 44
    add-int/2addr v0, p1

    .line 45
    .line 46
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 47
    return-void
.end method

.method public writeBool(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-eqz p1, :cond_1

    const/16 p1, -0x4f

    goto :goto_0

    :cond_1
    const/16 p1, -0x50

    :goto_0
    aput-byte p1, v0, v1

    return-void
.end method

.method public writeBool([Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 5
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 7
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeBool(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endArray()V

    return-void
.end method

.method public writeChar(C)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

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
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

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
    const/16 v2, -0x70

    .line 23
    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 28
    return-void
.end method

.method public writeColon()V
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

.method public writeComma()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "unsupported operation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public writeDateTime14(IIIIII)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 10
    .line 11
    const/16 v3, -0x58

    .line 12
    .line 13
    aput-byte v3, v2, v0

    .line 14
    .line 15
    add-int/lit8 v3, v0, 0x1

    .line 16
    .line 17
    ushr-int/lit8 v4, p1, 0x8

    .line 18
    int-to-byte v4, v4

    .line 19
    .line 20
    aput-byte v4, v2, v3

    .line 21
    .line 22
    add-int/lit8 v3, v0, 0x2

    .line 23
    int-to-byte p1, p1

    .line 24
    .line 25
    aput-byte p1, v2, v3

    .line 26
    .line 27
    add-int/lit8 p1, v0, 0x3

    .line 28
    int-to-byte p2, p2

    .line 29
    .line 30
    aput-byte p2, v2, p1

    .line 31
    .line 32
    add-int/lit8 p1, v0, 0x4

    .line 33
    int-to-byte p2, p3

    .line 34
    .line 35
    aput-byte p2, v2, p1

    .line 36
    .line 37
    add-int/lit8 p1, v0, 0x5

    .line 38
    int-to-byte p2, p4

    .line 39
    .line 40
    aput-byte p2, v2, p1

    .line 41
    .line 42
    add-int/lit8 p1, v0, 0x6

    .line 43
    int-to-byte p2, p5

    .line 44
    .line 45
    aput-byte p2, v2, p1

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x7

    .line 48
    int-to-byte p1, p6

    .line 49
    .line 50
    aput-byte p1, v2, v0

    .line 51
    .line 52
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 53
    const/4 p1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 57
    return-void
.end method

.method public writeDateTime19(IIIIII)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 10
    .line 11
    const/16 v3, -0x58

    .line 12
    .line 13
    aput-byte v3, v2, v0

    .line 14
    .line 15
    add-int/lit8 v3, v0, 0x1

    .line 16
    .line 17
    ushr-int/lit8 v4, p1, 0x8

    .line 18
    int-to-byte v4, v4

    .line 19
    .line 20
    aput-byte v4, v2, v3

    .line 21
    .line 22
    add-int/lit8 v3, v0, 0x2

    .line 23
    int-to-byte p1, p1

    .line 24
    .line 25
    aput-byte p1, v2, v3

    .line 26
    .line 27
    add-int/lit8 p1, v0, 0x3

    .line 28
    int-to-byte p2, p2

    .line 29
    .line 30
    aput-byte p2, v2, p1

    .line 31
    .line 32
    add-int/lit8 p1, v0, 0x4

    .line 33
    int-to-byte p2, p3

    .line 34
    .line 35
    aput-byte p2, v2, p1

    .line 36
    .line 37
    add-int/lit8 p1, v0, 0x5

    .line 38
    int-to-byte p2, p4

    .line 39
    .line 40
    aput-byte p2, v2, p1

    .line 41
    .line 42
    add-int/lit8 p1, v0, 0x6

    .line 43
    int-to-byte p2, p5

    .line 44
    .line 45
    aput-byte p2, v2, p1

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x7

    .line 48
    int-to-byte p1, p6

    .line 49
    .line 50
    aput-byte p1, v2, v0

    .line 51
    .line 52
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 53
    const/4 p1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 57
    return-void
.end method

.method public writeDateTimeISO8601(IIIIIIIIZ)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string p2, "unsupported operation"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public writeDateYYYMMDD10(III)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string p2, "unsupported operation"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public writeDateYYYMMDD8(III)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 10
    .line 11
    const/16 v3, -0x57

    .line 12
    .line 13
    aput-byte v3, v2, v0

    .line 14
    .line 15
    add-int/lit8 v3, v0, 0x1

    .line 16
    .line 17
    ushr-int/lit8 v4, p1, 0x8

    .line 18
    int-to-byte v4, v4

    .line 19
    .line 20
    aput-byte v4, v2, v3

    .line 21
    .line 22
    add-int/lit8 v3, v0, 0x2

    .line 23
    int-to-byte p1, p1

    .line 24
    .line 25
    aput-byte p1, v2, v3

    .line 26
    .line 27
    add-int/lit8 p1, v0, 0x3

    .line 28
    int-to-byte p2, p2

    .line 29
    .line 30
    aput-byte p2, v2, p1

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x4

    .line 33
    int-to-byte p1, p3

    .line 34
    .line 35
    aput-byte p1, v2, v0

    .line 36
    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 38
    return-void
.end method

.method public writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->isInt64(Ljava/math/BigInteger;)Z

    .line 20
    move-result p3

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 32
    .line 33
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 34
    .line 35
    add-int/lit8 p4, p3, 0x1

    .line 36
    .line 37
    iput p4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 38
    .line 39
    const/16 p4, -0x48

    .line 40
    .line 41
    aput-byte p4, p2, p3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    .line 45
    move-result-wide p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    .line 49
    return-void

    .line 50
    .line 51
    :cond_1
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 52
    .line 53
    add-int/lit8 p3, p3, 0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 57
    .line 58
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 59
    .line 60
    iget p4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 61
    .line 62
    add-int/lit8 v0, p4, 0x1

    .line 63
    .line 64
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 65
    .line 66
    const/16 v0, -0x47

    .line 67
    .line 68
    aput-byte v0, p3, p4

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->isInt32(Ljava/math/BigInteger;)Z

    .line 75
    move-result p2

    .line 76
    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 81
    move-result p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 85
    return-void

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->isInt64(Ljava/math/BigInteger;)Z

    .line 89
    move-result p2

    .line 90
    .line 91
    if-eqz p2, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    .line 95
    move-result-wide p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    .line 99
    return-void

    .line 100
    .line 101
    :cond_3
    const-wide/16 p2, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeBigInt(Ljava/math/BigInteger;J)V

    .line 105
    return-void
.end method

.method public writeDouble(D)V
    .locals 7

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v0, -0x4e

    aput-byte v0, p1, p2

    return-void

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 3
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 4
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v0, -0x4d

    aput-byte v0, p1, p2

    return-void

    :cond_1
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_2

    double-to-long v0, p1

    long-to-double v2, v0

    cmpl-double v2, v2, p1

    if-nez v2, :cond_2

    .line 5
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 6
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, -0x4c

    aput-byte v2, p1, p2

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    return-void

    .line 8
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x9

    .line 9
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 10
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x4b

    .line 11
    aput-byte v3, v2, v0

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 13
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 14
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 15
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x4

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 16
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x5

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 17
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x6

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 18
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x7

    const/16 v4, 0x8

    ushr-long v5, p1, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 19
    aput-byte v5, v2, v3

    add-int/2addr v0, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 20
    aput-byte p1, v2, v0

    .line 21
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDouble([D)V
    .locals 3

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 23
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 24
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 25
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endArray()V

    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

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
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

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
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 32
    .line 33
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 34
    and-long/2addr v0, v2

    .line 35
    .line 36
    cmp-long v0, v0, v4

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 46
    return-void

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    move-result p1

    .line 51
    .line 52
    const/16 v0, 0x2f

    .line 53
    .line 54
    if-gt p1, v0, :cond_4

    .line 55
    .line 56
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 57
    .line 58
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 59
    array-length v1, v1

    .line 60
    .line 61
    if-ne v0, v1, :cond_3

    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 69
    .line 70
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 71
    .line 72
    add-int/lit8 v2, v1, 0x1

    .line 73
    .line 74
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 75
    int-to-byte p1, p1

    .line 76
    .line 77
    aput-byte p1, v0, v1

    .line 78
    return-void

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 82
    return-void
.end method

.method public writeFloat(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x5

    .line 2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    float-to-int v3, p1

    int-to-float v4, v3

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    const/high16 v4, -0x37800000    # -262144.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    const v4, 0x487fffc0    # 262143.0f

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    const/16 p1, -0x4a

    .line 5
    aput-byte p1, v2, v0

    add-int/lit8 p1, v0, 0x1

    .line 6
    invoke-static {v2, p1, v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int v1, v0, p1

    goto :goto_0

    :cond_1
    const/16 v3, -0x49

    .line 7
    aput-byte v3, v2, v0

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-static {v2, v0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt([BII)V

    .line 10
    :goto_0
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeFloat([F)V
    .locals 2

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 12
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 13
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 14
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endArray()V

    return-void
.end method

.method public writeHex([B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeBinary([B)V

    .line 4
    return-void
.end method

.method public writeInstant(JI)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 10
    .line 11
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 12
    .line 13
    add-int/lit8 v2, v1, 0x1

    .line 14
    .line 15
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 16
    .line 17
    const/16 v2, -0x52

    .line 18
    .line 19
    aput-byte v2, v0, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 26
    return-void
.end method

.method public writeInt16(S)V
    .locals 5

    .line 6
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x3

    .line 7
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x44

    .line 10
    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 11
    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    int-to-byte p1, p1

    .line 12
    aput-byte p1, v2, v0

    .line 13
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt16([S)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 4
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endArray()V

    return-void
.end method

.method public writeInt32(I)V
    .locals 5

    .line 22
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 23
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 26
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, -0x10

    const/4 v4, 0x1

    if-lt p1, v3, :cond_1

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_1

    int-to-byte p1, p1

    .line 27
    aput-byte p1, v0, v2

    move v1, v4

    goto :goto_0

    :cond_1
    const/16 v3, -0x800

    if-lt p1, v3, :cond_2

    const/16 v3, 0x7ff

    if-gt p1, v3, :cond_2

    shr-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x38

    int-to-byte v1, v1

    .line 28
    aput-byte v1, v0, v2

    add-int/2addr v2, v4

    int-to-byte p1, p1

    .line 29
    aput-byte p1, v0, v2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/high16 v3, -0x40000

    if-lt p1, v3, :cond_3

    const v3, 0x3ffff

    if-gt p1, v3, :cond_3

    .line 30
    invoke-static {v0, v2, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt3([BII)V

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/16 v3, 0x48

    .line 31
    aput-byte v3, v0, v2

    add-int/2addr v2, v4

    .line 32
    invoke-static {v0, v2, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt([BII)V

    .line 33
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt32([I)V
    .locals 6

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    :cond_1
    const/16 v1, 0xf

    if-gt v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, -0x5c

    aput-byte v3, v1, v2

    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 8
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    .line 10
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    sub-int v2, v1, v2

    if-lez v2, :cond_3

    .line 11
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/4 v2, 0x0

    .line 13
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_7

    .line 14
    aget v3, p1, v2

    const/16 v4, -0x10

    if-lt v3, v4, :cond_4

    const/16 v4, 0x2f

    if-gt v3, v4, :cond_4

    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    .line 15
    aput-byte v3, v1, v0

    move v0, v4

    goto :goto_2

    :cond_4
    const/16 v4, -0x800

    if-lt v3, v4, :cond_5

    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_5

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x8

    add-int/lit8 v5, v5, 0x38

    int-to-byte v5, v5

    .line 16
    aput-byte v5, v1, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte v3, v3

    .line 17
    aput-byte v3, v1, v4

    goto :goto_2

    :cond_5
    const/high16 v4, -0x40000

    if-lt v3, v4, :cond_6

    const v4, 0x3ffff

    if-gt v3, v4, :cond_6

    .line 18
    invoke-static {v1, v0, v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt3([BII)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_6
    const/16 v4, 0x48

    .line 19
    aput-byte v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    .line 20
    invoke-static {v1, v4, v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt([BII)V

    add-int/lit8 v0, v0, 0x5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_7
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt64(J)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 5
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const-wide/16 v3, -0x8

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    const-wide/16 v3, 0xf

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    const-wide/16 v3, 0x20

    sub-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 6
    aput-byte p1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v3, -0x800

    cmp-long v3, p1, v3

    if-ltz v3, :cond_2

    const-wide/16 v3, 0x7ff

    cmp-long v3, p1, v3

    if-gtz v3, :cond_2

    const/16 v1, 0x8

    shr-long v3, p1, v1

    const-wide/16 v5, -0x30

    add-long/2addr v3, v5

    long-to-int v1, v3

    int-to-byte v1, v1

    .line 7
    aput-byte v1, v0, v2

    add-int/lit8 v1, v2, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v0, v1

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-wide/32 v3, -0x40000

    cmp-long v3, p1, v3

    if-ltz v3, :cond_3

    const-wide/32 v3, 0x3ffff

    cmp-long v3, p1, v3

    if-gtz v3, :cond_3

    long-to-int p1, p1

    .line 9
    invoke-static {v0, v2, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putLong3([BII)V

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-wide/32 v3, -0x80000000

    cmp-long v3, p1, v3

    if-ltz v3, :cond_4

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p1, v3

    if-gtz v3, :cond_4

    const/16 v1, -0x41

    .line 10
    aput-byte v1, v0, v2

    add-int/lit8 v1, v2, 0x1

    long-to-int p1, p1

    .line 11
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt([BII)V

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const/16 v3, -0x42

    .line 12
    aput-byte v3, v0, v2

    add-int/lit8 v3, v2, 0x1

    .line 13
    invoke-static {v0, v3, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putLong([BIJ)V

    :goto_0
    add-int/2addr v2, v1

    .line 14
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt64([J)V
    .locals 10

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 16
    :cond_0
    array-length v0, p1

    .line 17
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 18
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x9

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x5

    .line 19
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 20
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, 0xf

    if-gt v0, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    .line 22
    aput-byte v0, v2, v1

    goto :goto_0

    :cond_2
    const/16 v3, -0x5c

    .line 23
    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    .line 24
    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v3, v1, v0

    :goto_0
    const/4 v0, 0x0

    .line 25
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_7

    .line 26
    aget-wide v4, p1, v0

    const-wide/16 v6, -0x10

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const-wide/16 v6, 0x2f

    cmp-long v1, v4, v6

    if-gtz v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 27
    aput-byte v4, v2, v3

    move v3, v1

    goto :goto_2

    :cond_3
    const-wide/16 v6, -0x800

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    const-wide/16 v6, 0x7ff

    cmp-long v1, v4, v6

    if-gtz v1, :cond_4

    const/16 v1, 0x8

    shr-long v6, v4, v1

    const-wide/16 v8, -0x30

    add-long/2addr v6, v8

    long-to-int v1, v6

    int-to-byte v1, v1

    .line 28
    aput-byte v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 29
    aput-byte v4, v2, v1

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_4
    const-wide/32 v6, -0x40000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_5

    const-wide/32 v6, 0x3ffff

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    long-to-int v1, v4

    .line 30
    invoke-static {v2, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putLong3([BII)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    :cond_5
    const-wide/32 v6, -0x80000000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_6

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gtz v1, :cond_6

    const/16 v1, -0x41

    .line 31
    aput-byte v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    long-to-int v4, v4

    .line 32
    invoke-static {v2, v1, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putInt([BII)V

    add-int/lit8 v3, v3, 0x5

    goto :goto_2

    :cond_6
    const/16 v1, -0x42

    .line 33
    aput-byte v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    .line 34
    invoke-static {v2, v1, v4, v5}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putLong([BIJ)V

    add-int/lit8 v3, v3, 0x9

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt8(B)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    sub-int v2, v1, v2

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    const/16 v3, -0x43

    .line 19
    .line 20
    aput-byte v3, v2, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    aput-byte p1, v2, v0

    .line 25
    .line 26
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 27
    return-void
.end method

.method public writeLocalDateTime(Lcom/alibaba/fastjson2/time/LocalDateTime;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    .line 10
    add-int/lit8 v1, v0, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 14
    .line 15
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 16
    .line 17
    const/16 v3, -0x58

    .line 18
    .line 19
    aput-byte v3, v2, v0

    .line 20
    .line 21
    iget-object v3, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 22
    .line 23
    iget v4, v3, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 24
    .line 25
    add-int/lit8 v5, v0, 0x1

    .line 26
    .line 27
    ushr-int/lit8 v6, v4, 0x8

    .line 28
    int-to-byte v6, v6

    .line 29
    .line 30
    aput-byte v6, v2, v5

    .line 31
    .line 32
    add-int/lit8 v5, v0, 0x2

    .line 33
    int-to-byte v4, v4

    .line 34
    .line 35
    aput-byte v4, v2, v5

    .line 36
    .line 37
    add-int/lit8 v4, v0, 0x3

    .line 38
    .line 39
    iget-short v5, v3, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 40
    int-to-byte v5, v5

    .line 41
    .line 42
    aput-byte v5, v2, v4

    .line 43
    .line 44
    add-int/lit8 v4, v0, 0x4

    .line 45
    .line 46
    iget-short v3, v3, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 47
    int-to-byte v3, v3

    .line 48
    .line 49
    aput-byte v3, v2, v4

    .line 50
    .line 51
    add-int/lit8 v3, v0, 0x5

    .line 52
    .line 53
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 54
    .line 55
    iget-byte v4, p1, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 56
    .line 57
    aput-byte v4, v2, v3

    .line 58
    .line 59
    add-int/lit8 v3, v0, 0x6

    .line 60
    .line 61
    iget-byte v4, p1, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 62
    .line 63
    aput-byte v4, v2, v3

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x7

    .line 66
    .line 67
    iget-byte v3, p1, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 68
    .line 69
    aput-byte v3, v2, v0

    .line 70
    .line 71
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 72
    .line 73
    iget p1, p1, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 77
    return-void
.end method

.method public writeMillis(J)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-wide/from16 v1, p1

    .line 5
    .line 6
    iget v3, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 7
    .line 8
    add-int/lit8 v4, v3, 0x9

    .line 9
    .line 10
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 11
    array-length v5, v5

    .line 12
    .line 13
    if-lt v4, v5, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 17
    .line 18
    :cond_0
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 19
    .line 20
    const-wide/16 v6, 0x3e8

    .line 21
    .line 22
    rem-long v8, v1, v6

    .line 23
    .line 24
    const-wide/16 v10, 0x0

    .line 25
    .line 26
    cmp-long v8, v8, v10

    .line 27
    .line 28
    if-nez v8, :cond_2

    .line 29
    .line 30
    div-long v6, v1, v6

    .line 31
    .line 32
    .line 33
    const-wide/32 v8, -0x80000000

    .line 34
    .line 35
    cmp-long v12, v6, v8

    .line 36
    .line 37
    .line 38
    const-wide/32 v13, 0x7fffffff

    .line 39
    .line 40
    if-ltz v12, :cond_1

    .line 41
    .line 42
    cmp-long v12, v6, v13

    .line 43
    .line 44
    if-gtz v12, :cond_1

    .line 45
    long-to-int v1, v6

    .line 46
    .line 47
    const/16 v2, -0x54

    .line 48
    .line 49
    aput-byte v2, v5, v3

    .line 50
    .line 51
    add-int/lit8 v2, v3, 0x1

    .line 52
    .line 53
    ushr-int/lit8 v4, v1, 0x18

    .line 54
    int-to-byte v4, v4

    .line 55
    .line 56
    aput-byte v4, v5, v2

    .line 57
    .line 58
    add-int/lit8 v2, v3, 0x2

    .line 59
    .line 60
    ushr-int/lit8 v4, v1, 0x10

    .line 61
    int-to-byte v4, v4

    .line 62
    .line 63
    aput-byte v4, v5, v2

    .line 64
    .line 65
    add-int/lit8 v2, v3, 0x3

    .line 66
    .line 67
    ushr-int/lit8 v4, v1, 0x8

    .line 68
    int-to-byte v4, v4

    .line 69
    .line 70
    aput-byte v4, v5, v2

    .line 71
    .line 72
    add-int/lit8 v2, v3, 0x4

    .line 73
    int-to-byte v1, v1

    .line 74
    .line 75
    aput-byte v1, v5, v2

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x5

    .line 78
    .line 79
    iput v3, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 80
    return-void

    .line 81
    .line 82
    :cond_1
    const-wide/16 v15, 0x3c

    .line 83
    .line 84
    rem-long v17, v6, v15

    .line 85
    .line 86
    cmp-long v10, v17, v10

    .line 87
    .line 88
    if-nez v10, :cond_2

    .line 89
    div-long/2addr v6, v15

    .line 90
    .line 91
    cmp-long v8, v6, v8

    .line 92
    .line 93
    if-ltz v8, :cond_2

    .line 94
    .line 95
    cmp-long v8, v6, v13

    .line 96
    .line 97
    if-gtz v8, :cond_2

    .line 98
    long-to-int v1, v6

    .line 99
    .line 100
    const/16 v2, -0x53

    .line 101
    .line 102
    aput-byte v2, v5, v3

    .line 103
    .line 104
    add-int/lit8 v2, v3, 0x1

    .line 105
    .line 106
    ushr-int/lit8 v4, v1, 0x18

    .line 107
    int-to-byte v4, v4

    .line 108
    .line 109
    aput-byte v4, v5, v2

    .line 110
    .line 111
    add-int/lit8 v2, v3, 0x2

    .line 112
    .line 113
    ushr-int/lit8 v4, v1, 0x10

    .line 114
    int-to-byte v4, v4

    .line 115
    .line 116
    aput-byte v4, v5, v2

    .line 117
    .line 118
    add-int/lit8 v2, v3, 0x3

    .line 119
    .line 120
    ushr-int/lit8 v4, v1, 0x8

    .line 121
    int-to-byte v4, v4

    .line 122
    .line 123
    aput-byte v4, v5, v2

    .line 124
    .line 125
    add-int/lit8 v2, v3, 0x4

    .line 126
    int-to-byte v1, v1

    .line 127
    .line 128
    aput-byte v1, v5, v2

    .line 129
    .line 130
    add-int/lit8 v3, v3, 0x5

    .line 131
    .line 132
    iput v3, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 133
    return-void

    .line 134
    .line 135
    :cond_2
    const/16 v6, -0x55

    .line 136
    .line 137
    aput-byte v6, v5, v3

    .line 138
    .line 139
    add-int/lit8 v6, v3, 0x1

    .line 140
    .line 141
    const/16 v7, 0x38

    .line 142
    .line 143
    ushr-long v7, v1, v7

    .line 144
    long-to-int v7, v7

    .line 145
    int-to-byte v7, v7

    .line 146
    .line 147
    aput-byte v7, v5, v6

    .line 148
    .line 149
    add-int/lit8 v6, v3, 0x2

    .line 150
    .line 151
    const/16 v7, 0x30

    .line 152
    .line 153
    ushr-long v7, v1, v7

    .line 154
    long-to-int v7, v7

    .line 155
    int-to-byte v7, v7

    .line 156
    .line 157
    aput-byte v7, v5, v6

    .line 158
    .line 159
    add-int/lit8 v6, v3, 0x3

    .line 160
    .line 161
    const/16 v7, 0x28

    .line 162
    .line 163
    ushr-long v7, v1, v7

    .line 164
    long-to-int v7, v7

    .line 165
    int-to-byte v7, v7

    .line 166
    .line 167
    aput-byte v7, v5, v6

    .line 168
    .line 169
    add-int/lit8 v6, v3, 0x4

    .line 170
    .line 171
    const/16 v7, 0x20

    .line 172
    .line 173
    ushr-long v7, v1, v7

    .line 174
    long-to-int v7, v7

    .line 175
    int-to-byte v7, v7

    .line 176
    .line 177
    aput-byte v7, v5, v6

    .line 178
    .line 179
    add-int/lit8 v6, v3, 0x5

    .line 180
    .line 181
    const/16 v7, 0x18

    .line 182
    .line 183
    ushr-long v7, v1, v7

    .line 184
    long-to-int v7, v7

    .line 185
    int-to-byte v7, v7

    .line 186
    .line 187
    aput-byte v7, v5, v6

    .line 188
    .line 189
    add-int/lit8 v6, v3, 0x6

    .line 190
    .line 191
    const/16 v7, 0x10

    .line 192
    .line 193
    ushr-long v7, v1, v7

    .line 194
    long-to-int v7, v7

    .line 195
    int-to-byte v7, v7

    .line 196
    .line 197
    aput-byte v7, v5, v6

    .line 198
    .line 199
    add-int/lit8 v6, v3, 0x7

    .line 200
    .line 201
    const/16 v7, 0x8

    .line 202
    .line 203
    ushr-long v8, v1, v7

    .line 204
    long-to-int v8, v8

    .line 205
    int-to-byte v8, v8

    .line 206
    .line 207
    aput-byte v8, v5, v6

    .line 208
    add-int/2addr v3, v7

    .line 209
    long-to-int v1, v1

    .line 210
    int-to-byte v1, v1

    .line 211
    .line 212
    aput-byte v1, v5, v3

    .line 213
    .line 214
    iput v4, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 215
    return-void
.end method

.method public writeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public writeName10Raw(JJ)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x10

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v9, v0

    .line 20
    .line 21
    add-long v5, v1, v9

    .line 22
    move-wide v7, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 26
    .line 27
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 28
    add-long/2addr v1, v9

    .line 29
    .line 30
    const-wide/16 p1, 0x8

    .line 31
    .line 32
    add-long v5, v1, p1

    .line 33
    move-wide v7, p3

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0xa

    .line 39
    .line 40
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 41
    return-void
.end method

.method public writeName11Raw(JJ)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x10

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v9, v0

    .line 20
    .line 21
    add-long v5, v1, v9

    .line 22
    move-wide v7, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 26
    .line 27
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 28
    add-long/2addr v1, v9

    .line 29
    .line 30
    const-wide/16 p1, 0x8

    .line 31
    .line 32
    add-long v5, v1, p1

    .line 33
    move-wide v7, p3

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0xb

    .line 39
    .line 40
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 41
    return-void
.end method

.method public writeName12Raw(JJ)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x10

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v9, v0

    .line 20
    .line 21
    add-long v5, v1, v9

    .line 22
    move-wide v7, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 26
    .line 27
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 28
    add-long/2addr v1, v9

    .line 29
    .line 30
    const-wide/16 p1, 0x8

    .line 31
    .line 32
    add-long v5, v1, p1

    .line 33
    move-wide v7, p3

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0xc

    .line 39
    .line 40
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 41
    return-void
.end method

.method public writeName13Raw(JJ)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x10

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v9, v0

    .line 20
    .line 21
    add-long v5, v1, v9

    .line 22
    move-wide v7, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 26
    .line 27
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 28
    add-long/2addr v1, v9

    .line 29
    .line 30
    const-wide/16 p1, 0x8

    .line 31
    .line 32
    add-long v5, v1, p1

    .line 33
    move-wide v7, p3

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0xd

    .line 39
    .line 40
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 41
    return-void
.end method

.method public writeName14Raw(JJ)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x10

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v9, v0

    .line 20
    .line 21
    add-long v5, v1, v9

    .line 22
    move-wide v7, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 26
    .line 27
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 28
    add-long/2addr v1, v9

    .line 29
    .line 30
    const-wide/16 p1, 0x8

    .line 31
    .line 32
    add-long v5, v1, p1

    .line 33
    move-wide v7, p3

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0xe

    .line 39
    .line 40
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 41
    return-void
.end method

.method public writeName15Raw(JJ)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x10

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v9, v0

    .line 20
    .line 21
    add-long v5, v1, v9

    .line 22
    move-wide v7, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 26
    .line 27
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 28
    add-long/2addr v1, v9

    .line 29
    .line 30
    const-wide/16 p1, 0x8

    .line 31
    .line 32
    add-long v5, v1, p1

    .line 33
    move-wide v7, p3

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0xf

    .line 39
    .line 40
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 41
    return-void
.end method

.method public writeName16Raw(JJ)V
    .locals 13

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x10

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v9, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v11, v0

    .line 20
    .line 21
    add-long v5, v9, v11

    .line 22
    move-wide v7, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 26
    .line 27
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 28
    add-long/2addr v9, v11

    .line 29
    .line 30
    const-wide/16 p1, 0x8

    .line 31
    .line 32
    add-long v5, v9, p1

    .line 33
    .line 34
    move-wide/from16 v7, p3

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 38
    .line 39
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 40
    return-void
.end method

.method public writeName2Raw(J)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v5, v0

    .line 20
    add-long/2addr v5, v1

    .line 21
    move-wide v7, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    return-void
.end method

.method public writeName3Raw(J)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v5, v0

    .line 20
    add-long/2addr v5, v1

    .line 21
    move-wide v7, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x3

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    return-void
.end method

.method public writeName4Raw(J)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v5, v0

    .line 20
    add-long/2addr v5, v1

    .line 21
    move-wide v7, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x4

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    return-void
.end method

.method public writeName5Raw(J)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v5, v0

    .line 20
    add-long/2addr v5, v1

    .line 21
    move-wide v7, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x5

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    return-void
.end method

.method public writeName6Raw(J)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v5, v0

    .line 20
    add-long/2addr v5, v1

    .line 21
    move-wide v7, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x6

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    return-void
.end method

.method public writeName7Raw(J)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v5, v0

    .line 20
    add-long/2addr v5, v1

    .line 21
    move-wide v7, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x7

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 29
    return-void
.end method

.method public writeName8Raw(J)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v7, v0

    .line 20
    add-long/2addr v5, v7

    .line 21
    move-wide v7, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 27
    return-void
.end method

.method public writeName9Raw(JI)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0xc

    .line 5
    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 17
    .line 18
    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 19
    int-to-long v9, v0

    .line 20
    .line 21
    add-long v5, v1, v9

    .line 22
    move-wide v7, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 28
    add-long/2addr v1, v9

    .line 29
    .line 30
    const-wide/16 v4, 0x8

    .line 31
    add-long/2addr v1, v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x9

    .line 37
    .line 38
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 39
    return-void
.end method

.method public writeNameRaw([B)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeRaw([B)V

    return-void
.end method

.method public writeNameRaw([BJ)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 2
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    const/16 v3, 0x2f

    const/16 v4, -0x10

    const/16 v5, 0x7f

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, p2, p3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_7

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNameAsSymbol:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    const/4 v6, 0x0

    if-nez v2, :cond_2

    .line 9
    array-length p2, p1

    invoke-static {p1, v6, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-eqz v2, :cond_4

    .line 12
    iget v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    invoke-virtual {v2, p2, p3, v7}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->putIfAbsent(JI)I

    move-result p2

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    const/4 v2, 0x1

    if-eq p2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/2addr p3, v2

    .line 13
    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    move v2, v6

    goto :goto_0

    .line 14
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    iget v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    .line 15
    invoke-virtual {v2, p2, p3, v7}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->put(JI)V

    move v2, v6

    move p2, v7

    :goto_0
    if-nez v2, :cond_6

    add-int/lit8 p3, v0, 0x1

    .line 16
    aput-byte v5, v1, v0

    .line 17
    array-length v0, p1

    invoke-static {p1, v6, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    array-length p1, p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-lt p2, v4, :cond_5

    if-gt p2, v3, :cond_5

    add-int/lit8 p1, p3, 0x1

    .line 19
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte p1, p2

    aput-byte p1, v1, p3

    return-void

    .line 20
    :cond_5
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void

    :cond_6
    neg-int v2, p2

    :cond_7
    add-int/lit8 p1, v0, 0x1

    .line 21
    aput-byte v5, v1, v0

    neg-int p2, v2

    if-lt p2, v4, :cond_8

    if-gt p2, v3, :cond_8

    int-to-byte p2, p2

    .line 22
    aput-byte p2, v1, p1

    add-int/lit8 v0, v0, 0x2

    .line 23
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    .line 24
    :cond_8
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 25
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeNameRaw([C)V
    .locals 1

    .line 27
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeNameRaw([CII)V
    .locals 0

    .line 28
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeNull()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

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
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

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
    const/16 v2, -0x51

    .line 23
    .line 24
    aput-byte v2, v0, v1

    .line 25
    return-void
.end method

.method public writeRaw(B)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeRaw(C)V
    .locals 1

    .line 10
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRaw([B)V
    .locals 4

    .line 5
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    sub-int v1, v0, v1

    if-lez v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeReference(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

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
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

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
    const/16 v2, -0x6d

    .line 23
    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->lastReference:Ljava/lang/String;

    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    const-string v0, "#-1"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 38
    .line 39
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->lastReference:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeString(B)V
    .locals 0

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(I)V
    .locals 0

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(J)V
    .locals 0

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString([C)V

    return-void
.end method

.method public writeString(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 94
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 96
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeString(S)V
    .locals 0

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Z)V
    .locals 0

    .line 101
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString([B)V
    .locals 2

    if-nez p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 111
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 112
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 113
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeString([C)V
    .locals 14

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 10
    array-length v1, p1

    .line 11
    array-length v2, p1

    const/16 v3, 0x2f

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v2, v0, 0x1

    add-int v7, v2, v1

    .line 12
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v8, v8

    sub-int v8, v7, v8

    if-lez v8, :cond_1

    .line 13
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 14
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v8, v1, 0x49

    int-to-byte v8, v8

    aput-byte v8, v7, v0

    move v0, v5

    .line 15
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_3

    .line 16
    aget-char v7, p1, v0

    if-le v7, v4, :cond_2

    move v0, v5

    goto :goto_1

    .line 17
    :cond_2
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v9, v2, 0x1

    int-to-byte v7, v7

    aput-byte v7, v8, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v9

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_1
    if-eqz v0, :cond_4

    .line 18
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    .line 19
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    move v13, v2

    move v2, v0

    move v0, v13

    goto :goto_2

    :cond_5
    move v2, v6

    .line 20
    :goto_2
    array-length v7, p1

    and-int/lit8 v7, v7, -0x4

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_8

    .line 21
    aget-char v9, p1, v8

    add-int/lit8 v10, v8, 0x1

    .line 22
    aget-char v10, p1, v10

    add-int/lit8 v11, v8, 0x2

    .line 23
    aget-char v11, p1, v11

    add-int/lit8 v12, v8, 0x3

    .line 24
    aget-char v12, p1, v12

    if-gt v9, v4, :cond_7

    if-gt v10, v4, :cond_7

    if-gt v11, v4, :cond_7

    if-le v12, v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x4

    goto :goto_3

    :cond_7
    :goto_4
    move v2, v5

    :cond_8
    if-eqz v2, :cond_a

    .line 25
    :goto_5
    array-length v7, p1

    if-ge v8, v7, :cond_a

    .line 26
    aget-char v7, p1, v8

    if-le v7, v4, :cond_9

    move v2, v5

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    move v4, v1

    goto :goto_7

    :cond_b
    mul-int/lit8 v4, v1, 0x3

    :goto_7
    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x6

    .line 27
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v7, v7

    sub-int v7, v4, v7

    if-lez v7, :cond_c

    .line 28
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    :cond_c
    const/16 v4, 0x7ff

    if-eqz v2, :cond_f

    if-gt v1, v3, :cond_d

    .line 29
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v1, v1, 0x49

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_8

    :cond_d
    if-gt v1, v4, :cond_e

    .line 30
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeSmall([BII)V

    add-int/lit8 v3, v0, 0x3

    goto :goto_8

    .line 31
    :cond_e
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeLarge([BII)I

    move-result v1

    add-int v3, v0, v1

    .line 32
    :goto_8
    array-length v0, p1

    if-ge v5, v0, :cond_13

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v1, v3, 0x1

    aget-char v2, p1, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v1

    goto :goto_8

    .line 34
    :cond_f
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    .line 35
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result v2

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    .line 36
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 37
    array-length v1, p1

    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int v8, v0, v2

    add-int/2addr v8, v6

    invoke-static {p1, v5, v1, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v6

    .line 38
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result v1

    if-eq v2, v1, :cond_10

    .line 39
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/2addr v1, v0

    add-int/2addr v1, v6

    invoke-static {v2, v8, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0x7a

    aput-byte v5, v1, v0

    const/16 v5, -0x10

    if-lt p1, v5, :cond_11

    if-gt p1, v3, :cond_11

    add-int/lit8 v0, v0, 0x2

    int-to-byte v3, p1

    .line 41
    aput-byte v3, v1, v2

    goto :goto_9

    :cond_11
    const/16 v3, -0x800

    if-lt p1, v3, :cond_12

    if-gt p1, v4, :cond_12

    shr-int/lit8 v3, p1, 0x8

    add-int/lit8 v3, v3, 0x38

    int-to-byte v3, v3

    .line 42
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, p1

    .line 43
    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_9

    .line 44
    :cond_12
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result v0

    add-int/2addr v0, v2

    :goto_9
    add-int v3, v0, p1

    .line 45
    :cond_13
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeString([CII)V
    .locals 10

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    :cond_0
    const/16 v0, 0x2f

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-ge p3, v0, :cond_5

    .line 47
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v5, p3

    .line 48
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v6, v6

    sub-int v6, v5, v6

    if-lez v6, :cond_1

    .line 49
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 50
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v7, p3, 0x49

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move v5, p2

    :goto_0
    if-ge v5, p3, :cond_3

    .line 51
    aget-char v6, p1, v5

    if-le v6, v2, :cond_2

    move v5, v1

    goto :goto_1

    .line 52
    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_1
    if-eqz v5, :cond_4

    goto/16 :goto_9

    .line 53
    :cond_4
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    goto :goto_2

    :cond_5
    move v5, v3

    .line 54
    :goto_2
    array-length v4, p1

    and-int/lit8 v4, v4, -0x4

    :goto_3
    if-ge p2, v4, :cond_8

    .line 55
    aget-char v6, p1, p2

    add-int/lit8 v7, p2, 0x1

    .line 56
    aget-char v7, p1, v7

    add-int/lit8 v8, p2, 0x2

    .line 57
    aget-char v8, p1, v8

    add-int/lit8 v9, p2, 0x3

    .line 58
    aget-char v9, p1, v9

    if-gt v6, v2, :cond_7

    if-gt v7, v2, :cond_7

    if-gt v8, v2, :cond_7

    if-le v9, v2, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x4

    goto :goto_3

    :cond_7
    :goto_4
    move v5, v1

    :cond_8
    if-eqz v5, :cond_a

    .line 59
    :goto_5
    array-length v4, p1

    if-ge p2, v4, :cond_a

    .line 60
    aget-char v4, p1, p2

    if-le v4, v2, :cond_9

    move v5, v1

    goto :goto_6

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    move p2, p3

    goto :goto_7

    :cond_b
    mul-int/lit8 p2, p3, 0x3

    .line 61
    :goto_7
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, 0x6

    .line 62
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    sub-int v2, p2, v2

    if-lez v2, :cond_c

    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    :cond_c
    const/16 p2, 0x7ff

    if-eqz v5, :cond_10

    if-gt p3, v0, :cond_d

    .line 64
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 p3, p3, 0x49

    int-to-byte p3, p3

    aput-byte p3, p2, v0

    goto :goto_8

    :cond_d
    const/16 v0, 0x79

    if-gt p3, p2, :cond_e

    .line 65
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    aput-byte v0, p2, v2

    add-int/lit8 v0, v2, 0x2

    .line 66
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    shr-int/lit8 v4, p3, 0x8

    add-int/lit8 v4, v4, 0x38

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v2, v2, 0x3

    .line 67
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte p3, p3

    aput-byte p3, p2, v0

    goto :goto_8

    .line 68
    :cond_e
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    aput-byte v0, p2, v2

    .line 69
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 70
    :goto_8
    array-length p2, p1

    if-ge v1, p2, :cond_f

    .line 71
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    aget-char v0, p1, v1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    return-void

    .line 72
    :cond_10
    array-length p3, p1

    mul-int/lit8 p3, p3, 0x3

    .line 73
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result v2

    .line 74
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v4, p3

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 75
    array-length p3, p1

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {p1, v1, p3, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result p1

    .line 76
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    sub-int/2addr p1, p3

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    .line 77
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result p3

    if-eq v2, p3, :cond_11

    .line 78
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/2addr v4, p3

    add-int/2addr v4, v3

    invoke-static {v1, v2, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    :cond_11
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x7a

    aput-byte v3, p3, v1

    const/16 v3, -0x10

    if-lt p1, v3, :cond_12

    if-gt p1, v0, :cond_12

    add-int/lit8 v1, v1, 0x2

    .line 80
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte p2, p1

    aput-byte p2, p3, v2

    goto :goto_a

    :cond_12
    const/16 v0, -0x800

    if-lt p1, v0, :cond_13

    if-gt p1, p2, :cond_13

    add-int/lit8 p2, v1, 0x2

    .line 81
    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    add-int/lit8 v1, v1, 0x3

    .line 82
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte v0, p1

    aput-byte v0, p3, p2

    goto :goto_a

    .line 83
    :cond_13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 84
    :goto_a
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeString([CIIZ)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    :cond_0
    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, v0, p2

    .line 2
    aget-char v1, p1, v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 3
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x2f

    if-gt p3, v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, p3, 0x49

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    .line 6
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :goto_1
    if-ge p4, p3, :cond_4

    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int v2, p2, p4

    aget-char v2, p1, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public writeString([D)V
    .locals 3

    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 131
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 132
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 133
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeString([F)V
    .locals 2

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 127
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 128
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 129
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeString([I)V
    .locals 2

    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 119
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 120
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 121
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeString([J)V
    .locals 3

    if-nez p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 123
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 124
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 125
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeString([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 86
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 87
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 88
    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 89
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public writeString([S)V
    .locals 2

    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 115
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 116
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 117
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeString([Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 107
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 108
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 109
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeStringLatin1([B)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeStringNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    array-length v1, p1

    .line 10
    array-length v2, p1

    .line 11
    add-int/2addr v2, v0

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x6

    .line 14
    .line 15
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 16
    array-length v3, v3

    .line 17
    .line 18
    sub-int v3, v2, v3

    .line 19
    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 24
    .line 25
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 26
    .line 27
    const/16 v3, 0x2f

    .line 28
    .line 29
    if-gt v1, v3, :cond_2

    .line 30
    .line 31
    add-int/lit8 v3, v0, 0x1

    .line 32
    .line 33
    add-int/lit8 v4, v1, 0x49

    .line 34
    int-to-byte v4, v4

    .line 35
    .line 36
    aput-byte v4, v2, v0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    const/16 v3, 0x7ff

    .line 40
    .line 41
    if-gt v1, v3, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeSmall([BII)V

    .line 45
    .line 46
    add-int/lit8 v3, v0, 0x3

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeLarge([BII)I

    .line 51
    move-result v3

    .line 52
    add-int/2addr v3, v0

    .line 53
    :goto_0
    const/4 v0, 0x0

    .line 54
    array-length v4, p1

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    add-int/2addr v3, v1

    .line 59
    .line 60
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 61
    return-void
.end method

.method public writeStringNull()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

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
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

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
    const/16 v2, -0x51

    .line 23
    .line 24
    aput-byte v2, v0, v1

    .line 25
    return-void
.end method

.method public writeStringUTF16([B)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    array-length v1, p1

    .line 4
    .line 5
    add-int v2, v0, v1

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0x6

    .line 8
    .line 9
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 10
    array-length v3, v3

    .line 11
    .line 12
    if-lt v2, v3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 18
    .line 19
    add-int/lit8 v3, v0, 0x1

    .line 20
    .line 21
    sget-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    const/16 v4, 0x7d

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    const/16 v4, 0x7c

    .line 29
    .line 30
    :goto_0
    aput-byte v4, v2, v0

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    .line 34
    move-result v0

    .line 35
    add-int/2addr v3, v0

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    add-int/2addr v3, v1

    .line 41
    .line 42
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 43
    return-void
.end method

.method public writeSymbol(I)V
    .locals 5

    .line 7
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, v0, 0x3

    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v3, 0x7f

    aput-byte v3, v0, v1

    const/16 v3, -0x10

    if-lt p1, v3, :cond_1

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 11
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    :cond_1
    const/16 v3, -0x800

    if-lt p1, v3, :cond_2

    const/16 v3, 0x7ff

    if-gt p1, v3, :cond_2

    add-int/lit8 v3, v1, 0x2

    .line 12
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    shr-int/lit8 v4, p1, 0x8

    add-int/lit8 v4, v4, 0x38

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, 0x3

    .line 13
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeSymbol(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinal(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 p1, 0x7f

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeRaw(B)V

    neg-int p1, v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeTimeHHMMSS8(III)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string p2, "unsupported operation"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public writeTypeName(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 7
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->get(J)I

    move-result v2

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->get(J)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    if-ne v2, v3, :cond_5

    .line 11
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-nez v2, :cond_4

    .line 12
    new-instance v2, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->put(JI)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void

    .line 16
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v0, v0

    if-ne p1, v0, :cond_6

    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 18
    :cond_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeTypeName([BJ)Z
    .locals 7

    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 21
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeTypeNameSymbol(I)Z

    move-result p1

    return p1

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->rootTypeNameHash:J

    cmp-long v0, v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move p2, v1

    :goto_0
    move p3, v2

    goto :goto_2

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-eqz v0, :cond_3

    .line 24
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    invoke-virtual {v0, p2, p3, v3}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->putIfAbsent(JI)I

    move-result p2

    .line 25
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    if-eq p2, p3, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p3, v2

    .line 26
    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    :goto_1
    move p3, v1

    goto :goto_2

    .line 27
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    if-nez v0, :cond_4

    .line 28
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->rootTypeNameHash:J

    :cond_4
    if-nez v0, :cond_5

    .line 29
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNameAsSymbol:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 30
    :cond_5
    new-instance v3, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    invoke-direct {v3, p2, p3, v0}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;-><init>(JI)V

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    :cond_6
    move p2, v0

    goto :goto_1

    :goto_2
    if-eqz p3, :cond_7

    neg-int p1, p2

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeTypeNameSymbol(I)Z

    return v1

    .line 32
    :cond_7
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, p3, 0x2

    .line 33
    array-length v3, p1

    add-int/2addr v0, v3

    .line 34
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    if-le v0, v3, :cond_8

    .line 35
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 36
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v3, p3, 0x1

    const/16 v4, -0x6e

    .line 37
    aput-byte v4, v0, p3

    .line 38
    array-length p3, p1

    invoke-static {p1, v1, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length p1, p1

    add-int/2addr v3, p1

    const/16 p1, -0x10

    if-lt p2, p1, :cond_9

    const/16 p1, 0x2f

    if-gt p2, p1, :cond_9

    int-to-byte p1, p2

    .line 40
    aput-byte p1, v0, v3

    add-int/2addr v3, v2

    .line 41
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    goto :goto_3

    .line 42
    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 43
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :goto_3
    return v1
.end method

.method public writeUUID(Ljava/util/UUID;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

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
    add-int/lit8 v6, v5, 0x12

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 24
    .line 25
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 26
    .line 27
    const/16 v8, -0x6f

    .line 28
    .line 29
    aput-byte v8, v7, v5

    .line 30
    .line 31
    add-int/lit8 v8, v5, 0x1

    .line 32
    .line 33
    const/16 v9, 0x10

    .line 34
    .line 35
    aput-byte v9, v7, v8

    .line 36
    .line 37
    add-int/lit8 v8, v5, 0x2

    .line 38
    .line 39
    const/16 v10, 0x38

    .line 40
    .line 41
    ushr-long v11, v1, v10

    .line 42
    long-to-int v11, v11

    .line 43
    int-to-byte v11, v11

    .line 44
    .line 45
    aput-byte v11, v7, v8

    .line 46
    .line 47
    add-int/lit8 v8, v5, 0x3

    .line 48
    .line 49
    const/16 v11, 0x30

    .line 50
    .line 51
    ushr-long v12, v1, v11

    .line 52
    long-to-int v12, v12

    .line 53
    int-to-byte v12, v12

    .line 54
    .line 55
    aput-byte v12, v7, v8

    .line 56
    .line 57
    add-int/lit8 v8, v5, 0x4

    .line 58
    .line 59
    const/16 v12, 0x28

    .line 60
    .line 61
    ushr-long v13, v1, v12

    .line 62
    long-to-int v13, v13

    .line 63
    int-to-byte v13, v13

    .line 64
    .line 65
    aput-byte v13, v7, v8

    .line 66
    .line 67
    add-int/lit8 v8, v5, 0x5

    .line 68
    .line 69
    const/16 v13, 0x20

    .line 70
    .line 71
    ushr-long v14, v1, v13

    .line 72
    long-to-int v14, v14

    .line 73
    int-to-byte v14, v14

    .line 74
    .line 75
    aput-byte v14, v7, v8

    .line 76
    .line 77
    add-int/lit8 v8, v5, 0x6

    .line 78
    .line 79
    const/16 v14, 0x18

    .line 80
    .line 81
    move/from16 p1, v9

    .line 82
    move v15, v10

    .line 83
    .line 84
    ushr-long v9, v1, v14

    .line 85
    long-to-int v9, v9

    .line 86
    int-to-byte v9, v9

    .line 87
    .line 88
    aput-byte v9, v7, v8

    .line 89
    .line 90
    add-int/lit8 v8, v5, 0x7

    .line 91
    .line 92
    ushr-long v9, v1, p1

    .line 93
    long-to-int v9, v9

    .line 94
    int-to-byte v9, v9

    .line 95
    .line 96
    aput-byte v9, v7, v8

    .line 97
    .line 98
    add-int/lit8 v8, v5, 0x8

    .line 99
    .line 100
    const/16 v16, 0x8

    .line 101
    .line 102
    ushr-long v9, v1, v16

    .line 103
    long-to-int v9, v9

    .line 104
    int-to-byte v9, v9

    .line 105
    .line 106
    aput-byte v9, v7, v8

    .line 107
    .line 108
    add-int/lit8 v8, v5, 0x9

    .line 109
    long-to-int v1, v1

    .line 110
    int-to-byte v1, v1

    .line 111
    .line 112
    aput-byte v1, v7, v8

    .line 113
    .line 114
    add-int/lit8 v1, v5, 0xa

    .line 115
    .line 116
    ushr-long v8, v3, v15

    .line 117
    long-to-int v2, v8

    .line 118
    int-to-byte v2, v2

    .line 119
    .line 120
    aput-byte v2, v7, v1

    .line 121
    .line 122
    add-int/lit8 v1, v5, 0xb

    .line 123
    .line 124
    ushr-long v8, v3, v11

    .line 125
    long-to-int v2, v8

    .line 126
    int-to-byte v2, v2

    .line 127
    .line 128
    aput-byte v2, v7, v1

    .line 129
    .line 130
    add-int/lit8 v1, v5, 0xc

    .line 131
    .line 132
    ushr-long v8, v3, v12

    .line 133
    long-to-int v2, v8

    .line 134
    int-to-byte v2, v2

    .line 135
    .line 136
    aput-byte v2, v7, v1

    .line 137
    .line 138
    add-int/lit8 v1, v5, 0xd

    .line 139
    .line 140
    ushr-long v8, v3, v13

    .line 141
    long-to-int v2, v8

    .line 142
    int-to-byte v2, v2

    .line 143
    .line 144
    aput-byte v2, v7, v1

    .line 145
    .line 146
    add-int/lit8 v1, v5, 0xe

    .line 147
    .line 148
    ushr-long v8, v3, v14

    .line 149
    long-to-int v2, v8

    .line 150
    int-to-byte v2, v2

    .line 151
    .line 152
    aput-byte v2, v7, v1

    .line 153
    .line 154
    add-int/lit8 v1, v5, 0xf

    .line 155
    .line 156
    ushr-long v8, v3, p1

    .line 157
    long-to-int v2, v8

    .line 158
    int-to-byte v2, v2

    .line 159
    .line 160
    aput-byte v2, v7, v1

    .line 161
    .line 162
    add-int/lit8 v1, v5, 0x10

    .line 163
    .line 164
    ushr-long v8, v3, v16

    .line 165
    long-to-int v2, v8

    .line 166
    int-to-byte v2, v2

    .line 167
    .line 168
    aput-byte v2, v7, v1

    .line 169
    .line 170
    add-int/lit8 v5, v5, 0x11

    .line 171
    long-to-int v1, v3

    .line 172
    int-to-byte v1, v1

    .line 173
    .line 174
    aput-byte v1, v7, v5

    .line 175
    .line 176
    iput v6, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 177
    return-void
.end method
