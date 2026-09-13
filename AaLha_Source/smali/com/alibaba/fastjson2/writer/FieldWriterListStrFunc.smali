.class final Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;
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
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;)V
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
            "Ljava/util/List;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

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
    move-object/from16 v10, p7

    .line 12
    .line 13
    move-object/from16 v7, p9

    .line 14
    .line 15
    move-object/from16 v8, p10

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    .line 20
    move-object/from16 p1, p8

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    const-wide/16 v3, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    .line 23
    if-nez p2, :cond_1

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
    and-long/2addr v6, v1

    .line 39
    .line 40
    cmp-long p2, v6, v3

    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull(J)V

    .line 49
    return v5

    .line 50
    :cond_0
    return v0

    .line 51
    .line 52
    :cond_1
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 53
    .line 54
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 55
    and-long/2addr v1, v6

    .line 56
    .line 57
    cmp-long v1, v1, v3

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    return v0

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 70
    .line 71
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 77
    move-result v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 81
    .line 82
    :goto_0
    if-ge v0, v1, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    check-cast v2, Ljava/lang/String;

    .line 89
    .line 90
    if-nez v2, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 98
    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return v5

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 108
    move-result v1

    .line 109
    .line 110
    if-ge v0, v1, :cond_8

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    check-cast v1, Ljava/lang/String;

    .line 122
    .line 123
    if-nez v1, :cond_7

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 127
    goto :goto_3

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 131
    .line 132
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 133
    goto :goto_2

    .line 134
    .line 135
    .line 136
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 137
    return v5

    .line 138
    :catch_0
    move-exception p2

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 142
    move-result p1

    .line 143
    .line 144
    if-eqz p1, :cond_9

    .line 145
    return v0

    .line 146
    :cond_9
    throw p2
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 29
    .line 30
    :goto_0
    if-ge v1, v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 56
    move-result v0

    .line 57
    .line 58
    if-ge v1, v0, :cond_6

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    .line 71
    if-nez v0, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 75
    goto :goto_3

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 79
    .line 80
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 85
    return-void
.end method
