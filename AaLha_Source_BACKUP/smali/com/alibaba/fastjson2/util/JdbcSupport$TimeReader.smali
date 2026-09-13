.class public final Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JdbcSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeReader"
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
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
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
    :cond_0
    new-instance p3, Ljava/sql/Time;

    .line 20
    .line 21
    .line 22
    invoke-direct {p3, p1, p2}, Ljava/sql/Time;-><init>(J)V

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
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    .line 34
    .line 35
    if-nez p2, :cond_e

    .line 36
    .line 37
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_3
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 53
    move-result-wide p1

    .line 54
    .line 55
    new-instance p5, Ljava/sql/Time;

    .line 56
    mul-long/2addr p1, p3

    .line 57
    .line 58
    .line 59
    invoke-direct {p5, p1, p2}, Ljava/sql/Time;-><init>(J)V

    .line 60
    return-object p5

    .line 61
    .line 62
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p2, :cond_9

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getLocale()Ljava/util/Locale;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->getDateFormatter(Ljava/util/Locale;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    if-eqz p2, :cond_8

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 78
    move-result-object p3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 82
    move-result p4

    .line 83
    .line 84
    if-eqz p4, :cond_5

    .line 85
    return-object p5

    .line 86
    .line 87
    :cond_5
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasHour:Z

    .line 88
    .line 89
    if-nez p4, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    sget-object p3, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 96
    .line 97
    .line 98
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 99
    move-result-object p2

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_6
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasDay:Z

    .line 103
    .line 104
    if-nez p4, :cond_7

    .line 105
    .line 106
    const/16 p4, 0x7b2

    .line 107
    const/4 p5, 0x1

    .line 108
    .line 109
    .line 110
    invoke-static {p4, p5, p5}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 111
    move-result-object p4

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    .line 118
    invoke-static {p4, p2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 119
    move-result-object p2

    .line 120
    goto :goto_0

    .line 121
    .line 122
    .line 123
    :cond_7
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    :goto_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 134
    move-result-object p1

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toInstant()Lcom/alibaba/fastjson2/time/Instant;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/Instant;->toEpochMilli()J

    .line 147
    move-result-wide p1

    .line 148
    .line 149
    new-instance p3, Ljava/sql/Time;

    .line 150
    .line 151
    .line 152
    invoke-direct {p3, p1, p2}, Ljava/sql/Time;-><init>(J)V

    .line 153
    return-object p3

    .line 154
    .line 155
    .line 156
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    const-string p2, "0000-00-00"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result p2

    .line 164
    .line 165
    if-nez p2, :cond_d

    .line 166
    .line 167
    const-string p2, "0000-00-00 00:00:00"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result p2

    .line 172
    .line 173
    if-eqz p2, :cond_a

    .line 174
    goto :goto_3

    .line 175
    .line 176
    .line 177
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 178
    move-result p2

    .line 179
    .line 180
    if-nez p2, :cond_c

    .line 181
    .line 182
    const-string p2, "null"

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result p2

    .line 187
    .line 188
    if-eqz p2, :cond_b

    .line 189
    goto :goto_2

    .line 190
    .line 191
    .line 192
    :cond_b
    invoke-static {p1}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    .line 193
    move-result-object p1

    .line 194
    return-object p1

    .line 195
    :cond_c
    :goto_2
    return-object p5

    .line 196
    .line 197
    :cond_d
    :goto_3
    new-instance p1, Ljava/sql/Time;

    .line 198
    .line 199
    const-wide/16 p2, 0x0

    .line 200
    .line 201
    .line 202
    invoke-direct {p1, p2, p3}, Ljava/sql/Time;-><init>(J)V

    .line 203
    return-object p1

    .line 204
    .line 205
    .line 206
    :cond_e
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    .line 207
    move-result-wide p1

    .line 208
    .line 209
    new-instance p3, Ljava/sql/Time;

    .line 210
    .line 211
    .line 212
    invoke-direct {p3, p1, p2}, Ljava/sql/Time;-><init>(J)V

    .line 213
    return-object p3
.end method
