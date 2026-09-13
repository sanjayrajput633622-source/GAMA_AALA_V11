.class final Lcom/alibaba/fastjson2/writer/FieldWriterDateField;
.super Lcom/alibaba/fastjson2/writer/FieldWriterDate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterDate<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 1
    .line 2
    const-class v8, Ljava/util/Date;

    .line 3
    const/4 v10, 0x0

    .line 4
    .line 5
    const-class v7, Ljava/util/Date;

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p2

    .line 9
    move-wide v3, p3

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    move-object/from16 v9, p7

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterDate;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/util/Date;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 15
    move-result-wide v3

    .line 16
    or-long/2addr v1, v3

    .line 17
    .line 18
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 19
    .line 20
    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 21
    and-long/2addr v1, v3

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long p2, v1, v3

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 34
    return v0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;J)V

    .line 44
    return v0
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/util/Date;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V

    .line 21
    return-void
.end method
