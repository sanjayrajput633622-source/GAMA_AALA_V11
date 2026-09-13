.class public Lcom/alibaba/fastjson2/writer/ObjectWriter9;
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

.field public final fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;


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
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

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
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

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
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 32
    const/4 p2, 0x3

    .line 33
    .line 34
    .line 35
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 39
    .line 40
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 41
    const/4 p2, 0x4

    .line 42
    .line 43
    .line 44
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 48
    .line 49
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 50
    const/4 p2, 0x5

    .line 51
    .line 52
    .line 53
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 57
    .line 58
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 59
    const/4 p2, 0x6

    .line 60
    .line 61
    .line 62
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 66
    .line 67
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 68
    const/4 p2, 0x7

    .line 69
    .line 70
    .line 71
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 75
    .line 76
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 77
    .line 78
    const/16 p2, 0x8

    .line 79
    .line 80
    .line 81
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    check-cast p2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 85
    .line 86
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 87
    return-void
.end method


# virtual methods
.method public final getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 21
    .line 22
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 23
    .line 24
    cmp-long v1, p1, v1

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 30
    .line 31
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 32
    .line 33
    cmp-long v1, p1, v1

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    return-object v0

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 39
    .line 40
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 41
    .line 42
    cmp-long v1, p1, v1

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 48
    .line 49
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 50
    .line 51
    cmp-long v1, p1, v1

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    return-object v0

    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 57
    .line 58
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 59
    .line 60
    cmp-long v1, p1, v1

    .line 61
    .line 62
    if-nez v1, :cond_6

    .line 63
    return-object v0

    .line 64
    .line 65
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 66
    .line 67
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 68
    .line 69
    cmp-long v1, p1, v1

    .line 70
    .line 71
    if-nez v1, :cond_7

    .line 72
    return-object v0

    .line 73
    .line 74
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 75
    .line 76
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 77
    .line 78
    cmp-long p1, p1, v1

    .line 79
    .line 80
    if-nez p1, :cond_8

    .line 81
    return-object v0

    .line 82
    :cond_8
    const/4 p1, 0x0

    .line 83
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    .line 1
    .line 2
    move-wide/from16 v0, p5

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 5
    or-long/2addr v2, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 9
    move-result-wide v4

    .line 10
    or-long/2addr v2, v4

    .line 11
    .line 12
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    and-long/2addr v4, v2

    .line 16
    .line 17
    const-wide/16 v6, 0x0

    .line 18
    .line 19
    cmp-long v4, v4, v6

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    .line 26
    :goto_0
    iget-boolean v5, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 27
    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    if-eqz v4, :cond_1

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
    if-eqz v4, :cond_3

    .line 41
    .line 42
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 43
    .line 44
    or-long v9, v0, v2

    .line 45
    move-object v4, p0

    .line 46
    move-object v5, p1

    .line 47
    move-object v6, p2

    .line 48
    move-object v7, p3

    .line 49
    .line 50
    move-object/from16 v8, p4

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 54
    return-void

    .line 55
    .line 56
    :cond_3
    iget-boolean v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    .line 57
    .line 58
    if-nez v5, :cond_5

    .line 59
    .line 60
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 61
    .line 62
    iget-wide v8, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 63
    and-long/2addr v8, v2

    .line 64
    .line 65
    cmp-long v5, v8, v6

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    .line 71
    return-void

    .line 72
    .line 73
    :cond_4
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 74
    .line 75
    iget-wide v8, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 76
    and-long/2addr v2, v8

    .line 77
    .line 78
    cmp-long v2, v2, v6

    .line 79
    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 84
    return-void

    .line 85
    .line 86
    .line 87
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 88
    move-result v2

    .line 89
    .line 90
    if-eqz v2, :cond_6

    .line 91
    .line 92
    const-wide/16 v5, 0x0

    .line 93
    move-object v0, p0

    .line 94
    move-object v1, p1

    .line 95
    move-object v2, p2

    .line 96
    move-object v3, p3

    .line 97
    .line 98
    move-object/from16 v4, p4

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 102
    return-void

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 106
    .line 107
    iget-wide v8, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 108
    or-long/2addr v8, v0

    .line 109
    .line 110
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 111
    .line 112
    iget-wide v10, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 113
    and-long/2addr v8, v10

    .line 114
    .line 115
    cmp-long p3, v8, v6

    .line 116
    .line 117
    if-nez p3, :cond_7

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    .line 121
    move-result p3

    .line 122
    .line 123
    if-eqz p3, :cond_8

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 127
    .line 128
    :cond_8
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 132
    .line 133
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 137
    .line 138
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 142
    .line 143
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 147
    .line 148
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 152
    .line 153
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 157
    .line 158
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 162
    .line 163
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 167
    .line 168
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 175
    return-void
.end method
