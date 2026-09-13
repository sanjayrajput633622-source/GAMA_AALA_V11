.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 8

    .line 3
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->getTypeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 6
    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    .line 8
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->getFeatures()J

    move-result-wide v3

    or-long/2addr v3, p2

    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No suitable ObjectReader found for"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-eq v2, p0, :cond_3

    .line 13
    invoke-interface {v2, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->getObjectClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x49

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x7d

    .line 11
    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    const/16 v1, -0x6e

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    const-class v3, Ljava/lang/Object;

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    move-object v2, p1

    .line 27
    .line 28
    move-wide/from16 v6, p4

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    move-object v7, p1

    .line 36
    move-object v8, p2

    .line 37
    move-object v9, p3

    .line 38
    .line 39
    move-wide/from16 v10, p4

    .line 40
    move-object v6, v1

    .line 41
    .line 42
    .line 43
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_1
    const/16 p2, -0x51

    .line 48
    .line 49
    if-ne v0, p2, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 25

    .line 1
    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 16
    .line 17
    or-long v2, p4, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    .line 21
    move-result v4

    .line 22
    .line 23
    const/16 v11, 0x2b

    .line 24
    .line 25
    const/16 v12, 0x27

    .line 26
    .line 27
    const/16 v13, 0x22

    .line 28
    .line 29
    const/16 v14, 0x2f

    .line 30
    .line 31
    const/16 v15, 0x5b

    .line 32
    .line 33
    if-eqz v4, :cond_22

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x0

    .line 42
    .line 43
    const-wide/16 v16, 0x0

    .line 44
    .line 45
    if-eqz v4, :cond_7

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 49
    move-result-wide v18

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide v20, 0x6570797440L

    .line 55
    .line 56
    cmp-long v4, v18, v20

    .line 57
    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReader$Context;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 70
    move-result-wide v6

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 74
    move-result-object v6

    .line 75
    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-interface {v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 80
    move-result-object v7

    .line 81
    .line 82
    if-eqz v7, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 90
    move-result-object v22

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 94
    move-result-object v8

    .line 95
    .line 96
    if-eq v4, v8, :cond_1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    .line 103
    :try_start_0
    invoke-virtual {v8, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 104
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-object v8, v5

    .line 107
    .line 108
    :goto_0
    if-eqz v8, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v7

    .line 113
    .line 114
    if-nez v7, :cond_2

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 118
    move-result-object v6

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move-object v4, v5

    .line 121
    .line 122
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 130
    move-result-object v6

    .line 131
    :cond_3
    :goto_2
    move-object v5, v4

    .line 132
    goto :goto_3

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    if-nez v6, :cond_3

    .line 143
    .line 144
    iget-object v5, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 145
    .line 146
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    .line 150
    move-result v5

    .line 151
    .line 152
    if-nez v5, :cond_5

    .line 153
    goto :goto_2

    .line 154
    .line 155
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    const-string v3, "autoType not support : "

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v2

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 180
    throw v0

    .line 181
    .line 182
    :goto_3
    if-eqz v6, :cond_6

    .line 183
    const/4 v0, 0x1

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    .line 187
    .line 188
    move-object/from16 v2, p2

    .line 189
    .line 190
    move-object/from16 v3, p3

    .line 191
    .line 192
    move-wide/from16 v4, p4

    .line 193
    move-object v0, v6

    .line 194
    .line 195
    .line 196
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 197
    move-result-object v0

    .line 198
    return-object v0

    .line 199
    .line 200
    :cond_6
    move-wide/from16 v6, p4

    .line 201
    goto :goto_4

    .line 202
    .line 203
    :cond_7
    move-wide/from16 v6, p4

    .line 204
    .line 205
    move-wide/from16 v18, v16

    .line 206
    .line 207
    :goto_4
    iget-object v4, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Lcom/alibaba/fastjson2/function/Supplier;

    .line 211
    move-result-object v4

    .line 212
    .line 213
    if-eqz v4, :cond_8

    .line 214
    .line 215
    .line 216
    invoke-interface {v4}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    check-cast v0, Ljava/util/Map;

    .line 220
    goto :goto_5

    .line 221
    .line 222
    :cond_8
    iget-wide v9, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 223
    or-long/2addr v9, v6

    .line 224
    .line 225
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 226
    .line 227
    move-wide/from16 v23, v9

    .line 228
    .line 229
    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 230
    .line 231
    and-long v8, v23, v8

    .line 232
    .line 233
    cmp-long v0, v8, v16

    .line 234
    .line 235
    if-eqz v0, :cond_9

    .line 236
    .line 237
    new-instance v0, Ljava/util/HashMap;

    .line 238
    .line 239
    .line 240
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 241
    goto :goto_5

    .line 242
    .line 243
    :cond_9
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 247
    move-result-wide v6

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->createInstance(J)Ljava/lang/Object;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    check-cast v0, Ljava/util/Map;

    .line 254
    .line 255
    :goto_5
    if-eqz v5, :cond_b

    .line 256
    .line 257
    const-string v4, "java.util.ImmutableCollections$Map1"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result v4

    .line 262
    .line 263
    if-nez v4, :cond_a

    .line 264
    .line 265
    const-string v4, "java.util.ImmutableCollections$MapN"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    move-result v4

    .line 270
    .line 271
    if-nez v4, :cond_a

    .line 272
    .line 273
    const-string v4, "@type"

    .line 274
    .line 275
    .line 276
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    :cond_a
    move-wide/from16 v18, v16

    .line 279
    :cond_b
    const/4 v4, 0x0

    .line 280
    move v6, v4

    .line 281
    .line 282
    .line 283
    :goto_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 284
    move-result v4

    .line 285
    .line 286
    if-eqz v4, :cond_c

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 290
    return-object v0

    .line 291
    .line 292
    .line 293
    :cond_c
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 294
    move-result v4

    .line 295
    .line 296
    if-ne v4, v14, :cond_d

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 300
    .line 301
    :cond_d
    const/16 v4, 0x3a

    .line 302
    .line 303
    if-nez v6, :cond_e

    .line 304
    .line 305
    if-nez v5, :cond_e

    .line 306
    .line 307
    cmp-long v7, v18, v16

    .line 308
    .line 309
    if-eqz v7, :cond_e

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 313
    move-result-object v7

    .line 314
    goto :goto_7

    .line 315
    .line 316
    .line 317
    :cond_e
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    .line 318
    move-result v7

    .line 319
    .line 320
    if-eqz v7, :cond_f

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    .line 324
    move-result-object v7

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 328
    goto :goto_7

    .line 329
    .line 330
    .line 331
    :cond_f
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    .line 332
    move-result-object v7

    .line 333
    .line 334
    :goto_7
    const/16 v9, 0x7b

    .line 335
    .line 336
    if-nez v7, :cond_13

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 340
    move-result v7

    .line 341
    .line 342
    if-eq v7, v9, :cond_11

    .line 343
    .line 344
    if-ne v7, v15, :cond_10

    .line 345
    goto :goto_8

    .line 346
    .line 347
    .line 348
    :cond_10
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    .line 349
    move-result-object v7

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 353
    move-result v8

    .line 354
    .line 355
    if-ne v8, v4, :cond_13

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 359
    goto :goto_9

    .line 360
    .line 361
    .line 362
    :cond_11
    :goto_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 363
    move-result-object v7

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 367
    move-result v4

    .line 368
    .line 369
    if-eqz v4, :cond_12

    .line 370
    goto :goto_9

    .line 371
    .line 372
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 373
    .line 374
    const-string v2, "illegal input"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    move-result-object v1

    .line 379
    .line 380
    .line 381
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 382
    throw v0

    .line 383
    .line 384
    .line 385
    :cond_13
    :goto_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 386
    move-result v10

    .line 387
    .line 388
    if-eq v10, v13, :cond_1d

    .line 389
    .line 390
    if-eq v10, v12, :cond_1d

    .line 391
    .line 392
    if-eq v10, v11, :cond_1c

    .line 393
    .line 394
    const/16 v4, 0x53

    .line 395
    .line 396
    if-eq v10, v4, :cond_1a

    .line 397
    .line 398
    if-eq v10, v15, :cond_19

    .line 399
    .line 400
    const/16 v8, 0x66

    .line 401
    .line 402
    if-eq v10, v8, :cond_18

    .line 403
    .line 404
    const/16 v4, 0x6e

    .line 405
    .line 406
    if-eq v10, v4, :cond_17

    .line 407
    .line 408
    const/16 v4, 0x74

    .line 409
    .line 410
    if-eq v10, v4, :cond_18

    .line 411
    .line 412
    if-eq v10, v9, :cond_14

    .line 413
    .line 414
    const/16 v4, 0x2d

    .line 415
    .line 416
    if-eq v10, v4, :cond_1c

    .line 417
    .line 418
    const/16 v9, 0x2e

    .line 419
    .line 420
    if-eq v10, v9, :cond_1c

    .line 421
    .line 422
    .line 423
    packed-switch v10, :pswitch_data_0

    .line 424
    .line 425
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 429
    move-result-object v1

    .line 430
    .line 431
    .line 432
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 433
    throw v0

    .line 434
    .line 435
    .line 436
    :cond_14
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 437
    move-result v9

    .line 438
    .line 439
    if-eqz v9, :cond_16

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 443
    move-result-object v9

    .line 444
    .line 445
    const-string v10, ".."

    .line 446
    .line 447
    .line 448
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    move-result v10

    .line 450
    .line 451
    if-eqz v10, :cond_15

    .line 452
    move-object v9, v0

    .line 453
    goto :goto_a

    .line 454
    .line 455
    .line 456
    :cond_15
    invoke-static {v9}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 457
    move-result-object v9

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v0, v7, v9}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 461
    .line 462
    move-object/from16 p2, v5

    .line 463
    .line 464
    goto/16 :goto_b

    .line 465
    .line 466
    .line 467
    :cond_16
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    .line 468
    move-result-object v9

    .line 469
    goto :goto_a

    .line 470
    .line 471
    .line 472
    :cond_17
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNullOrNewDate()Ljava/util/Date;

    .line 473
    move-result-object v9

    .line 474
    goto :goto_a

    .line 475
    .line 476
    .line 477
    :cond_18
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 478
    move-result v9

    .line 479
    .line 480
    .line 481
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 482
    move-result-object v9

    .line 483
    goto :goto_a

    .line 484
    .line 485
    .line 486
    :cond_19
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 487
    move-result-object v9

    .line 488
    goto :goto_a

    .line 489
    .line 490
    .line 491
    :cond_1a
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    .line 492
    move-result v9

    .line 493
    .line 494
    if-eqz v9, :cond_1b

    .line 495
    .line 496
    const-class v9, Ljava/util/HashSet;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    .line 500
    move-result-object v9

    .line 501
    goto :goto_a

    .line 502
    .line 503
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 507
    move-result-object v1

    .line 508
    .line 509
    .line 510
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 511
    throw v0

    .line 512
    .line 513
    .line 514
    :cond_1c
    :pswitch_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    .line 515
    move-result-object v9

    .line 516
    goto :goto_a

    .line 517
    .line 518
    .line 519
    :cond_1d
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 520
    move-result-object v9

    .line 521
    .line 522
    :goto_a
    if-nez v9, :cond_1e

    .line 523
    .line 524
    sget-object v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 525
    .line 526
    move-object/from16 p2, v5

    .line 527
    .line 528
    iget-wide v4, v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 529
    and-long/2addr v4, v2

    .line 530
    .line 531
    cmp-long v4, v4, v16

    .line 532
    .line 533
    if-eqz v4, :cond_1f

    .line 534
    goto :goto_b

    .line 535
    .line 536
    :cond_1e
    move-object/from16 p2, v5

    .line 537
    .line 538
    .line 539
    :cond_1f
    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    move-result-object v4

    .line 541
    .line 542
    if-eqz v4, :cond_21

    .line 543
    .line 544
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 545
    .line 546
    iget-wide v11, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 547
    and-long/2addr v11, v2

    .line 548
    .line 549
    cmp-long v5, v11, v16

    .line 550
    .line 551
    if-eqz v5, :cond_21

    .line 552
    .line 553
    instance-of v5, v4, Ljava/util/Collection;

    .line 554
    .line 555
    if-eqz v5, :cond_20

    .line 556
    move-object v5, v4

    .line 557
    .line 558
    check-cast v5, Ljava/util/Collection;

    .line 559
    .line 560
    .line 561
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    goto :goto_b

    .line 566
    .line 567
    .line 568
    :cond_20
    invoke-static {v4, v9}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    .line 569
    move-result-object v4

    .line 570
    .line 571
    .line 572
    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    :cond_21
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 575
    .line 576
    move-object/from16 v5, p2

    .line 577
    .line 578
    const/16 v11, 0x2b

    .line 579
    .line 580
    const/16 v12, 0x27

    .line 581
    .line 582
    goto/16 :goto_6

    .line 583
    .line 584
    .line 585
    :cond_22
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 586
    move-result v0

    .line 587
    .line 588
    if-ne v0, v14, :cond_23

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 595
    move-result v0

    .line 596
    .line 597
    :cond_23
    if-eq v0, v13, :cond_2b

    .line 598
    .line 599
    const/16 v2, 0x27

    .line 600
    .line 601
    if-eq v0, v2, :cond_2b

    .line 602
    .line 603
    const/16 v10, 0x2b

    .line 604
    .line 605
    if-eq v0, v10, :cond_2a

    .line 606
    .line 607
    const/16 v4, 0x53

    .line 608
    .line 609
    if-eq v0, v4, :cond_28

    .line 610
    .line 611
    if-eq v0, v15, :cond_27

    .line 612
    .line 613
    const/16 v8, 0x66

    .line 614
    .line 615
    if-eq v0, v8, :cond_26

    .line 616
    .line 617
    const/16 v4, 0x6e

    .line 618
    .line 619
    if-eq v0, v4, :cond_25

    .line 620
    .line 621
    const/16 v4, 0x74

    .line 622
    .line 623
    if-eq v0, v4, :cond_26

    .line 624
    .line 625
    const/16 v2, 0x78

    .line 626
    .line 627
    if-eq v0, v2, :cond_24

    .line 628
    .line 629
    const/16 v4, 0x2d

    .line 630
    .line 631
    if-eq v0, v4, :cond_2a

    .line 632
    .line 633
    const/16 v9, 0x2e

    .line 634
    .line 635
    if-eq v0, v9, :cond_2a

    .line 636
    .line 637
    .line 638
    packed-switch v0, :pswitch_data_1

    .line 639
    .line 640
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 644
    move-result-object v1

    .line 645
    .line 646
    .line 647
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 648
    throw v0

    .line 649
    .line 650
    .line 651
    :cond_24
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readBinary()[B

    .line 652
    move-result-object v0

    .line 653
    return-object v0

    .line 654
    .line 655
    .line 656
    :cond_25
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNullOrNewDate()Ljava/util/Date;

    .line 657
    move-result-object v0

    .line 658
    return-object v0

    .line 659
    .line 660
    .line 661
    :cond_26
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 662
    move-result v0

    .line 663
    .line 664
    .line 665
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 666
    move-result-object v0

    .line 667
    return-object v0

    .line 668
    .line 669
    .line 670
    :cond_27
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 671
    move-result-object v0

    .line 672
    return-object v0

    .line 673
    .line 674
    .line 675
    :cond_28
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    .line 676
    move-result v0

    .line 677
    .line 678
    if-eqz v0, :cond_29

    .line 679
    .line 680
    new-instance v0, Ljava/util/HashSet;

    .line 681
    .line 682
    .line 683
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Collection;)V

    .line 687
    return-object v0

    .line 688
    .line 689
    :cond_29
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 693
    move-result-object v1

    .line 694
    .line 695
    .line 696
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 697
    throw v0

    .line 698
    .line 699
    .line 700
    :cond_2a
    :pswitch_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    .line 701
    move-result-object v0

    .line 702
    return-object v0

    .line 703
    .line 704
    .line 705
    :cond_2b
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 706
    move-result-object v0

    .line 707
    return-object v0

    .line 708
    nop

    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
