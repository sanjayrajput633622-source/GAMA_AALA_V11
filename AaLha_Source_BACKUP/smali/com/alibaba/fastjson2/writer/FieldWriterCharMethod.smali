.class final Lcom/alibaba/fastjson2/writer/FieldWriterCharMethod;
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
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 11

    .line 1
    .line 2
    move-object/from16 v8, p9

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
    move-object/from16 v9, p7

    .line 13
    .line 14
    move-object/from16 v10, p8

    .line 15
    .line 16
    move-object/from16 v7, p9

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

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
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterCharMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/lang/Character;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-nez p2, :cond_2

    .line 10
    .line 11
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 18
    or-long/2addr v1, v3

    .line 19
    .line 20
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 21
    .line 22
    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 23
    .line 24
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 25
    .line 26
    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 27
    or-long/2addr v3, v5

    .line 28
    and-long/2addr v3, v1

    .line 29
    .line 30
    const-wide/16 v5, 0x0

    .line 31
    .line 32
    cmp-long v3, v3, v5

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 39
    .line 40
    iget-wide v7, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 41
    and-long/2addr v1, v7

    .line 42
    .line 43
    cmp-long p2, v1, v5

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 53
    :goto_0
    return v0

    .line 54
    :cond_1
    return v4

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 61
    move-result p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    .line 65
    return v0
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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterCharMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/lang/Character;

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
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    .line 20
    return-void
.end method
