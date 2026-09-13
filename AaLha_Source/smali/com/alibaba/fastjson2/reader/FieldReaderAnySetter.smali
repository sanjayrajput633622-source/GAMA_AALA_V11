.class Lcom/alibaba/fastjson2/reader/FieldReaderAnySetter;
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


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 13

    .line 1
    const/4 v11, 0x0

    .line 2
    const/4 v12, 0x0

    .line 3
    .line 4
    const-string v1, "$$any$$"

    .line 5
    const/4 v8, 0x0

    .line 6
    const/4 v9, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    .line 11
    move/from16 v4, p3

    .line 12
    .line 13
    move-wide/from16 v5, p4

    .line 14
    .line 15
    move-object/from16 v7, p6

    .line 16
    .line 17
    move-object/from16 v10, p7

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 21
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    aput-object p2, v1, v2

    .line 9
    const/4 p2, 0x1

    .line 10
    .line 11
    aput-object p3, v1, p2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-void

    .line 16
    .line 17
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 18
    .line 19
    const-string p2, "any set error"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 16
    return-object p1
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderAnySetter;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    move-object v2, p1

    .line 16
    .line 17
    .line 18
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 22
    const/4 v3, 0x2

    .line 23
    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    aput-object v0, v3, v4

    .line 28
    const/4 v0, 0x1

    .line 29
    .line 30
    aput-object p1, v3, v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object p1, v0

    .line 37
    .line 38
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 39
    .line 40
    const-string v0, "any set error"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    throw p2
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method
