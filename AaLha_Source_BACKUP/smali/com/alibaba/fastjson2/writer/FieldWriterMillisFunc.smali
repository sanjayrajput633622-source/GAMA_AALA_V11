.class final Lcom/alibaba/fastjson2/writer/FieldWriterMillisFunc;
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
.field final function:Lcom/alibaba/fastjson2/function/ToLongFunction;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToLongFunction;)V
    .locals 11

    .line 1
    .line 2
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 3
    const/4 v9, 0x0

    .line 4
    move-object v8, v7

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v2, p2

    .line 8
    move-wide v3, p3

    .line 9
    .line 10
    move-object/from16 v5, p5

    .line 11
    .line 12
    move-object/from16 v6, p6

    .line 13
    .line 14
    move-object/from16 v10, p7

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterDate;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 18
    .line 19
    move-object/from16 p1, p8

    .line 20
    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMillisFunc;->function:Lcom/alibaba/fastjson2/function/ToLongFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMillisFunc;->function:Lcom/alibaba/fastjson2/function/ToLongFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMillisFunc;->function:Lcom/alibaba/fastjson2/function/ToLongFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;J)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMillisFunc;->function:Lcom/alibaba/fastjson2/function/ToLongFunction;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    .line 6
    move-result-wide v0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V

    .line 11
    return-void
.end method
