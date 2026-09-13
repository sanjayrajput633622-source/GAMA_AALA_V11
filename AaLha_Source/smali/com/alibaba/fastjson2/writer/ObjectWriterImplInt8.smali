.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;

    .line 8
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
    .locals 4

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/lang/Byte;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    .line 12
    move-result p2

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr v0, p5

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long p3, v0, v2

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(B)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 34
    move-result-wide p2

    .line 35
    or-long/2addr p2, p5

    .line 36
    .line 37
    sget-object p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 38
    .line 39
    iget-wide p5, p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 40
    and-long/2addr p2, p5

    .line 41
    .line 42
    cmp-long p2, p2, v2

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    const-class p2, Ljava/lang/Byte;

    .line 47
    .line 48
    if-eq p4, p2, :cond_2

    .line 49
    .line 50
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-eq p4, p2, :cond_2

    .line 53
    .line 54
    const/16 p2, 0x42

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    .line 58
    :cond_2
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/lang/Byte;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    .line 12
    move-result p2

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr p3, p5

    .line 18
    .line 19
    const-wide/16 p5, 0x0

    .line 20
    .line 21
    cmp-long p3, p3, p5

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(B)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    .line 31
    return-void
.end method
