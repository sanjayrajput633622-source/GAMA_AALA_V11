.class public final Lcom/alibaba/fastjson2/reader/ObjectArrayReader;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

.field public static final TYPE_HASH_CODE:J = 0x4f5bL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, [Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->createInstance(Ljava/util/Collection;J)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;J)[Ljava/lang/Object;
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    .line 4
    aput-object v0, p2, p3

    move p3, v1

    goto :goto_0

    :cond_0
    return-object p2
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
    const/16 v1, -0x6e

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const-class v3, [Ljava/lang/Object;

    .line 11
    .line 12
    const-wide/16 v4, 0x4f5b

    .line 13
    move-object v2, p1

    .line 14
    .line 15
    move-wide/from16 v6, p4

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eq v0, p0, :cond_0

    .line 22
    move-object v7, p1

    .line 23
    move-object v8, p2

    .line 24
    move-object v9, p3

    .line 25
    .line 26
    move-wide/from16 v10, p4

    .line 27
    move-object v6, v0

    .line 28
    .line 29
    .line 30
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 36
    move-result p2

    .line 37
    const/4 p3, -0x1

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    if-ne p2, p3, :cond_1

    .line 41
    return-object v0

    .line 42
    .line 43
    :cond_1
    new-array p3, p2, [Ljava/lang/Object;

    .line 44
    const/4 v2, 0x0

    .line 45
    move v8, v2

    .line 46
    .line 47
    :goto_0
    if-ge v8, p2, :cond_9

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 51
    move-result v2

    .line 52
    .line 53
    const/16 v3, 0x49

    .line 54
    .line 55
    if-lt v2, v3, :cond_2

    .line 56
    .line 57
    const/16 v3, 0x7d

    .line 58
    .line 59
    if-gt v2, v3, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_2
    if-ne v2, v1, :cond_4

    .line 67
    .line 68
    const-class v3, Ljava/lang/Object;

    .line 69
    .line 70
    const-wide/16 v4, 0x0

    .line 71
    move-object v2, p1

    .line 72
    .line 73
    move-wide/from16 v6, p4

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    .line 83
    move-wide/from16 v6, p4

    .line 84
    move-object v2, v3

    .line 85
    move-object v3, p1

    .line 86
    .line 87
    .line 88
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_4
    const/16 v3, -0x51

    .line 98
    .line 99
    if-ne v2, v3, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 103
    move-object v2, v0

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :cond_5
    const/16 v3, -0x4f

    .line 107
    .line 108
    if-ne v2, v3, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 112
    .line 113
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 114
    goto :goto_1

    .line 115
    .line 116
    :cond_6
    const/16 v3, -0x50

    .line 117
    .line 118
    if-ne v2, v3, :cond_7

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 122
    .line 123
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_7
    const/16 v3, -0x42

    .line 127
    .line 128
    if-ne v2, v3, :cond_8

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 132
    move-result-wide v2

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    move-result-object v2

    .line 137
    goto :goto_1

    .line 138
    .line 139
    .line 140
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    :goto_1
    aput-object v2, p3, v8

    .line 144
    .line 145
    add-int/lit8 v8, v8, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_9
    return-object p3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    return-object p3

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_c

    .line 15
    .line 16
    const/16 p2, 0x10

    .line 17
    .line 18
    new-array p2, p2, [Ljava/lang/Object;

    .line 19
    const/4 p4, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 23
    move-result p5

    .line 24
    .line 25
    if-eqz p5, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 p5, p4, 0x1

    .line 36
    array-length v0, p2

    .line 37
    .line 38
    sub-int v0, p5, v0

    .line 39
    .line 40
    if-lez v0, :cond_3

    .line 41
    array-length v0, p2

    .line 42
    .line 43
    shr-int/lit8 v1, v0, 0x1

    .line 44
    add-int/2addr v0, v1

    .line 45
    .line 46
    sub-int v1, v0, p5

    .line 47
    .line 48
    if-gez v1, :cond_2

    .line 49
    move v0, p5

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 57
    move-result v0

    .line 58
    .line 59
    const/16 v1, 0x22

    .line 60
    .line 61
    if-eq v0, v1, :cond_b

    .line 62
    .line 63
    const/16 v1, 0x2b

    .line 64
    .line 65
    if-eq v0, v1, :cond_a

    .line 66
    .line 67
    const/16 v1, 0x53

    .line 68
    .line 69
    if-eq v0, v1, :cond_8

    .line 70
    .line 71
    const/16 v1, 0x5b

    .line 72
    .line 73
    if-eq v0, v1, :cond_7

    .line 74
    .line 75
    const/16 v1, 0x66

    .line 76
    .line 77
    if-eq v0, v1, :cond_6

    .line 78
    .line 79
    const/16 v1, 0x6e

    .line 80
    .line 81
    if-eq v0, v1, :cond_5

    .line 82
    .line 83
    const/16 v1, 0x74

    .line 84
    .line 85
    if-eq v0, v1, :cond_6

    .line 86
    .line 87
    const/16 v1, 0x7b

    .line 88
    .line 89
    if-eq v0, v1, :cond_4

    .line 90
    .line 91
    const/16 v1, 0x2d

    .line 92
    .line 93
    if-eq v0, v1, :cond_a

    .line 94
    .line 95
    const/16 v1, 0x2e

    .line 96
    .line 97
    if-eq v0, v1, :cond_a

    .line 98
    .line 99
    .line 100
    packed-switch v0, :pswitch_data_0

    .line 101
    .line 102
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p2

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    .line 114
    move-result-object v0

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    .line 119
    move-object v0, p3

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 124
    move-result v0

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    move-result-object v0

    .line 129
    goto :goto_1

    .line 130
    .line 131
    .line 132
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 133
    move-result-object v0

    .line 134
    goto :goto_1

    .line 135
    .line 136
    .line 137
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    .line 138
    move-result v0

    .line 139
    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    const-class v0, Ljava/util/HashSet;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    move-result-object v0

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_9
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 150
    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    const-string p4, "Expected Set format but parsing failed: "

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    .line 173
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p2

    .line 175
    .line 176
    .line 177
    :cond_a
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    .line 178
    move-result-object v0

    .line 179
    goto :goto_1

    .line 180
    .line 181
    .line 182
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    :goto_1
    aput-object v0, p2, p4

    .line 186
    move p4, p5

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_c
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 191
    .line 192
    const-string p3, "TODO"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    .line 199
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p2

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
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
.end method
