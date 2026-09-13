.class final Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;
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
    name = "CreateFieldReaderConsumer"
.end annotation


# instance fields
.field final beanInfo:Lcom/alibaba/fastjson2/codec/BeanInfo;

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

.field final orders:[Ljava/lang/String;

.field final provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field final synthetic this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Lcom/alibaba/fastjson2/codec/FieldInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ">;",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectType:Ljava/lang/reflect/Type;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->namingStrategy:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->orders:[Ljava/lang/String;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->beanInfo:Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

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
    check-cast v13, Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 12
    .line 13
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 14
    .line 15
    iget-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 16
    .line 17
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->beanInfo:Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 18
    .line 19
    iget-wide v5, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 20
    or-long/2addr v2, v5

    .line 21
    .line 22
    iput-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 23
    .line 24
    iget-object v2, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 29
    .line 30
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1, v3, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 34
    .line 35
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 36
    .line 37
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto/16 :goto_c

    .line 42
    .line 43
    :cond_0
    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 44
    const/4 v2, 0x2

    .line 45
    const/4 v3, 0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    .line 48
    if-nez v1, :cond_a

    .line 49
    .line 50
    .line 51
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-string v5, "set"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 58
    move-result v5

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->namingStrategy:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 69
    .line 70
    iget-object v6, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 71
    .line 72
    if-nez v6, :cond_3

    .line 73
    const/4 v6, 0x3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v6, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 83
    move-result-object v6

    .line 84
    .line 85
    if-nez v6, :cond_1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 89
    move-result-object v7

    .line 90
    .line 91
    aget-object v7, v7, v4

    .line 92
    .line 93
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    if-ne v7, v8, :cond_1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 99
    move-result v7

    .line 100
    .line 101
    if-nez v7, :cond_1

    .line 102
    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    const-string v7, "is"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 115
    move-result v7

    .line 116
    .line 117
    .line 118
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    .line 119
    move-result v7

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {v6, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 139
    move-result-object v6

    .line 140
    .line 141
    :cond_1
    if-eqz v6, :cond_3

    .line 142
    .line 143
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 144
    .line 145
    .line 146
    filled-new-array {v1}, [Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    iput-object v1, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 150
    goto :goto_0

    .line 151
    .line 152
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->beanInfo:Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 153
    .line 154
    iget-boolean v1, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    .line 155
    .line 156
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->namingStrategy:Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    invoke-static {v13, v1, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;ZLjava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v5

    .line 161
    .line 162
    .line 163
    :cond_3
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 164
    move-result v1

    .line 165
    .line 166
    if-lez v1, :cond_4

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 170
    move-result v6

    .line 171
    goto :goto_1

    .line 172
    :cond_4
    move v6, v4

    .line 173
    .line 174
    :goto_1
    if-ne v1, v3, :cond_5

    .line 175
    .line 176
    const/16 v7, 0x61

    .line 177
    .line 178
    if-lt v6, v7, :cond_5

    .line 179
    .line 180
    const/16 v7, 0x7a

    .line 181
    .line 182
    if-le v6, v7, :cond_6

    .line 183
    .line 184
    :cond_5
    if-le v1, v2, :cond_9

    .line 185
    .line 186
    const/16 v7, 0x41

    .line 187
    .line 188
    if-lt v6, v7, :cond_9

    .line 189
    .line 190
    const/16 v8, 0x5a

    .line 191
    .line 192
    if-gt v6, v8, :cond_9

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 196
    move-result v6

    .line 197
    .line 198
    if-lt v6, v7, :cond_9

    .line 199
    .line 200
    if-gt v6, v8, :cond_9

    .line 201
    .line 202
    .line 203
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    .line 204
    move-result-object v6

    .line 205
    .line 206
    if-ne v1, v3, :cond_7

    .line 207
    .line 208
    aget-char v7, v6, v4

    .line 209
    .line 210
    add-int/lit8 v7, v7, -0x20

    .line 211
    int-to-char v7, v7

    .line 212
    .line 213
    aput-char v7, v6, v4

    .line 214
    goto :goto_2

    .line 215
    .line 216
    :cond_7
    aget-char v7, v6, v4

    .line 217
    .line 218
    add-int/lit8 v7, v7, 0x20

    .line 219
    int-to-char v7, v7

    .line 220
    .line 221
    aput-char v7, v6, v4

    .line 222
    .line 223
    :goto_2
    new-instance v7, Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    .line 227
    .line 228
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {v6, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 232
    move-result-object v6

    .line 233
    .line 234
    if-eqz v6, :cond_9

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 238
    move-result v7

    .line 239
    .line 240
    .line 241
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 242
    move-result v7

    .line 243
    .line 244
    if-eqz v7, :cond_8

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 248
    move-result-object v1

    .line 249
    goto :goto_3

    .line 250
    .line 251
    :cond_8
    if-ne v1, v3, :cond_9

    .line 252
    .line 253
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 254
    .line 255
    .line 256
    filled-new-array {v5}, [Ljava/lang/String;

    .line 257
    move-result-object v5

    .line 258
    .line 259
    iput-object v5, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 264
    goto :goto_3

    .line 265
    :cond_9
    move-object v1, v5

    .line 266
    .line 267
    :cond_a
    :goto_3
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->orders:[Ljava/lang/String;

    .line 268
    .line 269
    if-eqz v5, :cond_d

    .line 270
    array-length v5, v5

    .line 271
    .line 272
    if-lez v5, :cond_d

    .line 273
    move v5, v4

    .line 274
    .line 275
    :goto_4
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->orders:[Ljava/lang/String;

    .line 276
    array-length v7, v6

    .line 277
    .line 278
    if-ge v5, v7, :cond_c

    .line 279
    .line 280
    aget-object v6, v6, v5

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    move-result v6

    .line 285
    .line 286
    if-eqz v6, :cond_b

    .line 287
    .line 288
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 289
    .line 290
    iput v5, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 291
    goto :goto_5

    .line 292
    .line 293
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 294
    goto :goto_4

    .line 295
    .line 296
    :cond_c
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 297
    .line 298
    iget v7, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 299
    .line 300
    if-nez v7, :cond_d

    .line 301
    array-length v6, v6

    .line 302
    .line 303
    iput v6, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 304
    .line 305
    .line 306
    :cond_d
    :goto_5
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 307
    move-result-object v5

    .line 308
    array-length v6, v5

    .line 309
    .line 310
    if-nez v6, :cond_f

    .line 311
    move-object v4, v1

    .line 312
    .line 313
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 314
    .line 315
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 316
    .line 317
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectType:Ljava/lang/reflect/Type;

    .line 318
    .line 319
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 320
    .line 321
    iget v6, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 322
    .line 323
    iget-wide v7, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 324
    .line 325
    const-wide/high16 v9, 0x100000000000000L

    .line 326
    or-long/2addr v7, v9

    .line 327
    move v9, v6

    .line 328
    move-wide v6, v7

    .line 329
    .line 330
    iget-object v8, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 331
    move v10, v9

    .line 332
    .line 333
    iget-object v9, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 334
    .line 335
    iget-object v5, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 339
    move-result-object v11

    .line 340
    .line 341
    .line 342
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 343
    move-result-object v12

    .line 344
    .line 345
    iget-object v14, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/codec/FieldInfo;->getInitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 349
    move-result-object v14

    .line 350
    .line 351
    iget-object v15, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 352
    .line 353
    move-object/from16 v16, v1

    .line 354
    move-object v1, v15

    .line 355
    .line 356
    iget-object v15, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->arrayToMapKey:Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->getInitArrayToMapDuplicateHandler()Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 360
    move-result-object v1

    .line 361
    .line 362
    move-object/from16 v19, v16

    .line 363
    .line 364
    move-object/from16 v16, v1

    .line 365
    .line 366
    move-object/from16 v1, v19

    .line 367
    .line 368
    move/from16 v19, v10

    .line 369
    move-object v10, v5

    .line 370
    .line 371
    move/from16 v5, v19

    .line 372
    .line 373
    .line 374
    invoke-virtual/range {v1 .. v16}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 375
    move-result-object v1

    .line 376
    .line 377
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 378
    .line 379
    .line 380
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-result-object v2

    .line 382
    .line 383
    check-cast v2, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 384
    .line 385
    if-nez v2, :cond_e

    .line 386
    .line 387
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 388
    .line 389
    .line 390
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void

    .line 392
    .line 393
    .line 394
    :cond_e
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I

    .line 395
    move-result v2

    .line 396
    .line 397
    if-lez v2, :cond_19

    .line 398
    .line 399
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 400
    .line 401
    .line 402
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-void

    .line 404
    .line 405
    :cond_f
    move/from16 v19, v4

    .line 406
    move-object v4, v1

    .line 407
    .line 408
    move/from16 v1, v19

    .line 409
    .line 410
    if-ne v6, v2, :cond_10

    .line 411
    .line 412
    aget-object v1, v5, v3

    .line 413
    .line 414
    .line 415
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 416
    move-result-object v2

    .line 417
    .line 418
    aget-object v2, v2, v3

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 422
    move-object v3, v1

    .line 423
    .line 424
    new-instance v1, Lcom/alibaba/fastjson2/reader/FieldReaderAnySetter;

    .line 425
    .line 426
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 427
    .line 428
    iget v5, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 429
    move v7, v5

    .line 430
    .line 431
    iget-wide v5, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 432
    .line 433
    iget-object v4, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 434
    move v8, v7

    .line 435
    move-object v7, v4

    .line 436
    move v4, v8

    .line 437
    move-object v8, v13

    .line 438
    .line 439
    .line 440
    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson2/reader/FieldReaderAnySetter;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;)V

    .line 441
    .line 442
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 443
    .line 444
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void

    .line 449
    .line 450
    :cond_10
    aget-object v12, v5, v1

    .line 451
    .line 452
    .line 453
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    .line 454
    move-result v2

    .line 455
    .line 456
    if-nez v2, :cond_12

    .line 457
    .line 458
    const-class v2, Ljava/lang/String;

    .line 459
    .line 460
    if-eq v12, v2, :cond_12

    .line 461
    .line 462
    .line 463
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    .line 464
    move-result v2

    .line 465
    .line 466
    if-eqz v2, :cond_11

    .line 467
    goto :goto_6

    .line 468
    .line 469
    .line 470
    :cond_11
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 471
    move-result-object v2

    .line 472
    .line 473
    aget-object v2, v2, v1

    .line 474
    goto :goto_7

    .line 475
    :cond_12
    :goto_6
    move-object v2, v12

    .line 476
    .line 477
    :goto_7
    instance-of v5, v2, Ljava/lang/Class;

    .line 478
    .line 479
    if-eqz v5, :cond_14

    .line 480
    .line 481
    const-class v5, Ljava/util/Collection;

    .line 482
    move-object v6, v2

    .line 483
    .line 484
    check-cast v6, Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 488
    move-result v5

    .line 489
    .line 490
    if-eqz v5, :cond_14

    .line 491
    .line 492
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 496
    move-result-object v5

    .line 497
    move v6, v1

    .line 498
    :goto_8
    array-length v7, v5

    .line 499
    .line 500
    if-ge v6, v7, :cond_14

    .line 501
    .line 502
    aget-object v7, v5, v6

    .line 503
    .line 504
    .line 505
    invoke-static {v7, v13}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 506
    move-result-object v7

    .line 507
    .line 508
    if-eqz v7, :cond_13

    .line 509
    .line 510
    .line 511
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 512
    move-result-object v7

    .line 513
    array-length v8, v7

    .line 514
    .line 515
    if-ne v8, v3, :cond_13

    .line 516
    .line 517
    aget-object v7, v7, v1

    .line 518
    .line 519
    instance-of v8, v7, Ljava/lang/reflect/ParameterizedType;

    .line 520
    .line 521
    if-eqz v8, :cond_13

    .line 522
    move-object v2, v7

    .line 523
    .line 524
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 525
    goto :goto_8

    .line 526
    :cond_14
    move-object v11, v2

    .line 527
    .line 528
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 529
    .line 530
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 531
    .line 532
    .line 533
    invoke-static {v2, v11, v12, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->getInitReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/FieldInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 534
    move-result-object v14

    .line 535
    move v2, v1

    .line 536
    .line 537
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 538
    move v3, v2

    .line 539
    .line 540
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 541
    move v5, v3

    .line 542
    .line 543
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectType:Ljava/lang/reflect/Type;

    .line 544
    .line 545
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 546
    move v7, v5

    .line 547
    .line 548
    iget v5, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 549
    .line 550
    iget-wide v8, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 551
    move-wide v9, v8

    .line 552
    .line 553
    iget-object v8, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 554
    move-wide v15, v9

    .line 555
    .line 556
    iget-object v9, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 557
    .line 558
    iget-object v10, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 559
    .line 560
    move-wide/from16 v16, v15

    .line 561
    .line 562
    iget-object v15, v6, Lcom/alibaba/fastjson2/codec/FieldInfo;->arrayToMapKey:Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/codec/FieldInfo;->getInitArrayToMapDuplicateHandler()Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 566
    move-result-object v6

    .line 567
    .line 568
    move-wide/from16 v19, v16

    .line 569
    .line 570
    move-object/from16 v16, v6

    .line 571
    .line 572
    move/from16 v17, v7

    .line 573
    .line 574
    move-wide/from16 v6, v19

    .line 575
    .line 576
    .line 577
    invoke-virtual/range {v1 .. v16}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 578
    move-result-object v1

    .line 579
    move-object v15, v4

    .line 580
    .line 581
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 582
    .line 583
    .line 584
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    move-result-object v2

    .line 586
    .line 587
    check-cast v2, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 588
    .line 589
    if-nez v2, :cond_15

    .line 590
    .line 591
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 592
    .line 593
    .line 594
    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    goto :goto_9

    .line 596
    .line 597
    .line 598
    :cond_15
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I

    .line 599
    move-result v2

    .line 600
    .line 601
    if-lez v2, :cond_16

    .line 602
    .line 603
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 604
    .line 605
    .line 606
    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    :cond_16
    :goto_9
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 609
    .line 610
    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 611
    .line 612
    if-eqz v1, :cond_19

    .line 613
    array-length v2, v1

    .line 614
    .line 615
    move/from16 v3, v17

    .line 616
    .line 617
    :goto_a
    if-ge v3, v2, :cond_19

    .line 618
    .line 619
    aget-object v4, v1, v3

    .line 620
    .line 621
    .line 622
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    move-result v5

    .line 624
    .line 625
    if-eqz v5, :cond_18

    .line 626
    .line 627
    :cond_17
    move-object/from16 p1, v1

    .line 628
    .line 629
    move/from16 v16, v2

    .line 630
    .line 631
    move/from16 v17, v3

    .line 632
    goto :goto_b

    .line 633
    .line 634
    :cond_18
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 635
    .line 636
    .line 637
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    move-result-object v5

    .line 639
    .line 640
    check-cast v5, Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 641
    .line 642
    if-nez v5, :cond_17

    .line 643
    .line 644
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldReaders:Ljava/util/Map;

    .line 645
    move-object v6, v1

    .line 646
    .line 647
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->this$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 648
    move v7, v2

    .line 649
    .line 650
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectClass:Ljava/lang/Class;

    .line 651
    .line 652
    move/from16 v17, v3

    .line 653
    .line 654
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->objectType:Ljava/lang/reflect/Type;

    .line 655
    .line 656
    iget-object v8, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$CreateFieldReaderConsumer;->fieldInfo:Lcom/alibaba/fastjson2/codec/FieldInfo;

    .line 657
    move-object v9, v5

    .line 658
    .line 659
    iget v5, v8, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 660
    move-object v10, v6

    .line 661
    .line 662
    move/from16 v16, v7

    .line 663
    .line 664
    iget-wide v6, v8, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 665
    .line 666
    iget-object v0, v8, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 667
    .line 668
    move-object/from16 v18, v9

    .line 669
    .line 670
    iget-object v9, v8, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 671
    .line 672
    iget-object v8, v8, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 673
    .line 674
    move-object/from16 p1, v10

    .line 675
    move-object v10, v8

    .line 676
    move-object v8, v0

    .line 677
    .line 678
    move-object/from16 v0, v18

    .line 679
    .line 680
    .line 681
    invoke-virtual/range {v1 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 682
    move-result-object v1

    .line 683
    .line 684
    .line 685
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    :goto_b
    add-int/lit8 v3, v17, 0x1

    .line 688
    .line 689
    move-object/from16 v0, p0

    .line 690
    .line 691
    move-object/from16 v1, p1

    .line 692
    .line 693
    move/from16 v2, v16

    .line 694
    goto :goto_a

    .line 695
    :cond_19
    :goto_c
    return-void
.end method
