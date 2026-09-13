.class final Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final readers:[Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final types:[Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/util/MultiType;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/util/MultiType;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/util/MultiType;->size()I

    .line 14
    move-result v3

    .line 15
    .line 16
    if-ge v2, v3, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/util/MultiType;->getType(I)Ljava/lang/reflect/Type;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    aput-object v3, v1, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    .line 28
    .line 29
    new-array p1, v0, [Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->readers:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
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

.method public synthetic createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->f(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

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

.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->readers:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 3
    .line 4
    aget-object v0, v0, p2

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    .line 9
    .line 10
    aget-object v0, v0, p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->readers:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 17
    .line 18
    aput-object p1, v0, p2

    .line 19
    return-object p1

    .line 20
    :cond_0
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
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 4
    move-result p2

    .line 5
    const/4 p3, -0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-ne p2, p3, :cond_0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    .line 12
    array-length p3, p3

    .line 13
    .line 14
    new-array p3, p3, [Ljava/lang/Object;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v1, p2, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-string v3, ".."

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    move-object v2, p3

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V

    .line 45
    move-object v2, v0

    .line 46
    :goto_1
    move-object v4, p1

    .line 47
    move-wide v7, p4

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    .line 55
    .line 56
    aget-object v5, v2, v1

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v6

    .line 61
    move-object v4, p1

    .line 62
    move-wide v7, p4

    .line 63
    .line 64
    .line 65
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    :goto_2
    aput-object v2, p3, v1

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    move-object p1, v4

    .line 72
    move-wide p4, v7

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-object p3
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
    .locals 8

    .line 4
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object p1, v1, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 9
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p1

    .line 11
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v0

    .line 13
    const-string v3, ".."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v0

    invoke-virtual {v2, p1, p3, v0}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V

    move-object v0, p2

    :goto_1
    move-wide v6, p4

    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 15
    invoke-virtual {p0, v3, p3}, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 16
    iget-object v0, v1, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    aget-object v4, v0, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v3

    .line 17
    :goto_2
    aput-object v0, p1, p3

    .line 18
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    add-int/lit8 p3, p3, 0x1

    move-wide p4, v6

    goto :goto_0

    .line 19
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "TODO"

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
