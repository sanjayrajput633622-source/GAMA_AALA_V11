.class final Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueFunc;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/ObjShortConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/ObjShortConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Short;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjShortConsumer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Short;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/ObjShortConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 3
    const/4 v11, 0x0

    .line 4
    move-object v3, v2

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v4, p2

    .line 8
    move-wide v5, p3

    .line 9
    .line 10
    move-object/from16 v7, p5

    .line 11
    .line 12
    move-object/from16 v8, p6

    .line 13
    .line 14
    move-object/from16 v9, p7

    .line 15
    .line 16
    move-object/from16 v10, p8

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 20
    .line 21
    move-object/from16 p1, p9

    .line 22
    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjShortConsumer;

    .line 24
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toShortValue(Ljava/lang/Object;)S

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjShortConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjShortConsumer;->accept(Ljava/lang/Object;S)V

    return-void
.end method

.method public accept(Ljava/lang/Object;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;S)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjShortConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjShortConsumer;->accept(Ljava/lang/Object;S)V

    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p1

    int-to-short p1, p1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjShortConsumer;

    invoke-interface {v0, p2, p1}, Lcom/alibaba/fastjson2/function/ObjShortConsumer;->accept(Ljava/lang/Object;S)V

    return-void
.end method
