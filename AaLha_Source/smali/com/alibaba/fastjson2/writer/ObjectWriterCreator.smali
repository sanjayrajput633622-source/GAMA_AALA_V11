.class public Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

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

.method public static synthetic a(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 10

    .line 1
    .line 2
    move-object/from16 v8, p7

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 12
    move-result v0

    .line 13
    const/4 v9, 0x1

    .line 14
    and-int/2addr v0, v9

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    move v0, v9

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 22
    move-object v0, p0

    .line 23
    move-object v6, p1

    .line 24
    move-object v1, p2

    .line 25
    move-wide v2, p3

    .line 26
    move-object v4, p5

    .line 27
    .line 28
    move-object/from16 v5, p6

    .line 29
    .line 30
    move-object/from16 v7, p8

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    instance-of v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    .line 46
    .line 47
    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    .line 48
    .line 49
    iput-boolean v9, v1, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->writeUsing:Z

    .line 50
    .line 51
    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    :cond_2
    if-eqz v1, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->compareTo(Ljava/lang/Object;)I

    .line 70
    move-result v1

    .line 71
    .line 72
    if-lez v1, :cond_3

    .line 73
    .line 74
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_3
    return-void
.end method

.method public static synthetic b(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;JLcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    move-object/from16 v3, p6

    .line 7
    .line 8
    move-object/from16 v13, p7

    .line 9
    .line 10
    move-object/from16 v10, p8

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 17
    .line 18
    move-wide/from16 v4, p2

    .line 19
    .line 20
    iput-wide v4, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 21
    .line 22
    iget-object v2, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v2, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 25
    .line 26
    move-object/from16 v2, p5

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1, v0, v3, v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 30
    .line 31
    iget-boolean v4, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {v3, v1, v0, v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->getFieldName(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    .line 42
    const/4 v14, 0x0

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    array-length v6, v5

    .line 46
    .line 47
    if-lez v6, :cond_2

    .line 48
    move v6, v14

    .line 49
    :goto_0
    array-length v7, v5

    .line 50
    .line 51
    if-ge v6, v7, :cond_f

    .line 52
    .line 53
    aget-object v7, v5, v6

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v7

    .line 58
    .line 59
    if-eqz v7, :cond_1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    :goto_1
    iget-wide v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 66
    .line 67
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 68
    .line 69
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 70
    and-long/2addr v5, v7

    .line 71
    .line 72
    const-wide/16 v7, 0x0

    .line 73
    .line 74
    cmp-long v5, v5, v7

    .line 75
    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_3
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    .line 89
    const/4 v15, 0x1

    .line 90
    .line 91
    if-eqz v5, :cond_6

    .line 92
    move v5, v14

    .line 93
    move v6, v5

    .line 94
    .line 95
    :goto_2
    iget-object v7, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    .line 96
    array-length v8, v7

    .line 97
    .line 98
    if-ge v5, v8, :cond_5

    .line 99
    .line 100
    aget-object v7, v7, v5

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v7

    .line 105
    .line 106
    if-eqz v7, :cond_4

    .line 107
    .line 108
    iput v5, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 109
    move v6, v15

    .line 110
    .line 111
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_2

    .line 113
    .line 114
    :cond_5
    if-nez v6, :cond_6

    .line 115
    .line 116
    iget v1, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 117
    .line 118
    if-nez v1, :cond_6

    .line 119
    array-length v1, v7

    .line 120
    .line 121
    iput v1, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 122
    .line 123
    :cond_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 124
    const/4 v5, 0x0

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    check-cast v1, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_3

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .line 143
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 144
    .line 145
    const-string v2, "create writeUsing Writer error"

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    throw v1

    .line 150
    :cond_7
    move-object v1, v5

    .line 151
    .line 152
    :goto_3
    if-nez v1, :cond_8

    .line 153
    .line 154
    iget-boolean v6, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    .line 155
    .line 156
    if-eqz v6, :cond_8

    .line 157
    .line 158
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;

    .line 159
    :cond_8
    move-object v11, v1

    .line 160
    move-object v1, v5

    .line 161
    .line 162
    iget v5, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 163
    .line 164
    iget-wide v6, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 165
    .line 166
    iget-object v8, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v9, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v12, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->contentAs:Ljava/lang/Class;

    .line 171
    .line 172
    move-object/from16 v16, v1

    .line 173
    .line 174
    move-object/from16 v1, p0

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {v1 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    iget-object v0, v0, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 181
    .line 182
    if-eqz v0, :cond_9

    .line 183
    .line 184
    instance-of v0, v1, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    .line 185
    .line 186
    if-eqz v0, :cond_9

    .line 187
    move-object v0, v1

    .line 188
    .line 189
    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    .line 190
    .line 191
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->writeUsing:Z

    .line 192
    .line 193
    :cond_9
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 200
    .line 201
    if-nez v0, :cond_a

    .line 202
    .line 203
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    :cond_a
    if-eqz v0, :cond_b

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->compareTo(Ljava/lang/Object;)I

    .line 212
    move-result v2

    .line 213
    .line 214
    if-lez v2, :cond_b

    .line 215
    .line 216
    .line 217
    invoke-interface {v13, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    :cond_b
    if-nez v0, :cond_f

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    .line 223
    move-result v0

    .line 224
    .line 225
    const/16 v1, 0x41

    .line 226
    .line 227
    if-lt v0, v1, :cond_c

    .line 228
    .line 229
    const/16 v1, 0x5a

    .line 230
    .line 231
    if-gt v0, v1, :cond_c

    .line 232
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    add-int/lit8 v0, v0, 0x20

    .line 239
    int-to-char v0, v0

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v5

    .line 254
    goto :goto_4

    .line 255
    .line 256
    :cond_c
    const/16 v1, 0x61

    .line 257
    .line 258
    if-lt v0, v1, :cond_d

    .line 259
    .line 260
    const/16 v1, 0x7a

    .line 261
    .line 262
    if-gt v0, v1, :cond_d

    .line 263
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    add-int/lit8 v0, v0, -0x20

    .line 270
    int-to-char v0, v0

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 277
    move-result-object v0

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v5

    .line 285
    goto :goto_4

    .line 286
    .line 287
    :cond_d
    move-object/from16 v5, v16

    .line 288
    .line 289
    :goto_4
    if-eqz v5, :cond_f

    .line 290
    .line 291
    .line 292
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 296
    .line 297
    if-eqz v0, :cond_f

    .line 298
    .line 299
    iget-object v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 300
    .line 301
    if-eqz v0, :cond_e

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result v0

    .line 306
    .line 307
    if-eqz v0, :cond_f

    .line 308
    .line 309
    .line 310
    :cond_e
    invoke-interface {v13, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_f
    :goto_5
    return-void
.end method

.method public static synthetic c(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 7
    move-object v0, p0

    .line 8
    move-object v6, p1

    .line 9
    move-object v1, p2

    .line 10
    move-wide v2, p3

    .line 11
    move-object v4, p5

    .line 12
    move-object v5, p6

    .line 13
    .line 14
    move-object/from16 v7, p8

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    instance-of p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    move-object p1, p0

    .line 30
    .line 31
    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    .line 32
    const/4 p2, 0x1

    .line 33
    .line 34
    iput-boolean p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->writeUsing:Z

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-interface {p7, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    return-void
.end method

.method public static configSerializeFilters(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;)V
    .locals 4

    .line 1
    .line 2
    iget-object p0, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializeFilters:[Ljava/lang/Class;

    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    const-class v3, Lcom/alibaba/fastjson2/filter/Filter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 14
    move-result v3

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/alibaba/fastjson2/filter/Filter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public static getFieldName(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 14
    return-object p0

    .line 15
    .line 16
    :cond_1
    :goto_0
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    .line 17
    .line 18
    iget-object p1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {p3, p2, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;ZLjava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    move-result p2

    .line 27
    const/4 p3, 0x0

    .line 28
    .line 29
    if-lez p2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 33
    move-result v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v0, p3

    .line 36
    .line 37
    :goto_1
    const/16 v1, 0x7a

    .line 38
    .line 39
    const/16 v2, 0x61

    .line 40
    const/4 v3, 0x1

    .line 41
    .line 42
    if-ne p2, v3, :cond_3

    .line 43
    .line 44
    if-lt v0, v2, :cond_3

    .line 45
    .line 46
    if-le v0, v1, :cond_4

    .line 47
    .line 48
    :cond_3
    if-le p2, v3, :cond_8

    .line 49
    .line 50
    const/16 p2, 0x41

    .line 51
    .line 52
    if-lt v0, p2, :cond_8

    .line 53
    .line 54
    const/16 v4, 0x5a

    .line 55
    .line 56
    if-gt v0, v4, :cond_8

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v3

    .line 61
    .line 62
    if-lt v3, p2, :cond_8

    .line 63
    .line 64
    if-gt v3, v4, :cond_8

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 68
    move-result-object p2

    .line 69
    .line 70
    if-lt v0, v2, :cond_5

    .line 71
    .line 72
    if-gt v0, v1, :cond_5

    .line 73
    .line 74
    aget-char v0, p2, p3

    .line 75
    .line 76
    add-int/lit8 v0, v0, -0x20

    .line 77
    int-to-char v0, v0

    .line 78
    .line 79
    aput-char v0, p2, p3

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_5
    aget-char v0, p2, p3

    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x20

    .line 85
    int-to-char v0, v0

    .line 86
    .line 87
    aput-char v0, p2, p3

    .line 88
    .line 89
    :goto_2
    new-instance p3, Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([C)V

    .line 93
    .line 94
    .line 95
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    if-eqz p0, :cond_8

    .line 99
    const/4 v0, 0x2

    .line 100
    :goto_3
    array-length v3, p2

    .line 101
    .line 102
    if-ge v0, v3, :cond_7

    .line 103
    .line 104
    aget-char v3, p2, v0

    .line 105
    .line 106
    if-lt v3, v2, :cond_6

    .line 107
    .line 108
    if-gt v3, v1, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 112
    move-result p0

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 116
    move-result p0

    .line 117
    .line 118
    if-eqz p0, :cond_8

    .line 119
    goto :goto_4

    .line 120
    .line 121
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    :goto_4
    return-object p3

    .line 124
    :cond_8
    return-object p1
.end method


# virtual methods
.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 116
    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 117
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    .line 118
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 119
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v9, v1, :cond_1

    .line 120
    :try_start_0
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.util.HashMap$Node"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 122
    const-string v4, "getValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "getKey"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :catch_0
    move-object/from16 v3, p9

    goto :goto_2

    .line 123
    :cond_0
    :goto_0
    const-class v4, Ljava/util/Map$Entry;

    invoke-virtual {v4, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p9

    :goto_1
    const/4 v4, 0x1

    .line 124
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    move-object v8, v3

    .line 125
    const-class v3, Ljava/util/Date;

    if-nez p10, :cond_3

    if-eqz v0, :cond_3

    if-eqz p7, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-eq v9, v3, :cond_3

    :cond_2
    move-object/from16 v13, p0

    goto :goto_3

    :cond_3
    move-object/from16 v13, p0

    goto :goto_4

    .line 126
    :goto_3
    invoke-virtual {v13, v0, v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->getInitWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    move-object v11, v4

    goto :goto_5

    :goto_4
    move-object/from16 v11, p10

    :goto_5
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long v4, p5, v4

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-eqz v4, :cond_4

    move-object v10, v2

    goto :goto_6

    :cond_4
    move-object/from16 v4, p2

    .line 127
    invoke-static {v4, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v10, v4

    :goto_6
    if-eqz v11, :cond_6

    .line 128
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;

    move-object v1, v10

    move-object v10, v8

    move-object v8, v9

    move-object v9, v1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object v9, v8

    .line 129
    iput-object v9, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->initValueClass:Ljava/lang/Class;

    .line 130
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;

    if-eq v11, v1, :cond_5

    .line 131
    iput-object v11, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->initObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_5
    return-object v0

    :cond_6
    const/4 v4, 0x0

    if-nez p3, :cond_7

    .line 132
    invoke-static {v8, v4, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_7
    move-object/from16 v5, p3

    .line 133
    :goto_7
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v9, v6, :cond_8

    const-class v6, Ljava/lang/Boolean;

    if-ne v9, v6, :cond_9

    :cond_8
    move-object v1, v5

    goto/16 :goto_13

    .line 134
    :cond_9
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v9, v6, :cond_a

    const-class v6, Ljava/lang/Integer;

    if-ne v9, v6, :cond_b

    :cond_a
    move-object v1, v5

    goto/16 :goto_12

    .line 135
    :cond_b
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v9, v6, :cond_c

    const-class v6, Ljava/lang/Float;

    if-ne v9, v6, :cond_d

    :cond_c
    move-object v1, v5

    goto/16 :goto_11

    .line 136
    :cond_d
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v9, v6, :cond_e

    const-class v6, Ljava/lang/Double;

    if-ne v9, v6, :cond_f

    :cond_e
    move-object v1, v5

    goto/16 :goto_10

    .line 137
    :cond_f
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v9, v6, :cond_10

    const-class v6, Ljava/lang/Long;

    if-ne v9, v6, :cond_11

    :cond_10
    move-object v1, v5

    move-object/from16 v5, p7

    goto/16 :goto_e

    .line 138
    :cond_11
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v9, v6, :cond_12

    const-class v6, Ljava/lang/Short;

    if-ne v9, v6, :cond_13

    :cond_12
    move-object v1, v5

    goto/16 :goto_d

    .line 139
    :cond_13
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v9, v6, :cond_14

    const-class v6, Ljava/lang/Byte;

    if-ne v9, v6, :cond_15

    :cond_14
    move-object v1, v5

    goto/16 :goto_c

    .line 140
    :cond_15
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v9, v6, :cond_16

    const-class v6, Ljava/lang/Character;

    if-ne v9, v6, :cond_17

    :cond_16
    move-object v1, v5

    goto/16 :goto_b

    .line 141
    :cond_17
    const-class v6, Ljava/math/BigDecimal;

    if-ne v9, v6, :cond_18

    .line 142
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalMethod;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v6, p8

    move-object v1, v5

    move-object v7, v10

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    :cond_18
    move-object/from16 v16, v5

    move-object v5, v1

    move-object/from16 v1, v16

    .line 143
    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {v9, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static {v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->isWriteEnumAsJavaBean(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 144
    invoke-static {v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 145
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterEnumMethod;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v9

    move-object v9, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterEnumMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    :cond_19
    if-ne v9, v3, :cond_1c

    if-eqz p7, :cond_1b

    .line 146
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v5, v2

    goto :goto_8

    :cond_1a
    move-object v5, v0

    goto :goto_8

    :cond_1b
    move-object/from16 v5, p7

    .line 148
    :goto_8
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterDateMethod;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v6, p8

    move-object v7, v9

    move-object v9, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterDateMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 149
    :cond_1c
    const-class v0, Ljava/lang/String;

    if-ne v9, v0, :cond_1d

    .line 150
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterStringMethod;

    move/from16 v2, p4

    move-wide/from16 v5, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterStringMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 151
    :cond_1d
    const-class v0, Ljava/util/List;

    if-eq v9, v0, :cond_23

    const-class v0, Ljava/util/ArrayList;

    if-eq v9, v0, :cond_23

    const-class v0, Ljava/lang/Iterable;

    if-ne v9, v0, :cond_1e

    goto/16 :goto_9

    .line 152
    :cond_1e
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 153
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterMapMethod;

    move-object v2, v10

    move-object v10, v8

    move-object v8, v9

    move-object v9, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterMapMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0

    .line 154
    :cond_1f
    const-class v0, [Ljava/lang/Float;

    if-ne v9, v0, :cond_20

    .line 155
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;

    const-class v2, Ljava/lang/Float;

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v11, v8

    move-object v8, v7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 156
    :cond_20
    const-class v0, [Ljava/lang/Double;

    if-ne v9, v0, :cond_21

    .line 157
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;

    const-class v2, Ljava/lang/Double;

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v11, v8

    move-object v8, v7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 158
    :cond_21
    const-class v0, [Ljava/math/BigDecimal;

    if-ne v9, v0, :cond_22

    .line 159
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;

    const-class v2, Ljava/math/BigDecimal;

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v11, v8

    move-object v8, v7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 160
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;

    move-object v2, v10

    move-object v10, v8

    move-object v8, v9

    move-object v9, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 161
    :cond_23
    :goto_9
    instance-of v0, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_24

    .line 162
    move-object v0, v7

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    move-object v2, v0

    goto :goto_a

    :cond_24
    move-object v2, v5

    .line 163
    :goto_a
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterListMethod;

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v12, p11

    move-object v11, v9

    move-object v9, v8

    move-object v8, v10

    move-object v10, v7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/FieldWriterListMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 164
    :goto_b
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterCharMethod;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterCharMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0

    .line 165
    :goto_c
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8Method;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0

    .line 166
    :goto_d
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt16Method;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0

    :goto_e
    if-eqz v5, :cond_26

    .line 167
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "string"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_f

    .line 168
    :cond_25
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterMillisMethod;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v6, p8

    move-object v7, v9

    move-object v9, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterMillisMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 169
    :cond_26
    :goto_f
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt64Method;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0

    .line 170
    :goto_10
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleMethod;

    move-object v11, v8

    move-object v8, v9

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v9

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 171
    :goto_11
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatMethod;

    move-object v11, v8

    move-object v8, v9

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v9

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 172
    :goto_12
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Method;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0

    .line 173
    :goto_13
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolMethod;

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0
.end method

.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 184
    invoke-virtual/range {v0 .. v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;TV;>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v8, p10

    .line 185
    const-class p2, Ljava/lang/Byte;

    if-ne v8, p2, :cond_0

    .line 186
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8Func;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8Func;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 187
    :cond_0
    const-class p2, Ljava/lang/Short;

    if-ne v8, p2, :cond_1

    .line 188
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterInt16Func;

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16Func;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v1

    .line 189
    :cond_1
    const-class p2, Ljava/lang/Integer;

    if-ne v8, p2, :cond_2

    .line 190
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Func;

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Func;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v1

    .line 191
    :cond_2
    const-class p2, Ljava/lang/Long;

    if-ne v8, p2, :cond_3

    .line 192
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterInt64Func;

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64Func;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v1

    .line 193
    :cond_3
    const-class p2, Ljava/math/BigInteger;

    if-ne v8, p2, :cond_4

    .line 194
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntFunc;

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v1

    .line 195
    :cond_4
    const-class p2, Ljava/math/BigDecimal;

    if-ne v8, p2, :cond_5

    .line 196
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v1

    .line 197
    :cond_5
    const-class p2, Ljava/lang/String;

    if-ne v8, p2, :cond_6

    .line 198
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v1

    .line 199
    :cond_6
    const-class v0, Ljava/util/Date;

    if-ne v8, v0, :cond_7

    .line 200
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v1

    .line 201
    :cond_7
    const-class v0, Ljava/util/UUID;

    if-ne v8, v0, :cond_8

    .line 202
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 203
    :cond_8
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v1

    .line 205
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 206
    new-instance v0, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    if-nez p1, :cond_a

    .line 207
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 208
    :cond_a
    invoke-virtual {p1, v0, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 209
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    if-nez v0, :cond_b

    .line 210
    iget-object v2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v2, :cond_b

    .line 211
    instance-of v2, v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    if-nez v2, :cond_b

    move v0, v1

    :cond_b
    if-nez v0, :cond_c

    .line 212
    invoke-static {v8, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    move-result-object p1

    if-nez p1, :cond_c

    .line 213
    invoke-static {v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    .line 214
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterEnumFunc;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterEnumFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    :cond_c
    move-object/from16 v7, p9

    .line 215
    instance-of p1, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_10

    .line 216
    move-object p1, v7

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 217
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 218
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 219
    const-class v2, Ljava/util/List;

    if-eq v0, v2, :cond_d

    const-class v2, Ljava/util/ArrayList;

    if-eq v0, v2, :cond_d

    const-class v2, Ljava/lang/Iterable;

    if-ne v0, v2, :cond_f

    .line 220
    :cond_d
    array-length v2, p1

    if-ne v2, v1, :cond_f

    const/4 v0, 0x0

    .line 221
    aget-object p1, p1, v0

    if-ne p1, p2, :cond_e

    .line 222
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v10, p10

    move-object/from16 v8, p12

    move-object v9, v7

    move-object/from16 v7, p11

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object v0

    .line 223
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;

    move-object v7, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 224
    :cond_f
    instance-of p1, v0, Ljava/lang/Class;

    if-eqz p1, :cond_10

    const-class p1, Ljava/util/Map;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 225
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterMapFunction;

    const/4 v9, 0x0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/FieldWriterMapFunction;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/Class;)V

    return-object v0

    .line 226
    :cond_10
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 227
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFuncFinal;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFuncFinal;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 228
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0
.end method

.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 51
    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    .line 52
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    const-class v2, Ljava/lang/Throwable;

    if-ne v0, v2, :cond_0

    .line 54
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "stackTrace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "getStackTrace"

    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    if-eqz v9, :cond_1

    .line 56
    const-class v2, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1

    :cond_1
    move-object/from16 v11, p9

    .line 57
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 58
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    if-eqz v11, :cond_3

    .line 59
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    const/4 v10, 0x0

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 60
    iput-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->initValueClass:Ljava/lang/Class;

    .line 61
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;

    if-eq v11, p1, :cond_2

    .line 62
    iput-object v11, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->initObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_2
    return-object v0

    .line 63
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_4

    .line 64
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v0

    .line 65
    :cond_4
    const-class v2, Ljava/lang/Boolean;

    if-ne v8, v2, :cond_5

    .line 66
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolField;

    move-object v9, v8

    const/4 v8, 0x0

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0

    .line 67
    :cond_5
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_6

    .line 68
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 69
    :cond_6
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_7

    .line 70
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 71
    :cond_7
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_8

    .line 72
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Val;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Val;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    :cond_8
    move-object/from16 v5, p6

    .line 73
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_b

    if-eqz v5, :cond_a

    .line 74
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "string"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    .line 75
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterMillisField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterMillisField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 76
    :cond_a
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 77
    :cond_b
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_c

    .line 78
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 79
    :cond_c
    const-class v2, Ljava/lang/Float;

    if-ne v8, v2, :cond_d

    .line 80
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 81
    :cond_d
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_e

    .line 82
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 83
    :cond_e
    const-class v2, Ljava/lang/Double;

    if-ne v8, v2, :cond_f

    .line 84
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 85
    :cond_f
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_10

    .line 86
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterCharValField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterCharValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 87
    :cond_10
    const-class v2, Ljava/math/BigInteger;

    if-ne v8, v2, :cond_11

    .line 88
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 89
    :cond_11
    const-class v2, Ljava/math/BigDecimal;

    if-ne v8, v2, :cond_12

    .line 90
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 91
    :cond_12
    const-class v2, Ljava/util/Date;

    if-ne v8, v2, :cond_13

    .line 92
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterDateField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterDateField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 93
    :cond_13
    const-class v2, Ljava/lang/String;

    if-ne v8, v2, :cond_14

    .line 94
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterStringField;

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterStringField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 95
    :cond_14
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 96
    new-instance v2, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 97
    invoke-virtual {p1, v2, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 98
    iget-boolean v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    if-nez v2, :cond_15

    .line 99
    iget-object v3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v3, :cond_15

    .line 100
    instance-of v3, v3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    if-nez v3, :cond_15

    const/4 v2, 0x1

    .line 101
    :cond_15
    invoke-static {v8, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    move-result-object p1

    if-nez p1, :cond_16

    if-nez v2, :cond_16

    .line 102
    invoke-static {v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    .line 103
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;

    const/4 v10, 0x0

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 104
    :cond_16
    const-class p1, Ljava/util/List;

    if-eq v8, p1, :cond_1a

    const-class p1, Ljava/util/ArrayList;

    if-eq v8, p1, :cond_1a

    const-class p1, Ljava/lang/Iterable;

    if-ne v8, p1, :cond_17

    goto :goto_2

    .line 105
    :cond_17
    const-class p1, Ljava/util/Map;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 106
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterMapField;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v10, 0x0

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterMapField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v0

    .line 107
    :cond_18
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_19

    .line 108
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 109
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;

    move-object v9, v8

    move-object v8, v2

    move-object v1, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 110
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v10, 0x0

    move-object v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 111
    :cond_1a
    :goto_2
    instance-of p1, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_1b

    .line 112
    move-object p1, v7

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    :cond_1b
    move-object v2, v1

    .line 113
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterListField;

    move-object v1, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    move-object v9, v8

    move-object v8, v7

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 12

    move-object/from16 v2, p4

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v9, p7

    .line 1
    iput-wide p2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 2
    invoke-virtual {v2, v0, v1, p1, v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 3
    iget-boolean p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return-object p2

    .line 4
    :cond_0
    iget-object p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    :cond_2
    :goto_0
    move-object v3, p1

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p3, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 8
    invoke-static {p1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :goto_2
    iget-object p1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    move p1, p3

    move v5, p1

    .line 10
    :goto_3
    iget-object v6, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    array-length v7, v6

    if-ge p1, v7, :cond_5

    .line 11
    aget-object v6, v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12
    iput p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    move v5, v4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    if-nez v5, :cond_6

    .line 13
    iget p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    if-nez p1, :cond_6

    .line 14
    array-length p1, v6

    iput p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 15
    :cond_6
    iget p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    if-nez p1, :cond_7

    iget-object p1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, -0x1

    .line 16
    iput p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 17
    :cond_7
    iget-object p1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 18
    array-length v5, p1

    if-lez v5, :cond_a

    .line 19
    :goto_4
    array-length v5, p1

    if-ge p3, v5, :cond_9

    .line 20
    aget-object v5, p1, p3

    .line 21
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_9
    return-object p2

    .line 22
    :cond_a
    :goto_5
    iget-object p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    if-eqz p1, :cond_b

    .line 23
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    :goto_6
    move-object p1, v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_6

    .line 26
    :goto_7
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "create writeUsing Writer error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_b
    move-object p1, p2

    .line 27
    :goto_8
    :try_start_1
    invoke-virtual {v9, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    if-nez p1, :cond_c

    .line 28
    iget-boolean p3, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    if-eqz p3, :cond_c

    .line 29
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;

    :cond_c
    if-nez p1, :cond_d

    .line 30
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    .line 31
    const-class v5, Ljava/util/Date;

    if-ne p3, v5, :cond_e

    .line 32
    iget-object p2, v2, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 33
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    if-eq p2, p3, :cond_d

    move-object p1, p2

    :cond_d
    :goto_9
    move-object v10, p1

    goto :goto_b

    .line 34
    :cond_e
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->keyUsing:Ljava/lang/Class;

    if-nez v5, :cond_f

    iget-object v6, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->valueUsing:Ljava/lang/Class;

    if-eqz v6, :cond_d

    :cond_f
    if-eqz v5, :cond_10

    .line 35
    :try_start_2
    invoke-virtual {v5, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 36
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 37
    invoke-virtual {v5, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_a

    :catch_4
    :cond_10
    move-object v5, p2

    .line 38
    :goto_a
    iget-object v6, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->valueUsing:Ljava/lang/Class;

    if-eqz v6, :cond_11

    .line 39
    :try_start_3
    invoke-virtual {v6, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 40
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 41
    invoke-virtual {v6, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object p2, v4

    :catch_5
    :cond_11
    if-nez v5, :cond_12

    if-eqz p2, :cond_d

    .line 42
    :cond_12
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p1

    .line 43
    iput-object v5, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 44
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_9

    .line 45
    :goto_b
    iget-object p1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    if-nez p1, :cond_13

    .line 46
    iget-object p2, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-eqz p2, :cond_13

    move-object v7, p2

    goto :goto_c

    :cond_13
    move-object v7, p1

    .line 47
    :goto_c
    iget v4, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    iget-wide v5, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v8, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    iget-object v11, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->contentAs:Ljava/lang/Class;

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    .line 115
    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 114
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    .line 50
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    .line 49
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v10, p5

    move-object v0, p0

    move-object v3, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v12, p6

    .line 183
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/Predicate;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/Predicate<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Predicate;)V

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToByteFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToByteFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToByteFunction;)V

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToDoubleFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToDoubleFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValueFunc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValueFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToDoubleFunction;)V

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToFloatFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToFloatFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToFloatFunction;)V

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToIntFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToIntFunction;)V

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToLongFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToLongFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToLongFunction;)V

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToShortFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToShortFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValFunc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToShortFunction;)V

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v10, p2

    move-object v0, p0

    move-object v3, p1

    move-object v9, p2

    move-object/from16 v12, p3

    .line 181
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    .line 48
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    .line 182
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 3

    const-wide/16 v0, 0x0

    .line 3
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    .line 28
    new-instance v7, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v7}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 29
    invoke-virtual {v6, v7, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 30
    iget-object v0, v7, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    iget-object v0, v7, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 32
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "create serializer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 33
    :cond_0
    iget-wide v2, v7, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 34
    iget-object v0, v7, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    not-long v4, v4

    and-long/2addr v2, v4

    :cond_1
    or-long v2, p2, v2

    .line 36
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    not-long v4, v4

    and-long/2addr v4, v2

    .line 37
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_3

    move v12, v11

    goto :goto_2

    :cond_3
    move v12, v0

    .line 39
    :goto_2
    new-instance v2, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    if-eqz v12, :cond_4

    .line 40
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 41
    new-instance v0, Lcom/alibaba/fastjson2/writer/b;

    move-object v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/b;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;)V

    move-object v1, v3

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    move-object v8, v7

    goto :goto_3

    .line 43
    :cond_4
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 44
    new-instance v0, Lcom/alibaba/fastjson2/writer/c;

    move-object/from16 v6, p4

    move-object v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/c;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;)V

    move-object v1, v3

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 45
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v13

    .line 46
    iget-boolean v14, v7, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    new-instance v0, Lcom/alibaba/fastjson2/writer/d;

    move-wide v3, v4

    move-object v5, v7

    move-object v7, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/d;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;JLcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/util/Map;)V

    move-object v2, v0

    move-object v1, v7

    move-object v0, v8

    move-object v8, v5

    invoke-static {v1, v13, v14, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/lang/Class;ZLcom/alibaba/fastjson2/function/Consumer;)V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v2

    .line 48
    :goto_3
    iget-wide v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    or-long v4, p2, v2

    if-nez v12, :cond_5

    .line 49
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterException;

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterException;-><init>(Ljava/lang/Class;JLjava/util/List;)V

    return-object v0

    .line 51
    :cond_5
    invoke-virtual {p0, v8, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->handleIgnores(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/List;)V

    .line 52
    iget-boolean v0, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    if-eqz v0, :cond_6

    .line 53
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v2, "com.google.common.collect.e$h"

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "com.google.common.collect.e$n"

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_4

    .line 58
    :cond_7
    iget-object v0, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->rootName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 59
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 60
    :pswitch_0
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_5

    .line 61
    :pswitch_1
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter11;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter11;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_5

    .line 62
    :pswitch_2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter10;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter10;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_5

    .line 63
    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_5

    .line 64
    :pswitch_4
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_5

    .line 65
    :pswitch_5
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter7;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter7;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_5

    .line 66
    :pswitch_6
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter6;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_5

    .line 67
    :pswitch_7
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter5;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_5

    .line 68
    :pswitch_8
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter4;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_5

    .line 69
    :pswitch_9
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter3;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter3;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_5

    .line 70
    :pswitch_a
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_5

    .line 71
    :pswitch_b
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v9

    if-nez v0, :cond_8

    .line 72
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriter1;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_a

    move-object v7, v6

    move-wide v5, v4

    .line 73
    iget-object v4, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->rootName:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 74
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterRootName;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterRootName;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_6

    :cond_9
    move-wide v4, v5

    move-object v6, v7

    .line 75
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    iget-object v2, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 76
    :cond_a
    :goto_6
    iget-object v1, v8, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializeFilters:[Ljava/lang/Class;

    if-eqz v1, :cond_b

    .line 77
    invoke-static {v8, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->configSerializeFilters(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;)V

    :cond_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs createObjectWriter(Ljava/lang/Class;J[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 9

    .line 5
    array-length v0, p4

    if-nez v0, :cond_0

    .line 6
    sget-object p4, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v1, "com.google.common.collect.e$h"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.common.collect.e$n"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p1

    move-wide v6, p2

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v1

    .line 12
    :goto_1
    array-length p1, p4

    packed-switch p1, :pswitch_data_0

    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 14
    :pswitch_0
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter12;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 15
    :pswitch_1
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter11;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter11;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 16
    :pswitch_2
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter10;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter10;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 17
    :pswitch_3
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter9;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 18
    :pswitch_4
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter8;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 19
    :pswitch_5
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter7;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter7;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 20
    :pswitch_6
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter6;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 21
    :pswitch_7
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter5;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 22
    :pswitch_8
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter4;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 23
    :pswitch_9
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter3;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter3;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 24
    :pswitch_a
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter2;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    :pswitch_b
    const/4 p1, 0x0

    .line 25
    aget-object p1, p4, p1

    iget-wide p1, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 26
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriter1;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    .line 27
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs createObjectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;J[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public createObjectWriter(Ljava/util/List;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method public varargs createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 7

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const-wide/16 v4, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method public getInitWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 8

    .line 1
    .line 2
    const-class v0, Ljava/util/Date;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    iget-wide v3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    .line 9
    .line 10
    const-wide/16 v5, 0x10

    .line 11
    and-long/2addr v3, v5

    .line 12
    .line 13
    cmp-long v0, v3, v1

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 24
    .line 25
    sget-object p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    .line 26
    .line 27
    if-eq p1, p2, :cond_4

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    const-class v3, Ljava/lang/Long;

    .line 33
    .line 34
    if-eq p2, v0, :cond_3

    .line 35
    .line 36
    if-ne p2, v3, :cond_1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    const-class v0, Ljava/math/BigDecimal;

    .line 40
    .line 41
    if-ne p2, v0, :cond_2

    .line 42
    .line 43
    iget-wide v3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    .line 44
    .line 45
    const-wide/16 v5, 0x8

    .line 46
    and-long/2addr v3, v5

    .line 47
    .line 48
    cmp-long v0, v3, v1

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 59
    .line 60
    sget-object p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 61
    .line 62
    if-eq p1, p2, :cond_4

    .line 63
    return-object p1

    .line 64
    .line 65
    :cond_2
    const-class v0, Ljava/lang/Enum;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 80
    .line 81
    instance-of p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    .line 82
    .line 83
    if-nez p2, :cond_4

    .line 84
    return-object p1

    .line 85
    .line 86
    :cond_3
    :goto_0
    iget-wide v4, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    .line 87
    .line 88
    const-wide/16 v6, 0x4

    .line 89
    and-long/2addr v4, v6

    .line 90
    .line 91
    cmp-long p2, v4, v1

    .line 92
    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 102
    .line 103
    sget-object p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;

    .line 104
    .line 105
    if-eq p1, p2, :cond_4

    .line 106
    return-object p1

    .line 107
    :cond_4
    const/4 p1, 0x0

    .line 108
    return-object p1
.end method

.method public handleIgnores(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    array-length v0, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_3

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v0, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 25
    array-length v3, v2

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    :goto_1
    if-ge v4, v3, :cond_2

    .line 29
    .line 30
    aget-object v5, v2, v4

    .line 31
    .line 32
    iget-object v6, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_3
    return-void
.end method
