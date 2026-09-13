.class final Lcom/alibaba/fastjson2/reader/FieldReaderObjectFunc;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObject<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;Lcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/BiConsumer<",
            "TT;TV;>;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v11, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    .line 6
    move-object/from16 v3, p3

    .line 7
    .line 8
    move/from16 v4, p4

    .line 9
    .line 10
    move-wide/from16 v5, p5

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    move-object/from16 v10, p10

    .line 19
    .line 20
    move-object/from16 v12, p11

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 24
    .line 25
    move-object/from16 p1, p12

    .line 26
    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 28
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 3
    .line 4
    const-class v1, Ljava/lang/Float;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-class v1, Ljava/lang/Double;

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 24
    .line 25
    const-class v1, [Ljava/lang/StackTraceElement;

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    return-void

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method
