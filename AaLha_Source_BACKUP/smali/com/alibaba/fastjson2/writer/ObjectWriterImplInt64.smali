.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;


# instance fields
.field final defineClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;->defineClass:Ljava/lang/Class;

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 12
    move-result-wide p2

    .line 13
    .line 14
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr v0, p5

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(J)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 31
    .line 32
    .line 33
    const-wide/32 v0, -0x80000000

    .line 34
    .line 35
    cmp-long v0, p2, v0

    .line 36
    .line 37
    if-ltz v0, :cond_3

    .line 38
    .line 39
    .line 40
    const-wide/32 v0, 0x7fffffff

    .line 41
    .line 42
    cmp-long p2, p2, v0

    .line 43
    .line 44
    if-gtz p2, :cond_3

    .line 45
    .line 46
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 47
    .line 48
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 49
    and-long/2addr p5, v0

    .line 50
    .line 51
    cmp-long p3, p5, v2

    .line 52
    .line 53
    if-eqz p3, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 57
    move-result-wide p5

    .line 58
    .line 59
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 60
    and-long/2addr p2, p5

    .line 61
    .line 62
    cmp-long p2, p2, v2

    .line 63
    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    iget-wide p2, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 67
    .line 68
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 69
    .line 70
    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 71
    or-long/2addr p2, v0

    .line 72
    and-long/2addr p2, p5

    .line 73
    .line 74
    cmp-long p2, p2, v2

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    return-void

    .line 78
    .line 79
    :cond_2
    const/16 p2, 0x4c

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    .line 83
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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

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
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(J)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 31
    return-void
.end method
