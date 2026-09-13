.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;J)V
    .locals 8

    .line 1
    .line 2
    const-class v4, Ljava/lang/String;

    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-wide v5, p3

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLcom/alibaba/fastjson2/function/Function;)V

    .line 12
    return-void
.end method


# virtual methods
.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-nez p2, :cond_4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 19
    move-result p2

    .line 20
    .line 21
    const/16 v0, 0x5b

    .line 22
    .line 23
    if-ne p2, v0, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 30
    move-result p2

    .line 31
    .line 32
    const/16 v0, 0x7b

    .line 33
    .line 34
    if-ne p2, v0, :cond_1

    .line 35
    .line 36
    const-class v3, Ljava/lang/String;

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v4, p3

    .line 40
    move-wide v5, p4

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 48
    move-result p2

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 54
    return-object p1

    .line 55
    :cond_1
    move-object v1, p0

    .line 56
    move-object v2, p1

    .line 57
    .line 58
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 59
    .line 60
    const-string p2, "expect \'{\', but \'[\'"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    :cond_3
    move-object v1, p0

    .line 70
    move-object v2, p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    const/4 p1, 0x0

    .line 78
    return-object p1

    .line 79
    :cond_4
    move-object v1, p0

    .line 80
    move-object v2, p1

    .line 81
    .line 82
    :cond_5
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 83
    .line 84
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 85
    or-long/2addr p1, p4

    .line 86
    .line 87
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->instanceType:Ljava/lang/Class;

    .line 88
    .line 89
    const-class p4, Ljava/util/HashMap;

    .line 90
    .line 91
    if-ne p3, p4, :cond_6

    .line 92
    .line 93
    new-instance p3, Ljava/util/HashMap;

    .line 94
    .line 95
    .line 96
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->createInstance(J)Ljava/lang/Object;

    .line 101
    move-result-object p3

    .line 102
    .line 103
    check-cast p3, Ljava/util/Map;

    .line 104
    :goto_0
    const/4 p4, 0x0

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 108
    move-result p5

    .line 109
    .line 110
    if-eqz p5, :cond_7

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 114
    return-object p3

    .line 115
    .line 116
    .line 117
    :cond_7
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    .line 118
    move-result-object p5

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    const-wide/16 v3, 0x0

    .line 125
    .line 126
    if-nez p4, :cond_8

    .line 127
    .line 128
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 129
    .line 130
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 131
    and-long/2addr v5, p1

    .line 132
    .line 133
    cmp-long v5, v5, v3

    .line 134
    .line 135
    if-eqz v5, :cond_8

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->getTypeKey()Ljava/lang/String;

    .line 139
    move-result-object v5

    .line 140
    .line 141
    .line 142
    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v5

    .line 144
    .line 145
    if-eqz v5, :cond_8

    .line 146
    goto :goto_2

    .line 147
    .line 148
    :cond_8
    if-nez v0, :cond_9

    .line 149
    .line 150
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 151
    .line 152
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 153
    and-long/2addr v5, p1

    .line 154
    .line 155
    cmp-long v5, v5, v3

    .line 156
    .line 157
    if-eqz v5, :cond_9

    .line 158
    goto :goto_2

    .line 159
    .line 160
    .line 161
    :cond_9
    invoke-interface {p3, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v5

    .line 163
    .line 164
    if-eqz v5, :cond_b

    .line 165
    .line 166
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 167
    .line 168
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 169
    and-long/2addr v6, p1

    .line 170
    .line 171
    cmp-long v3, v6, v3

    .line 172
    .line 173
    if-eqz v3, :cond_b

    .line 174
    .line 175
    instance-of v3, v5, Ljava/util/Collection;

    .line 176
    .line 177
    if-eqz v3, :cond_a

    .line 178
    move-object v3, v5

    .line 179
    .line 180
    check-cast v3, Ljava/util/Collection;

    .line 181
    .line 182
    .line 183
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    invoke-interface {p3, p5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    goto :goto_2

    .line 188
    .line 189
    .line 190
    :cond_a
    invoke-static {v5, v0}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-interface {p3, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    :cond_b
    :goto_2
    add-int/lit8 p4, p4, 0x1

    .line 197
    goto :goto_1
.end method
