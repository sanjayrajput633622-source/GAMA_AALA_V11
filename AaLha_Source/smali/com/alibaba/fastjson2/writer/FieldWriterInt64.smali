.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterInt64;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final browserCompatible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 11

    .line 1
    .line 2
    move-object/from16 v8, p7

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v9, p8

    .line 15
    .line 16
    move-object/from16 v10, p9

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 20
    .line 21
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 22
    .line 23
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 24
    and-long/2addr p1, p3

    .line 25
    .line 26
    const-wide/16 p3, 0x0

    .line 27
    .line 28
    cmp-long p1, p1, p3

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    .line 35
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt64;->browserCompatible:Z

    .line 36
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

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
    check-cast p2, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 16
    move-result-wide v4

    .line 17
    or-long/2addr v2, v4

    .line 18
    .line 19
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 20
    .line 21
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 22
    .line 23
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 24
    .line 25
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 26
    or-long/2addr v4, v6

    .line 27
    .line 28
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 29
    .line 30
    iget-wide v7, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 31
    or-long/2addr v4, v7

    .line 32
    and-long/2addr v4, v2

    .line 33
    .line 34
    const-wide/16 v7, 0x0

    .line 35
    .line 36
    cmp-long v4, v4, v7

    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    return v0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 43
    .line 44
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 45
    .line 46
    iget-wide v9, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 47
    or-long/2addr v4, v9

    .line 48
    and-long/2addr v2, v4

    .line 49
    .line 50
    cmp-long p2, v2, v7

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v7, v8}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 60
    :goto_0
    return v1

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 64
    move-result-wide v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v2, v3}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64;->writeInt64(Lcom/alibaba/fastjson2/JSONWriter;J)V

    .line 68
    return v1

    .line 69
    :catch_0
    move-exception p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    return v0

    .line 77
    :cond_3
    throw p2
.end method

.method public final writeInt64(Lcom/alibaba/fastjson2/JSONWriter;J)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 7
    or-long/2addr v0, v2

    .line 8
    .line 9
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 10
    .line 11
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 12
    .line 13
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 14
    .line 15
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 16
    or-long/2addr v2, v4

    .line 17
    and-long/2addr v0, v2

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt64;->browserCompatible:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v3, 0x1fffffffffffffL

    .line 47
    .line 48
    cmp-long v0, p2, v3

    .line 49
    .line 50
    if-gtz v0, :cond_1

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v3, -0x1fffffffffffffL

    .line 56
    .line 57
    cmp-long v0, p2, v3

    .line 58
    .line 59
    if-gez v0, :cond_2

    .line 60
    :cond_1
    move v1, v2

    .line 61
    :cond_2
    move v0, v1

    .line 62
    .line 63
    :cond_3
    if-eqz v0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 71
    return-void

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 75
    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0
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
    check-cast p2, Ljava/lang/Long;

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
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    .line 16
    return-void
.end method
