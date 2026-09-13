.class final Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterInt8;
.source "SourceFile"


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/ToByteFunction;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToByteFunction;)V
    .locals 10

    .line 1
    .line 2
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-wide v3, p3

    .line 8
    move-object v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v9, p7

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 16
    .line 17
    move-object/from16 p1, p8

    .line 18
    .line 19
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;->function:Lcom/alibaba/fastjson2/function/ToByteFunction;

    .line 20
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;->function:Lcom/alibaba/fastjson2/function/ToByteFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/ToByteFunction;->applyAsByte(Ljava/lang/Object;)B

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;->function:Lcom/alibaba/fastjson2/function/ToByteFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToByteFunction;->applyAsByte(Ljava/lang/Object;)B

    .line 6
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8;->writeInt8(Lcom/alibaba/fastjson2/JSONWriter;B)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    throw p2
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;->function:Lcom/alibaba/fastjson2/function/ToByteFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToByteFunction;->applyAsByte(Ljava/lang/Object;)B

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 10
    return-void
.end method
