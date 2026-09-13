.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;

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
    check-cast p2, Ljava/util/Map$Entry;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 12
    .line 13
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    .line 17
    move-result-wide p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 21
    move-result-object p5

    .line 22
    .line 23
    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 24
    .line 25
    iget-wide v0, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 26
    .line 27
    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 28
    .line 29
    iget-wide v2, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 30
    or-long/2addr v0, v2

    .line 31
    and-long/2addr p3, v0

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    cmp-long p3, p3, v0

    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 62
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 4

    .line 1
    .line 2
    check-cast p2, Ljava/util/Map$Entry;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p3, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 13
    .line 14
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    .line 18
    move-result-wide p3

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    move-result-object p5

    .line 23
    .line 24
    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 25
    .line 26
    iget-wide v0, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 27
    .line 28
    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 29
    .line 30
    iget-wide v2, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 31
    or-long/2addr v0, v2

    .line 32
    and-long/2addr p3, v0

    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    cmp-long p3, p3, v0

    .line 37
    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
