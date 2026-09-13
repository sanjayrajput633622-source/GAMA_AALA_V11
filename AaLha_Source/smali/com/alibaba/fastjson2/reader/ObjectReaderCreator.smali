.class public Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;,
        Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    return-object p0

    .line 7
    :catchall_0
    move-exception p0

    .line 8
    .line 9
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 10
    .line 11
    const-string v0, "create instance error"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    throw p1
.end method

.method public static synthetic c(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p8

    .line 5
    .line 6
    move-object/from16 v14, p10

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 13
    .line 14
    move-object/from16 v2, p2

    .line 15
    .line 16
    move-object/from16 v3, p3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0, v3, v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    iget-object v3, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    move-object/from16 v5, p5

    .line 46
    goto :goto_3

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 54
    move-result v5

    .line 55
    .line 56
    if-le v3, v5, :cond_4

    .line 57
    .line 58
    move-object/from16 v3, p4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 62
    move-result v3

    .line 63
    .line 64
    if-nez v3, :cond_3

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_3
    move/from16 v3, p7

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;I)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_2
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    const-class v5, Ljava/lang/Object;

    .line 79
    .line 80
    if-eq v3, v5, :cond_c

    .line 81
    .line 82
    .line 83
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    move-object/from16 v5, p5

    .line 87
    .line 88
    if-ne v3, v5, :cond_c

    .line 89
    .line 90
    const-class v3, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v14, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    if-nez v3, :cond_5

    .line 97
    .line 98
    move-object/from16 v3, p6

    .line 99
    .line 100
    iget-wide v6, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 101
    .line 102
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 103
    .line 104
    iget-wide v8, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 105
    and-long/2addr v6, v8

    .line 106
    .line 107
    const-wide/16 v8, 0x0

    .line 108
    .line 109
    cmp-long v3, v6, v8

    .line 110
    .line 111
    if-eqz v3, :cond_c

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_3
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 115
    move-result-object v3

    .line 116
    array-length v3, v3

    .line 117
    .line 118
    if-nez v3, :cond_7

    .line 119
    .line 120
    iget v6, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 121
    .line 122
    iget-wide v7, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 123
    .line 124
    iget-object v9, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v10, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 127
    .line 128
    iget-object v11, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 132
    move-result-object v12

    .line 133
    .line 134
    .line 135
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 136
    move-result-object v13

    .line 137
    const/4 v15, 0x0

    .line 138
    .line 139
    move-object/from16 v4, p5

    .line 140
    move-object v3, v5

    .line 141
    move-object v5, v2

    .line 142
    .line 143
    move-object/from16 v2, p0

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {v2 .. v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    check-cast v2, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 154
    .line 155
    if-nez v2, :cond_6

    .line 156
    .line 157
    .line 158
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void

    .line 160
    .line 161
    .line 162
    :cond_6
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I

    .line 163
    move-result v2

    .line 164
    .line 165
    if-lez v2, :cond_c

    .line 166
    .line 167
    .line 168
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void

    .line 170
    :cond_7
    move-object v5, v2

    .line 171
    .line 172
    .line 173
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    aget-object v12, v2, v4

    .line 177
    .line 178
    .line 179
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    aget-object v13, v2, v4

    .line 183
    const/4 v2, 0x1

    .line 184
    .line 185
    .line 186
    invoke-virtual {v14, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 187
    .line 188
    iget v6, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 189
    .line 190
    iget-wide v7, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 191
    .line 192
    iget-object v9, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v10, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 195
    .line 196
    iget-object v11, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 197
    const/4 v15, 0x0

    .line 198
    .line 199
    move-object/from16 v2, p0

    .line 200
    .line 201
    move-object/from16 v3, p5

    .line 202
    .line 203
    move/from16 v16, v4

    .line 204
    .line 205
    move-object/from16 v4, p9

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {v2 .. v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 209
    move-result-object v6

    .line 210
    move-object v2, v5

    .line 211
    .line 212
    .line 213
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    check-cast v3, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 217
    .line 218
    if-nez v3, :cond_8

    .line 219
    .line 220
    .line 221
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    goto :goto_4

    .line 223
    .line 224
    .line 225
    :cond_8
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson2/reader/FieldReader;->compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I

    .line 226
    move-result v3

    .line 227
    .line 228
    if-lez v3, :cond_9

    .line 229
    .line 230
    .line 231
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    :cond_9
    :goto_4
    iget-object v3, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 234
    .line 235
    if-eqz v3, :cond_c

    .line 236
    .line 237
    move/from16 v4, v16

    .line 238
    :goto_5
    array-length v5, v3

    .line 239
    .line 240
    if-ge v4, v5, :cond_c

    .line 241
    .line 242
    aget-object v5, v3, v4

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    move-result v6

    .line 247
    .line 248
    if-eqz v6, :cond_b

    .line 249
    .line 250
    :cond_a
    move-object/from16 v16, v2

    .line 251
    .line 252
    move-object/from16 v17, v3

    .line 253
    .line 254
    move/from16 v18, v4

    .line 255
    goto :goto_6

    .line 256
    .line 257
    .line 258
    :cond_b
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-result-object v6

    .line 260
    .line 261
    check-cast v6, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 262
    .line 263
    if-nez v6, :cond_a

    .line 264
    .line 265
    iget v6, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 266
    .line 267
    iget-wide v7, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 268
    .line 269
    iget-object v9, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 270
    .line 271
    iget-object v10, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 272
    .line 273
    iget-object v11, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 274
    const/4 v15, 0x0

    .line 275
    .line 276
    move-object/from16 v14, p10

    .line 277
    .line 278
    move-object/from16 v16, v2

    .line 279
    .line 280
    move-object/from16 v17, v3

    .line 281
    .line 282
    move/from16 v18, v4

    .line 283
    .line 284
    move-object/from16 v2, p0

    .line 285
    .line 286
    move-object/from16 v3, p5

    .line 287
    .line 288
    move-object/from16 v4, p9

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {v2 .. v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 292
    move-result-object v6

    .line 293
    .line 294
    .line 295
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    :goto_6
    add-int/lit8 v4, v18, 0x1

    .line 298
    .line 299
    move-object/from16 v2, v16

    .line 300
    .line 301
    move-object/from16 v3, v17

    .line 302
    goto :goto_5

    .line 303
    :cond_c
    :goto_7
    return-void
.end method

.method public static synthetic d(Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eq v0, p0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0, p2, p6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p3, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    .line 22
    .line 23
    sget-object p2, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-static {p6, p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;ZLjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/codec/FieldInfo;->readUsing:Ljava/lang/Class;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Lcom/alibaba/fastjson2/codec/FieldInfo;->readUsing:Ljava/lang/Class;

    .line 44
    .line 45
    iput-object p0, p5, Lcom/alibaba/fastjson2/codec/FieldInfo;->readUsing:Ljava/lang/Class;

    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public static getInitReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/FieldInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/codec/FieldInfo;->getInitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    iget-object v1, p3, Lcom/alibaba/fastjson2/codec/FieldInfo;->keyUsing:Ljava/lang/Class;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p3, Lcom/alibaba/fastjson2/codec/FieldInfo;->valueUsing:Ljava/lang/Class;

    .line 13
    .line 14
    if-eqz v1, :cond_6

    .line 15
    .line 16
    :cond_0
    const-class v1, Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    iget-object v1, p3, Lcom/alibaba/fastjson2/codec/FieldInfo;->keyUsing:Ljava/lang/Class;

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    :cond_1
    move-object v1, v3

    .line 44
    .line 45
    :goto_0
    iget-object v4, p3, Lcom/alibaba/fastjson2/codec/FieldInfo;->valueUsing:Ljava/lang/Class;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Lcom/alibaba/fastjson2/reader/ObjectReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    move-object v3, v2

    .line 62
    .line 63
    :catch_1
    :cond_2
    if-nez v1, :cond_3

    .line 64
    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    :cond_3
    iget-wide v4, p3, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    instance-of p3, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 74
    .line 75
    if-eqz p3, :cond_6

    .line 76
    .line 77
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    iput-object v1, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 82
    .line 83
    :cond_4
    if-eqz v3, :cond_5

    .line 84
    .line 85
    iput-object v3, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 86
    :cond_5
    return-object p1

    .line 87
    .line 88
    :cond_6
    if-nez v0, :cond_9

    .line 89
    .line 90
    const-class p1, Ljava/math/BigDecimal;

    .line 91
    const/4 p3, 0x0

    .line 92
    .line 93
    if-ne p2, p1, :cond_7

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;

    .line 100
    .line 101
    if-eq p0, p1, :cond_9

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_7
    const-class p1, Ljava/math/BigInteger;

    .line 105
    .line 106
    if-ne p2, p1, :cond_8

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 110
    move-result-object p0

    .line 111
    .line 112
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;

    .line 113
    .line 114
    if-eq p0, p1, :cond_9

    .line 115
    goto :goto_1

    .line 116
    .line 117
    :cond_8
    const-class p1, Ljava/util/Date;

    .line 118
    .line 119
    if-ne p2, p1, :cond_9

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 123
    move-result-object p0

    .line 124
    .line 125
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    .line 126
    .line 127
    if-eq p0, p1, :cond_9

    .line 128
    :goto_1
    move-object v0, p0

    .line 129
    :cond_9
    return-object v0
.end method


# virtual methods
.method public createBuildFunction(Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    .line 6
    new-instance v0, Lcom/alibaba/fastjson2/reader/f;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/reader/f;-><init>(Ljava/lang/reflect/Method;)V

    .line 10
    return-object v0
.end method

.method public createEnumReader(Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 11

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    move-object v7, v1

    .line 11
    .line 12
    check-cast v7, [Ljava/lang/Enum;

    .line 13
    .line 14
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    .line 21
    :goto_0
    if-eqz v7, :cond_4

    .line 22
    array-length v4, v7

    .line 23
    .line 24
    if-ge v3, v4, :cond_4

    .line 25
    .line 26
    aget-object v4, v7, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    .line 33
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 34
    move-result-wide v8

    .line 35
    .line 36
    .line 37
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    move-result-object v6

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v0, p1, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 52
    .line 53
    iget-object v6, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 59
    move-result v8

    .line 60
    .line 61
    if-nez v8, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v5

    .line 66
    .line 67
    if-nez v5, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-static {v6}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 71
    move-result-wide v5

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    :cond_0
    iget-object v5, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v5, :cond_3

    .line 83
    array-length v6, v5

    .line 84
    move v8, v2

    .line 85
    .line 86
    :goto_1
    if-ge v8, v6, :cond_3

    .line 87
    .line 88
    aget-object v9, v5, v8

    .line 89
    .line 90
    if-eqz v9, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 94
    move-result v10

    .line 95
    .line 96
    if-eqz v10, :cond_1

    .line 97
    goto :goto_2

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-static {v9}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 101
    move-result-wide v9

    .line 102
    .line 103
    .line 104
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    move-result-object v9

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :catch_0
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    move v0, v2

    .line 116
    .line 117
    :goto_3
    if-eqz v7, :cond_6

    .line 118
    array-length v3, v7

    .line 119
    .line 120
    if-ge v0, v3, :cond_6

    .line 121
    .line 122
    aget-object v3, v7, v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    .line 128
    .line 129
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 130
    move-result-wide v5

    .line 131
    .line 132
    .line 133
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v4

    .line 146
    .line 147
    if-eqz v4, :cond_5

    .line 148
    goto :goto_4

    .line 149
    .line 150
    .line 151
    :cond_5
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 152
    move-result-wide v4

    .line 153
    .line 154
    .line 155
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    move-result-object v4

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v4, v3}, Lcom/alibaba/fastjson2/reader/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 162
    goto :goto_3

    .line 163
    .line 164
    .line 165
    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 166
    move-result v0

    .line 167
    .line 168
    new-array v8, v0, [J

    .line 169
    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 172
    move-result-object v3

    .line 173
    .line 174
    .line 175
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object v3

    .line 177
    move v4, v2

    .line 178
    .line 179
    .line 180
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v5

    .line 182
    .line 183
    if-eqz v5, :cond_7

    .line 184
    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v5

    .line 188
    .line 189
    check-cast v5, Ljava/lang/Long;

    .line 190
    .line 191
    add-int/lit8 v6, v4, 0x1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 195
    move-result-wide v9

    .line 196
    .line 197
    aput-wide v9, v8, v4

    .line 198
    move v4, v6

    .line 199
    goto :goto_5

    .line 200
    .line 201
    .line 202
    :cond_7
    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    .line 203
    .line 204
    .line 205
    invoke-static {p1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    .line 206
    move-result-object v3

    .line 207
    .line 208
    if-nez v3, :cond_8

    .line 209
    .line 210
    if-eqz p3, :cond_8

    .line 211
    .line 212
    iget-object v4, p3, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 213
    .line 214
    .line 215
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-result-object v4

    .line 217
    .line 218
    check-cast v4, Ljava/lang/Class;

    .line 219
    .line 220
    if-eqz v4, :cond_8

    .line 221
    .line 222
    .line 223
    invoke-static {v4, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    .line 224
    move-result-object p3

    .line 225
    .line 226
    instance-of v4, p3, Ljava/lang/reflect/Field;

    .line 227
    .line 228
    if-eqz v4, :cond_9

    .line 229
    .line 230
    .line 231
    :try_start_1
    invoke-interface {p3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 232
    move-result-object p3

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 236
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :catch_1
    :cond_8
    :goto_6
    move-object v5, v3

    .line 238
    goto :goto_7

    .line 239
    .line 240
    :cond_9
    instance-of v4, p3, Ljava/lang/reflect/Method;

    .line 241
    .line 242
    if-eqz v4, :cond_8

    .line 243
    .line 244
    .line 245
    :try_start_2
    invoke-interface {p3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 246
    move-result-object p3

    .line 247
    const/4 v4, 0x0

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, p3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 251
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    goto :goto_6

    .line 253
    .line 254
    :goto_7
    new-array v6, v0, [Ljava/lang/Enum;

    .line 255
    move p3, v2

    .line 256
    .line 257
    :goto_8
    if-ge p3, v0, :cond_a

    .line 258
    .line 259
    aget-wide v3, v8, p3

    .line 260
    .line 261
    .line 262
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    move-result-object v3

    .line 264
    .line 265
    .line 266
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    move-result-object v3

    .line 268
    .line 269
    check-cast v3, Ljava/lang/Enum;

    .line 270
    .line 271
    aput-object v3, v6, p3

    .line 272
    .line 273
    add-int/lit8 p3, p3, 0x1

    .line 274
    goto :goto_8

    .line 275
    .line 276
    :cond_a
    if-nez p2, :cond_b

    .line 277
    .line 278
    if-nez v5, :cond_b

    .line 279
    .line 280
    if-eqz v7, :cond_b

    .line 281
    array-length p3, v7

    .line 282
    const/4 v1, 0x2

    .line 283
    .line 284
    if-ne p3, v1, :cond_b

    .line 285
    .line 286
    aget-object p3, v7, v2

    .line 287
    .line 288
    :goto_9
    if-ge v2, v0, :cond_b

    .line 289
    .line 290
    aget-object p3, v6, v2

    .line 291
    .line 292
    add-int/lit8 v2, v2, 0x1

    .line 293
    goto :goto_9

    .line 294
    .line 295
    :cond_b
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    .line 296
    move-object v3, p1

    .line 297
    move-object v4, p2

    .line 298
    .line 299
    .line 300
    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Member;[Ljava/lang/Enum;[Ljava/lang/Enum;[J)V

    .line 301
    return-object v2
.end method

.method public varargs createFactoryFunction(Ljava/lang/reflect/Method;[Ljava/lang/String;)Lcom/alibaba/fastjson2/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    .line 6
    new-instance v0, Lcom/alibaba/fastjson2/reader/FactoryFunction;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FactoryFunction;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public createFieldReader(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReader(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 1
    invoke-virtual/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 9
    invoke-virtual/range {v1 .. v16}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    return-object v0
.end method

.method public createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/BiConsumer;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v8, p12

    move-object/from16 v10, p13

    .line 10
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v3, :cond_1

    .line 13
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    move-object v9, v0

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal defaultValue : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_3

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 18
    const-string v5, "java.lang"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 19
    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_3
    if-eqz v10, :cond_4

    .line 20
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;

    const-wide/high16 v4, 0x8000000000000L

    or-long v4, p5, v4

    move-object v1, v9

    move-object v9, v8

    move-object v8, v1

    move-object/from16 v1, p3

    move-object/from16 v7, p7

    move-wide v5, v4

    move/from16 v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 21
    iput-object v10, v0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object v0

    :cond_4
    move-object v2, v3

    move-object v8, v9

    .line 22
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_5

    .line 23
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;

    move-object v5, v8

    check-cast v5, Ljava/lang/Integer;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-object/from16 v4, p7

    move-object/from16 v6, p12

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 24
    :cond_5
    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_6

    .line 25
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32Field;

    move-object v7, v8

    check-cast v7, Ljava/lang/Integer;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32Field;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 26
    :cond_6
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_7

    .line 27
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;

    move-object v7, v8

    check-cast v7, Ljava/lang/Long;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Long;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 28
    :cond_7
    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_8

    .line 29
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64Field;

    move-object v7, v8

    check-cast v7, Ljava/lang/Long;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64Field;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Long;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 30
    :cond_8
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_9

    .line 31
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueField;

    move-object v7, v8

    check-cast v7, Ljava/lang/Short;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Short;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 32
    :cond_9
    const-class v3, Ljava/lang/Short;

    if-ne v2, v3, :cond_a

    .line 33
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16Field;

    move-object v7, v8

    check-cast v7, Ljava/lang/Short;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt16Field;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Short;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 34
    :cond_a
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_b

    .line 35
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValueField;

    move-object v6, v8

    check-cast v6, Ljava/lang/Boolean;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValueField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 36
    :cond_b
    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_c

    .line 37
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolField;

    move-object v7, v8

    check-cast v7, Ljava/lang/Boolean;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderBoolField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 38
    :cond_c
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_d

    .line 39
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueField;

    move-object v7, v8

    check-cast v7, Ljava/lang/Byte;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Byte;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 40
    :cond_d
    const-class v3, Ljava/lang/Byte;

    if-ne v2, v3, :cond_e

    .line 41
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8Field;

    move-object v7, v8

    check-cast v7, Ljava/lang/Byte;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt8Field;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Byte;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 42
    :cond_e
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_f

    .line 43
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatValueField;

    move-object v7, v8

    check-cast v7, Ljava/lang/Float;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderFloatValueField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Float;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 44
    :cond_f
    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_10

    .line 45
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatField;

    move-object v7, v8

    check-cast v7, Ljava/lang/Float;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderFloatField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Float;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 46
    :cond_10
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_11

    .line 47
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueField;

    move-object v7, v8

    check-cast v7, Ljava/lang/Double;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Double;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 48
    :cond_11
    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_12

    .line 49
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleField;

    move-object v7, v8

    check-cast v7, Ljava/lang/Double;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Double;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 50
    :cond_12
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_13

    .line 51
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueField;

    move-object v6, v8

    check-cast v6, Ljava/lang/Character;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Character;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 52
    :cond_13
    const-class v3, Ljava/math/BigDecimal;

    if-ne v2, v3, :cond_14

    .line 53
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBigDecimalField;

    move-object v7, v8

    check-cast v7, Ljava/math/BigDecimal;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderBigDecimalField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/math/BigDecimal;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 54
    :cond_14
    const-class v3, Ljava/math/BigInteger;

    if-ne v2, v3, :cond_15

    .line 55
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBigIntegerField;

    move-object v7, v8

    check-cast v7, Ljava/math/BigInteger;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderBigIntegerField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/math/BigInteger;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 56
    :cond_15
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_16

    .line 57
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 58
    :cond_16
    const-class v4, Ljava/util/Date;

    if-ne v2, v4, :cond_17

    .line 59
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderDate;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v10, p12

    move-object v3, v2

    move-object v9, v8

    move-object/from16 v8, p8

    move-object/from16 v2, p10

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderDate;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 60
    :cond_17
    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v2, v4, :cond_18

    .line 61
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicBooleanFieldReadOnly;

    move-object v5, v8

    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-object/from16 v4, p7

    move-object/from16 v6, p12

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicBooleanFieldReadOnly;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 62
    :cond_18
    const-class v4, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v2, v4, :cond_19

    .line 63
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReferenceField;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p12

    move-object v3, v2

    move-object/from16 v2, p10

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReferenceField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    :cond_19
    move-object/from16 v12, p12

    move-object v4, v2

    move-object/from16 v2, p10

    .line 64
    instance-of v5, v2, Ljava/lang/Class;

    const/4 v6, 0x0

    if-nez v5, :cond_1a

    .line 65
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;

    move-result-object v5

    move-object/from16 v7, p1

    invoke-static {v5, v7, v12, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getFieldType(Lcom/alibaba/fastjson2/TypeReference;Ljava/lang/Class;Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 66
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    goto :goto_1

    :cond_1a
    move-object v5, v6

    move-object v7, v5

    .line 67
    :goto_1
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v9

    .line 68
    const-class v10, Ljava/util/Collection;

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_21

    .line 69
    instance-of v10, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_1e

    .line 70
    move-object v10, v5

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 71
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    .line 72
    array-length v11, v10

    if-ne v11, v0, :cond_1e

    .line 73
    aget-object v4, v10, v1

    move-object v2, v5

    .line 74
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v3, :cond_1d

    if-eqz v9, :cond_1c

    .line 75
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long v0, p5, v0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_1b

    .line 76
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;

    const-class v5, Ljava/lang/String;

    const/4 v11, 0x0

    const-class v4, Ljava/lang/String;

    move-object/from16 v1, p3

    move/from16 v6, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object v3, v7

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Ljava/lang/reflect/Field;)V

    return-object v0

    :cond_1b
    move-object v3, v7

    .line 77
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionFieldReadOnly;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionFieldReadOnly;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    :cond_1c
    move-object v3, v7

    .line 78
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;

    const-class v5, Ljava/lang/String;

    const/4 v11, 0x0

    const-class v4, Ljava/lang/String;

    move-object/from16 v1, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Ljava/lang/reflect/Field;)V

    return-object v0

    :cond_1d
    move-object v3, v7

    .line 79
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;

    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    move-object/from16 v1, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 80
    :cond_1e
    instance-of v0, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1f

    .line 81
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 82
    array-length v3, v0

    if-lez v3, :cond_1f

    .line 83
    aget-object v6, v0, v1

    :cond_1f
    if-nez v6, :cond_20

    .line 84
    const-class v6, Ljava/lang/Object;

    .line 85
    :cond_20
    invoke-static {v6}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 86
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;

    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    move-object/from16 v1, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p12

    move-object v3, v4

    move-object v4, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Ljava/lang/reflect/Field;)V

    return-object v0

    :cond_21
    move-object v2, v4

    move-object v3, v7

    .line 87
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 88
    instance-of v1, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_22

    .line 89
    move-object v1, v5

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 90
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 91
    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_22

    if-eqz v9, :cond_22

    .line 92
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long v6, p5, v6

    cmp-long v1, v6, v13

    if-nez v1, :cond_22

    .line 93
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p12

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object v2, v5

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    :cond_22
    if-eqz v9, :cond_24

    .line 94
    const-class v1, [I

    if-ne v2, v1, :cond_23

    .line 95
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueArrayFinalField;

    move-object v7, v8

    check-cast v7, [I

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueArrayFinalField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;[ILjava/lang/reflect/Field;)V

    return-object v0

    .line 96
    :cond_23
    const-class v1, [J

    if-ne v2, v1, :cond_24

    .line 97
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueArrayFinalField;

    move-object v7, v8

    check-cast v7, [J

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueArrayFinalField;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;[JLjava/lang/reflect/Field;)V

    return-object v0

    :cond_24
    if-eqz v3, :cond_28

    const-wide/high16 v1, 0x2000000000000L

    and-long v1, p5, v1

    cmp-long v1, v1, v13

    if-eqz v1, :cond_25

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 99
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-object/from16 v7, p7

    move-object/from16 v3, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object v2, v5

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    :cond_25
    move-object v2, v5

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz v1, :cond_26

    .line 101
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v3, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderMapFieldReadOnly;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 102
    :cond_26
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object v9, v8

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderMapField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 103
    :cond_27
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v3, p11

    move-object/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 104
    :cond_28
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;JLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p9

    .line 7
    invoke-virtual/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/BiConsumer<",
            "TT;TV;>;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    move-object/from16 v13, p14

    if-eqz v13, :cond_0

    .line 106
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;

    const-wide/high16 v1, 0x8000000000000L

    or-long v5, p7, v1

    const/4 v11, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 107
    iput-object v13, v0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object v0

    :cond_0
    move-object/from16 v2, p5

    .line 108
    const-class v0, Ljava/lang/Integer;

    if-ne v2, v0, :cond_1

    .line 109
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32Func;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32Func;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 110
    :cond_1
    const-class v0, Ljava/lang/Long;

    if-ne v2, v0, :cond_2

    .line 111
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64Func;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64Func;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 112
    :cond_2
    const-class v0, Ljava/lang/String;

    if-ne v2, v0, :cond_3

    .line 113
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 114
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne v2, v1, :cond_4

    .line 115
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolFunc;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderBoolFunc;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 116
    :cond_4
    const-class v1, Ljava/lang/Short;

    if-ne v2, v1, :cond_5

    .line 117
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16Func;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt16Func;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 118
    :cond_5
    const-class v1, Ljava/lang/Byte;

    if-ne v2, v1, :cond_6

    .line 119
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8Func;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt8Func;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 120
    :cond_6
    const-class v1, Ljava/math/BigDecimal;

    if-ne v2, v1, :cond_7

    .line 121
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBigDecimalFunc;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderBigDecimalFunc;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 122
    :cond_7
    const-class v1, Ljava/math/BigInteger;

    if-ne v2, v1, :cond_8

    .line 123
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBigIntegerFunc;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderBigIntegerFunc;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 124
    :cond_8
    const-class v1, Ljava/lang/Float;

    if-ne v2, v1, :cond_9

    .line 125
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;

    move-object/from16 v8, p11

    check-cast v8, Ljava/lang/Float;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Float;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 126
    :cond_9
    const-class v1, Ljava/lang/Double;

    if-ne v2, v1, :cond_a

    .line 127
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleFunc;

    move-object/from16 v8, p11

    check-cast v8, Ljava/lang/Double;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleFunc;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Double;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 128
    :cond_a
    const-class v1, Ljava/lang/Number;

    if-ne v2, v1, :cond_b

    .line 129
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;

    move-object/from16 v8, p11

    check-cast v8, Ljava/lang/Number;

    move-object/from16 v1, p3

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Number;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 130
    :cond_b
    const-class v1, Ljava/util/Date;

    if-ne v2, v1, :cond_c

    .line 131
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderDate;

    const/4 v10, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object v3, v2

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderDate;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    :cond_c
    move-object v3, v2

    move-object/from16 v2, p4

    .line 132
    instance-of v1, v2, Ljava/lang/Class;

    const/4 v4, 0x0

    if-nez v1, :cond_e

    if-nez p2, :cond_d

    :goto_0
    move-object/from16 v1, p1

    move-object/from16 v9, p12

    goto :goto_1

    .line 133
    :cond_d
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;

    move-result-object v4

    goto :goto_0

    .line 134
    :goto_1
    invoke-static {v4, v1, v9, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getFieldType(Lcom/alibaba/fastjson2/TypeReference;Ljava/lang/Class;Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 135
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_e
    move-object/from16 v9, p12

    move-object v1, v4

    .line 136
    :goto_2
    const-class v5, Ljava/util/List;

    if-eq v3, v5, :cond_f

    const-class v5, Ljava/util/ArrayList;

    if-ne v3, v5, :cond_10

    :cond_f
    move-object v3, v4

    goto :goto_3

    :cond_10
    if-eqz v4, :cond_11

    .line 137
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectFunc;

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v11, p13

    move-object v2, v4

    move-object v10, v9

    move/from16 v4, p6

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectFunc;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;Lcom/alibaba/fastjson2/reader/ObjectReader;)V

    return-object v0

    .line 138
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectFunc;

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectFunc;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;Lcom/alibaba/fastjson2/reader/ObjectReader;)V

    return-object v0

    .line 139
    :goto_3
    instance-of v2, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_13

    .line 140
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 141
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 142
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    const/4 v4, 0x0

    .line 143
    aget-object v2, v2, v4

    .line 144
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v0, :cond_12

    move-object v4, v1

    .line 145
    new-instance v1, Lcom/alibaba/fastjson2/reader/FieldReaderList;

    const-class v6, Ljava/lang/String;

    const/4 v14, 0x0

    const-class v5, Ljava/lang/String;

    move-object/from16 v2, p3

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/alibaba/fastjson2/reader/FieldReaderList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v1

    :cond_12
    move-object v0, v4

    move-object v4, v1

    move-object v6, v0

    move-object v5, v2

    goto :goto_4

    :cond_13
    move-object v4, v1

    .line 146
    const-class v2, Ljava/lang/Object;

    move-object v5, v2

    move-object v6, v5

    :goto_4
    new-instance v1, Lcom/alibaba/fastjson2/reader/FieldReaderList;

    const/4 v14, 0x0

    move-object/from16 v2, p3

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/alibaba/fastjson2/reader/FieldReaderList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v1
.end method

.method public createFieldReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-wide/16 v4, 0x0

    .line 5
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    move-object v2, v1

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;JLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 148
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 149
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 150
    array-length v2, v0

    if-nez v2, :cond_0

    .line 151
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 152
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    :goto_0
    move-object v11, v0

    move-object v10, v2

    goto :goto_1

    .line 153
    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 154
    aget-object v0, v0, v2

    .line 155
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v2, v3, v2

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v12, p2

    .line 156
    invoke-virtual/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1

    .line 157
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal setter method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/BiConsumer<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 105
    invoke-virtual/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    return-object v1
.end method

.method public createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 1
    invoke-virtual/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 2
    invoke-virtual/range {v1 .. v16}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    return-object v0
.end method

.method public createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/BiConsumer;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    move-object/from16 v13, p13

    const/4 v1, 0x1

    if-eqz v10, :cond_0

    .line 3
    invoke-virtual {v10, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4
    :cond_0
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_2

    .line 7
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v4

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {v4, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    move-object v9, v0

    goto :goto_0

    .line 10
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal defaultValue : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    if-eqz v13, :cond_4

    .line 11
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;

    const-wide/high16 v4, 0x8000000000000L

    or-long v4, p5, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide v5, v4

    move/from16 v4, p4

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 12
    iput-object v13, v0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object v0

    .line 13
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_5

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValueMethod;

    move-object v6, v9

    check-cast v6, Ljava/lang/Boolean;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValueMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 15
    :cond_5
    const-class v0, Ljava/lang/Boolean;

    if-ne v2, v0, :cond_6

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolMethod;

    check-cast v9, Ljava/lang/Boolean;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderBoolMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Boolean;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 17
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_7

    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueMethod;

    check-cast v9, Ljava/lang/Byte;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Byte;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 19
    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_8

    .line 20
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueMethod;

    check-cast v9, Ljava/lang/Short;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Short;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 21
    :cond_8
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_9

    .line 22
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueMethod;

    move-object v8, v9

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v3, p11

    move-object/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 23
    :cond_9
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_a

    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueMethod;

    check-cast v9, Ljava/lang/Long;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 25
    :cond_a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_b

    .line 26
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatValueMethod;

    check-cast v9, Ljava/lang/Float;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderFloatValueMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Float;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 27
    :cond_b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_c

    .line 28
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueMethod;

    check-cast v9, Ljava/lang/Double;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Double;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 29
    :cond_c
    const-class v0, Ljava/lang/Byte;

    if-ne v2, v0, :cond_d

    .line 30
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8Method;

    check-cast v9, Ljava/lang/Byte;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt8Method;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Byte;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 31
    :cond_d
    const-class v0, Ljava/lang/Short;

    if-ne v2, v0, :cond_e

    .line 32
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16Method;

    check-cast v9, Ljava/lang/Short;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt16Method;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Short;Ljava/lang/reflect/Method;)V

    return-object v0

    :cond_e
    move-object/from16 v3, p11

    .line 33
    const-class v0, Ljava/lang/Integer;

    if-ne v2, v0, :cond_f

    .line 34
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32Method;

    move-object v7, v9

    check-cast v7, Ljava/lang/Integer;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 35
    :cond_f
    const-class v0, Ljava/lang/Long;

    if-ne v2, v0, :cond_10

    .line 36
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64Method;

    move-object v7, v9

    check-cast v7, Ljava/lang/Long;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 37
    :cond_10
    const-class v0, Ljava/lang/Float;

    if-ne v2, v0, :cond_11

    .line 38
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatMethod;

    move-object v7, v9

    check-cast v7, Ljava/lang/Float;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderFloatMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Float;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 39
    :cond_11
    const-class v0, Ljava/lang/Double;

    if-ne v2, v0, :cond_12

    .line 40
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleMethod;

    move-object v6, v9

    check-cast v6, Ljava/lang/Double;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Double;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 41
    :cond_12
    const-class v0, Ljava/math/BigDecimal;

    if-ne v3, v0, :cond_13

    .line 42
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBigDecimalMethod;

    check-cast v9, Ljava/math/BigDecimal;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderBigDecimalMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/math/BigDecimal;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 43
    :cond_13
    const-class v0, Ljava/math/BigInteger;

    if-ne v3, v0, :cond_14

    .line 44
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderBigIntegerMethod;

    check-cast v9, Ljava/math/BigInteger;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v2, p10

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderBigIntegerMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/math/BigInteger;Ljava/lang/reflect/Method;)V

    return-object v0

    :cond_14
    move-object/from16 v2, p10

    .line 45
    const-class v0, Ljava/lang/String;

    if-ne v2, v0, :cond_15

    .line 46
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 47
    :cond_15
    const-class v3, Ljava/util/UUID;

    if-ne v2, v3, :cond_16

    .line 48
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderUUID;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderUUID;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 49
    :cond_16
    const-class v3, [Ljava/lang/String;

    if-ne v2, v3, :cond_17

    .line 50
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderStringArray;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderStringArray;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    :cond_17
    move/from16 v4, p4

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    move v2, v1

    move-object/from16 v1, p3

    .line 51
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const-class v6, Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v5, :cond_22

    .line 52
    const-class v5, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v3, v5, :cond_18

    .line 53
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicIntegerMethodReadOnly;

    invoke-direct {v0, v1, v3, v4, v10}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicIntegerMethodReadOnly;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/reflect/Method;)V

    return-object v0

    .line 54
    :cond_18
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v3, v5, :cond_19

    .line 55
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicLongReadOnly;

    invoke-direct {v0, v1, v3, v4, v10}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicLongReadOnly;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/reflect/Method;)V

    return-object v0

    .line 56
    :cond_19
    const-class v5, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne v3, v5, :cond_1a

    .line 57
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicIntegerArrayReadOnly;

    invoke-direct {v0, v1, v3, v4, v10}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicIntegerArrayReadOnly;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/reflect/Method;)V

    return-object v0

    .line 58
    :cond_1a
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-ne v3, v5, :cond_1b

    .line 59
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicLongArrayReadOnly;

    invoke-direct {v0, v1, v3, v4, v10}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicLongArrayReadOnly;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/reflect/Method;)V

    return-object v0

    .line 60
    :cond_1b
    const-class v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v3, v5, :cond_1c

    .line 61
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicBooleanMethodReadOnly;

    invoke-direct {v0, v1, v3, v4, v10}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicBooleanMethodReadOnly;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/reflect/Method;)V

    return-object v0

    .line 62
    :cond_1c
    const-class v5, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v3, v5, :cond_1d

    .line 63
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReferenceMethodReadOnly;

    move-object/from16 v2, p10

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReferenceMethodReadOnly;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/lang/reflect/Method;)V

    return-object v0

    .line 64
    :cond_1d
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v4, "get"

    if-eqz v1, :cond_1f

    .line 65
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 67
    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    :cond_1e
    move-object v9, v8

    .line 69
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v2, p10

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 70
    :cond_1f
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 71
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 73
    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    :cond_20
    move-object v9, v8

    .line 75
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v2, p10

    move-object/from16 v8, p12

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethodReadOnly;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    :cond_21
    move-object/from16 v10, p12

    move v1, v2

    move-object/from16 v2, p10

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_23

    return-object v8

    :cond_22
    move v1, v2

    move-object/from16 v2, p10

    .line 77
    :cond_23
    instance-of v4, v2, Ljava/lang/Class;

    if-nez v4, :cond_24

    .line 78
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-static {v4, v5, v10, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getFieldType(Lcom/alibaba/fastjson2/TypeReference;Ljava/lang/Class;Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 79
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    :cond_24
    move-object v4, v8

    move-object v5, v4

    .line 80
    :goto_1
    const-class v11, Ljava/util/List;

    if-eq v3, v11, :cond_2d

    const-class v11, Ljava/util/ArrayList;

    if-ne v3, v11, :cond_25

    goto/16 :goto_5

    .line 81
    :cond_25
    const-class v0, Ljava/util/Date;

    if-ne v3, v0, :cond_26

    .line 82
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderDate;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderDate;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 83
    :cond_26
    const-class v0, [Ljava/lang/StackTraceElement;

    if-ne v3, v0, :cond_28

    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Throwable;

    if-ne v0, v2, :cond_28

    .line 84
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderStackTrace;

    if-eqz v4, :cond_27

    move-object v2, v4

    goto :goto_2

    :cond_27
    move-object/from16 v2, p10

    .line 85
    :goto_2
    new-instance v12, Lcom/alibaba/fastjson2/reader/i;

    invoke-direct {v12}, Lcom/alibaba/fastjson2/reader/i;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderStackTrace;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    :cond_28
    const-wide/high16 v10, 0x2000000000000L

    and-long v10, p5, v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_29

    .line 86
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v2, "set"

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 88
    sget-object v2, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 90
    :try_start_0
    invoke-virtual {v8, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_29
    move-object v11, v8

    .line 91
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 92
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;

    if-eqz v4, :cond_2a

    move-object v2, v4

    goto :goto_3

    :cond_2a
    move-object/from16 v2, p10

    :goto_3
    const/4 v12, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p12

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    .line 93
    invoke-direct/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/FieldReaderMapMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 94
    :cond_2b
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;

    if-eqz v4, :cond_2c

    move-object v2, v4

    goto :goto_4

    :cond_2c
    move-object/from16 v2, p10

    :goto_4
    const/4 v12, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    .line 95
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 96
    :cond_2d
    :goto_5
    instance-of v2, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2f

    .line 97
    move-object v2, v4

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 98
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 99
    array-length v3, v2

    if-ne v3, v1, :cond_2f

    .line 100
    aget-object v1, v2, v7

    move-object v3, v5

    .line 101
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v0, :cond_2e

    .line 102
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderList;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v4

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v1, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v3, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/FieldReaderList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    :cond_2e
    move-object v2, v4

    .line 103
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderList;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p12

    move-object v4, v1

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/FieldReaderList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0

    .line 104
    :cond_2f
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderList;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-class v4, Ljava/lang/Object;

    const-class v5, Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v1, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/FieldReaderList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    return-object v0
.end method

.method public createFieldReaderParam(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 1
    invoke-virtual/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderParam(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    return-object v1
.end method

.method public createFieldReaderParam(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 2
    invoke-virtual/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderParam(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    return-object v1
.end method

.method public createFieldReaderParam(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    move-object/from16 v11, p14

    if-eqz v11, :cond_0

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;

    move-object/from16 v1, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    .line 4
    iput-object v11, v0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object v0

    :cond_0
    move-object/from16 v2, p10

    .line 5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_c

    const-class v0, Ljava/lang/Byte;

    if-ne v2, v0, :cond_1

    goto/16 :goto_6

    .line 6
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_b

    const-class v0, Ljava/lang/Short;

    if-ne v2, v0, :cond_2

    goto/16 :goto_5

    .line 7
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_a

    const-class v0, Ljava/lang/Integer;

    if-ne v2, v0, :cond_3

    goto/16 :goto_4

    .line 8
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_9

    const-class v0, Ljava/lang/Long;

    if-ne v2, v0, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    instance-of v0, v2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 10
    invoke-static {p2}, Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;

    move-result-object p2

    move-object/from16 v0, p13

    invoke-static {p2, p1, v0, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getParamType(Lcom/alibaba/fastjson2/TypeReference;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    :cond_5
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    goto :goto_0

    :cond_6
    move-object p1, v1

    :goto_0
    if-nez v1, :cond_7

    move-object v3, v2

    goto :goto_1

    :cond_7
    move-object v3, v1

    :goto_1
    if-nez p1, :cond_8

    move-object/from16 v4, p11

    goto :goto_2

    :cond_8
    move-object v4, p1

    .line 12
    :goto_2
    new-instance v1, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;

    move-object/from16 v2, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v5, p12

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    return-object v1

    .line 13
    :cond_9
    :goto_3
    new-instance v1, Lcom/alibaba/fastjson2/reader/FieldReaderInt64Param;

    move-object/from16 v2, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64Param;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    return-object v1

    .line 14
    :cond_a
    :goto_4
    new-instance v1, Lcom/alibaba/fastjson2/reader/FieldReaderInt32Param;

    move-object/from16 v2, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32Param;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    return-object v1

    .line 15
    :cond_b
    :goto_5
    new-instance v1, Lcom/alibaba/fastjson2/reader/FieldReaderInt16Param;

    move-object/from16 v2, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt16Param;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    return-object v1

    .line 16
    :cond_c
    :goto_6
    new-instance v1, Lcom/alibaba/fastjson2/reader/FieldReaderInt8Param;

    move-object/from16 v2, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt8Param;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    return-object v1
.end method

.method public varargs createFieldReaders(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/AccessibleObject;[Ljava/lang/Class;[Ljava/lang/String;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 26

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 1
    instance-of v9, v6, Ljava/lang/reflect/Constructor;

    if-eqz v9, :cond_0

    .line 2
    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    :goto_0
    move-object v5, v0

    move-object/from16 v25, v2

    move-object v2, v1

    goto :goto_1

    .line 5
    :cond_0
    instance-of v0, v6, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    move-object v5, v2

    move-object/from16 v25, v5

    .line 9
    :goto_1
    array-length v0, v7

    new-array v10, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v0, 0x0

    move v14, v0

    .line 10
    :goto_2
    array-length v0, v7

    if-ge v14, v0, :cond_a

    .line 11
    new-instance v1, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    .line 12
    array-length v0, v8

    const-string v11, "arg"

    if-ge v14, v0, :cond_2

    .line 13
    aget-object v0, v8, v14

    :goto_3
    move-object v12, v0

    goto :goto_4

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    if-eqz v9, :cond_3

    .line 15
    move-object v3, v6

    check-cast v3, Ljava/lang/reflect/Constructor;

    move-object/from16 v0, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;I[[Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    :cond_3
    move-object/from16 v0, p1

    :goto_5
    if-eqz v9, :cond_4

    .line 16
    invoke-static {v2, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 18
    :cond_4
    iget-object v3, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_6

    .line 19
    :cond_5
    iget-object v3, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    goto :goto_7

    :cond_6
    :goto_6
    move-object v3, v12

    :goto_7
    if-nez v3, :cond_7

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    move-object v13, v3

    if-nez v12, :cond_8

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_8
    move-object/from16 v22, v12

    .line 22
    aget-object v3, v25, v14

    move-object/from16 v4, p2

    move-object/from16 v11, p3

    .line 23
    invoke-static {v11, v4, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    if-eqz v12, :cond_9

    move-object v3, v12

    .line 24
    :cond_9
    aget-object v12, v7, v14

    invoke-static {v0, v3, v12, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->getInitReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/FieldInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v24

    move-object/from16 v23, v2

    move-object/from16 v20, v3

    .line 25
    iget-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v12, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    iget-object v15, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    aget-object v21, v7, v14

    const/4 v11, 0x0

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v19, v1

    move-object v1, v10

    move-object/from16 v18, v15

    move-object/from16 v10, p0

    move-wide v15, v2

    invoke-virtual/range {v10 .. v24}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderParam(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    aput-object v2, v1, v14

    add-int/lit8 v14, v14, 0x1

    move-object v10, v1

    move-object/from16 v2, v23

    goto/16 :goto_2

    :cond_a
    move-object v1, v10

    return-object v1
.end method

.method public createFieldReaders(Ljava/lang/Class;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 26
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaders(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/codec/BeanInfo;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReaders(Ljava/lang/Class;Ljava/lang/reflect/Type;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 27
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaders(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/codec/BeanInfo;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public createFieldReaders(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/codec/BeanInfo;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Z",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            ")[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    move-object/from16 v7, p5

    if-nez p3, :cond_0

    .line 28
    new-instance v0, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 29
    invoke-virtual {v7, v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    .line 30
    :goto_0
    iget-object v4, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    .line 31
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    new-instance v5, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v5}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    .line 33
    iget-object v10, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;

    move-object v1, v8

    move-object v8, v6

    move-object v6, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Z)V

    move-object v12, v8

    move-object v8, v6

    move-object v6, v12

    if-eqz p4, :cond_1

    .line 35
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    goto :goto_1

    .line 36
    :cond_1
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 37
    iget-object v0, v7, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Class;

    .line 38
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, v7

    move-object v7, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 39
    invoke-static {p1, v6, v11, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->setters(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 41
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 42
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 43
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p1
.end method

.method public varargs createFunction(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lcom/alibaba/fastjson2/function/Function;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/lang/reflect/Constructor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/reader/ConstructorFunction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/reader/ConstructorFunction;-><init>(Ljava/util/List;Ljava/lang/reflect/Constructor;Lcom/alibaba/fastjson2/function/Function;Lcom/alibaba/fastjson2/function/BiFunction;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)V

    return-object v1
.end method

.method public varargs createFunction(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lcom/alibaba/fastjson2/function/Function;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/reader/ConstructorFunction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/reader/ConstructorFunction;-><init>(Ljava/util/List;Ljava/lang/reflect/Constructor;Lcom/alibaba/fastjson2/function/Function;Lcom/alibaba/fastjson2/function/BiFunction;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createObjectReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p0, p1, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs createObjectReader(Ljava/lang/Class;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 4
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs createObjectReader(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v7, p3

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs createObjectReader(Ljava/lang/Class;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 5
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs createObjectReader(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v1

    :cond_1
    if-eqz p3, :cond_2

    .line 9
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderRootName;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v14, p8

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderRootName;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v2

    :cond_2
    move-object/from16 v10, p8

    .line 10
    array-length v0, v10

    packed-switch v0, :pswitch_data_0

    .line 11
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v2

    .line 12
    :pswitch_0
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReader6;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v2

    .line 13
    :pswitch_1
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReader5;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v2

    .line 14
    :pswitch_2
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReader4;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v2

    .line 15
    :pswitch_3
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReader3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader3;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v2

    .line 16
    :pswitch_4
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReader2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v2

    .line 17
    :pswitch_5
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReader1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createObjectReader(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Z",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p4

    .line 26
    new-instance v4, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v4}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    if-eqz p3, :cond_0

    .line 27
    iget-wide v5, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 28
    :cond_0
    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 29
    iget-wide v5, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v10, 0x1

    if-eqz v5, :cond_1

    move v5, v10

    goto :goto_0

    :cond_1
    move/from16 v5, p3

    .line 30
    :goto_0
    iget-object v6, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->deserializer:Ljava/lang/Class;

    const/4 v11, 0x0

    if-eqz v6, :cond_2

    const-class v9, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 31
    :try_start_0
    iget-object v0, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->deserializer:Ljava/lang/Class;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReader;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 34
    :goto_1
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    const-string v3, "create deserializer error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    if-eqz v5, :cond_3

    .line 35
    iget-wide v12, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    iget-wide v14, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v12, v14

    iput-wide v12, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 36
    :cond_3
    const-class v3, Ljava/lang/Enum;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-ne v3, v10, :cond_5

    .line 37
    :cond_4
    iget-object v3, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createEnumReader(Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 38
    :cond_5
    const-class v9, Ljava/lang/Throwable;

    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 39
    iget-wide v5, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v13, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v5, v13

    iput-wide v5, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    const/4 v5, 0x0

    .line 40
    :cond_6
    const-class v3, Ljava/lang/Class;

    if-ne v2, v3, :cond_7

    .line 41
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;

    return-object v0

    :cond_7
    if-eqz v5, :cond_8

    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v5, 0x0

    :cond_8
    move-object/from16 v3, p2

    move-object v6, v0

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaders(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/codec/BeanInfo;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v13

    move-object v14, v1

    move-object v15, v4

    move/from16 v16, v5

    move-object v0, v6

    move-object v6, v3

    const/4 v1, 0x0

    .line 44
    :goto_2
    array-length v3, v13

    if-ge v1, v3, :cond_a

    .line 45
    aget-object v3, v13, v1

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v17, 0x0

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    move/from16 v17, v10

    .line 46
    :goto_3
    iget-object v1, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_b

    iget-object v1, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_c

    :cond_b
    move-object v3, v6

    move-object v1, v14

    goto/16 :goto_13

    .line 47
    :cond_c
    iget-object v1, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->builder:Ljava/lang/Class;

    if-eqz v1, :cond_d

    .line 48
    invoke-virtual {v14, v2, v6, v0, v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReaderWithBuilder(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 49
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v3, Lcom/alibaba/fastjson2/reader/g;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/reader/g;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->constructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 51
    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 52
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;

    invoke-direct {v0, v2, v1, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;-><init>(Ljava/lang/Class;Ljava/util/List;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v0

    .line 53
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, -0x1

    move/from16 v19, v4

    move-wide/from16 v21, v7

    move-object/from16 v18, v11

    move-object/from16 v20, v18

    const/4 v5, 0x0

    .line 54
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_15

    .line 55
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    .line 56
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_f

    move-object/from16 v20, v7

    :cond_f
    if-eqz v3, :cond_10

    if-ne v8, v10, :cond_10

    .line 57
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 p3, 0x0

    aget-object v12, v23, p3

    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object v3, v7

    goto :goto_6

    :cond_10
    const/16 p3, 0x0

    :cond_11
    if-nez v18, :cond_12

    goto :goto_5

    :cond_12
    if-nez v8, :cond_13

    goto :goto_5

    .line 58
    :cond_13
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ge v12, v8, :cond_14

    :goto_5
    move/from16 v19, v5

    move-object/from16 v18, v7

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_15
    const/16 p3, 0x0

    move-object/from16 v3, v18

    move/from16 v5, v19

    :goto_6
    if-eqz v3, :cond_16

    .line 59
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    goto :goto_7

    :cond_16
    move v7, v4

    :goto_7
    if-eq v5, v4, :cond_17

    .line 60
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_17
    if-eqz v3, :cond_27

    if-eqz v7, :cond_27

    .line 61
    iget-object v4, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    if-nez v4, :cond_27

    .line 62
    invoke-virtual {v3, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 63
    iget-object v4, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 64
    array-length v5, v4

    if-nez v5, :cond_18

    goto :goto_8

    :cond_18
    move-object/from16 v18, v1

    move-object v8, v4

    goto :goto_a

    .line 65
    :cond_19
    :goto_8
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->lookupParameterNames(Ljava/lang/reflect/Constructor;)[Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 67
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    move-object v4, v1

    .line 68
    new-instance v1, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    move-object/from16 v18, v4

    move/from16 v4, p3

    .line 69
    :goto_9
    array-length v11, v12

    if-ge v4, v11, :cond_1b

    array-length v11, v8

    if-ge v4, v11, :cond_1b

    .line 70
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;I[[Ljava/lang/annotation/Annotation;)V

    .line 72
    iget-object v0, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 73
    aput-object v0, v8, v4

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p4

    goto :goto_9

    :cond_1b
    :goto_a
    if-eqz v20, :cond_1f

    move/from16 v0, p3

    move v1, v0

    .line 74
    :goto_b
    array-length v4, v8

    if-ge v0, v4, :cond_20

    .line 75
    aget-object v4, v8, v0

    if-nez v4, :cond_1c

    goto :goto_d

    :cond_1c
    move/from16 v5, p3

    .line 76
    :goto_c
    array-length v11, v13

    if-ge v5, v11, :cond_1e

    .line 77
    aget-object v11, v13, v5

    if-eqz v11, :cond_1d

    .line 78
    iget-object v11, v11, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1e
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    move/from16 v1, p3

    :cond_20
    if-nez v16, :cond_27

    .line 79
    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_27

    if-nez v20, :cond_27

    array-length v0, v8

    if-eq v1, v0, :cond_27

    if-ne v7, v10, :cond_23

    .line 80
    new-instance v1, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;I[[Ljava/lang/annotation/Annotation;)V

    .line 82
    iget-wide v4, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v9, 0x1000000000000L

    and-long/2addr v4, v9

    cmp-long v0, v4, v21

    if-eqz v0, :cond_23

    .line 83
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v2, v0, p3

    .line 84
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, p3

    .line 85
    iget-object v4, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, v0, :cond_21

    .line 87
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v5

    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 89
    invoke-interface {v5, v4}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_21
    move-object/from16 v18, v3

    move-object v7, v4

    move-object v3, v0

    goto :goto_e

    .line 90
    :cond_22
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :goto_e
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    iget-wide v4, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v6, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    :cond_23
    if-eqz v17, :cond_26

    .line 92
    array-length v0, v13

    if-eqz v0, :cond_26

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    move/from16 v0, p3

    .line 93
    :goto_f
    array-length v1, v8

    if-ge v0, v1, :cond_26

    .line 94
    aget-object v1, v8, v0

    .line 95
    array-length v2, v13

    move/from16 v4, p3

    :goto_10
    if-ge v4, v2, :cond_25

    aget-object v5, v13, v4

    .line 96
    iget-object v7, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_24

    .line 97
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 98
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 99
    iget-object v1, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    aput-object v1, v8, v0

    goto :goto_11

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_25
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 100
    :cond_26
    new-instance v16, Lcom/alibaba/fastjson2/reader/ConstructorFunction;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v22, v8

    move-object/from16 v17, v18

    move-object/from16 v18, v3

    invoke-direct/range {v16 .. v22}, Lcom/alibaba/fastjson2/reader/ConstructorFunction;-><init>(Ljava/util/List;Ljava/lang/reflect/Constructor;Lcom/alibaba/fastjson2/function/Function;Lcom/alibaba/fastjson2/function/BiFunction;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)V

    move-object/from16 v7, v22

    .line 101
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v4, p2

    move-object/from16 v2, p4

    move-object v5, v3

    move-object v1, v14

    move-object/from16 v3, p1

    .line 102
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaders(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/AccessibleObject;[Ljava/lang/Class;[Ljava/lang/String;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v8

    .line 103
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;

    iget-object v2, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    iget-wide v4, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p1

    move-object v9, v13

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Function;[Ljava/lang/String;[Lcom/alibaba/fastjson2/reader/FieldReader;[Lcom/alibaba/fastjson2/reader/FieldReader;[Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v0

    :cond_27
    move-object v9, v13

    .line 104
    iget-object v4, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    if-eqz v4, :cond_28

    array-length v0, v4

    if-eqz v0, :cond_28

    .line 105
    iget-object v3, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v5, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    iget-object v6, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoDefault:Ljava/lang/Class;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReaderSeeAlso(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 106
    :cond_28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 107
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p1

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v0

    .line 108
    :cond_29
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createSupplier(Ljava/lang/Class;)Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v7

    .line 109
    iget-object v3, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->rootName:Ljava/lang/String;

    iget-wide v5, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 110
    instance-of v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v2, :cond_2b

    .line 111
    iget-object v2, v15, Lcom/alibaba/fastjson2/codec/BeanInfo;->autoTypeBeforeHandler:Ljava/lang/Class;

    if-eqz v2, :cond_2a

    const/4 v3, 0x0

    .line 112
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v11, v2

    goto :goto_12

    :cond_2a
    const/4 v3, 0x0

    :catch_4
    move-object v11, v3

    :goto_12
    if-eqz v11, :cond_2b

    .line 115
    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->setAutoTypeBeforeHandler(Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;)V

    :cond_2b
    return-object v0

    .line 116
    :goto_13
    invoke-virtual {v1, v2, v3, v0, v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReaderWithCreator(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public createObjectReader(Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p0, p1, p1, p2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs createObjectReader(Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createSupplier(Ljava/lang/Class;)Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public createObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 18
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 19
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaders(Ljava/lang/Class;Ljava/lang/reflect/Type;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createSupplier(Ljava/lang/Class;)Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v0, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs createObjectReaderFactoryMethod(Ljava/lang/reflect/Method;[Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFactoryFunction(Ljava/lang/reflect/Method;[Ljava/lang/String;)Lcom/alibaba/fastjson2/function/Function;

    .line 4
    move-result-object v6

    .line 5
    .line 6
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    const/4 v10, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 11
    move-result-object v12

    .line 12
    const/4 v9, 0x0

    .line 13
    move-object v7, p0

    .line 14
    move-object v11, p1

    .line 15
    .line 16
    move-object/from16 v13, p2

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v7 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaders(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/AccessibleObject;[Ljava/lang/Class;[Ljava/lang/String;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 20
    move-result-object v8

    .line 21
    .line 22
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    move-object/from16 v7, p2

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Function;[Ljava/lang/String;[Lcom/alibaba/fastjson2/reader/FieldReader;[Lcom/alibaba/fastjson2/reader/FieldReader;[Ljava/lang/Class;[Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method public varargs createObjectReaderNoneDefaultConstructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Function;[Ljava/lang/String;[Lcom/alibaba/fastjson2/reader/FieldReader;[Lcom/alibaba/fastjson2/reader/FieldReader;[Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs createObjectReaderNoneDefaultConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFunction(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 3
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move-object v4, v3

    move-object v1, p0

    move-object v5, p1

    move-object v7, p2

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaders(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/AccessibleObject;[Ljava/lang/Class;[Ljava/lang/String;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v3, v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReaderNoneDefaultConstructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs createObjectReaderSeeAlso(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v0
.end method

.method public varargs createObjectReaderSeeAlso(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createSupplier(Ljava/lang/Class;)Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v2

    .line 6
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v0
.end method

.method public varargs createObjectReaderSeeAlso(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createSupplier(Ljava/lang/Class;)Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v2

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v0
.end method

.method public varargs createObjectReaderSeeAlso(Ljava/lang/Class;[Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createSupplier(Ljava/lang/Class;)Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v2

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "@type"

    move-object v1, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object v0
.end method

.method public createObjectReaderWithBuilder(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p4

    .line 3
    .line 4
    iget-object v0, v7, Lcom/alibaba/fastjson2/codec/BeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createBuildFunction(Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/function/Function;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    move-object v11, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :goto_1
    iget-object v2, v7, Lcom/alibaba/fastjson2/codec/BeanInfo;->builder:Ljava/lang/Class;

    .line 17
    .line 18
    iget-object v0, v7, Lcom/alibaba/fastjson2/codec/BeanInfo;->builderWithPrefix:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    goto :goto_3

    .line 28
    :cond_1
    :goto_2
    move-object v5, v0

    .line 29
    goto :goto_4

    .line 30
    .line 31
    :cond_2
    :goto_3
    const-string v0, "with"

    .line 32
    goto :goto_2

    .line 33
    .line 34
    .line 35
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 36
    move-result v8

    .line 37
    .line 38
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    .line 41
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    move-object v6, v2

    .line 43
    .line 44
    new-instance v2, Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    .line 48
    .line 49
    new-instance v0, Lcom/alibaba/fastjson2/reader/h;

    .line 50
    move-object v1, p0

    .line 51
    move-object v4, p1

    .line 52
    move-object v10, p2

    .line 53
    move-object v3, p3

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/h;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/util/Map;Ljava/lang/reflect/Type;)V

    .line 57
    const/4 p1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-static {v6, p1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->setters(Ljava/lang/Class;ZLcom/alibaba/fastjson2/function/Consumer;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v9}, Ljava/util/Map;->size()I

    .line 64
    move-result p1

    .line 65
    .line 66
    new-array v7, p1, [Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 67
    .line 68
    .line 69
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createSupplier(Ljava/lang/Class;)Lcom/alibaba/fastjson2/function/Supplier;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    const-wide/16 v3, 0x0

    .line 83
    move-object v2, v6

    .line 84
    move-object v6, v11

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 88
    move-result-object p1

    .line 89
    return-object p1
.end method

.method public createObjectReaderWithCreator(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p4

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    .line 8
    .line 9
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    iget-object v0, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v2, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget-object v3, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->lookupParameterNames(Ljava/lang/reflect/Constructor;)[Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    iget-object v4, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    iget-object v5, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 44
    move-result-object v5

    .line 45
    :goto_0
    move-object v14, v0

    .line 46
    move-object v11, v2

    .line 47
    move-object v15, v3

    .line 48
    .line 49
    move-object/from16 v16, v4

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_0
    iget-object v0, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v2, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 62
    move-result-object v2

    .line 63
    array-length v3, v0

    .line 64
    .line 65
    new-array v3, v3, [Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    iget-object v5, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 77
    move-result-object v5

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    const/4 v7, 0x0

    .line 80
    move v4, v7

    .line 81
    :goto_2
    array-length v0, v14

    .line 82
    .line 83
    const-wide/16 v8, 0x0

    .line 84
    .line 85
    const-wide/high16 v17, 0x1000000000000L

    .line 86
    const/4 v10, 0x1

    .line 87
    .line 88
    if-ge v4, v0, :cond_e

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 92
    .line 93
    iget-object v3, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 94
    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    move-object/from16 v2, p1

    .line 98
    .line 99
    move-object/from16 v0, p3

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;I[[Ljava/lang/annotation/Annotation;)V

    .line 103
    move-object v12, v2

    .line 104
    move-object v2, v1

    .line 105
    move-object v1, v12

    .line 106
    move v12, v4

    .line 107
    .line 108
    move-object/from16 v19, v5

    .line 109
    goto :goto_3

    .line 110
    .line 111
    :cond_1
    move-object/from16 v0, p3

    .line 112
    move-object v2, v1

    .line 113
    move v12, v4

    .line 114
    .line 115
    move-object/from16 v19, v5

    .line 116
    .line 117
    move-object/from16 v1, p1

    .line 118
    .line 119
    iget-object v3, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, v1, v3, v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;I)V

    .line 123
    :goto_3
    array-length v3, v14

    .line 124
    .line 125
    if-ne v3, v10, :cond_2

    .line 126
    .line 127
    iget-wide v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 128
    .line 129
    and-long v3, v3, v17

    .line 130
    .line 131
    cmp-long v3, v3, v8

    .line 132
    .line 133
    if-eqz v3, :cond_2

    .line 134
    .line 135
    move-object/from16 v21, v15

    .line 136
    move-object v15, v2

    .line 137
    .line 138
    :goto_4
    move-object/from16 v11, p0

    .line 139
    .line 140
    move/from16 v20, v7

    .line 141
    .line 142
    goto/16 :goto_c

    .line 143
    .line 144
    :cond_2
    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 145
    .line 146
    const-string v8, "arg"

    .line 147
    .line 148
    if-eqz v3, :cond_3

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 152
    move-result v4

    .line 153
    .line 154
    if-eqz v4, :cond_6

    .line 155
    .line 156
    :cond_3
    iget-object v4, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v4, :cond_4

    .line 159
    array-length v5, v4

    .line 160
    .line 161
    if-ge v12, v5, :cond_4

    .line 162
    .line 163
    aget-object v3, v4, v12

    .line 164
    .line 165
    :cond_4
    if-eqz v3, :cond_5

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 169
    move-result v4

    .line 170
    .line 171
    if-eqz v4, :cond_6

    .line 172
    .line 173
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    .line 189
    :cond_6
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 190
    move-result v4

    .line 191
    .line 192
    if-eqz v4, :cond_8

    .line 193
    array-length v4, v15

    .line 194
    .line 195
    if-le v4, v12, :cond_7

    .line 196
    .line 197
    aget-object v3, v15, v12

    .line 198
    :cond_7
    :goto_5
    move-object v5, v3

    .line 199
    goto :goto_6

    .line 200
    .line 201
    :cond_8
    aput-object v3, v15, v12

    .line 202
    goto :goto_5

    .line 203
    .line 204
    :goto_6
    aget-object v9, v14, v12

    .line 205
    .line 206
    new-instance v0, Lcom/alibaba/fastjson2/reader/e;

    .line 207
    move-object v3, v1

    .line 208
    move-object v4, v6

    .line 209
    move-object v1, v9

    .line 210
    move-object v6, v2

    .line 211
    .line 212
    move-object/from16 v2, p3

    .line 213
    .line 214
    .line 215
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/e;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    .line 216
    move-object v1, v3

    .line 217
    move-object v3, v0

    .line 218
    move-object v0, v2

    .line 219
    move-object v2, v6

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 223
    .line 224
    if-eqz v5, :cond_a

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 228
    move-result v3

    .line 229
    .line 230
    if-eqz v3, :cond_9

    .line 231
    goto :goto_8

    .line 232
    :cond_9
    :goto_7
    move-object v3, v5

    .line 233
    goto :goto_9

    .line 234
    .line 235
    :cond_a
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object v5

    .line 249
    goto :goto_7

    .line 250
    .line 251
    :goto_9
    aget-object v8, v16, v12

    .line 252
    move v4, v12

    .line 253
    .line 254
    .line 255
    invoke-static {v0, v8, v9, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->getInitReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/FieldInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 256
    move-result-object v12

    .line 257
    .line 258
    iget-wide v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 259
    move v10, v7

    .line 260
    .line 261
    iget-object v7, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 262
    .line 263
    move/from16 v17, v10

    .line 264
    move-object v10, v3

    .line 265
    .line 266
    move-object/from16 v0, p0

    .line 267
    .line 268
    move-object/from16 v21, v15

    .line 269
    .line 270
    move/from16 v20, v17

    .line 271
    move-object v15, v2

    .line 272
    .line 273
    move-object/from16 v2, p2

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderParam(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 277
    move-result-object v5

    .line 278
    .line 279
    .line 280
    invoke-interface {v13, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    iget-object v0, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v0, :cond_d

    .line 285
    .line 286
    move/from16 v1, v20

    .line 287
    :goto_a
    array-length v2, v0

    .line 288
    .line 289
    if-ge v1, v2, :cond_d

    .line 290
    .line 291
    aget-object v2, v0, v1

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    move-result v5

    .line 296
    .line 297
    if-eqz v5, :cond_c

    .line 298
    .line 299
    :cond_b
    move-object/from16 v17, v0

    .line 300
    .line 301
    move/from16 v18, v1

    .line 302
    move-object v2, v11

    .line 303
    .line 304
    move-object/from16 v11, p0

    .line 305
    goto :goto_b

    .line 306
    .line 307
    .line 308
    :cond_c
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    move-result-object v5

    .line 310
    .line 311
    check-cast v5, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 312
    .line 313
    if-nez v5, :cond_b

    .line 314
    .line 315
    iget-wide v5, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 316
    .line 317
    iget-object v7, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 318
    const/4 v12, 0x0

    .line 319
    .line 320
    move-object/from16 v17, v0

    .line 321
    .line 322
    move/from16 v18, v1

    .line 323
    move-object v10, v3

    .line 324
    .line 325
    move-object/from16 v0, p0

    .line 326
    .line 327
    move-object/from16 v1, p1

    .line 328
    move-object v3, v2

    .line 329
    .line 330
    move-object/from16 v2, p2

    .line 331
    .line 332
    .line 333
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderParam(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 334
    move-result-object v5

    .line 335
    move-object v2, v11

    .line 336
    move-object v11, v0

    .line 337
    move-object v0, v3

    .line 338
    move-object v3, v10

    .line 339
    .line 340
    .line 341
    invoke-interface {v13, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    :goto_b
    add-int/lit8 v1, v18, 0x1

    .line 344
    move-object v11, v2

    .line 345
    .line 346
    move-object/from16 v0, v17

    .line 347
    goto :goto_a

    .line 348
    :cond_d
    move-object v2, v11

    .line 349
    .line 350
    move-object/from16 v11, p0

    .line 351
    .line 352
    add-int/lit8 v4, v4, 0x1

    .line 353
    .line 354
    move-object/from16 v6, p4

    .line 355
    move-object v11, v2

    .line 356
    move-object v1, v15

    .line 357
    .line 358
    move-object/from16 v5, v19

    .line 359
    .line 360
    move/from16 v7, v20

    .line 361
    .line 362
    move-object/from16 v15, v21

    .line 363
    .line 364
    goto/16 :goto_2

    .line 365
    .line 366
    :cond_e
    move-object/from16 v21, v15

    .line 367
    move-object v15, v1

    .line 368
    .line 369
    goto/16 :goto_4

    .line 370
    :goto_c
    array-length v0, v14

    .line 371
    .line 372
    if-ne v0, v10, :cond_13

    .line 373
    .line 374
    iget-wide v0, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 375
    .line 376
    and-long v0, v0, v17

    .line 377
    .line 378
    cmp-long v0, v0, v8

    .line 379
    .line 380
    if-eqz v0, :cond_13

    .line 381
    .line 382
    move-object/from16 v6, p4

    .line 383
    .line 384
    iget-object v0, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 385
    .line 386
    if-nez v0, :cond_f

    .line 387
    .line 388
    iget-object v0, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 392
    move-result-object v0

    .line 393
    .line 394
    aget-object v0, v0, v20

    .line 395
    :goto_d
    move-object v2, v0

    .line 396
    goto :goto_e

    .line 397
    .line 398
    :cond_f
    aget-object v0, v16, v20

    .line 399
    goto :goto_d

    .line 400
    .line 401
    :goto_e
    iget-object v0, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 402
    .line 403
    if-nez v0, :cond_10

    .line 404
    .line 405
    iget-object v0, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 409
    move-result-object v0

    .line 410
    .line 411
    aget-object v0, v0, v20

    .line 412
    :goto_f
    move-object v3, v0

    .line 413
    goto :goto_10

    .line 414
    .line 415
    .line 416
    :cond_10
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 417
    move-result-object v0

    .line 418
    .line 419
    aget-object v0, v0, v20

    .line 420
    goto :goto_f

    .line 421
    .line 422
    :goto_10
    iget-object v0, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 423
    .line 424
    if-eqz v0, :cond_11

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    move-result-object v1

    .line 429
    .line 430
    if-eq v1, v3, :cond_11

    .line 431
    .line 432
    .line 433
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 434
    move-result-object v1

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    move-result-object v4

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 442
    move-result-object v1

    .line 443
    .line 444
    if-eqz v1, :cond_12

    .line 445
    .line 446
    .line 447
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    move-result-object v0

    .line 449
    :cond_11
    move-object v7, v0

    .line 450
    goto :goto_11

    .line 451
    .line 452
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 453
    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    const-string v4, "illegal defaultValue : "

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    const-string v0, ", class "

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 474
    move-result-object v0

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    move-result-object v0

    .line 482
    .line 483
    .line 484
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 485
    throw v1

    .line 486
    .line 487
    :goto_11
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    .line 488
    .line 489
    iget-wide v4, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 490
    .line 491
    iget-object v1, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 492
    .line 493
    iget-object v8, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 494
    .line 495
    iget-object v9, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 496
    const/4 v10, 0x0

    .line 497
    move-object v6, v1

    .line 498
    .line 499
    move-object/from16 v1, p1

    .line 500
    .line 501
    .line 502
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    .line 503
    return-object v0

    .line 504
    .line 505
    :cond_13
    move-object/from16 v6, p4

    .line 506
    .line 507
    iget-object v0, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 508
    .line 509
    if-eqz v0, :cond_14

    .line 510
    .line 511
    iget-object v1, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->markerConstructor:Ljava/lang/reflect/Constructor;

    .line 512
    .line 513
    move-object/from16 v7, v21

    .line 514
    .line 515
    .line 516
    invoke-virtual {v11, v0, v1, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFunction(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lcom/alibaba/fastjson2/function/Function;

    .line 517
    move-result-object v0

    .line 518
    :goto_12
    move-object v8, v0

    .line 519
    goto :goto_13

    .line 520
    .line 521
    :cond_14
    move-object/from16 v7, v21

    .line 522
    .line 523
    iget-object v0, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v11, v0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFactoryFunction(Ljava/lang/reflect/Method;[Ljava/lang/String;)Lcom/alibaba/fastjson2/function/Function;

    .line 527
    move-result-object v0

    .line 528
    goto :goto_12

    .line 529
    .line 530
    .line 531
    :goto_13
    invoke-interface {v13}, Ljava/util/Map;->size()I

    .line 532
    move-result v0

    .line 533
    .line 534
    new-array v9, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 535
    .line 536
    .line 537
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 538
    move-result-object v0

    .line 539
    .line 540
    .line 541
    invoke-interface {v0, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 545
    const/4 v3, 0x0

    .line 546
    const/4 v4, 0x0

    .line 547
    .line 548
    move-object/from16 v1, p1

    .line 549
    .line 550
    move-object/from16 v2, p2

    .line 551
    .line 552
    move-object/from16 v5, p3

    .line 553
    move-object v0, v11

    .line 554
    .line 555
    .line 556
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaders(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/codec/BeanInfo;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 557
    move-result-object v2

    .line 558
    .line 559
    .line 560
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 561
    const/4 v0, 0x0

    .line 562
    .line 563
    move/from16 v1, v20

    .line 564
    move v3, v1

    .line 565
    :goto_14
    array-length v4, v2

    .line 566
    .line 567
    if-ge v1, v4, :cond_17

    .line 568
    .line 569
    aget-object v4, v2, v1

    .line 570
    .line 571
    iget-object v4, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 575
    move-result v4

    .line 576
    .line 577
    if-eqz v4, :cond_16

    .line 578
    .line 579
    if-nez v0, :cond_15

    .line 580
    array-length v0, v2

    .line 581
    .line 582
    new-array v0, v0, [Z

    .line 583
    .line 584
    :cond_15
    aput-boolean v10, v0, v1

    .line 585
    .line 586
    add-int/lit8 v3, v3, 0x1

    .line 587
    .line 588
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 589
    goto :goto_14

    .line 590
    .line 591
    :cond_17
    if-lez v3, :cond_1a

    .line 592
    array-length v1, v2

    .line 593
    sub-int/2addr v1, v3

    .line 594
    .line 595
    new-array v1, v1, [Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 596
    .line 597
    move/from16 v3, v20

    .line 598
    :goto_15
    array-length v4, v2

    .line 599
    .line 600
    if-ge v3, v4, :cond_19

    .line 601
    .line 602
    aget-boolean v4, v0, v3

    .line 603
    .line 604
    if-nez v4, :cond_18

    .line 605
    .line 606
    add-int/lit8 v4, v20, 0x1

    .line 607
    .line 608
    aget-object v5, v2, v3

    .line 609
    .line 610
    aput-object v5, v1, v20

    .line 611
    .line 612
    move/from16 v20, v4

    .line 613
    .line 614
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 615
    goto :goto_15

    .line 616
    :cond_19
    move-object v2, v1

    .line 617
    .line 618
    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;

    .line 619
    move-object v1, v8

    .line 620
    move-object v8, v9

    .line 621
    move-object v9, v2

    .line 622
    .line 623
    iget-object v2, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    .line 624
    .line 625
    iget-object v3, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 626
    .line 627
    iget-wide v4, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 628
    .line 629
    iget-object v10, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 630
    .line 631
    iget-object v11, v6, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    .line 632
    move-object v6, v1

    .line 633
    .line 634
    move-object/from16 v1, p1

    .line 635
    .line 636
    .line 637
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Function;[Ljava/lang/String;[Lcom/alibaba/fastjson2/reader/FieldReader;[Lcom/alibaba/fastjson2/reader/FieldReader;[Ljava/lang/Class;[Ljava/lang/String;)V

    .line 638
    return-object v0
.end method

.method public createSupplier(Ljava/lang/Class;)Lcom/alibaba/fastjson2/function/Supplier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    new-instance p1, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .line 35
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v3, "get constructor error, class "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    throw v1

    .line 61
    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method
