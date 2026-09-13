.class public Lcom/alibaba/fastjson2/reader/FieldReaderMapField;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObjectField<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final arrayToMapDuplicateHandler:Lcom/alibaba/fastjson2/function/BiConsumer;

.field protected final arrayToMapKey:Ljava/lang/String;

.field protected final namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field protected final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 0

    .line 1
    move-object p8, p7

    .line 2
    move-wide p6, p5

    .line 3
    move p5, p4

    .line 4
    move-object p4, p3

    .line 5
    move-object p3, p2

    .line 6
    move-object p2, p1

    .line 7
    move-object p1, p0

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p1 .. p10}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapValueType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iput-object p2, p1, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->valueType:Ljava/lang/reflect/Type;

    .line 17
    .line 18
    iput-object p11, p1, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapKey:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {p8}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iput-object p2, p1, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 25
    .line 26
    iput-object p12, p1, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapDuplicateHandler:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;B)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;B)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;C)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;C)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;D)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;D)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;F)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;F)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;I)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;J)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;S)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;S)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Z)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;Z)V

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
    .line 11
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    move-object v1, v0

    .line 22
    .line 23
    check-cast v1, Ljava/util/Map;

    .line 24
    move-object v2, p2

    .line 25
    .line 26
    check-cast v2, Ljava/util/Collection;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapKey:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->valueType:Ljava/lang/reflect/Type;

    .line 33
    .line 34
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 35
    or-long/2addr p3, v5

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3, p4}, Lcom/alibaba/fastjson2/JSONFactory;->getObjectReader(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapDuplicateHandler:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 42
    .line 43
    .line 44
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->arrayToMap(Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    return-void

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 52
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    move-object v1, v0

    .line 22
    .line 23
    check-cast v1, Ljava/util/Map;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->valueType:Ljava/lang/reflect/Type;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapKey:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->valueType:Ljava/lang/reflect/Type;

    .line 36
    .line 37
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v5, v6}, Lcom/alibaba/fastjson2/JSONFactory;->getObjectReader(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->arrayToMapDuplicateHandler:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 44
    .line 45
    .line 46
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->arrayToMap(Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    return-void

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 54
    return-void
.end method
