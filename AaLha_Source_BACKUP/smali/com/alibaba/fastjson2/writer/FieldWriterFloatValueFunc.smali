.class final Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/ToFloatFunction;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToFloatFunction;)V
    .locals 11

    .line 1
    .line 2
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 3
    const/4 v9, 0x0

    .line 4
    move-object v8, v7

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
    move-object/from16 v10, p7

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 18
    .line 19
    move-object/from16 p1, p8

    .line 20
    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->function:Lcom/alibaba/fastjson2/function/ToFloatFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->function:Lcom/alibaba/fastjson2/function/ToFloatFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/ToFloatFunction;->applyAsFloat(Ljava/lang/Object;)F

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->function:Lcom/alibaba/fastjson2/function/ToFloatFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToFloatFunction;->applyAsFloat(Ljava/lang/Object;)F

    .line 6
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(FLjava/text/DecimalFormat;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    .line 21
    :goto_0
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :catch_0
    move-exception p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_1
    throw p2
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->function:Lcom/alibaba/fastjson2/function/ToFloatFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToFloatFunction;->applyAsFloat(Ljava/lang/Object;)F

    .line 6
    move-result p2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    float-to-double v1, p2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    .line 15
    return-void

    .line 16
    :cond_0
    float-to-double v0, p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 20
    return-void
.end method
