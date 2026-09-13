.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterInt8;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final writeNonStringValueAsString:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 11

    .line 1
    .line 2
    move-object/from16 v8, p7

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v9, p8

    .line 15
    .line 16
    move-object/from16 v10, p9

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 20
    .line 21
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 22
    .line 23
    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 24
    and-long/2addr p1, p3

    .line 25
    .line 26
    const-wide/16 p3, 0x0

    .line 27
    .line 28
    cmp-long p1, p1, p3

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    .line 35
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8;->writeNonStringValueAsString:Z

    .line 36
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeIntNull(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    .line 17
    move-result p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8;->writeInt8(Lcom/alibaba/fastjson2/JSONWriter;B)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :catch_0
    move-exception p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_1
    throw p2
.end method

.method public final writeInt8(Lcom/alibaba/fastjson2/JSONWriter;B)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8;->writeNonStringValueAsString:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(B)V

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    .line 15
    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/lang/Byte;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 20
    return-void
.end method
