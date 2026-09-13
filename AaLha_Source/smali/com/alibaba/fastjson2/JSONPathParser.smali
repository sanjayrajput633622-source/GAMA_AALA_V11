.class Lcom/alibaba/fastjson2/JSONPathParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final dollar:Z

.field final jsonReader:Lcom/alibaba/fastjson2/JSONReader;

.field final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v0, Lcom/alibaba/fastjson2/JSONPath;->PARSE_CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 14
    .line 15
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 16
    .line 17
    const/16 v1, 0x2d

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x24

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 27
    const/4 p1, 0x1

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->dollar:Z

    .line 30
    return-void

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->dollar:Z

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 37
    .line 38
    const-string v0, "not support \'-\'"

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method private parseArrayAccess()Lcom/alibaba/fastjson2/JSONPathSegment;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 8
    .line 9
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 10
    .line 11
    const/16 v2, 0x22

    .line 12
    .line 13
    const-string v3, "TODO : "

    .line 14
    .line 15
    if-eq v1, v2, :cond_3

    .line 16
    .line 17
    const/16 v2, 0x27

    .line 18
    .line 19
    if-eq v1, v2, :cond_3

    .line 20
    .line 21
    const/16 v2, 0x2a

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const-string v2, "not support range index \':\'"

    .line 26
    .line 27
    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0

    .line 56
    .line 57
    :pswitch_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    .line 62
    .line 63
    .line 64
    :pswitch_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 65
    move-result v0

    .line 66
    .line 67
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 68
    .line 69
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 70
    .line 71
    const/16 v4, 0x3a

    .line 72
    .line 73
    if-eq v3, v4, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    .line 77
    move-result v1

    .line 78
    .line 79
    if-nez v1, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->of(I)Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 83
    move-result-object v0

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 87
    .line 88
    const-string v1, "not support"

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 92
    throw v0

    .line 93
    .line 94
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 98
    throw v0

    .line 99
    .line 100
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 101
    .line 102
    const-string v1, "not support *"

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 106
    throw v0

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 116
    move-result v1

    .line 117
    .line 118
    const/16 v2, 0x5d

    .line 119
    .line 120
    if-ne v1, v2, :cond_5

    .line 121
    .line 122
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 126
    move-result-wide v2

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONPathSegmentName;-><init>(Ljava/lang/String;J)V

    .line 130
    move-object v0, v1

    .line 131
    .line 132
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 136
    move-result v1

    .line 137
    .line 138
    if-eqz v1, :cond_4

    .line 139
    return-object v0

    .line 140
    .line 141
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 144
    .line 145
    const-string v2, "jsonpath syntax error"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 153
    throw v0

    .line 154
    .line 155
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 164
    .line 165
    const-string v1, "not support multi name"

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 169
    throw v0

    .line 170
    .line 171
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 185
    move-result v2

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 196
    throw v0

    .line 197
    .line 198
    .line 199
    .line 200
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
    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method

.method private parseProperty()Lcom/alibaba/fastjson2/JSONPathSegment;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 3
    .line 4
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 5
    .line 6
    const/16 v2, 0x2a

    .line 7
    .line 8
    if-eq v1, v2, :cond_2

    .line 9
    .line 10
    const/16 v2, 0x2e

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 25
    .line 26
    iget-char v3, v3, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 27
    .line 28
    const/16 v4, 0x28

    .line 29
    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    new-instance v3, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v2, v0, v1}, Lcom/alibaba/fastjson2/JSONPathSegmentName;-><init>(Ljava/lang/String;J)V

    .line 36
    return-object v3

    .line 37
    .line 38
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 39
    .line 40
    const-string v1, "not support jsonpath function"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    .line 46
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string v1, "not support jsonpath .."

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
    .line 54
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 55
    .line 56
    const-string v1, "not support *"

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0
.end method


# virtual methods
.method public parse()Lcom/alibaba/fastjson2/JSONPath;
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->dollar:Z

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 9
    .line 10
    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/alibaba/fastjson2/JSONPath;->ROOT:Lcom/alibaba/fastjson2/JSONPath;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 23
    .line 24
    iget-char v3, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 25
    .line 26
    if-eq v3, v1, :cond_8

    .line 27
    .line 28
    const/16 v4, 0x2e

    .line 29
    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseProperty()Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 37
    move-result-object v2

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    const/16 v4, 0x5b

    .line 41
    .line 42
    if-ne v3, v4, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseArrayAccess()Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 46
    move-result-object v2

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    const/16 v4, 0x61

    .line 50
    .line 51
    if-lt v3, v4, :cond_3

    .line 52
    .line 53
    const/16 v4, 0x7a

    .line 54
    .line 55
    if-le v3, v4, :cond_5

    .line 56
    .line 57
    :cond_3
    const/16 v4, 0x41

    .line 58
    .line 59
    if-lt v3, v4, :cond_4

    .line 60
    .line 61
    const/16 v4, 0x5a

    .line 62
    .line 63
    if-le v3, v4, :cond_5

    .line 64
    .line 65
    :cond_4
    const/16 v4, 0x5f

    .line 66
    .line 67
    if-ne v3, v4, :cond_6

    .line 68
    .line 69
    .line 70
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseProperty()Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 71
    move-result-object v2

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_6
    const/16 v4, 0x40

    .line 75
    .line 76
    if-ne v3, v4, :cond_7

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 80
    .line 81
    sget-object v2, Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    const-string v2, "not support "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 108
    throw v0

    .line 109
    .line 110
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONPath;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    .line 113
    const/4 v3, 0x0

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, v2, v0, v3, v3}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 117
    return-object v1
.end method
