.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

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
    .locals 10

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 3
    :cond_0
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 4
    check-cast p2, Ljava/util/Calendar;

    .line 5
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 6
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    if-nez p4, :cond_8

    iget-object p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez p4, :cond_1

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatUnixTime()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez p4, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object p4

    .line 10
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v0

    .line 11
    invoke-static {v0, p4}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p4

    .line 12
    iget v8, p4, Lcom/alibaba/fastjson2/time/ZonedDateTime;->offsetSeconds:I

    .line 13
    iget-object v0, p4, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v1, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    if-ltz v1, :cond_6

    const/16 v0, 0x270f

    if-gt v1, v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    const v9, 0xf4240

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object p2, p4, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p3, p2, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget-short v2, p3, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 16
    iget-short v3, p3, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 17
    iget-object p2, p2, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v4, p2, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 18
    iget-byte v5, p2, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 19
    iget-byte v6, p2, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 20
    iget p2, p2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    div-int v7, p2, v9

    const/4 v9, 0x1

    move-object v0, p1

    .line 21
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_6

    .line 23
    iget-object p2, p4, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p3, p2, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget-short v2, p3, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 24
    iget-short v3, p3, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 25
    iget-object p2, p2, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v4, p2, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 26
    iget-byte v5, p2, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 27
    iget-byte v6, p2, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 28
    iget p2, p2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    if-nez p2, :cond_5

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, p1

    .line 29
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    return-void

    .line 30
    :cond_5
    div-int v7, p2, v9

    const/4 v9, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    .line 31
    :cond_6
    iget-object p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez p4, :cond_7

    .line 32
    iget-object p4, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    move-result-object p4

    .line 33
    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 36
    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

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
    .locals 0

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
    check-cast p2, Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 12
    move-result-wide p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeMillis(J)V

    .line 16
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
