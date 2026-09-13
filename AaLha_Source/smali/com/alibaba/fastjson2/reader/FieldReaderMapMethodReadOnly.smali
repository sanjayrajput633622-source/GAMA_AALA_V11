.class Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;
.super Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 15

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v12, 0x0

    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, p0

    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    move-object/from16 v2, p2

    .line 9
    .line 10
    move-object/from16 v3, p3

    .line 11
    .line 12
    move/from16 v4, p4

    .line 13
    .line 14
    move-wide/from16 v5, p5

    .line 15
    .line 16
    move-object/from16 v7, p7

    .line 17
    .line 18
    move-object/from16 v10, p8

    .line 19
    .line 20
    move-object/from16 v11, p9

    .line 21
    .line 22
    move-object/from16 v13, p10

    .line 23
    .line 24
    move-object/from16 v14, p11

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 28
    return-void
.end method

.method private getReadOnlyMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p1

    .line 11
    .line 12
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v1, "set "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, " error"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;->getReadOnlyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 10
    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "java.util.Collections$UnmodifiableMap"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_2
    check-cast p2, Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->arrayToMapKey:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p2, Ljava/util/Collection;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;->getReadOnlyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 12
    move-result-object v1

    .line 13
    move-object v2, p2

    .line 14
    .line 15
    check-cast v2, Ljava/util/Collection;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->arrayToMapKey:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->valueType:Ljava/lang/reflect/Type;

    .line 22
    .line 23
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 24
    or-long/2addr p3, v5

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p3, p4}, Lcom/alibaba/fastjson2/JSONFactory;->getObjectReader(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->arrayToMapDuplicateHandler:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->arrayToMap(Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 34
    return-void

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 38
    return-void
.end method

.method public acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;->getReadOnlyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_1
    instance-of v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueType:Ljava/lang/reflect/Type;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    .line 38
    return-object p1
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemType()Ljava/lang/reflect/Type;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/16 v5, 0x0

    .line 17
    move-object v2, p1

    .line 18
    .line 19
    .line 20
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;->getReadOnlyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->arrayToMapKey:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;->getReadOnlyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->valueType:Ljava/lang/reflect/Type;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->arrayToMapKey:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->valueType:Ljava/lang/reflect/Type;

    .line 27
    .line 28
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v5, v6}, Lcom/alibaba/fastjson2/JSONFactory;->getObjectReader(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;->arrayToMapDuplicateHandler:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 35
    .line 36
    .line 37
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->arrayToMap(Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 38
    return-void

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 55
    .line 56
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemType()Ljava/lang/reflect/Type;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 67
    .line 68
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 69
    move-object v2, p1

    .line 70
    .line 71
    .line 72
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v1, p1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemType()Ljava/lang/reflect/Type;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 84
    .line 85
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 86
    .line 87
    .line 88
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    return-void
.end method
