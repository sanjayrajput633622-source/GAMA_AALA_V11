.class public final Lcom/alibaba/fastjson2/util/JdbcSupport$DateReader;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JdbcSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DateReader"
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
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/util/JdbcSupport$DateReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
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
    :cond_0
    new-instance p3, Ljava/sql/Date;

    .line 20
    .line 21
    .line 22
    invoke-direct {p3, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 23
    return-object p3

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    .line 27
    move-result p2

    .line 28
    const/4 p5, 0x0

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    return-object p5

    .line 32
    .line 33
    :cond_2
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 39
    move-result p2

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 49
    move-result-wide p1

    .line 50
    mul-long/2addr p1, p3

    .line 51
    .line 52
    new-instance p3, Ljava/sql/Date;

    .line 53
    .line 54
    .line 55
    invoke-direct {p3, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 56
    return-object p3

    .line 57
    .line 58
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p2, :cond_7

    .line 61
    .line 62
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    .line 63
    .line 64
    if-nez p2, :cond_7

    .line 65
    .line 66
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 77
    move-result p3

    .line 78
    .line 79
    if-eqz p3, :cond_5

    .line 80
    return-object p5

    .line 81
    .line 82
    .line 83
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 84
    move-result-object p3

    .line 85
    .line 86
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasHour:Z

    .line 87
    .line 88
    if-nez p4, :cond_6

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    sget-object p3, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 95
    .line 96
    .line 97
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toInstant()Lcom/alibaba/fastjson2/time/Instant;

    .line 112
    move-result-object p1

    .line 113
    goto :goto_0

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toInstant()Lcom/alibaba/fastjson2/time/Instant;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    :goto_0
    new-instance p2, Ljava/sql/Date;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/Instant;->toEpochMilli()J

    .line 137
    move-result-wide p3

    .line 138
    .line 139
    .line 140
    invoke-direct {p2, p3, p4}, Ljava/sql/Date;-><init>(J)V

    .line 141
    return-object p2

    .line 142
    .line 143
    .line 144
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->toInstant(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/Instant;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    new-instance p2, Ljava/sql/Date;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/Instant;->toEpochMilli()J

    .line 161
    move-result-wide p3

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, p3, p4}, Ljava/sql/Date;-><init>(J)V

    .line 165
    return-object p2

    .line 166
    .line 167
    .line 168
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    .line 169
    move-result p2

    .line 170
    .line 171
    if-eqz p2, :cond_9

    .line 172
    return-object p5

    .line 173
    .line 174
    .line 175
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    .line 176
    move-result-wide p2

    .line 177
    .line 178
    const-wide/16 v0, 0x0

    .line 179
    .line 180
    cmp-long p4, p2, v0

    .line 181
    .line 182
    if-nez p4, :cond_a

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    .line 186
    move-result p1

    .line 187
    .line 188
    if-eqz p1, :cond_a

    .line 189
    return-object p5

    .line 190
    .line 191
    :cond_a
    new-instance p1, Ljava/sql/Date;

    .line 192
    .line 193
    .line 194
    invoke-direct {p1, p2, p3}, Ljava/sql/Date;-><init>(J)V

    .line 195
    return-object p1
.end method
