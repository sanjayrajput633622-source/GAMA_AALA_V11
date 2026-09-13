.class public Lcom/alibaba/fastjson2/writer/ObjectWriter2;
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
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

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
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 23
    return-void
.end method


# virtual methods
.method public final getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 12
    .line 13
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 14
    .line 15
    cmp-long p1, p1, v1

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    return-object v0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 8

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 3
    or-long/2addr v0, p5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 7
    move-result-wide v2

    .line 8
    or-long/2addr v0, v2

    .line 9
    .line 10
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 17
    .line 18
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 19
    and-long/2addr v0, v5

    .line 20
    .line 21
    cmp-long v0, v0, v3

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 34
    .line 35
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 36
    and-long/2addr v5, v0

    .line 37
    .line 38
    cmp-long v2, v5, v3

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 44
    move-object p1, p0

    .line 45
    return-void

    .line 46
    :cond_2
    move-object v2, p1

    .line 47
    move-object p1, p0

    .line 48
    .line 49
    iget-boolean v5, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    .line 50
    .line 51
    if-nez v5, :cond_4

    .line 52
    .line 53
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 54
    .line 55
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 56
    and-long/2addr v5, v0

    .line 57
    .line 58
    cmp-long v5, v5, v3

    .line 59
    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    .line 64
    return-void

    .line 65
    .line 66
    :cond_3
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 67
    .line 68
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 69
    and-long/2addr v0, v5

    .line 70
    .line 71
    cmp-long v0, v0, v3

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 77
    return-void

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    const-wide/16 v6, 0x0

    .line 86
    move-object v1, p1

    .line 87
    move-object v3, p2

    .line 88
    move-object v4, p3

    .line 89
    move-object v5, p4

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 93
    return-void

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 97
    .line 98
    iget-wide p3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 99
    or-long/2addr p3, p5

    .line 100
    .line 101
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 102
    .line 103
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 104
    and-long/2addr p3, v0

    .line 105
    .line 106
    cmp-long p3, p3, v3

    .line 107
    .line 108
    if-nez p3, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p2, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    .line 112
    move-result p3

    .line 113
    .line 114
    if-eqz p3, :cond_7

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 118
    .line 119
    :cond_7
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, v2, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 123
    .line 124
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, v2, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 131
    return-void
.end method
