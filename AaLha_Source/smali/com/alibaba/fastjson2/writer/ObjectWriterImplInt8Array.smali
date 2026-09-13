.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;

    .line 8
    .line 9
    const-string v0, "[Byte"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 13
    move-result-object v1

    .line 14
    .line 15
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;->JSONB_TYPE_NAME_BYTES:[B

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;->JSONB_TYPE_HASH:J

    .line 22
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
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 9
    .line 10
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 11
    and-long/2addr p3, p5

    .line 12
    .line 13
    const-wide/16 p5, 0x0

    .line 14
    .line 15
    cmp-long p3, p3, p5

    .line 16
    const/4 p4, 0x0

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    const/4 p3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move p3, p4

    .line 22
    .line 23
    :goto_0
    check-cast p2, [Ljava/lang/Byte;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 27
    :goto_1
    array-length p5, p2

    .line 28
    .line 29
    if-ge p4, p5, :cond_5

    .line 30
    .line 31
    if-eqz p4, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 35
    .line 36
    :cond_2
    aget-object p5, p2, p4

    .line 37
    .line 38
    if-nez p5, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_3
    if-eqz p3, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p5}, Ljava/lang/Byte;->byteValue()B

    .line 48
    move-result p5

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(B)V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p5}, Ljava/lang/Byte;->byteValue()B

    .line 56
    move-result p5

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    .line 60
    .line 61
    :goto_2
    add-int/lit8 p4, p4, 0x1

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 66
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    .line 10
    move-result p3

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;->JSONB_TYPE_NAME_BYTES:[B

    .line 15
    .line 16
    sget-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;->JSONB_TYPE_HASH:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 20
    .line 21
    :cond_1
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 22
    .line 23
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 24
    and-long/2addr p3, p5

    .line 25
    .line 26
    const-wide/16 p5, 0x0

    .line 27
    .line 28
    cmp-long p3, p3, p5

    .line 29
    const/4 p4, 0x0

    .line 30
    .line 31
    if-eqz p3, :cond_2

    .line 32
    const/4 p3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move p3, p4

    .line 35
    .line 36
    :goto_0
    check-cast p2, [Ljava/lang/Byte;

    .line 37
    array-length p5, p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 41
    :goto_1
    array-length p5, p2

    .line 42
    .line 43
    if-ge p4, p5, :cond_5

    .line 44
    .line 45
    aget-object p5, p2, p4

    .line 46
    .line 47
    if-nez p5, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_3
    if-eqz p3, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p5}, Ljava/lang/Byte;->byteValue()B

    .line 57
    move-result p5

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(B)V

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {p5}, Ljava/lang/Byte;->byteValue()B

    .line 65
    move-result p5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    .line 69
    .line 70
    :goto_2
    add-int/lit8 p4, p4, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    return-void
.end method
