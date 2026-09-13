.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final arrayClass:Ljava/lang/Class;

.field final arrayClassName:Ljava/lang/String;

.field final arrayClassNameHash:J

.field final arrayType:Ljava/lang/reflect/Type;

.field final componentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/GenericArrayType;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->arrayType:Ljava/lang/reflect/Type;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->arrayClass:Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemType:Ljava/lang/reflect/Type;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->componentClass:Ljava/lang/Class;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v1, "["

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->arrayClassName:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 50
    move-result-wide v0

    .line 51
    .line 52
    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->arrayClassNameHash:J

    .line 53
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

.method public synthetic createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->h(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 7
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
    const/16 p2, -0x6e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 12
    move-result-wide p2

    .line 13
    .line 14
    iget-wide p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->arrayClassNameHash:J

    .line 15
    .line 16
    cmp-long p2, p2, p4

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 26
    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string p4, "not support input typeName "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 50
    move-result p2

    .line 51
    .line 52
    if-lez p2, :cond_2

    .line 53
    .line 54
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 55
    .line 56
    if-nez p3, :cond_2

    .line 57
    .line 58
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 59
    .line 60
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemType:Ljava/lang/reflect/Type;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 67
    .line 68
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->componentClass:Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 72
    move-result-object p3

    .line 73
    const/4 p4, 0x0

    .line 74
    .line 75
    :goto_1
    if-ge p4, p2, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemType:Ljava/lang/reflect/Type;

    .line 80
    const/4 v3, 0x0

    .line 81
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    move-object v1, p1

    .line 84
    .line 85
    .line 86
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-static {p3, p4, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 91
    .line 92
    add-int/lit8 p4, p4, 0x1

    .line 93
    move-object p1, v1

    .line 94
    goto :goto_1

    .line 95
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemType:Ljava/lang/reflect/Type;

    .line 6
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 7
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 9
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    return-object p2

    .line 10
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p1

    const/16 p3, 0x22

    if-ne p1, p3, :cond_6

    .line 11
    instance-of p1, v3, Ljava/lang/reflect/GenericArrayType;

    if-eqz p1, :cond_4

    move-object p1, v3

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 12
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_4

    .line 13
    invoke-virtual {v2, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide p1

    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readBinary()[B

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p2

    .line 19
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/16 p3, 0x5b

    if-ne p1, p3, :cond_b

    .line 21
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 22
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 24
    iget-object p1, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->componentClass:Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x0

    .line 25
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_7

    .line 26
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p1, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_7
    return-object p1

    :cond_8
    move-object v3, v2

    .line 27
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v2, :cond_9

    .line 28
    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemType:Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    move-object v2, v3

    goto :goto_2

    :cond_9
    move-object v2, v3

    .line 29
    iget-object p1, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemType:Ljava/lang/reflect/Type;

    const-class p3, Ljava/lang/String;

    if-ne p1, p3, :cond_a

    .line 30
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :goto_2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    goto :goto_0

    .line 33
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TODO : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

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
