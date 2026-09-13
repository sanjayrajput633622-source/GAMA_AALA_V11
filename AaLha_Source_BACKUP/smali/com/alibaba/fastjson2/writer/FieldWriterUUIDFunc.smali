.class final Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/Function;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V
    .locals 11

    .line 1
    const/4 v9, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    move-object/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v10, p9

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    .line 20
    move-object/from16 p1, p10

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 23
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    move-object v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/util/UUID;

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 18
    move-result-wide v2

    .line 19
    or-long/2addr v0, v2

    .line 20
    .line 21
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 22
    .line 23
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 24
    and-long/2addr v0, v2

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 37
    return p2

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const-class v0, Ljava/util/UUID;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 57
    .line 58
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;

    .line 59
    .line 60
    if-eq v0, v1, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldClass:Ljava/lang/Class;

    .line 67
    .line 68
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 69
    move-object v1, p1

    .line 70
    .line 71
    .line 72
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move-object v1, p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeUUID(Ljava/util/UUID;)V

    .line 78
    :goto_0
    return p2
.end method
