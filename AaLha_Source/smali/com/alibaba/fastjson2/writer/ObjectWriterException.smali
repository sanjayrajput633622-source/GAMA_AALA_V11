.class public Lcom/alibaba/fastjson2/writer/ObjectWriterException;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "J",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-wide v4, p2

    .line 6
    move-object v6, p4

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 10
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterException;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 8
    move-object p1, p0

    .line 9
    return-void

    .line 10
    :cond_0
    move-object p3, p2

    .line 11
    move-object p2, p1

    .line 12
    move-object p1, p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 16
    move-result p4

    .line 17
    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 29
    move-result-wide p4

    .line 30
    .line 31
    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 32
    .line 33
    iget-wide v0, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 34
    .line 35
    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteThrowableClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 36
    .line 37
    iget-wide v2, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 38
    or-long/2addr v0, v2

    .line 39
    and-long/2addr p4, v0

    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    cmp-long p4, p4, v0

    .line 44
    .line 45
    if-eqz p4, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 49
    .line 50
    :cond_2
    iget-object p4, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 54
    move-result p4

    .line 55
    const/4 p5, 0x0

    .line 56
    .line 57
    :goto_0
    if-ge p5, p4, :cond_3

    .line 58
    .line 59
    iget-object p6, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-interface {p6, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p6

    .line 64
    .line 65
    check-cast p6, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p6, p2, p3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 69
    .line 70
    add-int/lit8 p5, p5, 0x1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 75
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 4
    .line 5
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 9
    move-result p3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 13
    const/4 p4, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge p4, p3, :cond_0

    .line 16
    .line 17
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p5

    .line 22
    .line 23
    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 27
    .line 28
    add-int/lit8 p4, p4, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 33
    return-void
.end method
