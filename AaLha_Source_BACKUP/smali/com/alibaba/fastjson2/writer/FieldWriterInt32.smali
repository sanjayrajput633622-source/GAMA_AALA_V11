.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterInt32;
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
.field final toString:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 4
    move-object p1, p0

    .line 5
    .line 6
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide p6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    and-long/2addr p3, p6

    .line 10
    .line 11
    const-wide/16 p6, 0x0

    .line 12
    .line 13
    cmp-long p2, p3, p6

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    const-string p2, "string"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 28
    .line 29
    :goto_1
    iput-boolean p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterInt32;->toString:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

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
    check-cast p2, Ljava/lang/Integer;
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
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32;->writeInt32(Lcom/alibaba/fastjson2/JSONWriter;I)V

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

.method public final writeInt32(Lcom/alibaba/fastjson2/JSONWriter;I)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32;->toString:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(ILjava/lang/String;)V

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 30
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
    check-cast p2, Ljava/lang/Integer;

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
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    .line 16
    return-void
.end method
