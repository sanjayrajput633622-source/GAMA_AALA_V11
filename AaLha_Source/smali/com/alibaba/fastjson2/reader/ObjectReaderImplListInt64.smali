.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final instanceType:Ljava/lang/Class;

.field final instanceTypeHash:J

.field final listType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->listType:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceType:Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceTypeHash:J

    .line 18
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

    .line 6
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceType:Ljava/lang/Class;

    const-class p2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 8
    :cond_0
    const-class p2, Ljava/util/LinkedList;

    if-ne p1, p2, :cond_1

    .line 9
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 10
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 11
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create list error, type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    const-wide/16 p2, 0x0

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 14
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 5
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

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->listType:Ljava/lang/Class;

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceTypeHash:J

    .line 13
    move-object v0, p1

    .line 14
    move-wide v4, p4

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    :cond_1
    const-class p2, Ljava/util/ArrayList;

    .line 27
    .line 28
    if-ne v1, p2, :cond_2

    .line 29
    .line 30
    new-instance p2, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    const-class p2, Lcom/alibaba/fastjson2/JSONArray;

    .line 37
    .line 38
    if-ne v1, p2, :cond_3

    .line 39
    .line 40
    new-instance p2, Lcom/alibaba/fastjson2/JSONArray;

    .line 41
    .line 42
    .line 43
    invoke-direct {p2}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    if-eqz v1, :cond_4

    .line 47
    .line 48
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->listType:Ljava/lang/Class;

    .line 49
    .line 50
    if-eq v1, p2, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    check-cast p2, Ljava/util/Collection;

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_4
    iget-object p2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 60
    .line 61
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 62
    or-long/2addr p2, v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->createInstance(J)Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    check-cast p2, Ljava/util/Collection;

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 72
    move-result p3

    .line 73
    const/4 p4, 0x0

    .line 74
    .line 75
    :goto_1
    if-ge p4, p3, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    .line 79
    move-result-object p5

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    add-int/lit8 p4, p4, 0x1

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_5
    if-eqz p1, :cond_6

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    check-cast p1, Ljava/util/Collection;

    .line 100
    return-object p1

    .line 101
    :cond_6
    return-object p2
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
    .locals 7

    .line 4
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result p1

    const/16 p2, 0x2c

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p4, v3

    invoke-virtual {p0, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->createInstance(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 9
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_2

    .line 11
    const-string p2, ","

    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 12
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_3

    aget-object p5, p2, p4

    .line 13
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    .line 14
    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 16
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p1

    .line 18
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result p1

    .line 19
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    const/16 v0, 0x5b

    if-ne p3, v0, :cond_9

    .line 20
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceType:Ljava/lang/Class;

    const-class p3, Ljava/util/Collection;

    if-ne p1, p3, :cond_5

    .line 22
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_1

    .line 23
    :cond_5
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p4, v3

    invoke-virtual {p0, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->createInstance(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 24
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result p3

    const-string p4, "illegal input error"

    if-nez p3, :cond_8

    .line 25
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 26
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p1

    .line 27
    :cond_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    if-eq p3, p2, :cond_7

    .line 28
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    move-result-object p3

    .line 29
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "format error"

    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
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
