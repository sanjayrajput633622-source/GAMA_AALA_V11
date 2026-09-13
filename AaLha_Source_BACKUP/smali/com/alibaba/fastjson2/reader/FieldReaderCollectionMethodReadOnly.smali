.class Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObject<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 13

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v12, 0x0

    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move/from16 v4, p4

    .line 11
    .line 12
    move-wide/from16 v5, p5

    .line 13
    .line 14
    move-object/from16 v7, p7

    .line 15
    .line 16
    move-object/from16 v10, p8

    .line 17
    .line 18
    move-object/from16 v11, p9

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 22
    .line 23
    instance-of p1, p2, Ljava/lang/reflect/ParameterizedType;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 31
    move-result-object p1

    .line 32
    array-length p2, p1

    .line 33
    .line 34
    if-lez p2, :cond_0

    .line 35
    const/4 p2, 0x0

    .line 36
    .line 37
    aget-object p1, p1, p2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    .line 41
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    .line 42
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
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
    .line 4
    goto/16 :goto_1

    .line 5
    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16
    .line 17
    if-eq p1, v0, :cond_7

    .line 18
    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 20
    .line 21
    if-eq p1, v0, :cond_7

    .line 22
    .line 23
    if-eqz p1, :cond_7

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "java.util.Collections$UnmodifiableRandomAccessList"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_7

    .line 48
    .line 49
    const-string v1, "java.util.Arrays$ArrayList"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-nez v1, :cond_7

    .line 56
    .line 57
    const-string v1, "java.util.Collections$SingletonList"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_7

    .line 64
    .line 65
    const-string v1, "java.util.ImmutableCollections$"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-nez v1, :cond_7

    .line 72
    .line 73
    const-string v1, "java.util.Collections$Unmodifiable"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_2
    if-ne p2, p1, :cond_3

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_3
    check-cast p2, Ljava/util/Collection;

    .line 86
    .line 87
    .line 88
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v0

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    .line 98
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_4
    instance-of v1, v0, Ljava/util/Map;

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    .line 112
    .line 113
    instance-of v2, v1, Ljava/lang/Class;

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    check-cast v1, Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 125
    move-result v1

    .line 126
    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 130
    .line 131
    if-nez v1, :cond_5

    .line 132
    .line 133
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 142
    .line 143
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 144
    .line 145
    check-cast v0, Ljava/util/Map;

    .line 146
    .line 147
    const-wide/16 v2, 0x0

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_0

    .line 156
    :cond_7
    :goto_1
    return-void

    .line 157
    :catch_0
    move-exception p1

    .line 158
    .line 159
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    const-string v1, "set "

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v1, " error"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    throw p2
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    move-object v2, p1

    .line 28
    .line 29
    .line 30
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, p1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    .line 44
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
