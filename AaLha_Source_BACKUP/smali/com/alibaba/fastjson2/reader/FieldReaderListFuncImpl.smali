.class Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;
.super Lcom/alibaba/fastjson2/reader/FieldReaderList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderList<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field final itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TV;>;"
        }
    .end annotation
.end field

.field final listCreator:Lcom/alibaba/fastjson2/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/function/BiConsumer;Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "Ljava/util/List<",
            "TV;>;>;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TV;>;",
            "Lcom/alibaba/fastjson2/function/BiConsumer<",
            "TT;",
            "Ljava/util/List<",
            "TV;>;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 4
    move-result-object v5

    .line 5
    const/4 v12, 0x0

    .line 6
    const/4 v13, 0x0

    .line 7
    .line 8
    const-class v2, Ljava/util/List;

    .line 9
    .line 10
    const-class v3, Ljava/util/List;

    .line 11
    const/4 v6, 0x0

    .line 12
    .line 13
    const-wide/16 v7, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    move-object v0, p0

    .line 18
    .line 19
    move-object/from16 v14, p3

    .line 20
    .line 21
    move-object/from16 v4, p4

    .line 22
    .line 23
    move-object/from16 v1, p5

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/FieldReaderList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;->listCreator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 31
    .line 32
    move-object/from16 v1, p2

    .line 33
    .line 34
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 35
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;->listCreator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    return-object p1
.end method
