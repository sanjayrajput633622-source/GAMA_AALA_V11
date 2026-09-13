.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;
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


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p8}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 4
    return-void
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/alibaba/fastjson2/JSONObject;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>(Ljava/util/Map;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 7
    iget-object v5, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 9
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson2/reader/FieldReader;->getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    .line 10
    instance-of v7, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    if-eqz v7, :cond_2

    if-ne v0, p1, :cond_1

    .line 11
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>(Ljava/util/Map;)V

    .line 12
    :cond_1
    check-cast v5, Ljava/util/Map;

    invoke-interface {v6, v5, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v5

    .line 13
    iget-object v4, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
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
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 4
    move-result v0

    .line 5
    const/4 v6, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v6

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 17
    or-long/2addr v4, p4

    .line 18
    move-object v0, p1

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 31
    .line 32
    if-eq v0, v2, :cond_1

    .line 33
    move-object v2, p2

    .line 34
    move-object v3, p3

    .line 35
    move-wide v4, p4

    .line 36
    move-object v0, v1

    .line 37
    move-object v1, p1

    .line 38
    .line 39
    .line 40
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    .line 61
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    const-string v3, "expect object, but "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 75
    move-result v3

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 94
    throw v0

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 98
    .line 99
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 103
    const/4 v2, 0x0

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 107
    move-result v3

    .line 108
    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 120
    move-result-wide v3

    .line 121
    .line 122
    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKeyHashCode:J

    .line 123
    .line 124
    cmp-long v5, v3, v7

    .line 125
    .line 126
    if-nez v5, :cond_8

    .line 127
    .line 128
    if-nez v2, :cond_8

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    .line 132
    move-result-wide v3

    .line 133
    .line 134
    iget-object v5, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v5, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v3, v6}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    if-eqz v4, :cond_5

    .line 151
    move-object v3, v4

    .line 152
    goto :goto_1

    .line 153
    .line 154
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    const-string v4, "auotype not support : "

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 179
    throw v0

    .line 180
    .line 181
    :cond_6
    :goto_1
    if-ne v3, p0, :cond_7

    .line 182
    goto :goto_2

    .line 183
    :cond_7
    const/4 v0, 0x1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    .line 187
    move-object v1, p1

    .line 188
    move-object v2, p2

    .line 189
    move-wide v4, p4

    .line 190
    move-object v0, v3

    .line 191
    move-object v3, p3

    .line 192
    .line 193
    .line 194
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    .line 198
    :cond_8
    const-wide/16 v7, 0x0

    .line 199
    .line 200
    cmp-long v5, v3, v7

    .line 201
    .line 202
    if-nez v5, :cond_9

    .line 203
    goto :goto_2

    .line 204
    .line 205
    .line 206
    :cond_9
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    if-nez v3, :cond_a

    .line 210
    .line 211
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 212
    or-long/2addr v4, p4

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 216
    move-result v4

    .line 217
    .line 218
    if-eqz v4, :cond_a

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 222
    move-result-wide v3

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 226
    move-result-object v3

    .line 227
    .line 228
    :cond_a
    if-nez v3, :cond_b

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 232
    move-result-object v3

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 236
    move-result-object v4

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    goto :goto_2

    .line 241
    .line 242
    .line 243
    :cond_b
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 244
    move-result-object v4

    .line 245
    .line 246
    iget-object v3, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 252
    .line 253
    goto/16 :goto_0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 16
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
    move-object/from16 v2, p1

    .line 5
    .line 6
    iget-boolean v1, v2, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    return-object v1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 24
    return-object v3

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    .line 34
    move-result-wide v4

    .line 35
    .line 36
    or-long v4, v4, p4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray(J)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    return-object v1

    .line 48
    .line 49
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONObject;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 56
    move-result v4

    .line 57
    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 62
    move-result v4

    .line 63
    .line 64
    const/16 v5, 0x74

    .line 65
    .line 66
    if-eq v4, v5, :cond_5

    .line 67
    .line 68
    const/16 v5, 0x66

    .line 69
    .line 70
    if-ne v4, v5, :cond_3

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_3
    const/16 v5, 0x22

    .line 74
    .line 75
    if-eq v4, v5, :cond_6

    .line 76
    .line 77
    const/16 v5, 0x27

    .line 78
    .line 79
    if-eq v4, v5, :cond_6

    .line 80
    .line 81
    const/16 v5, 0x7d

    .line 82
    .line 83
    if-ne v4, v5, :cond_4

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 94
    throw v1

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 98
    return-object v3

    .line 99
    :cond_6
    :goto_1
    const/4 v4, 0x0

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 103
    move-result v5

    .line 104
    .line 105
    if-eqz v5, :cond_8

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 109
    .line 110
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    .line 123
    invoke-interface {v2, v1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v1

    .line 125
    :cond_7
    return-object v1

    .line 126
    .line 127
    :cond_8
    iget-object v5, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 131
    move-result-wide v6

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 135
    move-result-object v8

    .line 136
    .line 137
    if-nez v4, :cond_11

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getTypeKeyHash()J

    .line 141
    move-result-wide v9

    .line 142
    .line 143
    cmp-long v9, v6, v9

    .line 144
    .line 145
    if-nez v9, :cond_11

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    .line 149
    move-result-wide v9

    .line 150
    .line 151
    or-long v9, p4, v9

    .line 152
    .line 153
    iget-wide v11, v5, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 154
    or-long/2addr v9, v11

    .line 155
    .line 156
    sget-object v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 157
    .line 158
    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 159
    and-long/2addr v11, v9

    .line 160
    .line 161
    const-wide/16 v13, 0x0

    .line 162
    .line 163
    cmp-long v11, v11, v13

    .line 164
    .line 165
    if-nez v11, :cond_9

    .line 166
    .line 167
    if-eqz v8, :cond_11

    .line 168
    :cond_9
    move-wide v12, v9

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 172
    move-result-wide v9

    .line 173
    .line 174
    if-eqz v8, :cond_a

    .line 175
    .line 176
    iget-object v11, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-interface/range {v8 .. v13}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    .line 180
    move-result-object v11

    .line 181
    .line 182
    if-nez v11, :cond_a

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 186
    move-result-object v11

    .line 187
    .line 188
    iget-object v14, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-interface {v8, v11, v14, v12, v13}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 192
    move-result-object v8

    .line 193
    .line 194
    if-eqz v8, :cond_a

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 198
    move-result-object v8

    .line 199
    goto :goto_3

    .line 200
    :cond_a
    move-object v8, v3

    .line 201
    .line 202
    :goto_3
    if-nez v8, :cond_b

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v5, v9, v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 206
    move-result-object v8

    .line 207
    .line 208
    :cond_b
    if-nez v8, :cond_d

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 212
    move-result-object v8

    .line 213
    .line 214
    iget-object v9, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 218
    move-result-object v5

    .line 219
    .line 220
    if-eqz v5, :cond_c

    .line 221
    move-object v15, v8

    .line 222
    move-object v8, v5

    .line 223
    move-object v5, v15

    .line 224
    goto :goto_4

    .line 225
    .line 226
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 227
    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    const-string v4, "No suitable ObjectReader found for"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v3

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 248
    .line 249
    .line 250
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 251
    throw v1

    .line 252
    :cond_d
    move-object v5, v3

    .line 253
    .line 254
    :goto_4
    if-ne v8, v0, :cond_e

    .line 255
    goto :goto_5

    .line 256
    .line 257
    .line 258
    :cond_e
    invoke-interface {v8, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 259
    move-result-object v7

    .line 260
    .line 261
    if-eqz v7, :cond_f

    .line 262
    .line 263
    if-nez v5, :cond_f

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 267
    move-result-object v5

    .line 268
    :cond_f
    move-object v9, v5

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    .line 272
    move-result-wide v3

    .line 273
    .line 274
    or-long v5, p4, v3

    .line 275
    const/4 v3, 0x0

    .line 276
    const/4 v4, 0x0

    .line 277
    move-object v1, v8

    .line 278
    .line 279
    .line 280
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 281
    move-result-object v1

    .line 282
    .line 283
    if-eqz v7, :cond_10

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7, v1, v9}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    :cond_10
    return-object v1

    .line 288
    .line 289
    .line 290
    :cond_11
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 291
    move-result-object v5

    .line 292
    .line 293
    if-nez v5, :cond_12

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    .line 297
    move-result-wide v6

    .line 298
    .line 299
    or-long v6, p4, v6

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 303
    move-result v6

    .line 304
    .line 305
    if-eqz v6, :cond_12

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 309
    move-result-wide v5

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 313
    move-result-object v5

    .line 314
    .line 315
    :cond_12
    if-nez v5, :cond_13

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 319
    move-result-object v5

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 323
    move-result-object v6

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v5, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    goto :goto_5

    .line 328
    .line 329
    .line 330
    :cond_13
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 331
    move-result-object v6

    .line 332
    .line 333
    iget-object v5, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v5, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 339
    .line 340
    goto/16 :goto_2
.end method
