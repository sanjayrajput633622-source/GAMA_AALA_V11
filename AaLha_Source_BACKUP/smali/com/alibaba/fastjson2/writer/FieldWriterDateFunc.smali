.class final Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterDate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterDate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v8, Ljava/util/Date;

    .line 3
    const/4 v9, 0x0

    .line 4
    .line 5
    const-class v7, Ljava/util/Date;

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p2

    .line 9
    move-wide v3, p3

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    move-object/from16 v10, p7

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterDate;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    .line 20
    move-object/from16 p1, p8

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 23
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Ljava/util/Date;

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 17
    move-result-wide v3

    .line 18
    or-long/2addr v1, v3

    .line 19
    .line 20
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 21
    .line 22
    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 23
    and-long/2addr v1, v3

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    cmp-long p2, v1, v3

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 36
    return v0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return p1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 42
    move-result-wide v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;J)V

    .line 46
    return v0
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Ljava/util/Date;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V

    .line 23
    return-void
.end method
