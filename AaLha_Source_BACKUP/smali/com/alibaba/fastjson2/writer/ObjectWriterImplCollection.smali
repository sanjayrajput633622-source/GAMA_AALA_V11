.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

.field static final LINKED_HASH_SET_JSONB_TYPE_HASH:J

.field static final LINKED_HASH_SET_JSONB_TYPE_NAME_BYTES:[B

.field static final TREE_SET_JSONB_TYPE_HASH:J

.field static final TREE_SET_JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field features:J

.field itemType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    .line 8
    .line 9
    const-class v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 17
    move-result-object v1

    .line 18
    .line 19
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->LINKED_HASH_SET_JSONB_TYPE_NAME_BYTES:[B

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->LINKED_HASH_SET_JSONB_TYPE_HASH:J

    .line 30
    .line 31
    const-class v0, Ljava/util/TreeSet;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 39
    move-result-object v1

    .line 40
    .line 41
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->TREE_SET_JSONB_TYPE_NAME_BYTES:[B

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 49
    move-result-wide v0

    .line 50
    .line 51
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->TREE_SET_JSONB_TYPE_HASH:J

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 8
    move-object p1, p0

    .line 9
    return-void

    .line 10
    :cond_0
    move-object v1, p1

    .line 11
    move-object p1, p0

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_1
    instance-of p3, p2, Ljava/util/Set;

    .line 20
    .line 21
    if-eqz p3, :cond_2

    .line 22
    .line 23
    iget-wide p3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->features:J

    .line 24
    or-long/2addr p3, p5

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    .line 28
    move-result p3

    .line 29
    .line 30
    if-eqz p3, :cond_2

    .line 31
    .line 32
    const-string p3, "Set"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 36
    .line 37
    :cond_2
    check-cast p2, Ljava/lang/Iterable;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p2

    .line 45
    const/4 p3, 0x0

    .line 46
    const/4 p4, 0x0

    .line 47
    move p5, p4

    .line 48
    move-object p4, p3

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result p6

    .line 53
    .line 54
    if-eqz p6, :cond_6

    .line 55
    .line 56
    if-eqz p5, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 69
    .line 70
    add-int/lit8 p5, p5, 0x1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-result-object p6

    .line 76
    .line 77
    if-ne p6, p3, :cond_5

    .line 78
    :goto_1
    move-object v0, p4

    .line 79
    goto :goto_2

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {v1, p6}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 83
    move-result-object p4

    .line 84
    move-object p3, p6

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :goto_2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->itemType:Ljava/lang/reflect/Type;

    .line 92
    .line 93
    iget-wide v5, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->features:J

    .line 94
    .line 95
    .line 96
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 97
    .line 98
    add-int/lit8 p5, p5, 0x1

    .line 99
    move-object p4, v0

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 104
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 14

    .line 1
    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    instance-of v3, v2, Ljava/lang/Class;

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    move-object v3, v2

    .line 19
    .line 20
    check-cast v3, Ljava/lang/Class;

    .line 21
    move-object v5, v4

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    .line 25
    .line 26
    if-eqz v3, :cond_4

    .line 27
    move-object v3, v2

    .line 28
    .line 29
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 33
    move-result-object v5

    .line 34
    array-length v6, v5

    .line 35
    .line 36
    if-ne v6, v7, :cond_2

    .line 37
    .line 38
    aget-object v5, v5, v8

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-object v5, v4

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    instance-of v6, v3, Ljava/lang/Class;

    .line 47
    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    check-cast v3, Ljava/lang/Class;

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v3, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    move-object v3, v4

    .line 55
    move-object v5, v3

    .line 56
    :goto_1
    move-object v6, v0

    .line 57
    .line 58
    check-cast v6, Ljava/util/Collection;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-result-object v9

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    const-class v10, Ljava/util/Set;

    .line 71
    .line 72
    if-ne v3, v10, :cond_5

    .line 73
    .line 74
    const-class v3, Ljava/util/HashSet;

    .line 75
    .line 76
    if-ne v9, v3, :cond_5

    .line 77
    :goto_2
    move v0, v8

    .line 78
    goto :goto_3

    .line 79
    .line 80
    :cond_5
    const-class v3, Ljava/util/Collection;

    .line 81
    .line 82
    if-ne v2, v3, :cond_6

    .line 83
    .line 84
    const-class v2, Ljava/util/ArrayList;

    .line 85
    .line 86
    if-ne v9, v2, :cond_6

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_6
    :goto_3
    if-eqz v0, :cond_9

    .line 90
    .line 91
    const-class v0, Ljava/util/LinkedHashSet;

    .line 92
    .line 93
    if-ne v9, v0, :cond_7

    .line 94
    .line 95
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->LINKED_HASH_SET_JSONB_TYPE_NAME_BYTES:[B

    .line 96
    .line 97
    sget-wide v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->LINKED_HASH_SET_JSONB_TYPE_HASH:J

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_7
    const-class v0, Ljava/util/TreeSet;

    .line 104
    .line 105
    if-ne v9, v0, :cond_8

    .line 106
    .line 107
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->TREE_SET_JSONB_TYPE_NAME_BYTES:[B

    .line 108
    .line 109
    sget-wide v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->TREE_SET_JSONB_TYPE_HASH:J

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 113
    goto :goto_4

    .line 114
    .line 115
    .line 116
    :cond_8
    invoke-static {v9}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 124
    move-result v0

    .line 125
    .line 126
    .line 127
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 128
    move-result v2

    .line 129
    .line 130
    if-le v2, v7, :cond_a

    .line 131
    .line 132
    instance-of v2, v6, Ljava/util/SortedSet;

    .line 133
    .line 134
    if-nez v2, :cond_a

    .line 135
    .line 136
    instance-of v2, v6, Ljava/util/LinkedHashSet;

    .line 137
    .line 138
    if-nez v2, :cond_a

    .line 139
    move v9, v8

    .line 140
    goto :goto_5

    .line 141
    :cond_a
    move v9, v0

    .line 142
    .line 143
    .line 144
    :goto_5
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 145
    move-result v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object v10

    .line 153
    move-object v0, v4

    .line 154
    move v11, v8

    .line 155
    .line 156
    .line 157
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result v2

    .line 159
    .line 160
    if-eqz v2, :cond_10

    .line 161
    .line 162
    .line 163
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    if-nez v2, :cond_b

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 170
    move-object v12, v4

    .line 171
    :goto_7
    move-object v4, v5

    .line 172
    goto :goto_a

    .line 173
    .line 174
    .line 175
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    if-ne v3, v4, :cond_c

    .line 179
    move-object v12, v4

    .line 180
    goto :goto_8

    .line 181
    .line 182
    .line 183
    :cond_c
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 184
    move-result-object v0

    .line 185
    move-object v12, v3

    .line 186
    .line 187
    :goto_8
    if-eqz v9, :cond_d

    .line 188
    .line 189
    .line 190
    invoke-static {v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 191
    move-result v3

    .line 192
    .line 193
    if-nez v3, :cond_d

    .line 194
    move v13, v7

    .line 195
    goto :goto_9

    .line 196
    :cond_d
    move v13, v8

    .line 197
    .line 198
    :goto_9
    if-eqz v13, :cond_e

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v11, v2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 202
    move-result-object v3

    .line 203
    .line 204
    if-eqz v3, :cond_e

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 211
    goto :goto_7

    .line 212
    .line 213
    .line 214
    :cond_e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v3

    .line 216
    move-object v1, p1

    .line 217
    move-object v4, v5

    .line 218
    .line 219
    move-wide/from16 v5, p5

    .line 220
    .line 221
    .line 222
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 223
    .line 224
    if-eqz v13, :cond_f

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 228
    .line 229
    :cond_f
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 230
    move-object v5, v4

    .line 231
    move-object v4, v12

    .line 232
    goto :goto_6

    .line 233
    :cond_10
    return-void
.end method
