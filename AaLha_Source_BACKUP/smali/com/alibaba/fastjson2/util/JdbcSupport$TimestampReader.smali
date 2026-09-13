.class public final Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JdbcSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampReader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    return-void
.end method


# virtual methods
.method public createTimestamp(JI)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/sql/Timestamp;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p3}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 11
    :cond_0
    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 10
    move-result-wide p1

    .line 11
    .line 12
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    const-wide/16 p3, 0x3e8

    .line 17
    mul-long/2addr p1, p3

    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->createTimestamp(JI)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    const/4 p1, 0x0

    .line 31
    return-object p1

    .line 32
    :cond_2
    move-object v0, p0

    .line 33
    move-object v1, p1

    .line 34
    move-object v2, p2

    .line 35
    move-object v3, p3

    .line 36
    move-wide v4, p4

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 11
    move-result-wide p1

    .line 12
    .line 13
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    const-wide/16 p4, 0x3e8

    .line 18
    mul-long/2addr p1, p4

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->createTimestamp(JI)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 27
    move-result p2

    .line 28
    const/4 p4, 0x0

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    return-object p4

    .line 32
    .line 33
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p2, :cond_6

    .line 36
    .line 37
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    .line 38
    .line 39
    if-nez p2, :cond_6

    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 52
    move-result p5

    .line 53
    .line 54
    if-eqz p5, :cond_4

    .line 55
    return-object p4

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 59
    move-result-object p4

    .line 60
    .line 61
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasHour:Z

    .line 62
    .line 63
    if-nez p5, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, p2}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    sget-object p3, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toInstant()Lcom/alibaba/fastjson2/time/Instant;

    .line 87
    move-result-object p1

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 92
    move-result p4

    .line 93
    .line 94
    .line 95
    invoke-static {p2, p3, p4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime(Ljava/lang/String;II)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->toInstant(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/Instant;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/Instant;->toEpochMilli()J

    .line 110
    move-result-wide p2

    .line 111
    .line 112
    iget p1, p1, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p2, p3, p1}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->createTimestamp(JI)Ljava/lang/Object;

    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    if-eqz p2, :cond_7

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->toTimestamp()Ljava/sql/Timestamp;

    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    .line 132
    move-result p2

    .line 133
    .line 134
    if-eqz p2, :cond_8

    .line 135
    return-object p4

    .line 136
    .line 137
    .line 138
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    .line 139
    move-result-wide p2

    .line 140
    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .line 143
    cmp-long p5, p2, v0

    .line 144
    .line 145
    if-nez p5, :cond_9

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    .line 149
    move-result p1

    .line 150
    .line 151
    if-eqz p1, :cond_9

    .line 152
    return-object p4

    .line 153
    .line 154
    :cond_9
    new-instance p1, Ljava/sql/Timestamp;

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 158
    return-object p1
.end method
