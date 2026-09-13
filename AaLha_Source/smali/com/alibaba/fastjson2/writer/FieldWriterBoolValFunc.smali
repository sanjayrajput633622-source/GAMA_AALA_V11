.class final Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterBoolVal;
.source "SourceFile"


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/Predicate;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Predicate;)V
    .locals 11

    .line 1
    .line 2
    const-class v8, Ljava/lang/Boolean;

    .line 3
    const/4 v9, 0x0

    .line 4
    .line 5
    const-class v7, Ljava/lang/Boolean;

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
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolVal;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    .line 20
    move-object/from16 p1, p8

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;->function:Lcom/alibaba/fastjson2/function/Predicate;

    .line 23
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;->function:Lcom/alibaba/fastjson2/function/Predicate;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
