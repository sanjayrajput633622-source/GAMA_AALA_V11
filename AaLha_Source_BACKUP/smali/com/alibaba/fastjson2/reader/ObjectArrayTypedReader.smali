.class final Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# instance fields
.field final componentClass:Ljava/lang/Class;

.field final componentClassHash:J

.field final componentType:Ljava/lang/Class;

.field final typeName:Ljava/lang/String;

.field final typeNameHashCode:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentType:Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentClassHash:J

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const/16 v2, 0x5b

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->typeName:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 42
    move-result-wide v0

    .line 43
    .line 44
    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->typeNameHashCode:J

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentClass:Ljava/lang/Class;

    .line 51
    return-void
.end method


# virtual methods
.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentClass:Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_7

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentType:Ljava/lang/Class;

    .line 37
    .line 38
    if-eq v4, v5, :cond_0

    .line 39
    .line 40
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, v3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentType:Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    move-result v4

    .line 57
    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentType:Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    instance-of v5, v3, Ljava/util/Map;

    .line 69
    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    check-cast v3, Ljava/util/Map;

    .line 73
    .line 74
    new-array v5, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 75
    .line 76
    .line 77
    invoke-interface {v4, v3, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_1
    instance-of v5, v3, Ljava/util/Collection;

    .line 82
    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    check-cast v3, Ljava/util/Collection;

    .line 86
    .line 87
    .line 88
    invoke-interface {v4, v3, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_2
    instance-of v5, v3, [Ljava/lang/Object;

    .line 93
    .line 94
    if-eqz v5, :cond_3

    .line 95
    .line 96
    check-cast v3, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONArray;->of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-interface {v4, v3, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_3
    if-eqz v3, :cond_6

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 115
    move-result v6

    .line 116
    .line 117
    if-eqz v6, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 121
    move-result v5

    .line 122
    .line 123
    new-instance v6, Lcom/alibaba/fastjson2/JSONArray;

    .line 124
    .line 125
    .line 126
    invoke-direct {v6, v5}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 127
    move v7, v1

    .line 128
    .line 129
    :goto_1
    if-ge v7, v5, :cond_4

    .line 130
    .line 131
    .line 132
    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 133
    move-result-object v8

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 139
    goto :goto_1

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-interface {v4, v6, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 144
    goto :goto_2

    .line 145
    .line 146
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 147
    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    const-string p3, "component type not match, expect "

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentType:Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 162
    move-result-object p3

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string p3, ", but "

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p2

    .line 178
    .line 179
    .line 180
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 181
    throw p1

    .line 182
    .line 183
    :cond_6
    :goto_2
    add-int/lit8 v4, v2, 0x1

    .line 184
    .line 185
    aput-object v3, v0, v2

    .line 186
    move v2, v4

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    :cond_7
    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 4
    move-result v1

    .line 5
    .line 6
    const/16 v2, -0x6e

    .line 7
    .line 8
    if-ne v1, v2, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    const-wide/16 v3, 0x4f5b

    .line 18
    .line 19
    cmp-long v3, v1, v3

    .line 20
    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->typeNameHashCode:J

    .line 24
    .line 25
    cmp-long v3, v1, v3

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-wide v4, p4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportAutoType(J)Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->objectClass:Ljava/lang/Class;

    .line 38
    move-object v0, p1

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    move-object v2, p2

    .line 46
    move-object v3, p3

    .line 47
    move-wide v4, p4

    .line 48
    move-object v0, v1

    .line 49
    move-object v1, p1

    .line 50
    .line 51
    .line 52
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    .line 56
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v3, "auotype not support : "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v1

    .line 86
    .line 87
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    const-string v3, "not support autotype : "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 116
    throw v1

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 120
    move-result v6

    .line 121
    const/4 v1, -0x1

    .line 122
    const/4 v7, 0x0

    .line 123
    .line 124
    if-ne v6, v1, :cond_4

    .line 125
    return-object v7

    .line 126
    .line 127
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentClass:Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 132
    move-object v8, v1

    .line 133
    .line 134
    check-cast v8, [Ljava/lang/Object;

    .line 135
    const/4 v1, 0x0

    .line 136
    move v9, v1

    .line 137
    .line 138
    :goto_1
    if-ge v9, v6, :cond_8

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 142
    move-result v1

    .line 143
    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    const-string v2, ".."

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v2

    .line 155
    .line 156
    if-eqz v2, :cond_5

    .line 157
    move-object v1, v8

    .line 158
    goto :goto_2

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v8, v9, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V

    .line 166
    move-object v1, v7

    .line 167
    :goto_2
    move-object v0, v1

    .line 168
    goto :goto_3

    .line 169
    .line 170
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentClass:Ljava/lang/Class;

    .line 171
    .line 172
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentClassHash:J

    .line 173
    move-object v0, p1

    .line 174
    move-wide v4, p4

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    if-eqz v1, :cond_7

    .line 181
    const/4 v2, 0x0

    .line 182
    const/4 v3, 0x0

    .line 183
    move-wide v4, p4

    .line 184
    move-object v0, v1

    .line 185
    move-object v1, p1

    .line 186
    .line 187
    .line 188
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 190
    goto :goto_3

    .line 191
    .line 192
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentType:Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    :goto_3
    aput-object v0, v8, v9

    .line 199
    .line 200
    add-int/lit8 v9, v9, 0x1

    .line 201
    goto :goto_1

    .line 202
    :cond_8
    return-object v8
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    iget-boolean p4, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    .line 21
    move-result p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    return-object p2

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    iget-object p1, v0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentType:Ljava/lang/Class;

    .line 34
    .line 35
    const/16 p2, 0x10

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, [Ljava/lang/Object;

    .line 42
    const/4 p2, 0x0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 46
    move-result p3

    .line 47
    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_2
    add-int/lit8 p3, p2, 0x1

    .line 59
    array-length p4, p1

    .line 60
    .line 61
    sub-int p4, p3, p4

    .line 62
    .line 63
    if-lez p4, :cond_4

    .line 64
    array-length p4, p1

    .line 65
    .line 66
    shr-int/lit8 p5, p4, 0x1

    .line 67
    add-int/2addr p4, p5

    .line 68
    .line 69
    sub-int p5, p4, p3

    .line 70
    .line 71
    if-gez p5, :cond_3

    .line 72
    move p4, p3

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-static {p1, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    :cond_4
    iget-object p4, v0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;->componentType:Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p4}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object p4

    .line 83
    .line 84
    aput-object p4, p1, p2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 88
    move p2, p3

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 93
    move-result p1

    .line 94
    .line 95
    const/16 p3, 0x22

    .line 96
    .line 97
    if-ne p1, p3, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    return-object p2

    .line 109
    .line 110
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 111
    .line 112
    const-string p2, "TODO"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1
.end method
