.class final Lcom/alibaba/fastjson2/reader/FieldReaderCharValueFunc;
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
.field final function:Lcom/alibaba/fastjson2/function/ObjCharConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/ObjCharConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Character;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjCharConsumer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/ObjCharConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const/4 v8, 0x0

    .line 2
    const/4 v11, 0x0

    .line 3
    .line 4
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 5
    .line 6
    const-wide/16 v5, 0x0

    .line 7
    move-object v3, v2

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move v4, p2

    .line 11
    move-object v7, p3

    .line 12
    .line 13
    move-object/from16 v9, p4

    .line 14
    .line 15
    move-object/from16 v10, p5

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 19
    .line 20
    move-object/from16 p1, p6

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjCharConsumer;

    .line 23
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;C)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjCharConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjCharConsumer;->accept(Ljava/lang/Object;C)V

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

    .line 2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueFunc;->accept(Ljava/lang/Object;C)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "cast to char error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueFunc;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

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

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readCharValue()C

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjCharConsumer;

    invoke-interface {p1, p2, v0}, Lcom/alibaba/fastjson2/function/ObjCharConsumer;->accept(Ljava/lang/Object;C)V

    return-void
.end method
