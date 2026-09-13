.class final Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final format:Ljava/lang/String;

.field final function:Lcom/alibaba/fastjson2/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/BiConsumer<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field final trim:Z

.field final upper:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/BiConsumer<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 1
    const/4 v11, 0x0

    .line 2
    move-object v3, p2

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v4, p3

    .line 7
    .line 8
    move-wide/from16 v5, p4

    .line 9
    .line 10
    move-object/from16 v7, p6

    .line 11
    .line 12
    move-object/from16 v8, p7

    .line 13
    .line 14
    move-object/from16 v9, p8

    .line 15
    .line 16
    move-object/from16 v10, p9

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 20
    .line 21
    move-object/from16 p1, p10

    .line 22
    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 24
    .line 25
    iput-object v7, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->format:Ljava/lang/String;

    .line 26
    .line 27
    const-string p1, "trim"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 36
    .line 37
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 38
    .line 39
    and-long p1, p4, p1

    .line 40
    .line 41
    const-wide/16 v1, 0x0

    .line 42
    .line 43
    cmp-long p1, p1, v1

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 50
    .line 51
    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->trim:Z

    .line 52
    .line 53
    const-string p1, "upper"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 58
    .line 59
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->upper:Z

    .line 60
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->trim:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->upper:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 10
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 7
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

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->trim:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->upper:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringFunc;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    invoke-interface {v0, p2, p1}, Lcom/alibaba/fastjson2/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public supportAcceptType(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
