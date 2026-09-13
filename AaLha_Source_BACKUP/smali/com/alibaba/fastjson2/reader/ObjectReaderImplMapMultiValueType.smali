.class public Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;

.field final instanceType:Ljava/lang/Class;

.field final mapType:Ljava/lang/Class;

.field final multiValueType:Lcom/alibaba/fastjson2/util/MapMultiValueType;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/util/MapMultiValueType;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->multiValueType:Lcom/alibaba/fastjson2/util/MapMultiValueType;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/alibaba/fastjson2/util/MapMultiValueType;->mapType:Ljava/lang/Class;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->mapType:Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-class v1, Ljava/util/Map;

    .line 16
    .line 17
    if-eq p1, v1, :cond_4

    .line 18
    .line 19
    const-class v1, Ljava/util/AbstractMap;

    .line 20
    .line 21
    if-eq p1, v1, :cond_4

    .line 22
    .line 23
    const-string v1, "java.util.Collections$SingletonMap"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    const-string v1, "java.util.Collections$UnmodifiableMap"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-class p1, Ljava/util/LinkedHashMap;

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    const-class v0, Ljava/util/SortedMap;

    .line 44
    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    const-class p1, Ljava/util/TreeMap;

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_2
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    .line 51
    .line 52
    if-ne p1, v0, :cond_3

    .line 53
    .line 54
    const-class p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 58
    .line 59
    if-ne p1, v0, :cond_5

    .line 60
    .line 61
    const-class p1, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_4
    :goto_0
    const-class p1, Ljava/util/HashMap;

    .line 65
    .line 66
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->instanceType:Ljava/lang/Class;

    .line 67
    const/4 p1, 0x0

    .line 68
    .line 69
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 70
    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/d;->a(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->b(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->c(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->d(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->e(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(J)Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->instanceType:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "create map error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->h(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->k(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->l(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getBuildFunction()Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->m(Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getFeatures()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->n(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->o(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->p(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->q(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->r(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTypeKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->s(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTypeKeyHash()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->t(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->u(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->v(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->w(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->x(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->y(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 13

    .line 4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'{\', but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 8
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v2, v2, p4

    .line 9
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->instanceType:Ljava/lang/Class;

    const-class v5, Ljava/util/HashMap;

    if-ne v4, v5, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v0

    .line 11
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->mapType:Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getInnerMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    .line 14
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 15
    :cond_3
    const-class v0, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v4, v0, :cond_4

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->createInstance(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :goto_1
    move-object v5, v1

    .line 18
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_7

    .line 19
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x3a

    .line 20
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v9, v5

    move-object v5, v1

    goto :goto_3

    .line 21
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "illegal json"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->multiValueType:Lcom/alibaba/fastjson2/util/MapMultiValueType;

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson2/util/MapMultiValueType;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v9, v6

    :goto_3
    if-nez v9, :cond_8

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v6

    goto :goto_4

    .line 25
    :cond_8
    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v7

    const-wide/16 v11, 0x0

    move-object v8, p1

    move-object/from16 v10, p3

    .line 26
    invoke-interface/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    :goto_4
    const-wide/16 v7, 0x0

    if-nez v6, :cond_9

    .line 27
    sget-object v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v2

    cmp-long v10, v10, v7

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v4, :cond_a

    .line 28
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_5

    .line 29
    :cond_a
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_5
    if-eqz v10, :cond_c

    .line 30
    sget-object v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v11, v2

    cmp-long v7, v11, v7

    if-eqz v7, :cond_c

    .line 31
    instance-of v7, v10, Ljava/util/Collection;

    if-eqz v7, :cond_b

    .line 32
    move-object v7, v10

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 34
    :cond_b
    invoke-static {v10, v6}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v6

    .line 35
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_6
    move-object v5, v9

    goto/16 :goto_2

    .line 36
    :cond_d
    :goto_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 37
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_e

    .line 38
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    return-object v0
.end method

.method public varargs synthetic readObject(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->z(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->A(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
