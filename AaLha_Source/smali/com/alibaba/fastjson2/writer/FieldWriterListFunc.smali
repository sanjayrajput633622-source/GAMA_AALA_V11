.class final Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;
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


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/util/List;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v10, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v3, p2

    .line 5
    .line 6
    move-wide/from16 v4, p3

    .line 7
    .line 8
    move-object/from16 v6, p5

    .line 9
    .line 10
    move-object/from16 v7, p6

    .line 11
    .line 12
    move-object/from16 v2, p7

    .line 13
    .line 14
    move-object/from16 v11, p8

    .line 15
    .line 16
    move-object/from16 v8, p10

    .line 17
    .line 18
    move-object/from16 v9, p11

    .line 19
    .line 20
    move-object/from16 v12, p12

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/FieldWriterList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 24
    .line 25
    move-object/from16 p1, p9

    .line 26
    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 28
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 4
    .line 5
    .line 6
    invoke-interface {v1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toList(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 22
    move-result-wide v6

    .line 23
    or-long/2addr v4, v6

    .line 24
    .line 25
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 26
    .line 27
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 28
    .line 29
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 30
    .line 31
    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 32
    or-long/2addr v6, v8

    .line 33
    .line 34
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 35
    .line 36
    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 37
    or-long/2addr v6, v8

    .line 38
    and-long/2addr v6, v4

    .line 39
    .line 40
    cmp-long p2, v6, v1

    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    return v0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull(J)V

    .line 50
    return v3

    .line 51
    .line 52
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 53
    .line 54
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 55
    .line 56
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 57
    and-long/2addr v4, v6

    .line 58
    .line 59
    cmp-long v1, v4, v1

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    return v0

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 84
    return v3

    .line 85
    .line 86
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 87
    .line 88
    const-class v1, Ljava/lang/String;

    .line 89
    .line 90
    if-ne v0, v1, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1, v3, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeListStr(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V

    .line 94
    goto :goto_0

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {p0, p1, v3, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeList(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 101
    return v3

    .line 102
    :catch_0
    move-exception p2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 106
    move-result p1

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    return v0

    .line 110
    :cond_5
    throw p2
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 30
    move-object v3, v2

    .line 31
    .line 32
    :goto_0
    if-ge v1, v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    if-ne v5, v2, :cond_2

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 53
    move-result-object v3

    .line 54
    move-object v2, v5

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-interface {v3, p1, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 58
    .line 59
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 65
    move-object v0, v2

    .line 66
    .line 67
    .line 68
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 69
    move-result v3

    .line 70
    .line 71
    if-ge v1, v3, :cond_8

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 86
    goto :goto_5

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    move-result-object v4

    .line 91
    .line 92
    if-ne v4, v2, :cond_7

    .line 93
    goto :goto_4

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 97
    move-result-object v0

    .line 98
    move-object v2, v4

    .line 99
    .line 100
    .line 101
    :goto_4
    invoke-interface {v0, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 102
    .line 103
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 104
    goto :goto_3

    .line 105
    .line 106
    .line 107
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 108
    return-void
.end method
