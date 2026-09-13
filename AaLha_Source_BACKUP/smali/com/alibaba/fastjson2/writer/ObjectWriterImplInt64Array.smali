.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;

    .line 8
    .line 9
    const-string v0, "[Long"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 13
    move-result-object v1

    .line 14
    .line 15
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;->JSONB_TYPE_NAME_BYTES:[B

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;->JSONB_TYPE_HASH:J

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
    if-nez p2, :cond_1

    .line 3
    .line 4
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 5
    .line 6
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 7
    .line 8
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 9
    .line 10
    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 11
    or-long/2addr p2, p4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    check-cast p2, [Ljava/lang/Long;

    .line 31
    .line 32
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 33
    .line 34
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 35
    and-long/2addr p3, p5

    .line 36
    .line 37
    const-wide/16 p5, 0x0

    .line 38
    .line 39
    cmp-long p3, p3, p5

    .line 40
    const/4 p4, 0x0

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    const/4 p3, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move p3, p4

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 49
    :goto_1
    array-length p5, p2

    .line 50
    .line 51
    if-ge p4, p5, :cond_6

    .line 52
    .line 53
    if-eqz p4, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 57
    .line 58
    :cond_3
    aget-object p5, p2, p4

    .line 59
    .line 60
    if-nez p5, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 68
    move-result-wide p5

    .line 69
    .line 70
    if-eqz p3, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(J)V

    .line 74
    goto :goto_2

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 78
    .line 79
    :goto_2
    add-int/lit8 p4, p4, 0x1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 84
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
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;->JSONB_TYPE_NAME_BYTES:[B

    .line 15
    .line 16
    sget-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;->JSONB_TYPE_HASH:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 20
    .line 21
    :cond_1
    check-cast p2, [Ljava/lang/Long;

    .line 22
    .line 23
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 24
    .line 25
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 26
    and-long/2addr p3, p5

    .line 27
    .line 28
    const-wide/16 p5, 0x0

    .line 29
    .line 30
    cmp-long p3, p3, p5

    .line 31
    const/4 p4, 0x0

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    const/4 p3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move p3, p4

    .line 37
    :goto_0
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
    .line 54
    :cond_3
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 55
    move-result-wide p5

    .line 56
    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(J)V

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 65
    .line 66
    :goto_2
    add-int/lit8 p4, p4, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    return-void
.end method
