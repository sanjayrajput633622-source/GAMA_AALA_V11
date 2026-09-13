.class public final Lcom/alibaba/fastjson2/time/LocalDateTime;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final date:Lcom/alibaba/fastjson2/time/LocalDate;

.field public final time:Lcom/alibaba/fastjson2/time/LocalTime;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 8
    return-void
.end method

.method public static checkNanoOfSecond(J)V
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const-wide/32 v0, 0x3b9ac9ff

    .line 10
    .line 11
    cmp-long v0, p0, v0

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "Invalid value for year (valid values [0, 999_999_999]): "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0
.end method

.method public static checkSecondOfDay(J)V
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v0, 0x4e94914effffL

    .line 12
    .line 13
    cmp-long v0, p0, v0

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "Invalid value for year (valid values [0, 86399999999999]): "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method

.method public static checkYear(J)I
    .locals 3

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, -0x3b9ac9ff

    .line 4
    .line 5
    cmp-long v0, p0, v0

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    .line 10
    const-wide/32 v0, 0x3b9ac9ff

    .line 11
    .line 12
    cmp-long v0, p0, v0

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    long-to-int p0, p0

    .line 16
    return p0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "Invalid value for year (valid values [-999_999_999, 999_999_999]): "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method

.method public static now()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->now(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 9
    return-object v0
.end method

.method public static of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    .line 5
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/time/LocalTime;->of(III)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/alibaba/fastjson2/time/LocalDateTime;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;-><init>(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)V

    return-object p2
.end method

.method public static of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    .line 8
    invoke-static {p3, p4, p5, p6}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/alibaba/fastjson2/time/LocalDateTime;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;-><init>(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)V

    return-object p2
.end method

.method public static of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;-><init>(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "time"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "date"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofEpochSecond(JII)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    int-to-long v0, p2

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->checkNanoOfSecond(J)V

    .line 5
    int-to-long p2, p3

    .line 6
    add-long/2addr p0, p2

    .line 7
    .line 8
    .line 9
    const-wide/32 p2, 0x15180

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 13
    move-result-wide v2

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    .line 17
    move-result-wide p0

    .line 18
    long-to-int p0, p0

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/time/LocalDate;->ofEpochDay(J)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 22
    move-result-object p1

    .line 23
    int-to-long p2, p0

    .line 24
    .line 25
    .line 26
    const-wide/32 v2, 0x3b9aca00

    .line 27
    mul-long/2addr p2, v2

    .line 28
    add-long/2addr p2, v0

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/time/LocalTime;->ofNanoOfDay(J)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    new-instance p2, Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson2/time/LocalDateTime;-><init>(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)V

    .line 38
    return-object p2
.end method

.method public static ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    .line 8
    move-result p1

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/alibaba/fastjson2/time/Instant;->epochSecond:J

    .line 11
    .line 12
    iget p0, p0, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->ofEpochSecond(JII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string p1, "zone"

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    .line 27
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string p1, "instant"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
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
    const-class v2, Lcom/alibaba/fastjson2/time/LocalDateTime;

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
    check-cast p1, Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 23
    .line 24
    if-eq v2, v3, :cond_4

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/time/LocalDate;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 37
    .line 38
    if-eq v2, v3, :cond_4

    .line 39
    .line 40
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/time/LocalTime;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return v1

    .line 53
    :cond_4
    :goto_0
    return v0

    .line 54
    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    aput-object v0, v2, v3

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    aput-object v1, v2, v0

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public toDate()Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/time/LocalDateTime;->toInstant(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/Instant;->toDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toDate(Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->toInstant(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/Instant;->toDate()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public toInstant(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/Instant;
    .locals 7

    .line 1
    .line 2
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 9
    .line 10
    iget v1, p1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 11
    .line 12
    iget-short v2, p1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 13
    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 15
    .line 16
    iget-short v3, p1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 17
    .line 18
    iget-object p1, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 19
    .line 20
    iget-byte v4, p1, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 21
    .line 22
    iget-byte v5, p1, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 23
    .line 24
    iget-byte v6, p1, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    const-wide/16 v2, 0x3e8

    .line 38
    div-long/2addr v0, v2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 41
    .line 42
    iget p1, p1, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 43
    int-to-long v2, p1

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Lcom/alibaba/fastjson2/time/LocalDateTime;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toTimestamp()Ljava/sql/Timestamp;
    .locals 9

    .line 1
    .line 2
    new-instance v0, Ljava/sql/Timestamp;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 5
    .line 6
    iget v2, v1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 7
    .line 8
    add-int/lit16 v2, v2, -0x76c

    .line 9
    .line 10
    iget-short v3, v1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 11
    .line 12
    add-int/lit8 v3, v3, -0x1

    .line 13
    .line 14
    iget-short v1, v1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 15
    .line 16
    iget-object v4, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 17
    move-object v5, v4

    .line 18
    .line 19
    iget-byte v4, v5, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 20
    move-object v6, v5

    .line 21
    .line 22
    iget-byte v5, v6, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 23
    move-object v7, v6

    .line 24
    .line 25
    iget-byte v6, v7, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 26
    .line 27
    iget v7, v7, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 28
    move v8, v3

    .line 29
    move v3, v1

    .line 30
    move v1, v2

    .line 31
    move v2, v8

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v0 .. v7}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    .line 35
    return-object v0
.end method
