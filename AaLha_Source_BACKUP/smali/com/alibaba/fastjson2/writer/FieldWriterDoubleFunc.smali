.class final Lcom/alibaba/fastjson2/writer/FieldWriterDoubleFunc;
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
.field final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v8, Ljava/lang/Double;

    .line 3
    const/4 v9, 0x0

    .line 4
    .line 5
    const-class v7, Ljava/lang/Double;

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
    move-object/from16 v10, p7

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    .line 20
    move-object/from16 p1, p8

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 23
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFloatNull(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 34
    :goto_0
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :catch_0
    move-exception p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_2
    throw p2
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Double;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 30
    return-void
.end method
