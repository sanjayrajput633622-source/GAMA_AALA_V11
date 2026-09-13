.class final Lcom/alibaba/fastjson2/writer/FieldWriterCharValFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/ToCharFunction;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToCharFunction;)V
    .locals 11

    .line 1
    .line 2
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

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
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCharValFunc;->function:Lcom/alibaba/fastjson2/function/ToCharFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCharValFunc;->function:Lcom/alibaba/fastjson2/function/ToCharFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/ToCharFunction;->applyAsChar(Ljava/lang/Object;)C

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCharValFunc;->function:Lcom/alibaba/fastjson2/function/ToCharFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToCharFunction;->applyAsChar(Ljava/lang/Object;)C

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCharValFunc;->function:Lcom/alibaba/fastjson2/function/ToCharFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToCharFunction;->applyAsChar(Ljava/lang/Object;)C

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    .line 10
    return-void
.end method
