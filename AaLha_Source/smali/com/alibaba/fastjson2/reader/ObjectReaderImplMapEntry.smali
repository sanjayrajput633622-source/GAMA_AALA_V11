.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# instance fields
.field volatile keyReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final keyType:Ljava/lang/reflect/Type;

.field volatile valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/util/Map$Entry;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyType:Ljava/lang/reflect/Type;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    .line 10
    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyType:Ljava/lang/reflect/Type;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    move-object v2, p1

    .line 17
    move-object v3, p2

    .line 18
    move-object v4, p3

    .line 19
    move-wide v5, p4

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyType:Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->keyReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 35
    move-object v2, p1

    .line 36
    move-object v3, p2

    .line 37
    move-object v4, p3

    .line 38
    move-wide v5, p4

    .line 39
    .line 40
    .line 41
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 64
    .line 65
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 66
    .line 67
    .line 68
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    :goto_1
    new-instance p2, Ljava/util/AbstractMap$SimpleEntry;

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, v0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    return-object p2

    .line 76
    :cond_4
    move-object v2, p1

    .line 77
    .line 78
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    const-string p3, "entryCnt must be 2, but "

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const/16 v1, 0x3a

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    move-object v3, p1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueType:Ljava/lang/reflect/Type;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p2

    .line 39
    move-object v5, p3

    .line 40
    move-wide v6, p4

    .line 41
    .line 42
    .line 43
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 51
    .line 52
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    return-object p1
.end method
