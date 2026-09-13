.class final Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;
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
.method public varargs constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3
    .line 4
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 5
    const/4 v8, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v7, p2

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    move-object/from16 v9, p4

    .line 14
    .line 15
    move-object/from16 v10, p5

    .line 16
    .line 17
    move-object/from16 v11, p6

    .line 18
    .line 19
    move-object/from16 v12, p7

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addSubType(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlso:[Ljava/lang/Class;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    if-ne v3, p1, :cond_0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlso:[Ljava/lang/Class;

    .line 17
    array-length v1, v0

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    move-object v5, v0

    .line 25
    .line 26
    check-cast v5, [Ljava/lang/Class;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoNames:[Ljava/lang/String;

    .line 29
    array-length v1, v0

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    move-object v6, v0

    .line 37
    .line 38
    check-cast v6, [Ljava/lang/String;

    .line 39
    array-length v0, v5

    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    aput-object p1, v5, v0

    .line 44
    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    const-class v0, Lcom/alibaba/fastjson2/annotation/JSONType;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/alibaba/fastjson2/annotation/JSONType;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lcom/alibaba/fastjson2/annotation/JSONType;->typeName()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    :cond_2
    if-eqz p2, :cond_3

    .line 62
    array-length p1, v6

    .line 63
    .line 64
    add-int/lit8 p1, p1, -0x1

    .line 65
    .line 66
    aput-object p2, v6, p1

    .line 67
    .line 68
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKey:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoDefault:Ljava/lang/Class;

    .line 77
    .line 78
    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 82
    return-object v1
.end method

.method public createInstance(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
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
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeNameHash:J

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 15
    or-long/2addr v4, p4

    .line 16
    move-object v0, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 29
    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    move-object v2, p2

    .line 32
    move-object v3, p3

    .line 33
    move-wide v4, p4

    .line 34
    move-object v0, v1

    .line 35
    move-object v1, p1

    .line 36
    .line 37
    .line 38
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    .line 42
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    .line 68
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v3, "expect object, but "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 82
    move-result v3

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 101
    throw v0

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->mark()Lcom/alibaba/fastjson2/JSONReader$SavePoint;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 109
    const/4 v2, 0x0

    .line 110
    move-object v3, v6

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 114
    move-result v4

    .line 115
    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    if-nez v3, :cond_5

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    .line 126
    move-result-wide v0

    .line 127
    or-long/2addr v0, p4

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->createInstance(J)Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    :cond_5
    return-object v3

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 137
    move-result-wide v4

    .line 138
    .line 139
    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKeyHashCode:J

    .line 140
    .line 141
    cmp-long v7, v4, v7

    .line 142
    .line 143
    if-nez v7, :cond_b

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    .line 147
    move-result-wide v4

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 151
    move-result-object v7

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v7, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    if-nez v4, :cond_8

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 161
    move-result-object v4

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v4, v6}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    if-eqz v5, :cond_7

    .line 168
    move-object v4, v5

    .line 169
    goto :goto_1

    .line 170
    .line 171
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    const-string v3, "autoType not support : "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 196
    throw v0

    .line 197
    .line 198
    :cond_8
    :goto_1
    if-ne v4, p0, :cond_9

    .line 199
    goto :goto_2

    .line 200
    .line 201
    :cond_9
    if-eqz v2, :cond_a

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->reset(Lcom/alibaba/fastjson2/JSONReader$SavePoint;)V

    .line 205
    :cond_a
    const/4 v0, 0x1

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    .line 209
    move-object v1, p1

    .line 210
    move-object v2, p2

    .line 211
    move-object v3, p3

    .line 212
    move-object v0, v4

    .line 213
    move-wide v4, p4

    .line 214
    .line 215
    .line 216
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 217
    move-result-object v0

    .line 218
    return-object v0

    .line 219
    .line 220
    :cond_b
    const-wide/16 v7, 0x0

    .line 221
    .line 222
    cmp-long v7, v4, v7

    .line 223
    .line 224
    if-nez v7, :cond_c

    .line 225
    goto :goto_2

    .line 226
    .line 227
    .line 228
    :cond_c
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 229
    move-result-object v4

    .line 230
    .line 231
    if-nez v4, :cond_d

    .line 232
    .line 233
    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 234
    or-long/2addr v7, p4

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 238
    move-result v5

    .line 239
    .line 240
    if-eqz v5, :cond_d

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 244
    move-result-wide v4

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 248
    move-result-object v4

    .line 249
    .line 250
    :cond_d
    if-nez v4, :cond_e

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 254
    goto :goto_2

    .line 255
    .line 256
    :cond_e
    if-nez v3, :cond_f

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 260
    move-result-object v3

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    .line 264
    move-result-wide v7

    .line 265
    or-long/2addr v7, p4

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->createInstance(J)Ljava/lang/Object;

    .line 269
    move-result-object v3

    .line 270
    .line 271
    .line 272
    :cond_f
    invoke-virtual {v4, p1, v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 273
    .line 274
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 275
    .line 276
    goto/16 :goto_0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 24
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
    move-wide/from16 v2, p4

    .line 7
    .line 8
    iget-boolean v4, v1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    return-object v1

    .line 16
    .line 17
    :cond_0
    iget-boolean v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 35
    return-object v5

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 39
    move-result v4

    .line 40
    const/4 v6, 0x0

    .line 41
    .line 42
    if-eqz v4, :cond_6

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    .line 46
    move-result-wide v2

    .line 47
    .line 48
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlso:[Ljava/lang/Class;

    .line 49
    array-length v7, v4

    .line 50
    .line 51
    :goto_0
    if-ge v6, v7, :cond_5

    .line 52
    .line 53
    aget-object v8, v4, v6

    .line 54
    .line 55
    const-class v9, Ljava/lang/Enum;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 59
    move-result v9

    .line 60
    .line 61
    if-eqz v9, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 65
    move-result-object v8

    .line 66
    .line 67
    instance-of v9, v8, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    .line 68
    .line 69
    if-eqz v9, :cond_3

    .line 70
    .line 71
    check-cast v8, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;->getEnumByHashCode(J)Ljava/lang/Enum;

    .line 75
    move-result-object v8

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move-object v8, v5

    .line 78
    .line 79
    :goto_1
    if-eqz v8, :cond_4

    .line 80
    return-object v8

    .line 81
    .line 82
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v5, "not support input "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 114
    throw v3

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->mark()Lcom/alibaba/fastjson2/JSONReader$SavePoint;

    .line 118
    move-result-object v4

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    .line 122
    move-result-wide v7

    .line 123
    or-long/2addr v7, v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 127
    move-result-wide v7

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 131
    move-result v9

    .line 132
    .line 133
    const-wide/16 v10, 0x0

    .line 134
    .line 135
    if-eqz v9, :cond_8

    .line 136
    .line 137
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 138
    .line 139
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 140
    and-long/2addr v4, v7

    .line 141
    .line 142
    cmp-long v4, v4, v10

    .line 143
    .line 144
    if-eqz v4, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 148
    move-result-object v1

    .line 149
    return-object v1

    .line 150
    .line 151
    :cond_7
    move-object/from16 v2, p2

    .line 152
    .line 153
    move-object/from16 v3, p3

    .line 154
    move-wide v4, v7

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 158
    move-result-object v1

    .line 159
    move-object v7, v0

    .line 160
    return-object v1

    .line 161
    :cond_8
    move-object v7, v0

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 165
    move-result v0

    .line 166
    .line 167
    if-nez v0, :cond_c

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 171
    move-result v0

    .line 172
    .line 173
    const/16 v8, 0x74

    .line 174
    .line 175
    if-eq v0, v8, :cond_b

    .line 176
    .line 177
    const/16 v8, 0x66

    .line 178
    .line 179
    if-ne v0, v8, :cond_9

    .line 180
    goto :goto_2

    .line 181
    .line 182
    :cond_9
    const/16 v8, 0x22

    .line 183
    .line 184
    if-eq v0, v8, :cond_c

    .line 185
    .line 186
    const/16 v8, 0x27

    .line 187
    .line 188
    if-eq v0, v8, :cond_c

    .line 189
    .line 190
    const/16 v8, 0x7d

    .line 191
    .line 192
    if-ne v0, v8, :cond_a

    .line 193
    goto :goto_3

    .line 194
    .line 195
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 203
    throw v0

    .line 204
    .line 205
    .line 206
    :cond_b
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 207
    return-object v5

    .line 208
    :cond_c
    :goto_3
    move-object v0, v5

    .line 209
    move-object v8, v0

    .line 210
    .line 211
    .line 212
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 213
    move-result v9

    .line 214
    .line 215
    if-eqz v9, :cond_10

    .line 216
    .line 217
    if-nez v0, :cond_d

    .line 218
    .line 219
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 220
    .line 221
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 222
    or-long/2addr v2, v4

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->createInstance(J)Ljava/lang/Object;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    :cond_d
    if-eqz v8, :cond_e

    .line 229
    .line 230
    .line 231
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    .line 235
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    move-result-object v2

    .line 237
    .line 238
    .line 239
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    move-result v3

    .line 241
    .line 242
    if-eqz v3, :cond_e

    .line 243
    .line 244
    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    move-result-object v3

    .line 247
    .line 248
    check-cast v3, Ljava/util/Map$Entry;

    .line 249
    .line 250
    .line 251
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 252
    move-result-object v4

    .line 253
    .line 254
    check-cast v4, Ljava/lang/Long;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 258
    move-result-wide v4

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 262
    move-result-object v4

    .line 263
    .line 264
    .line 265
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 266
    move-result-object v3

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v0, v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    goto :goto_5

    .line 271
    .line 272
    .line 273
    :cond_e
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    .line 277
    move-result-object v1

    .line 278
    .line 279
    if-eqz v1, :cond_f

    .line 280
    .line 281
    .line 282
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-result-object v0

    .line 284
    :cond_f
    return-object v0

    .line 285
    .line 286
    :cond_10
    iget-object v9, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 290
    move-result-wide v12

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 294
    move-result-object v14

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getTypeKeyHash()J

    .line 298
    move-result-wide v15

    .line 299
    .line 300
    cmp-long v15, v12, v15

    .line 301
    .line 302
    if-eqz v15, :cond_12

    .line 303
    .line 304
    iget-object v15, v7, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoDefault:Ljava/lang/Class;

    .line 305
    .line 306
    if-eqz v15, :cond_11

    .line 307
    .line 308
    const-class v5, Ljava/lang/Void;

    .line 309
    .line 310
    if-eq v15, v5, :cond_11

    .line 311
    goto :goto_6

    .line 312
    .line 313
    :cond_11
    move-wide/from16 v20, v10

    .line 314
    goto :goto_7

    .line 315
    .line 316
    .line 317
    :cond_12
    :goto_6
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    .line 318
    move-result-wide v15

    .line 319
    or-long/2addr v15, v2

    .line 320
    .line 321
    move-wide/from16 v20, v10

    .line 322
    .line 323
    iget-wide v10, v9, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 324
    .line 325
    or-long v18, v15, v10

    .line 326
    .line 327
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 328
    .line 329
    iget-wide v10, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 330
    .line 331
    and-long v10, v18, v10

    .line 332
    .line 333
    cmp-long v5, v10, v20

    .line 334
    .line 335
    if-nez v5, :cond_19

    .line 336
    .line 337
    if-eqz v14, :cond_13

    .line 338
    goto :goto_9

    .line 339
    .line 340
    .line 341
    :cond_13
    :goto_7
    invoke-virtual {v7, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 342
    move-result-object v5

    .line 343
    .line 344
    if-nez v5, :cond_14

    .line 345
    .line 346
    .line 347
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    .line 348
    move-result-wide v9

    .line 349
    or-long/2addr v9, v2

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v9, v10}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 353
    move-result v9

    .line 354
    .line 355
    if-eqz v9, :cond_14

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 359
    move-result-wide v9

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7, v9, v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 363
    move-result-object v5

    .line 364
    .line 365
    :cond_14
    if-nez v0, :cond_15

    .line 366
    .line 367
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 368
    .line 369
    iget-wide v9, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 370
    or-long/2addr v9, v2

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7, v9, v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->createInstance(J)Ljava/lang/Object;

    .line 374
    move-result-object v0

    .line 375
    .line 376
    :cond_15
    if-nez v5, :cond_16

    .line 377
    .line 378
    .line 379
    invoke-virtual {v7, v1, v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 380
    goto :goto_8

    .line 381
    .line 382
    :cond_16
    if-nez v0, :cond_18

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 386
    move-result-object v5

    .line 387
    .line 388
    if-nez v8, :cond_17

    .line 389
    .line 390
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 391
    .line 392
    .line 393
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 394
    .line 395
    .line 396
    :cond_17
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 397
    move-result-object v9

    .line 398
    .line 399
    .line 400
    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :goto_8
    move v15, v6

    .line 402
    .line 403
    goto/16 :goto_e

    .line 404
    .line 405
    .line 406
    :cond_18
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 407
    goto :goto_8

    .line 408
    .line 409
    .line 410
    :cond_19
    :goto_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 411
    move-result-wide v10

    .line 412
    .line 413
    const-wide/16 v15, -0x1

    .line 414
    .line 415
    cmp-long v5, v10, v15

    .line 416
    .line 417
    if-nez v5, :cond_1a

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    .line 421
    move-result v5

    .line 422
    .line 423
    if-eqz v5, :cond_1a

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    .line 427
    move-result-object v5

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 431
    move-result-object v10

    .line 432
    .line 433
    .line 434
    invoke-static {v10}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 435
    move-result-wide v15

    .line 436
    .line 437
    move-object/from16 v22, v10

    .line 438
    move-object v10, v5

    .line 439
    .line 440
    move-object/from16 v5, v22

    .line 441
    goto :goto_a

    .line 442
    :cond_1a
    move-wide v15, v10

    .line 443
    const/4 v5, 0x0

    .line 444
    const/4 v10, 0x0

    .line 445
    .line 446
    :goto_a
    if-eqz v14, :cond_1c

    .line 447
    .line 448
    iget-object v11, v7, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 449
    .line 450
    move-object/from16 v17, v11

    .line 451
    .line 452
    .line 453
    invoke-interface/range {v14 .. v19}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    .line 454
    move-result-object v11

    .line 455
    .line 456
    move-wide/from16 v2, v18

    .line 457
    .line 458
    move-wide/from16 v22, v15

    .line 459
    .line 460
    move-object/from16 v16, v5

    .line 461
    move v15, v6

    .line 462
    .line 463
    move-wide/from16 v5, v22

    .line 464
    .line 465
    if-nez v11, :cond_1b

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 469
    move-result-object v11

    .line 470
    .line 471
    move-object/from16 v17, v0

    .line 472
    .line 473
    iget-object v0, v7, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    invoke-interface {v14, v11, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 477
    move-result-object v0

    .line 478
    .line 479
    if-eqz v0, :cond_1d

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 483
    move-result-object v0

    .line 484
    goto :goto_c

    .line 485
    .line 486
    :cond_1b
    move-object/from16 v17, v0

    .line 487
    goto :goto_b

    .line 488
    .line 489
    :cond_1c
    move-object/from16 v17, v0

    .line 490
    .line 491
    move-wide/from16 v2, v18

    .line 492
    .line 493
    move-wide/from16 v22, v15

    .line 494
    .line 495
    move-object/from16 v16, v5

    .line 496
    move v15, v6

    .line 497
    .line 498
    move-wide/from16 v5, v22

    .line 499
    :cond_1d
    :goto_b
    const/4 v0, 0x0

    .line 500
    .line 501
    :goto_c
    if-nez v0, :cond_1e

    .line 502
    .line 503
    .line 504
    invoke-virtual {v7, v9, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 505
    move-result-object v0

    .line 506
    .line 507
    :cond_1e
    if-nez v0, :cond_21

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 511
    move-result-object v0

    .line 512
    .line 513
    iget-object v5, v7, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v9, v0, v5, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 517
    move-result-object v2

    .line 518
    .line 519
    if-nez v2, :cond_1f

    .line 520
    .line 521
    iget-object v3, v7, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoDefault:Ljava/lang/Class;

    .line 522
    .line 523
    if-eqz v3, :cond_1f

    .line 524
    .line 525
    .line 526
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 527
    move-result-object v2

    .line 528
    .line 529
    :cond_1f
    if-eqz v2, :cond_20

    .line 530
    .line 531
    move-object/from16 v22, v2

    .line 532
    move-object v2, v0

    .line 533
    .line 534
    move-object/from16 v0, v22

    .line 535
    goto :goto_d

    .line 536
    .line 537
    :cond_20
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 538
    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    const-string v4, "No suitable ObjectReader found for"

    .line 545
    .line 546
    .line 547
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    move-result-object v0

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 558
    move-result-object v0

    .line 559
    .line 560
    .line 561
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 562
    throw v2

    .line 563
    :cond_21
    const/4 v2, 0x0

    .line 564
    .line 565
    :goto_d
    if-ne v0, v7, :cond_22

    .line 566
    .line 567
    move-object/from16 v0, v17

    .line 568
    .line 569
    :goto_e
    add-int/lit8 v6, v15, 0x1

    .line 570
    .line 571
    move-wide/from16 v2, p4

    .line 572
    .line 573
    move-wide/from16 v10, v20

    .line 574
    const/4 v5, 0x0

    .line 575
    .line 576
    goto/16 :goto_4

    .line 577
    .line 578
    .line 579
    :cond_22
    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 580
    move-result-object v6

    .line 581
    .line 582
    if-eqz v6, :cond_24

    .line 583
    .line 584
    if-nez v2, :cond_24

    .line 585
    .line 586
    if-eqz v16, :cond_23

    .line 587
    .line 588
    move-object/from16 v8, v16

    .line 589
    goto :goto_f

    .line 590
    .line 591
    .line 592
    :cond_23
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 593
    move-result-object v5

    .line 594
    move-object v8, v5

    .line 595
    goto :goto_f

    .line 596
    :cond_24
    move-object v8, v2

    .line 597
    .line 598
    :goto_f
    if-nez v15, :cond_25

    .line 599
    .line 600
    if-eqz v6, :cond_26

    .line 601
    .line 602
    .line 603
    :cond_25
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->reset(Lcom/alibaba/fastjson2/JSONReader$SavePoint;)V

    .line 604
    .line 605
    .line 606
    :cond_26
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFeatures()J

    .line 607
    move-result-wide v2

    .line 608
    .line 609
    or-long v4, p4, v2

    .line 610
    .line 611
    move-object/from16 v2, p2

    .line 612
    .line 613
    move-object/from16 v3, p3

    .line 614
    .line 615
    .line 616
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 617
    move-result-object v0

    .line 618
    .line 619
    if-eqz v6, :cond_28

    .line 620
    .line 621
    if-eqz v10, :cond_27

    .line 622
    .line 623
    .line 624
    invoke-virtual {v6, v0, v10}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 625
    return-object v0

    .line 626
    .line 627
    .line 628
    :cond_27
    invoke-virtual {v6, v0, v8}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 629
    :cond_28
    return-object v0
.end method
