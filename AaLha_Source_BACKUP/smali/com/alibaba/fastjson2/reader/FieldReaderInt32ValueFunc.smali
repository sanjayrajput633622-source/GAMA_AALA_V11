.class final Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueFunc;
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
.field final function:Lcom/alibaba/fastjson2/function/ObjIntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/ObjIntConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjIntConsumer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/ObjIntConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const/4 v8, 0x0

    .line 2
    const/4 v11, 0x0

    .line 3
    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 5
    .line 6
    const-wide/16 v5, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v3, v2

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move v4, p2

    .line 12
    move-object v9, p3

    .line 13
    .line 14
    move-object/from16 v10, p4

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 18
    .line 19
    move-object/from16 p1, p5

    .line 20
    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjIntConsumer;

    .line 22
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjIntConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public accept(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjIntConsumer;

    long-to-int p2, p2

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toIntValue(Ljava/lang/Object;)I

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjIntConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjIntConsumer;

    invoke-interface {v0, p2, p1}, Lcom/alibaba/fastjson2/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method
