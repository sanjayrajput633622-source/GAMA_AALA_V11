.class final Lcom/alibaba/fastjson2/JSONPathSegmentName;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "SourceFile"


# instance fields
.field final name:Ljava/lang/String;

.field final nameHashCode:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    const-class v2, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    .line 21
    .line 22
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 31
    .line 32
    if-eq v2, v3, :cond_3

    .line 33
    .line 34
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    :cond_3
    return v0

    .line 46
    :cond_4
    :goto_0
    return v1
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 10
    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_1
    instance-of v1, v0, Ljava/util/Map;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-eqz v1, :cond_6

    .line 19
    .line 20
    check-cast v0, Ljava/util/Map;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-nez v1, :cond_5

    .line 29
    .line 30
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 47
    .line 48
    if-eqz v4, :cond_5

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    check-cast v4, Ljava/util/Map$Entry;

    .line 55
    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    instance-of v6, v5, Ljava/lang/Enum;

    .line 61
    .line 62
    if-eqz v6, :cond_3

    .line 63
    move-object v6, v5

    .line 64
    .line 65
    check-cast v6, Ljava/lang/Enum;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v6

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_3
    instance-of v6, v5, Ljava/lang/Long;

    .line 85
    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 96
    move-result-wide v6

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v5

    .line 105
    .line 106
    if-eqz v5, :cond_2

    .line 107
    .line 108
    .line 109
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    :cond_5
    :goto_1
    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 113
    return-void

    .line 114
    .line 115
    :cond_6
    instance-of v1, v0, Ljava/util/Collection;

    .line 116
    .line 117
    if-eqz v1, :cond_e

    .line 118
    .line 119
    check-cast v0, Ljava/util/Collection;

    .line 120
    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 123
    move-result v1

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v3

    .line 132
    .line 133
    if-eqz v3, :cond_d

    .line 134
    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    instance-of v4, v3, Ljava/util/Map;

    .line 140
    .line 141
    if-eqz v4, :cond_7

    .line 142
    .line 143
    check-cast v3, Ljava/util/Map;

    .line 144
    .line 145
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    if-nez v3, :cond_8

    .line 152
    goto :goto_2

    .line 153
    .line 154
    :cond_8
    instance-of v4, v3, Ljava/util/Collection;

    .line 155
    .line 156
    if-eqz v4, :cond_b

    .line 157
    const/4 v4, 0x1

    .line 158
    .line 159
    if-ne v1, v4, :cond_9

    .line 160
    .line 161
    check-cast v3, Ljava/util/Collection;

    .line 162
    move-object v2, v3

    .line 163
    goto :goto_2

    .line 164
    .line 165
    :cond_9
    if-nez v2, :cond_a

    .line 166
    .line 167
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 171
    .line 172
    :cond_a
    check-cast v3, Ljava/util/Collection;

    .line 173
    .line 174
    .line 175
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 176
    goto :goto_2

    .line 177
    .line 178
    :cond_b
    if-nez v2, :cond_c

    .line 179
    .line 180
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 181
    .line 182
    .line 183
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 184
    .line 185
    .line 186
    :cond_c
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_2

    .line 188
    .line 189
    :cond_d
    iput-object v2, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 190
    return-void

    .line 191
    .line 192
    .line 193
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->path:Lcom/alibaba/fastjson2/JSONPath;

    .line 197
    .line 198
    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONPath;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 199
    .line 200
    if-eqz v3, :cond_f

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 204
    move-result-object v3

    .line 205
    goto :goto_3

    .line 206
    .line 207
    :cond_f
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    :goto_3
    instance-of v4, v3, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 214
    .line 215
    if-eqz v4, :cond_11

    .line 216
    .line 217
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    .line 218
    .line 219
    .line 220
    invoke-interface {v3, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    if-eqz v1, :cond_10

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 230
    :cond_10
    :goto_4
    return-void

    .line 231
    .line 232
    :cond_11
    instance-of v3, v0, Ljava/lang/Number;

    .line 233
    .line 234
    if-nez v3, :cond_13

    .line 235
    .line 236
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 237
    .line 238
    if-eqz v0, :cond_12

    .line 239
    goto :goto_5

    .line 240
    .line 241
    :cond_12
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 242
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    const-string v2, "not support : "

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object v0

    .line 259
    .line 260
    .line 261
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 262
    throw p1

    .line 263
    .line 264
    :cond_13
    :goto_5
    iput-object v2, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    aput-object v0, v2, v3

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    aput-object v1, v2, v0

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method
