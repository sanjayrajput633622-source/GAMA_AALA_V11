.class final Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterObject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/Function;

.field final isArray:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V
    .locals 11

    .line 1
    const/4 v9, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    move-object/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v10, p9

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    .line 20
    move-object/from16 p1, p10

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 23
    .line 24
    const-class p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 25
    .line 26
    if-eq v8, p1, :cond_1

    .line 27
    .line 28
    const-class p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 29
    .line 30
    if-eq v8, p1, :cond_1

    .line 31
    .line 32
    const-class p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 33
    .line 34
    if-eq v8, p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 45
    .line 46
    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;->isArray:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
