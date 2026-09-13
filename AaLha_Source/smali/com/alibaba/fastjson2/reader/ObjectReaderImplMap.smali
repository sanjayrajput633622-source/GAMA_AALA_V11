.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap$SingleMapBuilder;
    }
.end annotation


# static fields
.field static final ENUM_MAP_BUILDER:Lcom/alibaba/fastjson2/function/Function;

.field public static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

.field public static final INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;

.field final fastjson1x:Z

.field final features:J

.field final fieldType:Ljava/lang/reflect/Type;

.field volatile instanceError:Z

.field final instanceType:Ljava/lang/Class;

.field mapSingleton:Ljava/lang/Object;

.field final mapType:Ljava/lang/Class;

.field final mapTypeHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/j0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/j0;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->ENUM_MAP_BUILDER:Lcom/alibaba/fastjson2/function/Function;

    .line 8
    .line 9
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 10
    .line 11
    const-wide/16 v7, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    const-class v3, Ljava/util/HashMap;

    .line 16
    .line 17
    const-wide/16 v4, 0x4d

    .line 18
    .line 19
    const-class v6, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/Class;JLcom/alibaba/fastjson2/function/Function;)V

    .line 23
    .line 24
    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 25
    .line 26
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 27
    .line 28
    const-wide/16 v8, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    const-class v4, Lcom/alibaba/fastjson2/JSONObject;

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v5, -0x2463b1f14dade6e8L

    .line 38
    .line 39
    const-class v7, Lcom/alibaba/fastjson2/JSONObject;

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/Class;JLcom/alibaba/fastjson2/function/Function;)V

    .line 43
    .line 44
    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JLjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLcom/alibaba/fastjson2/function/Function;)V

    .line 2
    iput-object p4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapSingleton:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/Class;JLcom/alibaba/fastjson2/function/Function;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->fieldType:Ljava/lang/reflect/Type;

    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    .line 7
    iput-wide p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapTypeHash:J

    .line 8
    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    .line 9
    iput-wide p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->features:J

    .line 10
    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->fastjson1x:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLcom/alibaba/fastjson2/function/Function;)V
    .locals 10

    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/Class;JLcom/alibaba/fastjson2/function/Function;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/EnumMap;

    .line 3
    .line 4
    check-cast p0, Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    .line 8
    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-wide/from16 v4, p2

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    move-object/from16 v2, p0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    move-object/from16 v2, p0

    .line 33
    move-object v0, v1

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    const-class v6, Ljava/util/Map;

    .line 40
    .line 41
    const-string v7, "java.util.Collections$UnmodifiableMap"

    .line 42
    .line 43
    const-string v8, "java.util.Collections$SingletonMap"

    .line 44
    .line 45
    const-class v9, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    const-class v10, Ljava/util/HashMap;

    .line 48
    const/4 v11, 0x0

    .line 49
    .line 50
    if-eq v1, v6, :cond_8

    .line 51
    .line 52
    const-class v6, Ljava/util/AbstractMap;

    .line 53
    .line 54
    if-eq v1, v6, :cond_8

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v6

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    goto :goto_3

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v6

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    move-object v6, v9

    .line 69
    :goto_1
    move-object v0, v11

    .line 70
    goto :goto_4

    .line 71
    .line 72
    :cond_3
    const-class v6, Ljava/util/concurrent/ConcurrentMap;

    .line 73
    .line 74
    if-ne v1, v6, :cond_4

    .line 75
    .line 76
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    :goto_2
    move-object v6, v0

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_4
    const-class v6, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 81
    .line 82
    if-ne v1, v6, :cond_5

    .line 83
    .line 84
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    const-string v12, "java.util.Collections$SynchronizedSortedMap"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v12

    .line 99
    .line 100
    if-nez v12, :cond_7

    .line 101
    .line 102
    const-string v12, "java.util.Collections$SynchronizedMap"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v6

    .line 107
    .line 108
    if-nez v6, :cond_6

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/reader/g0;

    .line 112
    .line 113
    .line 114
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/g0;-><init>()V

    .line 115
    move-object v6, v10

    .line 116
    goto :goto_4

    .line 117
    .line 118
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/reader/h0;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/h0;-><init>()V

    .line 122
    .line 123
    const-class v6, Ljava/util/TreeMap;

    .line 124
    goto :goto_4

    .line 125
    :cond_8
    :goto_3
    move-object v6, v10

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :goto_4
    instance-of v12, v2, Ljava/lang/reflect/ParameterizedType;

    .line 129
    const/4 v14, 0x2

    .line 130
    const/4 v15, 0x1

    .line 131
    .line 132
    if-eqz v12, :cond_a

    .line 133
    move-object v12, v2

    .line 134
    .line 135
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 136
    .line 137
    .line 138
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 139
    move-result-object v12

    .line 140
    .line 141
    const/16 p0, 0x0

    .line 142
    array-length v13, v12

    .line 143
    .line 144
    if-ne v13, v14, :cond_b

    .line 145
    .line 146
    const-string v13, "org.springframework.util.LinkedMultiValueMap"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 150
    move-result-object v14

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v13

    .line 155
    .line 156
    if-nez v13, :cond_b

    .line 157
    .line 158
    aget-object v3, v12, p0

    .line 159
    .line 160
    aget-object v2, v12, v15

    .line 161
    .line 162
    const-class v7, Ljava/lang/String;

    .line 163
    .line 164
    if-ne v3, v7, :cond_9

    .line 165
    .line 166
    if-ne v2, v7, :cond_9

    .line 167
    .line 168
    if-nez v0, :cond_9

    .line 169
    .line 170
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, v1, v6, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    .line 174
    return-object v0

    .line 175
    :cond_9
    move-object v7, v0

    .line 176
    .line 177
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 178
    move-object v4, v2

    .line 179
    move-object v2, v6

    .line 180
    .line 181
    const-wide/16 v5, 0x0

    .line 182
    .line 183
    .line 184
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLcom/alibaba/fastjson2/function/Function;)V

    .line 185
    return-object v0

    .line 186
    .line 187
    :cond_a
    const/16 p0, 0x0

    .line 188
    .line 189
    :cond_b
    const-class v12, Lcom/alibaba/fastjson2/JSONObject;

    .line 190
    .line 191
    if-nez v2, :cond_d

    .line 192
    .line 193
    const-wide/16 v13, 0x0

    .line 194
    .line 195
    cmp-long v13, v4, v13

    .line 196
    .line 197
    if-nez v13, :cond_d

    .line 198
    .line 199
    if-ne v1, v10, :cond_c

    .line 200
    .line 201
    if-ne v6, v10, :cond_c

    .line 202
    .line 203
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 204
    return-object v0

    .line 205
    .line 206
    :cond_c
    if-ne v1, v12, :cond_d

    .line 207
    .line 208
    if-ne v6, v12, :cond_d

    .line 209
    .line 210
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 211
    return-object v0

    .line 212
    .line 213
    .line 214
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 215
    move-result-object v13

    .line 216
    .line 217
    const-string v14, "com.alibaba.fastjson.JSONObject"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v14

    .line 222
    .line 223
    if-eqz v14, :cond_e

    .line 224
    move-object v7, v0

    .line 225
    .line 226
    goto/16 :goto_8

    .line 227
    .line 228
    :cond_e
    const-string v10, "java.util.Collections$EmptyMap"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result v10

    .line 233
    .line 234
    if-eqz v10, :cond_f

    .line 235
    .line 236
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 237
    .line 238
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 239
    .line 240
    .line 241
    invoke-direct {v0, v6, v4, v5, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/Class;JLjava/lang/Object;)V

    .line 242
    return-object v0

    .line 243
    .line 244
    :cond_f
    const-string v10, "kotlin.collections.EmptyMap"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    move-result v10

    .line 249
    .line 250
    if-eqz v10, :cond_11

    .line 251
    .line 252
    :try_start_0
    const-string v0, "INSTANCE"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 260
    move-result v1

    .line 261
    .line 262
    if-nez v1, :cond_10

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 266
    goto :goto_5

    .line 267
    :catch_0
    move-exception v0

    .line 268
    goto :goto_6

    .line 269
    :catch_1
    move-exception v0

    .line 270
    goto :goto_6

    .line 271
    .line 272
    .line 273
    :cond_10
    :goto_5
    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .line 276
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 277
    .line 278
    .line 279
    invoke-direct {v1, v6, v4, v5, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/Class;JLjava/lang/Object;)V

    .line 280
    return-object v1

    .line 281
    .line 282
    :goto_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 283
    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    const-string v3, "Failed to get singleton of "

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v2

    .line 300
    .line 301
    .line 302
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    throw v1

    .line 304
    .line 305
    :cond_11
    const-class v10, Lcom/alibaba/fastjson2/util/JSONObject1O;

    .line 306
    .line 307
    if-ne v6, v10, :cond_12

    .line 308
    .line 309
    .line 310
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getBuilderJSONObject1x()Lcom/alibaba/fastjson2/function/Function;

    .line 311
    move-result-object v0

    .line 312
    move-object v7, v0

    .line 313
    move-object v10, v9

    .line 314
    goto :goto_8

    .line 315
    .line 316
    .line 317
    :cond_12
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v7

    .line 319
    .line 320
    if-eqz v7, :cond_14

    .line 321
    .line 322
    new-instance v0, Lcom/alibaba/fastjson2/reader/i0;

    .line 323
    .line 324
    .line 325
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/i0;-><init>()V

    .line 326
    :cond_13
    :goto_7
    move-object v7, v0

    .line 327
    move-object v10, v6

    .line 328
    goto :goto_8

    .line 329
    .line 330
    .line 331
    :cond_14
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result v3

    .line 333
    .line 334
    if-eqz v3, :cond_13

    .line 335
    .line 336
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap$SingleMapBuilder;

    .line 337
    .line 338
    .line 339
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap$SingleMapBuilder;-><init>()V

    .line 340
    goto :goto_7

    .line 341
    .line 342
    .line 343
    :goto_8
    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 344
    move-result-object v0

    .line 345
    .line 346
    if-eq v1, v12, :cond_15

    .line 347
    .line 348
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    .line 349
    .line 350
    if-eqz v3, :cond_15

    .line 351
    .line 352
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 353
    .line 354
    .line 355
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 356
    move-result-object v0

    .line 357
    array-length v3, v0

    .line 358
    const/4 v6, 0x2

    .line 359
    .line 360
    if-ne v3, v6, :cond_15

    .line 361
    .line 362
    aget-object v3, v0, p0

    .line 363
    .line 364
    aget-object v0, v0, v15

    .line 365
    .line 366
    instance-of v6, v3, Ljava/lang/reflect/TypeVariable;

    .line 367
    .line 368
    if-nez v6, :cond_15

    .line 369
    .line 370
    instance-of v6, v0, Ljava/lang/reflect/TypeVariable;

    .line 371
    .line 372
    if-nez v6, :cond_15

    .line 373
    move-object v4, v0

    .line 374
    .line 375
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 376
    .line 377
    const-wide/16 v5, 0x0

    .line 378
    move-object v2, v10

    .line 379
    .line 380
    .line 381
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLcom/alibaba/fastjson2/function/Function;)V

    .line 382
    return-object v0

    .line 383
    :cond_15
    move-object v6, v10

    .line 384
    .line 385
    const-class v0, Ljava/util/EnumMap;

    .line 386
    .line 387
    if-ne v1, v0, :cond_16

    .line 388
    .line 389
    sget-object v7, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->ENUM_MAP_BUILDER:Lcom/alibaba/fastjson2/function/Function;

    .line 390
    move-object v3, v9

    .line 391
    :goto_9
    move-object v6, v7

    .line 392
    goto :goto_a

    .line 393
    :cond_16
    move-object v3, v6

    .line 394
    goto :goto_9

    .line 395
    .line 396
    :goto_a
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 397
    move-object v4, v2

    .line 398
    move-object v2, v1

    .line 399
    move-object v1, v4

    .line 400
    .line 401
    move-wide/from16 v4, p2

    .line 402
    .line 403
    .line 404
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLcom/alibaba/fastjson2/function/Function;)V

    .line 405
    return-object v0
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/d;->a(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->b(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->c(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->d(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->e(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(J)Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    const-class p2, Ljava/util/HashMap;

    if-ne p1, p2, :cond_0

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 8
    :cond_0
    const-class p2, Ljava/util/LinkedHashMap;

    if-ne p1, p2, :cond_1

    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 10
    :cond_1
    const-class p2, Lcom/alibaba/fastjson2/JSONObject;

    if-ne p1, p2, :cond_2

    .line 11
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    return-object p1

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapSingleton:Ljava/lang/Object;

    if-eqz p2, :cond_3

    return-object p2

    .line 13
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 14
    const-string p2, "java.util.ImmutableCollections$Map1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "java.util.ImmutableCollections$MapN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 16
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create map error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 18
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->h(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v1, :cond_1

    .line 21
    new-instance p2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p2

    .line 22
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 23
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 24
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->fastjson1x:Z

    if-eqz p1, :cond_2

    .line 25
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createJSONObject1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_3

    .line 27
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->k(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->l(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBuildFunction()Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    return-object v0
.end method

.method public synthetic getFeatures()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->n(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->o(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->p(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->q(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public synthetic getTypeKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->s(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTypeKeyHash()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->t(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->u(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->v(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    .line 5
    .line 6
    iget-wide v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapTypeHash:J

    .line 7
    .line 8
    iget-wide v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->features:J

    .line 9
    .line 10
    or-long v5, v5, p4

    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    if-eq v2, v0, :cond_0

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    move-object/from16 v4, p3

    .line 25
    .line 26
    move-wide/from16 v5, p4

    .line 27
    move-object v1, v2

    .line 28
    .line 29
    move-object/from16 v2, p1

    .line 30
    .line 31
    .line 32
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    return-object v1

    .line 35
    .line 36
    :cond_0
    move-object/from16 v1, p1

    .line 37
    .line 38
    move-wide/from16 v7, p4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 42
    move-result v2

    .line 43
    const/4 v9, 0x0

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    return-object v9

    .line 47
    .line 48
    :cond_1
    const/16 v10, -0x5a

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 55
    move-result-wide v11

    .line 56
    .line 57
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Lcom/alibaba/fastjson2/function/Supplier;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    check-cast v2, Ljava/util/Map;

    .line 74
    :goto_0
    move-object v13, v2

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_2
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    .line 79
    .line 80
    const-class v3, Ljava/util/HashMap;

    .line 81
    .line 82
    if-ne v2, v3, :cond_3

    .line 83
    .line 84
    new-instance v2, Ljava/util/HashMap;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_3
    const-class v3, Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    if-ne v2, v3, :cond_4

    .line 93
    .line 94
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    .line 97
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_4
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    .line 101
    .line 102
    if-ne v2, v3, :cond_5

    .line 103
    .line 104
    new-instance v2, Lcom/alibaba/fastjson2/JSONObject;

    .line 105
    .line 106
    .line 107
    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_5
    if-eqz v2, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    const-string v3, "java.util.Collections$EmptyMap"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v2

    .line 121
    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_6
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceError:Z

    .line 128
    .line 129
    const-string v3, "create map error "

    .line 130
    .line 131
    if-nez v2, :cond_7

    .line 132
    .line 133
    :try_start_0
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    move-object v4, v2

    .line 141
    move-object v2, v9

    .line 142
    goto :goto_1

    .line 143
    :catch_0
    const/4 v2, 0x1

    .line 144
    .line 145
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceError:Z

    .line 146
    .line 147
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 148
    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v4

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v4

    .line 169
    .line 170
    .line 171
    invoke-direct {v2, v4}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 172
    move-object v4, v9

    .line 173
    goto :goto_1

    .line 174
    :cond_7
    move-object v2, v9

    .line 175
    move-object v4, v2

    .line 176
    .line 177
    :goto_1
    iget-boolean v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceError:Z

    .line 178
    .line 179
    if-eqz v5, :cond_8

    .line 180
    .line 181
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 185
    move-result-object v5

    .line 186
    .line 187
    const-class v6, Ljava/util/Map;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 191
    move-result v5

    .line 192
    .line 193
    if-eqz v5, :cond_8

    .line 194
    .line 195
    :try_start_1
    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 199
    move-result-object v5

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 203
    move-result-object v5

    .line 204
    .line 205
    check-cast v5, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    move-object v4, v5

    .line 207
    move-object v2, v9

    .line 208
    goto :goto_2

    .line 209
    .line 210
    :catch_1
    if-nez v2, :cond_8

    .line 211
    .line 212
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 213
    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v3

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object v3

    .line 234
    .line 235
    .line 236
    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    :cond_8
    :goto_2
    if-nez v2, :cond_1a

    .line 239
    move-object v13, v4

    .line 240
    :goto_3
    const/4 v2, 0x0

    .line 241
    move v14, v2

    .line 242
    .line 243
    .line 244
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 245
    move-result v2

    .line 246
    .line 247
    const/16 v3, -0x5b

    .line 248
    .line 249
    if-ne v2, v3, :cond_b

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 253
    .line 254
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->fastjson1x:Z

    .line 255
    .line 256
    if-eqz v1, :cond_9

    .line 257
    .line 258
    .line 259
    invoke-static {v13}, Lcom/alibaba/fastjson2/JSONFactory;->createJSONObject1(Ljava/util/Map;)Ljava/util/Map;

    .line 260
    move-result-object v1

    .line 261
    return-object v1

    .line 262
    .line 263
    :cond_9
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 264
    .line 265
    if-eqz v1, :cond_a

    .line 266
    .line 267
    .line 268
    invoke-interface {v1, v13}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    move-result-object v1

    .line 270
    return-object v1

    .line 271
    :cond_a
    return-object v13

    .line 272
    .line 273
    :cond_b
    const/16 v3, -0x6d

    .line 274
    .line 275
    const/16 v4, 0x49

    .line 276
    .line 277
    if-lt v2, v4, :cond_c

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    .line 281
    move-result-object v2

    .line 282
    :goto_5
    move-object v15, v2

    .line 283
    goto :goto_6

    .line 284
    .line 285
    .line 286
    :cond_c
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 287
    move-result v2

    .line 288
    .line 289
    if-eqz v2, :cond_d

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 293
    move-result-object v2

    .line 294
    .line 295
    new-instance v5, Lcom/alibaba/fastjson2/util/ReferenceKey;

    .line 296
    .line 297
    .line 298
    invoke-direct {v5, v14}, Lcom/alibaba/fastjson2/util/ReferenceKey;-><init>(I)V

    .line 299
    .line 300
    .line 301
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 302
    move-result-object v2

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v13, v5, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 306
    move-object v15, v5

    .line 307
    goto :goto_6

    .line 308
    .line 309
    .line 310
    :cond_d
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 311
    move-result-object v2

    .line 312
    goto :goto_5

    .line 313
    .line 314
    .line 315
    :goto_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 316
    move-result v2

    .line 317
    .line 318
    const-string v5, ".."

    .line 319
    .line 320
    if-eqz v2, :cond_f

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 324
    move-result-object v2

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    move-result v3

    .line 329
    .line 330
    if-eqz v3, :cond_e

    .line 331
    .line 332
    .line 333
    invoke-interface {v13, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :goto_7
    move-object v4, v1

    .line 335
    .line 336
    goto/16 :goto_a

    .line 337
    .line 338
    .line 339
    :cond_e
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 340
    move-result-object v2

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v13, v15, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v13, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    goto :goto_7

    .line 348
    .line 349
    .line 350
    :cond_f
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 351
    move-result v2

    .line 352
    .line 353
    if-lt v2, v4, :cond_10

    .line 354
    .line 355
    const/16 v4, 0x7d

    .line 356
    .line 357
    if-gt v2, v4, :cond_10

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 361
    move-result-object v2

    .line 362
    move-object v4, v1

    .line 363
    move-object v6, v15

    .line 364
    .line 365
    goto/16 :goto_9

    .line 366
    .line 367
    :cond_10
    const/16 v4, -0x6e

    .line 368
    .line 369
    if-ne v2, v4, :cond_12

    .line 370
    .line 371
    iget-wide v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->features:J

    .line 372
    .line 373
    or-long v5, v2, v7

    .line 374
    .line 375
    const-class v2, Ljava/lang/Object;

    .line 376
    .line 377
    const-wide/16 v3, 0x0

    .line 378
    .line 379
    .line 380
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 381
    move-result-object v2

    .line 382
    .line 383
    if-eqz v2, :cond_11

    .line 384
    const/4 v3, 0x0

    .line 385
    move-object v1, v2

    .line 386
    move-wide v5, v7

    .line 387
    move-object v4, v15

    .line 388
    .line 389
    move-object/from16 v2, p1

    .line 390
    .line 391
    .line 392
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 393
    move-result-object v1

    .line 394
    move-object v6, v4

    .line 395
    move-object v4, v2

    .line 396
    :goto_8
    move-object v2, v1

    .line 397
    goto :goto_9

    .line 398
    .line 399
    :cond_11
    move-object/from16 v4, p1

    .line 400
    move-object v6, v15

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 404
    move-result-object v1

    .line 405
    goto :goto_8

    .line 406
    :cond_12
    move-object v4, v1

    .line 407
    move-object v6, v15

    .line 408
    .line 409
    const/16 v1, -0x4f

    .line 410
    .line 411
    if-ne v2, v1, :cond_13

    .line 412
    .line 413
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 417
    goto :goto_9

    .line 418
    .line 419
    :cond_13
    const/16 v1, -0x50

    .line 420
    .line 421
    if-ne v2, v1, :cond_14

    .line 422
    .line 423
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 427
    goto :goto_9

    .line 428
    .line 429
    :cond_14
    if-ne v2, v3, :cond_16

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 433
    move-result-object v1

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    move-result v2

    .line 438
    .line 439
    if-eqz v2, :cond_15

    .line 440
    move-object v2, v13

    .line 441
    goto :goto_9

    .line 442
    .line 443
    .line 444
    :cond_15
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 445
    move-result-object v1

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v13, v6, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 449
    move-object v2, v9

    .line 450
    goto :goto_9

    .line 451
    .line 452
    :cond_16
    if-ne v2, v10, :cond_17

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    .line 456
    move-result-object v2

    .line 457
    goto :goto_9

    .line 458
    .line 459
    :cond_17
    const/16 v1, -0x6c

    .line 460
    .line 461
    if-lt v2, v1, :cond_18

    .line 462
    .line 463
    const/16 v1, -0x5c

    .line 464
    .line 465
    if-gt v2, v1, :cond_18

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 469
    move-result-object v2

    .line 470
    goto :goto_9

    .line 471
    .line 472
    .line 473
    :cond_18
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 474
    move-result-object v2

    .line 475
    .line 476
    :goto_9
    if-nez v2, :cond_19

    .line 477
    .line 478
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 479
    .line 480
    iget-wide v7, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 481
    and-long/2addr v7, v11

    .line 482
    .line 483
    const-wide/16 v15, 0x0

    .line 484
    .line 485
    cmp-long v1, v7, v15

    .line 486
    .line 487
    if-eqz v1, :cond_19

    .line 488
    goto :goto_a

    .line 489
    .line 490
    .line 491
    :cond_19
    invoke-interface {v13, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    :goto_a
    add-int/lit8 v14, v14, 0x1

    .line 494
    .line 495
    move-wide/from16 v7, p4

    .line 496
    move-object v1, v4

    .line 497
    .line 498
    goto/16 :goto_4

    .line 499
    :cond_1a
    throw v2
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->x(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->y(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 3

    .line 4
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p0

    return-object p1

    :cond_0
    move-object p2, p0

    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_1
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 8
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Lcom/alibaba/fastjson2/function/Supplier;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    if-eqz v1, :cond_2

    const-class v2, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v1, v2, :cond_2

    const-string v2, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    goto :goto_0

    .line 11
    :cond_3
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->createInstance(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v1

    .line 16
    :try_start_0
    invoke-virtual {v1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_4

    .line 18
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    .line 19
    :cond_5
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 20
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 21
    iget-boolean p1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->fastjson1x:Z

    if-eqz p1, :cond_7

    .line 22
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createJSONObject1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 23
    :cond_7
    iget-object p1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_8

    .line 24
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    return-object p3
.end method

.method public varargs synthetic readObject(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->z(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->A(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
