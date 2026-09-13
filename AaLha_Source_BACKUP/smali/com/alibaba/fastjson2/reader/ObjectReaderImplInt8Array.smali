.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;


# instance fields
.field final format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;

    .line 9
    .line 10
    const-string v0, "[Byte"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->HASH_TYPE:J

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-class v0, [Ljava/lang/Byte;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->format:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 4
    move-result p2

    .line 5
    .line 6
    new-array p2, p2, [Ljava/lang/Byte;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    const/4 p3, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Number;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 39
    move-result-object v0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    const-class v3, Ljava/lang/Byte;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Ljava/lang/Byte;

    .line 61
    .line 62
    :goto_1
    add-int/lit8 v1, p3, 0x1

    .line 63
    .line 64
    aput-object v0, p2, p3

    .line 65
    move p3, v1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string p3, "can not cast to Byte "

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1

    .line 94
    :cond_3
    return-object p2
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const/16 p2, -0x6e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 12
    move-result-wide p2

    .line 13
    .line 14
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->HASH_TYPE:J

    .line 15
    .line 16
    cmp-long p2, p2, p4

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string p4, "not support autoType : "

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 50
    move-result p2

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    const-string p2, "hex"

    .line 55
    .line 56
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->format:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p2

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readHex()[B

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 71
    move-result p2

    .line 72
    const/4 p3, -0x1

    .line 73
    const/4 p4, 0x0

    .line 74
    .line 75
    if-ne p2, p3, :cond_3

    .line 76
    return-object p4

    .line 77
    .line 78
    :cond_3
    new-array p3, p2, [Ljava/lang/Byte;

    .line 79
    const/4 p5, 0x0

    .line 80
    .line 81
    :goto_1
    if-ge p5, p2, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    move-object v0, p4

    .line 89
    goto :goto_2

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    .line 93
    move-result v0

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    :goto_2
    aput-object v0, p3, p5

    .line 100
    .line 101
    add-int/lit8 p5, p5, 0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    return-object p3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

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
    const/4 p4, 0x0

    .line 14
    .line 15
    if-eqz p2, :cond_6

    .line 16
    .line 17
    const/16 p2, 0x10

    .line 18
    .line 19
    new-array p2, p2, [Ljava/lang/Byte;

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
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 37
    move-result p5

    .line 38
    .line 39
    if-nez p5, :cond_5

    .line 40
    .line 41
    add-int/lit8 p5, p4, 0x1

    .line 42
    array-length v0, p2

    .line 43
    .line 44
    sub-int v0, p5, v0

    .line 45
    .line 46
    if-lez v0, :cond_3

    .line 47
    array-length v0, p2

    .line 48
    .line 49
    shr-int/lit8 v1, v0, 0x1

    .line 50
    add-int/2addr v0, v1

    .line 51
    .line 52
    sub-int v1, v0, p5

    .line 53
    .line 54
    if-gez v1, :cond_2

    .line 55
    move v0, p5

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    check-cast p2, [Ljava/lang/Byte;

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    move-object v0, p3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    .line 73
    move-result v0

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    :goto_1
    aput-object v0, p2, p4

    .line 80
    move p4, p5

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 84
    .line 85
    const-string p3, "input end"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p2

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 97
    move-result p2

    .line 98
    .line 99
    const/16 p5, 0x78

    .line 100
    .line 101
    if-ne p2, p5, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBinary()[B

    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 110
    move-result p2

    .line 111
    .line 112
    if-eqz p2, :cond_e

    .line 113
    .line 114
    const-string p2, "hex"

    .line 115
    .line 116
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->format:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result p2

    .line 121
    .line 122
    if-eqz p2, :cond_8

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readHex()[B

    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    .line 129
    .line 130
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 135
    move-result p5

    .line 136
    .line 137
    if-eqz p5, :cond_9

    .line 138
    return-object p3

    .line 139
    .line 140
    :cond_9
    const-string p3, "base64"

    .line 141
    .line 142
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->format:Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result p3

    .line 147
    .line 148
    if-eqz p3, :cond_a

    .line 149
    .line 150
    .line 151
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 152
    move-result-object p1

    .line 153
    return-object p1

    .line 154
    .line 155
    :cond_a
    const-string p3, "gzip,base64"

    .line 156
    .line 157
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->format:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p3

    .line 162
    .line 163
    if-nez p3, :cond_b

    .line 164
    .line 165
    const-string p3, "gzip"

    .line 166
    .line 167
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->format:Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result p3

    .line 172
    .line 173
    if-eqz p3, :cond_e

    .line 174
    .line 175
    .line 176
    :cond_b
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 177
    move-result-object p2

    .line 178
    .line 179
    :try_start_0
    new-instance p3, Ljava/util/zip/GZIPInputStream;

    .line 180
    .line 181
    new-instance p5, Ljava/io/ByteArrayInputStream;

    .line 182
    .line 183
    .line 184
    invoke-direct {p5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p3, p5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 188
    .line 189
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 190
    .line 191
    .line 192
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    .line 194
    :cond_c
    :goto_2
    const/16 p5, 0x400

    .line 195
    .line 196
    new-array p5, p5, [B

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, p5}, Ljava/io/InputStream;->read([B)I

    .line 200
    move-result v0

    .line 201
    const/4 v1, -0x1

    .line 202
    .line 203
    if-ne v0, v1, :cond_d

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 207
    move-result-object p1

    .line 208
    return-object p1

    .line 209
    :catch_0
    move-exception p2

    .line 210
    goto :goto_3

    .line 211
    .line 212
    :cond_d
    if-lez v0, :cond_c

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p5, p4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_2

    .line 217
    .line 218
    :goto_3
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 219
    .line 220
    const-string p4, "unzip bytes error."

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    .line 227
    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    throw p3

    .line 229
    .line 230
    :cond_e
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 231
    .line 232
    const-string p3, "TODO"

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object p1

    .line 237
    .line 238
    .line 239
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 240
    throw p2
.end method
