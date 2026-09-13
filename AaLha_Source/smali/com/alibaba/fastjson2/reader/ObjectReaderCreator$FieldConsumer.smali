.class final Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FieldConsumer"
.end annotation


# instance fields
.field final beanInfo:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field final fieldBased:Z

.field final fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field final fieldReaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ">;"
        }
    .end annotation
.end field

.field final namingStrategy:Ljava/lang/String;

.field final objectClass:Ljava/lang/Class;

.field final objectType:Ljava/lang/reflect/Type;

.field final provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field final synthetic this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/codec/FieldInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ">;",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->objectClass:Ljava/lang/Class;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->objectType:Ljava/lang/reflect/Type;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->namingStrategy:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldReaders:Ljava/util/Map;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->beanInfo:Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 20
    .line 21
    iput-boolean p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldBased:Z

    .line 22
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v13, p1

    .line 5
    .line 6
    check-cast v13, Ljava/lang/reflect/Field;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldBased:Z

    .line 14
    .line 15
    const/16 v17, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 20
    .line 21
    iget-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 22
    .line 23
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 24
    .line 25
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 26
    or-long/2addr v2, v4

    .line 27
    .line 28
    iput-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    and-int/2addr v2, v3

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    move/from16 v3, v17

    .line 43
    .line 44
    :goto_0
    iput-boolean v3, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 45
    .line 46
    :goto_1
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 47
    .line 48
    iget-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 49
    .line 50
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->beanInfo:Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 51
    .line 52
    iget-wide v5, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 53
    or-long/2addr v2, v5

    .line 54
    .line 55
    iput-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 56
    .line 57
    iget-object v2, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 62
    .line 63
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->objectClass:Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1, v3, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 67
    .line 68
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 69
    .line 70
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    iget-wide v1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 75
    .line 76
    const-wide/high16 v3, 0x2000000000000L

    .line 77
    and-long/2addr v1, v3

    .line 78
    .line 79
    const-wide/16 v3, 0x0

    .line 80
    .line 81
    cmp-long v1, v1, v3

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    const-class v1, Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    return-void

    .line 98
    .line 99
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    goto :goto_4

    .line 111
    .line 112
    :cond_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 115
    :cond_5
    :goto_3
    move-object v4, v1

    .line 116
    goto :goto_5

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_4
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->namingStrategy:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    goto :goto_3

    .line 130
    .line 131
    :goto_5
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->beanInfo:Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 132
    .line 133
    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v1, :cond_9

    .line 136
    array-length v2, v1

    .line 137
    .line 138
    if-lez v2, :cond_9

    .line 139
    .line 140
    move/from16 v2, v17

    .line 141
    :goto_6
    array-length v3, v1

    .line 142
    .line 143
    if-ge v2, v3, :cond_8

    .line 144
    .line 145
    aget-object v3, v1, v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v3

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 154
    .line 155
    iput v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 156
    goto :goto_7

    .line 157
    .line 158
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 159
    goto :goto_6

    .line 160
    .line 161
    :cond_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 162
    .line 163
    iget v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 164
    .line 165
    if-nez v3, :cond_9

    .line 166
    array-length v1, v1

    .line 167
    .line 168
    iput v1, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 169
    .line 170
    .line 171
    :cond_9
    :goto_7
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 172
    move-result-object v12

    .line 173
    .line 174
    .line 175
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 176
    move-result-object v11

    .line 177
    .line 178
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 179
    .line 180
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 181
    .line 182
    .line 183
    invoke-static {v1, v11, v12, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->getInitReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/FieldInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 184
    move-result-object v14

    .line 185
    .line 186
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 187
    .line 188
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->objectClass:Ljava/lang/Class;

    .line 189
    .line 190
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->objectType:Ljava/lang/reflect/Type;

    .line 191
    .line 192
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 193
    .line 194
    iget v6, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 195
    move v8, v6

    .line 196
    .line 197
    iget-wide v6, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 198
    move v9, v8

    .line 199
    .line 200
    iget-object v8, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 201
    move v10, v9

    .line 202
    .line 203
    iget-object v9, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 204
    move v15, v10

    .line 205
    .line 206
    iget-object v10, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 207
    .line 208
    move/from16 v16, v15

    .line 209
    .line 210
    iget-object v15, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->arrayToMapKey:Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/codec/FieldInfo;->getInitArrayToMapDuplicateHandler()Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 214
    move-result-object v5

    .line 215
    .line 216
    move/from16 v20, v16

    .line 217
    .line 218
    move-object/from16 v16, v5

    .line 219
    .line 220
    move/from16 v5, v20

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {v1 .. v16}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 224
    move-result-object v1

    .line 225
    move-object v15, v4

    .line 226
    .line 227
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldReaders:Ljava/util/Map;

    .line 228
    .line 229
    .line 230
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 232
    .line 233
    check-cast v2, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 234
    .line 235
    if-nez v2, :cond_a

    .line 236
    .line 237
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldReaders:Ljava/util/Map;

    .line 238
    .line 239
    .line 240
    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    goto :goto_8

    .line 242
    .line 243
    .line 244
    :cond_a
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I

    .line 245
    move-result v2

    .line 246
    .line 247
    if-lez v2, :cond_b

    .line 248
    .line 249
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldReaders:Ljava/util/Map;

    .line 250
    .line 251
    .line 252
    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    :cond_b
    :goto_8
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 255
    .line 256
    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v1, :cond_e

    .line 259
    array-length v2, v1

    .line 260
    .line 261
    move/from16 v3, v17

    .line 262
    .line 263
    :goto_9
    if-ge v3, v2, :cond_e

    .line 264
    .line 265
    aget-object v4, v1, v3

    .line 266
    .line 267
    .line 268
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    move-result v5

    .line 270
    .line 271
    if-eqz v5, :cond_c

    .line 272
    .line 273
    move-object/from16 v16, v1

    .line 274
    .line 275
    move/from16 v17, v2

    .line 276
    .line 277
    move/from16 v18, v3

    .line 278
    goto :goto_a

    .line 279
    :cond_c
    move-object v5, v1

    .line 280
    .line 281
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 282
    move v6, v2

    .line 283
    .line 284
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->objectClass:Ljava/lang/Class;

    .line 285
    .line 286
    move/from16 v17, v3

    .line 287
    .line 288
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->objectType:Ljava/lang/reflect/Type;

    .line 289
    .line 290
    iget-object v7, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 291
    move-object v8, v5

    .line 292
    .line 293
    iget v5, v7, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 294
    .line 295
    iget-wide v9, v7, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 296
    .line 297
    move-wide/from16 v18, v9

    .line 298
    .line 299
    iget-object v9, v7, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 300
    .line 301
    iget-object v10, v7, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 302
    const/4 v14, 0x0

    .line 303
    move-object v7, v8

    .line 304
    const/4 v8, 0x0

    .line 305
    .line 306
    move-object/from16 v16, v7

    .line 307
    .line 308
    move/from16 v20, v17

    .line 309
    .line 310
    move/from16 v17, v6

    .line 311
    .line 312
    move-wide/from16 v6, v18

    .line 313
    .line 314
    move/from16 v18, v20

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v1 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 318
    move-result-object v1

    .line 319
    .line 320
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldReaders:Ljava/util/Map;

    .line 321
    .line 322
    .line 323
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    move-result-object v2

    .line 325
    .line 326
    check-cast v2, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 327
    .line 328
    if-nez v2, :cond_d

    .line 329
    .line 330
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$FieldConsumer;->fieldReaders:Ljava/util/Map;

    .line 331
    .line 332
    .line 333
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    :cond_d
    :goto_a
    add-int/lit8 v3, v18, 0x1

    .line 336
    .line 337
    move-object/from16 v1, v16

    .line 338
    .line 339
    move/from16 v2, v17

    .line 340
    goto :goto_9

    .line 341
    :cond_e
    return-void
.end method
