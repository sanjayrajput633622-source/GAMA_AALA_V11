.class final Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final raw:Z

.field final symbol:Z

.field final trim:Z


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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v8, Ljava/lang/String;

    .line 3
    const/4 v9, 0x0

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
    move-object/from16 v10, p7

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    .line 20
    move-object/from16 p1, p8

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 23
    .line 24
    const-string p1, "symbol"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->symbol:Z

    .line 31
    .line 32
    const-string p1, "trim"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->trim:Z

    .line 39
    .line 40
    const-wide/high16 p1, 0x4000000000000L

    .line 41
    and-long/2addr p1, p3

    .line 42
    .line 43
    const-wide/16 p3, 0x0

    .line 44
    .line 45
    cmp-long p1, p1, p3

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    .line 52
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->raw:Z

    .line 53
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->function:Lcom/alibaba/fastjson2/function/Function;

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
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 6
    .line 7
    .line 8
    invoke-interface {v3, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 17
    move-result-wide v5

    .line 18
    or-long/2addr v3, v5

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 23
    .line 24
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 25
    .line 26
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 27
    .line 28
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 29
    or-long/2addr v5, v7

    .line 30
    .line 31
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 32
    .line 33
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 34
    or-long/2addr v5, v7

    .line 35
    and-long/2addr v5, v3

    .line 36
    .line 37
    cmp-long v5, v5, v1

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    return v0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 44
    const/4 v5, 0x1

    .line 45
    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 49
    .line 50
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 51
    .line 52
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 53
    .line 54
    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 55
    or-long/2addr v6, v8

    .line 56
    and-long/2addr v6, v3

    .line 57
    .line 58
    cmp-long v6, v6, v1

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    const-string p2, ""

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 66
    return v5

    .line 67
    .line 68
    :cond_1
    iget-boolean v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->trim:Z

    .line 69
    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    :cond_2
    if-eqz p2, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 80
    move-result v6

    .line 81
    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 85
    .line 86
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 87
    and-long/2addr v3, v6

    .line 88
    .line 89
    cmp-long v1, v3, v1

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    return v0

    .line 93
    .line 94
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->symbol:Z

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->raw:Z

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 112
    goto :goto_0

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 116
    :goto_0
    return v5

    .line 117
    :catch_0
    move-exception p2

    .line 118
    .line 119
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 123
    move-result-wide v3

    .line 124
    .line 125
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 126
    .line 127
    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 128
    or-long/2addr v3, v5

    .line 129
    .line 130
    cmp-long p1, v3, v1

    .line 131
    .line 132
    if-eqz p1, :cond_6

    .line 133
    return v0

    .line 134
    :cond_6
    throw p2
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->trim:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->symbol:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;->raw:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 38
    return-void

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method
