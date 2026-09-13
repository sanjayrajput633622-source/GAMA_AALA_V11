.class public final synthetic Lcom/alibaba/fastjson2/reader/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public static a(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    move-object v2, p0

    .line 44
    move-object v3, p1

    .line 45
    move-wide v6, p3

    .line 46
    .line 47
    .line 48
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v3, p1

    .line 51
    move-wide v6, p3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3, v1, v6, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v3, p1

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, v3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_2
    return-object v3
.end method

.method public static b(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static d(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static e(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static f(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public static g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static h(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public static varargs i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONReader$Feature;->of([Lcom/alibaba/fastjson2/JSONReader$Feature;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getTypeKey()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    instance-of v2, v1, Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 22
    move-result-wide v5

    .line 23
    .line 24
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 25
    .line 26
    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 27
    and-long/2addr v7, p2

    .line 28
    .line 29
    cmp-long v2, v7, v3

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    instance-of v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    invoke-interface {p0, v0, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    :goto_1
    if-nez v2, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-interface {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFeatures()J

    .line 52
    move-result-wide v5

    .line 53
    or-long/2addr v5, p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    :cond_2
    if-eq v2, p0, :cond_3

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-interface {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-interface {p0, v0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->accept(Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public static varargs k(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 5

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p2

    .line 5
    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    aget-object v3, p2, v2

    .line 9
    .line 10
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 11
    or-long/2addr v0, v3

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static l(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public static m(Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/function/Function;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static n(Lcom/alibaba/fastjson2/reader/ObjectReader;)J
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    return-wide v0
.end method

.method public static o(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static p(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    cmp-long p1, v3, v0

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    return-object v2
.end method

.method public static q(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static r(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Class;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static s(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    const-string p0, "@type"

    .line 3
    return-object p0
.end method

.method public static t(Lcom/alibaba/fastjson2/reader/ObjectReader;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x6570797440L

    .line 6
    return-wide v0
.end method

.method public static u(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public static v(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public static w(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v0, 0x0

    .line 23
    move v7, v0

    .line 24
    move-object v8, v6

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-nez v8, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 35
    .line 36
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 37
    or-long/2addr p1, p4

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    return-object v8

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 47
    move-result-wide v0

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getTypeKeyHash()J

    .line 51
    move-result-wide v2

    .line 52
    .line 53
    cmp-long v2, v0, v2

    .line 54
    .line 55
    if-nez v2, :cond_6

    .line 56
    .line 57
    if-nez v7, :cond_6

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    iget-object v2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v2, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0, v6}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    move-object v0, v1

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    const-string p3, "No suitable ObjectReader found for"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p0

    .line 109
    .line 110
    :cond_4
    :goto_1
    if-ne v0, p0, :cond_5

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move-object v1, p1

    .line 113
    move-object v2, p2

    .line 114
    move-object v3, p3

    .line 115
    move-wide v4, p4

    .line 116
    .line 117
    .line 118
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    .line 122
    :cond_6
    const-wide/16 v2, 0x0

    .line 123
    .line 124
    cmp-long v2, v0, v2

    .line 125
    .line 126
    if-nez v2, :cond_7

    .line 127
    goto :goto_2

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-interface {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    .line 136
    invoke-interface {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFeatures()J

    .line 137
    move-result-wide v1

    .line 138
    or-long/2addr v1, p4

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 142
    move-result v1

    .line 143
    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 148
    move-result-wide v0

    .line 149
    .line 150
    .line 151
    invoke-interface {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    :cond_8
    if-nez v0, :cond_9

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 158
    goto :goto_2

    .line 159
    .line 160
    :cond_9
    if-nez v8, :cond_a

    .line 161
    .line 162
    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 163
    .line 164
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 165
    or-long/2addr v1, p4

    .line 166
    .line 167
    .line 168
    invoke-interface {p0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 169
    move-result-object v8

    .line 170
    .line 171
    .line 172
    :cond_a
    invoke-virtual {v0, p1, v8}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 173
    .line 174
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 175
    .line 176
    goto/16 :goto_0
.end method

.method public static x(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFeatures()J

    .line 5
    move-result-wide v4

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    .line 10
    .line 11
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static y(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-wide v4, p2

    .line 6
    .line 7
    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static varargs z(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFeatures()J

    .line 12
    move-result-wide v4

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v0, p0

    .line 16
    .line 17
    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 25
    :cond_0
    return-object p0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    move-object p0, v0

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    :cond_1
    :goto_0
    throw p0
.end method
