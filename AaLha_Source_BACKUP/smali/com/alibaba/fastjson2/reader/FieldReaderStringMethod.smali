.class final Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final trim:Z

.field final upper:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 13

    .line 1
    const/4 v11, 0x0

    .line 2
    const/4 v12, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-wide/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 23
    .line 24
    const-string p1, "trim"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 33
    .line 34
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 35
    .line 36
    and-long p1, p5, p1

    .line 37
    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    cmp-long p1, p1, v1

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 47
    .line 48
    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;->trim:Z

    .line 49
    .line 50
    const-string p1, "upper"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;->upper:Z

    .line 57
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/String;

    .line 15
    .line 16
    :goto_1
    if-eqz p2, :cond_3

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;->trim:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;->upper:Z

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    aput-object p2, v1, v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p1

    .line 46
    .line 47
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v1, "set "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, " error"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    throw p2
.end method

.method public bridge synthetic readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 1

    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;->trim:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;->trim:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringMethod;->upper:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public supportAcceptType(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
