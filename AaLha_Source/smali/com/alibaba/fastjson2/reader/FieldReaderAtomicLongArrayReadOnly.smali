.class final Lcom/alibaba/fastjson2/reader/FieldReaderAtomicLongArrayReadOnly;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/reflect/Method;)V
    .locals 12

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v11, 0x0

    .line 3
    .line 4
    const-wide/16 v5, 0x0

    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x0

    .line 7
    move-object v3, p2

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move v4, p3

    .line 12
    .line 13
    move-object/from16 v10, p4

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 17
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    goto :goto_2

    .line 4
    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 13
    .line 14
    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-ge v1, v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_3

    .line 38
    .line 39
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-ge v1, v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toIntValue(Ljava/lang/Object;)I

    .line 53
    move-result v0

    .line 54
    int-to-long v2, v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_2
    return-void

    .line 62
    .line 63
    :goto_3
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v1, "set "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, " error"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    throw p2
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

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

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v1

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 7
    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
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
