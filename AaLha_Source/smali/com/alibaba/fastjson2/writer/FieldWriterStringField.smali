.class final Lcom/alibaba/fastjson2/writer/FieldWriterStringField;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 1
    .line 2
    const-class v8, Ljava/lang/String;

    .line 3
    const/4 v10, 0x0

    .line 4
    .line 5
    const-class v7, Ljava/lang/String;

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
    move-object/from16 v9, p7

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 12
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
    check-cast p2, Ljava/lang/String;

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 12
    move-result-wide v2

    .line 13
    or-long/2addr v0, v2

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 22
    .line 23
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 24
    .line 25
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 26
    .line 27
    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 28
    or-long/2addr v6, v8

    .line 29
    .line 30
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 31
    .line 32
    iget-wide v10, v10, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 33
    or-long/2addr v6, v10

    .line 34
    and-long/2addr v6, v0

    .line 35
    .line 36
    cmp-long v6, v6, v4

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 41
    .line 42
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 43
    and-long/2addr v6, v0

    .line 44
    .line 45
    cmp-long v6, v6, v4

    .line 46
    .line 47
    if-eqz v6, :cond_0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    or-long v6, v8, v10

    .line 51
    and-long/2addr v6, v0

    .line 52
    .line 53
    cmp-long v6, v6, v4

    .line 54
    .line 55
    if-eqz v6, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 59
    .line 60
    const-string p2, ""

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 64
    return v3

    .line 65
    :cond_1
    :goto_0
    return v2

    .line 66
    .line 67
    :cond_2
    iget-boolean v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->trim:Z

    .line 68
    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    :cond_3
    if-eqz p2, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 79
    move-result v6

    .line 80
    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 84
    .line 85
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 86
    and-long/2addr v0, v6

    .line 87
    .line 88
    cmp-long v0, v0, v4

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    return v2

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 95
    .line 96
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->symbol:Z

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :cond_5
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->raw:Z

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 114
    goto :goto_1

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 118
    :goto_1
    return v3
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 1
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
    check-cast p2, Ljava/lang/String;

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
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->trim:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->raw:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 28
    return-void

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 32
    return-void
.end method
