.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field private final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;

    .line 9
    .line 10
    const-string v0, "[B"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->JSONB_TYPE_HASH:J

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 6
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 6

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, [B

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    check-cast p2, [B

    .line 20
    .line 21
    :goto_0
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    const-string p4, "millis"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p4

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    if-eqz p4, :cond_2

    .line 35
    move-object p3, v0

    .line 36
    .line 37
    :cond_2
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 38
    .line 39
    iget-wide v1, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 40
    and-long/2addr v1, p5

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    cmp-long p4, v1, v3

    .line 45
    .line 46
    if-eqz p4, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([B)V

    .line 50
    return-void

    .line 51
    .line 52
    :cond_3
    const-string p4, "gzip"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p4

    .line 57
    .line 58
    const-string v1, "gzip,base64"

    .line 59
    .line 60
    if-nez p4, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p4

    .line 65
    .line 66
    if-eqz p4, :cond_6

    .line 67
    .line 68
    :cond_4
    :try_start_0
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    .line 69
    .line 70
    .line 71
    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    array-length v2, p2

    .line 73
    .line 74
    const/16 v5, 0x200

    .line 75
    .line 76
    if-ge v2, v5, :cond_5

    .line 77
    .line 78
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 79
    array-length v5, p2

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, p4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 83
    :goto_1
    move-object v0, v2

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_6

    .line 87
    :catch_0
    move-exception p1

    .line 88
    goto :goto_5

    .line 89
    .line 90
    :cond_5
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 91
    .line 92
    .line 93
    invoke-direct {v2, p4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 104
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 108
    .line 109
    :cond_6
    const-string p4, "base64"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result p4

    .line 114
    .line 115
    if-nez p4, :cond_a

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p3

    .line 120
    .line 121
    if-nez p3, :cond_a

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 125
    move-result-wide p3

    .line 126
    .line 127
    sget-object p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 128
    .line 129
    iget-wide p5, p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 130
    and-long/2addr p3, p5

    .line 131
    .line 132
    cmp-long p3, p3, v3

    .line 133
    .line 134
    if-eqz p3, :cond_7

    .line 135
    goto :goto_4

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 139
    const/4 p3, 0x0

    .line 140
    :goto_3
    array-length p4, p2

    .line 141
    .line 142
    if-ge p3, p4, :cond_9

    .line 143
    .line 144
    if-eqz p3, :cond_8

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 148
    .line 149
    :cond_8
    aget-byte p4, p2, p3

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 153
    .line 154
    add-int/lit8 p3, p3, 0x1

    .line 155
    goto :goto_3

    .line 156
    .line 157
    .line 158
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 159
    return-void

    .line 160
    .line 161
    .line 162
    :cond_a
    :goto_4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBase64([B)V

    .line 163
    return-void

    .line 164
    .line 165
    :goto_5
    :try_start_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 166
    .line 167
    const-string p3, "write gzipBytes error"

    .line 168
    .line 169
    .line 170
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    .line 174
    :goto_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 175
    throw p1
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    .line 4
    move-result p3

    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    const-class p3, [B

    .line 9
    .line 10
    if-ne p2, p3, :cond_0

    .line 11
    .line 12
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 13
    .line 14
    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->JSONB_TYPE_HASH:J

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    check-cast p2, [B

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    check-cast p2, [B

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBinary([B)V

    .line 48
    return-void
.end method
