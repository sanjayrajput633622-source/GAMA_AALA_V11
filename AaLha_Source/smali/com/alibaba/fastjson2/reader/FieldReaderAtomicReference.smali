.class public abstract Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReference;
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
.field final referenceType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 12

    .line 1
    const/4 v8, 0x0

    .line 2
    const/4 v9, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

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
    move-object/from16 v10, p8

    .line 15
    .line 16
    move-object/from16 v11, p9

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 20
    .line 21
    instance-of p1, p2, Ljava/lang/reflect/ParameterizedType;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 29
    move-result-object p1

    .line 30
    array-length p2, p1

    .line 31
    const/4 p3, 0x1

    .line 32
    .line 33
    if-ne p2, p3, :cond_0

    .line 34
    const/4 p2, 0x0

    .line 35
    .line 36
    aget-object p1, p1, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    .line 40
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReference;->referenceType:Ljava/lang/reflect/Type;

    .line 41
    return-void
.end method


# virtual methods
.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReference;->referenceType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReference;->referenceType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
