.class final Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalMethod;
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
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 11

    .line 1
    .line 2
    const-class v7, Ljava/math/BigDecimal;

    .line 3
    .line 4
    const-class v8, Ljava/math/BigDecimal;

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v2, p2

    .line 8
    move-wide v3, p3

    .line 9
    .line 10
    move-object/from16 v5, p5

    .line 11
    .line 12
    move-object/from16 v6, p6

    .line 13
    .line 14
    move-object/from16 v9, p7

    .line 15
    .line 16
    move-object/from16 v10, p8

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
    .locals 3
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
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFloatNull(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 17
    .line 18
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 19
    .line 20
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :catch_0
    move-exception p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_1
    throw p2
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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/math/BigDecimal;

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 9
    .line 10
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 14
    return-void
.end method
