.class final Lcom/alibaba/fastjson2/writer/FieldWriterInt64Method;
.super Lcom/alibaba/fastjson2/writer/FieldWriterInt64;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterInt64<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p2

    .line 4
    move-wide v3, p3

    .line 5
    move-object v5, p5

    .line 6
    .line 7
    move-object/from16 v6, p6

    .line 8
    .line 9
    move-object/from16 v8, p7

    .line 10
    .line 11
    move-object/from16 v9, p8

    .line 12
    .line 13
    move-object/from16 v7, p9

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "invoke getter method error, "

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_2
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    throw v1

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    move-object p1, v1

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-direct {v2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    throw v2
.end method
