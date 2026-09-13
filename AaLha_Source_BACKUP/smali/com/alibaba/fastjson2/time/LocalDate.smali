.class public final Lcom/alibaba/fastjson2/time/LocalDate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dayOfMonth:S

.field public final monthValue:S

.field public final year:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 6
    int-to-short p1, p2

    .line 7
    .line 8
    iput-short p1, p0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 9
    int-to-short p1, p3

    .line 10
    .line 11
    iput-short p1, p0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 12
    return-void
.end method

.method private static create(III)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x1c

    .line 3
    .line 4
    if-le p2, v0, :cond_4

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    const/16 v2, 0x1d

    .line 8
    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    const/4 v0, 0x4

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    const/4 v0, 0x6

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x1f

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const/16 v0, 0x1e

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson2/time/LocalDate;->isLeapYear(I)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    move v0, v2

    .line 37
    .line 38
    :cond_2
    :goto_0
    if-le p2, v0, :cond_4

    .line 39
    .line 40
    if-ne p2, v2, :cond_3

    .line 41
    .line 42
    new-instance p1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v0, "Invalid date \'February 29\' as \'"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p0, "\' is not a leap year"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    .line 70
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v0, "Invalid date month-"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p2, "\'"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0

    .line 97
    .line 98
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/time/LocalDate;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/time/LocalDate;-><init>(III)V

    .line 102
    return-object v0
.end method

.method public static isLeapYear(I)Z
    .locals 1

    .line 1
    .line 2
    and-int/lit8 v0, p0, 0x3

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    rem-int/lit8 v0, p0, 0x64

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    rem-int/lit16 p0, p0, 0x190

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static of(III)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 1

    .line 1
    .line 2
    if-lez p1, :cond_1

    .line 3
    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    if-gt p1, v0, :cond_1

    .line 7
    .line 8
    if-lez p2, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x1f

    .line 11
    .line 12
    if-gt p2, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/time/LocalDate;->create(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v0, "Invalid value for month (valid values [1,31]): "

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 41
    .line 42
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v0, "Invalid value for month (valid values [1,12]): "

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
.end method

.method public static ofEpochDay(J)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 23

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xafa6c

    .line 4
    .line 5
    add-long v0, p0, v0

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    const-wide/16 v5, 0x1

    .line 12
    .line 13
    .line 14
    const-wide/32 v7, 0x23ab1

    .line 15
    .line 16
    const-wide/16 v9, 0x190

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    .line 21
    const-wide/32 v11, 0xafa6d

    .line 22
    .line 23
    add-long v11, p0, v11

    .line 24
    div-long/2addr v11, v7

    .line 25
    sub-long/2addr v11, v5

    .line 26
    .line 27
    mul-long v13, v11, v9

    .line 28
    neg-long v11, v11

    .line 29
    mul-long/2addr v11, v7

    .line 30
    add-long/2addr v0, v11

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-wide v13, v2

    .line 33
    .line 34
    :goto_0
    mul-long v11, v0, v9

    .line 35
    .line 36
    const-wide/16 v15, 0x24f

    .line 37
    add-long/2addr v11, v15

    .line 38
    div-long/2addr v11, v7

    .line 39
    .line 40
    const-wide/16 v7, 0x16d

    .line 41
    .line 42
    mul-long v15, v11, v7

    .line 43
    .line 44
    const-wide/16 v17, 0x4

    .line 45
    .line 46
    div-long v19, v11, v17

    .line 47
    .line 48
    add-long v15, v15, v19

    .line 49
    .line 50
    const-wide/16 v19, 0x64

    .line 51
    .line 52
    div-long v21, v11, v19

    .line 53
    .line 54
    sub-long v15, v15, v21

    .line 55
    .line 56
    div-long v21, v11, v9

    .line 57
    .line 58
    add-long v15, v15, v21

    .line 59
    .line 60
    sub-long v15, v0, v15

    .line 61
    .line 62
    cmp-long v2, v15, v2

    .line 63
    .line 64
    if-gez v2, :cond_1

    .line 65
    sub-long/2addr v11, v5

    .line 66
    mul-long/2addr v7, v11

    .line 67
    .line 68
    div-long v2, v11, v17

    .line 69
    add-long/2addr v7, v2

    .line 70
    .line 71
    div-long v2, v11, v19

    .line 72
    sub-long/2addr v7, v2

    .line 73
    .line 74
    div-long v2, v11, v9

    .line 75
    add-long/2addr v7, v2

    .line 76
    .line 77
    sub-long v15, v0, v7

    .line 78
    :cond_1
    move-wide v0, v15

    .line 79
    add-long/2addr v11, v13

    .line 80
    long-to-int v0, v0

    .line 81
    .line 82
    mul-int/lit8 v1, v0, 0x5

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x2

    .line 85
    .line 86
    div-int/lit16 v1, v1, 0x99

    .line 87
    .line 88
    add-int/lit8 v2, v1, 0x2

    .line 89
    .line 90
    rem-int/lit8 v2, v2, 0xc

    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    mul-int/lit16 v3, v1, 0x132

    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x5

    .line 97
    .line 98
    div-int/lit8 v3, v3, 0xa

    .line 99
    sub-int/2addr v0, v3

    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    div-int/lit8 v1, v1, 0xa

    .line 104
    int-to-long v3, v1

    .line 105
    add-long/2addr v11, v3

    .line 106
    .line 107
    .line 108
    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/time/LocalDateTime;->checkYear(J)I

    .line 109
    move-result v1

    .line 110
    .line 111
    new-instance v3, Lcom/alibaba/fastjson2/time/LocalDate;

    .line 112
    .line 113
    .line 114
    invoke-direct {v3, v1, v2, v0}, Lcom/alibaba/fastjson2/time/LocalDate;-><init>(III)V

    .line 115
    return-object v3
.end method


# virtual methods
.method public atStartOfDay()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 1

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 3
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

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
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const-class v2, Lcom/alibaba/fastjson2/time/LocalDate;

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
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/time/LocalDate;

    .line 19
    .line 20
    iget v2, p0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 21
    .line 22
    iget v3, p1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget-short v2, p0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 27
    .line 28
    iget-short v3, p1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget-short v2, p0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 33
    .line 34
    iget-short p1, p1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 35
    .line 36
    if-ne v2, p1, :cond_2

    .line 37
    return v0

    .line 38
    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-short v1, p0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-short v2, p0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    aput-object v0, v3, v4

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    aput-object v1, v3, v0

    .line 28
    const/4 v0, 0x2

    .line 29
    .line 30
    aput-object v2, v3, v0

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public toDate()Ljava/util/Date;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/LocalDate;->atStartOfDay()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->toInstant(Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/Instant;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/Instant;->toDate()Ljava/util/Date;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public toEpochDay()J
    .locals 13

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 3
    int-to-long v1, v0

    .line 4
    .line 5
    iget-short v3, p0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 6
    int-to-long v3, v3

    .line 7
    .line 8
    const-wide/16 v5, 0x16d

    .line 9
    mul-long/2addr v5, v1

    .line 10
    .line 11
    const-wide/16 v7, 0x0

    .line 12
    .line 13
    cmp-long v7, v1, v7

    .line 14
    .line 15
    if-ltz v7, :cond_0

    .line 16
    .line 17
    const-wide/16 v7, 0x3

    .line 18
    add-long/2addr v7, v1

    .line 19
    .line 20
    const-wide/16 v9, 0x4

    .line 21
    div-long/2addr v7, v9

    .line 22
    .line 23
    const-wide/16 v9, 0x63

    .line 24
    add-long/2addr v9, v1

    .line 25
    .line 26
    const-wide/16 v11, 0x64

    .line 27
    div-long/2addr v9, v11

    .line 28
    sub-long/2addr v7, v9

    .line 29
    .line 30
    const-wide/16 v9, 0x18f

    .line 31
    add-long/2addr v1, v9

    .line 32
    .line 33
    const-wide/16 v9, 0x190

    .line 34
    div-long/2addr v1, v9

    .line 35
    add-long/2addr v7, v1

    .line 36
    add-long/2addr v5, v7

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    const-wide/16 v7, -0x4

    .line 40
    .line 41
    div-long v7, v1, v7

    .line 42
    .line 43
    const-wide/16 v9, -0x64

    .line 44
    .line 45
    div-long v9, v1, v9

    .line 46
    sub-long/2addr v7, v9

    .line 47
    .line 48
    const-wide/16 v9, -0x190

    .line 49
    div-long/2addr v1, v9

    .line 50
    add-long/2addr v7, v1

    .line 51
    sub-long/2addr v5, v7

    .line 52
    .line 53
    :goto_0
    const-wide/16 v1, 0x16f

    .line 54
    mul-long/2addr v1, v3

    .line 55
    .line 56
    const-wide/16 v7, 0x16a

    .line 57
    sub-long/2addr v1, v7

    .line 58
    .line 59
    const-wide/16 v7, 0xc

    .line 60
    div-long/2addr v1, v7

    .line 61
    add-long/2addr v5, v1

    .line 62
    .line 63
    iget-short v1, p0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 64
    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    int-to-long v1, v1

    .line 67
    add-long/2addr v5, v1

    .line 68
    .line 69
    const-wide/16 v1, 0x2

    .line 70
    .line 71
    cmp-long v3, v3, v1

    .line 72
    .line 73
    if-lez v3, :cond_2

    .line 74
    .line 75
    const-wide/16 v3, 0x1

    .line 76
    .line 77
    sub-long v3, v5, v3

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/LocalDate;->isLeapYear(I)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-nez v0, :cond_1

    .line 84
    sub-long/2addr v5, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move-wide v5, v3

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_1
    const-wide/32 v0, 0xafaa8

    .line 90
    sub-long/2addr v5, v0

    .line 91
    return-wide v5
.end method
