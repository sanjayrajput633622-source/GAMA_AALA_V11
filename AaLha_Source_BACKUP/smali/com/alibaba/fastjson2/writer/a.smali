.class public final synthetic Lcom/alibaba/fastjson2/writer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/alibaba/fastjson2/writer/ObjectWriter;)J
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    return-wide v0
.end method

.method public static b(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static c(Lcom/alibaba/fastjson2/writer/ObjectWriter;J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static d(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 14
    move-result-wide v3

    .line 15
    .line 16
    cmp-long p1, v3, v0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    return-object v2
.end method

.method public static e(Lcom/alibaba/fastjson2/writer/ObjectWriter;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static f(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 2

    .line 1
    .line 2
    sget-object p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3
    .line 4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->hasFilter(J)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static g(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V

    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ValueFilter;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    move-object v0, p1

    .line 16
    .line 17
    check-cast v0, Lcom/alibaba/fastjson2/filter/ValueFilter;

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V

    .line 21
    .line 22
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/NameFilter;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    move-object v0, p1

    .line 26
    .line 27
    check-cast v0, Lcom/alibaba/fastjson2/filter/NameFilter;

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V

    .line 31
    .line 32
    :cond_2
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    check-cast p1, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V

    .line 40
    :cond_3
    return-void
.end method

.method public static h(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static i(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static j(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static k(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static varargs l(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONWriter;->of([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 4
    move-result-object v1

    .line 5
    const/4 v4, 0x0

    .line 6
    .line 7
    const-wide/16 v5, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    move-object p0, v0

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    goto :goto_0

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    move-object p1, v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    :cond_0
    :goto_0
    throw p0
.end method

.method public static m(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    .line 3
    const-wide/16 v5, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    .line 9
    .line 10
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 11
    return-void
.end method

.method public static n(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 19
    move-result p0

    .line 20
    const/4 p4, 0x0

    .line 21
    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 26
    move-result p0

    .line 27
    .line 28
    :goto_0
    if-ge p4, p0, :cond_9

    .line 29
    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p5

    .line 38
    .line 39
    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 43
    .line 44
    add-int/lit8 p4, p4, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    iget-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    .line 51
    move-result-object p5

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;

    .line 55
    move-result-object p6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 63
    move-result v0

    .line 64
    .line 65
    :goto_1
    if-ge p4, v0, :cond_9

    .line 66
    .line 67
    if-eqz p4, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 77
    .line 78
    if-eqz p5, :cond_4

    .line 79
    .line 80
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-interface {p5, p1, p2, v2}, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;->process(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 84
    move-result v2

    .line 85
    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 90
    goto :goto_2

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    iget-object v3, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-interface {p0, p2, v3, v2}, Lcom/alibaba/fastjson2/filter/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 102
    move-result v3

    .line 103
    .line 104
    if-nez v3, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 108
    goto :goto_2

    .line 109
    .line 110
    :cond_5
    if-eqz p6, :cond_7

    .line 111
    .line 112
    iget-object v3, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-interface {p6, p2, v3, v2}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 122
    goto :goto_2

    .line 123
    .line 124
    .line 125
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1, v3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-interface {v1, p1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 134
    goto :goto_2

    .line 135
    .line 136
    :cond_7
    if-nez v2, :cond_8

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 140
    goto :goto_2

    .line 141
    .line 142
    .line 143
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1, v3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, p1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 152
    .line 153
    :goto_2
    add-int/lit8 p4, p4, 0x1

    .line 154
    goto :goto_1

    .line 155
    .line 156
    .line 157
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 158
    return-void
.end method

.method public static o(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    .line 3
    const-wide/16 v5, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    .line 9
    .line 10
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 11
    return-void
.end method

.method public static p(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    move-result p3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 12
    const/4 p4, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge p4, p3, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p5

    .line 19
    .line 20
    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 24
    .line 25
    add-int/lit8 p4, p4, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public static q(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 4
    return-void
.end method

.method public static r(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public static s(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    .line 3
    const-wide/16 v5, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    .line 9
    .line 10
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 11
    return-void
.end method

.method public static t(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method
