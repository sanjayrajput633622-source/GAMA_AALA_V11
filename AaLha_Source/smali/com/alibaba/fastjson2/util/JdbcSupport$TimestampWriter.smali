.class public final Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampWriter;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JdbcSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampWriter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public synthetic getFeatures()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/a;->a(Lcom/alibaba/fastjson2/writer/ObjectWriter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->b(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->c(Lcom/alibaba/fastjson2/writer/ObjectWriter;J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->d(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldWriters()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/a;->e(Lcom/alibaba/fastjson2/writer/ObjectWriter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->f(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result p1

    return p1
.end method

.method public synthetic setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->g(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/Filter;)V

    return-void
.end method

.method public synthetic setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->h(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/NameFilter;)V

    return-void
.end method

.method public synthetic setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->i(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/PropertyFilter;)V

    return-void
.end method

.method public synthetic setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->j(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V

    return-void
.end method

.method public synthetic setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->k(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/ValueFilter;)V

    return-void
.end method

.method public varargs synthetic toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->l(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->m(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 11

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 4
    move-object v2, p2

    check-cast v2, Ljava/sql/Timestamp;

    .line 5
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatUnixTime()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v3

    .line 7
    invoke-static {v2}, Lcom/alibaba/fastjson2/time/Instant;->of(Ljava/sql/Timestamp;)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v4

    .line 8
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v5

    .line 9
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    move-result v8

    .line 10
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    const v4, 0xf4240

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v9, v4

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v3, v5, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object v6, v3, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget v7, v6, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    rem-int v9, v7, v4

    if-nez v9, :cond_2

    .line 11
    iget-object v1, v3, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v2, v1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    move v3, v2

    .line 12
    iget-short v2, v1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 13
    iget-short v1, v1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    move v9, v4

    .line 14
    iget-byte v4, v6, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 15
    iget-byte v5, v6, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 16
    iget-byte v6, v6, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 17
    div-int/2addr v7, v9

    const/4 v9, 0x1

    move v0, v3

    move v3, v1

    move v1, v0

    move-object v0, p1

    .line 18
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 20
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_8

    .line 21
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v2}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    .line 23
    iget-object v1, v5, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object v2, v1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v3, v2, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 24
    iget-short v4, v2, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 25
    iget-short v2, v2, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 26
    iget-object v5, v1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    move-object v6, v1

    move v1, v3

    move v3, v2

    move v2, v4

    iget-byte v4, v5, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 27
    iget-byte v7, v5, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 28
    iget-byte v5, v5, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 29
    rem-int v10, v0, v9

    if-nez v10, :cond_6

    .line 30
    div-int/2addr v0, v9

    const/4 v9, 0x0

    move v6, v5

    move v5, v7

    move v7, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    .line 31
    :cond_6
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDateTime(Lcom/alibaba/fastjson2/time/LocalDateTime;)V

    return-void

    .line 32
    :cond_7
    :goto_2
    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 33
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    .line 34
    :cond_8
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->format(Lcom/alibaba/fastjson2/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_9
    :goto_3
    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 37
    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public synthetic writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/a;->n(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public synthetic writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->o(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/a;->p(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    check-cast p2, Ljava/sql/Timestamp;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getTime()J

    .line 20
    move-result-wide p3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    .line 24
    move-result p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3, p4, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInstant(JI)V

    .line 28
    return-void
.end method

.method public synthetic writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->r(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result p1

    return p1
.end method

.method public synthetic writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->s(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/a;->t(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method
