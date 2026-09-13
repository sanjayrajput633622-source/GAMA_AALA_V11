.class Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;
.super Lcom/alibaba/fastjson2/reader/FieldReaderMapField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderMapField<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 13

    .line 1
    const/4 v8, 0x0

    .line 2
    const/4 v9, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-wide/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v10, p8

    .line 16
    .line 17
    move-object/from16 v11, p9

    .line 18
    .line 19
    move-object/from16 v12, p10

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 23
    return-void
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
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 14
    .line 15
    if-eq p1, v0, :cond_3

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "java.util.Collections$UnmodifiableMap"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    check-cast p2, Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    :cond_3
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    .line 44
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v1, "set "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v1, " error"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    throw p2
.end method

.method public acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapKey:Ljava/lang/String;

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
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    move-object v0, p1

    .line 16
    .line 17
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    move-object v1, p2

    .line 19
    .line 20
    check-cast v1, Ljava/util/Collection;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapKey:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->valueType:Ljava/lang/reflect/Type;

    .line 27
    .line 28
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 29
    or-long/2addr p3, v4

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p3, p4}, Lcom/alibaba/fastjson2/JSONFactory;->getObjectReader(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapDuplicateHandler:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 36
    .line 37
    .line 38
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->arrayToMap(Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 39
    return-void

    .line 40
    .line 41
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 42
    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string p3, "set "

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p3, " error"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 73
    return-void
.end method

.method public acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void

    .line 13
    .line 14
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string p3, "set "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p3, " error"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
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
    .locals 6

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    move-object v1, p1

    .line 21
    .line 22
    .line 23
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    move-object v1, p1

    .line 31
    move-object p1, v0

    .line 32
    .line 33
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v2, "set "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, " error"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    throw p2
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapKey:Ljava/lang/String;

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
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    move-object v0, p2

    .line 18
    .line 19
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->valueType:Ljava/lang/reflect/Type;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapKey:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->valueType:Ljava/lang/reflect/Type;

    .line 32
    .line 33
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONFactory;->getObjectReader(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapDuplicateHandler:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 40
    .line 41
    .line 42
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->arrayToMap(Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 43
    return-void

    .line 44
    .line 45
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v0, "set "

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v0, " error"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1

    .line 74
    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 90
    .line 91
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 98
    .line 99
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 100
    .line 101
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 102
    move-object v2, p1

    .line 103
    .line 104
    .line 105
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    move-object v1, p1

    .line 109
    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 115
    .line 116
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 117
    .line 118
    .line 119
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    return-void
.end method
