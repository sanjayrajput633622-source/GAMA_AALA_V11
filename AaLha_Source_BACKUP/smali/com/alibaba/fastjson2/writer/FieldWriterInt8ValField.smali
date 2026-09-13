.class final Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValField;
.super Lcom/alibaba/fastjson2/writer/FieldWriterInt8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterInt8<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 10

    .line 1
    .line 2
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 3
    const/4 v9, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-wide v3, p3

    .line 8
    move-object v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v8, p7

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValField;->getFieldValueByte(Ljava/lang/Object;)B

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getFieldValueByte(Ljava/lang/Object;)B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)B"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "field.get error, "

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldOffset:J

    .line 7
    .line 8
    const-wide/16 v3, -0x1

    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    .line 29
    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p1

    .line 31
    .line 32
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v1

    .line 54
    .line 55
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValField;->getFieldValueByte(Ljava/lang/Object;)B

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8;->writeInt8(Lcom/alibaba/fastjson2/JSONWriter;B)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValField;->getFieldValueByte(Ljava/lang/Object;)B

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 8
    return-void
.end method
