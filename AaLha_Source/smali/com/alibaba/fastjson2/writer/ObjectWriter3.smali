.class public Lcom/alibaba/fastjson2/writer/ObjectWriter3;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 4
    move-object p1, p0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 12
    .line 13
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 14
    const/4 p2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 21
    .line 22
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 23
    const/4 p2, 0x2

    .line 24
    .line 25
    .line 26
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 30
    .line 31
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 32
    return-void
.end method


# virtual methods
.method public final getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 3
    .line 4
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 5
    .line 6
    cmp-long v1, p1, v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 12
    .line 13
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 14
    .line 15
    cmp-long v1, p1, v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 21
    .line 22
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 23
    .line 24
    cmp-long p1, p1, v1

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    return-object v0

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    .line 1
    .line 2
    move-wide/from16 v2, p5

    .line 3
    .line 4
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 5
    or-long/2addr v4, v2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 9
    move-result-wide v6

    .line 10
    or-long/2addr v4, v6

    .line 11
    .line 12
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    and-long/2addr v6, v4

    .line 16
    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    cmp-long v6, v6, v8

    .line 20
    .line 21
    if-eqz v6, :cond_0

    .line 22
    const/4 v6, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v6, 0x0

    .line 25
    .line 26
    :goto_0
    iget-boolean v7, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 27
    .line 28
    if-eqz v7, :cond_2

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 34
    return-void

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 38
    return-void

    .line 39
    .line 40
    :cond_2
    if-eqz v6, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 44
    return-void

    .line 45
    .line 46
    :cond_3
    iget-boolean v6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    .line 47
    .line 48
    if-nez v6, :cond_5

    .line 49
    .line 50
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 51
    .line 52
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 53
    and-long/2addr v6, v4

    .line 54
    .line 55
    cmp-long v6, v6, v8

    .line 56
    .line 57
    if-eqz v6, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    .line 61
    return-void

    .line 62
    .line 63
    :cond_4
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 64
    .line 65
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 66
    and-long/2addr v4, v6

    .line 67
    .line 68
    cmp-long v4, v4, v8

    .line 69
    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 74
    return-void

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 78
    move-result v4

    .line 79
    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    const-wide/16 v5, 0x0

    .line 83
    move-object v0, p0

    .line 84
    move-object v1, p1

    .line 85
    move-object v2, p2

    .line 86
    move-object v3, p3

    .line 87
    .line 88
    move-object/from16 v4, p4

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 92
    return-void

    .line 93
    .line 94
    .line 95
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 96
    .line 97
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 98
    or-long/2addr v5, v2

    .line 99
    .line 100
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 101
    .line 102
    iget-wide v10, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 103
    and-long/2addr v5, v10

    .line 104
    .line 105
    cmp-long v5, v5, v8

    .line 106
    .line 107
    if-nez v5, :cond_7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    .line 111
    move-result v2

    .line 112
    .line 113
    if-eqz v2, :cond_8

    .line 114
    .line 115
    .line 116
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 117
    .line 118
    :cond_8
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 122
    .line 123
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 127
    .line 128
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter3;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 135
    return-void
.end method
