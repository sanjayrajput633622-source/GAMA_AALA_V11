.class final Lcom/alibaba/fastjson2/JSONPathSegmentIndex;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "SourceFile"


# static fields
.field static final ONE:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

.field static final TWO:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

.field static final ZERO:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;


# instance fields
.field final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->ZERO:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 9
    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;-><init>(I)V

    .line 15
    .line 16
    sput-object v0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->ONE:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 17
    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;-><init>(I)V

    .line 23
    .line 24
    sput-object v0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->TWO:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 11
    .line 12
    const-string v0, "not support negative index"

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method

.method private eval(Ljava/util/Map;)Ljava/lang/Object;
    .locals 7

    .line 36
    iget v0, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    iget v0, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_6

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    .line 40
    instance-of v4, p1, Ljava/util/LinkedHashMap;

    if-nez v4, :cond_3

    instance-of v4, p1, Ljava/util/SortedMap;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-gt v3, v1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 45
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 46
    iget v5, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-gt v3, p1, :cond_6

    if-ge v3, v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 50
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 51
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 52
    iget v5, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object p1

    .line 53
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-ne v3, v4, :cond_5

    move-object v0, p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public static of(I)Lcom/alibaba/fastjson2/JSONPathSegmentIndex;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->ZERO:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->ONE:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    .line 14
    if-ne p0, v0, :cond_2

    .line 15
    .line 16
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->TWO:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;-><init>(I)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 5
    :cond_1
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 6
    check-cast v0, Ljava/util/List;

    .line 7
    iget v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 8
    iget v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 9
    :cond_2
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 10
    :cond_3
    instance-of v2, v0, Ljava/util/SortedSet;

    if-nez v2, :cond_b

    instance-of v2, v0, Ljava/util/LinkedHashSet;

    if-nez v2, :cond_b

    iget v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-nez v2, :cond_4

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    .line 11
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 13
    check-cast v0, [Ljava/lang/Object;

    .line 14
    iget v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 15
    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 16
    :cond_5
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 17
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 19
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 20
    iget v3, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-ge v3, v2, :cond_7

    .line 21
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 22
    :cond_7
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 23
    :cond_8
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 24
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->eval(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 25
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 26
    :cond_9
    iget v3, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-nez v3, :cond_a

    .line 27
    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 28
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 29
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonpath not support operate : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->path:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", objectClass"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_b
    :goto_1
    check-cast v0, Ljava/util/Collection;

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 33
    iget v4, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-ne v2, v4, :cond_c

    .line 34
    iput-object v3, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    goto :goto_3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 35
    :cond_d
    :goto_3
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v1, v0, 0x2

    .line 9
    .line 10
    new-array v1, v1, [C

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    const/16 v3, 0x5b

    .line 14
    .line 15
    aput-char v3, v1, v2

    .line 16
    .line 17
    iget v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 22
    add-int/2addr v0, v3

    .line 23
    .line 24
    const/16 v2, 0x5d

    .line 25
    .line 26
    aput-char v2, v1, v0

    .line 27
    .line 28
    new-instance v0, Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 32
    return-object v0
.end method
