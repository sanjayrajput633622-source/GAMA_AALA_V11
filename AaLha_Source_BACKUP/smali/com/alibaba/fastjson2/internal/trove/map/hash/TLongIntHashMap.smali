.class public final Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final largestPrime:I

.field static final primeCapacities:[I


# instance fields
.field protected consumeFreeSlot:Z

.field protected free:I

.field protected maxSize:I

.field protected set:[J

.field protected size:I

.field protected values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0xf4

    .line 3
    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    sput-object v0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->primeCapacities:[I

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 13
    array-length v1, v0

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    aget v0, v0, v1

    .line 18
    .line 19
    sput v0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->largestPrime:I

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :array_0
    .array-data 4
        0x5
        0xb
        0x17
        0x2f
        0x61
        0xc5
        0x18d
        0x31d
        0x63d
        0xc83
        0x1915
        0x3235
        0x6475
        0xc8ed
        0x191dd
        0x323bf
        0x64787
        0xc8f4d
        0x191e9d
        0x323d49
        0x647a97
        0xc8f539
        0x191ea81
        0x323d521
        0x647aa43
        0xc8f5489
        0x191ea927
        0x323d525b
        0x647aa4bf
        0x1b1
        0x36d
        0x6df
        0xdc7
        0x1b91
        0x373f
        0x6e81
        0xdd0f
        0x1ba25
        0x3744b
        0x6e897
        0xdd14f
        0x1ba2a3
        0x37454b
        0x6e8a99
        0xdd1563
        0x1ba2ac7
        0x374559b
        0x6e8ab8b
        0xdd1572b
        0x1ba2ae79
        0x37455d1b
        0x6e8aba45
        0x3b9
        0x773
        0xeed
        0x1ddb
        0x3bb7
        0x7771
        0xeef1
        0x1ddeb
        0x3bbdf
        0x777bf
        0xeef85
        0x1ddf13
        0x3bbe4d
        0x777cad
        0xeef96f
        0x1ddf2f3
        0x3bbe5ed
        0x777cbdb
        0xeef97cb
        0x1ddf2f9b
        0x3bbe5f3b
        0x777cbe79
        0x40f
        0x821
        0x1051
        0x20ab
        0x4159
        0x82b5
        0x1056b
        0x20add
        0x415c1
        0x82bb9
        0x105785
        0x20af19
        0x415e3b
        0x82bc79
        0x10578f7
        0x20af203
        0x415e415
        0x82bc82d
        0x1057909f
        0x20af2147
        0x415e428f
        0x1f
        0x43
        0x89
        0x115
        0x22d
        0x45d
        0x8bd
        0x1181
        0x2303
        0x4609
        0x8c17
        0x1183d
        0x2307b
        0x460fd
        0x8c201
        0x118411
        0x230833
        0x461069
        0x8c20e1
        0x11841cb
        0x2308397
        0x461075b    # 2.6452E-36f
        0x8c20ecb
        0x11841da5
        0x23083b61
        0x461076c7
        0x257
        0x4b1
        0x96b
        0x12df
        0x25cd
        0x4bad
        0x975b
        0x12ec5
        0x25d93
        0x4bb41
        0x9768b
        0x12ed29
        0x25da59
        0x4bb4b3
        0x976975
        0x12ed2ef
        0x25da5ef
        0x4bb4bed
        0x97697dd
        0x12ed2fbd
        0x25da5f7b
        0x4bb4bf6b    # 2.3690966E7f
        0x137
        0x277
        0x4fd
        0x9fd
        0x13ff
        0x2803
        0x501b
        0xa039
        0x14075
        0x280f9
        0x50215
        0xa042d
        0x140863
        0x2810e1
        0x5021c9
        0xa04395
        0x1408739
        0x2810e79
        0x5021d05
        0xa043a0b
        0x14087417    # 6.88914E-27f
        0x2810e841
        0x5021d089
        0x3
        0x7
        0x11
        0x25
        0x4f
        0xa3
        0x14b
        0x2a1
        0x551
        0xaa9
        0x155f
        0x2ac5
        0x5597
        0xab4d
        0x156a7
        0x2ad57
        0x55ab3
        0xab57b
        0x156af9
        0x2ad607
        0x55ac41
        0xab5893
        0x156b12f
        0x2ad6285
        0x55ac519
        0xab58a35
        0x156b14a3
        0x2ad62961
        0x55ac52c5
        0x2b
        0x59
        0xb3
        0x167
        0x2cf
        0x59f
        0xb3f
        0x1693
        0x2d3b
        0x5a77
        0xb4f7
        0x169f1
        0x2d3eb
        0x5a7e5
        0xb4fd9
        0x169fd3
        0x2d3fad
        0x5a7f87
        0xb4ff1f
        0x169fe4d
        0x2d3fca1
        0x5a7f95b
        0xb4ff2b9
        0x169fe58d
        0x2d3fcb1b
        0x5a7f9637
        0x17b
        0x2f9
        0x5f3
        0xbe9
        0x17d5
        0x2fab
        0x5f57
        0xbeb1
        0x17d71
        0x2faef
        0x5f5f7
        0xbebf5
        0x17d7f3
        0x2fb009
        0x5f6029
        0xbec0b1
        0x17d8195
        0x2fb0337
        0x5f60687
        0xbec0d15
        0x17d81a33
        0x2fb03481
        0x5f606903
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    const/16 v0, 0x25

    .line 3
    iput v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 4
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 7
    iput v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    const/16 v0, 0x25

    .line 8
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 9
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    xor-long/2addr v3, p1

    long-to-int v3, v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    .line 11
    array-length v4, v1

    rem-int/2addr v3, v4

    .line 12
    aput-wide p1, v1, v3

    .line 13
    aput p3, v0, v3

    const/16 p1, 0x24

    .line 14
    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 15
    iput v2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    return-void
.end method

.method public static nextPrime(I)I
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->largestPrime:I

    .line 3
    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    return v0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->primeCapacities:[I

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 11
    move-result p0

    .line 12
    .line 13
    if-gez p0, :cond_1

    .line 14
    neg-int p0, p0

    .line 15
    .line 16
    add-int/lit8 p0, p0, -0x1

    .line 17
    .line 18
    :cond_1
    aget p0, v0, p0

    .line 19
    return p0
.end method

.method private rehash(I)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    .line 5
    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    shl-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->nextPrime(I)I

    .line 12
    move-result p1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 15
    array-length v1, v0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 18
    .line 19
    new-array v3, p1, [J

    .line 20
    .line 21
    iput-object v3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 22
    .line 23
    new-array p1, p1, [I

    .line 24
    .line 25
    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 26
    .line 27
    :goto_0
    add-int/lit8 p1, v1, -0x1

    .line 28
    .line 29
    if-lez v1, :cond_2

    .line 30
    .line 31
    aget-wide v3, v0, p1

    .line 32
    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->insertKey(J)I

    .line 43
    move-result v3

    .line 44
    .line 45
    aget v4, v2, p1

    .line 46
    .line 47
    aput v4, v1, v3

    .line 48
    :cond_1
    move v1, p1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method


# virtual methods
.method public get(J)I
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    ushr-long v2, p1, v2

    .line 8
    xor-long/2addr v2, p1

    .line 9
    long-to-int v2, v2

    .line 10
    .line 11
    .line 12
    const v3, 0x7fffffff

    .line 13
    and-int/2addr v2, v3

    .line 14
    .line 15
    rem-int v1, v2, v1

    .line 16
    .line 17
    aget-wide v3, v0, v1

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v7, v3, v5

    .line 22
    const/4 v8, -0x1

    .line 23
    .line 24
    if-nez v7, :cond_0

    .line 25
    return v8

    .line 26
    .line 27
    :cond_0
    cmp-long v3, v3, p1

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 32
    .line 33
    aget p1, p1, v1

    .line 34
    return p1

    .line 35
    :cond_1
    array-length v0, v0

    .line 36
    .line 37
    add-int/lit8 v3, v0, -0x2

    .line 38
    rem-int/2addr v2, v3

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    move v3, v1

    .line 42
    :cond_2
    sub-int/2addr v3, v2

    .line 43
    .line 44
    if-gez v3, :cond_3

    .line 45
    add-int/2addr v3, v0

    .line 46
    .line 47
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 48
    .line 49
    aget-wide v9, v4, v3

    .line 50
    .line 51
    cmp-long v4, v9, v5

    .line 52
    .line 53
    if-nez v4, :cond_4

    .line 54
    return v8

    .line 55
    .line 56
    :cond_4
    cmp-long v4, p1, v9

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 61
    .line 62
    aget p1, p1, v3

    .line 63
    return p1

    .line 64
    .line 65
    :cond_5
    if-ne v3, v1, :cond_2

    .line 66
    return v8
.end method

.method public insertKey(J)I
    .locals 11

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    ushr-long v0, p1, v0

    .line 5
    xor-long/2addr v0, p1

    .line 6
    long-to-int v0, v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7fffffff

    .line 10
    and-int/2addr v0, v1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 13
    array-length v2, v1

    .line 14
    .line 15
    rem-int v2, v0, v2

    .line 16
    .line 17
    aget-wide v3, v1, v2

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v7, v3, v5

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x1

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    move v7, v9

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v7, v8

    .line 29
    .line 30
    :goto_0
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    iput-boolean v9, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 35
    .line 36
    aput-wide p1, v1, v2

    .line 37
    return v2

    .line 38
    .line 39
    :cond_1
    cmp-long v3, v3, p1

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    neg-int p1, v2

    .line 43
    :goto_1
    sub-int/2addr p1, v9

    .line 44
    return p1

    .line 45
    :cond_2
    array-length v1, v1

    .line 46
    .line 47
    add-int/lit8 v3, v1, -0x2

    .line 48
    rem-int/2addr v0, v3

    .line 49
    add-int/2addr v0, v9

    .line 50
    move v3, v2

    .line 51
    :goto_2
    sub-int/2addr v3, v0

    .line 52
    .line 53
    if-gez v3, :cond_3

    .line 54
    add-int/2addr v3, v1

    .line 55
    .line 56
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 57
    .line 58
    aget-wide v7, v4, v3

    .line 59
    .line 60
    cmp-long v10, v7, v5

    .line 61
    .line 62
    if-eqz v10, :cond_6

    .line 63
    .line 64
    cmp-long v4, v7, p1

    .line 65
    .line 66
    if-nez v4, :cond_4

    .line 67
    neg-int p1, v3

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_4
    if-eq v3, v2, :cond_5

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string p2, "No free or removed slots available. Key set full?!!"

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1

    .line 80
    .line 81
    :cond_6
    iput-boolean v9, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 82
    .line 83
    aput-wide p1, v4, v3

    .line 84
    return v3
.end method

.method public put(JI)V
    .locals 12

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    ushr-long v0, p1, v0

    .line 5
    xor-long/2addr v0, p1

    .line 6
    long-to-int v0, v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7fffffff

    .line 10
    and-int/2addr v0, v1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 13
    array-length v2, v1

    .line 14
    .line 15
    rem-int v2, v0, v2

    .line 16
    .line 17
    aget-wide v3, v1, v2

    .line 18
    const/4 v5, 0x0

    .line 19
    .line 20
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 21
    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    cmp-long v8, v3, v6

    .line 25
    const/4 v9, 0x1

    .line 26
    .line 27
    if-nez v8, :cond_0

    .line 28
    .line 29
    iput-boolean v9, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 30
    .line 31
    aput-wide p1, v1, v2

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_0
    cmp-long v3, v3, p1

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    neg-int p1, v2

    .line 38
    .line 39
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    array-length v1, v1

    .line 42
    .line 43
    add-int/lit8 v3, v1, -0x2

    .line 44
    rem-int/2addr v0, v3

    .line 45
    add-int/2addr v0, v9

    .line 46
    move v3, v2

    .line 47
    :cond_2
    sub-int/2addr v3, v0

    .line 48
    .line 49
    if-gez v3, :cond_3

    .line 50
    add-int/2addr v3, v1

    .line 51
    .line 52
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 53
    .line 54
    aget-wide v10, v4, v3

    .line 55
    .line 56
    cmp-long v8, v10, v6

    .line 57
    .line 58
    if-nez v8, :cond_4

    .line 59
    .line 60
    iput-boolean v9, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 61
    .line 62
    aput-wide p1, v4, v3

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_4
    cmp-long v4, v10, p1

    .line 66
    .line 67
    if-nez v4, :cond_5

    .line 68
    neg-int p1, v3

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_5
    if-ne v3, v2, :cond_2

    .line 72
    :goto_1
    move v2, v3

    .line 73
    .line 74
    :goto_2
    if-gez v2, :cond_6

    .line 75
    neg-int p1, v2

    .line 76
    .line 77
    add-int/lit8 v2, p1, -0x1

    .line 78
    goto :goto_3

    .line 79
    :cond_6
    move v5, v9

    .line 80
    .line 81
    :goto_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 82
    .line 83
    aput p3, p1, v2

    .line 84
    .line 85
    if-eqz v5, :cond_c

    .line 86
    .line 87
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 92
    sub-int/2addr p1, v9

    .line 93
    .line 94
    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 95
    .line 96
    :cond_7
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    .line 97
    add-int/2addr p1, v9

    .line 98
    .line 99
    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    .line 100
    .line 101
    iget p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    .line 102
    .line 103
    if-gt p1, p2, :cond_8

    .line 104
    .line 105
    iget p3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 106
    .line 107
    if-nez p3, :cond_c

    .line 108
    .line 109
    :cond_8
    iget-object p3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 110
    array-length p3, p3

    .line 111
    .line 112
    if-le p1, p2, :cond_9

    .line 113
    .line 114
    shl-int/lit8 p1, p3, 0x1

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->nextPrime(I)I

    .line 118
    move-result p3

    .line 119
    .line 120
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 121
    array-length p2, p1

    .line 122
    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 124
    .line 125
    new-array v1, p3, [J

    .line 126
    .line 127
    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 128
    .line 129
    new-array p3, p3, [I

    .line 130
    .line 131
    iput-object p3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 132
    .line 133
    :goto_4
    add-int/lit8 p3, p2, -0x1

    .line 134
    .line 135
    if-lez p2, :cond_b

    .line 136
    .line 137
    aget-wide v1, p1, p3

    .line 138
    .line 139
    cmp-long p2, v1, v6

    .line 140
    .line 141
    if-eqz p2, :cond_a

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->insertKey(J)I

    .line 145
    move-result p2

    .line 146
    .line 147
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 148
    .line 149
    aget v2, v0, p3

    .line 150
    .line 151
    aput v2, v1, p2

    .line 152
    :cond_a
    move p2, p3

    .line 153
    goto :goto_4

    .line 154
    .line 155
    :cond_b
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 156
    array-length p1, p1

    .line 157
    .line 158
    add-int/lit8 p2, p1, -0x1

    .line 159
    int-to-float p3, p1

    .line 160
    .line 161
    const/high16 v0, 0x3f000000    # 0.5f

    .line 162
    mul-float/2addr p3, v0

    .line 163
    float-to-int p3, p3

    .line 164
    .line 165
    .line 166
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 167
    move-result p2

    .line 168
    .line 169
    iput p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    .line 170
    .line 171
    iget p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    .line 172
    sub-int/2addr p1, p2

    .line 173
    .line 174
    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 175
    :cond_c
    return-void
.end method

.method public putIfAbsent(JI)I
    .locals 11

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    ushr-long v0, p1, v0

    .line 5
    xor-long/2addr v0, p1

    .line 6
    long-to-int v0, v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7fffffff

    .line 10
    and-int/2addr v0, v1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 13
    array-length v2, v1

    .line 14
    .line 15
    rem-int v2, v0, v2

    .line 16
    .line 17
    aget-wide v3, v1, v2

    .line 18
    const/4 v5, 0x0

    .line 19
    .line 20
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    cmp-long v7, v3, v5

    .line 25
    const/4 v8, 0x1

    .line 26
    .line 27
    if-nez v7, :cond_0

    .line 28
    .line 29
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 30
    .line 31
    aput-wide p1, v1, v2

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_0
    cmp-long v1, v3, p1

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    neg-int p1, v2

    .line 38
    .line 39
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    move v1, v2

    .line 42
    .line 43
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 44
    array-length v4, v3

    .line 45
    .line 46
    add-int/lit8 v4, v4, -0x2

    .line 47
    .line 48
    rem-int v4, v0, v4

    .line 49
    add-int/2addr v4, v8

    .line 50
    sub-int/2addr v1, v4

    .line 51
    .line 52
    if-gez v1, :cond_3

    .line 53
    array-length v4, v3

    .line 54
    add-int/2addr v1, v4

    .line 55
    .line 56
    :cond_3
    aget-wide v9, v3, v1

    .line 57
    .line 58
    cmp-long v4, v9, v5

    .line 59
    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 63
    .line 64
    aput-wide p1, v3, v1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_4
    cmp-long v3, v9, p1

    .line 68
    .line 69
    if-nez v3, :cond_5

    .line 70
    neg-int p1, v1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_5
    if-ne v1, v2, :cond_2

    .line 74
    :goto_1
    move v2, v1

    .line 75
    .line 76
    :goto_2
    if-gez v2, :cond_6

    .line 77
    .line 78
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 79
    neg-int p2, v2

    .line 80
    sub-int/2addr p2, v8

    .line 81
    .line 82
    aget p1, p1, p2

    .line 83
    return p1

    .line 84
    .line 85
    :cond_6
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 86
    .line 87
    aput p3, p1, v2

    .line 88
    .line 89
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 90
    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 94
    sub-int/2addr p1, v8

    .line 95
    .line 96
    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 97
    .line 98
    :cond_7
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    .line 99
    add-int/2addr p1, v8

    .line 100
    .line 101
    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    .line 102
    .line 103
    iget p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    .line 104
    .line 105
    if-gt p1, p2, :cond_9

    .line 106
    .line 107
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 108
    .line 109
    if-nez p1, :cond_8

    .line 110
    goto :goto_3

    .line 111
    :cond_8
    return p3

    .line 112
    .line 113
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 114
    array-length p1, p1

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->rehash(I)V

    .line 118
    .line 119
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 120
    array-length p1, p1

    .line 121
    .line 122
    add-int/lit8 p2, p1, -0x1

    .line 123
    int-to-float v0, p1

    .line 124
    .line 125
    const/high16 v1, 0x3f000000    # 0.5f

    .line 126
    mul-float/2addr v0, v1

    .line 127
    float-to-int v0, v0

    .line 128
    .line 129
    .line 130
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 131
    move-result p2

    .line 132
    .line 133
    iput p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    .line 134
    .line 135
    iget p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    .line 136
    sub-int/2addr p1, p2

    .line 137
    .line 138
    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 139
    return p3
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "{"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 10
    .line 11
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 12
    array-length v3, v1

    .line 13
    const/4 v4, 0x1

    .line 14
    .line 15
    :goto_0
    add-int/lit8 v5, v3, -0x1

    .line 16
    .line 17
    if-lez v3, :cond_2

    .line 18
    .line 19
    aget-wide v6, v1, v5

    .line 20
    .line 21
    const-wide/16 v8, 0x0

    .line 22
    .line 23
    cmp-long v3, v6, v8

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    aget v3, v2, v5

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    const/4 v4, 0x0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    const-string v8, ", "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const/16 v6, 0x3d

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    :cond_1
    move v3, v5

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    const/16 v1, 0x7d

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method
