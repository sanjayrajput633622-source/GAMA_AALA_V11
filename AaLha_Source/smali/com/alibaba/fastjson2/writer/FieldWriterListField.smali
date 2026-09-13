.class final Lcom/alibaba/fastjson2/writer/FieldWriterListField;
.super Lcom/alibaba/fastjson2/writer/FieldWriterList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterList<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v11, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    .line 6
    move/from16 v3, p3

    .line 7
    .line 8
    move-wide/from16 v4, p4

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    move-object/from16 v10, p10

    .line 19
    .line 20
    move-object/from16 v12, p11

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/FieldWriterList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 24
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 8
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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    .line 17
    move-result-wide v4

    .line 18
    or-long/2addr v2, v4

    .line 19
    .line 20
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 21
    .line 22
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 23
    .line 24
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 25
    .line 26
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 27
    or-long/2addr v4, v6

    .line 28
    .line 29
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 30
    .line 31
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 32
    or-long/2addr v4, v6

    .line 33
    and-long/2addr v4, v2

    .line 34
    .line 35
    const-wide/16 v6, 0x0

    .line 36
    .line 37
    cmp-long p2, v4, v6

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull(J)V

    .line 46
    return v1

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 64
    return v1

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 67
    .line 68
    const-class v2, Ljava/lang/String;

    .line 69
    .line 70
    if-ne v0, v2, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeListStr(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p0, p1, v1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeList(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 81
    return v1
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
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/util/List;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeList(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 43
    :cond_2
    return-void
.end method
