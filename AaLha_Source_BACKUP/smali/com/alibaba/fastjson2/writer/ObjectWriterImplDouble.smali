.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;


# instance fields
.field private final format:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->format:Ljava/text/DecimalFormat;

    .line 6
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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->format:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    check-cast p2, Ljava/lang/Double;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 24
    move-result-wide p2

    .line 25
    .line 26
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 27
    .line 28
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 29
    and-long/2addr v0, p5

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    cmp-long v0, v0, v2

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(D)V

    .line 39
    return-void

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 46
    move-result-wide p2

    .line 47
    or-long/2addr p2, p5

    .line 48
    .line 49
    sget-object p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 50
    .line 51
    iget-wide p5, p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 52
    and-long/2addr p2, p5

    .line 53
    .line 54
    cmp-long p2, p2, v2

    .line 55
    .line 56
    if-eqz p2, :cond_3

    .line 57
    .line 58
    const-class p2, Ljava/lang/Double;

    .line 59
    .line 60
    if-eq p4, p2, :cond_3

    .line 61
    .line 62
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    if-eq p4, p2, :cond_3

    .line 65
    .line 66
    const/16 p2, 0x44

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    .line 70
    :cond_3
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
    :cond_0
    check-cast p2, Ljava/lang/Double;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 12
    move-result-wide p2

    .line 13
    .line 14
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr p5, v0

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    cmp-long p4, p5, v0

    .line 22
    .line 23
    if-eqz p4, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(D)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 31
    return-void
.end method
