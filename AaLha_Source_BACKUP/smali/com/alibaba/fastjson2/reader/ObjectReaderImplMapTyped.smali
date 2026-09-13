.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;

.field final defaultConstructor:Ljava/lang/reflect/Constructor;

.field final features:J

.field final instanceType:Ljava/lang/Class;

.field keyObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final keyType:Ljava/lang/reflect/Type;

.field final mapType:Ljava/lang/Class;

.field final valueClass:Ljava/lang/Class;

.field valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLcom/alibaba/fastjson2/function/Function;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-class v0, Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-ne p3, v0, :cond_0

    .line 9
    move-object p3, v1

    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->mapType:Ljava/lang/Class;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->instanceType:Ljava/lang/Class;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    .line 18
    .line 19
    .line 20
    invoke-static {p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueClass:Ljava/lang/Class;

    .line 24
    .line 25
    iput-wide p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->features:J

    .line 26
    .line 27
    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 31
    move-result-object p1

    .line 32
    array-length p2, p1

    .line 33
    const/4 p3, 0x0

    .line 34
    .line 35
    :goto_0
    if-ge p3, p2, :cond_2

    .line 36
    .line 37
    aget-object p4, p1, p3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 41
    move-result-object p5

    .line 42
    array-length p5, p5

    .line 43
    .line 44
    if-nez p5, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 48
    move-result p5

    .line 49
    .line 50
    .line 51
    invoke-static {p5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 52
    move-result p5

    .line 53
    .line 54
    if-nez p5, :cond_1

    .line 55
    const/4 p1, 0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 59
    move-object v1, p4

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 66
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

    .line 43
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->instanceType:Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_1

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 47
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "create map error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 48
    :cond_1
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

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 7

    .line 6
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->instanceType:Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    if-eq v1, v2, :cond_1

    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 14
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    if-eqz v4, :cond_3

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 16
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v2, :cond_11

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 18
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    const-class v6, Ljava/lang/Object;

    if-ne v5, v6, :cond_4

    goto/16 :goto_6

    .line 19
    :cond_4
    const-class v5, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v4, v5, :cond_f

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_5

    goto/16 :goto_5

    .line 20
    :cond_5
    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    if-eq v4, v5, :cond_6

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONArray1x()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_8

    :cond_6
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueClass:Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    if-ne v5, v6, :cond_8

    .line 21
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v4, :cond_7

    .line 22
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 23
    :cond_7
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-object v5, v2

    check-cast v5, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v4, v5, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 24
    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 25
    invoke-interface {v5, v2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 26
    :cond_9
    instance-of v5, v2, Ljava/util/Map;

    if-eqz v5, :cond_b

    .line 27
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    .line 28
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v5, :cond_a

    .line 29
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 30
    :cond_a
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-interface {v5, v4, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 31
    :cond_b
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_d

    .line 32
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v4, :cond_c

    .line 33
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 34
    :cond_c
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 35
    :cond_d
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_6

    .line 36
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can not convert from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_f
    :goto_5
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v4, :cond_10

    .line 38
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 39
    :cond_10
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-object v5, v2

    check-cast v5, Lcom/alibaba/fastjson2/JSONObject;

    invoke-interface {v4, v5, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    :catch_0
    :cond_11
    :goto_6
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 41
    :cond_12
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_13

    .line 42
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    return-object v1
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

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->mapType:Ljava/lang/Class;

    .line 3
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
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v7, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 8
    move-result v1

    .line 9
    .line 10
    const/16 v2, -0x6e

    .line 11
    const/4 v8, 0x0

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->mapType:Ljava/lang/Class;

    .line 16
    .line 17
    iget-wide v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->features:J

    .line 18
    .line 19
    or-long v5, v3, p4

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    if-eq v2, v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    .line 35
    move-result-object v7

    .line 36
    .line 37
    instance-of v1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    instance-of v1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    move-object/from16 v3, p2

    .line 46
    .line 47
    move-object/from16 v4, p3

    .line 48
    .line 49
    move-wide/from16 v5, p4

    .line 50
    move-object v1, v2

    .line 51
    .line 52
    move-object/from16 v2, p1

    .line 53
    .line 54
    .line 55
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    return-object v1

    .line 58
    :cond_0
    move-object v1, v2

    .line 59
    .line 60
    move-object/from16 v2, p1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_1
    move-object/from16 v2, p1

    .line 64
    move-object v1, v8

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 68
    move-result v3

    .line 69
    .line 70
    const/16 v4, -0x51

    .line 71
    .line 72
    if-ne v3, v4, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 76
    return-object v8

    .line 77
    .line 78
    :cond_2
    const/16 v4, -0x5a

    .line 79
    .line 80
    if-ne v3, v4, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 84
    .line 85
    :cond_3
    iget-object v9, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 86
    .line 87
    iget-wide v3, v9, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 88
    .line 89
    or-long v10, p4, v3

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v10, v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    check-cast v1, Ljava/util/Map;

    .line 98
    :goto_1
    move-object v12, v1

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->instanceType:Ljava/lang/Class;

    .line 102
    .line 103
    const-class v3, Ljava/util/HashMap;

    .line 104
    .line 105
    if-ne v1, v3, :cond_5

    .line 106
    .line 107
    new-instance v1, Ljava/util/HashMap;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 111
    goto :goto_1

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->createInstance()Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    check-cast v1, Ljava/util/Map;

    .line 118
    goto :goto_1

    .line 119
    :goto_2
    const/4 v13, 0x0

    .line 120
    move v14, v13

    .line 121
    .line 122
    .line 123
    :goto_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 124
    move-result v1

    .line 125
    .line 126
    const/16 v3, -0x5b

    .line 127
    .line 128
    if-ne v1, v3, :cond_8

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 132
    .line 133
    if-eqz v7, :cond_7

    .line 134
    .line 135
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->ENUM_MAP_BUILDER:Lcom/alibaba/fastjson2/function/Function;

    .line 136
    .line 137
    if-ne v7, v1, :cond_6

    .line 138
    .line 139
    .line 140
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    .line 141
    move-result v1

    .line 142
    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    new-instance v1, Ljava/util/EnumMap;

    .line 146
    .line 147
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    .line 148
    .line 149
    check-cast v2, Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 153
    return-object v1

    .line 154
    .line 155
    .line 156
    :cond_6
    invoke-interface {v7, v12}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-result-object v1

    .line 158
    return-object v1

    .line 159
    :cond_7
    return-object v12

    .line 160
    .line 161
    :cond_8
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    .line 162
    .line 163
    const-class v3, Ljava/lang/String;

    .line 164
    .line 165
    if-eq v1, v3, :cond_d

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 169
    move-result v1

    .line 170
    .line 171
    if-eqz v1, :cond_9

    .line 172
    goto :goto_5

    .line 173
    .line 174
    .line 175
    :cond_9
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 176
    move-result v1

    .line 177
    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    new-instance v3, Lcom/alibaba/fastjson2/util/ReferenceKey;

    .line 185
    .line 186
    .line 187
    invoke-direct {v3, v14}, Lcom/alibaba/fastjson2/util/ReferenceKey;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v12, v3, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 195
    :goto_4
    move-object v15, v3

    .line 196
    goto :goto_6

    .line 197
    .line 198
    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 199
    .line 200
    if-nez v1, :cond_b

    .line 201
    .line 202
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    .line 203
    .line 204
    if-eqz v1, :cond_b

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 211
    .line 212
    :cond_b
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 213
    .line 214
    if-nez v1, :cond_c

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 218
    move-result-object v3

    .line 219
    goto :goto_4

    .line 220
    :cond_c
    const/4 v3, 0x0

    .line 221
    const/4 v4, 0x0

    .line 222
    .line 223
    move-wide/from16 v5, p4

    .line 224
    .line 225
    .line 226
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    move-result-object v3

    .line 228
    goto :goto_4

    .line 229
    .line 230
    .line 231
    :cond_d
    :goto_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    .line 232
    move-result-object v3

    .line 233
    goto :goto_4

    .line 234
    .line 235
    .line 236
    :goto_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 237
    move-result v1

    .line 238
    .line 239
    if-eqz v1, :cond_f

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    .line 245
    const-string v3, ".."

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    move-result v3

    .line 250
    .line 251
    if-eqz v3, :cond_e

    .line 252
    .line 253
    .line 254
    invoke-interface {v12, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    goto/16 :goto_9

    .line 257
    .line 258
    .line 259
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 260
    move-result-object v1

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v12, v15, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 264
    .line 265
    instance-of v1, v12, Ljava/util/concurrent/ConcurrentMap;

    .line 266
    .line 267
    if-nez v1, :cond_16

    .line 268
    .line 269
    .line 270
    invoke-interface {v12, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    goto/16 :goto_9

    .line 273
    .line 274
    .line 275
    :cond_f
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 276
    move-result v1

    .line 277
    .line 278
    if-eqz v1, :cond_10

    .line 279
    .line 280
    .line 281
    invoke-interface {v12, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    goto/16 :goto_9

    .line 284
    .line 285
    :cond_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    .line 286
    .line 287
    const-class v3, Ljava/lang/Object;

    .line 288
    .line 289
    const-wide/16 v16, 0x0

    .line 290
    .line 291
    if-ne v1, v3, :cond_11

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 295
    move-result-object v1

    .line 296
    move-object v4, v15

    .line 297
    goto :goto_8

    .line 298
    .line 299
    :cond_11
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueClass:Ljava/lang/Class;

    .line 300
    .line 301
    const-wide/16 v3, 0x0

    .line 302
    .line 303
    move-object/from16 v1, p1

    .line 304
    .line 305
    move-wide/from16 v5, p4

    .line 306
    .line 307
    .line 308
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 309
    move-result-object v2

    .line 310
    .line 311
    if-eqz v2, :cond_12

    .line 312
    .line 313
    if-eq v2, v0, :cond_12

    .line 314
    .line 315
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    .line 316
    .line 317
    move-wide/from16 v5, p4

    .line 318
    move-object v1, v2

    .line 319
    move-object v4, v15

    .line 320
    .line 321
    move-object/from16 v2, p1

    .line 322
    .line 323
    .line 324
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 325
    move-result-object v1

    .line 326
    goto :goto_8

    .line 327
    :cond_12
    move-object v4, v15

    .line 328
    .line 329
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 330
    .line 331
    if-nez v1, :cond_14

    .line 332
    .line 333
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 334
    .line 335
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 336
    and-long/2addr v1, v10

    .line 337
    .line 338
    cmp-long v1, v1, v16

    .line 339
    .line 340
    if-eqz v1, :cond_13

    .line 341
    const/4 v1, 0x1

    .line 342
    goto :goto_7

    .line 343
    :cond_13
    move v1, v13

    .line 344
    .line 345
    :goto_7
    iget-object v2, v9, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 346
    .line 347
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 351
    move-result-object v1

    .line 352
    .line 353
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 354
    .line 355
    :cond_14
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 356
    .line 357
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    .line 358
    .line 359
    move-object/from16 v2, p1

    .line 360
    .line 361
    move-wide/from16 v5, p4

    .line 362
    .line 363
    .line 364
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 365
    move-result-object v1

    .line 366
    .line 367
    :goto_8
    if-nez v1, :cond_15

    .line 368
    .line 369
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 370
    .line 371
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 372
    and-long/2addr v2, v10

    .line 373
    .line 374
    cmp-long v2, v2, v16

    .line 375
    .line 376
    if-eqz v2, :cond_15

    .line 377
    goto :goto_9

    .line 378
    .line 379
    .line 380
    :cond_15
    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    :cond_16
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 383
    .line 384
    move-object/from16 v2, p1

    .line 385
    .line 386
    goto/16 :goto_3
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
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    const/4 v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v7

    .line 8
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \'{\', but \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move v2, v9

    .line 9
    :goto_0
    iget-object v10, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 10
    iget-wide v3, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v11, v3, p4

    .line 11
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->instanceType:Ljava/lang/Class;

    const-class v4, Ljava/util/HashMap;

    if-ne v3, v4, :cond_4

    .line 12
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v3

    .line 13
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->mapType:Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    if-ne v4, v5, :cond_3

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v3}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 15
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getInnerMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    .line 16
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v4, v7

    :goto_1
    move v13, v2

    move-object v14, v3

    move-object v15, v4

    goto :goto_3

    .line 17
    :cond_4
    const-class v4, Ljava/util/EnumMap;

    if-ne v3, v4, :cond_5

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_5

    .line 18
    new-instance v3, Ljava/util/EnumMap;

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :goto_2
    move v13, v2

    move-object v14, v3

    move-object v15, v7

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->createInstance(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    goto :goto_2

    .line 20
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_c

    .line 21
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2

    const-string v3, "illegal json"

    const/16 v4, 0x3a

    const-wide/16 v16, 0x0

    if-eqz v2, :cond_8

    .line 22
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_7

    move-wide/from16 v4, p4

    move-object v3, v1

    goto/16 :goto_8

    .line 23
    :cond_7
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    const-class v5, Ljava/lang/String;

    if-ne v2, v5, :cond_c

    .line 25
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v2

    if-nez v13, :cond_9

    .line 26
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v11

    cmp-long v5, v5, v16

    if-eqz v5, :cond_9

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->getTypeKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 28
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    .line 29
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->mapType:Ljava/lang/Class;

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 30
    instance-of v3, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    if-eqz v3, :cond_1a

    .line 31
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    iget-object v4, v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 32
    invoke-interface {v2, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v14, v2

    goto/16 :goto_b

    :cond_9
    move-wide/from16 v5, p4

    if-nez v2, :cond_a

    .line 33
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move-object v3, v1

    move-object v7, v2

    move-wide v4, v5

    goto/16 :goto_8

    .line 35
    :cond_b
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    move-wide/from16 v5, p4

    .line 36
    const-class v2, Ljava/lang/Enum;

    if-nez v13, :cond_11

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v11

    cmp-long v3, v4, v16

    if-nez v3, :cond_e

    .line 37
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    move-result-object v3

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move-wide/from16 v3, p4

    goto :goto_6

    .line 38
    :cond_e
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_d

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_f

    check-cast v3, Ljava/lang/Class;

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 40
    :cond_f
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->getTypeKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 42
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    .line 43
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->mapType:Ljava/lang/Class;

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    move-wide v3, v5

    if-eqz v2, :cond_1a

    .line 44
    instance-of v1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    if-eqz v1, :cond_1a

    .line 45
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v2

    check-cast v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    iget-object v5, v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 46
    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_5
    move-object v14, v1

    goto/16 :goto_b

    :cond_10
    move-wide/from16 v3, p4

    .line 47
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    move-wide v4, v3

    move-object/from16 v3, p1

    goto/16 :goto_8

    :cond_11
    move-wide v3, v5

    .line 48
    :goto_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v1, :cond_12

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v7, v2

    const/16 v8, 0x3a

    move-object/from16 v2, p1

    .line 49
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_12
    move-object v7, v2

    const/16 v8, 0x3a

    move-object/from16 v2, p1

    .line 50
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    if-nez v1, :cond_13

    .line 51
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 52
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    :cond_13
    if-nez v13, :cond_14

    .line 54
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v11

    cmp-long v3, v3, v16

    if-eqz v3, :cond_14

    .line 55
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->getTypeKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    .line 57
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->mapType:Ljava/lang/Class;

    move-object/from16 v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    move-object v3, v1

    move-wide v4, v5

    if-eqz v2, :cond_1a

    .line 58
    instance-of v1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    if-eqz v1, :cond_1a

    .line 59
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v2

    check-cast v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    iget-object v6, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 60
    invoke-interface {v2, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto/16 :goto_5

    :cond_14
    move-wide/from16 v4, p4

    move-object v3, v2

    .line 61
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-object v7, v1

    .line 62
    :goto_8
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_16

    .line 63
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v11

    cmp-long v1, v1, v16

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_9

    :cond_15
    move v1, v9

    .line 64
    :goto_9
    iget-object v2, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v6, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 65
    :cond_16
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    const-wide/16 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 66
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v11

    cmp-long v2, v2, v16

    if-eqz v2, :cond_17

    goto :goto_b

    :cond_17
    if-eqz v15, :cond_18

    .line 67
    invoke-interface {v15, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    .line 68
    :cond_18
    invoke-interface {v14, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_1a

    .line 69
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v11

    cmp-long v3, v3, v16

    if-eqz v3, :cond_1a

    .line 70
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_19

    .line 71
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v14, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 73
    :cond_19
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v1

    .line 74
    invoke-interface {v14, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 75
    :cond_1b
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 76
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz v1, :cond_1c

    .line 77
    invoke-interface {v1, v14}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1c
    return-object v14
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
