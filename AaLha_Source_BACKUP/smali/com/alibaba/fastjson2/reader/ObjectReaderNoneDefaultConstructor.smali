.class public Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final creator:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation
.end field

.field final paramNames:[Ljava/lang/String;

.field final setterFieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Function;[Ljava/lang/String;[Lcom/alibaba/fastjson2/reader/FieldReader;[Lcom/alibaba/fastjson2/reader/FieldReader;[Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v10, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static/range {p8 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->concat([Lcom/alibaba/fastjson2/reader/FieldReader;[Lcom/alibaba/fastjson2/reader/FieldReader;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 5
    move-result-object v11

    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    .line 13
    move-wide/from16 v4, p4

    .line 14
    .line 15
    move-object/from16 v8, p10

    .line 16
    .line 17
    move-object/from16 v9, p11

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 21
    .line 22
    move-object/from16 p1, p7

    .line 23
    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->paramNames:[Ljava/lang/String;

    .line 25
    .line 26
    move-object/from16 p1, p6

    .line 27
    .line 28
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->creator:Lcom/alibaba/fastjson2/function/Function;

    .line 29
    .line 30
    move-object/from16 p1, p9

    .line 31
    .line 32
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->setterFieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 33
    return-void
.end method

.method public static concat([Lcom/alibaba/fastjson2/reader/FieldReader;[Lcom/alibaba/fastjson2/reader/FieldReader;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    .line 5
    array-length v1, p1

    .line 6
    add-int/2addr v1, v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 13
    const/4 v1, 0x0

    .line 14
    array-length v2, p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    return-object p0
.end method


# virtual methods
.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            "J)TT;"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 2
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    aget-object v2, v2, v0

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 8
    iget-object v4, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 9
    iget-object v5, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 10
    instance-of v6, v5, Ljava/lang/Class;

    if-nez v6, :cond_1

    .line 11
    invoke-static {v1, v5, p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    if-eq v3, v4, :cond_2

    .line 12
    invoke-virtual {p2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v3, v1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    :cond_2
    :goto_1
    instance-of v3, v2, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;

    if-eqz v3, :cond_3

    .line 15
    check-cast v2, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;->paramNameHash:J

    goto :goto_2

    .line 16
    :cond_3
    iget-wide v2, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 17
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_4
    :goto_3
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getTypeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v4

    .line 24
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v6, p2

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0, v0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    move-result-wide v4

    or-long/2addr v4, p2

    .line 27
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    :cond_1
    if-eq v2, p0, :cond_2

    if-eqz v2, :cond_2

    .line 28
    invoke-interface {v2, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v3

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 33
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_6

    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 35
    iget-object v7, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    if-eq v6, v7, :cond_6

    .line 36
    instance-of v8, v4, Lcom/alibaba/fastjson2/JSONObject;

    if-eqz v8, :cond_4

    .line 37
    iget-object v6, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    .line 38
    check-cast v4, Ljava/util/Map;

    invoke-interface {v6, v4, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 39
    :cond_4
    instance-of v8, v4, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v8, :cond_5

    .line 40
    check-cast v4, Lcom/alibaba/fastjson2/JSONArray;

    iget-object v6, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v6, p2, p3}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;J)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 41
    :cond_5
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 42
    invoke-interface {v6, v4}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    .line 43
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    :cond_7
    instance-of v6, v5, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;

    if-eqz v6, :cond_8

    .line 45
    check-cast v5, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;->paramNameHash:J

    goto :goto_3

    .line 46
    :cond_8
    iget-wide v5, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 47
    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    if-nez v2, :cond_a

    .line 48
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 49
    :cond_a
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    .line 50
    :goto_4
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->setterFieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v6, v5

    if-ge v4, v6, :cond_10

    .line 51
    aget-object v5, v5, v4

    .line 52
    iget-object v6, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_6

    .line 53
    :cond_b
    iget-object v7, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 54
    :try_start_0
    iget-object v7, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v7, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 55
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_c

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_c

    goto :goto_6

    .line 56
    :catch_0
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 57
    iget-object v8, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 58
    iget-object v9, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    if-eq v7, v8, :cond_f

    .line 59
    invoke-virtual {v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v7

    .line 60
    instance-of v8, v9, Ljava/lang/Class;

    if-nez v8, :cond_d

    .line 61
    invoke-static {v6, v9, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_d
    if-eqz v7, :cond_e

    .line 62
    invoke-interface {v7, v6}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    .line 63
    :cond_e
    instance-of v7, v6, Ljava/util/Map;

    if-eqz v7, :cond_f

    .line 64
    new-array v7, v2, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-static {v0, v7}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v7

    .line 65
    check-cast v6, Ljava/util/Map;

    iget-wide v8, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    or-long/2addr v8, p2

    invoke-interface {v7, v6, v8, v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v6

    .line 66
    :cond_f
    :goto_5
    invoke-virtual {v5, v1, v6}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_10
    return-object v1
.end method

.method public createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->creator:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 13
    move-result v0

    .line 14
    .line 15
    const/16 v1, -0x51

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 22
    return-object v6

    .line 23
    .line 24
    :cond_1
    const/16 v1, -0x6e

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 32
    move-result-wide v9

    .line 33
    .line 34
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 35
    .line 36
    or-long v11, v0, p4

    .line 37
    move-object v7, p1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    if-eq v0, p0, :cond_2

    .line 46
    move-object v1, p1

    .line 47
    move-object v2, p2

    .line 48
    .line 49
    move-object/from16 v3, p3

    .line 50
    .line 51
    move-wide/from16 v4, p4

    .line 52
    .line 53
    .line 54
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x0

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray()Z

    .line 67
    move-result p2

    .line 68
    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 73
    move-result p2

    .line 74
    move v0, v2

    .line 75
    move-object v3, v6

    .line 76
    .line 77
    :goto_0
    if-ge v0, p2, :cond_6

    .line 78
    .line 79
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 80
    .line 81
    aget-object v4, v4, v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    .line 94
    :cond_3
    iget-wide v7, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 95
    .line 96
    .line 97
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    const-string v2, "expect object, but "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 120
    move-result v2

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p2

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 143
    move v0, v2

    .line 144
    move-object v3, v6

    .line 145
    move-object v4, v3

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 149
    move-result v5

    .line 150
    .line 151
    if-eqz v5, :cond_b

    .line 152
    move-object v6, v4

    .line 153
    .line 154
    :cond_6
    if-nez v3, :cond_7

    .line 155
    .line 156
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 157
    .line 158
    .line 159
    :cond_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->setterFieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 163
    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    :goto_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->setterFieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 167
    array-length v4, v0

    .line 168
    .line 169
    if-ge v2, v4, :cond_8

    .line 170
    .line 171
    aget-object v0, v0, v2

    .line 172
    .line 173
    iget-wide v4, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 174
    .line 175
    .line 176
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    move-result-object v4

    .line 178
    .line 179
    .line 180
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p2, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    goto :goto_2

    .line 188
    .line 189
    :cond_8
    if-eqz v6, :cond_a

    .line 190
    .line 191
    .line 192
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    .line 196
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    move-result v2

    .line 202
    .line 203
    if-eqz v2, :cond_a

    .line 204
    .line 205
    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    move-result-object v2

    .line 208
    .line 209
    check-cast v2, Ljava/util/Map$Entry;

    .line 210
    .line 211
    .line 212
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 213
    move-result-object v3

    .line 214
    .line 215
    check-cast v3, Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    check-cast v2, Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 225
    move-result-wide v3

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 229
    move-result-object v3

    .line 230
    .line 231
    const-string v4, ".."

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    move-result v4

    .line 236
    .line 237
    if-eqz v4, :cond_9

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, p2, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    goto :goto_3

    .line 242
    .line 243
    .line 244
    :cond_9
    invoke-virtual {v3, p1, p2, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    goto :goto_3

    .line 246
    :cond_a
    return-object p2

    .line 247
    .line 248
    .line 249
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 250
    move-result-wide v7

    .line 251
    .line 252
    const-wide/16 v9, 0x0

    .line 253
    .line 254
    cmp-long v5, v7, v9

    .line 255
    .line 256
    if-nez v5, :cond_c

    .line 257
    .line 258
    move-wide/from16 v9, p4

    .line 259
    .line 260
    goto/16 :goto_5

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :cond_c
    const-wide v9, 0x6570797440L

    .line 266
    .line 267
    cmp-long v5, v7, v9

    .line 268
    .line 269
    if-nez v5, :cond_f

    .line 270
    .line 271
    if-nez v0, :cond_f

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 275
    move-result-wide v2

    .line 276
    .line 277
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 281
    move-result-object v2

    .line 282
    .line 283
    if-nez v2, :cond_e

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 287
    move-result-object v2

    .line 288
    .line 289
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    if-eqz v0, :cond_d

    .line 296
    move-object v1, p1

    .line 297
    move-object v2, p2

    .line 298
    .line 299
    move-object/from16 v3, p3

    .line 300
    .line 301
    move-wide/from16 v4, p4

    .line 302
    goto :goto_4

    .line 303
    .line 304
    :cond_d
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 305
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    const-string v3, "auotype not support : "

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    .line 328
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 329
    throw p2

    .line 330
    :cond_e
    move-object v0, v2

    .line 331
    move-object v1, p1

    .line 332
    .line 333
    move-object/from16 v3, p3

    .line 334
    .line 335
    move-wide/from16 v4, p4

    .line 336
    move-object v2, p2

    .line 337
    .line 338
    .line 339
    :goto_4
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 340
    move-result-object p2

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 344
    return-object p2

    .line 345
    .line 346
    :cond_f
    move-wide/from16 v9, p4

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 350
    move-result-object v5

    .line 351
    .line 352
    if-nez v5, :cond_10

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0, p1, v6, v9, v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 356
    goto :goto_5

    .line 357
    .line 358
    .line 359
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 360
    move-result v11

    .line 361
    .line 362
    if-eqz v11, :cond_12

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 369
    move-result-object v5

    .line 370
    .line 371
    if-nez v4, :cond_11

    .line 372
    .line 373
    new-instance v4, Ljava/util/HashMap;

    .line 374
    .line 375
    .line 376
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 377
    .line 378
    .line 379
    :cond_11
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 380
    move-result-object v7

    .line 381
    .line 382
    .line 383
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    goto :goto_5

    .line 385
    .line 386
    .line 387
    :cond_12
    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 388
    move-result-object v7

    .line 389
    .line 390
    if-nez v3, :cond_13

    .line 391
    .line 392
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 393
    .line 394
    .line 395
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 396
    .line 397
    :cond_13
    iget-wide v11, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 398
    .line 399
    .line 400
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 401
    move-result-object v5

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v5, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 407
    .line 408
    goto/16 :goto_1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-wide/from16 v6, p4

    .line 7
    .line 8
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 16
    .line 17
    :cond_0
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    move-object/from16 v3, p3

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    move-object v8, v0

    .line 31
    return-object v1

    .line 32
    :cond_1
    move-object v8, v0

    .line 33
    .line 34
    iget-wide v2, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 35
    or-long/2addr v2, v6

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray(J)Z

    .line 39
    move-result v0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    :goto_0
    iget-object v0, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 52
    array-length v2, v0

    .line 53
    .line 54
    if-ge v10, v2, :cond_3

    .line 55
    .line 56
    aget-object v0, v0, v10

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-nez v9, :cond_2

    .line 63
    .line 64
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    move-object v9, v2

    .line 69
    .line 70
    :cond_2
    iget-object v2, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 71
    .line 72
    aget-object v2, v2, v10

    .line 73
    .line 74
    iget-wide v2, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    add-int/lit8 v10, v10, 0x1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 94
    .line 95
    if-nez v9, :cond_4

    .line 96
    .line 97
    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    .line 104
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    const-string v3, "array not end, "

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 118
    move-result v3

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 133
    throw v0

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 137
    move-result v0

    .line 138
    .line 139
    if-nez v0, :cond_8

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    .line 143
    move-result v0

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    .line 149
    goto :goto_1

    .line 150
    .line 151
    .line 152
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 153
    move-result v0

    .line 154
    .line 155
    if-eqz v0, :cond_8

    .line 156
    return-object v9

    .line 157
    .line 158
    :cond_8
    :goto_1
    iget-object v11, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 159
    .line 160
    iget-wide v2, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 161
    or-long/2addr v2, v6

    .line 162
    .line 163
    iget-wide v4, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 164
    .line 165
    or-long v12, v2, v4

    .line 166
    move-object v15, v9

    .line 167
    move v14, v10

    .line 168
    .line 169
    .line 170
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 171
    move-result v0

    .line 172
    .line 173
    if-eqz v0, :cond_f

    .line 174
    .line 175
    iget-boolean v0, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 176
    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    if-nez v15, :cond_9

    .line 180
    .line 181
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 182
    .line 183
    .line 184
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 185
    .line 186
    :cond_9
    iget-object v0, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 187
    array-length v2, v0

    .line 188
    move v3, v10

    .line 189
    .line 190
    :goto_3
    if-ge v3, v2, :cond_b

    .line 191
    .line 192
    aget-object v4, v0, v3

    .line 193
    .line 194
    iget-object v5, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 195
    .line 196
    if-eqz v5, :cond_a

    .line 197
    .line 198
    iget-wide v5, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    move-result-object v5

    .line 203
    .line 204
    .line 205
    invoke-virtual {v15, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v5

    .line 207
    .line 208
    if-nez v5, :cond_a

    .line 209
    .line 210
    iget-wide v5, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 211
    .line 212
    .line 213
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    move-result-object v5

    .line 215
    .line 216
    iget-object v4, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 222
    goto :goto_3

    .line 223
    .line 224
    :cond_b
    if-nez v15, :cond_c

    .line 225
    .line 226
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 227
    goto :goto_4

    .line 228
    :cond_c
    move-object v0, v15

    .line 229
    .line 230
    :goto_4
    iget-object v2, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->creator:Lcom/alibaba/fastjson2/function/Function;

    .line 231
    .line 232
    .line 233
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    iget-object v2, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->setterFieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 237
    .line 238
    if-eqz v2, :cond_e

    .line 239
    .line 240
    if-eqz v15, :cond_e

    .line 241
    .line 242
    :goto_5
    iget-object v2, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;->setterFieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 243
    array-length v3, v2

    .line 244
    .line 245
    if-ge v10, v3, :cond_e

    .line 246
    .line 247
    aget-object v2, v2, v10

    .line 248
    .line 249
    iget-wide v3, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 250
    .line 251
    .line 252
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    move-result-object v3

    .line 254
    .line 255
    .line 256
    invoke-virtual {v15, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    if-eqz v3, :cond_d

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    .line 264
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 265
    goto :goto_5

    .line 266
    .line 267
    .line 268
    :cond_e
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 269
    return-object v0

    .line 270
    .line 271
    .line 272
    :cond_f
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 273
    move-result-wide v2

    .line 274
    .line 275
    const-wide/16 v4, 0x0

    .line 276
    .line 277
    cmp-long v0, v2, v4

    .line 278
    .line 279
    if-nez v0, :cond_10

    .line 280
    .line 281
    goto/16 :goto_8

    .line 282
    .line 283
    :cond_10
    move-wide/from16 v16, v4

    .line 284
    .line 285
    iget-wide v4, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKeyHashCode:J

    .line 286
    .line 287
    cmp-long v0, v2, v4

    .line 288
    .line 289
    if-nez v0, :cond_15

    .line 290
    .line 291
    if-nez v14, :cond_15

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 295
    move-result-wide v1

    .line 296
    .line 297
    .line 298
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 299
    move-result-wide v3

    .line 300
    .line 301
    cmp-long v0, v1, v3

    .line 302
    .line 303
    if-nez v0, :cond_12

    .line 304
    .line 305
    :cond_11
    move-object/from16 v1, p1

    .line 306
    .line 307
    goto/16 :goto_8

    .line 308
    .line 309
    :cond_12
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 310
    .line 311
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 312
    and-long/2addr v3, v12

    .line 313
    .line 314
    cmp-long v0, v3, v16

    .line 315
    .line 316
    if-eqz v0, :cond_13

    .line 317
    .line 318
    iget-object v3, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 319
    .line 320
    iget-wide v4, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 321
    .line 322
    move-object/from16 v0, p1

    .line 323
    .line 324
    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 326
    move-result-object v1

    .line 327
    goto :goto_6

    .line 328
    .line 329
    .line 330
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 331
    move-result-object v0

    .line 332
    .line 333
    iget-object v1, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 337
    move-result-object v1

    .line 338
    .line 339
    :goto_6
    if-nez v1, :cond_14

    .line 340
    .line 341
    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 343
    move-result-object v0

    .line 344
    .line 345
    iget-object v1, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 346
    .line 347
    iget-wide v2, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 348
    .line 349
    .line 350
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 351
    move-result-object v1

    .line 352
    :cond_14
    move-object v0, v1

    .line 353
    .line 354
    if-eqz v0, :cond_11

    .line 355
    .line 356
    const-wide/16 v4, 0x0

    .line 357
    .line 358
    move-object/from16 v1, p1

    .line 359
    .line 360
    move-object/from16 v2, p2

    .line 361
    .line 362
    move-object/from16 v3, p3

    .line 363
    .line 364
    .line 365
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 366
    move-result-object v0

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 370
    return-object v0

    .line 371
    .line 372
    .line 373
    :cond_15
    invoke-virtual {v8, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 374
    move-result-object v0

    .line 375
    .line 376
    if-nez v0, :cond_17

    .line 377
    .line 378
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 379
    .line 380
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 381
    and-long/2addr v2, v12

    .line 382
    .line 383
    cmp-long v2, v2, v16

    .line 384
    .line 385
    if-eqz v2, :cond_17

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 389
    move-result-wide v2

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 393
    move-result-object v0

    .line 394
    .line 395
    if-nez v0, :cond_17

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 399
    move-result-object v2

    .line 400
    .line 401
    const-string v3, "is"

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 405
    move-result v3

    .line 406
    .line 407
    if-eqz v3, :cond_17

    .line 408
    const/4 v3, 0x2

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 412
    move-result-object v2

    .line 413
    .line 414
    .line 415
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 416
    move-result-wide v2

    .line 417
    .line 418
    .line 419
    invoke-virtual {v8, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 420
    move-result-object v2

    .line 421
    .line 422
    if-eqz v2, :cond_17

    .line 423
    .line 424
    iget-object v3, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 425
    .line 426
    const-class v4, Ljava/lang/Boolean;

    .line 427
    .line 428
    if-eq v3, v4, :cond_16

    .line 429
    .line 430
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 431
    .line 432
    if-ne v3, v4, :cond_17

    .line 433
    :cond_16
    move-object v0, v2

    .line 434
    .line 435
    :cond_17
    if-nez v0, :cond_18

    .line 436
    .line 437
    .line 438
    invoke-virtual {v8, v1, v9, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 439
    goto :goto_8

    .line 440
    .line 441
    .line 442
    :cond_18
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 443
    move-result-object v2

    .line 444
    .line 445
    if-nez v15, :cond_19

    .line 446
    .line 447
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 448
    .line 449
    .line 450
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 451
    .line 452
    :cond_19
    instance-of v3, v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;

    .line 453
    .line 454
    if-eqz v3, :cond_1a

    .line 455
    .line 456
    check-cast v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;

    .line 457
    .line 458
    iget-wide v3, v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;->paramNameHash:J

    .line 459
    goto :goto_7

    .line 460
    .line 461
    :cond_1a
    iget-wide v3, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 462
    .line 463
    .line 464
    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 465
    move-result-object v0

    .line 466
    .line 467
    .line 468
    invoke-virtual {v15, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    :goto_8
    add-int/lit8 v14, v14, 0x1

    .line 471
    .line 472
    goto/16 :goto_2
.end method
