.class final Lcom/alibaba/fastjson2/writer/FieldWriterStringMethod;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 11

    .line 1
    .line 2
    const-class v7, Ljava/lang/String;

    .line 3
    .line 4
    const-class v8, Ljava/lang/String;

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v2, p2

    .line 8
    move-object v5, p3

    .line 9
    move-object v6, p4

    .line 10
    .line 11
    move-wide/from16 v3, p5

    .line 12
    .line 13
    move-object/from16 v9, p7

    .line 14
    .line 15
    move-object/from16 v10, p8

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p1

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :catch_1
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_2
    move-exception p1

    .line 14
    .line 15
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v2, "invoke getter method error, "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    throw v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 9
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
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterStringMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 15
    move-result-wide v5

    .line 16
    or-long/2addr v3, v5

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 21
    .line 22
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 23
    .line 24
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 25
    .line 26
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 27
    or-long/2addr v5, v7

    .line 28
    .line 29
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 30
    .line 31
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 32
    or-long/2addr v5, v7

    .line 33
    and-long/2addr v5, v3

    .line 34
    .line 35
    cmp-long v5, v5, v1

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    return v0

    .line 39
    .line 40
    :cond_0
    iget-boolean v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->trim:Z

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    :cond_1
    if-eqz p2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 52
    move-result v5

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 57
    .line 58
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 59
    and-long/2addr v3, v5

    .line 60
    .line 61
    cmp-long v1, v3, v1

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    return v0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeString(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/String;)V

    .line 68
    const/4 p1, 0x1

    .line 69
    return p1

    .line 70
    :catch_0
    move-exception p2

    .line 71
    .line 72
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 76
    move-result-wide v3

    .line 77
    .line 78
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 79
    .line 80
    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 81
    or-long/2addr v3, v5

    .line 82
    .line 83
    cmp-long p1, v3, v1

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    return v0

    .line 87
    :cond_3
    throw p2
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 1
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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterStringMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->trim:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->symbol:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->raw:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
