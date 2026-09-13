.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

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

.method public static of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 11
    return-object v0
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/d;->a(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->b(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->c(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->d(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->e(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->f(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->h(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->k(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->l(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getBuildFunction()Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->m(Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getFeatures()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->n(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->o(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->p(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->q(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/util/Calendar;

    .line 3
    return-object v0
.end method

.method public synthetic getTypeKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->s(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTypeKeyHash()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->t(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->u(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->v(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    const-wide/16 p3, 0x3e8

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 12
    move-result-wide p1

    .line 13
    .line 14
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    mul-long/2addr p1, p3

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 25
    return-object p3

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    .line 29
    move-result p2

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    .line 37
    move-result-wide p1

    .line 38
    .line 39
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 40
    .line 41
    if-eqz p5, :cond_3

    .line 42
    mul-long/2addr p1, p3

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    return-object p3
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->x(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->y(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9

    .line 4
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->useSimpleFormatter:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :try_start_0
    new-instance p3, Ljava/text/SimpleDateFormat;

    iget-object p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    invoke-direct {p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p3, v0

    .line 7
    new-instance p4, Lcom/alibaba/fastjson2/JSONException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse error : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    return-object p3

    .line 9
    :cond_1
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    const-wide/16 p4, 0x3e8

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    if-eqz p2, :cond_3

    :cond_2
    move-object v3, p1

    goto/16 :goto_6

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_15

    .line 11
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmmss19:Z

    if-eqz p2, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    move-result-wide v3

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillis19()J

    move-result-wide v3

    :goto_0
    cmp-long p2, v3, v1

    if-nez p2, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p1

    goto/16 :goto_4

    .line 17
    :cond_6
    :goto_1
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1

    .line 19
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->getDateFormatter(Ljava/util/Locale;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 20
    iget-boolean v3, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v3

    if-nez v3, :cond_8

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readCalendar()Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 22
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_3

    .line 24
    :cond_9
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasHour:Z

    const/16 v5, 0x13

    if-nez v4, :cond_d

    .line 25
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasDay:Z

    if-nez v4, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseDate(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 27
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_b

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 28
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {v3, v0, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime(Ljava/lang/String;II)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p2

    goto :goto_2

    .line 30
    :cond_b
    iget-object p3, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    const/16 p4, 0x2d

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    const/4 p5, -0x1

    if-eq p3, p5, :cond_c

    invoke-virtual {v3, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne p3, p5, :cond_c

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInteger(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 31
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 32
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 33
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1

    .line 34
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseDate(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;

    move-result-object p2

    .line 35
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1

    .line 37
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v5, :cond_10

    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmm16:Z

    if-nez p2, :cond_e

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 38
    :cond_e
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmm16:Z

    if-eqz p2, :cond_f

    const/16 v5, 0x10

    .line 39
    :cond_f
    invoke-static {v3, v0, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime(Ljava/lang/String;II)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p2

    .line 40
    :goto_2
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p1

    goto :goto_4

    .line 41
    :cond_10
    :try_start_1
    new-instance p2, Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 42
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 44
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "parse format \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_11
    :goto_3
    return-object p3

    .line 45
    :cond_12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p1

    :goto_4
    if-nez p1, :cond_13

    return-object p3

    .line 46
    :cond_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p2

    .line 47
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget p1, p1, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    cmp-long v0, p2, v1

    const v1, 0xf4240

    if-gez v0, :cond_14

    if-lez p1, :cond_14

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    mul-long/2addr p2, p4

    .line 48
    div-int/2addr p1, v1

    add-int/lit16 p1, p1, -0x3e8

    :goto_5
    int-to-long p4, p1

    add-long/2addr p2, p4

    goto :goto_7

    :cond_14
    mul-long/2addr p2, p4

    .line 49
    div-int/2addr p1, v1

    goto :goto_5

    .line 50
    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result p2

    if-eqz p2, :cond_17

    const/16 v7, 0x6c

    const/16 v8, 0x22

    const/16 v4, 0x22

    const/16 v5, 0x76

    const/16 v6, 0x61

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCC)Z

    move-result p1

    if-eqz p1, :cond_18

    const/16 p1, 0x3a

    .line 51
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 52
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide p1

    .line 53
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 54
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    cmp-long p4, p1, v1

    if-nez p4, :cond_16

    .line 55
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    move-result p4

    if-eqz p4, :cond_16

    return-object p3

    :cond_16
    move-wide p2, p1

    goto :goto_7

    :cond_17
    move-object v3, p1

    .line 56
    :cond_18
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->readCalendar()Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 57
    :goto_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide p2

    .line 58
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    if-eqz p1, :cond_19

    mul-long/2addr p2, p4

    .line 59
    :cond_19
    :goto_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method public varargs synthetic readObject(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->z(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->A(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
