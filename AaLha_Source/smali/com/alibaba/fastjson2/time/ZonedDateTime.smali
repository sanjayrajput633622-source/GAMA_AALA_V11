.class public final Lcom/alibaba/fastjson2/time/ZonedDateTime;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

.field public final offsetSeconds:I

.field public final zone:Lcom/alibaba/fastjson2/time/ZoneId;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson2/time/LocalDateTime;ILcom/alibaba/fastjson2/time/ZoneId;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 6
    .line 7
    iput p2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->offsetSeconds:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 10
    return-void
.end method

.method private static create(JILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 2

    .line 1
    int-to-long v0, p2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/time/LocalDateTime;->ofEpochSecond(JII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    new-instance p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0, v0, p3}, Lcom/alibaba/fastjson2/time/ZonedDateTime;-><init>(Lcom/alibaba/fastjson2/time/LocalDateTime;ILcom/alibaba/fastjson2/time/ZoneId;)V

    .line 19
    return-object p1
.end method

.method public static now(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/time/Instant;->epochSecond:J

    .line 3
    .line 4
    iget p0, p0, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->create(JILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->toInstant(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/Instant;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    new-instance v1, Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;-><init>(Lcom/alibaba/fastjson2/time/LocalDateTime;ILcom/alibaba/fastjson2/time/ZoneId;)V

    .line 14
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_5

    .line 8
    .line 9
    const-class v2, Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 23
    .line 24
    if-eq v2, v3, :cond_4

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget v2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->offsetSeconds:I

    .line 35
    .line 36
    iget v3, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->offsetSeconds:I

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 43
    .line 44
    if-eq v2, v3, :cond_4

    .line 45
    .line 46
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return v1

    .line 59
    :cond_4
    :goto_0
    return v0

    .line 60
    :cond_5
    :goto_1
    return v1
.end method

.method public format(Lcom/alibaba/fastjson2/time/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->format(Lcom/alibaba/fastjson2/time/ZonedDateTime;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->offsetSeconds:I

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 11
    const/4 v3, 0x3

    .line 12
    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    aput-object v0, v3, v4

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    aput-object v1, v3, v0

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    aput-object v2, v3, v0

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public minusNanos(J)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 13
    move-object v3, v2

    .line 14
    .line 15
    iget v2, v3, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 16
    .line 17
    iget-short v4, v3, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 18
    .line 19
    add-int/lit8 v4, v4, -0x1

    .line 20
    .line 21
    iget-short v3, v3, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 22
    .line 23
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 24
    .line 25
    iget-byte v5, v0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 26
    .line 27
    iget-byte v6, v0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 28
    .line 29
    iget-byte v7, v0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 30
    move v8, v4

    .line 31
    move v4, v3

    .line 32
    move v3, v8

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 40
    .line 41
    iget v0, v0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 42
    int-to-long v2, v0

    .line 43
    add-long/2addr v2, p1

    .line 44
    long-to-int p1, v2

    .line 45
    .line 46
    .line 47
    const p2, 0xf4240

    .line 48
    div-int/2addr p1, p2

    .line 49
    .line 50
    const/16 p2, 0xe

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    move-result-wide p1

    .line 58
    .line 59
    new-instance v0, Ljava/util/Date;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/Instant;->of(Ljava/util/Date;)Lcom/alibaba/fastjson2/time/Instant;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iget-object p2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method

.method public plusDays(J)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 13
    move-object v3, v2

    .line 14
    .line 15
    iget v2, v3, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 16
    .line 17
    iget-short v4, v3, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 18
    .line 19
    add-int/lit8 v4, v4, -0x1

    .line 20
    .line 21
    iget-short v3, v3, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 22
    long-to-int p1, p1

    .line 23
    add-int/2addr v3, p1

    .line 24
    .line 25
    iget-object p1, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 26
    .line 27
    iget-byte v5, p1, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 28
    .line 29
    iget-byte v6, p1, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 30
    .line 31
    iget-byte v7, p1, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 32
    move v8, v4

    .line 33
    move v4, v3

    .line 34
    move v3, v8

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 42
    .line 43
    iget p1, p1, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 44
    .line 45
    .line 46
    const p2, 0xf4240

    .line 47
    div-int/2addr p1, p2

    .line 48
    .line 49
    const/16 p2, 0xe

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 56
    move-result-wide p1

    .line 57
    .line 58
    new-instance v0, Ljava/util/Date;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/Instant;->of(Ljava/util/Date;)Lcom/alibaba/fastjson2/time/Instant;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iget-object p2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public toEpochMilli()J
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 9
    .line 10
    sget-object v3, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 11
    .line 12
    .line 13
    const v4, 0xf4240

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    iget-object v2, v2, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "Asia/Shanghai"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    iget v6, v1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 37
    .line 38
    iget-short v2, v1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 39
    .line 40
    add-int/lit8 v7, v2, -0x1

    .line 41
    .line 42
    iget-short v8, v1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 43
    .line 44
    iget-byte v9, v0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 45
    .line 46
    iget-byte v10, v0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 47
    .line 48
    iget-byte v11, v0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    .line 52
    .line 53
    iget v0, v0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 54
    div-int/2addr v0, v4

    .line 55
    .line 56
    const/16 v1, 0xe

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 63
    move-result-wide v0

    .line 64
    return-wide v0

    .line 65
    .line 66
    :cond_1
    :goto_0
    iget v5, v1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 67
    .line 68
    iget-short v6, v1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 69
    .line 70
    iget-short v7, v1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 71
    .line 72
    iget-byte v8, v0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 73
    .line 74
    iget-byte v9, v0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 75
    .line 76
    iget-byte v10, v0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 77
    .line 78
    .line 79
    invoke-static/range {v5 .. v10}, Lcom/alibaba/fastjson2/util/DateUtils;->utcSeconds(IIIIII)J

    .line 80
    move-result-wide v1

    .line 81
    .line 82
    .line 83
    const-wide/32 v5, 0x28d2bea0

    .line 84
    .line 85
    cmp-long v3, v1, v5

    .line 86
    .line 87
    if-ltz v3, :cond_2

    .line 88
    .line 89
    const/16 v3, 0x7080

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    .line 94
    move-result v3

    .line 95
    :goto_1
    int-to-long v5, v3

    .line 96
    sub-long/2addr v1, v5

    .line 97
    .line 98
    const-wide/16 v5, 0x3e8

    .line 99
    mul-long/2addr v1, v5

    .line 100
    .line 101
    iget v0, v0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 102
    div-int/2addr v0, v4

    .line 103
    int-to-long v3, v0

    .line 104
    add-long/2addr v1, v3

    .line 105
    return-wide v1
.end method

.method public toEpochSecond()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public toInstant()Lcom/alibaba/fastjson2/time/Instant;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 12
    .line 13
    iget v2, v2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 14
    int-to-long v2, v2

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
