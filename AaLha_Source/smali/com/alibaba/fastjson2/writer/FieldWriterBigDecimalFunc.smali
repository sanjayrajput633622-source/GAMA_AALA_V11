.class final Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;
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
            "Ljava/math/BigDecimal;",
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
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v8, Ljava/math/BigDecimal;

    .line 3
    const/4 v9, 0x0

    .line 4
    .line 5
    const-class v7, Ljava/math/BigDecimal;

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
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Ljava/math/BigDecimal;
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
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 21
    .line 22
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :catch_0
    move-exception p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Ljava/math/BigDecimal;

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 16
    return-void
.end method
