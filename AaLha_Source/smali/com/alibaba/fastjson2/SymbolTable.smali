.class public final Lcom/alibaba/fastjson2/SymbolTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hashCode64:J

.field private final hashCodes:[J

.field private final hashCodesOrigin:[J

.field private final mapping:[S

.field private final names:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson2/SymbolTable;->classNames([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/SymbolTable;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_2
    array-length p1, v1

    new-array v0, p1, [J

    move v1, v2

    .line 12
    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 13
    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v3

    .line 14
    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_3
    iput-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodesOrigin:[J

    .line 16
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 18
    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    move v1, v2

    :goto_3
    if-ge v1, p1, :cond_4

    .line 19
    aget-wide v3, v0, v1

    .line 20
    iget-object v5, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 21
    iget-object v4, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    int-to-short v5, v1

    aput-short v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const-wide v3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_4
    if-ge v2, p1, :cond_5

    .line 22
    aget-wide v5, v0, v2

    xor-long/2addr v3, v5

    const-wide v5, 0x100000001b3L

    mul-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 23
    :cond_5
    iput-wide v3, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCode64:J

    return-void
.end method

.method private static varargs classNames([Ljava/lang/Class;)[Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget-object v2, p0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getHashCode(I)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodesOrigin:[J

    .line 3
    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    aget-wide v1, v0, p1

    .line 7
    return-wide v1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    .line 3
    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    return-object p1
.end method

.method public getNameByHashCode(J)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    .line 13
    .line 14
    aget-short p1, p2, p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object p1, p2, p1

    .line 19
    return-object p1
.end method

.method public getOrdinal(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    const/4 p1, -0x1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    .line 17
    .line 18
    aget-short p1, v0, p1

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    return p1
.end method

.method public getOrdinalByHashCode(J)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    .line 13
    .line 14
    aget-short p1, p2, p1

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    return p1
.end method

.method public hashCode64()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCode64:J

    .line 3
    return-wide v0
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
