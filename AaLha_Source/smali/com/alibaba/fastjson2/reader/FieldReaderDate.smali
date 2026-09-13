.class final Lcom/alibaba/fastjson2/reader/FieldReaderDate;
.super Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/BiConsumer<",
            "TT;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/BiConsumer<",
            "TT;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    .line 4
    move-result-object v12

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    .line 9
    move-object/from16 v3, p3

    .line 10
    .line 11
    move/from16 v4, p4

    .line 12
    .line 13
    move-wide/from16 v5, p5

    .line 14
    .line 15
    move-object/from16 v7, p7

    .line 16
    .line 17
    move-object/from16 v8, p8

    .line 18
    .line 19
    move-object/from16 v9, p9

    .line 20
    .line 21
    move-object/from16 v11, p10

    .line 22
    .line 23
    move-object/from16 v10, p11

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;)V

    .line 27
    .line 28
    move-object/from16 p1, p12

    .line 29
    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDate;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderDate;->accept(Ljava/lang/Object;Ljava/util/Date;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/util/Date;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDate;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    const-string v0, "set "

    if-eqz p1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    const-string v2, " error"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 5
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 7
    :cond_1
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 8
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, v3, v4, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 10
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error, object is null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public acceptNull(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderDate;->accept(Ljava/lang/Object;Ljava/util/Date;)V

    .line 5
    return-void
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 1

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public apply(Ljava/util/Date;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 7
    .line 8
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 9
    move-object v1, p1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderDate;->accept(Ljava/lang/Object;Ljava/util/Date;)V

    .line 19
    return-void
.end method
