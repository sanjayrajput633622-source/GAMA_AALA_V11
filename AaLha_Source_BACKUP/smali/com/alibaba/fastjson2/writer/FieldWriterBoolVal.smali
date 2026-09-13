.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterBoolVal;
.super Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 4
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p2

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 19
    move-result-wide v3

    .line 20
    or-long/2addr v1, v3

    .line 21
    .line 22
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 23
    .line 24
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 25
    and-long/2addr v1, v3

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmp-long v1, v1, v3

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    return v0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V

    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :catch_0
    move-exception p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    return v0

    .line 46
    :cond_1
    throw p2
.end method
