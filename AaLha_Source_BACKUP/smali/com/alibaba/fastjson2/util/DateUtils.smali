.class public Lcom/alibaba/fastjson2/util/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;,
        Lcom/alibaba/fastjson2/util/DateUtils$CacheDate10;,
        Lcom/alibaba/fastjson2/util/DateUtils$CacheDate8;
    }
.end annotation


# static fields
.field static DATE_TIME_FORMATTER_34:Lcom/alibaba/fastjson2/time/DateTimeFormatter; = null

.field static DATE_TIME_FORMATTER_COOKIE:Lcom/alibaba/fastjson2/time/DateTimeFormatter; = null

.field static DATE_TIME_FORMATTER_COOKIE_LOCAL:Lcom/alibaba/fastjson2/time/DateTimeFormatter; = null

.field static DATE_TIME_FORMATTER_RFC_2822:Lcom/alibaba/fastjson2/time/DateTimeFormatter; = null

.field static final LOCAL_EPOCH_DAY:I

.field public static final MAX_VALUE:I = 0x3b9ac9ff

.field public static final MIN_VALUE:I = -0x3b9ac9ff


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 7
    .line 8
    const-wide/16 v3, 0x3e8

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 12
    move-result-wide v3

    .line 13
    .line 14
    sget-object v5, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v5

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    .line 33
    move-result v0

    .line 34
    :goto_0
    int-to-long v0, v0

    .line 35
    add-long/2addr v3, v0

    .line 36
    .line 37
    .line 38
    const-wide/32 v0, 0x15180

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 42
    move-result-wide v0

    .line 43
    long-to-int v0, v0

    .line 44
    .line 45
    sput v0, Lcom/alibaba/fastjson2/util/DateUtils;->LOCAL_EPOCH_DAY:I

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static format(III)Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(IIIIII)Ljava/lang/String;
    .locals 7

    .line 120
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;
    .locals 28

    move/from16 v0, p0

    move-object/from16 v1, p6

    .line 121
    div-int/lit16 v2, v0, 0x3e8

    add-int/lit8 v2, v2, 0x30

    .line 122
    div-int/lit8 v3, v0, 0x64

    const/16 v4, 0xa

    rem-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x30

    .line 123
    div-int/lit8 v5, v0, 0xa

    rem-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x30

    .line 124
    rem-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x30

    .line 125
    div-int/lit8 v6, p1, 0xa

    add-int/lit8 v6, v6, 0x30

    .line 126
    rem-int/lit8 v7, p1, 0xa

    add-int/lit8 v7, v7, 0x30

    .line 127
    div-int/lit8 v8, p2, 0xa

    add-int/lit8 v8, v8, 0x30

    .line 128
    rem-int/lit8 v9, p2, 0xa

    add-int/lit8 v9, v9, 0x30

    .line 129
    div-int/lit8 v10, p3, 0xa

    add-int/lit8 v10, v10, 0x30

    .line 130
    rem-int/lit8 v11, p3, 0xa

    add-int/lit8 v11, v11, 0x30

    .line 131
    div-int/lit8 v12, p4, 0xa

    add-int/lit8 v12, v12, 0x30

    .line 132
    rem-int/lit8 v13, p4, 0xa

    add-int/lit8 v13, v13, 0x30

    .line 133
    div-int/lit8 v14, p5, 0xa

    add-int/lit8 v14, v14, 0x30

    .line 134
    rem-int/lit8 v15, p5, 0xa

    add-int/lit8 v15, v15, 0x30

    move/from16 v16, v4

    const/16 v4, 0x13

    .line 135
    new-array v4, v4, [C

    move-object/from16 p0, v4

    .line 136
    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/16 v17, 0x20

    const/16 v18, 0x9

    const/16 v19, 0x8

    const/16 v20, 0x7

    const/16 v21, 0x6

    const/16 v22, 0x5

    const/16 v23, 0x4

    const/16 v24, 0x3

    const/16 v25, 0x2

    const/16 v26, 0x1

    const/16 v27, 0x0

    if-ne v1, v4, :cond_0

    int-to-char v1, v8

    .line 137
    aput-char v1, p0, v27

    int-to-char v1, v9

    .line 138
    aput-char v1, p0, v26

    const/16 v1, 0x2e

    .line 139
    aput-char v1, p0, v25

    int-to-char v4, v6

    .line 140
    aput-char v4, p0, v24

    int-to-char v4, v7

    .line 141
    aput-char v4, p0, v23

    .line 142
    aput-char v1, p0, v22

    int-to-char v1, v2

    .line 143
    aput-char v1, p0, v21

    int-to-char v1, v3

    .line 144
    aput-char v1, p0, v20

    int-to-char v1, v5

    .line 145
    aput-char v1, p0, v19

    int-to-char v0, v0

    .line 146
    aput-char v0, p0, v18

    .line 147
    aput-char v17, p0, v16

    goto :goto_2

    .line 148
    :cond_0
    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v17, 0x54

    .line 149
    :goto_0
    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-ne v1, v4, :cond_2

    const/16 v1, 0x2f

    goto :goto_1

    :cond_2
    const/16 v1, 0x2d

    :goto_1
    int-to-char v2, v2

    .line 150
    aput-char v2, p0, v27

    int-to-char v2, v3

    .line 151
    aput-char v2, p0, v26

    int-to-char v2, v5

    .line 152
    aput-char v2, p0, v25

    int-to-char v0, v0

    .line 153
    aput-char v0, p0, v24

    .line 154
    aput-char v1, p0, v23

    int-to-char v0, v6

    .line 155
    aput-char v0, p0, v22

    int-to-char v0, v7

    .line 156
    aput-char v0, p0, v21

    .line 157
    aput-char v1, p0, v20

    int-to-char v0, v8

    .line 158
    aput-char v0, p0, v19

    int-to-char v0, v9

    .line 159
    aput-char v0, p0, v18

    .line 160
    aput-char v17, p0, v16

    :goto_2
    const/16 v0, 0xb

    int-to-char v1, v10

    .line 161
    aput-char v1, p0, v0

    const/16 v0, 0xc

    int-to-char v1, v11

    .line 162
    aput-char v1, p0, v0

    const/16 v0, 0xd

    const/16 v1, 0x3a

    .line 163
    aput-char v1, p0, v0

    const/16 v0, 0xe

    int-to-char v2, v12

    .line 164
    aput-char v2, p0, v0

    const/16 v0, 0xf

    int-to-char v2, v13

    .line 165
    aput-char v2, p0, v0

    const/16 v0, 0x10

    .line 166
    aput-char v1, p0, v0

    const/16 v0, 0x11

    int-to-char v1, v14

    .line 167
    aput-char v1, p0, v0

    const/16 v0, 0x12

    int-to-char v1, v15

    .line 168
    aput-char v1, p0, v0

    .line 169
    new-instance v0, Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;
    .locals 21

    move/from16 v0, p0

    move-object/from16 v1, p3

    .line 65
    div-int/lit16 v2, v0, 0x3e8

    add-int/lit8 v2, v2, 0x30

    .line 66
    div-int/lit8 v3, v0, 0x64

    const/16 v4, 0xa

    rem-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x30

    .line 67
    div-int/lit8 v5, v0, 0xa

    rem-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x30

    .line 68
    rem-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x30

    .line 69
    div-int/lit8 v6, p1, 0xa

    add-int/lit8 v6, v6, 0x30

    .line 70
    rem-int/lit8 v7, p1, 0xa

    add-int/lit8 v7, v7, 0x30

    .line 71
    div-int/lit8 v8, p2, 0xa

    add-int/lit8 v8, v8, 0x30

    .line 72
    rem-int/lit8 v9, p2, 0xa

    add-int/lit8 v9, v9, 0x30

    .line 73
    new-array v4, v4, [C

    .line 74
    sget-object v10, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-ne v1, v10, :cond_0

    int-to-char v1, v8

    .line 75
    aput-char v1, v4, v20

    int-to-char v1, v9

    .line 76
    aput-char v1, v4, v19

    const/16 v1, 0x2e

    .line 77
    aput-char v1, v4, v18

    int-to-char v6, v6

    .line 78
    aput-char v6, v4, v17

    int-to-char v6, v7

    .line 79
    aput-char v6, v4, v16

    .line 80
    aput-char v1, v4, v15

    int-to-char v1, v2

    .line 81
    aput-char v1, v4, v14

    int-to-char v1, v3

    .line 82
    aput-char v1, v4, v13

    int-to-char v1, v5

    .line 83
    aput-char v1, v4, v12

    int-to-char v0, v0

    .line 84
    aput-char v0, v4, v11

    goto :goto_1

    .line 85
    :cond_0
    sget-object v10, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-ne v1, v10, :cond_1

    const/16 v1, 0x2d

    goto :goto_0

    :cond_1
    const/16 v1, 0x2f

    :goto_0
    int-to-char v2, v2

    .line 86
    aput-char v2, v4, v20

    int-to-char v2, v3

    .line 87
    aput-char v2, v4, v19

    int-to-char v2, v5

    .line 88
    aput-char v2, v4, v18

    int-to-char v0, v0

    .line 89
    aput-char v0, v4, v17

    .line 90
    aput-char v1, v4, v16

    int-to-char v0, v6

    .line 91
    aput-char v0, v4, v15

    int-to-char v0, v7

    .line 92
    aput-char v0, v4, v14

    .line 93
    aput-char v1, v4, v13

    int-to-char v0, v8

    .line 94
    aput-char v0, v4, v12

    int-to-char v0, v9

    .line 95
    aput-char v0, v4, v11

    .line 96
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;
    .locals 26

    move-object/from16 v6, p2

    .line 97
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    const-wide/16 v1, 0x3e8

    move-wide/from16 v3, p0

    .line 98
    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v1

    .line 99
    sget-object v5, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v3

    .line 102
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    move-result v0

    :goto_0
    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    .line 103
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v7

    .line 104
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/32 v1, 0xafa6c

    add-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v5, :cond_1

    const-wide/32 v15, 0xafa6d

    add-long/2addr v7, v15

    .line 105
    div-long/2addr v7, v11

    sub-long/2addr v7, v9

    mul-long v15, v7, v13

    neg-long v7, v7

    mul-long/2addr v7, v11

    add-long/2addr v1, v7

    goto :goto_1

    :cond_1
    move-wide v15, v3

    :goto_1
    mul-long v7, v1, v13

    const-wide/16 v17, 0x24f

    add-long v7, v7, v17

    .line 106
    div-long/2addr v7, v11

    const-wide/16 v11, 0x16d

    mul-long v17, v7, v11

    const-wide/16 v19, 0x4

    .line 107
    div-long v21, v7, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v7, v21

    sub-long v17, v17, v23

    div-long v23, v7, v13

    add-long v17, v17, v23

    sub-long v17, v1, v17

    cmp-long v5, v17, v3

    if-gez v5, :cond_2

    sub-long/2addr v7, v9

    mul-long/2addr v11, v7

    .line 108
    div-long v9, v7, v19

    add-long/2addr v11, v9

    div-long v9, v7, v21

    sub-long/2addr v11, v9

    div-long v9, v7, v13

    add-long/2addr v11, v9

    sub-long v17, v1, v11

    :cond_2
    move-wide/from16 v1, v17

    add-long/2addr v7, v15

    long-to-int v1, v1

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x2

    .line 109
    div-int/lit16 v2, v2, 0x99

    add-int/lit8 v5, v2, 0x2

    .line 110
    rem-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v9, v2, 0x132

    add-int/lit8 v9, v9, 0x5

    .line 111
    div-int/lit8 v9, v9, 0xa

    sub-int/2addr v1, v9

    add-int/lit8 v1, v1, 0x1

    .line 112
    div-int/lit8 v2, v2, 0xa

    int-to-long v9, v2

    add-long/2addr v7, v9

    const-wide/32 v9, -0x3b9ac9ff

    cmp-long v2, v7, v9

    if-ltz v2, :cond_6

    const-wide/32 v9, 0x3b9ac9ff

    cmp-long v2, v7, v9

    if-gtz v2, :cond_6

    long-to-int v2, v7

    .line 113
    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-ne v6, v7, :cond_4

    :cond_3
    move v0, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    :cond_4
    int-to-long v7, v0

    cmp-long v0, v7, v3

    if-ltz v0, :cond_5

    const-wide/32 v3, 0x1517f

    cmp-long v0, v7, v3

    if-gtz v0, :cond_5

    const-wide/16 v3, 0xe10

    .line 114
    div-long v3, v7, v3

    long-to-int v3, v3

    mul-int/lit16 v0, v3, 0xe10

    int-to-long v9, v0

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    .line 115
    div-long v9, v7, v9

    long-to-int v4, v9

    mul-int/lit8 v0, v4, 0x3c

    int-to-long v9, v0

    sub-long/2addr v7, v9

    long-to-int v0, v7

    move/from16 v25, v5

    move v5, v0

    move v0, v2

    move v2, v1

    move/from16 v1, v25

    .line 116
    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :goto_2
    invoke-static {v0, v1, v2, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static format(Lcom/alibaba/fastjson2/time/LocalDate;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 52
    iget-short v1, p0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 53
    iget-short v2, p0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "dd.MM.yyyy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_1
    const-string v3, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_2
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_3
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "yyyy/MM/dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_5
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_6
    const-string v3, "yyyyMMdd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_7
    const-string v3, "yyyy-MMM-dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 55
    invoke-static {p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->format(Lcom/alibaba/fastjson2/time/LocalDate;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 v5, 0x0

    .line 58
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 v5, 0x0

    .line 59
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :pswitch_3
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :pswitch_4
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :pswitch_5
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD8(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :pswitch_6
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD11(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x272c0433 -> :sswitch_7
        -0x10781ba0 -> :sswitch_6
        -0x985fe00 -> :sswitch_5
        -0x61c4540 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static format(Lcom/alibaba/fastjson2/time/LocalDateTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v1, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 33
    iget-short v2, v0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 34
    iget-short v3, v0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dd.MM.yyyy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "yyyy-M-dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "yyyy/MM/dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "yyyy-MMM-dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 36
    invoke-static {p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->format(Lcom/alibaba/fastjson2/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v1, v2, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_1
    iget-object p0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v4, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 40
    iget-byte v5, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 41
    iget-byte v6, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 42
    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_2
    iget-object p0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v4, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 44
    iget-byte v5, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 45
    iget-byte v6, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 46
    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :pswitch_3
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD9(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 48
    :pswitch_4
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v1, v2, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :pswitch_5
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v1, v2, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :pswitch_6
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD11(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x272c0433 -> :sswitch_7
        -0x985fe00 -> :sswitch_6
        -0x61c4540 -> :sswitch_5
        -0x4f1693 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static format(Lcom/alibaba/fastjson2/time/ZonedDateTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v1, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 14
    iget-short v2, v0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 15
    iget-short v3, v0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dd.MM.yyyy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "yyyy/MM/dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "yyyyMMdd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "yyyy-MMM-dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 17
    invoke-static {p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->format(Lcom/alibaba/fastjson2/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v1, v2, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v4, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 21
    iget-byte v5, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 22
    iget-byte v6, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 23
    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_2
    iget-object p0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v4, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 25
    iget-byte v5, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 26
    iget-byte v6, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 27
    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :pswitch_3
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v1, v2, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_4
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v1, v2, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_5
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD8(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_6
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD11(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x272c0433 -> :sswitch_7
        -0x10781ba0 -> :sswitch_6
        -0x985fe00 -> :sswitch_5
        -0x61c4540 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dd.MM.yyyy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "yyyy/MM/dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "yyyyMMdd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD10(JLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD8(JLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x10781ba0 -> :sswitch_7
        -0x985fe00 -> :sswitch_6
        -0x61c4540 -> :sswitch_5
        0x4f76f1a0 -> :sswitch_4
        0x534c3940 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static formatHMS6(Lcom/alibaba/fastjson2/time/LocalTime;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 7
    .line 8
    iget-byte v1, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 9
    .line 10
    aget v1, v0, v1

    .line 11
    .line 12
    shr-int/lit8 v2, v1, 0x8

    .line 13
    int-to-byte v2, v2

    .line 14
    int-to-char v2, v2

    .line 15
    int-to-byte v1, v1

    .line 16
    int-to-char v1, v1

    .line 17
    .line 18
    iget-byte v3, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 19
    .line 20
    aget v3, v0, v3

    .line 21
    .line 22
    shr-int/lit8 v4, v3, 0x8

    .line 23
    int-to-byte v4, v4

    .line 24
    int-to-char v4, v4

    .line 25
    int-to-byte v3, v3

    .line 26
    int-to-char v3, v3

    .line 27
    .line 28
    iget-byte p0, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 29
    .line 30
    aget p0, v0, p0

    .line 31
    .line 32
    shr-int/lit8 v0, p0, 0x8

    .line 33
    int-to-byte v0, v0

    .line 34
    int-to-char v0, v0

    .line 35
    int-to-byte p0, p0

    .line 36
    int-to-char p0, p0

    .line 37
    const/4 v5, 0x6

    .line 38
    .line 39
    new-array v5, v5, [C

    .line 40
    const/4 v6, 0x0

    .line 41
    .line 42
    aput-char v2, v5, v6

    .line 43
    const/4 v2, 0x1

    .line 44
    .line 45
    aput-char v1, v5, v2

    .line 46
    const/4 v1, 0x2

    .line 47
    .line 48
    aput-char v4, v5, v1

    .line 49
    const/4 v1, 0x3

    .line 50
    .line 51
    aput-char v3, v5, v1

    .line 52
    const/4 v1, 0x4

    .line 53
    .line 54
    aput-char v0, v5, v1

    .line 55
    const/4 v0, 0x5

    .line 56
    .line 57
    aput-char p0, v5, v0

    .line 58
    .line 59
    new-instance p0, Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    .line 63
    return-object p0
.end method

.method public static formatHMS8(Lcom/alibaba/fastjson2/time/LocalTime;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 7
    .line 8
    iget-byte v1, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 9
    .line 10
    aget v1, v0, v1

    .line 11
    .line 12
    shr-int/lit8 v2, v1, 0x8

    .line 13
    int-to-byte v2, v2

    .line 14
    int-to-char v2, v2

    .line 15
    int-to-byte v1, v1

    .line 16
    int-to-char v1, v1

    .line 17
    .line 18
    iget-byte v3, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 19
    .line 20
    aget v3, v0, v3

    .line 21
    .line 22
    shr-int/lit8 v4, v3, 0x8

    .line 23
    int-to-byte v4, v4

    .line 24
    int-to-char v4, v4

    .line 25
    int-to-byte v3, v3

    .line 26
    int-to-char v3, v3

    .line 27
    .line 28
    iget-byte p0, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 29
    .line 30
    aget p0, v0, p0

    .line 31
    .line 32
    shr-int/lit8 v0, p0, 0x8

    .line 33
    int-to-byte v0, v0

    .line 34
    int-to-char v0, v0

    .line 35
    int-to-byte p0, p0

    .line 36
    int-to-char p0, p0

    .line 37
    .line 38
    const/16 v5, 0x8

    .line 39
    .line 40
    new-array v5, v5, [C

    .line 41
    const/4 v6, 0x0

    .line 42
    .line 43
    aput-char v2, v5, v6

    .line 44
    const/4 v2, 0x1

    .line 45
    .line 46
    aput-char v1, v5, v2

    .line 47
    const/4 v1, 0x2

    .line 48
    .line 49
    const/16 v2, 0x3a

    .line 50
    .line 51
    aput-char v2, v5, v1

    .line 52
    const/4 v1, 0x3

    .line 53
    .line 54
    aput-char v4, v5, v1

    .line 55
    const/4 v1, 0x4

    .line 56
    .line 57
    aput-char v3, v5, v1

    .line 58
    const/4 v1, 0x5

    .line 59
    .line 60
    aput-char v2, v5, v1

    .line 61
    const/4 v1, 0x6

    .line 62
    .line 63
    aput-char v0, v5, v1

    .line 64
    const/4 v0, 0x7

    .line 65
    .line 66
    aput-char p0, v5, v0

    .line 67
    .line 68
    new-instance p0, Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    .line 72
    return-object p0
.end method

.method public static formatYMD10(JLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;
    .locals 25

    if-nez p2, :cond_0

    .line 14
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    const-wide/16 v1, 0x3e8

    move-wide/from16 v3, p0

    .line 15
    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v1

    .line 16
    sget-object v5, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v0

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    move-result v0

    :goto_1
    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    .line 20
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v0

    .line 21
    sget v2, Lcom/alibaba/fastjson2/util/DateUtils;->LOCAL_EPOCH_DAY:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x80

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 22
    sget-object v3, Lcom/alibaba/fastjson2/util/DateUtils$CacheDate10;->CACHE:[Ljava/lang/String;

    if-ltz v2, :cond_2

    .line 23
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 24
    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    const-wide/32 v4, 0xafa6c

    add-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v8, :cond_3

    const-wide/32 v15, 0xafa6d

    add-long/2addr v0, v15

    .line 25
    div-long/2addr v0, v11

    sub-long/2addr v0, v9

    mul-long v15, v0, v13

    neg-long v0, v0

    mul-long/2addr v0, v11

    add-long/2addr v4, v0

    goto :goto_2

    :cond_3
    move-wide v15, v6

    :goto_2
    mul-long v0, v4, v13

    const-wide/16 v17, 0x24f

    add-long v0, v0, v17

    .line 26
    div-long/2addr v0, v11

    const-wide/16 v11, 0x16d

    mul-long v17, v0, v11

    const-wide/16 v19, 0x4

    .line 27
    div-long v21, v0, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v0, v21

    sub-long v17, v17, v23

    div-long v23, v0, v13

    add-long v17, v17, v23

    sub-long v17, v4, v17

    cmp-long v6, v17, v6

    if-gez v6, :cond_4

    sub-long/2addr v0, v9

    mul-long/2addr v11, v0

    .line 28
    div-long v6, v0, v19

    add-long/2addr v11, v6

    div-long v6, v0, v21

    sub-long/2addr v11, v6

    div-long v6, v0, v13

    add-long/2addr v11, v6

    sub-long v17, v4, v11

    :cond_4
    move-wide/from16 v4, v17

    add-long/2addr v0, v15

    long-to-int v4, v4

    mul-int/lit8 v5, v4, 0x5

    const/4 v6, 0x2

    add-int/2addr v5, v6

    .line 29
    div-int/lit16 v5, v5, 0x99

    add-int/lit8 v7, v5, 0x2

    .line 30
    rem-int/lit8 v7, v7, 0xc

    const/4 v8, 0x1

    add-int/2addr v7, v8

    mul-int/lit16 v9, v5, 0x132

    const/4 v10, 0x5

    add-int/2addr v9, v10

    const/16 v11, 0xa

    .line 31
    div-int/2addr v9, v11

    sub-int/2addr v4, v9

    add-int/2addr v4, v8

    .line 32
    div-int/2addr v5, v11

    int-to-long v12, v5

    add-long/2addr v0, v12

    const-wide/32 v12, -0x3b9ac9ff

    cmp-long v5, v0, v12

    if-ltz v5, :cond_6

    const-wide/32 v12, 0x3b9ac9ff

    cmp-long v5, v0, v12

    if-gtz v5, :cond_6

    long-to-int v0, v0

    .line 33
    div-int/lit16 v1, v0, 0x3e8

    add-int/lit8 v1, v1, 0x30

    .line 34
    div-int/lit8 v5, v0, 0x64

    rem-int/2addr v5, v11

    add-int/lit8 v5, v5, 0x30

    .line 35
    div-int/lit8 v9, v0, 0xa

    rem-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x30

    .line 36
    rem-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x30

    .line 37
    div-int/lit8 v12, v7, 0xa

    add-int/lit8 v12, v12, 0x30

    .line 38
    rem-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x30

    .line 39
    div-int/lit8 v13, v4, 0xa

    add-int/lit8 v13, v13, 0x30

    .line 40
    rem-int/2addr v4, v11

    add-int/lit8 v4, v4, 0x30

    int-to-char v1, v1

    int-to-char v5, v5

    int-to-char v9, v9

    int-to-char v0, v0

    int-to-char v12, v12

    int-to-char v7, v7

    int-to-char v13, v13

    int-to-char v4, v4

    .line 41
    new-array v11, v11, [C

    const/4 v14, 0x0

    aput-char v1, v11, v14

    aput-char v5, v11, v8

    aput-char v9, v11, v6

    const/4 v1, 0x3

    aput-char v0, v11, v1

    const/4 v0, 0x4

    const/16 v1, 0x2d

    aput-char v1, v11, v0

    aput-char v12, v11, v10

    const/4 v0, 0x6

    aput-char v7, v11, v0

    const/4 v0, 0x7

    aput-char v1, v11, v0

    const/16 v0, 0x8

    aput-char v13, v11, v0

    const/16 v0, 0x9

    aput-char v4, v11, v0

    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([C)V

    if-ltz v2, :cond_5

    .line 43
    array-length v1, v3

    if-ge v2, v1, :cond_5

    .line 44
    aput-object v0, v3, v2

    :cond_5
    return-object v0

    .line 45
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid year "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static formatYMD10(Lcom/alibaba/fastjson2/time/LocalDate;)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 2
    iget-short v1, p0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 3
    iget-short p0, p0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 4
    div-int/lit16 v2, v0, 0x3e8

    add-int/lit8 v2, v2, 0x30

    .line 5
    div-int/lit8 v3, v0, 0x64

    const/16 v4, 0xa

    rem-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x30

    .line 6
    div-int/lit8 v5, v0, 0xa

    rem-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x30

    .line 7
    rem-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x30

    .line 8
    div-int/lit8 v6, v1, 0xa

    add-int/lit8 v6, v6, 0x30

    .line 9
    rem-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x30

    .line 10
    div-int/lit8 v7, p0, 0xa

    add-int/lit8 v7, v7, 0x30

    .line 11
    rem-int/2addr p0, v4

    add-int/lit8 p0, p0, 0x30

    int-to-char v2, v2

    int-to-char v3, v3

    int-to-char v5, v5

    int-to-char v0, v0

    int-to-char v6, v6

    int-to-char v1, v1

    int-to-char v7, v7

    int-to-char p0, p0

    .line 12
    new-array v4, v4, [C

    const/4 v8, 0x0

    aput-char v2, v4, v8

    const/4 v2, 0x1

    aput-char v3, v4, v2

    const/4 v2, 0x2

    aput-char v5, v4, v2

    const/4 v2, 0x3

    aput-char v0, v4, v2

    const/4 v0, 0x4

    const/16 v2, 0x2d

    aput-char v2, v4, v0

    const/4 v0, 0x5

    aput-char v6, v4, v0

    const/4 v0, 0x6

    aput-char v1, v4, v0

    const/4 v0, 0x7

    aput-char v2, v4, v0

    const/16 v0, 0x8

    aput-char v7, v4, v0

    const/16 v0, 0x9

    aput-char p0, v4, v0

    .line 13
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static formatYMD11(III)Ljava/lang/String;
    .locals 16

    .line 1
    .line 2
    move/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    div-int/lit16 v2, v0, 0x3e8

    .line 7
    .line 8
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 9
    .line 10
    mul-int/lit16 v4, v2, 0x3e8

    .line 11
    sub-int/2addr v0, v4

    .line 12
    .line 13
    aget v0, v3, v0

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x30

    .line 16
    int-to-byte v2, v2

    .line 17
    int-to-char v2, v2

    .line 18
    .line 19
    shr-int/lit8 v4, v0, 0x10

    .line 20
    int-to-byte v4, v4

    .line 21
    int-to-char v4, v4

    .line 22
    .line 23
    shr-int/lit8 v5, v0, 0x8

    .line 24
    int-to-byte v5, v5

    .line 25
    int-to-char v5, v5

    .line 26
    int-to-byte v0, v0

    .line 27
    int-to-char v0, v0

    .line 28
    .line 29
    const/16 v6, 0x72

    .line 30
    .line 31
    const/16 v7, 0x4d

    .line 32
    .line 33
    const/16 v8, 0x6e

    .line 34
    .line 35
    const/16 v9, 0x41

    .line 36
    .line 37
    const/16 v10, 0x70

    .line 38
    .line 39
    const/16 v11, 0x63

    .line 40
    .line 41
    const/16 v12, 0x61

    .line 42
    .line 43
    const/16 v13, 0x4a

    .line 44
    .line 45
    const/16 v14, 0x75

    .line 46
    .line 47
    const/16 v15, 0x65

    .line 48
    .line 49
    .line 50
    packed-switch v1, :pswitch_data_0

    .line 51
    .line 52
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v3, "illegal month "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0

    .line 74
    .line 75
    :pswitch_0
    const/16 v7, 0x44

    .line 76
    move v6, v11

    .line 77
    :goto_0
    move v10, v15

    .line 78
    goto :goto_3

    .line 79
    .line 80
    :pswitch_1
    const/16 v7, 0x4e

    .line 81
    .line 82
    const/16 v10, 0x6f

    .line 83
    .line 84
    const/16 v6, 0x76

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :pswitch_2
    const/16 v7, 0x4f

    .line 88
    .line 89
    const/16 v6, 0x74

    .line 90
    move v10, v11

    .line 91
    goto :goto_3

    .line 92
    .line 93
    :pswitch_3
    const/16 v7, 0x53

    .line 94
    move v6, v10

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :pswitch_4
    const/16 v6, 0x67

    .line 98
    move v7, v9

    .line 99
    :goto_1
    move v10, v14

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :pswitch_5
    const/16 v6, 0x6c

    .line 103
    :goto_2
    move v7, v13

    .line 104
    goto :goto_1

    .line 105
    :pswitch_6
    move v6, v8

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :pswitch_7
    const/16 v6, 0x79

    .line 109
    :pswitch_8
    move v10, v12

    .line 110
    goto :goto_3

    .line 111
    :pswitch_9
    move v7, v9

    .line 112
    goto :goto_3

    .line 113
    .line 114
    :pswitch_a
    const/16 v7, 0x46

    .line 115
    .line 116
    const/16 v6, 0x62

    .line 117
    goto :goto_0

    .line 118
    :pswitch_b
    move v6, v8

    .line 119
    move v10, v12

    .line 120
    move v7, v13

    .line 121
    .line 122
    :goto_3
    aget v1, v3, p2

    .line 123
    .line 124
    shr-int/lit8 v3, v1, 0x8

    .line 125
    int-to-byte v3, v3

    .line 126
    int-to-char v3, v3

    .line 127
    int-to-byte v1, v1

    .line 128
    int-to-char v1, v1

    .line 129
    .line 130
    const/16 v8, 0xb

    .line 131
    .line 132
    new-array v8, v8, [C

    .line 133
    const/4 v9, 0x0

    .line 134
    .line 135
    aput-char v2, v8, v9

    .line 136
    const/4 v2, 0x1

    .line 137
    .line 138
    aput-char v4, v8, v2

    .line 139
    const/4 v2, 0x2

    .line 140
    .line 141
    aput-char v5, v8, v2

    .line 142
    const/4 v2, 0x3

    .line 143
    .line 144
    aput-char v0, v8, v2

    .line 145
    const/4 v0, 0x4

    .line 146
    .line 147
    const/16 v2, 0x2d

    .line 148
    .line 149
    aput-char v2, v8, v0

    .line 150
    const/4 v0, 0x5

    .line 151
    .line 152
    aput-char v7, v8, v0

    .line 153
    const/4 v0, 0x6

    .line 154
    .line 155
    aput-char v10, v8, v0

    .line 156
    const/4 v0, 0x7

    .line 157
    .line 158
    aput-char v6, v8, v0

    .line 159
    .line 160
    const/16 v0, 0x8

    .line 161
    .line 162
    aput-char v2, v8, v0

    .line 163
    .line 164
    const/16 v0, 0x9

    .line 165
    .line 166
    aput-char v3, v8, v0

    .line 167
    .line 168
    const/16 v0, 0xa

    .line 169
    .line 170
    aput-char v1, v8, v0

    .line 171
    .line 172
    new-instance v0, Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    .line 176
    return-object v0

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static formatYMD8(III)Ljava/lang/String;
    .locals 7

    .line 24
    div-int/lit16 v0, p0, 0x3e8

    add-int/lit8 v0, v0, 0x30

    .line 25
    div-int/lit8 v1, p0, 0x64

    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    .line 26
    div-int/lit8 v2, p0, 0xa

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    .line 27
    rem-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x30

    .line 28
    div-int/lit8 v3, p1, 0xa

    add-int/lit8 v3, v3, 0x30

    .line 29
    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    .line 30
    div-int/lit8 v4, p2, 0xa

    add-int/lit8 v4, v4, 0x30

    .line 31
    rem-int/lit8 p2, p2, 0xa

    add-int/lit8 p2, p2, 0x30

    int-to-char v0, v0

    int-to-char v1, v1

    int-to-char v2, v2

    int-to-char p0, p0

    int-to-char v3, v3

    int-to-char p1, p1

    int-to-char v4, v4

    int-to-char p2, p2

    const/16 v5, 0x8

    .line 32
    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char v0, v5, v6

    const/4 v0, 0x1

    aput-char v1, v5, v0

    const/4 v0, 0x2

    aput-char v2, v5, v0

    const/4 v0, 0x3

    aput-char p0, v5, v0

    const/4 p0, 0x4

    aput-char v3, v5, p0

    const/4 p0, 0x5

    aput-char p1, v5, p0

    const/4 p0, 0x6

    aput-char v4, v5, p0

    const/4 p0, 0x7

    aput-char p2, v5, p0

    .line 33
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static formatYMD8(JLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;
    .locals 25

    const-wide/16 v0, 0x3e8

    move-wide/from16 v2, p0

    .line 1
    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 2
    sget-object v4, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    .line 3
    :goto_0
    sget-object v5, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v2

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v2

    .line 6
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    move-result v2

    :goto_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v0

    .line 8
    sget v2, Lcom/alibaba/fastjson2/util/DateUtils;->LOCAL_EPOCH_DAY:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x80

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 9
    sget-object v3, Lcom/alibaba/fastjson2/util/DateUtils$CacheDate8;->CACHE:[Ljava/lang/String;

    if-ltz v2, :cond_2

    .line 10
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 11
    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    const-wide/32 v4, 0xafa6c

    add-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v8, :cond_3

    const-wide/32 v15, 0xafa6d

    add-long/2addr v0, v15

    .line 12
    div-long/2addr v0, v11

    sub-long/2addr v0, v9

    mul-long v15, v0, v13

    neg-long v0, v0

    mul-long/2addr v0, v11

    add-long/2addr v4, v0

    goto :goto_2

    :cond_3
    move-wide v15, v6

    :goto_2
    mul-long v0, v4, v13

    const-wide/16 v17, 0x24f

    add-long v0, v0, v17

    .line 13
    div-long/2addr v0, v11

    const-wide/16 v11, 0x16d

    mul-long v17, v0, v11

    const-wide/16 v19, 0x4

    .line 14
    div-long v21, v0, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v0, v21

    sub-long v17, v17, v23

    div-long v23, v0, v13

    add-long v17, v17, v23

    sub-long v17, v4, v17

    cmp-long v6, v17, v6

    if-gez v6, :cond_4

    sub-long/2addr v0, v9

    mul-long/2addr v11, v0

    .line 15
    div-long v6, v0, v19

    add-long/2addr v11, v6

    div-long v6, v0, v21

    sub-long/2addr v11, v6

    div-long v6, v0, v13

    add-long/2addr v11, v6

    sub-long v17, v4, v11

    :cond_4
    move-wide/from16 v4, v17

    add-long/2addr v0, v15

    long-to-int v4, v4

    mul-int/lit8 v5, v4, 0x5

    add-int/lit8 v5, v5, 0x2

    .line 16
    div-int/lit16 v5, v5, 0x99

    add-int/lit8 v6, v5, 0x2

    .line 17
    rem-int/lit8 v6, v6, 0xc

    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v7, v5, 0x132

    add-int/lit8 v7, v7, 0x5

    .line 18
    div-int/lit8 v7, v7, 0xa

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x1

    .line 19
    div-int/lit8 v5, v5, 0xa

    int-to-long v7, v5

    add-long/2addr v0, v7

    const-wide/32 v7, -0x3b9ac9ff

    cmp-long v5, v0, v7

    if-ltz v5, :cond_6

    const-wide/32 v7, 0x3b9ac9ff

    cmp-long v5, v0, v7

    if-gtz v5, :cond_6

    long-to-int v0, v0

    .line 20
    invoke-static {v0, v6, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD8(III)Ljava/lang/String;

    move-result-object v0

    if-ltz v2, :cond_5

    .line 21
    array-length v1, v3

    if-ge v2, v1, :cond_5

    .line 22
    aput-object v0, v3, v2

    :cond_5
    return-object v0

    .line 23
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid year "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static formatYMD9(III)Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    new-array v1, v0, [C

    .line 5
    .line 6
    div-int/lit16 v2, p0, 0x3e8

    .line 7
    .line 8
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 9
    .line 10
    mul-int/lit16 v4, v2, 0x3e8

    .line 11
    sub-int/2addr p0, v4

    .line 12
    .line 13
    aget p0, v3, p0

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x30

    .line 16
    int-to-byte v2, v2

    .line 17
    int-to-char v2, v2

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    aput-char v2, v1, v4

    .line 21
    .line 22
    shr-int/lit8 v2, p0, 0x10

    .line 23
    int-to-byte v2, v2

    .line 24
    int-to-char v2, v2

    .line 25
    const/4 v5, 0x1

    .line 26
    .line 27
    aput-char v2, v1, v5

    .line 28
    .line 29
    shr-int/lit8 v2, p0, 0x8

    .line 30
    int-to-byte v2, v2

    .line 31
    int-to-char v2, v2

    .line 32
    const/4 v5, 0x2

    .line 33
    .line 34
    aput-char v2, v1, v5

    .line 35
    int-to-byte p0, p0

    .line 36
    int-to-char p0, p0

    .line 37
    const/4 v2, 0x3

    .line 38
    .line 39
    aput-char p0, v1, v2

    .line 40
    const/4 p0, 0x4

    .line 41
    .line 42
    const/16 v2, 0x2d

    .line 43
    .line 44
    aput-char v2, v1, p0

    .line 45
    const/4 p0, 0x7

    .line 46
    const/4 v6, 0x6

    .line 47
    const/4 v7, 0x5

    .line 48
    .line 49
    if-ge p1, v0, :cond_0

    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x30

    .line 52
    int-to-char p1, p1

    .line 53
    .line 54
    aput-char p1, v1, v7

    .line 55
    .line 56
    aput-char v2, v1, v6

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    aget p1, v3, p1

    .line 60
    .line 61
    shr-int/lit8 v0, p1, 0x8

    .line 62
    int-to-byte v0, v0

    .line 63
    int-to-char v0, v0

    .line 64
    .line 65
    aput-char v0, v1, v7

    .line 66
    int-to-byte p1, p1

    .line 67
    int-to-char p1, p1

    .line 68
    .line 69
    aput-char p1, v1, v6

    .line 70
    .line 71
    aput-char v2, v1, p0

    .line 72
    .line 73
    const/16 p0, 0x8

    .line 74
    .line 75
    :goto_0
    aget p1, v3, p2

    .line 76
    .line 77
    shr-int/lit8 p2, p1, 0x8

    .line 78
    int-to-byte p2, p2

    .line 79
    int-to-char p2, p2

    .line 80
    .line 81
    aput-char p2, v1, p0

    .line 82
    .line 83
    add-int/lit8 p2, p0, 0x1

    .line 84
    int-to-byte p1, p1

    .line 85
    int-to-char p1, p1

    .line 86
    .line 87
    aput-char p1, v1, p2

    .line 88
    .line 89
    new-instance p1, Ljava/lang/String;

    .line 90
    add-int/2addr p0, v5

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, v1, v4, p0}, Ljava/lang/String;-><init>([CII)V

    .line 94
    return-object p1
.end method

.method public static formatYMDHMS19(Lcom/alibaba/fastjson2/time/LocalDate;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 52
    iget-short v1, p0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 53
    iget-short v2, p0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    const/4 v5, 0x0

    .line 54
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS19(Lcom/alibaba/fastjson2/time/LocalDateTime;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v1, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 45
    iget-short v2, v0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 46
    iget-short v3, v0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 47
    iget-object p0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v4, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 48
    iget-byte v5, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 49
    iget-byte v6, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 50
    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS19(Lcom/alibaba/fastjson2/time/ZonedDateTime;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object v0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v1, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 38
    iget-short v2, v0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 39
    iget-short v3, v0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 40
    iget-object p0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v4, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 41
    iget-byte v5, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 42
    iget-byte v6, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 43
    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS19(Ljava/util/Date;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;
    .locals 24

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    if-nez p1, :cond_1

    .line 2
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    :goto_0
    const-wide/16 v3, 0x3e8

    .line 3
    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v3

    .line 4
    sget-object v5, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/32 v5, 0x28d2bea0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    const/16 v0, 0x7080

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v0

    .line 6
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    move-result v0

    :goto_1
    int-to-long v0, v0

    add-long/2addr v3, v0

    const-wide/32 v0, 0x15180

    .line 7
    invoke-static {v3, v4, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v5

    .line 8
    invoke-static {v3, v4, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/32 v1, 0xafa6c

    add-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v7, v1, v3

    const-wide/16 v8, 0x1

    const-wide/32 v10, 0x23ab1

    const-wide/16 v12, 0x190

    if-gez v7, :cond_3

    const-wide/32 v14, 0xafa6d

    add-long/2addr v5, v14

    .line 9
    div-long/2addr v5, v10

    sub-long/2addr v5, v8

    mul-long v14, v5, v12

    neg-long v5, v5

    mul-long/2addr v5, v10

    add-long/2addr v1, v5

    goto :goto_2

    :cond_3
    move-wide v14, v3

    :goto_2
    mul-long v5, v1, v12

    const-wide/16 v16, 0x24f

    add-long v5, v5, v16

    .line 10
    div-long/2addr v5, v10

    const-wide/16 v10, 0x16d

    mul-long v16, v5, v10

    const-wide/16 v18, 0x4

    .line 11
    div-long v20, v5, v18

    add-long v16, v16, v20

    const-wide/16 v20, 0x64

    div-long v22, v5, v20

    sub-long v16, v16, v22

    div-long v22, v5, v12

    add-long v16, v16, v22

    sub-long v16, v1, v16

    cmp-long v7, v16, v3

    if-gez v7, :cond_4

    sub-long/2addr v5, v8

    mul-long/2addr v10, v5

    .line 12
    div-long v7, v5, v18

    add-long/2addr v10, v7

    div-long v7, v5, v20

    sub-long/2addr v10, v7

    div-long v7, v5, v12

    add-long/2addr v10, v7

    sub-long v16, v1, v10

    :cond_4
    move-wide/from16 v1, v16

    add-long/2addr v5, v14

    long-to-int v1, v1

    mul-int/lit8 v2, v1, 0x5

    const/4 v7, 0x2

    add-int/2addr v2, v7

    .line 13
    div-int/lit16 v2, v2, 0x99

    add-int/lit8 v8, v2, 0x2

    const/16 v9, 0xc

    .line 14
    rem-int/2addr v8, v9

    const/4 v10, 0x1

    add-int/2addr v8, v10

    mul-int/lit16 v11, v2, 0x132

    const/4 v12, 0x5

    add-int/2addr v11, v12

    const/16 v13, 0xa

    .line 15
    div-int/2addr v11, v13

    sub-int/2addr v1, v11

    add-int/2addr v1, v10

    .line 16
    div-int/2addr v2, v13

    int-to-long v14, v2

    add-long/2addr v5, v14

    const-wide/32 v14, -0x3b9ac9ff

    cmp-long v2, v5, v14

    if-ltz v2, :cond_6

    const-wide/32 v14, 0x3b9ac9ff

    cmp-long v2, v5, v14

    if-gtz v2, :cond_6

    long-to-int v2, v5

    int-to-long v5, v0

    cmp-long v0, v5, v3

    if-ltz v0, :cond_5

    const-wide/32 v3, 0x1517f

    cmp-long v0, v5, v3

    if-gtz v0, :cond_5

    const-wide/16 v3, 0xe10

    .line 17
    div-long v3, v5, v3

    long-to-int v0, v3

    mul-int/lit16 v3, v0, 0xe10

    int-to-long v3, v3

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3c

    .line 18
    div-long v3, v5, v3

    long-to-int v3, v3

    mul-int/lit8 v4, v3, 0x3c

    int-to-long v14, v4

    sub-long/2addr v5, v14

    long-to-int v4, v5

    .line 19
    div-int/lit16 v5, v2, 0x3e8

    add-int/lit8 v5, v5, 0x30

    .line 20
    div-int/lit8 v6, v2, 0x64

    rem-int/2addr v6, v13

    add-int/lit8 v6, v6, 0x30

    .line 21
    div-int/lit8 v11, v2, 0xa

    rem-int/2addr v11, v13

    add-int/lit8 v11, v11, 0x30

    .line 22
    rem-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x30

    .line 23
    div-int/lit8 v14, v8, 0xa

    add-int/lit8 v14, v14, 0x30

    .line 24
    rem-int/2addr v8, v13

    add-int/lit8 v8, v8, 0x30

    .line 25
    div-int/lit8 v15, v1, 0xa

    add-int/lit8 v15, v15, 0x30

    .line 26
    rem-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x30

    .line 27
    div-int/lit8 v16, v0, 0xa

    move/from16 p0, v7

    add-int/lit8 v7, v16, 0x30

    .line 28
    rem-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x30

    .line 29
    div-int/lit8 v16, v3, 0xa

    move/from16 p1, v9

    add-int/lit8 v9, v16, 0x30

    .line 30
    rem-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    .line 31
    div-int/lit8 v16, v4, 0xa

    move/from16 v17, v10

    add-int/lit8 v10, v16, 0x30

    .line 32
    rem-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x30

    int-to-char v5, v5

    int-to-char v6, v6

    int-to-char v11, v11

    int-to-char v2, v2

    int-to-char v14, v14

    int-to-char v8, v8

    int-to-char v15, v15

    int-to-char v1, v1

    int-to-char v7, v7

    int-to-char v0, v0

    int-to-char v9, v9

    int-to-char v3, v3

    int-to-char v10, v10

    int-to-char v4, v4

    move/from16 v16, v12

    const/16 v12, 0x13

    .line 33
    new-array v12, v12, [C

    const/16 v18, 0x0

    aput-char v5, v12, v18

    aput-char v6, v12, v17

    aput-char v11, v12, p0

    const/4 v5, 0x3

    aput-char v2, v12, v5

    const/4 v2, 0x4

    const/16 v5, 0x2d

    aput-char v5, v12, v2

    aput-char v14, v12, v16

    const/4 v2, 0x6

    aput-char v8, v12, v2

    const/4 v2, 0x7

    aput-char v5, v12, v2

    const/16 v2, 0x8

    aput-char v15, v12, v2

    const/16 v2, 0x9

    aput-char v1, v12, v2

    const/16 v1, 0x20

    aput-char v1, v12, v13

    const/16 v1, 0xb

    aput-char v7, v12, v1

    aput-char v0, v12, p1

    const/16 v0, 0xd

    const/16 v1, 0x3a

    aput-char v1, v12, v0

    const/16 v0, 0xe

    aput-char v9, v12, v0

    const/16 v0, 0xf

    aput-char v3, v12, v0

    const/16 v0, 0x10

    aput-char v1, v12, v0

    const/16 v0, 0x11

    aput-char v10, v12, v0

    const/16 v0, 0x12

    aput-char v4, v12, v0

    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 35
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatYMDHMS29(Lcom/alibaba/fastjson2/time/LocalDateTime;)Ljava/lang/String;
    .locals 25

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 9
    .line 10
    iget v2, v1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 11
    .line 12
    iget-short v3, v1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 13
    .line 14
    iget-short v1, v1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 15
    .line 16
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 17
    .line 18
    iget-byte v4, v0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 19
    .line 20
    iget-byte v5, v0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 21
    .line 22
    iget-byte v6, v0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 23
    .line 24
    iget v0, v0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 25
    .line 26
    div-int/lit16 v7, v2, 0x3e8

    .line 27
    .line 28
    add-int/lit8 v7, v7, 0x30

    .line 29
    .line 30
    div-int/lit8 v8, v2, 0x64

    .line 31
    .line 32
    const/16 v9, 0xa

    .line 33
    rem-int/2addr v8, v9

    .line 34
    .line 35
    add-int/lit8 v8, v8, 0x30

    .line 36
    .line 37
    div-int/lit8 v10, v2, 0xa

    .line 38
    rem-int/2addr v10, v9

    .line 39
    .line 40
    add-int/lit8 v10, v10, 0x30

    .line 41
    rem-int/2addr v2, v9

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x30

    .line 44
    .line 45
    div-int/lit8 v11, v3, 0xa

    .line 46
    .line 47
    add-int/lit8 v11, v11, 0x30

    .line 48
    rem-int/2addr v3, v9

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x30

    .line 51
    .line 52
    div-int/lit8 v12, v1, 0xa

    .line 53
    .line 54
    add-int/lit8 v12, v12, 0x30

    .line 55
    rem-int/2addr v1, v9

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x30

    .line 58
    .line 59
    div-int/lit8 v13, v4, 0xa

    .line 60
    .line 61
    add-int/lit8 v13, v13, 0x30

    .line 62
    rem-int/2addr v4, v9

    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x30

    .line 65
    .line 66
    div-int/lit8 v14, v5, 0xa

    .line 67
    .line 68
    add-int/lit8 v14, v14, 0x30

    .line 69
    rem-int/2addr v5, v9

    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x30

    .line 72
    .line 73
    div-int/lit8 v15, v6, 0xa

    .line 74
    .line 75
    add-int/lit8 v15, v15, 0x30

    .line 76
    rem-int/2addr v6, v9

    .line 77
    .line 78
    add-int/lit8 v6, v6, 0x30

    .line 79
    int-to-char v7, v7

    .line 80
    int-to-char v8, v8

    .line 81
    int-to-char v10, v10

    .line 82
    int-to-char v2, v2

    .line 83
    int-to-char v11, v11

    .line 84
    int-to-char v3, v3

    .line 85
    int-to-char v12, v12

    .line 86
    int-to-char v1, v1

    .line 87
    int-to-char v13, v13

    .line 88
    int-to-char v4, v4

    .line 89
    int-to-char v14, v14

    .line 90
    int-to-char v5, v5

    .line 91
    int-to-char v15, v15

    .line 92
    int-to-char v6, v6

    .line 93
    .line 94
    move/from16 p0, v9

    .line 95
    .line 96
    div-int/lit16 v9, v0, 0x3e8

    .line 97
    .line 98
    move/from16 v16, v0

    .line 99
    .line 100
    div-int/lit16 v0, v9, 0x3e8

    .line 101
    .line 102
    move/from16 v17, v1

    .line 103
    .line 104
    mul-int/lit16 v1, v9, 0x3e8

    .line 105
    .line 106
    sub-int v1, v16, v1

    .line 107
    .line 108
    sget-object v16, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    .line 109
    .line 110
    move/from16 v18, v1

    .line 111
    .line 112
    aget v1, v16, v0

    .line 113
    .line 114
    move/from16 v19, v2

    .line 115
    .line 116
    shr-int/lit8 v2, v1, 0x10

    .line 117
    int-to-byte v2, v2

    .line 118
    int-to-char v2, v2

    .line 119
    .line 120
    move/from16 v20, v2

    .line 121
    .line 122
    shr-int/lit8 v2, v1, 0x8

    .line 123
    int-to-byte v2, v2

    .line 124
    int-to-char v2, v2

    .line 125
    int-to-byte v1, v1

    .line 126
    int-to-char v1, v1

    .line 127
    .line 128
    mul-int/lit16 v0, v0, 0x3e8

    .line 129
    sub-int/2addr v9, v0

    .line 130
    .line 131
    aget v0, v16, v9

    .line 132
    .line 133
    shr-int/lit8 v9, v0, 0x10

    .line 134
    int-to-byte v9, v9

    .line 135
    int-to-char v9, v9

    .line 136
    .line 137
    move/from16 v21, v1

    .line 138
    .line 139
    shr-int/lit8 v1, v0, 0x8

    .line 140
    int-to-byte v1, v1

    .line 141
    int-to-char v1, v1

    .line 142
    int-to-byte v0, v0

    .line 143
    int-to-char v0, v0

    .line 144
    .line 145
    move/from16 v22, v0

    .line 146
    .line 147
    aget v0, v16, v18

    .line 148
    .line 149
    move/from16 v16, v1

    .line 150
    .line 151
    shr-int/lit8 v1, v0, 0x10

    .line 152
    int-to-byte v1, v1

    .line 153
    int-to-char v1, v1

    .line 154
    .line 155
    move/from16 v18, v1

    .line 156
    .line 157
    shr-int/lit8 v1, v0, 0x8

    .line 158
    int-to-byte v1, v1

    .line 159
    int-to-char v1, v1

    .line 160
    int-to-byte v0, v0

    .line 161
    int-to-char v0, v0

    .line 162
    .line 163
    move/from16 v23, v0

    .line 164
    .line 165
    const/16 v0, 0x1d

    .line 166
    .line 167
    new-array v0, v0, [C

    .line 168
    .line 169
    const/16 v24, 0x0

    .line 170
    .line 171
    aput-char v7, v0, v24

    .line 172
    const/4 v7, 0x1

    .line 173
    .line 174
    aput-char v8, v0, v7

    .line 175
    const/4 v7, 0x2

    .line 176
    .line 177
    aput-char v10, v0, v7

    .line 178
    const/4 v7, 0x3

    .line 179
    .line 180
    aput-char v19, v0, v7

    .line 181
    const/4 v7, 0x4

    .line 182
    .line 183
    const/16 v8, 0x2d

    .line 184
    .line 185
    aput-char v8, v0, v7

    .line 186
    const/4 v7, 0x5

    .line 187
    .line 188
    aput-char v11, v0, v7

    .line 189
    const/4 v7, 0x6

    .line 190
    .line 191
    aput-char v3, v0, v7

    .line 192
    const/4 v3, 0x7

    .line 193
    .line 194
    aput-char v8, v0, v3

    .line 195
    .line 196
    const/16 v3, 0x8

    .line 197
    .line 198
    aput-char v12, v0, v3

    .line 199
    .line 200
    const/16 v3, 0x9

    .line 201
    .line 202
    aput-char v17, v0, v3

    .line 203
    .line 204
    const/16 v3, 0x20

    .line 205
    .line 206
    aput-char v3, v0, p0

    .line 207
    .line 208
    const/16 v3, 0xb

    .line 209
    .line 210
    aput-char v13, v0, v3

    .line 211
    .line 212
    const/16 v3, 0xc

    .line 213
    .line 214
    aput-char v4, v0, v3

    .line 215
    .line 216
    const/16 v3, 0xd

    .line 217
    .line 218
    const/16 v4, 0x3a

    .line 219
    .line 220
    aput-char v4, v0, v3

    .line 221
    .line 222
    const/16 v3, 0xe

    .line 223
    .line 224
    aput-char v14, v0, v3

    .line 225
    .line 226
    const/16 v3, 0xf

    .line 227
    .line 228
    aput-char v5, v0, v3

    .line 229
    .line 230
    const/16 v3, 0x10

    .line 231
    .line 232
    aput-char v4, v0, v3

    .line 233
    .line 234
    const/16 v3, 0x11

    .line 235
    .line 236
    aput-char v15, v0, v3

    .line 237
    .line 238
    const/16 v3, 0x12

    .line 239
    .line 240
    aput-char v6, v0, v3

    .line 241
    .line 242
    const/16 v3, 0x2e

    .line 243
    .line 244
    const/16 v4, 0x13

    .line 245
    .line 246
    aput-char v3, v0, v4

    .line 247
    .line 248
    const/16 v3, 0x14

    .line 249
    .line 250
    aput-char v20, v0, v3

    .line 251
    .line 252
    const/16 v3, 0x15

    .line 253
    .line 254
    aput-char v2, v0, v3

    .line 255
    .line 256
    const/16 v2, 0x16

    .line 257
    .line 258
    aput-char v21, v0, v2

    .line 259
    .line 260
    const/16 v2, 0x17

    .line 261
    .line 262
    aput-char v9, v0, v2

    .line 263
    .line 264
    const/16 v2, 0x18

    .line 265
    .line 266
    aput-char v16, v0, v2

    .line 267
    .line 268
    const/16 v2, 0x19

    .line 269
    .line 270
    aput-char v22, v0, v2

    .line 271
    .line 272
    const/16 v2, 0x1a

    .line 273
    .line 274
    aput-char v18, v0, v2

    .line 275
    .line 276
    const/16 v2, 0x1b

    .line 277
    .line 278
    aput-char v1, v0, v2

    .line 279
    .line 280
    const/16 v1, 0x1c

    .line 281
    .line 282
    aput-char v23, v0, v1

    .line 283
    .line 284
    new-instance v1, Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 288
    return-object v1
.end method

.method public static getShanghaiZoneOffsetTotalSeconds(J)I
    .locals 5

    const-wide/32 v0, 0x28d2bea0

    cmp-long v0, p0, v0

    const/16 v1, 0x7080

    if-ltz v0, :cond_0

    return v1

    :cond_0
    const-wide/32 v2, 0x2807c5b0

    cmp-long v0, p0, v2

    const/16 v2, 0x7e90

    if-ltz v0, :cond_1

    return v2

    :cond_1
    const-wide/32 v3, 0x26f2dca0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_2

    return v1

    :cond_2
    const-wide/32 v3, 0x2627e3b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_3

    return v2

    :cond_3
    const-wide/32 v3, 0x2512faa0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_4

    return v1

    :cond_4
    const-wide/32 v3, 0x244801b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_5

    return v2

    :cond_5
    const-wide/32 v3, 0x2329de20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_6

    return v1

    :cond_6
    const-wide/32 v3, 0x22681fb0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_7

    return v2

    :cond_7
    const-wide/32 v3, 0x2149fc20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_8

    return v1

    :cond_8
    const-wide/32 v3, 0x207f0330

    cmp-long v0, p0, v3

    if-ltz v0, :cond_9

    return v2

    :cond_9
    const-wide/32 v3, 0x1f6a1a20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_a

    return v1

    :cond_a
    const-wide/32 v3, 0x1ebad0b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_b

    return v2

    :cond_b
    const-wide/32 v3, -0x26be0480

    cmp-long v0, p0, v3

    if-ltz v0, :cond_c

    return v1

    :cond_c
    const-wide/32 v3, -0x26e18ef0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_d

    return v2

    :cond_d
    const-wide/32 v3, -0x27f91b00

    cmp-long v0, p0, v3

    if-ltz v0, :cond_e

    return v1

    :cond_e
    const-wide/32 v3, -0x28c2c270

    cmp-long v0, p0, v3

    if-ltz v0, :cond_f

    return v2

    :cond_f
    const-wide/32 v3, -0x29b2c180

    cmp-long v0, p0, v3

    if-ltz v0, :cond_10

    return v1

    :cond_10
    const-wide/32 v3, -0x2aba5f70

    cmp-long v0, p0, v3

    if-ltz v0, :cond_11

    return v2

    :cond_11
    const-wide/32 v3, -0x2bbcd380

    cmp-long v0, p0, v3

    if-ltz v0, :cond_12

    return v1

    :cond_12
    const-wide/32 v3, -0x2c7405f0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_13

    return v2

    :cond_13
    const-wide/32 v3, -0x2dc44280

    cmp-long v0, p0, v3

    if-ltz v0, :cond_14

    return v1

    :cond_14
    const-wide/32 v3, -0x34834170

    cmp-long v0, p0, v3

    if-ltz v0, :cond_15

    return v2

    :cond_15
    const-wide/32 v3, -0x34f9f680

    cmp-long v0, p0, v3

    if-ltz v0, :cond_16

    return v1

    :cond_16
    const-wide/32 v3, -0x362bc470

    cmp-long v0, p0, v3

    if-ltz v0, :cond_17

    return v2

    :cond_17
    const-wide/32 v3, -0x36f58800

    cmp-long v0, p0, v3

    if-ltz v0, :cond_18

    return v1

    :cond_18
    const-wide/32 v3, -0x37a622f0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_19

    return v2

    :cond_19
    const-wide/32 v3, -0x5e867c80

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1a

    return v1

    :cond_1a
    const-wide/32 v3, -0x5f67def0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1b

    return v2

    :cond_1b
    const-wide v2, -0x81c94b00L

    cmp-long p0, p0, v2

    if-ltz p0, :cond_1c

    return v1

    :cond_1c
    const/16 p0, 0x71d7

    return p0
.end method

.method public static getZoneId(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZoneId;
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-object p1

    .line 6
    .line 7
    :cond_0
    sget-object p0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 8
    return-object p0

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    .line 18
    sparse-switch p1, :sswitch_data_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :sswitch_0
    const-string p1, "+08:00"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v2, 0x2

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :sswitch_1
    const-string p1, "CST"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move v2, v1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :sswitch_2
    const-string p1, "000"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_4

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move v2, v0

    .line 52
    .line 53
    .line 54
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 58
    move-result p1

    .line 59
    .line 60
    const/16 v2, 0x5d

    .line 61
    .line 62
    if-lez p1, :cond_6

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 66
    move-result p1

    .line 67
    .line 68
    const/16 v0, 0x2b

    .line 69
    .line 70
    if-eq p1, v0, :cond_5

    .line 71
    .line 72
    const/16 v0, 0x2d

    .line 73
    .line 74
    if-ne p1, v0, :cond_6

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 78
    move-result p1

    .line 79
    sub-int/2addr p1, v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 83
    move-result p1

    .line 84
    .line 85
    if-eq p1, v2, :cond_6

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    .line 92
    :cond_6
    const/16 p1, 0x5b

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 96
    move-result p1

    .line 97
    .line 98
    if-lez p1, :cond_7

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    .line 102
    move-result v0

    .line 103
    .line 104
    if-lez v0, :cond_7

    .line 105
    add-int/2addr p1, v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    .line 116
    .line 117
    :cond_7
    invoke-static {p0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    .line 121
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/time/ZoneId;->OFFSET_8_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 122
    return-object p0

    .line 123
    .line 124
    :pswitch_1
    sget-object p0, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 125
    return-object p0

    .line 126
    .line 127
    :pswitch_2
    sget-object p0, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 128
    return-object p0

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    :sswitch_data_0
    .sparse-switch
        0xba30 -> :sswitch_2
        0x105e4 -> :sswitch_1
        0x4c1f1f67 -> :sswitch_0
    .end sparse-switch

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hourAfterNoon(CC)I
    .locals 5

    const/16 v0, 0x33

    const/16 v1, 0x34

    const/16 v2, 0x32

    const/16 v3, 0x31

    const/16 v4, 0x30

    if-ne p0, v4, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move p0, v2

    move p1, v3

    goto :goto_2

    :pswitch_1
    move p0, v2

    move p1, v4

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x39

    :goto_0
    move p0, v3

    goto :goto_2

    :pswitch_3
    const/16 p1, 0x38

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x37

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x36

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x35

    goto :goto_0

    :pswitch_7
    move p1, v1

    goto :goto_0

    :pswitch_8
    move p1, v0

    goto :goto_0

    :pswitch_9
    move p1, v2

    goto :goto_0

    :cond_0
    if-ne p0, v3, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_a
    move p1, v1

    :goto_1
    move p0, v2

    goto :goto_2

    :pswitch_b
    move p1, v0

    goto :goto_1

    :pswitch_c
    move p0, v2

    move p1, p0

    :cond_1
    :goto_2
    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static localDateTime(CCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    const/16 v15, 0x30

    const/16 v16, 0x0

    if-lt v0, v15, :cond_2

    const/16 v14, 0x39

    if-gt v0, v14, :cond_2

    if-lt v1, v15, :cond_2

    if-gt v1, v14, :cond_2

    if-lt v2, v15, :cond_2

    if-gt v2, v14, :cond_2

    if-lt v3, v15, :cond_2

    if-gt v3, v14, :cond_2

    sub-int/2addr v0, v15

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x30

    add-int/2addr v0, v1

    if-lt v4, v15, :cond_2

    if-gt v4, v14, :cond_2

    if-lt v5, v15, :cond_2

    if-gt v5, v14, :cond_2

    add-int/lit8 v1, v4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v5, -0x30

    add-int/2addr v1, v2

    if-lt v6, v15, :cond_2

    if-gt v6, v14, :cond_2

    if-lt v7, v15, :cond_2

    if-gt v7, v14, :cond_2

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v7, -0x30

    add-int/2addr v2, v3

    if-lt v8, v15, :cond_2

    if-gt v8, v14, :cond_2

    if-lt v9, v15, :cond_2

    if-gt v9, v14, :cond_2

    add-int/lit8 v3, v8, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v9, -0x30

    add-int/2addr v3, v4

    if-lt v10, v15, :cond_2

    if-gt v10, v14, :cond_2

    if-lt v11, v15, :cond_2

    if-gt v11, v14, :cond_2

    add-int/lit8 v4, v10, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int/2addr v4, v5

    if-lt v12, v15, :cond_2

    if-gt v12, v14, :cond_2

    if-lt v13, v15, :cond_2

    if-gt v13, v14, :cond_2

    add-int/lit8 v5, v12, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v13, -0x30

    add-int/2addr v5, v6

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    return-object v16

    :cond_0
    const/16 v6, 0x18

    if-gt v3, v6, :cond_2

    const/16 v6, 0x3c

    if-gt v4, v6, :cond_2

    if-le v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v16
.end method

.method public static localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    const/16 v16, 0x0

    const/16 v15, 0x30

    if-lt v0, v15, :cond_0

    const/16 v14, 0x39

    if-gt v0, v14, :cond_0

    if-lt v1, v15, :cond_0

    if-gt v1, v14, :cond_0

    if-lt v2, v15, :cond_0

    if-gt v2, v14, :cond_0

    if-lt v3, v15, :cond_0

    if-gt v3, v14, :cond_0

    sub-int/2addr v0, v15

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x30

    add-int/2addr v0, v1

    if-lt v4, v15, :cond_0

    if-gt v4, v14, :cond_0

    if-lt v5, v15, :cond_0

    if-gt v5, v14, :cond_0

    add-int/lit8 v1, v4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v5, -0x30

    add-int/2addr v1, v2

    if-lt v6, v15, :cond_0

    if-gt v6, v14, :cond_0

    if-lt v7, v15, :cond_0

    if-gt v7, v14, :cond_0

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v7, -0x30

    add-int/2addr v2, v3

    if-lt v8, v15, :cond_0

    if-gt v8, v14, :cond_0

    if-lt v9, v15, :cond_0

    if-gt v9, v14, :cond_0

    add-int/lit8 v3, v8, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v9, -0x30

    add-int/2addr v3, v4

    if-lt v10, v15, :cond_0

    if-gt v10, v14, :cond_0

    if-lt v11, v15, :cond_0

    if-gt v11, v14, :cond_0

    add-int/lit8 v4, v10, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int/2addr v4, v5

    if-lt v12, v15, :cond_0

    if-gt v12, v14, :cond_0

    if-lt v13, v15, :cond_0

    if-gt v13, v14, :cond_0

    add-int/lit8 v5, v12, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v13, -0x30

    add-int/2addr v5, v6

    move/from16 v6, p14

    if-lt v6, v15, :cond_0

    if-gt v6, v14, :cond_0

    move/from16 v7, p15

    if-lt v7, v15, :cond_0

    if-gt v7, v14, :cond_0

    move/from16 v8, p16

    if-lt v8, v15, :cond_0

    if-gt v8, v14, :cond_0

    move/from16 v9, p17

    if-lt v9, v15, :cond_0

    if-gt v9, v14, :cond_0

    move/from16 v10, p18

    if-lt v10, v15, :cond_0

    if-gt v10, v14, :cond_0

    move/from16 v11, p19

    if-lt v11, v15, :cond_0

    if-gt v11, v14, :cond_0

    move/from16 v12, p20

    if-lt v12, v15, :cond_0

    if-gt v12, v14, :cond_0

    move/from16 v13, p21

    if-lt v13, v15, :cond_0

    if-gt v13, v14, :cond_0

    move/from16 p0, v0

    move/from16 v0, p22

    if-lt v0, v15, :cond_0

    if-gt v0, v14, :cond_0

    sub-int/2addr v6, v15

    const v14, 0x5f5e100

    mul-int/2addr v6, v14

    sub-int/2addr v7, v15

    const v14, 0x989680

    mul-int/2addr v7, v14

    add-int/2addr v6, v7

    add-int/lit8 v7, v8, -0x30

    const v8, 0xf4240

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v9, -0x30

    const v8, 0x186a0

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v10, -0x30

    mul-int/lit16 v7, v7, 0x2710

    add-int/2addr v6, v7

    add-int/lit8 v7, v11, -0x30

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    add-int/lit8 v7, v12, -0x30

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    add-int/lit8 v7, v13, -0x30

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    sub-int/2addr v0, v15

    add-int/2addr v6, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    .line 2
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v16
.end method

.method public static millis(Lcom/alibaba/fastjson2/time/LocalDateTime;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v2, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    iget-short v3, v0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    iget-short v4, v0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    iget-object p0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v5, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    iget-byte v6, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    iget-byte v7, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    iget v8, p0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    const/4 v1, 0x0

    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson2/util/DateUtils;->millis(Lcom/alibaba/fastjson2/time/ZoneId;IIIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static millis(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v2, v0, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    iget-short v3, v0, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    iget-short v4, v0, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    iget-object p0, p0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte v5, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    iget-byte v6, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    iget-byte v7, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    iget v8, p0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson2/util/DateUtils;->millis(Lcom/alibaba/fastjson2/time/ZoneId;IIIIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static millis(Lcom/alibaba/fastjson2/time/ZoneId;IIIIIII)J
    .locals 10

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    :cond_0
    mul-int/lit16 v0, p1, 0x16d

    add-int/lit8 v1, p1, 0x3

    .line 4
    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x63

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    add-int/lit16 v2, p1, 0x18f

    div-int/lit16 v2, v2, 0x190

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p2, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v2, 0x2

    if-le p2, v2, :cond_3

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    and-int/lit8 v4, p1, 0x3

    if-nez v4, :cond_2

    .line 5
    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_1

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_2

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    :cond_3
    :goto_0
    const-wide/32 v2, 0xafaa8

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    mul-long/2addr v0, v2

    mul-int/lit16 v2, p4, 0xe10

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-int/lit8 v2, p5, 0x3c

    int-to-long v2, v2

    add-long/2addr v0, v2

    move/from16 v8, p6

    int-to-long v2, v8

    add-long/2addr v0, v2

    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v9, 0xf4240

    if-eqz v2, :cond_5

    const-wide/32 p0, 0x28d2bea0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_4

    const/16 p0, 0x7080

    goto :goto_2

    .line 7
    :cond_4
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result p0

    goto :goto_2

    .line 8
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    if-eq p0, v2, :cond_7

    const-string v2, "UTC"

    iget-object v3, p0, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    iget-object p0, p0, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    add-int/lit8 v4, p2, -0x1

    move v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    .line 10
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    .line 11
    div-int p1, p7, v9

    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 12
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    :goto_2
    int-to-long p0, p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    mul-long/2addr v0, p0

    if-eqz p7, :cond_8

    .line 13
    div-int p0, p7, v9

    int-to-long p0, p0

    add-long/2addr v0, p0

    :cond_8
    return-wide v0
.end method

.method public static month(CCC)I
    .locals 7

    const/16 v0, 0x41

    const/16 v1, 0x75

    const/16 v2, 0x72

    const/16 v3, 0x70

    if-eq p0, v0, :cond_7

    const/16 v0, 0x44

    const/16 v4, 0x63

    const/16 v5, 0x65

    if-eq p0, v0, :cond_6

    const/16 v0, 0x46

    if-eq p0, v0, :cond_5

    const/16 v0, 0x4a

    const/16 v6, 0x61

    if-eq p0, v0, :cond_2

    const/16 v0, 0x53

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p1, v4, :cond_9

    const/16 p0, 0x74

    if-ne p2, p0, :cond_9

    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x6f

    if-ne p1, p0, :cond_9

    const/16 p0, 0x76

    if-ne p2, p0, :cond_9

    const/16 p0, 0xb

    return p0

    :pswitch_2
    if-ne p1, v6, :cond_9

    if-ne p2, v2, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 p0, 0x79

    if-ne p2, p0, :cond_9

    const/4 p0, 0x5

    return p0

    :cond_1
    if-ne p1, v5, :cond_9

    if-ne p2, v3, :cond_9

    const/16 p0, 0x9

    return p0

    :cond_2
    const/16 p0, 0x6e

    if-ne p1, v6, :cond_3

    if-ne p2, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-ne p1, v1, :cond_9

    if-ne p2, p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/16 p0, 0x6c

    if-ne p2, p0, :cond_9

    const/4 p0, 0x7

    return p0

    :cond_5
    if-ne p1, v5, :cond_9

    const/16 p0, 0x62

    if-ne p2, p0, :cond_9

    const/4 p0, 0x2

    return p0

    :cond_6
    if-ne p1, v5, :cond_9

    if-ne p2, v4, :cond_9

    const/16 p0, 0xc

    return p0

    :cond_7
    if-ne p1, v3, :cond_8

    if-ne p2, v2, :cond_8

    const/4 p0, 0x4

    return p0

    :cond_8
    if-ne p1, v1, :cond_9

    const/16 p0, 0x67

    if-ne p2, p0, :cond_9

    const/16 p0, 0x8

    return p0

    :cond_9
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDate(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;
    .locals 2

    .line 31
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v1, 0x0

    if-eqz p1, :cond_f

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "iso8601"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "dd.MM.yyyy HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_4
    const-string v3, "yyyy/MM/dd HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_5
    const-string v3, "yyyy/MM/dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_7
    const-string v3, "yyyyMMdd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_8
    const-string v3, "unixtime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_9
    const-string v3, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_b
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_a
    const-string v3, "millis"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_0

    :cond_c
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    if-nez p2, :cond_d

    .line 4
    sget-object p2, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 5
    :cond_d
    invoke-static {p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    .line 7
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->millis(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    .line 8
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 9
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 10
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 11
    :pswitch_1
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 12
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 13
    :pswitch_2
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillisYMDHMS19(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    .line 14
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 15
    :pswitch_3
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 16
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 17
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis10(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 18
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 19
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis10(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 20
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 21
    :pswitch_6
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis8(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    .line 22
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 23
    :pswitch_7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 24
    new-instance p2, Ljava/util/Date;

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 25
    :pswitch_8
    sget-object p1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    cmp-long p2, p0, v1

    if-nez p2, :cond_e

    return-object v0

    .line 26
    :cond_e
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 27
    :pswitch_9
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 28
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 29
    :cond_f
    :goto_1
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    cmp-long p2, p0, v1

    if-nez p2, :cond_10

    return-object v0

    .line 30
    :cond_10
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :cond_11
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x400565ba -> :sswitch_a
        -0x14bad9d9 -> :sswitch_9
        -0x112ad7ab -> :sswitch_8
        -0x10781ba0 -> :sswitch_7
        -0x985fe00 -> :sswitch_6
        -0x61c4540 -> :sswitch_5
        0x129110e0 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x534c3940 -> :sswitch_2
        0x6b2ed43a -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static parseLocalDate(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate([CII)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object v1

    if-nez v1, :cond_7

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "0000-00-00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "0000\u5e7400\u670800\u65e5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "00000000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "0000-0-00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, p0, p0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    return-object v0

    :cond_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x794e6996 -> :sswitch_5
        -0x45f8e800 -> :sswitch_4
        0x0 -> :sswitch_3
        0x33c587 -> :sswitch_2
        0x52cad51 -> :sswitch_1
        0x4f8288e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDate([BII)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int v1, p1, p2

    .line 5
    array-length v2, p0

    const/4 v3, 0x0

    const-string v4, "illegal input "

    if-gt v1, v2, :cond_2

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 6
    aget-byte v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 8
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 9
    :pswitch_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 14
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDate([CII)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int v1, p1, p2

    .line 15
    array-length v2, p0

    const/4 v3, 0x0

    const-string v4, "illegal input "

    if-gt v1, v2, :cond_2

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 16
    aget-char v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 18
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 19
    :pswitch_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 24
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 13

    add-int/lit8 v0, p1, 0xa

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 p1, p1, 0x9

    .line 11
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v10, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v11, 0x2f

    if-ne v5, v11, :cond_2

    if-ne v8, v11, :cond_2

    :goto_0
    move v8, v1

    move v5, v4

    move v1, v6

    move p1, v7

    move v4, v9

    goto :goto_3

    :cond_2
    const/16 v12, 0x2e

    if-ne v3, v12, :cond_3

    if-ne v6, v12, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, p1, :cond_4

    if-ne v6, p1, :cond_4

    :goto_1
    move p1, v5

    move v3, v9

    move v5, p0

    move p0, v1

    move v1, v4

    move v4, v0

    :goto_2
    move v0, v7

    goto :goto_3

    :cond_4
    if-ne v3, v11, :cond_5

    if-ne v6, v11, :cond_5

    move p1, v5

    move v5, p0

    move p0, p1

    move p1, v1

    move v3, v9

    move v1, v0

    goto :goto_2

    :cond_5
    const/16 p1, 0x20

    if-ne v1, p1, :cond_7

    if-ne v6, p1, :cond_7

    .line 12
    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_7

    .line 13
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v10

    int-to-char v1, v1

    .line 14
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v10

    int-to-char p1, p1

    move v5, p0

    move p0, v0

    move v0, v7

    move v3, v9

    move v4, v10

    :goto_3
    if-lt v0, v10, :cond_7

    const/16 v6, 0x39

    if-gt v0, v6, :cond_7

    if-lt v8, v10, :cond_7

    if-gt v8, v6, :cond_7

    if-lt v3, v10, :cond_7

    if-gt v3, v6, :cond_7

    if-lt v5, v10, :cond_7

    if-gt v5, v6, :cond_7

    sub-int/2addr v0, v10

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x64

    add-int/2addr v0, v8

    sub-int/2addr v3, v10

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v5, v10

    add-int/2addr v0, v5

    if-lt v1, v10, :cond_7

    if-gt v1, v6, :cond_7

    if-lt p1, v10, :cond_7

    if-gt p1, v6, :cond_7

    sub-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr p1, v10

    add-int/2addr v1, p1

    if-lt v4, v10, :cond_7

    if-gt v4, v6, :cond_7

    if-lt p0, v10, :cond_7

    if-gt p0, v6, :cond_7

    sub-int/2addr v4, v10

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr p0, v10

    add-int/2addr v4, p0

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    return-object v2

    .line 15
    :cond_6
    invoke-static {v0, v1, v4}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method

.method public static parseLocalDate10([CI)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 17

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xa

    .line 16
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 17
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 18
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 19
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 20
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 21
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 22
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 23
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 24
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 25
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 26
    aget-char v0, v0, v11

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    if-ne v9, v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v13, 0x2f

    if-ne v6, v13, :cond_2

    if-ne v9, v13, :cond_2

    :goto_0
    move-object/from16 v16, v3

    move v9, v10

    move v10, v0

    :goto_1
    const/16 v0, 0x30

    goto/16 :goto_5

    :cond_2
    const/16 v14, 0x2e

    if-ne v4, v14, :cond_3

    if-ne v7, v14, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v11, :cond_4

    if-ne v7, v11, :cond_4

    :goto_2
    move-object/from16 v16, v3

    move v7, v5

    move v4, v10

    move v5, v0

    move v10, v2

    move v2, v9

    const/16 v0, 0x30

    move v9, v1

    move v1, v8

    move v8, v6

    goto/16 :goto_5

    :cond_4
    if-ne v4, v13, :cond_5

    if-ne v7, v13, :cond_5

    move v7, v1

    move-object/from16 v16, v3

    move v1, v8

    move v4, v10

    move v8, v2

    move v10, v6

    move v2, v9

    move v9, v5

    move v5, v0

    goto :goto_1

    :cond_5
    const/16 v11, 0x65e5

    const/16 v13, 0x6708

    const/16 v14, 0x5e74

    if-ne v6, v14, :cond_6

    if-ne v8, v13, :cond_6

    if-ne v0, v11, :cond_6

    move-object/from16 v16, v3

    move v8, v7

    const/16 v0, 0x30

    const/16 v7, 0x30

    goto :goto_5

    :cond_6
    const v15, 0xc77c

    move-object/from16 v16, v3

    const v3, 0xc6d4

    const/16 p0, 0x30

    const v12, 0xb144

    if-ne v6, v12, :cond_7

    if-ne v8, v3, :cond_7

    if-ne v0, v15, :cond_7

    move/from16 v0, p0

    move v8, v7

    move v7, v0

    goto :goto_5

    :cond_7
    if-ne v6, v14, :cond_8

    if-ne v9, v13, :cond_8

    if-ne v0, v11, :cond_8

    :goto_3
    move/from16 v0, p0

    :goto_4
    move v9, v0

    goto :goto_5

    :cond_8
    if-ne v6, v12, :cond_9

    if-ne v9, v3, :cond_9

    if-ne v0, v15, :cond_9

    goto :goto_3

    :cond_9
    const/16 v3, 0x20

    if-ne v2, v3, :cond_b

    if-ne v7, v3, :cond_b

    .line 27
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_b

    .line 28
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 29
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v5, v0

    move v7, v3

    move v4, v10

    move/from16 v0, p0

    move v10, v1

    move v1, v8

    move v8, v2

    move v2, v9

    goto :goto_4

    :goto_5
    if-lt v1, v0, :cond_b

    const/16 v3, 0x39

    if-gt v1, v3, :cond_b

    if-lt v2, v0, :cond_b

    if-gt v2, v3, :cond_b

    if-lt v4, v0, :cond_b

    if-gt v4, v3, :cond_b

    if-lt v5, v0, :cond_b

    if-gt v5, v3, :cond_b

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v0

    add-int/2addr v1, v5

    if-lt v7, v0, :cond_b

    if-gt v7, v3, :cond_b

    if-lt v8, v0, :cond_b

    if-gt v8, v3, :cond_b

    sub-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v0

    add-int/2addr v7, v8

    if-lt v9, v0, :cond_b

    if-gt v9, v3, :cond_b

    if-lt v10, v0, :cond_b

    if-gt v10, v3, :cond_b

    sub-int/2addr v9, v0

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v0

    add-int/2addr v9, v10

    if-nez v1, :cond_a

    if-nez v7, :cond_a

    if-nez v9, :cond_a

    return-object v16

    .line 30
    :cond_a
    invoke-static {v1, v7, v9}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_b
    return-object v16
.end method

.method public static parseLocalDate11([BI)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 12

    add-int/lit8 v0, p1, 0xb

    .line 17
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 18
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 19
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 20
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 21
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 22
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 23
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 24
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 25
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 26
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x9

    .line 27
    aget-byte v10, p0, v10

    int-to-char v10, v10

    add-int/lit8 p1, p1, 0xa

    .line 28
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v11, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    if-ne v3, p1, :cond_3

    if-ne v7, p1, :cond_3

    .line 29
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 30
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v11

    int-to-char v6, v3

    .line 31
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v11

    int-to-char v7, p1

    move v4, p0

    move v3, v10

    move v10, v1

    move v1, v9

    move v9, v0

    move v0, v8

    :goto_0
    if-lt v0, v11, :cond_3

    const/16 p0, 0x39

    if-gt v0, p0, :cond_3

    if-lt v1, v11, :cond_3

    if-gt v1, p0, :cond_3

    if-lt v3, v11, :cond_3

    if-gt v3, p0, :cond_3

    if-lt v4, v11, :cond_3

    if-gt v4, p0, :cond_3

    sub-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v4, v11

    add-int/2addr v0, v4

    if-lt v6, v11, :cond_3

    if-gt v6, p0, :cond_3

    if-lt v7, v11, :cond_3

    if-gt v7, p0, :cond_3

    sub-int/2addr v6, v11

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v11

    add-int/2addr v6, v7

    if-lt v9, v11, :cond_3

    if-gt v9, p0, :cond_3

    if-lt v10, v11, :cond_3

    if-gt v10, p0, :cond_3

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    if-nez v9, :cond_2

    return-object v2

    .line 32
    :cond_2
    invoke-static {v0, v6, v9}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public static parseLocalDate11([CI)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 12

    add-int/lit8 v0, p1, 0xb

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 11
    aget-char v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 12
    aget-char p0, p0, p1

    const/16 p1, 0x5e74

    const/16 v11, 0x30

    if-ne v5, p1, :cond_1

    const/16 p1, 0x6708

    if-ne v8, p1, :cond_1

    const/16 p1, 0x65e5

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d

    if-ne v5, p1, :cond_2

    if-ne v8, p1, :cond_2

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0xb144

    if-ne v5, p1, :cond_3

    const p1, 0xc6d4

    if-ne v8, p1, :cond_3

    const p1, 0xc77c

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x20

    if-ne v3, p1, :cond_5

    if-ne v7, p1, :cond_5

    .line 13
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_5

    .line 14
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v11

    int-to-char v6, v3

    .line 15
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v11

    int-to-char v7, p1

    move v4, p0

    move v3, v10

    move v10, v1

    move v1, v9

    move v9, v0

    move v0, v8

    :goto_0
    if-lt v0, v11, :cond_5

    const/16 p0, 0x39

    if-gt v0, p0, :cond_5

    if-lt v1, v11, :cond_5

    if-gt v1, p0, :cond_5

    if-lt v3, v11, :cond_5

    if-gt v3, p0, :cond_5

    if-lt v4, v11, :cond_5

    if-gt v4, p0, :cond_5

    sub-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v4, v11

    add-int/2addr v0, v4

    if-lt v6, v11, :cond_5

    if-gt v6, p0, :cond_5

    if-lt v7, v11, :cond_5

    if-gt v7, p0, :cond_5

    sub-int/2addr v6, v11

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v11

    add-int/2addr v6, v7

    if-lt v9, v11, :cond_5

    if-gt v9, p0, :cond_5

    if-lt v10, v11, :cond_5

    if-gt v10, p0, :cond_5

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    if-nez v0, :cond_4

    if-nez v6, :cond_4

    if-nez v9, :cond_4

    return-object v2

    .line 16
    :cond_4
    invoke-static {v0, v6, v9}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method

.method public static parseLocalDate8([BI)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 10

    add-int/lit8 v0, p1, 0x8

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 p1, p1, 0x7

    .line 9
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v8, 0x30

    if-ne v5, p1, :cond_1

    if-ne v7, p1, :cond_1

    move v5, v8

    move v7, v5

    goto :goto_0

    :cond_1
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_2

    if-ne v4, v9, :cond_2

    move v4, p0

    move p0, v3

    move v1, v6

    move v3, v7

    move v7, v8

    move v6, v0

    move v0, v5

    move v5, v7

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_4

    if-ne v6, p1, :cond_4

    .line 10
    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 11
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v8

    int-to-char v5, v1

    .line 12
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v8

    int-to-char p1, p1

    const/16 v1, 0x32

    move v4, p0

    move v6, p1

    move p0, v0

    move v0, v1

    move v3, v7

    move v1, v8

    move v7, v1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_0
    if-lt v0, v8, :cond_6

    const/16 p1, 0x39

    if-gt v0, p1, :cond_6

    if-lt v1, v8, :cond_6

    if-gt v1, p1, :cond_6

    if-lt v3, v8, :cond_6

    if-gt v3, p1, :cond_6

    if-lt v4, v8, :cond_6

    if-gt v4, p1, :cond_6

    sub-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v4, v8

    add-int/2addr v0, v4

    if-lt v5, v8, :cond_6

    if-gt v5, p1, :cond_6

    if-lt v6, v8, :cond_6

    if-gt v6, p1, :cond_6

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v8

    add-int/2addr v5, v6

    if-lt v7, v8, :cond_6

    if-gt v7, p1, :cond_6

    if-lt p0, v8, :cond_6

    if-gt p0, p1, :cond_6

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr p0, v8

    add-int/2addr v7, p0

    if-nez v0, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    return-object v2

    .line 13
    :cond_5
    invoke-static {v0, v5, v7}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public static parseLocalDate8([CI)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 10

    add-int/lit8 v0, p1, 0x8

    .line 14
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 15
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 16
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 17
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 18
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 19
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 20
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 21
    aget-char v7, p0, v7

    add-int/lit8 p1, p1, 0x7

    .line 22
    aget-char p0, p0, p1

    const/16 p1, 0x2d

    const/16 v8, 0x30

    if-ne v5, p1, :cond_1

    if-ne v7, p1, :cond_1

    move v5, v8

    move v7, v5

    goto :goto_0

    :cond_1
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_2

    if-ne v4, v9, :cond_2

    move v4, p0

    move p0, v3

    move v1, v6

    move v3, v7

    move v7, v8

    move v6, v0

    move v0, v5

    move v5, v7

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_4

    if-ne v6, p1, :cond_4

    .line 23
    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 24
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v8

    int-to-char v5, v1

    .line 25
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v8

    int-to-char p1, p1

    const/16 v1, 0x32

    move v4, p0

    move v6, p1

    move p0, v0

    move v0, v1

    move v3, v7

    move v1, v8

    move v7, v1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_0
    if-lt v0, v8, :cond_6

    const/16 p1, 0x39

    if-gt v0, p1, :cond_6

    if-lt v1, v8, :cond_6

    if-gt v1, p1, :cond_6

    if-lt v3, v8, :cond_6

    if-gt v3, p1, :cond_6

    if-lt v4, v8, :cond_6

    if-gt v4, p1, :cond_6

    sub-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v4, v8

    add-int/2addr v0, v4

    if-lt v5, v8, :cond_6

    if-gt v5, p1, :cond_6

    if-lt v6, v8, :cond_6

    if-gt v6, p1, :cond_6

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v8

    add-int/2addr v5, v6

    if-lt v7, v8, :cond_6

    if-gt v7, p1, :cond_6

    if-lt p0, v8, :cond_6

    if-gt p0, p1, :cond_6

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr p0, v8

    add-int/2addr v7, p0

    if-nez v0, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    return-object v2

    .line 26
    :cond_5
    invoke-static {v0, v5, v7}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public static parseLocalDate9([BI)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 12

    add-int/lit8 v0, p1, 0x9

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 p1, p1, 0x8

    .line 10
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v9, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    :goto_0
    move p1, v3

    move v5, v4

    move v3, v6

    move v4, v7

    :goto_1
    move v8, v9

    goto/16 :goto_6

    :cond_1
    if-ne v5, p1, :cond_2

    if-ne v7, p1, :cond_2

    :goto_2
    move p1, v3

    move v5, v4

    move v4, v6

    :goto_3
    move v3, v9

    goto/16 :goto_6

    :cond_2
    const/16 v10, 0x2f

    if-ne v5, v10, :cond_3

    if-ne v8, v10, :cond_3

    goto :goto_0

    :cond_3
    if-ne v5, v10, :cond_4

    if-ne v7, v10, :cond_4

    goto :goto_2

    :cond_4
    const/16 v11, 0x2e

    if-ne v1, v11, :cond_5

    if-ne v5, v11, :cond_5

    :goto_4
    move v5, p0

    move p0, v0

    move v0, v6

    move v1, v7

    move p1, v8

    goto :goto_1

    :cond_5
    if-ne v3, v11, :cond_6

    if-ne v5, v11, :cond_6

    :goto_5
    move v5, p0

    move p0, v1

    move v1, v7

    move p1, v8

    move v3, v9

    move v8, v0

    move v0, v6

    goto/16 :goto_6

    :cond_6
    if-ne v1, p1, :cond_7

    if-ne v5, p1, :cond_7

    goto :goto_4

    :cond_7
    if-ne v3, p1, :cond_8

    if-ne v5, p1, :cond_8

    goto :goto_5

    :cond_8
    if-ne v3, p1, :cond_a

    if-ne v7, p1, :cond_a

    .line 11
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_9

    .line 12
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v9

    int-to-char v3, v3

    .line 13
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v9

    int-to-char p1, p1

    const/16 v4, 0x32

    move v5, v4

    move v4, p1

    move p1, v8

    move v8, v0

    move v0, v5

    move v5, p0

    move p0, v1

    move v1, v9

    goto :goto_6

    :cond_9
    return-object v2

    :cond_a
    if-ne v1, v10, :cond_b

    if-ne v5, v10, :cond_b

    move v5, p0

    move p0, v4

    move v1, v7

    move p1, v8

    move v4, v0

    move v8, v3

    move v0, v6

    goto :goto_3

    :cond_b
    if-ne v3, v10, :cond_d

    if-ne v5, v10, :cond_d

    move v5, p0

    move v3, v0

    move p0, v4

    move v0, v6

    move p1, v8

    move v8, v9

    move v4, v1

    move v1, v7

    :goto_6
    if-lt v0, v9, :cond_d

    const/16 v6, 0x39

    if-gt v0, v6, :cond_d

    if-lt v1, v9, :cond_d

    if-gt v1, v6, :cond_d

    if-lt p1, v9, :cond_d

    if-gt p1, v6, :cond_d

    if-lt v5, v9, :cond_d

    if-gt v5, v6, :cond_d

    sub-int/2addr v0, v9

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr p1, v9

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    sub-int/2addr v5, v9

    add-int/2addr v0, v5

    if-lt v3, v9, :cond_d

    if-gt v3, v6, :cond_d

    if-lt v4, v9, :cond_d

    if-gt v4, v6, :cond_d

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v9

    add-int/2addr v3, v4

    if-lt v8, v9, :cond_d

    if-gt v8, v6, :cond_d

    if-lt p0, v9, :cond_d

    if-gt p0, v6, :cond_d

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr p0, v9

    add-int/2addr v8, p0

    if-nez v0, :cond_c

    if-nez v3, :cond_c

    if-nez v8, :cond_c

    return-object v2

    .line 14
    :cond_c
    invoke-static {v0, v3, v8}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v2
.end method

.method public static parseLocalDate9([CI)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 12

    add-int/lit8 v0, p1, 0x9

    .line 15
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 16
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 17
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 18
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 19
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 20
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 21
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 22
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 23
    aget-char v8, p0, v8

    add-int/lit8 p1, p1, 0x8

    .line 24
    aget-char p0, p0, p1

    const/16 p1, 0x2d

    const/16 v9, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    :goto_0
    move p1, v3

    move v5, v4

    move v3, v6

    move v4, v7

    :goto_1
    move v8, v9

    goto/16 :goto_7

    :cond_1
    if-ne v5, p1, :cond_2

    if-ne v7, p1, :cond_2

    :goto_2
    move p1, v3

    move v5, v4

    move v4, v6

    :goto_3
    move v3, v9

    goto/16 :goto_7

    :cond_2
    const/16 v10, 0x2f

    if-ne v5, v10, :cond_3

    if-ne v8, v10, :cond_3

    goto :goto_0

    :cond_3
    if-ne v5, v10, :cond_4

    if-ne v7, v10, :cond_4

    goto :goto_2

    :cond_4
    const/16 v11, 0x2e

    if-ne v1, v11, :cond_5

    if-ne v5, v11, :cond_5

    :goto_4
    move v5, p0

    move p0, v0

    move v0, v6

    move v1, v7

    move p1, v8

    goto :goto_1

    :cond_5
    if-ne v3, v11, :cond_6

    if-ne v5, v11, :cond_6

    :goto_5
    move v5, p0

    move p0, v1

    move v1, v7

    move p1, v8

    move v3, v9

    move v8, v0

    move v0, v6

    goto/16 :goto_7

    :cond_6
    if-ne v1, p1, :cond_7

    if-ne v5, p1, :cond_7

    goto :goto_4

    :cond_7
    if-ne v3, p1, :cond_8

    if-ne v5, p1, :cond_8

    goto :goto_5

    :cond_8
    const/16 v11, 0x5e74

    if-ne v5, v11, :cond_9

    const/16 v11, 0x6708

    if-ne v7, v11, :cond_9

    const/16 v11, 0x65e5

    if-ne p0, v11, :cond_9

    :goto_6
    move p1, v3

    move v5, v4

    move v4, v6

    move p0, v8

    move v3, v9

    move v8, v3

    goto/16 :goto_7

    :cond_9
    const v11, 0xb144

    if-ne v5, v11, :cond_a

    const v11, 0xc6d4

    if-ne v7, v11, :cond_a

    const v11, 0xc77c

    if-ne p0, v11, :cond_a

    goto :goto_6

    :cond_a
    if-ne v3, p1, :cond_c

    if-ne v7, p1, :cond_c

    .line 25
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_b

    .line 26
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v9

    int-to-char v3, v3

    .line 27
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v9

    int-to-char p1, p1

    const/16 v4, 0x32

    move v5, v4

    move v4, p1

    move p1, v8

    move v8, v0

    move v0, v5

    move v5, p0

    move p0, v1

    move v1, v9

    goto :goto_7

    :cond_b
    return-object v2

    :cond_c
    if-ne v1, v10, :cond_d

    if-ne v5, v10, :cond_d

    move v5, p0

    move p0, v4

    move v1, v7

    move p1, v8

    move v4, v0

    move v8, v3

    move v0, v6

    goto :goto_3

    :cond_d
    if-ne v3, v10, :cond_f

    if-ne v5, v10, :cond_f

    move v5, p0

    move v3, v0

    move p0, v4

    move v0, v6

    move p1, v8

    move v8, v9

    move v4, v1

    move v1, v7

    :goto_7
    if-lt v0, v9, :cond_f

    const/16 v6, 0x39

    if-gt v0, v6, :cond_f

    if-lt v1, v9, :cond_f

    if-gt v1, v6, :cond_f

    if-lt p1, v9, :cond_f

    if-gt p1, v6, :cond_f

    if-lt v5, v9, :cond_f

    if-gt v5, v6, :cond_f

    sub-int/2addr v0, v9

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr p1, v9

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    sub-int/2addr v5, v9

    add-int/2addr v0, v5

    if-lt v3, v9, :cond_f

    if-gt v3, v6, :cond_f

    if-lt v4, v9, :cond_f

    if-gt v4, v6, :cond_f

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v9

    add-int/2addr v3, v4

    if-lt v8, v9, :cond_f

    if-gt v8, v6, :cond_f

    if-lt p0, v9, :cond_f

    if-gt p0, v6, :cond_f

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr p0, v9

    add-int/2addr v8, p0

    if-nez v0, :cond_e

    if-nez v3, :cond_e

    if-nez v8, :cond_e

    return-object v2

    .line 28
    :cond_e
    invoke-static {v0, v3, v8}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_f
    return-object v2
.end method

.method public static parseLocalDateTime(Ljava/lang/String;II)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    new-array v1, p2, [C

    add-int v2, p1, p2

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0, p1, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 3
    invoke-static {v1, p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime([CII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p2

    if-nez p2, :cond_9

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move v3, v1

    goto :goto_1

    :sswitch_0
    const-string p2, "0000-00-00"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    const-string p2, "0000\u5e7400\u670800\u65e5"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_2
    const-string p2, "null"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    const-string p2, "00000000"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    const-string p2, "000000000000"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_6
    const-string p2, "0000-00-0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string p2, "0000-0-00"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 5
    new-instance p2, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {p2, p0, p0, p1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2

    :pswitch_0
    return-object v0

    :cond_9
    return-object p2

    :cond_a
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x794e6996 -> :sswitch_7
        -0x794e5eb0 -> :sswitch_6
        -0x4f2e5c00 -> :sswitch_5
        -0x45f8e800 -> :sswitch_4
        0x0 -> :sswitch_3
        0x33c587 -> :sswitch_2
        0x52cad51 -> :sswitch_1
        0x4f8288e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDateTime([BII)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 25
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([BII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 28
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_4
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_5
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_6
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 32
    :pswitch_7
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_8
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    .line 34
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_9
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 36
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 37
    :pswitch_a
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 38
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_b
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 40
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_c
    aget-byte v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_4

    return-object v0

    .line 42
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 43
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal input "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_5
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseLocalDateTime([CII)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 6
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([CII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_4
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_5
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_6
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_7
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_8
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 15
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 16
    :pswitch_9
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 17
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_a
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 19
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_b
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    .line 21
    :cond_4
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_c
    aget-char v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_5

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_5

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_5

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_5

    return-object v0

    .line 23
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 24
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal input "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_6
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseLocalDateTime12([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0xc

    .line 27
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_7

    .line 28
    aget-byte v3, v0, v1

    int-to-char v3, v3

    add-int/lit8 v6, v1, 0x1

    .line 29
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x2

    .line 30
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x3

    .line 31
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x4

    .line 32
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x5

    .line 33
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x6

    .line 34
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x7

    .line 35
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x8

    .line 36
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0x9

    .line 37
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xa

    .line 38
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xb

    .line 39
    aget-byte v4, v0, v16

    int-to-char v4, v4

    move-object/from16 v16, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_6

    const/16 v0, 0x39

    if-gt v3, v0, :cond_5

    if-lt v6, v5, :cond_5

    if-gt v6, v0, :cond_5

    if-lt v7, v5, :cond_5

    if-gt v7, v0, :cond_5

    if-lt v8, v5, :cond_5

    if-gt v8, v0, :cond_5

    sub-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v3, v7

    sub-int/2addr v8, v5

    add-int v17, v3, v8

    if-lt v9, v5, :cond_4

    if-gt v9, v0, :cond_4

    if-lt v10, v5, :cond_4

    if-gt v10, v0, :cond_4

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v5

    add-int v18, v9, v10

    if-lt v11, v5, :cond_3

    if-gt v11, v0, :cond_3

    if-lt v12, v5, :cond_3

    if-gt v12, v0, :cond_3

    sub-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v5

    add-int v19, v11, v12

    if-lt v13, v5, :cond_2

    if-gt v13, v0, :cond_2

    if-lt v14, v5, :cond_2

    if-gt v14, v0, :cond_2

    sub-int/2addr v13, v5

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v5

    add-int v20, v13, v14

    if-lt v15, v5, :cond_1

    if-gt v15, v0, :cond_1

    if-lt v4, v5, :cond_1

    if-gt v4, v0, :cond_1

    sub-int/2addr v15, v5

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v4, v5

    add-int v21, v15, v4

    if-nez v17, :cond_0

    if-nez v18, :cond_0

    if-nez v19, :cond_0

    if-nez v20, :cond_0

    if-nez v21, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v22, 0x0

    .line 40
    invoke-static/range {v17 .. v22}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 42
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 44
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 46
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 48
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_5
    move-object/from16 v3, p0

    :goto_0
    move-object/from16 v4, v16

    goto :goto_1

    :cond_6
    move-object v3, v0

    goto :goto_0

    .line 49
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 50
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_7
    move-object v3, v0

    move-object v4, v5

    .line 51
    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 52
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseLocalDateTime12([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0xc

    .line 1
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_7

    .line 2
    aget-char v3, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 3
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x2

    .line 4
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x3

    .line 5
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x4

    .line 6
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x5

    .line 7
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x6

    .line 8
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x7

    .line 9
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x8

    .line 10
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0x9

    .line 11
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xa

    .line 12
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xb

    .line 13
    aget-char v4, v0, v16

    move-object/from16 v16, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_6

    const/16 v0, 0x39

    if-gt v3, v0, :cond_5

    if-lt v6, v5, :cond_5

    if-gt v6, v0, :cond_5

    if-lt v7, v5, :cond_5

    if-gt v7, v0, :cond_5

    if-lt v8, v5, :cond_5

    if-gt v8, v0, :cond_5

    sub-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v3, v7

    sub-int/2addr v8, v5

    add-int v17, v3, v8

    if-lt v9, v5, :cond_4

    if-gt v9, v0, :cond_4

    if-lt v10, v5, :cond_4

    if-gt v10, v0, :cond_4

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v5

    add-int v18, v9, v10

    if-lt v11, v5, :cond_3

    if-gt v11, v0, :cond_3

    if-lt v12, v5, :cond_3

    if-gt v12, v0, :cond_3

    sub-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v5

    add-int v19, v11, v12

    if-lt v13, v5, :cond_2

    if-gt v13, v0, :cond_2

    if-lt v14, v5, :cond_2

    if-gt v14, v0, :cond_2

    sub-int/2addr v13, v5

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v5

    add-int v20, v13, v14

    if-lt v15, v5, :cond_1

    if-gt v15, v0, :cond_1

    if-lt v4, v5, :cond_1

    if-gt v4, v0, :cond_1

    sub-int/2addr v15, v5

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v4, v5

    add-int v21, v15, v4

    if-nez v17, :cond_0

    if-nez v18, :cond_0

    if-nez v19, :cond_0

    if-nez v20, :cond_0

    if-nez v21, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v22, 0x0

    .line 14
    invoke-static/range {v17 .. v22}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 16
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 18
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 20
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 22
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_5
    move-object/from16 v3, p0

    :goto_0
    move-object/from16 v4, v16

    goto :goto_1

    :cond_6
    move-object v3, v0

    goto :goto_0

    .line 23
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 24
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_7
    move-object v3, v0

    move-object v4, v5

    .line 25
    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 26
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseLocalDateTime14([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xe

    .line 17
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 18
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x1

    .line 19
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x2

    .line 20
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x3

    .line 21
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x4

    .line 22
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x5

    .line 23
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x6

    .line 24
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x7

    .line 25
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x8

    .line 26
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 27
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 28
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 29
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 30
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 31
    aget-byte v0, v0, v15

    int-to-char v0, v0

    const/16 v15, 0x30

    move-object/from16 v16, v3

    if-lt v1, v15, :cond_1

    const/16 v3, 0x39

    if-gt v1, v3, :cond_1

    if-lt v2, v15, :cond_1

    if-gt v2, v3, :cond_1

    if-lt v4, v15, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, v15, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v1, v15

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v15

    add-int v17, v1, v5

    if-lt v6, v15, :cond_1

    if-gt v6, v3, :cond_1

    if-lt v7, v15, :cond_1

    if-gt v7, v3, :cond_1

    sub-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v15

    add-int v18, v6, v7

    if-lt v8, v15, :cond_1

    if-gt v8, v3, :cond_1

    if-lt v9, v15, :cond_1

    if-gt v9, v3, :cond_1

    sub-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v15

    add-int v19, v8, v9

    if-lt v10, v15, :cond_1

    if-gt v10, v3, :cond_1

    if-lt v11, v15, :cond_1

    if-gt v11, v3, :cond_1

    sub-int/2addr v10, v15

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v15

    add-int v20, v10, v11

    if-lt v12, v15, :cond_1

    if-gt v12, v3, :cond_1

    if-lt v13, v15, :cond_1

    if-gt v13, v3, :cond_1

    sub-int/2addr v12, v15

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v15

    add-int v21, v12, v13

    if-lt v14, v15, :cond_1

    if-gt v14, v3, :cond_1

    if-lt v0, v15, :cond_1

    if-gt v0, v3, :cond_1

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v15

    add-int v22, v14, v0

    .line 32
    invoke-static/range {v17 .. v22}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v16
.end method

.method public static parseLocalDateTime14([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xe

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 5
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 6
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 7
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 8
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 9
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-char v0, v0, v15

    const/16 v15, 0x30

    move-object/from16 v16, v3

    if-lt v1, v15, :cond_1

    const/16 v3, 0x39

    if-gt v1, v3, :cond_1

    if-lt v2, v15, :cond_1

    if-gt v2, v3, :cond_1

    if-lt v4, v15, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, v15, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v1, v15

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v15

    add-int v17, v1, v5

    if-lt v6, v15, :cond_1

    if-gt v6, v3, :cond_1

    if-lt v7, v15, :cond_1

    if-gt v7, v3, :cond_1

    sub-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v15

    add-int v18, v6, v7

    if-lt v8, v15, :cond_1

    if-gt v8, v3, :cond_1

    if-lt v9, v15, :cond_1

    if-gt v9, v3, :cond_1

    sub-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v15

    add-int v19, v8, v9

    if-lt v10, v15, :cond_1

    if-gt v10, v3, :cond_1

    if-lt v11, v15, :cond_1

    if-gt v11, v3, :cond_1

    sub-int/2addr v10, v15

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v15

    add-int v20, v10, v11

    if-lt v12, v15, :cond_1

    if-gt v12, v3, :cond_1

    if-lt v13, v15, :cond_1

    if-gt v13, v3, :cond_1

    sub-int/2addr v12, v15

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v15

    add-int v21, v12, v13

    if-lt v14, v15, :cond_1

    if-gt v14, v3, :cond_1

    if-lt v0, v15, :cond_1

    if-gt v0, v3, :cond_1

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v15

    add-int v22, v14, v0

    .line 16
    invoke-static/range {v17 .. v22}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v16
.end method

.method public static parseLocalDateTime16([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 26

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x10

    .line 25
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 26
    :cond_0
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 27
    aget-byte v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 28
    aget-byte v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 29
    aget-byte v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 30
    aget-byte v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 31
    aget-byte v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 32
    aget-byte v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 33
    aget-byte v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 34
    aget-byte v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 35
    aget-byte v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 36
    aget-byte v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 37
    aget-byte v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 38
    aget-byte v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 39
    aget-byte v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v17, v3

    .line 40
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    .line 41
    aget-byte v0, v0, v16

    move/from16 p0, v0

    const/16 v0, 0x2d

    const/16 v20, 0x30

    if-ne v6, v0, :cond_2

    if-ne v9, v0, :cond_2

    const/16 v0, 0x54

    if-eq v12, v0, :cond_1

    const/16 v0, 0x20

    if-ne v12, v0, :cond_2

    :cond_1
    const/16 v0, 0x3a

    goto :goto_0

    :cond_2
    move/from16 v0, p0

    move/from16 v21, v3

    const/16 v3, 0x54

    goto :goto_2

    :goto_0
    if-ne v15, v0, :cond_2

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v5, v7

    int-to-char v6, v8

    int-to-char v7, v10

    int-to-char v8, v11

    int-to-char v9, v13

    int-to-char v10, v14

    int-to-char v3, v3

    move/from16 v11, p0

    int-to-char v11, v11

    move/from16 v12, v20

    :goto_1
    move v13, v12

    move v14, v13

    goto/16 :goto_5

    :goto_2
    if-ne v10, v3, :cond_3

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_3

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v5, v6

    int-to-char v6, v7

    int-to-char v7, v8

    int-to-char v8, v9

    int-to-char v9, v11

    int-to-char v10, v12

    int-to-char v3, v13

    int-to-char v11, v14

    int-to-char v12, v15

    move/from16 v13, v21

    int-to-char v13, v13

    move/from16 v14, v20

    goto/16 :goto_5

    :cond_3
    move/from16 v3, v21

    move/from16 v21, v14

    const/16 v14, -0x1b

    move/from16 v24, v13

    const/16 v13, -0x1a

    if-ne v6, v14, :cond_4

    const/16 v14, -0x47

    if-ne v7, v14, :cond_4

    const/16 v14, -0x4c

    if-ne v8, v14, :cond_4

    if-ne v10, v13, :cond_4

    const/16 v14, -0x64

    if-ne v11, v14, :cond_4

    const/16 v14, -0x78

    if-ne v12, v14, :cond_4

    if-ne v15, v13, :cond_4

    const/16 v14, -0x69

    if-ne v3, v14, :cond_4

    const/16 v14, -0x5b

    if-ne v0, v14, :cond_4

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v6, v9

    move/from16 v14, v24

    int-to-char v7, v14

    move/from16 v3, v21

    int-to-char v8, v3

    move/from16 v3, v20

    move v5, v3

    move v9, v5

    :goto_3
    move v10, v9

    move v11, v10

    move v12, v11

    goto :goto_1

    :cond_4
    move/from16 v25, v21

    move/from16 v14, v24

    const/16 v13, -0x1b

    if-ne v6, v13, :cond_5

    const/16 v13, -0x47

    if-ne v7, v13, :cond_5

    const/16 v13, -0x4c

    if-ne v8, v13, :cond_5

    const/16 v13, -0x1a

    if-ne v11, v13, :cond_5

    const/16 v13, -0x64

    if-ne v12, v13, :cond_5

    const/16 v13, -0x78

    if-ne v14, v13, :cond_5

    const/16 v13, -0x1a

    if-ne v15, v13, :cond_5

    const/16 v13, -0x69

    if-ne v3, v13, :cond_5

    const/16 v13, -0x5b

    if-ne v0, v13, :cond_5

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v5, v9

    int-to-char v6, v10

    move/from16 v13, v25

    int-to-char v8, v13

    move/from16 v3, v20

    move v7, v3

    move v9, v7

    goto :goto_3

    :cond_5
    move/from16 v13, v25

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_7

    if-ne v9, v0, :cond_7

    const/16 v0, 0x54

    if-eq v12, v0, :cond_6

    const/16 v0, 0x20

    if-ne v12, v0, :cond_8

    :cond_6
    const/16 v0, 0x3a

    if-ne v13, v0, :cond_7

    if-ne v3, v0, :cond_7

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v5, v7

    int-to-char v6, v8

    int-to-char v7, v10

    int-to-char v8, v11

    int-to-char v10, v14

    int-to-char v11, v15

    move/from16 v3, p0

    int-to-char v13, v3

    move/from16 v3, v20

    move v9, v3

    :goto_4
    move v12, v9

    move v14, v12

    goto/16 :goto_5

    :cond_7
    const/16 v0, 0x20

    :cond_8
    if-ne v2, v0, :cond_b

    if-ne v7, v0, :cond_b

    if-ne v12, v0, :cond_b

    const/16 v0, 0x3a

    if-ne v15, v0, :cond_a

    int-to-char v0, v8

    int-to-char v2, v9

    int-to-char v7, v10

    int-to-char v8, v11

    int-to-char v4, v4

    int-to-char v5, v5

    int-to-char v6, v6

    .line 42
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v4

    if-lez v4, :cond_9

    .line 43
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 44
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v6, v4

    int-to-char v1, v1

    int-to-char v9, v14

    int-to-char v10, v13

    int-to-char v3, v3

    move/from16 v4, p0

    int-to-char v11, v4

    move v4, v8

    move/from16 v12, v20

    move v13, v12

    move v14, v13

    move v8, v1

    move v1, v2

    move v2, v7

    move v7, v14

    goto :goto_5

    :cond_9
    return-object v17

    :cond_a
    const/16 v0, 0x20

    :cond_b
    if-ne v2, v0, :cond_c

    if-ne v7, v0, :cond_c

    if-ne v12, v0, :cond_c

    const/16 v0, 0x3a

    if-ne v13, v0, :cond_c

    if-ne v3, v0, :cond_c

    int-to-char v0, v1

    int-to-char v1, v4

    int-to-char v2, v5

    int-to-char v3, v6

    .line 45
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_c

    .line 46
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v5, v2

    .line 47
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v6, v1

    int-to-char v1, v8

    int-to-char v2, v9

    int-to-char v3, v10

    int-to-char v4, v11

    int-to-char v10, v14

    int-to-char v11, v15

    move/from16 v7, p0

    int-to-char v13, v7

    move v8, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move/from16 v3, v20

    move v7, v3

    move v9, v7

    goto :goto_4

    :goto_5
    if-lt v0, v14, :cond_c

    const/16 v15, 0x39

    if-gt v0, v15, :cond_c

    if-lt v1, v14, :cond_c

    if-gt v1, v15, :cond_c

    if-lt v2, v14, :cond_c

    if-gt v2, v15, :cond_c

    if-lt v4, v14, :cond_c

    if-gt v4, v15, :cond_c

    sub-int/2addr v0, v14

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v14

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    sub-int/2addr v4, v14

    add-int v18, v0, v4

    if-lt v5, v14, :cond_c

    if-gt v5, v15, :cond_c

    if-lt v6, v14, :cond_c

    if-gt v6, v15, :cond_c

    sub-int/2addr v5, v14

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v14

    add-int v19, v5, v6

    if-lt v7, v14, :cond_c

    if-gt v7, v15, :cond_c

    if-lt v8, v14, :cond_c

    if-gt v8, v15, :cond_c

    sub-int/2addr v7, v14

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v14

    add-int v20, v7, v8

    if-lt v9, v14, :cond_c

    if-gt v9, v15, :cond_c

    if-lt v10, v14, :cond_c

    if-gt v10, v15, :cond_c

    sub-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v14

    add-int v21, v9, v10

    if-lt v3, v14, :cond_c

    if-gt v3, v15, :cond_c

    if-lt v11, v14, :cond_c

    if-gt v11, v15, :cond_c

    sub-int/2addr v3, v14

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v11, v14

    add-int v22, v3, v11

    if-lt v12, v14, :cond_c

    if-gt v12, v15, :cond_c

    if-lt v13, v14, :cond_c

    if-gt v13, v15, :cond_c

    sub-int/2addr v12, v14

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v14

    add-int v23, v12, v13

    .line 48
    invoke-static/range {v18 .. v23}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v17
.end method

.method public static parseLocalDateTime16([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 24

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x10

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 5
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 6
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 7
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 8
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 9
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v17, v3

    .line 16
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    .line 17
    aget-char v0, v0, v16

    move/from16 v16, v1

    const/16 v1, 0x2d

    const/16 v20, 0x30

    if-ne v6, v1, :cond_2

    if-ne v9, v1, :cond_2

    const/16 v1, 0x54

    if-eq v12, v1, :cond_1

    const/16 v1, 0x20

    if-ne v12, v1, :cond_2

    :cond_1
    const/16 v1, 0x3a

    goto :goto_0

    :cond_2
    const/16 v1, 0x54

    goto :goto_2

    :goto_0
    if-ne v15, v1, :cond_2

    move v6, v7

    move v7, v8

    move v8, v10

    move v12, v14

    move/from16 v1, v16

    move/from16 v9, v20

    :goto_1
    move v15, v9

    move v14, v0

    move v0, v3

    move v3, v15

    goto/16 :goto_4

    :goto_2
    if-ne v10, v1, :cond_3

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    move v0, v13

    move/from16 v1, v16

    move v13, v11

    move v11, v9

    move/from16 v9, v20

    goto/16 :goto_4

    :cond_3
    const/16 v1, 0x2d

    if-ne v6, v1, :cond_5

    if-ne v9, v1, :cond_5

    const/16 v1, 0x54

    if-eq v12, v1, :cond_4

    const/16 v1, 0x20

    if-ne v12, v1, :cond_6

    :cond_4
    const/16 v1, 0x3a

    if-ne v14, v1, :cond_5

    if-ne v3, v1, :cond_5

    move v3, v0

    move v6, v7

    move v7, v8

    move v8, v10

    move v12, v13

    move v14, v15

    move/from16 v1, v16

    move/from16 v0, v20

    move v9, v0

    :goto_3
    move v13, v9

    move v15, v13

    goto/16 :goto_4

    :cond_5
    const/16 v1, 0x20

    :cond_6
    if-ne v2, v1, :cond_9

    if-ne v7, v1, :cond_9

    if-ne v12, v1, :cond_9

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_8

    .line 18
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_7

    .line 19
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v6, v2

    .line 20
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v7, v1

    move v1, v8

    move v2, v9

    move v4, v10

    move v5, v11

    move v12, v14

    move/from16 v11, v16

    move/from16 v8, v20

    move v9, v8

    goto :goto_1

    :cond_7
    return-object v17

    :cond_8
    const/16 v1, 0x20

    :cond_9
    if-ne v2, v1, :cond_a

    if-ne v7, v1, :cond_a

    if-ne v12, v1, :cond_a

    const/16 v1, 0x3a

    if-ne v14, v1, :cond_a

    if-ne v3, v1, :cond_a

    .line 21
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_a

    .line 22
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v6, v2

    .line 23
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v7, v1

    move v3, v0

    move v1, v8

    move v2, v9

    move v4, v10

    move v5, v11

    move v12, v13

    move v14, v15

    move/from16 v11, v16

    move/from16 v0, v20

    move v8, v0

    move v9, v8

    goto :goto_3

    :goto_4
    if-lt v1, v9, :cond_a

    const/16 v10, 0x39

    if-gt v1, v10, :cond_a

    if-lt v2, v9, :cond_a

    if-gt v2, v10, :cond_a

    if-lt v4, v9, :cond_a

    if-gt v4, v10, :cond_a

    if-lt v5, v9, :cond_a

    if-gt v5, v10, :cond_a

    sub-int/2addr v1, v9

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v9

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v9

    add-int v18, v1, v5

    if-lt v6, v9, :cond_a

    if-gt v6, v10, :cond_a

    if-lt v7, v9, :cond_a

    if-gt v7, v10, :cond_a

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v9

    add-int v19, v6, v7

    if-lt v8, v9, :cond_a

    if-gt v8, v10, :cond_a

    if-lt v11, v9, :cond_a

    if-gt v11, v10, :cond_a

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v11, v9

    add-int v20, v8, v11

    if-lt v13, v9, :cond_a

    if-gt v13, v10, :cond_a

    if-lt v12, v9, :cond_a

    if-gt v12, v10, :cond_a

    sub-int/2addr v13, v9

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v12, v9

    add-int v21, v13, v12

    if-lt v0, v9, :cond_a

    if-gt v0, v10, :cond_a

    if-lt v14, v9, :cond_a

    if-gt v14, v10, :cond_a

    sub-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v14, v9

    add-int v22, v0, v14

    if-lt v15, v9, :cond_a

    if-gt v15, v10, :cond_a

    if-lt v3, v9, :cond_a

    if-gt v3, v10, :cond_a

    sub-int/2addr v15, v9

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v3, v9

    add-int v23, v15, v3

    .line 24
    invoke-static/range {v18 .. v23}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_a
    return-object v17
.end method

.method public static parseLocalDateTime17([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v2, p1, 0x11

    .line 37
    array-length v3, v0

    const-string v4, "illegal input "

    if-gt v2, v3, :cond_19

    .line 38
    aget-byte v2, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 39
    aget-byte v3, v0, v3

    add-int/lit8 v6, p1, 0x2

    .line 40
    aget-byte v6, v0, v6

    add-int/lit8 v7, p1, 0x3

    .line 41
    aget-byte v7, v0, v7

    add-int/lit8 v8, p1, 0x4

    .line 42
    aget-byte v8, v0, v8

    add-int/lit8 v9, p1, 0x5

    .line 43
    aget-byte v9, v0, v9

    add-int/lit8 v10, p1, 0x6

    .line 44
    aget-byte v10, v0, v10

    add-int/lit8 v11, p1, 0x7

    .line 45
    aget-byte v11, v0, v11

    add-int/lit8 v12, p1, 0x8

    .line 46
    aget-byte v12, v0, v12

    add-int/lit8 v13, p1, 0x9

    .line 47
    aget-byte v13, v0, v13

    add-int/lit8 v14, p1, 0xa

    .line 48
    aget-byte v14, v0, v14

    add-int/lit8 v15, p1, 0xb

    .line 49
    aget-byte v15, v0, v15

    add-int/lit8 v16, p1, 0xc

    .line 50
    aget-byte v5, v0, v16

    add-int/lit8 v16, p1, 0xd

    move-object/from16 v17, v4

    .line 51
    aget-byte v4, v0, v16

    add-int/lit8 v16, p1, 0xe

    .line 52
    aget-byte v0, p0, v16

    add-int/lit8 v16, p1, 0xf

    .line 53
    aget-byte v1, p0, v16

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v1

    .line 54
    aget-byte v1, p0, v16

    move/from16 v16, v0

    const/16 v19, 0x30

    const/16 v0, 0x2d

    if-ne v8, v0, :cond_1

    if-ne v11, v0, :cond_1

    const/16 v0, 0x54

    if-eq v14, v0, :cond_0

    const/16 v0, 0x20

    if-ne v14, v0, :cond_1

    :cond_0
    const/16 v0, 0x3a

    goto :goto_0

    :cond_1
    move/from16 v0, v16

    move/from16 v16, v1

    const/16 v1, 0x2d

    goto :goto_2

    :goto_0
    if-ne v4, v0, :cond_1

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_1

    int-to-char v0, v2

    int-to-char v1, v3

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v4, v9

    int-to-char v6, v10

    int-to-char v7, v12

    int-to-char v8, v13

    int-to-char v9, v15

    int-to-char v5, v5

    move/from16 v10, v16

    int-to-char v10, v10

    move/from16 v11, v18

    int-to-char v11, v11

    move v12, v9

    move v14, v10

    move v15, v11

    move-object/from16 v29, v17

    move/from16 v9, v19

    const/16 v26, 0x0

    move v10, v7

    move v11, v8

    move v8, v5

    move v7, v6

    move v6, v9

    move v5, v2

    :goto_1
    move v2, v6

    goto/16 :goto_9

    :goto_2
    if-ne v8, v1, :cond_3

    if-ne v10, v1, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_2

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_2
    const/16 v1, 0x3a

    goto :goto_3

    :cond_3
    move/from16 v1, v16

    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v18

    move/from16 v18, v5

    goto :goto_4

    :goto_3
    if-ne v15, v1, :cond_3

    if-ne v0, v1, :cond_3

    int-to-char v0, v2

    int-to-char v1, v3

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v6, v9

    int-to-char v8, v11

    int-to-char v9, v13

    int-to-char v7, v14

    int-to-char v10, v5

    int-to-char v11, v4

    move/from16 v4, v18

    int-to-char v4, v4

    move/from16 v5, v16

    int-to-char v5, v5

    move v12, v9

    move v14, v10

    move v15, v11

    move-object/from16 v29, v17

    move/from16 v10, v19

    const/16 v26, 0x0

    move v9, v5

    move v11, v8

    move v5, v2

    move v8, v7

    move v2, v10

    move v7, v6

    move v6, v4

    move v4, v2

    goto/16 :goto_9

    :goto_4
    const/16 v5, -0x1b

    if-ne v8, v5, :cond_4

    const/16 v5, -0x47

    if-ne v9, v5, :cond_4

    const/16 v5, -0x4c

    if-ne v10, v5, :cond_4

    const/16 v5, -0x1a

    if-ne v13, v5, :cond_4

    const/16 v5, -0x64

    if-ne v14, v5, :cond_4

    const/16 v5, -0x78

    if-ne v15, v5, :cond_4

    const/16 v5, -0x1a

    if-ne v0, v5, :cond_4

    const/16 v5, -0x69

    if-ne v1, v5, :cond_4

    const/16 v5, -0x5b

    if-ne v4, v5, :cond_4

    int-to-char v0, v2

    int-to-char v1, v3

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v4, v11

    int-to-char v6, v12

    move/from16 v5, v18

    int-to-char v7, v5

    move/from16 v5, v16

    int-to-char v8, v5

    move v5, v2

    move v10, v7

    move v11, v8

    move-object/from16 v29, v17

    move/from16 v2, v19

    move v8, v2

    move v9, v8

    move v12, v9

    move v14, v12

    move v15, v14

    const/16 v26, 0x0

    move v7, v6

    move v6, v15

    goto/16 :goto_9

    :cond_4
    move/from16 v5, v16

    move/from16 v16, v4

    move v4, v5

    move/from16 v5, v18

    move/from16 v18, v1

    const/16 v1, 0x20

    if-ne v6, v1, :cond_7

    if-ne v10, v1, :cond_7

    if-ne v15, v1, :cond_7

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_6

    int-to-char v0, v11

    int-to-char v1, v12

    int-to-char v6, v13

    int-to-char v10, v14

    int-to-char v7, v7

    int-to-char v8, v8

    int-to-char v9, v9

    .line 55
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v7

    if-lez v7, :cond_5

    .line 56
    div-int/lit8 v8, v7, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 57
    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    int-to-char v2, v2

    int-to-char v3, v3

    int-to-char v9, v5

    int-to-char v5, v4

    move/from16 v4, v18

    int-to-char v4, v4

    move/from16 v11, v16

    int-to-char v11, v11

    move v14, v4

    move v4, v8

    move v12, v9

    move v15, v11

    move-object/from16 v29, v17

    move/from16 v9, v19

    const/16 v26, 0x0

    move v11, v3

    move v8, v5

    move v5, v6

    move v3, v10

    move v6, v9

    move v10, v2

    goto/16 :goto_1

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 59
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_6
    move/from16 v20, v16

    move-object/from16 v21, v17

    const/16 v1, 0x20

    goto :goto_5

    :cond_7
    move/from16 v20, v16

    move-object/from16 v21, v17

    :goto_5
    if-ne v3, v1, :cond_9

    if-ne v9, v1, :cond_9

    if-ne v14, v1, :cond_9

    const/16 v1, 0x3a

    if-ne v5, v1, :cond_9

    if-ne v0, v1, :cond_9

    int-to-char v0, v2

    int-to-char v1, v6

    int-to-char v2, v7

    int-to-char v3, v8

    .line 60
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_8

    .line 61
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 62
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v6, v1

    int-to-char v1, v10

    int-to-char v3, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v15

    int-to-char v11, v4

    move/from16 v4, v18

    int-to-char v4, v4

    move/from16 v9, v20

    int-to-char v9, v9

    move v15, v11

    move/from16 v10, v19

    move v12, v10

    move v14, v12

    move-object/from16 v29, v21

    const/16 v26, 0x0

    move v11, v0

    move v0, v1

    move v1, v3

    move v3, v7

    move v7, v6

    move v6, v4

    move v4, v2

    move v2, v14

    goto/16 :goto_9

    .line 63
    :cond_8
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 64
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_9
    move/from16 v1, v18

    move/from16 v22, v20

    move-object/from16 v23, v21

    move/from16 v16, v0

    const/16 v0, 0x20

    if-ne v3, v0, :cond_c

    if-ne v9, v0, :cond_c

    if-ne v14, v0, :cond_c

    const/16 v0, 0x3a

    if-ne v5, v0, :cond_b

    if-ne v1, v0, :cond_b

    int-to-char v0, v2

    int-to-char v1, v6

    int-to-char v2, v7

    int-to-char v3, v8

    .line 65
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_a

    .line 66
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 67
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v6, v1

    int-to-char v1, v10

    int-to-char v3, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v15

    int-to-char v10, v4

    move/from16 v4, v16

    int-to-char v11, v4

    move/from16 v4, v22

    int-to-char v4, v4

    move v9, v4

    move v14, v10

    move v15, v11

    move/from16 v10, v19

    move v12, v10

    move-object/from16 v29, v23

    const/16 v26, 0x0

    move v11, v0

    move v0, v1

    move v4, v2

    move v1, v3

    move v3, v7

    move v2, v12

    :goto_6
    move v7, v6

    move v6, v2

    goto/16 :goto_9

    .line 68
    :cond_a
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 69
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_b
    move/from16 v24, v22

    move-object/from16 v25, v23

    const/16 v0, 0x20

    goto :goto_7

    :cond_c
    move/from16 v24, v22

    move-object/from16 v25, v23

    :goto_7
    if-ne v3, v0, :cond_f

    if-ne v9, v0, :cond_f

    if-ne v14, v0, :cond_f

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_e

    if-ne v1, v0, :cond_e

    int-to-char v0, v2

    int-to-char v1, v6

    int-to-char v2, v7

    int-to-char v3, v8

    .line 70
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_d

    .line 71
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v4, v2

    .line 72
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v6, v1

    int-to-char v1, v10

    int-to-char v2, v11

    int-to-char v3, v12

    int-to-char v7, v13

    int-to-char v9, v15

    int-to-char v5, v5

    move/from16 v8, v16

    int-to-char v11, v8

    move/from16 v8, v24

    int-to-char v8, v8

    move v12, v9

    move v15, v11

    move/from16 v10, v19

    move v14, v10

    move-object/from16 v29, v25

    const/16 v26, 0x0

    move v11, v0

    move v0, v1

    move v1, v2

    move v9, v8

    move v2, v14

    move v8, v5

    move v5, v3

    move v3, v7

    goto :goto_6

    .line 73
    :cond_d
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 74
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_e
    move/from16 v26, v24

    move-object/from16 v27, v25

    const/16 v0, 0x20

    goto :goto_8

    :cond_f
    move/from16 v26, v24

    move-object/from16 v27, v25

    :goto_8
    if-ne v6, v0, :cond_11

    if-ne v10, v0, :cond_11

    if-ne v15, v0, :cond_11

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_11

    if-ne v1, v0, :cond_11

    int-to-char v0, v2

    int-to-char v1, v3

    int-to-char v2, v7

    int-to-char v3, v8

    int-to-char v4, v9

    .line 75
    invoke-static {v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 76
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v4, v3

    .line 77
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v6, v2

    int-to-char v2, v11

    int-to-char v3, v12

    int-to-char v7, v13

    int-to-char v8, v14

    int-to-char v5, v5

    move/from16 v9, v16

    int-to-char v11, v9

    move/from16 v9, v26

    int-to-char v9, v9

    move v10, v0

    move v0, v2

    move v15, v11

    move/from16 v2, v19

    move v12, v2

    move v14, v12

    move-object/from16 v29, v27

    const/16 v26, 0x0

    move v11, v1

    move v1, v3

    move v3, v8

    move v8, v5

    move v5, v7

    move v7, v6

    move v6, v14

    goto/16 :goto_9

    .line 78
    :cond_10
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 79
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_11
    move/from16 v0, v16

    move/from16 v28, v26

    move-object/from16 v29, v27

    int-to-char v2, v2

    int-to-char v3, v3

    int-to-char v6, v6

    int-to-char v7, v7

    int-to-char v8, v8

    int-to-char v9, v9

    int-to-char v10, v10

    int-to-char v11, v11

    int-to-char v12, v12

    int-to-char v13, v13

    int-to-char v14, v14

    int-to-char v15, v15

    int-to-char v5, v5

    int-to-char v4, v4

    move/from16 v16, v2

    move/from16 v2, v19

    if-lt v0, v2, :cond_18

    move/from16 v17, v3

    const/16 v3, 0x39

    if-gt v0, v3, :cond_18

    if-lt v1, v2, :cond_18

    if-gt v1, v3, :cond_18

    move/from16 v18, v0

    move/from16 v0, v28

    if-lt v0, v2, :cond_18

    if-gt v0, v3, :cond_18

    add-int/lit8 v3, v18, -0x30

    mul-int/lit8 v3, v3, 0x64

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v3, v1

    add-int/lit8 v1, v0, -0x30

    add-int/2addr v3, v1

    const v0, 0xf4240

    mul-int/2addr v0, v3

    move v1, v6

    move v6, v5

    move v5, v1

    move/from16 v26, v0

    move v3, v7

    move v7, v9

    move/from16 v0, v16

    move/from16 v1, v17

    move v9, v4

    move v4, v8

    move v8, v13

    :goto_9
    if-lt v0, v2, :cond_17

    const/16 v13, 0x39

    if-gt v0, v13, :cond_17

    if-lt v1, v2, :cond_17

    if-gt v1, v13, :cond_17

    if-lt v5, v2, :cond_17

    if-gt v5, v13, :cond_17

    if-lt v3, v2, :cond_17

    if-gt v3, v13, :cond_17

    sub-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v0, v5

    sub-int/2addr v3, v2

    add-int v20, v0, v3

    if-lt v4, v2, :cond_16

    const/16 v3, 0x39

    if-gt v4, v3, :cond_16

    if-lt v7, v2, :cond_16

    if-gt v7, v3, :cond_16

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v7, v2

    add-int v21, v4, v7

    if-lt v10, v2, :cond_15

    if-gt v10, v3, :cond_15

    if-lt v11, v2, :cond_15

    if-gt v11, v3, :cond_15

    sub-int/2addr v10, v2

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v2

    add-int v22, v10, v11

    if-lt v12, v2, :cond_14

    if-gt v12, v3, :cond_14

    if-lt v8, v2, :cond_14

    if-gt v8, v3, :cond_14

    sub-int/2addr v12, v2

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v8, v2

    add-int v23, v12, v8

    if-lt v14, v2, :cond_13

    if-gt v14, v3, :cond_13

    if-lt v15, v2, :cond_13

    if-gt v15, v3, :cond_13

    sub-int/2addr v14, v2

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v15, v2

    add-int v24, v14, v15

    if-lt v6, v2, :cond_12

    if-gt v6, v3, :cond_12

    if-lt v9, v2, :cond_12

    if-gt v9, v3, :cond_12

    sub-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v9, v2

    add-int v25, v6, v9

    .line 80
    invoke-static/range {v20 .. v26}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 81
    :cond_12
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 82
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_13
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 83
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 84
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_14
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 85
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 86
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_15
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 87
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 88
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_16
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 89
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 90
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_17
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 91
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 92
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_18
    const/4 v0, 0x0

    return-object v0

    :cond_19
    move/from16 v2, p1

    move-object v1, v0

    move-object v3, v4

    .line 93
    new-instance v0, Ljava/lang/String;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 94
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseLocalDateTime17([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x11

    .line 1
    array-length v3, v0

    if-gt v2, v3, :cond_14

    .line 2
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 3
    aget-char v3, v0, v3

    add-int/lit8 v5, v1, 0x2

    .line 4
    aget-char v5, v0, v5

    add-int/lit8 v6, v1, 0x3

    .line 5
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x4

    .line 6
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x5

    .line 7
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x6

    .line 8
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x7

    .line 9
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x8

    .line 10
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x9

    .line 11
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0xa

    .line 12
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xb

    .line 13
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xc

    .line 14
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xd

    .line 15
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 16
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v18, v12

    .line 17
    aget-char v12, v0, v16

    add-int/lit8 v1, v1, 0x10

    .line 18
    aget-char v0, v0, v1

    const/16 v16, 0x0

    const/16 v1, 0x2d

    const/16 v21, 0x30

    if-ne v7, v1, :cond_2

    if-ne v10, v1, :cond_2

    const/16 v1, 0x54

    if-eq v13, v1, :cond_0

    const/16 v1, 0x20

    if-ne v13, v1, :cond_1

    :cond_0
    const/16 v1, 0x3a

    goto :goto_0

    :cond_1
    const/16 v1, 0x2d

    goto :goto_1

    :goto_0
    if-ne v4, v1, :cond_1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    move v13, v2

    move v10, v3

    move v7, v8

    move v8, v9

    move v9, v11

    move v11, v14

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v1, v21

    move v4, v1

    const/16 v26, 0x0

    move v14, v12

    move v12, v15

    move v15, v4

    goto/16 :goto_6

    :cond_2
    :goto_1
    if-ne v7, v1, :cond_4

    if-ne v9, v1, :cond_4

    const/16 v1, 0x20

    if-eq v11, v1, :cond_3

    const/16 v1, 0x54

    if-ne v11, v1, :cond_4

    :cond_3
    const/16 v1, 0x3a

    goto :goto_2

    :cond_4
    const/16 v1, 0x20

    goto :goto_4

    :goto_2
    if-ne v14, v1, :cond_4

    if-ne v2, v1, :cond_4

    move v1, v10

    move v10, v3

    move v3, v1

    move v1, v15

    move v15, v12

    move v12, v13

    move v13, v1

    move v14, v4

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v1, v21

    move v7, v1

    move v9, v7

    const/16 v26, 0x0

    :goto_3
    move v4, v0

    goto/16 :goto_6

    :goto_4
    if-ne v5, v1, :cond_7

    if-ne v9, v1, :cond_7

    if-ne v14, v1, :cond_7

    const/16 v1, 0x3a

    if-ne v2, v1, :cond_6

    .line 19
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_5

    .line 20
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v7, v2

    .line 21
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v8, v1

    move v14, v0

    move v2, v10

    move v10, v11

    move v6, v13

    move v11, v15

    move/from16 v9, v17

    move/from16 v5, v18

    move/from16 v1, v21

    move v15, v1

    const/16 v26, 0x0

    move v13, v12

    move v12, v4

    move v4, v15

    goto/16 :goto_6

    :cond_5
    return-object v16

    :cond_6
    const/16 v1, 0x20

    :cond_7
    if-ne v3, v1, :cond_a

    if-ne v8, v1, :cond_a

    if-ne v13, v1, :cond_a

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_9

    if-ne v2, v1, :cond_9

    .line 22
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_8

    .line 23
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v7, v2

    .line 24
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v8, v1

    move v2, v9

    move v5, v11

    move v15, v12

    move v12, v14

    move/from16 v3, v17

    move/from16 v6, v18

    move/from16 v1, v21

    move v9, v1

    move v11, v9

    move v13, v11

    const/16 v26, 0x0

    move v14, v4

    goto :goto_3

    :cond_8
    return-object v16

    :cond_9
    const/16 v1, 0x20

    :cond_a
    if-ne v3, v1, :cond_d

    if-ne v8, v1, :cond_d

    if-ne v13, v1, :cond_d

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_c

    if-ne v12, v1, :cond_c

    .line 25
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_b

    .line 26
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v7, v3

    .line 27
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v8, v1

    move v13, v4

    move v5, v11

    move v12, v14

    move/from16 v3, v17

    move/from16 v6, v18

    move/from16 v1, v21

    move v11, v1

    move v15, v11

    const/16 v26, 0x0

    move v4, v0

    :goto_5
    move v14, v2

    move v2, v9

    move v9, v15

    goto/16 :goto_6

    :cond_b
    return-object v16

    :cond_c
    const/16 v1, 0x20

    :cond_d
    if-ne v3, v1, :cond_10

    if-ne v8, v1, :cond_10

    if-ne v13, v1, :cond_10

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_f

    if-ne v12, v1, :cond_f

    .line 28
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_e

    .line 29
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v7, v3

    .line 30
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v8, v1

    move v4, v0

    move v5, v11

    move v11, v14

    move v12, v15

    move/from16 v3, v17

    move/from16 v6, v18

    move/from16 v1, v21

    move v13, v1

    move v15, v13

    const/16 v26, 0x0

    goto :goto_5

    :cond_e
    return-object v16

    :cond_f
    const/16 v1, 0x20

    :cond_10
    if-ne v5, v1, :cond_12

    if-ne v9, v1, :cond_12

    if-ne v14, v1, :cond_12

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_12

    if-ne v12, v1, :cond_12

    .line 31
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_11

    .line 32
    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v7, v4

    .line 33
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v8, v1

    move v4, v0

    move v14, v2

    move v2, v10

    move v10, v11

    move v6, v13

    move v12, v15

    move/from16 v9, v17

    move/from16 v5, v18

    move/from16 v1, v21

    move v11, v1

    move v13, v11

    move v15, v13

    const/16 v26, 0x0

    goto :goto_6

    :cond_11
    return-object v16

    :cond_12
    move/from16 v1, v21

    if-lt v2, v1, :cond_13

    move/from16 v19, v3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_13

    if-lt v12, v1, :cond_13

    if-gt v12, v3, :cond_13

    if-lt v0, v1, :cond_13

    if-gt v0, v3, :cond_13

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v12, v12, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/2addr v2, v12

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v2, v0

    const v0, 0xf4240

    mul-int/2addr v0, v2

    move/from16 v26, v0

    move v3, v10

    move/from16 v2, v17

    move/from16 v12, v18

    move/from16 v10, v19

    const/16 v1, 0x30

    :goto_6
    if-lt v2, v1, :cond_13

    const/16 v0, 0x39

    if-gt v2, v0, :cond_13

    if-lt v10, v1, :cond_13

    if-gt v10, v0, :cond_13

    if-lt v5, v1, :cond_13

    if-gt v5, v0, :cond_13

    if-lt v6, v1, :cond_13

    if-gt v6, v0, :cond_13

    sub-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v10, v1

    mul-int/lit8 v10, v10, 0x64

    add-int/2addr v2, v10

    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v2, v5

    sub-int/2addr v6, v1

    add-int v20, v2, v6

    if-lt v7, v1, :cond_13

    const/16 v0, 0x39

    if-gt v7, v0, :cond_13

    if-lt v8, v1, :cond_13

    if-gt v8, v0, :cond_13

    sub-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v1

    add-int v21, v7, v8

    if-lt v9, v1, :cond_13

    if-gt v9, v0, :cond_13

    if-lt v3, v1, :cond_13

    if-gt v3, v0, :cond_13

    sub-int/2addr v9, v1

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v3, v1

    add-int v22, v9, v3

    if-lt v11, v1, :cond_13

    if-gt v11, v0, :cond_13

    if-lt v12, v1, :cond_13

    if-gt v12, v0, :cond_13

    sub-int/2addr v11, v1

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v1

    add-int v23, v11, v12

    if-lt v13, v1, :cond_13

    if-gt v13, v0, :cond_13

    if-lt v14, v1, :cond_13

    if-gt v14, v0, :cond_13

    sub-int/2addr v13, v1

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v1

    add-int v24, v13, v14

    if-lt v15, v1, :cond_13

    if-gt v15, v0, :cond_13

    if-lt v4, v1, :cond_13

    if-gt v4, v0, :cond_13

    sub-int/2addr v15, v1

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v4, v1

    add-int v25, v15, v4

    .line 34
    invoke-static/range {v20 .. v26}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_13
    return-object v16

    .line 35
    :cond_14
    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 36
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public static parseLocalDateTime18([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x12

    .line 67
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_26

    .line 68
    aget-byte v2, v0, v1

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    .line 69
    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v6, v1, 0x2

    .line 70
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x3

    .line 71
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x4

    .line 72
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x5

    .line 73
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x6

    .line 74
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x7

    .line 75
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x8

    .line 76
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x9

    .line 77
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0xa

    .line 78
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xb

    .line 79
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xc

    .line 80
    aget-byte v4, v0, v16

    int-to-char v4, v4

    add-int/lit8 v16, v1, 0xd

    move/from16 v17, v2

    .line 81
    aget-byte v2, v0, v16

    int-to-char v2, v2

    add-int/lit8 v16, v1, 0xe

    move/from16 v18, v12

    .line 82
    aget-byte v12, v0, v16

    int-to-char v12, v12

    add-int/lit8 v16, v1, 0xf

    move/from16 v19, v12

    .line 83
    aget-byte v12, v0, v16

    int-to-char v12, v12

    add-int/lit8 v16, v1, 0x10

    move/from16 v20, v15

    .line 84
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0x11

    move-object/from16 v21, v5

    .line 85
    aget-byte v5, v0, v16

    int-to-char v5, v5

    move/from16 v16, v5

    const/16 v23, 0x30

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_2

    if-ne v10, v5, :cond_2

    const/16 v5, 0x20

    if-eq v13, v5, :cond_0

    const/16 v5, 0x54

    if-ne v13, v5, :cond_1

    :cond_0
    const/16 v5, 0x3a

    goto :goto_0

    :cond_1
    const/16 v5, 0x2d

    goto :goto_1

    :goto_0
    if-ne v4, v5, :cond_1

    if-ne v12, v5, :cond_1

    move v4, v2

    move v10, v9

    move v8, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v5, v23

    move v9, v5

    goto/16 :goto_f

    :cond_2
    :goto_1
    if-ne v8, v5, :cond_5

    if-ne v11, v5, :cond_5

    const/16 v5, 0x20

    if-eq v13, v5, :cond_3

    const/16 v5, 0x54

    if-ne v13, v5, :cond_4

    :cond_3
    const/16 v5, 0x3a

    goto :goto_2

    :cond_4
    const/16 v5, 0x2d

    goto :goto_3

    :goto_2
    if-ne v4, v5, :cond_4

    if-ne v12, v5, :cond_4

    move v4, v2

    move v8, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v5, v23

    move v11, v5

    goto/16 :goto_f

    :cond_5
    :goto_3
    if-ne v8, v5, :cond_8

    if-ne v11, v5, :cond_8

    const/16 v5, 0x20

    if-eq v14, v5, :cond_6

    const/16 v5, 0x54

    if-ne v14, v5, :cond_7

    :cond_6
    const/16 v5, 0x3a

    goto :goto_4

    :cond_7
    const/16 v5, 0x2d

    goto :goto_5

    :goto_4
    if-ne v4, v5, :cond_7

    if-ne v12, v5, :cond_7

    move v4, v2

    move v8, v15

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v5, v23

    move v14, v5

    goto/16 :goto_f

    :cond_8
    :goto_5
    if-ne v8, v5, :cond_b

    if-ne v11, v5, :cond_b

    const/16 v5, 0x20

    if-eq v14, v5, :cond_9

    const/16 v5, 0x54

    if-ne v14, v5, :cond_a

    :cond_9
    const/16 v5, 0x3a

    goto :goto_6

    :cond_a
    const/16 v5, 0x2d

    goto :goto_7

    :goto_6
    if-ne v2, v5, :cond_a

    if-ne v12, v5, :cond_a

    move v8, v15

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v14, v20

    move/from16 v5, v23

    move v15, v4

    move v4, v5

    goto/16 :goto_f

    :cond_b
    :goto_7
    if-ne v8, v5, :cond_d

    if-ne v11, v5, :cond_d

    const/16 v5, 0x20

    if-eq v14, v5, :cond_c

    const/16 v5, 0x54

    if-ne v14, v5, :cond_d

    :cond_c
    const/16 v5, 0x3a

    goto :goto_8

    :cond_d
    const/16 v5, 0x20

    goto :goto_9

    :goto_8
    if-ne v2, v5, :cond_d

    if-ne v15, v5, :cond_d

    move v15, v4

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v4, v19

    move/from16 v14, v20

    move/from16 v5, v23

    move v8, v5

    goto/16 :goto_f

    :goto_9
    if-ne v3, v5, :cond_f

    if-ne v9, v5, :cond_f

    if-ne v14, v5, :cond_f

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_f

    if-ne v12, v5, :cond_f

    .line 86
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_e

    .line 87
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v9, v4

    .line 88
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    move v4, v2

    move v2, v10

    move v7, v13

    move v8, v15

    move/from16 v13, v17

    move/from16 v6, v18

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v5, v23

    move v14, v5

    move v10, v3

    move v3, v11

    move v11, v14

    goto/16 :goto_f

    .line 89
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 90
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_f
    move-object/from16 v5, v21

    move/from16 v21, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    if-ne v9, v4, :cond_12

    if-ne v14, v4, :cond_12

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_11

    if-ne v12, v4, :cond_11

    .line 91
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 92
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v9, v3

    .line 93
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v3, v10

    move v10, v2

    move v2, v3

    move v3, v11

    move v7, v13

    move v8, v15

    move/from16 v13, v17

    move/from16 v6, v18

    move/from16 v12, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v4, v23

    move v11, v4

    :goto_a
    move-object/from16 v21, v5

    move v5, v11

    goto/16 :goto_f

    .line 94
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 95
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_11
    const/16 v4, 0x20

    :cond_12
    if-ne v3, v4, :cond_15

    if-ne v9, v4, :cond_15

    if-ne v14, v4, :cond_15

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_14

    if-ne v15, v4, :cond_14

    .line 96
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_13

    .line 97
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v9, v3

    .line 98
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v3, v10

    move v10, v2

    move v2, v3

    move v3, v11

    move v7, v13

    move/from16 v13, v17

    move/from16 v6, v18

    move/from16 v4, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v8, v23

    move v11, v8

    goto :goto_a

    .line 99
    :cond_13
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 100
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_14
    const/16 v4, 0x20

    :cond_15
    if-ne v6, v4, :cond_19

    if-ne v10, v4, :cond_19

    move/from16 v22, v3

    move/from16 v3, v20

    if-ne v3, v4, :cond_18

    move/from16 v4, v19

    move/from16 v19, v11

    const/16 v11, 0x3a

    if-ne v4, v11, :cond_17

    if-ne v15, v11, :cond_17

    .line 101
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_16

    .line 102
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v9, v4

    .line 103
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    move v15, v2

    move v10, v3

    move v6, v13

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v14, v21

    move/from16 v13, v22

    move/from16 v4, v23

    move v8, v4

    move-object/from16 v21, v5

    move v5, v8

    goto/16 :goto_f

    .line 104
    :cond_16
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 105
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_17
    :goto_b
    const/16 v11, 0x20

    goto :goto_d

    :cond_18
    move/from16 v4, v19

    :goto_c
    move/from16 v19, v11

    goto :goto_b

    :cond_19
    move/from16 v22, v3

    move/from16 v4, v19

    move/from16 v3, v20

    goto :goto_c

    :goto_d
    if-ne v6, v11, :cond_1c

    if-ne v10, v11, :cond_1c

    if-ne v3, v11, :cond_1c

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_1b

    if-ne v15, v11, :cond_1b

    .line 106
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_1a

    .line 107
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v9, v3

    .line 108
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v10, v2

    move v6, v13

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v15, v21

    move/from16 v13, v22

    move/from16 v8, v23

    move v14, v8

    :goto_e
    move-object/from16 v21, v5

    move v5, v14

    goto :goto_f

    .line 109
    :cond_1a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 110
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1b
    const/16 v11, 0x20

    :cond_1c
    if-ne v6, v11, :cond_25

    if-ne v10, v11, :cond_25

    if-ne v3, v11, :cond_25

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_25

    if-ne v12, v11, :cond_25

    .line 111
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_24

    .line 112
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v9, v3

    .line 113
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v10, v2

    move v12, v4

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v15, v21

    move/from16 v13, v22

    move/from16 v4, v23

    move v14, v4

    goto :goto_e

    :goto_f
    if-lt v2, v5, :cond_23

    const/16 v0, 0x39

    if-gt v2, v0, :cond_22

    if-lt v3, v5, :cond_22

    if-gt v3, v0, :cond_22

    if-lt v6, v5, :cond_22

    if-gt v6, v0, :cond_22

    if-lt v7, v5, :cond_22

    if-gt v7, v0, :cond_22

    sub-int/2addr v2, v5

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v7, v5

    add-int v24, v2, v7

    if-lt v9, v5, :cond_21

    if-gt v9, v0, :cond_21

    if-lt v10, v5, :cond_21

    if-gt v10, v0, :cond_21

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v5

    add-int v25, v9, v10

    if-lt v11, v5, :cond_20

    if-gt v11, v0, :cond_20

    if-lt v13, v5, :cond_20

    if-gt v13, v0, :cond_20

    sub-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v13, v5

    add-int v26, v11, v13

    if-lt v14, v5, :cond_1f

    if-gt v14, v0, :cond_1f

    if-lt v15, v5, :cond_1f

    if-gt v15, v0, :cond_1f

    sub-int/2addr v14, v5

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v15, v5

    add-int v27, v14, v15

    if-lt v4, v5, :cond_1e

    if-gt v4, v0, :cond_1e

    if-lt v12, v5, :cond_1e

    if-gt v12, v0, :cond_1e

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v12, v5

    add-int v28, v4, v12

    if-lt v8, v5, :cond_1d

    if-gt v8, v0, :cond_1d

    move/from16 v2, v16

    if-lt v2, v5, :cond_1d

    if-gt v2, v0, :cond_1d

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v5, v2, -0x30

    add-int v29, v8, v5

    .line 114
    invoke-static/range {v24 .. v29}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1d
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 116
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1e
    move-object/from16 v2, p0

    move-object/from16 v5, v21

    .line 117
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 118
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1f
    move-object/from16 v2, p0

    move-object/from16 v5, v21

    .line 119
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 120
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v5, v21

    .line 121
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 122
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_21
    move-object/from16 v2, p0

    move-object/from16 v5, v21

    .line 123
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 124
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_22
    move-object/from16 v2, p0

    :goto_10
    move-object/from16 v5, v21

    goto :goto_11

    :cond_23
    move-object v2, v0

    goto :goto_10

    .line 125
    :goto_11
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 126
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_24
    move-object v2, v0

    const/16 v3, 0x12

    const/4 v4, 0x0

    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 128
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_25
    move-object v2, v0

    .line 129
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 130
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_26
    move-object v2, v0

    .line 131
    new-instance v0, Ljava/lang/String;

    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 132
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseLocalDateTime18([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x12

    .line 1
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_26

    .line 2
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 3
    aget-char v3, v0, v3

    add-int/lit8 v6, v1, 0x2

    .line 4
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    .line 5
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    .line 6
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x5

    .line 7
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x6

    .line 8
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x7

    .line 9
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x8

    .line 10
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x9

    .line 11
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xa

    .line 12
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xb

    .line 13
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xc

    .line 14
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xd

    move/from16 v17, v2

    .line 15
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v18, v12

    .line 16
    aget-char v12, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v19, v12

    .line 17
    aget-char v12, v0, v16

    add-int/lit8 v16, v1, 0x10

    move/from16 v20, v15

    .line 18
    aget-char v15, v0, v16

    add-int/lit8 v16, v1, 0x11

    move-object/from16 v21, v5

    .line 19
    aget-char v5, v0, v16

    move/from16 v16, v5

    const/16 v23, 0x30

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_2

    if-ne v10, v5, :cond_2

    const/16 v5, 0x20

    if-eq v13, v5, :cond_0

    const/16 v5, 0x54

    if-ne v13, v5, :cond_1

    :cond_0
    const/16 v5, 0x3a

    goto :goto_0

    :cond_1
    const/16 v5, 0x2d

    goto :goto_1

    :goto_0
    if-ne v4, v5, :cond_1

    if-ne v12, v5, :cond_1

    move v4, v2

    move v10, v9

    move v8, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v5, v23

    move v9, v5

    goto/16 :goto_f

    :cond_2
    :goto_1
    if-ne v8, v5, :cond_5

    if-ne v11, v5, :cond_5

    const/16 v5, 0x20

    if-eq v13, v5, :cond_3

    const/16 v5, 0x54

    if-ne v13, v5, :cond_4

    :cond_3
    const/16 v5, 0x3a

    goto :goto_2

    :cond_4
    const/16 v5, 0x2d

    goto :goto_3

    :goto_2
    if-ne v4, v5, :cond_4

    if-ne v12, v5, :cond_4

    move v4, v2

    move v8, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v5, v23

    move v11, v5

    goto/16 :goto_f

    :cond_5
    :goto_3
    if-ne v8, v5, :cond_8

    if-ne v11, v5, :cond_8

    const/16 v5, 0x20

    if-eq v14, v5, :cond_6

    const/16 v5, 0x54

    if-ne v14, v5, :cond_7

    :cond_6
    const/16 v5, 0x3a

    goto :goto_4

    :cond_7
    const/16 v5, 0x2d

    goto :goto_5

    :goto_4
    if-ne v4, v5, :cond_7

    if-ne v12, v5, :cond_7

    move v4, v2

    move v8, v15

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v5, v23

    move v14, v5

    goto/16 :goto_f

    :cond_8
    :goto_5
    if-ne v8, v5, :cond_b

    if-ne v11, v5, :cond_b

    const/16 v5, 0x20

    if-eq v14, v5, :cond_9

    const/16 v5, 0x54

    if-ne v14, v5, :cond_a

    :cond_9
    const/16 v5, 0x3a

    goto :goto_6

    :cond_a
    const/16 v5, 0x2d

    goto :goto_7

    :goto_6
    if-ne v2, v5, :cond_a

    if-ne v12, v5, :cond_a

    move v8, v15

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v14, v20

    move/from16 v5, v23

    move v15, v4

    move v4, v5

    goto/16 :goto_f

    :cond_b
    :goto_7
    if-ne v8, v5, :cond_d

    if-ne v11, v5, :cond_d

    const/16 v5, 0x20

    if-eq v14, v5, :cond_c

    const/16 v5, 0x54

    if-ne v14, v5, :cond_d

    :cond_c
    const/16 v5, 0x3a

    goto :goto_8

    :cond_d
    const/16 v5, 0x20

    goto :goto_9

    :goto_8
    if-ne v2, v5, :cond_d

    if-ne v15, v5, :cond_d

    move v15, v4

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v4, v19

    move/from16 v14, v20

    move/from16 v5, v23

    move v8, v5

    goto/16 :goto_f

    :goto_9
    if-ne v3, v5, :cond_f

    if-ne v9, v5, :cond_f

    if-ne v14, v5, :cond_f

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_f

    if-ne v12, v5, :cond_f

    .line 20
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_e

    .line 21
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v9, v4

    .line 22
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    move v4, v2

    move v2, v10

    move v7, v13

    move v8, v15

    move/from16 v13, v17

    move/from16 v6, v18

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v5, v23

    move v14, v5

    move v10, v3

    move v3, v11

    move v11, v14

    goto/16 :goto_f

    .line 23
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_f
    move-object/from16 v5, v21

    move/from16 v21, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    if-ne v9, v4, :cond_12

    if-ne v14, v4, :cond_12

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_11

    if-ne v12, v4, :cond_11

    .line 25
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 26
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v9, v3

    .line 27
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v3, v10

    move v10, v2

    move v2, v3

    move v3, v11

    move v7, v13

    move v8, v15

    move/from16 v13, v17

    move/from16 v6, v18

    move/from16 v12, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v4, v23

    move v11, v4

    :goto_a
    move-object/from16 v21, v5

    move v5, v11

    goto/16 :goto_f

    .line 28
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 29
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_11
    const/16 v4, 0x20

    :cond_12
    if-ne v3, v4, :cond_15

    if-ne v9, v4, :cond_15

    if-ne v14, v4, :cond_15

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_14

    if-ne v15, v4, :cond_14

    .line 30
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_13

    .line 31
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v9, v3

    .line 32
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v3, v10

    move v10, v2

    move v2, v3

    move v3, v11

    move v7, v13

    move/from16 v13, v17

    move/from16 v6, v18

    move/from16 v4, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v8, v23

    move v11, v8

    goto :goto_a

    .line 33
    :cond_13
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 34
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_14
    const/16 v4, 0x20

    :cond_15
    if-ne v6, v4, :cond_19

    if-ne v10, v4, :cond_19

    move/from16 v22, v3

    move/from16 v3, v20

    if-ne v3, v4, :cond_18

    move/from16 v4, v19

    move/from16 v19, v11

    const/16 v11, 0x3a

    if-ne v4, v11, :cond_17

    if-ne v15, v11, :cond_17

    .line 35
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_16

    .line 36
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v9, v4

    .line 37
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    move v15, v2

    move v10, v3

    move v6, v13

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v14, v21

    move/from16 v13, v22

    move/from16 v4, v23

    move v8, v4

    move-object/from16 v21, v5

    move v5, v8

    goto/16 :goto_f

    .line 38
    :cond_16
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 39
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_17
    :goto_b
    const/16 v11, 0x20

    goto :goto_d

    :cond_18
    move/from16 v4, v19

    :goto_c
    move/from16 v19, v11

    goto :goto_b

    :cond_19
    move/from16 v22, v3

    move/from16 v4, v19

    move/from16 v3, v20

    goto :goto_c

    :goto_d
    if-ne v6, v11, :cond_1c

    if-ne v10, v11, :cond_1c

    if-ne v3, v11, :cond_1c

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_1b

    if-ne v15, v11, :cond_1b

    .line 40
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_1a

    .line 41
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v9, v3

    .line 42
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v10, v2

    move v6, v13

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v15, v21

    move/from16 v13, v22

    move/from16 v8, v23

    move v14, v8

    :goto_e
    move-object/from16 v21, v5

    move v5, v14

    goto :goto_f

    .line 43
    :cond_1a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 44
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1b
    const/16 v11, 0x20

    :cond_1c
    if-ne v6, v11, :cond_25

    if-ne v10, v11, :cond_25

    if-ne v3, v11, :cond_25

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_25

    if-ne v12, v11, :cond_25

    .line 45
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_24

    .line 46
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v9, v3

    .line 47
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v10, v2

    move v12, v4

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v15, v21

    move/from16 v13, v22

    move/from16 v4, v23

    move v14, v4

    goto :goto_e

    :goto_f
    if-lt v2, v5, :cond_23

    const/16 v0, 0x39

    if-gt v2, v0, :cond_22

    if-lt v3, v5, :cond_22

    if-gt v3, v0, :cond_22

    if-lt v6, v5, :cond_22

    if-gt v6, v0, :cond_22

    if-lt v7, v5, :cond_22

    if-gt v7, v0, :cond_22

    sub-int/2addr v2, v5

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v7, v5

    add-int v24, v2, v7

    if-lt v9, v5, :cond_21

    if-gt v9, v0, :cond_21

    if-lt v10, v5, :cond_21

    if-gt v10, v0, :cond_21

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v5

    add-int v25, v9, v10

    if-lt v11, v5, :cond_20

    if-gt v11, v0, :cond_20

    if-lt v13, v5, :cond_20

    if-gt v13, v0, :cond_20

    sub-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v13, v5

    add-int v26, v11, v13

    if-lt v14, v5, :cond_1f

    if-gt v14, v0, :cond_1f

    if-lt v15, v5, :cond_1f

    if-gt v15, v0, :cond_1f

    sub-int/2addr v14, v5

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v15, v5

    add-int v27, v14, v15

    if-lt v4, v5, :cond_1e

    if-gt v4, v0, :cond_1e

    if-lt v12, v5, :cond_1e

    if-gt v12, v0, :cond_1e

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v12, v5

    add-int v28, v4, v12

    if-lt v8, v5, :cond_1d

    if-gt v8, v0, :cond_1d

    move/from16 v2, v16

    if-lt v2, v5, :cond_1d

    if-gt v2, v0, :cond_1d

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v5, v2, -0x30

    add-int v29, v8, v5

    .line 48
    invoke-static/range {v24 .. v29}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1d
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 50
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1e
    move-object/from16 v2, p0

    move-object/from16 v5, v21

    .line 51
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 52
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1f
    move-object/from16 v2, p0

    move-object/from16 v5, v21

    .line 53
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 54
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v5, v21

    .line 55
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 56
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_21
    move-object/from16 v2, p0

    move-object/from16 v5, v21

    .line 57
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 58
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_22
    move-object/from16 v2, p0

    :goto_10
    move-object/from16 v5, v21

    goto :goto_11

    :cond_23
    move-object v2, v0

    goto :goto_10

    .line 59
    :goto_11
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 60
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_24
    move-object v2, v0

    const/16 v3, 0x12

    const/4 v4, 0x0

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 62
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_25
    move-object v2, v0

    .line 63
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 64
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_26
    move-object v2, v0

    .line 65
    new-instance v0, Ljava/lang/String;

    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 66
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseLocalDateTime19([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 25
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 26
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x1

    .line 27
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x2

    .line 28
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x3

    .line 29
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x4

    .line 30
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x5

    .line 31
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x6

    .line 32
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x7

    .line 33
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x8

    .line 34
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 35
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 36
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 37
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 38
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 39
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v17, v3

    .line 40
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    .line 41
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x10

    move/from16 v25, v0

    .line 42
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x11

    move/from16 v18, v1

    .line 43
    aget-byte v1, p0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0x12

    move/from16 v26, v1

    .line 44
    aget-byte v1, p0, v16

    int-to-char v1, v1

    move/from16 v27, v1

    const/16 v1, 0x2d

    if-ne v6, v1, :cond_2

    if-ne v9, v1, :cond_2

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_2

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_2

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x2f

    if-ne v6, v1, :cond_5

    if-ne v9, v1, :cond_5

    const/16 v1, 0x20

    if-eq v12, v1, :cond_3

    const/16 v1, 0x54

    if-ne v12, v1, :cond_4

    :cond_3
    const/16 v1, 0x3a

    goto :goto_0

    :cond_4
    const/16 v1, 0x2f

    goto :goto_2

    :goto_0
    if-ne v15, v1, :cond_4

    if-ne v0, v1, :cond_4

    :goto_1
    move v15, v2

    move/from16 v24, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v14, v18

    move/from16 v18, v7

    goto/16 :goto_7

    :cond_5
    :goto_2
    if-ne v4, v1, :cond_7

    if-ne v7, v1, :cond_7

    const/16 v1, 0x20

    if-eq v12, v1, :cond_6

    const/16 v1, 0x54

    if-ne v12, v1, :cond_7

    :cond_6
    const/16 v1, 0x3a

    goto :goto_3

    :cond_7
    const/16 v1, 0x20

    goto :goto_5

    :goto_3
    if-ne v15, v1, :cond_7

    if-ne v0, v1, :cond_7

    move/from16 v21, v2

    move/from16 v24, v3

    move/from16 v19, v6

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v20, v18

    :goto_4
    move/from16 v18, v5

    move v14, v8

    goto :goto_7

    :goto_5
    if-ne v2, v1, :cond_9

    if-ne v7, v1, :cond_9

    if-ne v12, v1, :cond_9

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_9

    if-ne v0, v1, :cond_9

    .line 45
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    const/16 v1, 0x30

    if-lez v0, :cond_8

    .line 46
    div-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    int-to-char v2, v2

    .line 47
    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    move v6, v0

    move v5, v2

    goto :goto_6

    :cond_8
    move v5, v1

    move v6, v5

    :goto_6
    move/from16 v20, v1

    move/from16 v24, v3

    move/from16 v19, v6

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v21, v18

    goto :goto_4

    .line 48
    :goto_7
    invoke-static/range {v14 .. v27}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v17
.end method

.method public static parseLocalDateTime19([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 5
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 6
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 7
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 8
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 9
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-char v22, v0, v13

    add-int/lit8 v13, p1, 0xc

    .line 14
    aget-char v23, v0, v13

    add-int/lit8 v13, p1, 0xd

    .line 15
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xe

    .line 16
    aget-char v24, v0, v14

    add-int/lit8 v14, p1, 0xf

    .line 17
    aget-char v25, v0, v14

    add-int/lit8 v14, p1, 0x10

    .line 18
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0x11

    .line 19
    aget-char v26, v0, v15

    add-int/lit8 v15, p1, 0x12

    .line 20
    aget-char v27, v0, v15

    const/16 v0, 0x2d

    move-object/from16 v16, v3

    const/16 v3, 0x20

    const/16 v15, 0x3a

    if-ne v6, v0, :cond_2

    if-ne v9, v0, :cond_2

    if-eq v12, v3, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_2

    :cond_1
    if-ne v13, v15, :cond_2

    if-ne v14, v15, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2f

    if-ne v6, v0, :cond_4

    if-ne v9, v0, :cond_4

    if-eq v12, v3, :cond_3

    const/16 v3, 0x54

    if-ne v12, v3, :cond_4

    :cond_3
    if-ne v13, v15, :cond_4

    if-ne v14, v15, :cond_4

    :goto_0
    move v14, v1

    move v15, v2

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    goto :goto_5

    :cond_4
    if-ne v4, v0, :cond_5

    if-ne v7, v0, :cond_5

    const/16 v0, 0x20

    if-eq v12, v0, :cond_6

    const/16 v0, 0x54

    if-ne v12, v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x20

    goto :goto_3

    :cond_6
    :goto_1
    if-ne v13, v15, :cond_5

    if-ne v14, v15, :cond_5

    move/from16 v20, v1

    move/from16 v21, v2

    :goto_2
    move/from16 v18, v5

    move/from16 v19, v6

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    goto :goto_5

    :goto_3
    if-ne v2, v0, :cond_8

    if-ne v7, v0, :cond_8

    if-ne v12, v0, :cond_8

    if-ne v13, v15, :cond_8

    if-ne v14, v15, :cond_8

    .line 21
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    const/16 v2, 0x30

    if-lez v0, :cond_7

    .line 22
    div-int/lit8 v3, v0, 0xa

    add-int/2addr v3, v2

    int-to-char v3, v3

    .line 23
    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    int-to-char v0, v0

    move v6, v0

    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v2

    move v6, v5

    :goto_4
    move/from16 v21, v1

    move/from16 v20, v2

    goto :goto_2

    .line 24
    :goto_5
    invoke-static/range {v14 .. v27}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v16
.end method

.method public static parseLocalDateTime20([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 22

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 26
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 27
    :cond_0
    aget-byte v2, v0, p1

    int-to-char v10, v2

    add-int/lit8 v2, p1, 0x1

    .line 28
    aget-byte v2, v0, v2

    int-to-char v11, v2

    add-int/lit8 v2, p1, 0x2

    .line 29
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x3

    .line 30
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 31
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 32
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 33
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 34
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 35
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v12, p1, 0x9

    .line 36
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xa

    .line 37
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xb

    .line 38
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xc

    .line 39
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xd

    move-object/from16 v17, v3

    .line 40
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xe

    .line 41
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v1

    .line 42
    aget-byte v1, p0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v1

    .line 43
    aget-byte v1, p0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v1

    .line 44
    aget-byte v1, p0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v3

    .line 45
    aget-byte v3, p0, v16

    int-to-char v3, v3

    move/from16 v16, v3

    .line 46
    aget-byte v3, p0, v18

    int-to-char v3, v3

    move/from16 v18, v3

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    if-ne v7, v3, :cond_3

    if-ne v14, v3, :cond_3

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_3

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 47
    :cond_1
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    const/16 v1, 0x30

    if-lez v0, :cond_2

    .line 48
    div-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    int-to-char v2, v2

    .line 49
    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    int-to-char v1, v0

    move v4, v8

    move v5, v9

    move v9, v1

    move v8, v2

    :goto_0
    move v6, v12

    move v7, v13

    move v12, v15

    move/from16 v17, v18

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v13, v21

    goto :goto_1

    :cond_2
    move v4, v8

    move v5, v9

    move v8, v1

    move v9, v8

    goto :goto_0

    .line 50
    :goto_1
    invoke-static/range {v4 .. v17}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    return-object v17
.end method

.method public static parseLocalDateTime20([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 21

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v10, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-char v11, v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 4
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-char v9, v0, v9

    add-int/lit8 v12, p1, 0x9

    .line 11
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xa

    .line 12
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xb

    .line 13
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xc

    .line 14
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xd

    .line 15
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xe

    move-object/from16 v18, v3

    .line 16
    aget-char v3, v0, v17

    add-int/lit8 v17, p1, 0xf

    .line 17
    aget-char v17, v0, v17

    add-int/lit8 v19, p1, 0x10

    .line 18
    aget-char v19, v0, v19

    add-int/lit8 v20, p1, 0x11

    .line 19
    aget-char v0, p0, v20

    add-int/lit8 v20, p1, 0x12

    .line 20
    aget-char v20, p0, v20

    .line 21
    aget-char v1, p0, v1

    move/from16 p0, v1

    const/16 v1, 0x20

    if-ne v2, v1, :cond_3

    if-ne v7, v1, :cond_3

    if-ne v14, v1, :cond_3

    const/16 v1, 0x3a

    if-ne v3, v1, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 22
    :cond_1
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    const/16 v1, 0x30

    if-lez v0, :cond_2

    .line 23
    div-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    int-to-char v2, v2

    .line 24
    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    int-to-char v1, v0

    move v4, v8

    move v5, v9

    move v9, v1

    move v8, v2

    :goto_0
    move v6, v12

    move v7, v13

    move v12, v15

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, p0

    goto :goto_1

    :cond_2
    move v4, v8

    move v5, v9

    move v8, v1

    move v9, v8

    goto :goto_0

    .line 25
    :goto_1
    invoke-static/range {v4 .. v17}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    return-object v18
.end method

.method public static parseLocalDateTime26([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1a

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 6
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 7
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 8
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 9
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v17, v3

    .line 16
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    .line 17
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v0

    .line 18
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x11

    move/from16 v19, v3

    .line 19
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x12

    move/from16 v20, v3

    .line 20
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x13

    move/from16 v21, v3

    .line 21
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x14

    move/from16 v22, v4

    .line 22
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x15

    move/from16 v23, v4

    .line 23
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x16

    move/from16 v24, v4

    .line 24
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x17

    move/from16 v25, v4

    .line 25
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x18

    move/from16 v26, v4

    .line 26
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x19

    move/from16 v27, v4

    .line 27
    aget-byte v4, p0, v16

    int-to-char v4, v4

    move/from16 v16, v4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_3

    if-ne v2, v4, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v0, v1, :cond_3

    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v15, v18

    move/from16 v18, v23

    move/from16 v23, v16

    move/from16 v16, v20

    move/from16 v20, v25

    const/16 v25, 0x30

    move/from16 v17, v21

    move/from16 v21, v26

    const/16 v26, 0x30

    move v12, v13

    move v13, v14

    move/from16 v14, v19

    move/from16 v19, v24

    const/16 v24, 0x30

    move/from16 v4, v22

    move/from16 v22, v27

    .line 28
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v17
.end method

.method public static parseLocalDateTime26([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1a

    .line 29
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 30
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 31
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 32
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 33
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 34
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 35
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 36
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 37
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 38
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 39
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 40
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 41
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 42
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 43
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 44
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 45
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    move-object/from16 v19, v3

    .line 46
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 47
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 48
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    .line 49
    aget-char v0, p0, v21

    add-int/lit8 v21, p1, 0x14

    .line 50
    aget-char v21, p0, v21

    add-int/lit8 v22, p1, 0x15

    .line 51
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 52
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x17

    .line 53
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 54
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x19

    .line 55
    aget-char v26, p0, v26

    move/from16 v27, v4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_1

    if-ne v2, v4, :cond_1

    const/16 v1, 0x20

    if-eq v12, v1, :cond_2

    const/16 v1, 0x54

    if-ne v12, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v0, v19

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_1

    if-ne v3, v1, :cond_1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v19, v22

    move/from16 v22, v25

    const/16 v25, 0x30

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v20, v23

    move/from16 v23, v26

    const/16 v26, 0x30

    move v12, v13

    move v13, v14

    move/from16 v14, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v21, v24

    const/16 v24, 0x30

    move/from16 v4, v27

    .line 56
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public static parseLocalDateTime27([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 29

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1b

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 6
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 7
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 8
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 9
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v17, v3

    .line 16
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    .line 17
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v0

    .line 18
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x11

    move/from16 v19, v3

    .line 19
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x12

    move/from16 v20, v3

    .line 20
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x13

    move/from16 v21, v3

    .line 21
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x14

    move/from16 v22, v4

    .line 22
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x15

    move/from16 v23, v4

    .line 23
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x16

    move/from16 v24, v4

    .line 24
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x17

    move/from16 v25, v4

    .line 25
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x18

    move/from16 v26, v4

    .line 26
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x19

    move/from16 v27, v4

    .line 27
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1a

    move/from16 v28, v4

    .line 28
    aget-byte v4, p0, v16

    int-to-char v4, v4

    move/from16 v16, v4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_3

    if-ne v2, v4, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v0, v1, :cond_3

    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v12, v13

    move v13, v14

    move/from16 v14, v19

    move/from16 v19, v24

    move/from16 v24, v16

    move/from16 v16, v20

    move/from16 v20, v25

    const/16 v25, 0x30

    move/from16 v17, v21

    move/from16 v21, v26

    const/16 v26, 0x30

    move/from16 v15, v18

    move/from16 v4, v22

    move/from16 v18, v23

    move/from16 v22, v27

    move/from16 v23, v28

    .line 29
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v17
.end method

.method public static parseLocalDateTime27([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 29

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1b

    .line 30
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 31
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 32
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 33
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 34
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 35
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 36
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 37
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 38
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 39
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 40
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 41
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 42
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 43
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 44
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 45
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 46
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    move-object/from16 v19, v3

    .line 47
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 48
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 49
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    .line 50
    aget-char v0, p0, v21

    add-int/lit8 v21, p1, 0x14

    .line 51
    aget-char v21, p0, v21

    add-int/lit8 v22, p1, 0x15

    .line 52
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 53
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x17

    .line 54
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 55
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x19

    .line 56
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x1a

    .line 57
    aget-char v27, p0, v27

    move/from16 v28, v4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_1

    if-ne v2, v4, :cond_1

    const/16 v1, 0x20

    if-eq v12, v1, :cond_2

    const/16 v1, 0x54

    if-ne v12, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v0, v19

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_1

    if-ne v3, v1, :cond_1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v19, v22

    move/from16 v22, v25

    const/16 v25, 0x30

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v20, v23

    move/from16 v23, v26

    const/16 v26, 0x30

    move v12, v13

    move v13, v14

    move/from16 v14, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v21, v24

    move/from16 v24, v27

    move/from16 v4, v28

    .line 58
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public static parseLocalDateTime28([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1c

    .line 31
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 32
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 33
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 34
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 35
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 36
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 37
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 38
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 39
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 40
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 41
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 42
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 43
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 44
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 45
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v17, v3

    .line 46
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    .line 47
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v0

    .line 48
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x11

    move/from16 v19, v3

    .line 49
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x12

    move/from16 v20, v3

    .line 50
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x13

    move/from16 v21, v3

    .line 51
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x14

    move/from16 v22, v4

    .line 52
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x15

    move/from16 v23, v4

    .line 53
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x16

    move/from16 v24, v4

    .line 54
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x17

    move/from16 v25, v4

    .line 55
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x18

    move/from16 v26, v4

    .line 56
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x19

    move/from16 v27, v4

    .line 57
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1a

    move/from16 v28, v4

    .line 58
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1b

    move/from16 v29, v4

    .line 59
    aget-byte v4, p0, v16

    int-to-char v4, v4

    move/from16 v16, v4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_1

    if-ne v2, v4, :cond_1

    const/16 v1, 0x20

    if-eq v12, v1, :cond_2

    const/16 v1, 0x54

    if-ne v12, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v0, v17

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2e

    if-eq v3, v0, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v17, v21

    move/from16 v21, v26

    const/16 v26, 0x30

    move/from16 v4, v25

    move/from16 v25, v16

    move/from16 v16, v20

    move/from16 v20, v4

    move v12, v13

    move v13, v14

    move/from16 v15, v18

    move/from16 v14, v19

    move/from16 v4, v22

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v22, v27

    move/from16 v23, v28

    move/from16 v24, v29

    .line 60
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public static parseLocalDateTime28([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1c

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 5
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 6
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 7
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 8
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 9
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 16
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 17
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    move-object/from16 v19, v3

    .line 18
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 19
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 20
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    .line 21
    aget-char v0, p0, v21

    add-int/lit8 v21, p1, 0x14

    .line 22
    aget-char v21, p0, v21

    add-int/lit8 v22, p1, 0x15

    .line 23
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 24
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x17

    .line 25
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 26
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x19

    .line 27
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x1a

    .line 28
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x1b

    .line 29
    aget-char v28, p0, v28

    move/from16 v29, v4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_3

    if-ne v2, v4, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v20, v23

    move/from16 v23, v26

    const/16 v26, 0x30

    move v12, v13

    move v13, v14

    move/from16 v14, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v21, v24

    move/from16 v22, v25

    move/from16 v24, v27

    move/from16 v25, v28

    move/from16 v4, v29

    .line 30
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v19
.end method

.method public static parseLocalDateTime29([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1d

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 6
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 7
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 8
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 9
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v27, v3

    .line 16
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    .line 17
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x10

    move/from16 v17, v0

    .line 18
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x11

    move/from16 v18, v3

    .line 19
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x12

    move/from16 v19, v3

    .line 20
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x13

    move/from16 v20, v3

    .line 21
    aget-byte v3, p0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x14

    move/from16 v21, v4

    .line 22
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x15

    move/from16 v22, v4

    .line 23
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x16

    move/from16 v23, v4

    .line 24
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x17

    move/from16 v24, v4

    .line 25
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x18

    move/from16 v25, v4

    .line 26
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x19

    move/from16 v26, v4

    .line 27
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1a

    move/from16 v28, v4

    .line 28
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1b

    move/from16 v29, v4

    .line 29
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1c

    move/from16 v30, v4

    .line 30
    aget-byte v4, p0, v16

    int-to-char v4, v4

    move/from16 v16, v4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_3

    if-ne v2, v4, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v0, v1, :cond_3

    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v12, v13

    move v13, v14

    move/from16 v15, v17

    move/from16 v14, v18

    move/from16 v17, v20

    move/from16 v4, v21

    move/from16 v18, v22

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v22, v26

    move/from16 v24, v29

    move/from16 v25, v30

    move/from16 v26, v16

    move/from16 v16, v19

    move/from16 v19, v23

    move/from16 v23, v28

    .line 31
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v27
.end method

.method public static parseLocalDateTime29([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1d

    .line 32
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 33
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 34
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 35
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 36
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 37
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 38
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 39
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 40
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 41
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 42
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 43
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 44
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 45
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 46
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 47
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 48
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    move-object/from16 v27, v3

    .line 49
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 50
    aget-char v18, v0, v18

    add-int/lit8 v19, p1, 0x12

    .line 51
    aget-char v19, v0, v19

    add-int/lit8 v20, p1, 0x13

    .line 52
    aget-char v0, p0, v20

    add-int/lit8 v20, p1, 0x14

    .line 53
    aget-char v20, p0, v20

    add-int/lit8 v21, p1, 0x15

    .line 54
    aget-char v21, p0, v21

    add-int/lit8 v22, p1, 0x16

    .line 55
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x17

    .line 56
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x18

    .line 57
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x19

    .line 58
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x1a

    .line 59
    aget-char v26, p0, v26

    add-int/lit8 v28, p1, 0x1b

    .line 60
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x1c

    .line 61
    aget-char v29, p0, v29

    move/from16 v30, v4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_3

    if-ne v2, v4, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v12, v13

    move v13, v14

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v26

    move/from16 v25, v28

    move/from16 v26, v29

    move/from16 v4, v30

    .line 62
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v27
.end method

.method public static parseLocalDateTimeX([BII)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 30

    move/from16 v0, p2

    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/16 v3, 0x1d

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 67
    :cond_3
    aget-byte v3, p0, p1

    int-to-char v4, v3

    add-int/lit8 v3, p1, 0x1

    .line 68
    aget-byte v3, p0, v3

    int-to-char v5, v3

    add-int/lit8 v3, p1, 0x2

    .line 69
    aget-byte v3, p0, v3

    int-to-char v6, v3

    add-int/lit8 v3, p1, 0x3

    .line 70
    aget-byte v3, p0, v3

    int-to-char v7, v3

    add-int/lit8 v3, p1, 0x4

    .line 71
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v8, p1, 0x5

    .line 72
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x6

    .line 73
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x7

    .line 74
    aget-byte v10, p0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x8

    .line 75
    aget-byte v11, p0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0x9

    .line 76
    aget-byte v12, p0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xa

    .line 77
    aget-byte v13, p0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xb

    .line 78
    aget-byte v14, p0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xc

    .line 79
    aget-byte v15, p0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xd

    const/16 v27, 0x0

    .line 80
    aget-byte v1, p0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0xe

    move/from16 v17, v2

    .line 81
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0xf

    .line 82
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v0

    .line 83
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x11

    move/from16 v19, v2

    .line 84
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0x12

    move/from16 v20, v2

    .line 85
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0x13

    move/from16 v21, v2

    .line 86
    aget-byte v2, p0, v16

    int-to-char v2, v2

    const/16 v16, 0x30

    packed-switch p2, :pswitch_data_0

    add-int/lit8 v16, p1, 0x14

    move/from16 v22, v4

    .line 87
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x15

    move/from16 v17, v4

    .line 88
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x16

    move/from16 v23, v4

    .line 89
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x17

    move/from16 v24, v4

    .line 90
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x18

    move/from16 v25, v4

    .line 91
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x19

    move/from16 v26, v4

    .line 92
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1a

    move/from16 p2, v4

    .line 93
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1b

    move/from16 v28, v4

    .line 94
    aget-byte v4, p0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0x1c

    move/from16 v29, v4

    .line 95
    aget-byte v4, p0, v16

    int-to-char v4, v4

    move/from16 p0, v28

    move/from16 v28, v20

    move/from16 v20, v24

    move/from16 v24, p0

    move/from16 p0, v29

    move/from16 v29, v21

    move/from16 v21, v25

    move/from16 v25, p0

    move/from16 p0, v17

    move/from16 v17, v22

    move/from16 v16, v23

    move/from16 v22, v26

    move/from16 v23, p2

    move/from16 v26, v4

    goto/16 :goto_1

    :pswitch_0
    move/from16 v22, v4

    add-int/lit8 v4, p1, 0x14

    .line 96
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x15

    move/from16 v23, v4

    .line 97
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x16

    move/from16 v24, v4

    .line 98
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x17

    move/from16 v25, v4

    .line 99
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x18

    move/from16 v26, v4

    .line 100
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x19

    move/from16 v28, v4

    .line 101
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x1a

    move/from16 v29, v4

    .line 102
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x1b

    move/from16 p2, v4

    .line 103
    aget-byte v4, p0, v17

    int-to-char v4, v4

    move/from16 v17, v22

    move/from16 p0, v23

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v20, v25

    move/from16 v21, v26

    move/from16 v25, v4

    move/from16 v26, v16

    move/from16 v16, v24

    move/from16 v24, p2

    goto/16 :goto_1

    :pswitch_1
    move/from16 v22, v4

    add-int/lit8 v4, p1, 0x14

    .line 104
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x15

    move/from16 v23, v4

    .line 105
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x16

    move/from16 v24, v4

    .line 106
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x17

    move/from16 v25, v4

    .line 107
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x18

    move/from16 v26, v4

    .line 108
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x19

    move/from16 v28, v4

    .line 109
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x1a

    move/from16 v29, v4

    .line 110
    aget-byte v4, p0, v17

    int-to-char v4, v4

    move/from16 v17, v22

    move/from16 p0, v23

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v20, v25

    move/from16 v21, v26

    move/from16 v25, v16

    move/from16 v26, v25

    move/from16 v16, v24

    move/from16 v24, v4

    goto/16 :goto_1

    :pswitch_2
    move/from16 v22, v4

    add-int/lit8 v4, p1, 0x14

    .line 111
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x15

    move/from16 v23, v4

    .line 112
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x16

    move/from16 v24, v4

    .line 113
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x17

    move/from16 v25, v4

    .line 114
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x18

    move/from16 v26, v4

    .line 115
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x19

    move/from16 v28, v4

    .line 116
    aget-byte v4, p0, v17

    int-to-char v4, v4

    move/from16 v29, v21

    move/from16 v17, v22

    move/from16 p0, v23

    move/from16 v21, v26

    move/from16 v22, v28

    move/from16 v23, v4

    move/from16 v26, v16

    move/from16 v28, v20

    move/from16 v20, v25

    move/from16 v25, v26

    :goto_0
    move/from16 v16, v24

    move/from16 v24, v25

    goto/16 :goto_1

    :pswitch_3
    move/from16 v22, v4

    add-int/lit8 v4, p1, 0x14

    .line 117
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x15

    move/from16 v23, v4

    .line 118
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x16

    move/from16 v24, v4

    .line 119
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x17

    move/from16 v25, v4

    .line 120
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x18

    move/from16 v26, v4

    .line 121
    aget-byte v4, p0, v17

    int-to-char v4, v4

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v17, v22

    move/from16 p0, v23

    move/from16 v20, v25

    move/from16 v21, v26

    move/from16 v22, v4

    move/from16 v23, v16

    move/from16 v25, v23

    move/from16 v26, v25

    move/from16 v16, v24

    move/from16 v24, v26

    goto/16 :goto_1

    :pswitch_4
    move/from16 v22, v4

    add-int/lit8 v4, p1, 0x14

    .line 122
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x15

    move/from16 v23, v4

    .line 123
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x16

    move/from16 v24, v4

    .line 124
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x17

    move/from16 v25, v4

    .line 125
    aget-byte v4, p0, v17

    int-to-char v4, v4

    move/from16 v26, v16

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v17, v22

    move/from16 p0, v23

    move/from16 v20, v25

    move/from16 v21, v4

    move/from16 v22, v26

    move/from16 v23, v22

    move/from16 v25, v23

    goto :goto_0

    :pswitch_5
    move/from16 v22, v4

    add-int/lit8 v4, p1, 0x14

    .line 126
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x15

    move/from16 v23, v4

    .line 127
    aget-byte v4, p0, v17

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x16

    move/from16 v24, v4

    .line 128
    aget-byte v4, p0, v17

    int-to-char v4, v4

    move/from16 v25, v16

    move/from16 v26, v25

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v17, v22

    move/from16 p0, v23

    move/from16 v20, v4

    move/from16 v21, v26

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v16, v24

    move/from16 v24, v23

    goto :goto_1

    :pswitch_6
    move/from16 v22, v4

    add-int/lit8 v4, p1, 0x14

    .line 129
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v17, p1, 0x15

    move/from16 v23, v4

    .line 130
    aget-byte v4, p0, v17

    int-to-char v4, v4

    move/from16 v24, v16

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v17, v22

    move/from16 p0, v23

    move/from16 v16, v4

    move/from16 v20, v26

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    goto :goto_1

    :pswitch_7
    move/from16 v22, v4

    add-int/lit8 v4, p1, 0x14

    .line 131
    aget-byte v4, p0, v4

    int-to-char v4, v4

    move/from16 p0, v4

    move/from16 v23, v16

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v17, v22

    move/from16 v20, v26

    move/from16 v21, v20

    move/from16 v22, v21

    :goto_1
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_5

    if-ne v10, v4, :cond_5

    const/16 v3, 0x20

    if-eq v13, v3, :cond_4

    const/16 v3, 0x54

    if-ne v13, v3, :cond_5

    :cond_4
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_5

    if-ne v0, v3, :cond_5

    const/16 v0, 0x2e

    if-ne v2, v0, :cond_5

    move v10, v11

    move v11, v12

    move v12, v14

    move v13, v15

    move/from16 v4, v17

    move/from16 v15, v18

    move/from16 v14, v19

    move/from16 v17, v29

    move/from16 v18, p0

    move/from16 v19, v16

    move/from16 v16, v28

    .line 132
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    return-object v27

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDateTimeX([CII)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 31

    move/from16 v0, p2

    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/16 v27, 0x0

    goto/16 :goto_4

    :cond_1
    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/16 v3, 0x1d

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 1
    :cond_3
    aget-char v4, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2
    aget-char v5, p0, v3

    add-int/lit8 v3, p1, 0x2

    .line 3
    aget-char v6, p0, v3

    add-int/lit8 v3, p1, 0x3

    .line 4
    aget-char v7, p0, v3

    add-int/lit8 v3, p1, 0x4

    .line 5
    aget-char v3, p0, v3

    add-int/lit8 v8, p1, 0x5

    .line 6
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x6

    .line 7
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x7

    .line 8
    aget-char v10, p0, v10

    add-int/lit8 v11, p1, 0x8

    .line 9
    aget-char v11, p0, v11

    add-int/lit8 v12, p1, 0x9

    .line 10
    aget-char v12, p0, v12

    add-int/lit8 v13, p1, 0xa

    .line 11
    aget-char v13, p0, v13

    add-int/lit8 v14, p1, 0xb

    .line 12
    aget-char v14, p0, v14

    add-int/lit8 v15, p1, 0xc

    .line 13
    aget-char v15, p0, v15

    add-int/lit8 v16, p1, 0xd

    const/16 v27, 0x0

    .line 14
    aget-char v1, p0, v16

    add-int/lit8 v16, p1, 0xe

    .line 15
    aget-char v16, p0, v16

    add-int/lit8 v17, p1, 0xf

    .line 16
    aget-char v17, p0, v17

    add-int/lit8 v18, p1, 0x10

    move/from16 v19, v2

    .line 17
    aget-char v2, p0, v18

    add-int/lit8 v18, p1, 0x11

    .line 18
    aget-char v18, p0, v18

    add-int/lit8 v20, p1, 0x12

    .line 19
    aget-char v20, p0, v20

    add-int/lit8 v21, p1, 0x13

    .line 20
    aget-char v0, p0, v21

    const/16 v21, 0x30

    packed-switch p2, :pswitch_data_0

    add-int/lit8 v19, p1, 0x14

    .line 21
    aget-char v19, p0, v19

    add-int/lit8 v21, p1, 0x15

    .line 22
    aget-char v21, p0, v21

    add-int/lit8 v22, p1, 0x16

    .line 23
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x17

    .line 24
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x18

    .line 25
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x19

    .line 26
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x1a

    .line 27
    aget-char v26, p0, v26

    add-int/lit8 v28, p1, 0x1b

    .line 28
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x1c

    .line 29
    aget-char v29, p0, v29

    move/from16 v30, v29

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v20, v22

    move/from16 v22, v24

    move/from16 v24, v23

    move/from16 v23, v25

    move/from16 v25, v28

    move/from16 v28, v26

    move/from16 v26, v30

    :goto_0
    move/from16 v30, v4

    goto/16 :goto_3

    :pswitch_0
    add-int/lit8 v19, p1, 0x14

    .line 30
    aget-char v19, p0, v19

    add-int/lit8 v22, p1, 0x15

    .line 31
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 32
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x17

    .line 33
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 34
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x19

    .line 35
    aget-char v26, p0, v26

    add-int/lit8 v28, p1, 0x1a

    .line 36
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x1b

    .line 37
    aget-char v29, p0, v29

    move/from16 v30, v29

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v20, v23

    move/from16 v23, v26

    move/from16 v26, v21

    move/from16 v21, v22

    move/from16 v22, v25

    move/from16 v25, v30

    goto :goto_0

    :pswitch_1
    add-int/lit8 v19, p1, 0x14

    .line 38
    aget-char v19, p0, v19

    add-int/lit8 v22, p1, 0x15

    .line 39
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 40
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x17

    .line 41
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 42
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x19

    .line 43
    aget-char v26, p0, v26

    add-int/lit8 v28, p1, 0x1a

    .line 44
    aget-char v28, p0, v28

    move/from16 v30, v4

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v20, v23

    move/from16 v23, v26

    move/from16 v26, v21

    :goto_1
    move/from16 v21, v22

    move/from16 v22, v25

    move/from16 v25, v26

    goto/16 :goto_3

    :pswitch_2
    add-int/lit8 v19, p1, 0x14

    .line 45
    aget-char v19, p0, v19

    add-int/lit8 v22, p1, 0x15

    .line 46
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 47
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x17

    .line 48
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 49
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x19

    .line 50
    aget-char v26, p0, v26

    move/from16 v30, v4

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v28, v21

    move/from16 v20, v23

    move/from16 v23, v26

    move/from16 v26, v28

    goto :goto_1

    :pswitch_3
    add-int/lit8 v19, p1, 0x14

    .line 51
    aget-char v19, p0, v19

    add-int/lit8 v22, p1, 0x15

    .line 52
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 53
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x17

    .line 54
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 55
    aget-char v25, p0, v25

    move/from16 v30, v4

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v26, v21

    move/from16 v28, v26

    move/from16 v20, v23

    move/from16 v23, v28

    move/from16 v21, v22

    move/from16 v22, v25

    move/from16 v25, v23

    goto/16 :goto_3

    :pswitch_4
    add-int/lit8 v19, p1, 0x14

    .line 56
    aget-char v19, p0, v19

    add-int/lit8 v22, p1, 0x15

    .line 57
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 58
    aget-char v23, p0, v23

    add-int/lit8 v24, p1, 0x17

    .line 59
    aget-char v24, p0, v24

    move/from16 v30, v4

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v25, v21

    :goto_2
    move/from16 v26, v25

    move/from16 v28, v26

    move/from16 v20, v23

    move/from16 v23, v28

    move/from16 v21, v22

    move/from16 v22, v23

    goto :goto_3

    :pswitch_5
    add-int/lit8 v19, p1, 0x14

    .line 60
    aget-char v19, p0, v19

    add-int/lit8 v22, p1, 0x15

    .line 61
    aget-char v22, p0, v22

    add-int/lit8 v23, p1, 0x16

    .line 62
    aget-char v23, p0, v23

    move/from16 v30, v4

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v24, v21

    move/from16 v25, v24

    goto :goto_2

    :pswitch_6
    add-int/lit8 v22, p1, 0x14

    .line 63
    aget-char v22, p0, v22

    add-int/lit8 v19, p1, 0x15

    .line 64
    aget-char v19, p0, v19

    move/from16 v30, v4

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v20, v21

    move/from16 v23, v20

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v28, v26

    move/from16 v21, v19

    move/from16 v19, v22

    move/from16 v22, v28

    goto :goto_3

    :pswitch_7
    add-int/lit8 v19, p1, 0x14

    .line 65
    aget-char v19, p0, v19

    move/from16 v30, v4

    move/from16 v29, v15

    move/from16 v15, v17

    move/from16 v17, v20

    move/from16 v20, v21

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v28, v26

    :goto_3
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_5

    if-ne v10, v4, :cond_5

    const/16 v3, 0x20

    if-eq v13, v3, :cond_4

    const/16 v3, 0x54

    if-ne v13, v3, :cond_5

    :cond_4
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_5

    if-ne v2, v3, :cond_5

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v14, v16

    move/from16 v16, v18

    move/from16 v18, v19

    move/from16 v19, v21

    move/from16 v21, v24

    move/from16 v24, v28

    move/from16 v13, v29

    move/from16 v4, v30

    .line 66
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_4
    return-object v27

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalTime10([BI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 10

    add-int/lit8 v0, p1, 0xa

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-byte v9, p0, v9

    add-int/lit8 p1, p1, 0x9

    .line 11
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, p1

    const p1, 0x5f5e100

    mul-int/2addr p0, p1

    .line 12
    invoke-static {v0, v4, v7, p0}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime10([CI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 10

    add-int/lit8 v0, p1, 0xa

    .line 13
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 14
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 15
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 16
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 17
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 18
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 19
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 20
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 21
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 22
    aget-char v9, p0, v9

    add-int/lit8 p1, p1, 0x9

    .line 23
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, p1

    const p1, 0x5f5e100

    mul-int/2addr p0, p1

    .line 24
    invoke-static {v0, v4, v7, p0}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime11([BI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 11

    add-int/lit8 v0, p1, 0xb

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 11
    aget-byte v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 12
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 13
    invoke-static {v0, v4, v7, v10}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime11([CI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 11

    add-int/lit8 v0, p1, 0xb

    .line 14
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 15
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 16
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 17
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 18
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 19
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 20
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 21
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 22
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 23
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 24
    aget-char v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 25
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 26
    invoke-static {v0, v4, v7, v10}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime12([BI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 12

    add-int/lit8 v0, p1, 0xc

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 11
    aget-byte v10, p0, v10

    add-int/lit8 v11, p1, 0xa

    .line 12
    aget-byte v11, p0, v11

    add-int/lit8 p1, p1, 0xb

    .line 13
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt v11, p1, :cond_1

    if-gt v11, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr v11, p1

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    sub-int/2addr p0, p1

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 14
    invoke-static {v0, v4, v7, v10}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime12([CI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 12

    add-int/lit8 v0, p1, 0xc

    .line 15
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 16
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 17
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 18
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 19
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 20
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 21
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 22
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 23
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 24
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 25
    aget-char v10, p0, v10

    add-int/lit8 v11, p1, 0xa

    .line 26
    aget-char v11, p0, v11

    add-int/lit8 p1, p1, 0xb

    .line 27
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt v11, p1, :cond_1

    if-gt v11, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr v11, p1

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    sub-int/2addr p0, p1

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 28
    invoke-static {v0, v4, v7, v10}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime18([BI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 20

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x12

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-byte v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-byte v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 5
    aget-byte v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 6
    aget-byte v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 7
    aget-byte v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 8
    aget-byte v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 9
    aget-byte v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-byte v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-byte v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-byte v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-byte v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-byte v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-byte v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v17, v3

    .line 16
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    .line 17
    aget-byte v0, p0, v16

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v0

    .line 18
    aget-byte v0, p0, v16

    add-int/lit8 v16, p1, 0x11

    move/from16 v19, v0

    .line 19
    aget-byte v0, p0, v16

    move/from16 p0, v0

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_1

    if-ne v7, v0, :cond_1

    const/16 v0, 0x2e

    if-ne v10, v0, :cond_1

    const/16 v0, 0x30

    if-lt v1, v0, :cond_1

    const/16 v4, 0x39

    if-gt v1, v4, :cond_1

    if-lt v2, v0, :cond_1

    if-gt v2, v4, :cond_1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    if-lt v5, v0, :cond_1

    if-gt v5, v4, :cond_1

    if-lt v6, v0, :cond_1

    if-gt v6, v4, :cond_1

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    if-lt v8, v0, :cond_1

    if-gt v8, v4, :cond_1

    if-lt v9, v0, :cond_1

    if-gt v9, v4, :cond_1

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v0

    add-int/2addr v8, v9

    if-lt v11, v0, :cond_1

    if-gt v11, v4, :cond_1

    if-lt v12, v0, :cond_1

    if-gt v12, v4, :cond_1

    if-lt v13, v0, :cond_1

    if-gt v13, v4, :cond_1

    if-lt v14, v0, :cond_1

    if-gt v14, v4, :cond_1

    if-lt v15, v0, :cond_1

    if-gt v15, v4, :cond_1

    if-lt v3, v0, :cond_1

    if-gt v3, v4, :cond_1

    move/from16 v2, v18

    if-lt v2, v0, :cond_1

    if-gt v2, v4, :cond_1

    move/from16 v6, v19

    if-lt v6, v0, :cond_1

    if-gt v6, v4, :cond_1

    move/from16 v7, p0

    if-lt v7, v0, :cond_1

    if-gt v7, v4, :cond_1

    sub-int/2addr v11, v0

    const v4, 0x5f5e100

    mul-int/2addr v11, v4

    sub-int/2addr v12, v0

    const v4, 0x989680

    mul-int/2addr v12, v4

    add-int/2addr v11, v12

    sub-int/2addr v13, v0

    const v4, 0xf4240

    mul-int/2addr v13, v4

    add-int/2addr v11, v13

    sub-int/2addr v14, v0

    const v4, 0x186a0

    mul-int/2addr v14, v4

    add-int/2addr v11, v14

    sub-int/2addr v15, v0

    mul-int/lit16 v15, v15, 0x2710

    add-int/2addr v11, v15

    sub-int/2addr v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v11, v3

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v11, v2

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v11, v2

    add-int/lit8 v0, v7, -0x30

    add-int/2addr v11, v0

    .line 20
    invoke-static {v1, v5, v8, v11}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v17
.end method

.method public static parseLocalTime18([CI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 20

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x12

    .line 21
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 22
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 23
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 24
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 25
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 26
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 27
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 28
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 29
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 30
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 31
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 32
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 33
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 34
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 35
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    move-object/from16 v17, v3

    .line 36
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    .line 37
    aget-char v0, p0, v16

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v0

    .line 38
    aget-char v0, p0, v16

    add-int/lit8 v16, p1, 0x11

    move/from16 v19, v0

    .line 39
    aget-char v0, p0, v16

    move/from16 p0, v0

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_1

    if-ne v7, v0, :cond_1

    const/16 v0, 0x2e

    if-ne v10, v0, :cond_1

    const/16 v0, 0x30

    if-lt v1, v0, :cond_1

    const/16 v4, 0x39

    if-gt v1, v4, :cond_1

    if-lt v2, v0, :cond_1

    if-gt v2, v4, :cond_1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    if-lt v5, v0, :cond_1

    if-gt v5, v4, :cond_1

    if-lt v6, v0, :cond_1

    if-gt v6, v4, :cond_1

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    if-lt v8, v0, :cond_1

    if-gt v8, v4, :cond_1

    if-lt v9, v0, :cond_1

    if-gt v9, v4, :cond_1

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v0

    add-int/2addr v8, v9

    if-lt v11, v0, :cond_1

    if-gt v11, v4, :cond_1

    if-lt v12, v0, :cond_1

    if-gt v12, v4, :cond_1

    if-lt v13, v0, :cond_1

    if-gt v13, v4, :cond_1

    if-lt v14, v0, :cond_1

    if-gt v14, v4, :cond_1

    if-lt v15, v0, :cond_1

    if-gt v15, v4, :cond_1

    if-lt v3, v0, :cond_1

    if-gt v3, v4, :cond_1

    move/from16 v2, v18

    if-lt v2, v0, :cond_1

    if-gt v2, v4, :cond_1

    move/from16 v6, v19

    if-lt v6, v0, :cond_1

    if-gt v6, v4, :cond_1

    move/from16 v7, p0

    if-lt v7, v0, :cond_1

    if-gt v7, v4, :cond_1

    sub-int/2addr v11, v0

    const v4, 0x5f5e100

    mul-int/2addr v11, v4

    sub-int/2addr v12, v0

    const v4, 0x989680

    mul-int/2addr v12, v4

    add-int/2addr v11, v12

    sub-int/2addr v13, v0

    const v4, 0xf4240

    mul-int/2addr v13, v4

    add-int/2addr v11, v13

    sub-int/2addr v14, v0

    const v4, 0x186a0

    mul-int/2addr v14, v4

    add-int/2addr v11, v14

    sub-int/2addr v15, v0

    mul-int/lit16 v15, v15, 0x2710

    add-int/2addr v11, v15

    sub-int/2addr v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v11, v3

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v11, v2

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v11, v2

    add-int/lit8 v0, v7, -0x30

    add-int/2addr v11, v0

    .line 40
    invoke-static {v1, v5, v8, v11}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v17
.end method

.method public static parseLocalTime5([BI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 p1, p1, 0x4

    .line 6
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr p0, p1

    add-int/2addr v4, p0

    const/4 p0, 0x0

    .line 7
    invoke-static {v0, v4, p0}, Lcom/alibaba/fastjson2/time/LocalTime;->of(III)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime5([CI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 8
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 9
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 10
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 11
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 12
    aget-char v4, p0, v4

    add-int/lit8 p1, p1, 0x4

    .line 13
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr p0, p1

    add-int/2addr v4, p0

    const/4 p0, 0x0

    .line 14
    invoke-static {v0, v4, p0}, Lcom/alibaba/fastjson2/time/LocalTime;->of(III)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime6(Ljava/lang/String;I)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 7

    .line 1
    .line 2
    add-int/lit8 v0, p1, 0x6

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    return-object v2

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 14
    move-result v0

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 20
    move-result v1

    .line 21
    .line 22
    add-int/lit8 v3, p1, 0x2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v3

    .line 27
    .line 28
    add-int/lit8 v4, p1, 0x3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 32
    move-result v4

    .line 33
    .line 34
    add-int/lit8 v5, p1, 0x4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 38
    move-result v5

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 44
    move-result p0

    .line 45
    .line 46
    const/16 p1, 0x30

    .line 47
    .line 48
    if-lt v0, p1, :cond_1

    .line 49
    .line 50
    const/16 v6, 0x39

    .line 51
    .line 52
    if-gt v0, v6, :cond_1

    .line 53
    .line 54
    if-lt v1, p1, :cond_1

    .line 55
    .line 56
    if-gt v1, v6, :cond_1

    .line 57
    sub-int/2addr v0, p1

    .line 58
    .line 59
    mul-int/lit8 v0, v0, 0xa

    .line 60
    sub-int/2addr v1, p1

    .line 61
    add-int/2addr v0, v1

    .line 62
    .line 63
    if-lt v3, p1, :cond_1

    .line 64
    .line 65
    if-gt v3, v6, :cond_1

    .line 66
    .line 67
    if-lt v4, p1, :cond_1

    .line 68
    .line 69
    if-gt v4, v6, :cond_1

    .line 70
    sub-int/2addr v3, p1

    .line 71
    .line 72
    mul-int/lit8 v3, v3, 0xa

    .line 73
    sub-int/2addr v4, p1

    .line 74
    add-int/2addr v3, v4

    .line 75
    .line 76
    if-lt v5, p1, :cond_1

    .line 77
    .line 78
    if-gt v5, v6, :cond_1

    .line 79
    .line 80
    if-lt p0, p1, :cond_1

    .line 81
    .line 82
    if-gt p0, v6, :cond_1

    .line 83
    sub-int/2addr v5, p1

    .line 84
    .line 85
    mul-int/lit8 v5, v5, 0xa

    .line 86
    sub-int/2addr p0, p1

    .line 87
    add-int/2addr v5, p0

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v3, v5}, Lcom/alibaba/fastjson2/time/LocalTime;->of(III)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_1
    return-object v2
.end method

.method public static parseLocalTime8([BI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 8

    add-int/lit8 v0, p1, 0x8

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    add-int/lit8 p1, p1, 0x7

    .line 9
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr p0, p1

    add-int/2addr v7, p0

    .line 10
    invoke-static {v0, v4, v7}, Lcom/alibaba/fastjson2/time/LocalTime;->of(III)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime8([CI)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 8

    add-int/lit8 v0, p1, 0x8

    .line 11
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 12
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 13
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 14
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 15
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 16
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 17
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 18
    aget-char v7, p0, v7

    add-int/lit8 p1, p1, 0x7

    .line 19
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr p0, p1

    add-int/2addr v7, p0

    .line 20
    invoke-static {v0, v4, v7}, Lcom/alibaba/fastjson2/time/LocalTime;->of(III)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseMillis(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([CIILcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMillis([BII)J
    .locals 2

    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMillis([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 11

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 4
    aget-byte v2, p0, p1

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_1

    return-wide v0

    .line 5
    :cond_1
    aget-byte v2, p0, p1

    int-to-char v2, v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_4

    add-int/lit8 v4, p2, -0x1

    .line 6
    aget-byte v4, p0, v4

    if-ne v4, v3, :cond_4

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v6

    .line 8
    :try_start_0
    sget-object v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    .line 9
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_2
    return-wide p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz v6, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0

    :cond_4
    const/16 p3, 0x13

    if-ne p2, p3, :cond_5

    .line 12
    invoke-static {p0, p1, p4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([BILcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    return-wide p0

    :cond_5
    const/4 v3, 0x0

    if-gt p2, p3, :cond_f

    const/16 p3, 0x10

    const/16 v4, 0x2d

    if-ne p2, p3, :cond_6

    add-int/lit8 p3, p1, 0xa

    .line 13
    aget-byte p3, p0, p3

    int-to-char p3, p3

    const/16 v5, 0x2b

    if-eq p3, v5, :cond_f

    if-ne p3, v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 p3, 0x30

    if-eq v2, v4, :cond_7

    if-lt v2, p3, :cond_b

    const/16 v5, 0x39

    if-gt v2, v5, :cond_b

    .line 14
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber([BII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 15
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseLong([BII)J

    move-result-wide v0

    const/16 p1, 0x8

    if-ne p2, p1, :cond_8

    const-wide/32 v4, 0x12c9985

    cmp-long p1, v0, v4

    if-ltz p1, :cond_8

    const-wide/32 v4, 0x1406fa5

    cmp-long p1, v0, v4

    if-gtz p1, :cond_8

    .line 16
    invoke-static {p0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object p0

    .line 17
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    .line 18
    invoke-static {p0, p4}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    move-result-wide p0

    return-wide p0

    :cond_8
    const/16 p1, 0xc

    if-ne p2, p1, :cond_9

    const-wide v4, 0x2dde2cdb50L

    cmp-long p1, v0, v4

    if-ltz p1, :cond_9

    const-wide v4, 0x30e5091d50L

    cmp-long p1, v0, v4

    if-gtz p1, :cond_9

    .line 20
    invoke-static {p0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    .line 21
    invoke-static {p0, p4}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    move-result-wide p0

    return-wide p0

    :cond_9
    const/16 p1, 0xe

    if-ne p2, p1, :cond_a

    const-wide p1, 0x11eac985ab40L

    cmp-long p1, v0, p1

    if-ltz p1, :cond_a

    const-wide p1, 0x1319778f7340L

    cmp-long p1, v0, p1

    if-gtz p1, :cond_a

    .line 23
    invoke-static {p0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p0

    .line 24
    invoke-static {p0, p4}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    move-result-wide p0

    return-wide p0

    :cond_a
    return-wide v0

    :cond_b
    add-int/lit8 v2, p2, -0x1

    .line 26
    aget-byte v2, p0, v2

    int-to-char v2, v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_c

    .line 27
    sget-object p4, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 28
    :cond_c
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime([BII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p2

    if-nez p2, :cond_d

    .line 29
    aget-byte v2, p0, p1

    if-ne v2, p3, :cond_d

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-ne v2, p3, :cond_d

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, p3, :cond_d

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, p3, :cond_d

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_d

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    if-ne v2, p3, :cond_d

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    if-ne v2, p3, :cond_d

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_d

    add-int/lit8 v2, p1, 0x8

    aget-byte v2, p0, v2

    if-ne v2, p3, :cond_d

    add-int/lit8 p1, p1, 0x9

    aget-byte p0, p0, p1

    if-ne p0, p3, :cond_d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x7b2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object p2

    .line 31
    :cond_d
    invoke-static {p2, p4}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p0

    .line 33
    iget-object p2, p2, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget p2, p2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    cmp-long p3, p0, v0

    const p4, 0xf4240

    const-wide/16 v0, 0x3e8

    if-gez p3, :cond_e

    if-lez p2, :cond_e

    const-wide/16 v2, 0x1

    add-long/2addr p0, v2

    mul-long/2addr p0, v0

    .line 34
    div-int/2addr p2, p4

    int-to-long p2, p2

    add-long/2addr p0, p2

    sub-long/2addr p0, v0

    return-wide p0

    :cond_e
    mul-long/2addr p0, v0

    .line 35
    div-int/2addr p2, p4

    int-to-long p2, p2

    add-long/2addr p0, p2

    return-wide p0

    .line 36
    :cond_f
    :goto_1
    invoke-static {p0, p1, p2, p4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 37
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toInstant()Lcom/alibaba/fastjson2/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/Instant;->toEpochMilli()J

    move-result-wide p0

    return-wide p0

    .line 38
    :cond_10
    new-instance p3, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {p3, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 39
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal input "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_11
    :goto_2
    return-wide v0
.end method

.method public static parseMillis([CII)J
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([CIILcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMillis([CIILcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_12

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 41
    aget-char v6, v0, v1

    const/16 v7, 0x6e

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v0, v6

    const/16 v7, 0x75

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x2

    aget-char v6, v0, v6

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v0, v6

    if-ne v6, v7, :cond_1

    return-wide v4

    .line 42
    :cond_1
    aget-char v6, v0, v1

    const/16 v7, 0x22

    if-ne v6, v7, :cond_4

    add-int/lit8 v8, v2, -0x1

    .line 43
    aget-char v8, v0, v8

    if-ne v8, v7, :cond_4

    .line 44
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/JSONReader;->of([CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v10

    .line 45
    :try_start_0
    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 46
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    .line 47
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_2
    return-wide v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_3

    .line 48
    :try_start_1
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1

    :cond_4
    const/16 v7, 0x13

    if-ne v2, v7, :cond_5

    .line 49
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([CILcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide v0

    return-wide v0

    .line 50
    :cond_5
    const-string v8, "illegal input "

    const/4 v9, 0x0

    if-gt v2, v7, :cond_10

    const/16 v7, 0x10

    const/16 v10, 0x2d

    if-ne v2, v7, :cond_6

    add-int/lit8 v7, v1, 0xa

    aget-char v7, v0, v7

    const/16 v11, 0x2b

    if-eq v7, v11, :cond_10

    if-ne v7, v10, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x30

    if-eq v6, v10, :cond_7

    if-lt v6, v7, :cond_b

    const/16 v11, 0x39

    if-gt v6, v11, :cond_b

    .line 51
    :cond_7
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber([CII)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 52
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseLong([CII)J

    move-result-wide v4

    const/16 v1, 0x8

    if-ne v2, v1, :cond_8

    const-wide/32 v6, 0x12c9985

    cmp-long v1, v4, v6

    if-ltz v1, :cond_8

    const-wide/32 v6, 0x1406fa5

    cmp-long v1, v4, v6

    if-gtz v1, :cond_8

    .line 53
    invoke-static {v0, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([CI)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    .line 55
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    move-result-wide v0

    return-wide v0

    :cond_8
    const/16 v1, 0xc

    if-ne v2, v1, :cond_9

    const-wide v6, 0x2dde2cdb50L

    cmp-long v1, v4, v6

    if-ltz v1, :cond_9

    const-wide v6, 0x30e5091d50L

    cmp-long v1, v4, v6

    if-gtz v1, :cond_9

    .line 57
    invoke-static {v0, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    .line 58
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const/16 v1, 0xe

    if-ne v2, v1, :cond_a

    const-wide v1, 0x11eac985ab40L

    cmp-long v1, v4, v1

    if-ltz v1, :cond_a

    const-wide v1, 0x1319778f7340L

    cmp-long v1, v4, v1

    if-gtz v1, :cond_a

    .line 60
    invoke-static {v0, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([CI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    .line 61
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    move-result-wide v0

    return-wide v0

    :cond_a
    return-wide v4

    :cond_b
    add-int/lit8 v6, v2, -0x1

    .line 63
    aget-char v6, v0, v6

    const/16 v11, 0x5a

    if-ne v6, v11, :cond_c

    .line 64
    sget-object v3, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 65
    :cond_c
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime([CII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v6

    if-nez v6, :cond_d

    .line 66
    aget-char v11, v0, v1

    if-ne v11, v7, :cond_d

    add-int/lit8 v11, v1, 0x1

    aget-char v11, v0, v11

    if-ne v11, v7, :cond_d

    add-int/lit8 v11, v1, 0x2

    aget-char v11, v0, v11

    if-ne v11, v7, :cond_d

    add-int/lit8 v11, v1, 0x3

    aget-char v11, v0, v11

    if-ne v11, v7, :cond_d

    add-int/lit8 v11, v1, 0x4

    aget-char v11, v0, v11

    if-ne v11, v10, :cond_d

    add-int/lit8 v11, v1, 0x5

    aget-char v11, v0, v11

    if-ne v11, v7, :cond_d

    add-int/lit8 v11, v1, 0x6

    aget-char v11, v0, v11

    if-ne v11, v7, :cond_d

    add-int/lit8 v11, v1, 0x7

    aget-char v11, v0, v11

    if-ne v11, v10, :cond_d

    add-int/lit8 v10, v1, 0x8

    aget-char v10, v0, v10

    if-ne v10, v7, :cond_d

    add-int/lit8 v10, v1, 0x9

    aget-char v10, v0, v10

    if-ne v10, v7, :cond_d

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v11, 0x7b2

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 67
    invoke-static/range {v11 .. v16}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(IIIIII)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v6

    :cond_d
    if-eqz v6, :cond_f

    .line 68
    invoke-static {v6, v3}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 70
    iget-object v2, v6, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget v2, v2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    cmp-long v3, v0, v4

    const v4, 0xf4240

    const-wide/16 v5, 0x3e8

    if-gez v3, :cond_e

    if-lez v2, :cond_e

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    mul-long/2addr v0, v5

    .line 71
    div-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long/2addr v0, v5

    return-wide v0

    :cond_e
    mul-long/2addr v0, v5

    .line 72
    div-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 73
    :cond_f
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 74
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v9}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 75
    :cond_10
    :goto_1
    invoke-static/range {p0 .. p3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([CIILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 76
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    move-result-wide v0

    return-wide v0

    .line 77
    :cond_11
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 78
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v9}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_12
    :goto_2
    return-wide v4
.end method

.method public static parseMillis10(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    if-eqz v0, :cond_19

    .line 7
    .line 8
    const-string v2, "null"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :cond_0
    move-object/from16 v2, p2

    .line 19
    .line 20
    iget v3, v2, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->length:I

    .line 21
    .line 22
    const/16 v4, 0xa

    .line 23
    .line 24
    if-ne v3, v4, :cond_18

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    move-result v3

    .line 29
    const/4 v5, 0x0

    .line 30
    .line 31
    if-ne v3, v4, :cond_17

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v3

    .line 36
    const/4 v6, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 40
    move-result v7

    .line 41
    const/4 v8, 0x2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 45
    move-result v9

    .line 46
    const/4 v10, 0x3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 50
    move-result v10

    .line 51
    const/4 v11, 0x4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 55
    move-result v12

    .line 56
    const/4 v13, 0x5

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v14

    .line 61
    const/4 v15, 0x6

    .line 62
    .line 63
    move/from16 v16, v4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 67
    move-result v4

    .line 68
    const/4 v6, 0x7

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 72
    move-result v6

    .line 73
    .line 74
    const/16 v11, 0x8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 78
    move-result v11

    .line 79
    .line 80
    const/16 v8, 0x9

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 84
    move-result v5

    .line 85
    .line 86
    sget-object v18, Lcom/alibaba/fastjson2/util/DateUtils$1;->$SwitchMap$com$alibaba$fastjson2$util$DateUtils$DateTimeFormatPattern:[I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 90
    move-result v2

    .line 91
    .line 92
    aget v2, v18, v2

    .line 93
    .line 94
    const-string v8, "illegal input"

    .line 95
    .line 96
    if-eq v2, v13, :cond_3

    .line 97
    .line 98
    if-ne v2, v15, :cond_2

    .line 99
    .line 100
    const/16 v2, 0x2f

    .line 101
    .line 102
    if-ne v12, v2, :cond_1

    .line 103
    .line 104
    if-ne v6, v2, :cond_1

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 108
    const/4 v2, 0x0

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v8, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    throw v1

    .line 113
    :cond_2
    const/4 v2, 0x0

    .line 114
    .line 115
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v8, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    throw v1

    .line 120
    .line 121
    :cond_3
    const/16 v2, 0x2d

    .line 122
    .line 123
    if-ne v12, v2, :cond_16

    .line 124
    .line 125
    if-ne v6, v2, :cond_16

    .line 126
    .line 127
    :goto_0
    const/16 v2, 0x30

    .line 128
    .line 129
    if-lt v3, v2, :cond_15

    .line 130
    .line 131
    const/16 v6, 0x39

    .line 132
    .line 133
    if-gt v3, v6, :cond_15

    .line 134
    .line 135
    if-lt v7, v2, :cond_15

    .line 136
    .line 137
    if-gt v7, v6, :cond_15

    .line 138
    .line 139
    if-lt v9, v2, :cond_15

    .line 140
    .line 141
    if-gt v9, v6, :cond_15

    .line 142
    .line 143
    if-lt v10, v2, :cond_15

    .line 144
    .line 145
    if-gt v10, v6, :cond_15

    .line 146
    sub-int/2addr v3, v2

    .line 147
    .line 148
    mul-int/lit16 v3, v3, 0x3e8

    .line 149
    sub-int/2addr v7, v2

    .line 150
    .line 151
    mul-int/lit8 v7, v7, 0x64

    .line 152
    add-int/2addr v3, v7

    .line 153
    sub-int/2addr v9, v2

    .line 154
    .line 155
    mul-int/lit8 v9, v9, 0xa

    .line 156
    add-int/2addr v3, v9

    .line 157
    sub-int/2addr v10, v2

    .line 158
    add-int/2addr v3, v10

    .line 159
    .line 160
    if-lt v14, v2, :cond_14

    .line 161
    .line 162
    if-gt v14, v6, :cond_14

    .line 163
    .line 164
    if-lt v4, v2, :cond_14

    .line 165
    .line 166
    if-gt v4, v6, :cond_14

    .line 167
    sub-int/2addr v14, v2

    .line 168
    .line 169
    mul-int/lit8 v14, v14, 0xa

    .line 170
    sub-int/2addr v4, v2

    .line 171
    add-int/2addr v14, v4

    .line 172
    .line 173
    if-nez v14, :cond_5

    .line 174
    .line 175
    if-nez v3, :cond_4

    .line 176
    goto :goto_1

    .line 177
    :cond_4
    const/4 v2, 0x0

    .line 178
    .line 179
    goto/16 :goto_7

    .line 180
    .line 181
    :cond_5
    :goto_1
    const/16 v4, 0xc

    .line 182
    .line 183
    if-gt v14, v4, :cond_4

    .line 184
    .line 185
    if-lt v11, v2, :cond_13

    .line 186
    .line 187
    if-gt v11, v6, :cond_13

    .line 188
    .line 189
    if-lt v5, v2, :cond_13

    .line 190
    .line 191
    if-gt v5, v6, :cond_13

    .line 192
    sub-int/2addr v11, v2

    .line 193
    .line 194
    mul-int/lit8 v11, v11, 0xa

    .line 195
    sub-int/2addr v5, v2

    .line 196
    add-int/2addr v11, v5

    .line 197
    const/4 v2, 0x2

    .line 198
    .line 199
    if-eq v14, v2, :cond_7

    .line 200
    const/4 v2, 0x4

    .line 201
    .line 202
    if-eq v14, v2, :cond_6

    .line 203
    .line 204
    if-eq v14, v15, :cond_6

    .line 205
    .line 206
    const/16 v2, 0x9

    .line 207
    .line 208
    if-eq v14, v2, :cond_6

    .line 209
    .line 210
    const/16 v2, 0xb

    .line 211
    .line 212
    if-eq v14, v2, :cond_6

    .line 213
    .line 214
    const/16 v2, 0x1f

    .line 215
    goto :goto_2

    .line 216
    .line 217
    :cond_6
    const/16 v2, 0x1e

    .line 218
    goto :goto_2

    .line 219
    .line 220
    :cond_7
    and-int/lit8 v2, v3, 0x3

    .line 221
    .line 222
    if-nez v2, :cond_9

    .line 223
    .line 224
    rem-int/lit8 v2, v3, 0x64

    .line 225
    .line 226
    if-nez v2, :cond_8

    .line 227
    .line 228
    rem-int/lit16 v2, v3, 0x190

    .line 229
    .line 230
    if-nez v2, :cond_9

    .line 231
    .line 232
    :cond_8
    const/16 v2, 0x1d

    .line 233
    goto :goto_2

    .line 234
    .line 235
    :cond_9
    const/16 v2, 0x1c

    .line 236
    .line 237
    :goto_2
    if-nez v11, :cond_a

    .line 238
    .line 239
    if-nez v3, :cond_12

    .line 240
    .line 241
    :cond_a
    if-gt v11, v2, :cond_12

    .line 242
    .line 243
    if-nez v3, :cond_b

    .line 244
    .line 245
    if-nez v14, :cond_b

    .line 246
    .line 247
    if-nez v11, :cond_b

    .line 248
    .line 249
    const/16 v3, 0x7b2

    .line 250
    const/4 v6, 0x1

    .line 251
    const/4 v11, 0x1

    .line 252
    goto :goto_3

    .line 253
    :cond_b
    move v6, v14

    .line 254
    .line 255
    :goto_3
    mul-int/lit16 v0, v3, 0x16d

    .line 256
    .line 257
    add-int/lit8 v2, v3, 0x3

    .line 258
    .line 259
    const/16 v17, 0x4

    .line 260
    .line 261
    div-int/lit8 v2, v2, 0x4

    .line 262
    .line 263
    add-int/lit8 v5, v3, 0x63

    .line 264
    .line 265
    div-int/lit8 v5, v5, 0x64

    .line 266
    sub-int/2addr v2, v5

    .line 267
    .line 268
    add-int/lit16 v5, v3, 0x18f

    .line 269
    .line 270
    div-int/lit16 v5, v5, 0x190

    .line 271
    add-int/2addr v2, v5

    .line 272
    add-int/2addr v0, v2

    .line 273
    .line 274
    mul-int/lit16 v2, v6, 0x16f

    .line 275
    .line 276
    add-int/lit16 v2, v2, -0x16a

    .line 277
    div-int/2addr v2, v4

    .line 278
    add-int/2addr v0, v2

    .line 279
    .line 280
    add-int/lit8 v2, v11, -0x1

    .line 281
    add-int/2addr v0, v2

    .line 282
    int-to-long v4, v0

    .line 283
    const/4 v2, 0x2

    .line 284
    .line 285
    if-le v6, v2, :cond_e

    .line 286
    .line 287
    const-wide/16 v7, 0x1

    .line 288
    .line 289
    sub-long v7, v4, v7

    .line 290
    .line 291
    and-int/lit8 v0, v3, 0x3

    .line 292
    .line 293
    if-nez v0, :cond_d

    .line 294
    .line 295
    rem-int/lit8 v0, v3, 0x64

    .line 296
    .line 297
    if-nez v0, :cond_c

    .line 298
    .line 299
    rem-int/lit16 v0, v3, 0x190

    .line 300
    .line 301
    if-nez v0, :cond_d

    .line 302
    :cond_c
    move-wide v4, v7

    .line 303
    goto :goto_4

    .line 304
    .line 305
    :cond_d
    const-wide/16 v7, 0x2

    .line 306
    sub-long/2addr v4, v7

    .line 307
    .line 308
    .line 309
    :cond_e
    :goto_4
    const-wide/32 v7, 0xafaa8

    .line 310
    sub-long/2addr v4, v7

    .line 311
    .line 312
    .line 313
    const-wide/32 v7, 0x15180

    .line 314
    mul-long/2addr v4, v7

    .line 315
    .line 316
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 320
    move-result v0

    .line 321
    .line 322
    if-eqz v0, :cond_f

    .line 323
    .line 324
    .line 325
    const-wide/32 v7, 0x28d2bea0

    .line 326
    .line 327
    cmp-long v0, v4, v7

    .line 328
    .line 329
    if-ltz v0, :cond_f

    .line 330
    .line 331
    const/16 v0, 0x7080

    .line 332
    goto :goto_6

    .line 333
    .line 334
    :cond_f
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 335
    .line 336
    if-eq v1, v0, :cond_11

    .line 337
    .line 338
    const-string v0, "UTC"

    .line 339
    .line 340
    iget-object v2, v1, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result v0

    .line 345
    .line 346
    if-eqz v0, :cond_10

    .line 347
    goto :goto_5

    .line 348
    .line 349
    .line 350
    :cond_10
    invoke-static {v3, v6, v11}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 354
    .line 355
    .line 356
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 357
    move-result-object v0

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/LocalDateTime;)I

    .line 361
    move-result v0

    .line 362
    goto :goto_6

    .line 363
    :cond_11
    :goto_5
    const/4 v0, 0x0

    .line 364
    :goto_6
    int-to-long v0, v0

    .line 365
    sub-long/2addr v4, v0

    .line 366
    .line 367
    const-wide/16 v0, 0x3e8

    .line 368
    mul-long/2addr v4, v0

    .line 369
    return-wide v4

    .line 370
    .line 371
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 372
    const/4 v2, 0x0

    .line 373
    .line 374
    .line 375
    invoke-direct {v1, v8, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    throw v1

    .line 377
    :cond_13
    const/4 v2, 0x0

    .line 378
    .line 379
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 380
    .line 381
    .line 382
    invoke-direct {v1, v8, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 383
    throw v1

    .line 384
    .line 385
    :goto_7
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 386
    .line 387
    .line 388
    invoke-direct {v1, v8, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 389
    throw v1

    .line 390
    :cond_14
    const/4 v2, 0x0

    .line 391
    .line 392
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 393
    .line 394
    .line 395
    invoke-direct {v1, v8, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 396
    throw v1

    .line 397
    :cond_15
    const/4 v2, 0x0

    .line 398
    .line 399
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 400
    .line 401
    .line 402
    invoke-direct {v1, v8, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 403
    throw v1

    .line 404
    :cond_16
    const/4 v2, 0x0

    .line 405
    .line 406
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 407
    .line 408
    .line 409
    invoke-direct {v1, v8, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    throw v1

    .line 411
    :cond_17
    move v2, v5

    .line 412
    .line 413
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 414
    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    const-string v4, "illegal input "

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v3

    .line 431
    .line 432
    .line 433
    invoke-direct {v1, v3, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 434
    throw v1

    .line 435
    .line 436
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 437
    .line 438
    .line 439
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 440
    throw v0

    .line 441
    .line 442
    :cond_19
    :goto_8
    const-wide/16 v0, 0x0

    .line 443
    return-wide v0
.end method

.method public static parseMillis19(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 26

    move-object/from16 v0, p0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    const-string v3, "illegal input "

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2a

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x2

    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x3

    .line 54
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x4

    .line 55
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    .line 56
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x6

    .line 57
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v14, 0x7

    .line 58
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x8

    .line 59
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v2, 0x9

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v2, 0xa

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v17, v2

    const/16 v2, 0xb

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v2, 0xc

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v6, 0xd

    .line 64
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v2, 0xe

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xf

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v21, v1

    const/16 v1, 0x10

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v22, v4

    const/16 v4, 0x11

    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v23, v15

    const/16 v15, 0x12

    .line 69
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v24, v15

    const/16 v15, 0x2d

    const/16 v25, 0x30

    if-ne v10, v15, :cond_1

    if-ne v14, v15, :cond_1

    const/16 v15, 0x20

    if-eq v12, v15, :cond_0

    const/16 v15, 0x54

    if-ne v12, v15, :cond_1

    :cond_0
    const/16 v15, 0x3a

    if-ne v6, v15, :cond_1

    if-ne v1, v15, :cond_1

    goto :goto_1

    :cond_1
    const/16 v15, 0x2f

    if-ne v10, v15, :cond_4

    if-ne v14, v15, :cond_4

    const/16 v15, 0x20

    if-eq v12, v15, :cond_2

    const/16 v15, 0x54

    if-ne v12, v15, :cond_3

    :cond_2
    const/16 v15, 0x3a

    goto :goto_0

    :cond_3
    const/16 v15, 0x2f

    goto :goto_2

    :goto_0
    if-ne v6, v15, :cond_3

    if-ne v1, v15, :cond_3

    :goto_1
    move v14, v5

    move v12, v8

    move v10, v13

    move/from16 v5, v16

    move/from16 v13, v19

    move/from16 v1, v21

    move/from16 v6, v22

    move/from16 v15, v25

    move v8, v7

    move v7, v4

    move v4, v2

    move/from16 v2, v23

    goto/16 :goto_5

    :cond_4
    :goto_2
    if-ne v7, v15, :cond_5

    if-ne v11, v15, :cond_5

    const/16 v15, 0x20

    if-ne v12, v15, :cond_5

    const/16 v15, 0x3a

    if-ne v6, v15, :cond_5

    if-ne v1, v15, :cond_5

    goto :goto_3

    :cond_5
    const/16 v15, 0x2e

    if-ne v7, v15, :cond_6

    if-ne v11, v15, :cond_6

    const/16 v15, 0x20

    if-ne v12, v15, :cond_7

    const/16 v15, 0x3a

    if-ne v6, v15, :cond_6

    if-ne v1, v15, :cond_6

    :goto_3
    move v7, v4

    move v11, v8

    move v1, v13

    move/from16 v12, v16

    move/from16 v13, v19

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v15, v25

    :goto_4
    move v4, v2

    move/from16 v2, v21

    goto/16 :goto_5

    :cond_6
    const/16 v15, 0x20

    :cond_7
    if-ne v5, v15, :cond_a

    if-ne v11, v15, :cond_a

    if-ne v12, v15, :cond_a

    const/16 v15, 0x3a

    if-ne v6, v15, :cond_9

    if-ne v1, v15, :cond_9

    .line 70
    invoke-static {v7, v8, v10}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_8

    .line 71
    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v8, v5

    .line 72
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v10, v1

    move v7, v4

    move v11, v8

    move v1, v13

    move/from16 v12, v16

    move/from16 v13, v19

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v15, v25

    move v4, v2

    move v2, v15

    goto/16 :goto_5

    .line 73
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_9
    const/16 v15, 0x20

    :cond_a
    if-ne v7, v15, :cond_d

    if-ne v13, v15, :cond_d

    if-ne v9, v15, :cond_d

    const/16 v15, 0x3a

    if-ne v6, v15, :cond_c

    if-ne v1, v15, :cond_c

    .line 74
    invoke-static {v8, v10, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_b

    .line 75
    div-int/lit8 v6, v1, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v8, v6

    .line 76
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v10, v1

    move v7, v4

    move v11, v8

    move v1, v14

    move/from16 v8, v16

    move/from16 v13, v19

    move/from16 v6, v22

    move/from16 v14, v23

    move/from16 v9, v25

    move v15, v9

    goto :goto_4

    .line 77
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_c
    const/16 v15, 0x20

    :cond_d
    if-ne v7, v15, :cond_10

    if-ne v13, v15, :cond_10

    if-ne v9, v15, :cond_10

    const/16 v15, 0x3a

    if-ne v2, v15, :cond_f

    if-ne v1, v15, :cond_f

    .line 78
    invoke-static {v8, v10, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_e

    .line 79
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v8, v2

    .line 80
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v10, v1

    move v7, v4

    move v13, v6

    move v11, v8

    move v1, v14

    move/from16 v8, v16

    move/from16 v9, v19

    move/from16 v2, v21

    move/from16 v6, v22

    move/from16 v14, v23

    move/from16 v4, v25

    move v15, v4

    goto :goto_5

    .line 81
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_f
    const/16 v15, 0x20

    :cond_10
    if-ne v7, v15, :cond_29

    if-ne v13, v15, :cond_29

    if-ne v9, v15, :cond_29

    const/16 v15, 0x3a

    if-ne v2, v15, :cond_29

    if-ne v4, v15, :cond_29

    .line 82
    invoke-static {v8, v10, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_28

    .line 83
    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v8, v4

    .line 84
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v10, v2

    move v13, v6

    move v11, v8

    move/from16 v8, v16

    move/from16 v9, v19

    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v7, v25

    move v15, v7

    move v6, v1

    move v1, v14

    move/from16 v14, v23

    :goto_5
    if-lt v1, v15, :cond_27

    const/16 v0, 0x39

    if-gt v1, v0, :cond_26

    if-lt v14, v15, :cond_26

    if-gt v14, v0, :cond_26

    if-lt v8, v15, :cond_26

    if-gt v8, v0, :cond_26

    if-lt v12, v15, :cond_26

    if-gt v12, v0, :cond_26

    sub-int/2addr v1, v15

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x64

    add-int/2addr v1, v14

    sub-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v1, v8

    sub-int/2addr v12, v15

    add-int/2addr v1, v12

    if-lt v11, v15, :cond_25

    if-gt v11, v0, :cond_25

    if-lt v10, v15, :cond_25

    if-gt v10, v0, :cond_25

    sub-int/2addr v11, v15

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v10, v15

    add-int/2addr v11, v10

    if-nez v11, :cond_11

    if-nez v1, :cond_12

    :cond_11
    const/16 v8, 0xc

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_f

    :goto_6
    if-gt v11, v8, :cond_12

    if-lt v2, v15, :cond_24

    if-gt v2, v0, :cond_24

    if-lt v5, v15, :cond_24

    if-gt v5, v0, :cond_24

    sub-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v5, v15

    add-int/2addr v2, v5

    const/4 v5, 0x2

    if-eq v11, v5, :cond_14

    const/4 v5, 0x4

    if-eq v11, v5, :cond_13

    const/4 v5, 0x6

    if-eq v11, v5, :cond_13

    const/16 v5, 0x9

    if-eq v11, v5, :cond_13

    const/16 v5, 0xb

    if-eq v11, v5, :cond_13

    const/16 v5, 0x1f

    goto :goto_7

    :cond_13
    const/16 v5, 0x1e

    goto :goto_7

    :cond_14
    and-int/lit8 v5, v1, 0x3

    if-nez v5, :cond_16

    .line 85
    rem-int/lit8 v5, v1, 0x64

    if-nez v5, :cond_15

    rem-int/lit16 v5, v1, 0x190

    if-nez v5, :cond_16

    :cond_15
    const/16 v5, 0x1d

    goto :goto_7

    :cond_16
    const/16 v5, 0x1c

    :goto_7
    if-nez v2, :cond_18

    if-nez v1, :cond_17

    goto :goto_8

    :cond_17
    const/4 v4, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_e

    :cond_18
    :goto_8
    if-gt v2, v5, :cond_17

    const/16 v15, 0x30

    if-lt v9, v15, :cond_23

    if-gt v9, v0, :cond_23

    if-lt v13, v15, :cond_23

    if-gt v13, v0, :cond_23

    sub-int/2addr v9, v15

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v13, v15

    add-int/2addr v9, v13

    if-lt v4, v15, :cond_22

    if-gt v4, v0, :cond_22

    if-lt v6, v15, :cond_22

    if-gt v6, v0, :cond_22

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v6, v15

    add-int/2addr v4, v6

    if-lt v7, v15, :cond_21

    if-gt v7, v0, :cond_21

    move/from16 v5, v24

    if-lt v5, v15, :cond_21

    if-gt v5, v0, :cond_21

    sub-int/2addr v7, v15

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v15, v5, -0x30

    add-int/2addr v7, v15

    if-nez v1, :cond_19

    if-nez v11, :cond_19

    if-nez v2, :cond_19

    const/16 v1, 0x7b2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_9

    :cond_19
    move v0, v2

    move v2, v11

    :goto_9
    mul-int/lit16 v3, v1, 0x16d

    add-int/lit8 v5, v1, 0x3

    const/16 v18, 0x4

    .line 86
    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v1, 0x63

    div-int/lit8 v6, v6, 0x64

    sub-int/2addr v5, v6

    add-int/lit16 v6, v1, 0x18f

    div-int/lit16 v6, v6, 0x190

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    mul-int/lit16 v5, v2, 0x16f

    add-int/lit16 v5, v5, -0x16a

    const/16 v20, 0xc

    div-int/lit8 v5, v5, 0xc

    add-int/2addr v3, v5

    add-int/lit8 v5, v0, -0x1

    add-int/2addr v3, v5

    int-to-long v5, v3

    const/4 v3, 0x2

    if-le v2, v3, :cond_1c

    const-wide/16 v10, 0x1

    sub-long v10, v5, v10

    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_1b

    .line 87
    rem-int/lit8 v3, v1, 0x64

    if-nez v3, :cond_1a

    rem-int/lit16 v3, v1, 0x190

    if-nez v3, :cond_1b

    :cond_1a
    move-wide v5, v10

    goto :goto_a

    :cond_1b
    const-wide/16 v10, 0x2

    sub-long/2addr v5, v10

    :cond_1c
    :goto_a
    const-wide/32 v10, 0xafaa8

    sub-long/2addr v5, v10

    const-wide/32 v10, 0x15180

    mul-long/2addr v5, v10

    mul-int/lit16 v3, v9, 0xe10

    int-to-long v10, v3

    add-long/2addr v5, v10

    mul-int/lit8 v3, v4, 0x3c

    int-to-long v10, v3

    add-long/2addr v5, v10

    int-to-long v10, v7

    add-long/2addr v5, v10

    if-nez p1, :cond_1d

    .line 88
    sget-object v3, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_b

    :cond_1d
    move-object/from16 v3, p1

    .line 89
    :goto_b
    sget-object v8, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const-wide/32 v10, 0x28d2bea0

    cmp-long v8, v5, v10

    if-ltz v8, :cond_1e

    const/16 v4, 0x7080

    goto :goto_d

    .line 90
    :cond_1e
    sget-object v8, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    if-eq v3, v8, :cond_20

    const-string v8, "UTC"

    iget-object v10, v3, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_c

    .line 91
    :cond_1f
    invoke-static {v1, v2, v0}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-static {v9, v4, v7, v1}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    .line 94
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/LocalDateTime;)I

    move-result v4

    goto :goto_d

    :cond_20
    :goto_c
    const/4 v4, 0x0

    :goto_d
    int-to-long v0, v4

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v5, v0

    return-wide v5

    .line 95
    :cond_21
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_22
    move-object/from16 v2, p0

    .line 96
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_23
    move-object/from16 v2, p0

    .line 97
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 98
    :goto_e
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_24
    move-object/from16 v2, p0

    .line 99
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 100
    :goto_f
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_25
    move-object/from16 v2, p0

    .line 101
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_26
    move-object/from16 v2, p0

    goto :goto_10

    :cond_27
    move-object v2, v0

    .line 102
    :goto_10
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_28
    move-object v2, v0

    const/4 v4, 0x0

    .line 103
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_29
    move-object v2, v0

    .line 104
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_2a
    move-object v2, v0

    .line 105
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public static parseMillis19(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J
    .locals 27

    move-object/from16 v0, p0

    if-eqz v0, :cond_22

    .line 1
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_c

    :cond_0
    move-object/from16 v1, p2

    .line 2
    iget v2, v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->length:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_21

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_20

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x2

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x3

    .line 7
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x4

    .line 8
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x5

    .line 9
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x6

    .line 10
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/4 v15, 0x7

    .line 11
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v13, 0x8

    .line 12
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v4, 0x9

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v4, 0xa

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v18, v4

    const/16 v4, 0xb

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v4, 0xc

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v4, 0xd

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0xe

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0xf

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v20, v2

    const/16 v2, 0x10

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v21, v5

    const/16 v5, 0x11

    .line 21
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v22, v9

    const/16 v9, 0x12

    .line 22
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 23
    sget-object v23, Lcom/alibaba/fastjson2/util/DateUtils$1;->$SwitchMap$com$alibaba$fastjson2$util$DateUtils$DateTimeFormatPattern:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v24

    move/from16 v25, v13

    aget v13, v23, v24

    move/from16 v23, v14

    const-string v14, "illegal input"

    move/from16 v26, v9

    const/4 v9, 0x1

    if-eq v13, v9, :cond_7

    const/4 v9, 0x2

    if-eq v13, v9, :cond_5

    const/4 v9, 0x3

    if-eq v13, v9, :cond_3

    const/4 v9, 0x4

    if-ne v13, v9, :cond_2

    const/16 v9, 0x2e

    if-ne v7, v9, :cond_1

    if-ne v12, v9, :cond_1

    const/16 v7, 0x20

    if-ne v10, v7, :cond_1

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_1

    if-ne v2, v7, :cond_1

    move/from16 v10, v16

    move/from16 v4, v20

    move/from16 v7, v21

    move/from16 v12, v22

    move/from16 v2, v23

    move/from16 v9, v25

    goto :goto_1

    .line 24
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2
    const/4 v2, 0x0

    .line 25
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v1, v14, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_3
    const/16 v9, 0x2f

    if-ne v11, v9, :cond_4

    if-ne v15, v9, :cond_4

    const/16 v9, 0x20

    if-ne v10, v9, :cond_4

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_4

    if-ne v2, v9, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_5
    const/16 v9, 0x2d

    if-ne v11, v9, :cond_6

    if-ne v15, v9, :cond_6

    const/16 v9, 0x54

    if-ne v10, v9, :cond_6

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_6

    if-ne v2, v9, :cond_6

    goto :goto_0

    .line 27
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_7
    const/16 v9, 0x2d

    if-ne v11, v9, :cond_1f

    if-ne v15, v9, :cond_1f

    const/16 v9, 0x20

    if-ne v10, v9, :cond_1f

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_1f

    if-ne v2, v9, :cond_1f

    :goto_0
    move v9, v7

    move/from16 v7, v16

    move/from16 v2, v20

    move/from16 v15, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v4, v25

    :goto_1
    const/16 v13, 0x30

    if-lt v2, v13, :cond_1e

    const/16 v0, 0x39

    if-gt v2, v0, :cond_1d

    if-lt v15, v13, :cond_1d

    if-gt v15, v0, :cond_1d

    if-lt v9, v13, :cond_1d

    if-gt v9, v0, :cond_1d

    if-lt v10, v13, :cond_1d

    if-gt v10, v0, :cond_1d

    sub-int/2addr v2, v13

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v15, v13

    mul-int/lit8 v15, v15, 0x64

    add-int/2addr v2, v15

    sub-int/2addr v9, v13

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v2, v9

    sub-int/2addr v10, v13

    add-int/2addr v2, v10

    if-lt v12, v13, :cond_1c

    if-gt v12, v0, :cond_1c

    if-lt v11, v13, :cond_1c

    if-gt v11, v0, :cond_1c

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v11, v13

    add-int/2addr v12, v11

    if-nez v12, :cond_8

    if-nez v2, :cond_9

    :cond_8
    const/16 v9, 0xc

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_a

    :goto_2
    if-gt v12, v9, :cond_9

    if-lt v4, v13, :cond_1b

    if-gt v4, v0, :cond_1b

    if-lt v7, v13, :cond_1b

    if-gt v7, v0, :cond_1b

    sub-int/2addr v4, v13

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v7, v13

    add-int/2addr v4, v7

    const/4 v9, 0x2

    if-eq v12, v9, :cond_b

    const/4 v9, 0x4

    if-eq v12, v9, :cond_a

    const/4 v7, 0x6

    if-eq v12, v7, :cond_a

    const/16 v7, 0x9

    if-eq v12, v7, :cond_a

    const/16 v7, 0xb

    if-eq v12, v7, :cond_a

    const/16 v7, 0x1f

    goto :goto_3

    :cond_a
    const/16 v7, 0x1e

    goto :goto_3

    :cond_b
    and-int/lit8 v7, v2, 0x3

    if-nez v7, :cond_d

    .line 28
    rem-int/lit8 v7, v2, 0x64

    if-nez v7, :cond_c

    rem-int/lit16 v7, v2, 0x190

    if-nez v7, :cond_d

    :cond_c
    const/16 v7, 0x1d

    goto :goto_3

    :cond_d
    const/16 v7, 0x1c

    :goto_3
    if-nez v4, :cond_f

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_9

    :cond_f
    :goto_4
    if-gt v4, v7, :cond_e

    if-lt v8, v13, :cond_1a

    if-gt v8, v0, :cond_1a

    if-lt v6, v13, :cond_1a

    if-gt v6, v0, :cond_1a

    sub-int/2addr v8, v13

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v6, v13

    add-int/2addr v8, v6

    if-lt v3, v13, :cond_19

    if-gt v3, v0, :cond_19

    if-lt v1, v13, :cond_19

    if-gt v1, v0, :cond_19

    sub-int/2addr v3, v13

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v13

    add-int/2addr v3, v1

    if-lt v5, v13, :cond_18

    if-gt v5, v0, :cond_18

    move/from16 v1, v26

    if-lt v1, v13, :cond_18

    if-gt v1, v0, :cond_18

    sub-int/2addr v5, v13

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v9, v1, -0x30

    add-int/2addr v5, v9

    if-nez v2, :cond_10

    if-nez v12, :cond_10

    if-nez v4, :cond_10

    const/16 v2, 0x7b2

    const/4 v4, 0x1

    const/4 v12, 0x1

    :cond_10
    mul-int/lit16 v0, v2, 0x16d

    add-int/lit8 v1, v2, 0x3

    const/16 v17, 0x4

    .line 29
    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v6, v2, 0x63

    div-int/lit8 v6, v6, 0x64

    sub-int/2addr v1, v6

    add-int/lit16 v6, v2, 0x18f

    div-int/lit16 v6, v6, 0x190

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    mul-int/lit16 v1, v12, 0x16f

    add-int/lit16 v1, v1, -0x16a

    const/16 v19, 0xc

    div-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v9, 0x2

    if-le v12, v9, :cond_13

    const-wide/16 v6, 0x1

    sub-long v6, v0, v6

    and-int/lit8 v9, v2, 0x3

    if-nez v9, :cond_12

    .line 30
    rem-int/lit8 v9, v2, 0x64

    if-nez v9, :cond_11

    rem-int/lit16 v9, v2, 0x190

    if-nez v9, :cond_12

    :cond_11
    move-wide v0, v6

    goto :goto_5

    :cond_12
    const-wide/16 v6, 0x2

    sub-long/2addr v0, v6

    :cond_13
    :goto_5
    const-wide/32 v6, 0xafaa8

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x15180

    mul-long/2addr v0, v6

    mul-int/lit16 v6, v8, 0xe10

    int-to-long v6, v6

    add-long/2addr v0, v6

    mul-int/lit8 v6, v3, 0x3c

    int-to-long v6, v6

    add-long/2addr v0, v6

    int-to-long v6, v5

    add-long/2addr v0, v6

    if-nez p1, :cond_14

    .line 31
    sget-object v6, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_6

    :cond_14
    move-object/from16 v6, p1

    .line 32
    :goto_6
    sget-object v7, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const-wide/32 v9, 0x28d2bea0

    cmp-long v7, v0, v9

    if-ltz v7, :cond_15

    const/16 v4, 0x7080

    goto :goto_8

    .line 33
    :cond_15
    sget-object v7, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    if-eq v6, v7, :cond_17

    const-string v7, "UTC"

    iget-object v9, v6, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_7

    .line 34
    :cond_16
    invoke-static {v2, v12, v4}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object v2

    const/4 v4, 0x0

    .line 35
    invoke-static {v8, v3, v5, v4}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v2

    .line 37
    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/LocalDateTime;)I

    move-result v4

    goto :goto_8

    :cond_17
    :goto_7
    const/4 v4, 0x0

    :goto_8
    int-to-long v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 38
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_19
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 39
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 40
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 41
    :goto_9
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 42
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 43
    :goto_a
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 44
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto :goto_b

    :cond_1e
    move-object v1, v0

    const/4 v2, 0x0

    .line 45
    :goto_b
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1f
    move-object v1, v0

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {v0, v14, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_20
    move-object v1, v0

    move v2, v4

    .line 47
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 48
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_22
    :goto_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static parseMillis19([BILcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    aget-byte v2, v0, v1

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    .line 108
    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v4, v1, 0x2

    .line 109
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, v1, 0x3

    .line 110
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, v1, 0x4

    .line 111
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x5

    .line 112
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x6

    .line 113
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x7

    .line 114
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x8

    .line 115
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x9

    .line 116
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0xa

    .line 117
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0xb

    .line 118
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0xc

    .line 119
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xd

    .line 120
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 121
    aget-byte v2, v0, v16

    int-to-char v2, v2

    add-int/lit8 v16, v1, 0xf

    move/from16 v18, v10

    .line 122
    aget-byte v10, v0, v16

    int-to-char v10, v10

    add-int/lit8 v16, v1, 0x10

    move/from16 v19, v10

    .line 123
    aget-byte v10, v0, v16

    int-to-char v10, v10

    add-int/lit8 v16, v1, 0x11

    move/from16 v20, v11

    .line 124
    aget-byte v11, v0, v16

    int-to-char v11, v11

    add-int/lit8 v16, v1, 0x12

    move/from16 v21, v14

    .line 125
    aget-byte v14, v0, v16

    int-to-char v14, v14

    move/from16 v16, v14

    .line 126
    const-string v14, "illegal input "

    move/from16 v22, v11

    const/16 v23, 0x30

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    if-ne v9, v11, :cond_1

    const/16 v11, 0x20

    if-eq v12, v11, :cond_0

    const/16 v11, 0x54

    if-ne v12, v11, :cond_1

    :cond_0
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_1

    if-ne v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_4

    if-ne v9, v11, :cond_4

    const/16 v11, 0x20

    if-eq v12, v11, :cond_2

    const/16 v11, 0x54

    if-ne v12, v11, :cond_3

    :cond_2
    const/16 v11, 0x3a

    goto :goto_0

    :cond_3
    const/16 v11, 0x2f

    goto :goto_2

    :goto_0
    if-ne v15, v11, :cond_3

    if-ne v10, v11, :cond_3

    :goto_1
    move v9, v3

    move v6, v4

    move v12, v5

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v4, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move v5, v2

    move/from16 v2, v17

    move-object/from16 v17, v14

    move/from16 v14, v23

    goto/16 :goto_7

    :cond_4
    :goto_2
    if-ne v4, v11, :cond_6

    if-eq v7, v11, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v11, 0x20

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_7

    if-eq v7, v11, :cond_5

    :cond_7
    const/16 v11, 0x2d

    if-ne v4, v11, :cond_8

    if-ne v7, v11, :cond_8

    goto :goto_3

    :goto_5
    if-ne v12, v11, :cond_9

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_8

    if-ne v10, v11, :cond_8

    move v4, v3

    move v7, v5

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move v5, v2

    move v2, v8

    move-object/from16 v17, v14

    move/from16 v14, v23

    :goto_6
    move v8, v6

    move/from16 v6, v18

    goto/16 :goto_7

    :cond_8
    const/16 v11, 0x20

    :cond_9
    if-ne v3, v11, :cond_c

    if-ne v7, v11, :cond_c

    if-ne v12, v11, :cond_c

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_b

    if-ne v10, v11, :cond_b

    .line 127
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_a

    .line 128
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v5, v4

    .line 129
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v6, v3

    move v7, v5

    move/from16 v4, v17

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move/from16 v3, v23

    move v5, v2

    move v2, v8

    move-object/from16 v17, v14

    move v14, v3

    goto :goto_6

    .line 130
    :cond_a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 131
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_b
    const/16 v11, 0x20

    :cond_c
    if-ne v4, v11, :cond_f

    if-ne v8, v11, :cond_f

    if-ne v13, v11, :cond_f

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_e

    if-ne v10, v11, :cond_e

    .line 132
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v4

    if-lez v4, :cond_d

    .line 133
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 134
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v6, v4

    move v4, v3

    move v7, v5

    move v8, v6

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v6, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move/from16 v13, v23

    move v5, v2

    move v2, v9

    move-object/from16 v17, v14

    move/from16 v9, v18

    move v14, v13

    goto/16 :goto_7

    .line 135
    :cond_d
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 136
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_e
    const/16 v11, 0x20

    :cond_f
    if-ne v4, v11, :cond_12

    if-ne v8, v11, :cond_12

    if-ne v13, v11, :cond_12

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_11

    if-ne v10, v11, :cond_11

    .line 137
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 138
    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v5, v4

    .line 139
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v6, v2

    move v4, v3

    move v7, v5

    move v8, v6

    move v2, v9

    move/from16 v3, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v6, v20

    move/from16 v13, v21

    move/from16 v11, v22

    move/from16 v5, v23

    move-object/from16 v17, v14

    move v14, v5

    goto :goto_7

    .line 140
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 141
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_11
    const/16 v11, 0x20

    :cond_12
    if-ne v4, v11, :cond_2b

    if-ne v8, v11, :cond_2b

    if-ne v13, v11, :cond_2b

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_2b

    move/from16 v2, v22

    if-ne v2, v11, :cond_2b

    .line 142
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_2a

    .line 143
    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v5, v4

    .line 144
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v6, v2

    move v4, v3

    move v7, v5

    move v8, v6

    move v2, v9

    move/from16 v3, v17

    move/from16 v9, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v13, v21

    move/from16 v11, v23

    move-object/from16 v17, v14

    move v14, v11

    :goto_7
    if-lt v2, v14, :cond_29

    const/16 v0, 0x39

    if-gt v2, v0, :cond_28

    if-lt v9, v14, :cond_28

    if-gt v9, v0, :cond_28

    if-lt v6, v14, :cond_28

    if-gt v6, v0, :cond_28

    if-lt v12, v14, :cond_28

    if-gt v12, v0, :cond_28

    sub-int/2addr v2, v14

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v2, v9

    sub-int/2addr v6, v14

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v12, v14

    add-int/2addr v2, v12

    if-lt v7, v14, :cond_27

    if-gt v7, v0, :cond_27

    if-lt v8, v14, :cond_27

    if-gt v8, v0, :cond_27

    sub-int/2addr v7, v14

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v14

    add-int/2addr v7, v8

    if-nez v7, :cond_14

    if-nez v2, :cond_13

    goto :goto_8

    :cond_13
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    const/16 v4, 0x13

    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_14
    :goto_8
    const/16 v6, 0xc

    if-gt v7, v6, :cond_13

    if-lt v3, v14, :cond_26

    if-gt v3, v0, :cond_26

    if-lt v4, v14, :cond_26

    if-gt v4, v0, :cond_26

    sub-int/2addr v3, v14

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v14

    add-int/2addr v3, v4

    const/4 v4, 0x2

    const/4 v8, 0x4

    if-eq v7, v4, :cond_16

    if-eq v7, v8, :cond_15

    const/4 v9, 0x6

    if-eq v7, v9, :cond_15

    const/16 v9, 0x9

    if-eq v7, v9, :cond_15

    const/16 v9, 0xb

    if-eq v7, v9, :cond_15

    const/16 v9, 0x1f

    goto :goto_9

    :cond_15
    const/16 v9, 0x1e

    goto :goto_9

    :cond_16
    and-int/lit8 v9, v2, 0x3

    if-nez v9, :cond_18

    .line 145
    rem-int/lit8 v9, v2, 0x64

    if-nez v9, :cond_17

    rem-int/lit16 v9, v2, 0x190

    if-nez v9, :cond_18

    :cond_17
    const/16 v9, 0x1d

    goto :goto_9

    :cond_18
    const/16 v9, 0x1c

    :goto_9
    if-nez v3, :cond_1a

    if-nez v2, :cond_19

    goto :goto_a

    :cond_19
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    const/16 v4, 0x13

    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_1a
    :goto_a
    if-gt v3, v9, :cond_19

    const/16 v14, 0x30

    if-lt v13, v14, :cond_25

    if-gt v13, v0, :cond_25

    if-lt v15, v14, :cond_25

    if-gt v15, v0, :cond_25

    sub-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v15, v14

    add-int/2addr v13, v15

    if-lt v5, v14, :cond_24

    if-gt v5, v0, :cond_24

    if-lt v10, v14, :cond_24

    if-gt v10, v0, :cond_24

    sub-int/2addr v5, v14

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v10, v14

    add-int/2addr v5, v10

    if-lt v11, v14, :cond_23

    if-gt v11, v0, :cond_23

    move/from16 v9, v16

    if-lt v9, v14, :cond_23

    if-gt v9, v0, :cond_23

    sub-int/2addr v11, v14

    mul-int/lit8 v11, v11, 0xa

    add-int/lit8 v14, v9, -0x30

    add-int/2addr v11, v14

    if-nez v2, :cond_1b

    if-nez v7, :cond_1b

    if-nez v3, :cond_1b

    const/4 v7, 0x1

    const/16 v2, 0x7b2

    move v3, v7

    :cond_1b
    mul-int/lit16 v0, v2, 0x16d

    add-int/lit8 v1, v2, 0x3

    .line 146
    div-int/2addr v1, v8

    add-int/lit8 v8, v2, 0x63

    div-int/lit8 v8, v8, 0x64

    sub-int/2addr v1, v8

    add-int/lit16 v8, v2, 0x18f

    div-int/lit16 v8, v8, 0x190

    add-int/2addr v1, v8

    add-int/2addr v0, v1

    mul-int/lit16 v1, v7, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/2addr v1, v6

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    if-le v7, v4, :cond_1e

    const-wide/16 v8, 0x1

    sub-long v8, v0, v8

    and-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_1d

    .line 147
    rem-int/lit8 v4, v2, 0x64

    if-nez v4, :cond_1c

    rem-int/lit16 v4, v2, 0x190

    if-nez v4, :cond_1d

    :cond_1c
    move-wide v0, v8

    goto :goto_b

    :cond_1d
    const-wide/16 v8, 0x2

    sub-long/2addr v0, v8

    :cond_1e
    :goto_b
    const-wide/32 v8, 0xafaa8

    sub-long/2addr v0, v8

    const-wide/32 v8, 0x15180

    mul-long/2addr v0, v8

    mul-int/lit16 v4, v13, 0xe10

    int-to-long v8, v4

    add-long/2addr v0, v8

    mul-int/lit8 v4, v5, 0x3c

    int-to-long v8, v4

    add-long/2addr v0, v8

    int-to-long v8, v11

    add-long/2addr v0, v8

    if-nez p2, :cond_1f

    .line 148
    sget-object v4, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_c

    :cond_1f
    move-object/from16 v4, p2

    .line 149
    :goto_c
    sget-object v6, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-wide/32 v8, 0x28d2bea0

    cmp-long v6, v0, v8

    if-ltz v6, :cond_20

    const/16 v11, 0x7080

    goto :goto_e

    .line 150
    :cond_20
    sget-object v6, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    if-eq v4, v6, :cond_22

    const-string v6, "UTC"

    iget-object v8, v4, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_d

    .line 151
    :cond_21
    invoke-static {v2, v7, v3}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object v2

    const/4 v3, 0x0

    .line 152
    invoke-static {v13, v5, v11, v3}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    move-result-object v3

    .line 153
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v2

    .line 154
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/LocalDateTime;)I

    move-result v11

    goto :goto_e

    :cond_22
    :goto_d
    const/4 v11, 0x0

    :goto_e
    int-to-long v2, v11

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 155
    :cond_23
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x13

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 156
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_24
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 157
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 158
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_25
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 159
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 160
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 161
    :goto_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 162
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_26
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 163
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 164
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 165
    :goto_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 166
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_27
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 167
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 168
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_28
    move-object/from16 v2, p0

    :goto_11
    move-object/from16 v3, v17

    goto :goto_12

    :cond_29
    move-object v2, v0

    goto :goto_11

    .line 169
    :goto_12
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 170
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2a
    move-object v2, v0

    move-object v3, v14

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 171
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 172
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2b
    move-object v2, v0

    move-object v3, v14

    .line 173
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 174
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseMillis19([CILcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 177
    aget-char v3, v0, v3

    add-int/lit8 v4, v1, 0x2

    .line 178
    aget-char v4, v0, v4

    add-int/lit8 v5, v1, 0x3

    .line 179
    aget-char v5, v0, v5

    add-int/lit8 v6, v1, 0x4

    .line 180
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x5

    .line 181
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x6

    .line 182
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x7

    .line 183
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x8

    .line 184
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x9

    .line 185
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0xa

    .line 186
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0xb

    .line 187
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xc

    .line 188
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xd

    .line 189
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 190
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xf

    .line 191
    aget-char v16, v0, v16

    add-int/lit8 v18, v1, 0x10

    move/from16 v19, v10

    .line 192
    aget-char v10, v0, v18

    add-int/lit8 v18, v1, 0x11

    move/from16 v20, v11

    .line 193
    aget-char v11, v0, v18

    add-int/lit8 v18, v1, 0x12

    move/from16 v21, v14

    .line 194
    aget-char v14, v0, v18

    move/from16 v18, v14

    .line 195
    const-string v14, "illegal input "

    move/from16 v22, v11

    const/16 v24, 0x30

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    if-ne v9, v11, :cond_1

    const/16 v11, 0x20

    if-eq v12, v11, :cond_0

    const/16 v11, 0x54

    if-ne v12, v11, :cond_1

    :cond_0
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_1

    if-ne v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_4

    if-ne v9, v11, :cond_4

    const/16 v11, 0x20

    if-eq v12, v11, :cond_2

    const/16 v11, 0x54

    if-ne v12, v11, :cond_3

    :cond_2
    const/16 v11, 0x3a

    goto :goto_0

    :cond_3
    const/16 v11, 0x2f

    goto :goto_2

    :goto_0
    if-ne v15, v11, :cond_3

    if-ne v10, v11, :cond_3

    :goto_1
    move v9, v3

    move v6, v4

    move v12, v5

    move/from16 v10, v16

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move v5, v2

    move-object/from16 v16, v14

    move/from16 v2, v17

    move/from16 v14, v24

    goto/16 :goto_7

    :cond_4
    :goto_2
    if-ne v4, v11, :cond_6

    if-eq v7, v11, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v11, 0x20

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_7

    const/16 v11, 0x2e

    if-eq v7, v11, :cond_5

    :cond_7
    const/16 v11, 0x2d

    if-ne v4, v11, :cond_8

    if-ne v7, v11, :cond_8

    goto :goto_3

    :goto_5
    if-ne v12, v11, :cond_9

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_8

    if-ne v10, v11, :cond_8

    move v4, v3

    move v7, v5

    move/from16 v10, v16

    move/from16 v3, v17

    move/from16 v12, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move v5, v2

    move v2, v8

    move-object/from16 v16, v14

    move/from16 v14, v24

    :goto_6
    move v8, v6

    move/from16 v6, v19

    goto/16 :goto_7

    :cond_8
    const/16 v11, 0x20

    :cond_9
    if-ne v3, v11, :cond_c

    if-ne v7, v11, :cond_c

    if-ne v12, v11, :cond_c

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_b

    if-ne v10, v11, :cond_b

    .line 196
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_a

    .line 197
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v5, v4

    .line 198
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v6, v3

    move v7, v5

    move/from16 v10, v16

    move/from16 v4, v17

    move/from16 v12, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move/from16 v3, v24

    move v5, v2

    move v2, v8

    move-object/from16 v16, v14

    move v14, v3

    goto :goto_6

    .line 199
    :cond_a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 200
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_b
    const/16 v11, 0x20

    :cond_c
    if-ne v4, v11, :cond_f

    if-ne v8, v11, :cond_f

    if-ne v13, v11, :cond_f

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_e

    if-ne v10, v11, :cond_e

    .line 201
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v4

    if-lez v4, :cond_d

    .line 202
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 203
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v6, v4

    move v4, v3

    move v7, v5

    move v8, v6

    move/from16 v10, v16

    move/from16 v3, v17

    move/from16 v6, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move/from16 v13, v24

    move v5, v2

    move v2, v9

    move-object/from16 v16, v14

    move/from16 v9, v19

    move v14, v13

    goto/16 :goto_7

    .line 204
    :cond_d
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 205
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_e
    const/16 v11, 0x20

    :cond_f
    if-ne v4, v11, :cond_12

    if-ne v8, v11, :cond_12

    if-ne v13, v11, :cond_12

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_11

    if-ne v10, v11, :cond_11

    .line 206
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 207
    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v5, v4

    .line 208
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v6, v2

    move v4, v3

    move v7, v5

    move v8, v6

    move v2, v9

    move/from16 v10, v16

    move/from16 v3, v17

    move/from16 v9, v19

    move/from16 v6, v20

    move/from16 v13, v21

    move/from16 v11, v22

    move/from16 v5, v24

    move-object/from16 v16, v14

    move v14, v5

    goto :goto_7

    .line 209
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 210
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_11
    const/16 v11, 0x20

    :cond_12
    if-ne v4, v11, :cond_2b

    if-ne v8, v11, :cond_2b

    if-ne v13, v11, :cond_2b

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_2b

    move/from16 v2, v22

    if-ne v2, v11, :cond_2b

    .line 211
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_2a

    .line 212
    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v5, v4

    .line 213
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v6, v2

    move v4, v3

    move v7, v5

    move v8, v6

    move v2, v9

    move/from16 v5, v16

    move/from16 v3, v17

    move/from16 v9, v19

    move/from16 v6, v20

    move/from16 v13, v21

    move/from16 v11, v24

    move-object/from16 v16, v14

    move v14, v11

    :goto_7
    if-lt v2, v14, :cond_29

    const/16 v0, 0x39

    if-gt v2, v0, :cond_28

    if-lt v9, v14, :cond_28

    if-gt v9, v0, :cond_28

    if-lt v6, v14, :cond_28

    if-gt v6, v0, :cond_28

    if-lt v12, v14, :cond_28

    if-gt v12, v0, :cond_28

    sub-int/2addr v2, v14

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v2, v9

    sub-int/2addr v6, v14

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v12, v14

    add-int/2addr v2, v12

    if-lt v7, v14, :cond_27

    if-gt v7, v0, :cond_27

    if-lt v8, v14, :cond_27

    if-gt v8, v0, :cond_27

    sub-int/2addr v7, v14

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v14

    add-int/2addr v7, v8

    if-nez v7, :cond_14

    if-nez v2, :cond_13

    goto :goto_8

    :cond_13
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    const/16 v4, 0x13

    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_14
    :goto_8
    const/16 v6, 0xc

    if-gt v7, v6, :cond_13

    if-lt v3, v14, :cond_26

    if-gt v3, v0, :cond_26

    if-lt v4, v14, :cond_26

    if-gt v4, v0, :cond_26

    sub-int/2addr v3, v14

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v14

    add-int/2addr v3, v4

    const/4 v4, 0x2

    const/4 v8, 0x4

    if-eq v7, v4, :cond_16

    if-eq v7, v8, :cond_15

    const/4 v9, 0x6

    if-eq v7, v9, :cond_15

    const/16 v9, 0x9

    if-eq v7, v9, :cond_15

    const/16 v9, 0xb

    if-eq v7, v9, :cond_15

    const/16 v9, 0x1f

    goto :goto_9

    :cond_15
    const/16 v9, 0x1e

    goto :goto_9

    :cond_16
    and-int/lit8 v9, v2, 0x3

    if-nez v9, :cond_18

    .line 214
    rem-int/lit8 v9, v2, 0x64

    if-nez v9, :cond_17

    rem-int/lit16 v9, v2, 0x190

    if-nez v9, :cond_18

    :cond_17
    const/16 v9, 0x1d

    goto :goto_9

    :cond_18
    const/16 v9, 0x1c

    :goto_9
    if-nez v3, :cond_1a

    if-nez v2, :cond_19

    goto :goto_a

    :cond_19
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    const/16 v4, 0x13

    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_1a
    :goto_a
    if-gt v3, v9, :cond_19

    const/16 v14, 0x30

    if-lt v13, v14, :cond_25

    if-gt v13, v0, :cond_25

    if-lt v15, v14, :cond_25

    if-gt v15, v0, :cond_25

    sub-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v15, v14

    add-int/2addr v13, v15

    if-lt v5, v14, :cond_24

    if-gt v5, v0, :cond_24

    if-lt v10, v14, :cond_24

    if-gt v10, v0, :cond_24

    sub-int/2addr v5, v14

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v10, v14

    add-int v28, v5, v10

    if-lt v11, v14, :cond_23

    if-gt v11, v0, :cond_23

    move/from16 v5, v18

    if-lt v5, v14, :cond_23

    if-gt v5, v0, :cond_23

    sub-int/2addr v11, v14

    mul-int/lit8 v11, v11, 0xa

    add-int/lit8 v14, v5, -0x30

    add-int/2addr v11, v14

    const/4 v0, 0x1

    if-nez v2, :cond_1b

    if-nez v7, :cond_1b

    if-nez v3, :cond_1b

    const/16 v2, 0x7b2

    move v7, v0

    move/from16 v26, v7

    goto :goto_b

    :cond_1b
    move/from16 v26, v3

    :goto_b
    mul-int/lit16 v1, v2, 0x16d

    add-int/lit8 v3, v2, 0x3

    .line 215
    div-int/2addr v3, v8

    add-int/lit8 v5, v2, 0x63

    div-int/lit8 v5, v5, 0x64

    sub-int/2addr v3, v5

    add-int/lit16 v5, v2, 0x18f

    div-int/lit16 v5, v5, 0x190

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    mul-int/lit16 v3, v7, 0x16f

    add-int/lit16 v3, v3, -0x16a

    div-int/2addr v3, v6

    add-int/2addr v1, v3

    add-int/lit8 v3, v26, -0x1

    add-int/2addr v1, v3

    int-to-long v5, v1

    if-le v7, v4, :cond_1e

    const-wide/16 v3, 0x1

    sub-long v3, v5, v3

    and-int/lit8 v1, v2, 0x3

    if-nez v1, :cond_1d

    .line 216
    rem-int/lit8 v1, v2, 0x64

    if-nez v1, :cond_1c

    rem-int/lit16 v1, v2, 0x190

    if-nez v1, :cond_1d

    :cond_1c
    move-wide v5, v3

    goto :goto_c

    :cond_1d
    const-wide/16 v3, 0x2

    sub-long/2addr v5, v3

    :cond_1e
    :goto_c
    const-wide/32 v3, 0xafaa8

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x15180

    mul-long/2addr v5, v3

    mul-int/lit16 v1, v13, 0xe10

    int-to-long v3, v1

    add-long/2addr v5, v3

    mul-int/lit8 v1, v28, 0x3c

    int-to-long v3, v1

    add-long/2addr v5, v3

    int-to-long v3, v11

    add-long/2addr v5, v3

    if-nez p2, :cond_1f

    .line 217
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_d

    :cond_1f
    move-object/from16 v1, p2

    .line 218
    :goto_d
    sget-object v3, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-wide/32 v0, 0x28d2bea0

    cmp-long v0, v5, v0

    if-ltz v0, :cond_20

    const/16 v11, 0x7080

    goto :goto_e

    .line 219
    :cond_20
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v11

    goto :goto_e

    .line 220
    :cond_21
    const-string v3, "UTC"

    iget-object v4, v1, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v11, 0x0

    :goto_e
    int-to-long v0, v11

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v5, v0

    return-wide v5

    .line 221
    :cond_22
    iget-object v1, v1, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v23

    add-int/lit8 v25, v7, -0x1

    move/from16 v24, v2

    move/from16 v29, v11

    move/from16 v27, v13

    .line 222
    invoke-virtual/range {v23 .. v29}, Ljava/util/Calendar;->set(IIIIII)V

    move-object/from16 v0, v23

    const/16 v1, 0xe

    const/4 v3, 0x0

    .line 223
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 225
    :cond_23
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x13

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 226
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_24
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 227
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 228
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_25
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 229
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 230
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 231
    :goto_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 232
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_26
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 233
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 234
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 235
    :goto_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 236
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_27
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 237
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 238
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_28
    move-object/from16 v2, p0

    :goto_11
    move-object/from16 v3, v16

    goto :goto_12

    :cond_29
    move-object v2, v0

    goto :goto_11

    .line 239
    :goto_12
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 240
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2a
    move-object v2, v0

    move-object v3, v14

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 241
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 242
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2b
    move-object v2, v0

    move-object v3, v14

    .line 243
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 244
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseMillis8(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    if-eqz v0, :cond_15

    .line 7
    .line 8
    const-string v2, "null"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result v2

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    if-ne v2, v3, :cond_14

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v5

    .line 35
    const/4 v6, 0x2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 39
    move-result v7

    .line 40
    const/4 v8, 0x3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 44
    move-result v8

    .line 45
    const/4 v9, 0x4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 49
    move-result v10

    .line 50
    const/4 v11, 0x5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 54
    move-result v11

    .line 55
    const/4 v12, 0x6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 59
    move-result v13

    .line 60
    const/4 v14, 0x7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 64
    move-result v14

    .line 65
    .line 66
    const-string v15, "illegal input"

    .line 67
    .line 68
    const/16 v3, 0x30

    .line 69
    .line 70
    if-lt v2, v3, :cond_13

    .line 71
    .line 72
    const/16 v4, 0x39

    .line 73
    .line 74
    if-gt v2, v4, :cond_12

    .line 75
    .line 76
    if-lt v5, v3, :cond_12

    .line 77
    .line 78
    if-gt v5, v4, :cond_12

    .line 79
    .line 80
    if-lt v7, v3, :cond_12

    .line 81
    .line 82
    if-gt v7, v4, :cond_12

    .line 83
    .line 84
    if-lt v8, v3, :cond_12

    .line 85
    .line 86
    if-gt v8, v4, :cond_12

    .line 87
    sub-int/2addr v2, v3

    .line 88
    .line 89
    mul-int/lit16 v2, v2, 0x3e8

    .line 90
    sub-int/2addr v5, v3

    .line 91
    .line 92
    mul-int/lit8 v5, v5, 0x64

    .line 93
    add-int/2addr v2, v5

    .line 94
    sub-int/2addr v7, v3

    .line 95
    .line 96
    mul-int/lit8 v7, v7, 0xa

    .line 97
    add-int/2addr v2, v7

    .line 98
    sub-int/2addr v8, v3

    .line 99
    add-int/2addr v2, v8

    .line 100
    .line 101
    if-lt v10, v3, :cond_11

    .line 102
    .line 103
    if-gt v10, v4, :cond_11

    .line 104
    .line 105
    if-lt v11, v3, :cond_11

    .line 106
    .line 107
    if-gt v11, v4, :cond_11

    .line 108
    sub-int/2addr v10, v3

    .line 109
    .line 110
    mul-int/lit8 v10, v10, 0xa

    .line 111
    sub-int/2addr v11, v3

    .line 112
    add-int/2addr v10, v11

    .line 113
    .line 114
    if-nez v10, :cond_2

    .line 115
    .line 116
    if-nez v2, :cond_1

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    const/4 v2, 0x0

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_2
    :goto_0
    const/16 v5, 0xc

    .line 123
    .line 124
    if-gt v10, v5, :cond_1

    .line 125
    .line 126
    if-lt v13, v3, :cond_10

    .line 127
    .line 128
    if-gt v13, v4, :cond_10

    .line 129
    .line 130
    if-lt v14, v3, :cond_10

    .line 131
    .line 132
    if-gt v14, v4, :cond_10

    .line 133
    sub-int/2addr v13, v3

    .line 134
    .line 135
    mul-int/lit8 v13, v13, 0xa

    .line 136
    sub-int/2addr v14, v3

    .line 137
    add-int/2addr v13, v14

    .line 138
    .line 139
    if-eq v10, v6, :cond_4

    .line 140
    .line 141
    if-eq v10, v9, :cond_3

    .line 142
    .line 143
    if-eq v10, v12, :cond_3

    .line 144
    .line 145
    const/16 v3, 0x9

    .line 146
    .line 147
    if-eq v10, v3, :cond_3

    .line 148
    .line 149
    const/16 v3, 0xb

    .line 150
    .line 151
    if-eq v10, v3, :cond_3

    .line 152
    .line 153
    const/16 v3, 0x1f

    .line 154
    goto :goto_1

    .line 155
    .line 156
    :cond_3
    const/16 v3, 0x1e

    .line 157
    goto :goto_1

    .line 158
    .line 159
    :cond_4
    and-int/lit8 v3, v2, 0x3

    .line 160
    .line 161
    if-nez v3, :cond_6

    .line 162
    .line 163
    rem-int/lit8 v3, v2, 0x64

    .line 164
    .line 165
    if-nez v3, :cond_5

    .line 166
    .line 167
    rem-int/lit16 v3, v2, 0x190

    .line 168
    .line 169
    if-nez v3, :cond_6

    .line 170
    .line 171
    :cond_5
    const/16 v3, 0x1d

    .line 172
    goto :goto_1

    .line 173
    .line 174
    :cond_6
    const/16 v3, 0x1c

    .line 175
    .line 176
    :goto_1
    if-nez v13, :cond_7

    .line 177
    .line 178
    if-nez v2, :cond_f

    .line 179
    .line 180
    :cond_7
    if-gt v13, v3, :cond_f

    .line 181
    .line 182
    if-nez v2, :cond_8

    .line 183
    .line 184
    if-nez v10, :cond_8

    .line 185
    .line 186
    if-nez v13, :cond_8

    .line 187
    .line 188
    const/16 v2, 0x7b2

    .line 189
    const/4 v3, 0x1

    .line 190
    const/4 v13, 0x1

    .line 191
    goto :goto_2

    .line 192
    :cond_8
    move v3, v10

    .line 193
    .line 194
    :goto_2
    mul-int/lit16 v0, v2, 0x16d

    .line 195
    .line 196
    add-int/lit8 v4, v2, 0x3

    .line 197
    div-int/2addr v4, v9

    .line 198
    .line 199
    add-int/lit8 v7, v2, 0x63

    .line 200
    .line 201
    div-int/lit8 v7, v7, 0x64

    .line 202
    sub-int/2addr v4, v7

    .line 203
    .line 204
    add-int/lit16 v7, v2, 0x18f

    .line 205
    .line 206
    div-int/lit16 v7, v7, 0x190

    .line 207
    add-int/2addr v4, v7

    .line 208
    add-int/2addr v0, v4

    .line 209
    .line 210
    mul-int/lit16 v4, v3, 0x16f

    .line 211
    .line 212
    add-int/lit16 v4, v4, -0x16a

    .line 213
    div-int/2addr v4, v5

    .line 214
    add-int/2addr v0, v4

    .line 215
    .line 216
    add-int/lit8 v4, v13, -0x1

    .line 217
    add-int/2addr v0, v4

    .line 218
    int-to-long v4, v0

    .line 219
    .line 220
    if-le v3, v6, :cond_b

    .line 221
    .line 222
    const-wide/16 v6, 0x1

    .line 223
    .line 224
    sub-long v6, v4, v6

    .line 225
    .line 226
    and-int/lit8 v0, v2, 0x3

    .line 227
    .line 228
    if-nez v0, :cond_a

    .line 229
    .line 230
    rem-int/lit8 v0, v2, 0x64

    .line 231
    .line 232
    if-nez v0, :cond_9

    .line 233
    .line 234
    rem-int/lit16 v0, v2, 0x190

    .line 235
    .line 236
    if-nez v0, :cond_a

    .line 237
    :cond_9
    move-wide v4, v6

    .line 238
    goto :goto_3

    .line 239
    .line 240
    :cond_a
    const-wide/16 v6, 0x2

    .line 241
    sub-long/2addr v4, v6

    .line 242
    .line 243
    .line 244
    :cond_b
    :goto_3
    const-wide/32 v6, 0xafaa8

    .line 245
    sub-long/2addr v4, v6

    .line 246
    .line 247
    .line 248
    const-wide/32 v6, 0x15180

    .line 249
    mul-long/2addr v4, v6

    .line 250
    .line 251
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v0

    .line 256
    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    .line 260
    const-wide/32 v6, 0x28d2bea0

    .line 261
    .line 262
    cmp-long v0, v4, v6

    .line 263
    .line 264
    if-ltz v0, :cond_c

    .line 265
    .line 266
    const/16 v0, 0x7080

    .line 267
    goto :goto_5

    .line 268
    .line 269
    :cond_c
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 270
    .line 271
    if-eq v1, v0, :cond_e

    .line 272
    .line 273
    const-string v0, "UTC"

    .line 274
    .line 275
    iget-object v6, v1, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    move-result v0

    .line 280
    .line 281
    if-eqz v0, :cond_d

    .line 282
    goto :goto_4

    .line 283
    .line 284
    .line 285
    :cond_d
    invoke-static {v2, v3, v13}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 292
    move-result-object v0

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/LocalDateTime;)I

    .line 296
    move-result v0

    .line 297
    goto :goto_5

    .line 298
    :cond_e
    :goto_4
    const/4 v0, 0x0

    .line 299
    :goto_5
    int-to-long v0, v0

    .line 300
    sub-long/2addr v4, v0

    .line 301
    .line 302
    const-wide/16 v0, 0x3e8

    .line 303
    mul-long/2addr v4, v0

    .line 304
    return-wide v4

    .line 305
    .line 306
    :cond_f
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 307
    const/4 v2, 0x0

    .line 308
    .line 309
    .line 310
    invoke-direct {v1, v15, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    throw v1

    .line 312
    :cond_10
    const/4 v2, 0x0

    .line 313
    .line 314
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 315
    .line 316
    .line 317
    invoke-direct {v1, v15, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    throw v1

    .line 319
    .line 320
    :goto_6
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 321
    .line 322
    .line 323
    invoke-direct {v1, v15, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    throw v1

    .line 325
    :cond_11
    const/4 v2, 0x0

    .line 326
    .line 327
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 328
    .line 329
    .line 330
    invoke-direct {v1, v15, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    throw v1

    .line 332
    :cond_12
    const/4 v2, 0x0

    .line 333
    goto :goto_7

    .line 334
    :cond_13
    move v2, v4

    .line 335
    .line 336
    :goto_7
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 337
    .line 338
    .line 339
    invoke-direct {v1, v15, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    throw v1

    .line 341
    :cond_14
    move v2, v4

    .line 342
    .line 343
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 344
    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    const-string v4, "illegal input "

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    move-result-object v3

    .line 361
    .line 362
    .line 363
    invoke-direct {v1, v3, v0, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    throw v1

    .line 365
    .line 366
    :cond_15
    :goto_8
    const-wide/16 v0, 0x0

    .line 367
    return-wide v0
.end method

.method public static parseMillisYMDHMS19(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J
    .locals 24

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    return-wide v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    move-result v1

    .line 12
    .line 13
    const/16 v2, 0x13

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-ne v1, v2, :cond_18

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v6

    .line 31
    const/4 v7, 0x3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v7

    .line 36
    const/4 v8, 0x4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 40
    move-result v9

    .line 41
    const/4 v10, 0x5

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 45
    move-result v10

    .line 46
    const/4 v11, 0x6

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 50
    move-result v12

    .line 51
    const/4 v13, 0x7

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 55
    move-result v13

    .line 56
    .line 57
    const/16 v14, 0x8

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 61
    move-result v14

    .line 62
    .line 63
    const/16 v15, 0x9

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 67
    move-result v2

    .line 68
    .line 69
    const/16 v3, 0xa

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 73
    move-result v15

    .line 74
    .line 75
    move/from16 v16, v3

    .line 76
    .line 77
    const/16 v3, 0xb

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 81
    move-result v11

    .line 82
    .line 83
    const/16 v3, 0xc

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 87
    move-result v8

    .line 88
    .line 89
    const/16 v5, 0xd

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 93
    move-result v5

    .line 94
    .line 95
    const/16 v3, 0xe

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 99
    move-result v3

    .line 100
    .line 101
    move/from16 v19, v3

    .line 102
    .line 103
    const/16 v3, 0xf

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 107
    move-result v3

    .line 108
    .line 109
    move/from16 v20, v3

    .line 110
    .line 111
    const/16 v3, 0x10

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 115
    move-result v3

    .line 116
    .line 117
    move/from16 v21, v8

    .line 118
    .line 119
    const/16 v8, 0x11

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 123
    move-result v8

    .line 124
    .line 125
    move/from16 v22, v8

    .line 126
    .line 127
    const/16 v8, 0x12

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 131
    move-result v8

    .line 132
    .line 133
    const/16 v0, 0x2d

    .line 134
    .line 135
    move/from16 v23, v8

    .line 136
    .line 137
    const-string v8, "illegal input"

    .line 138
    .line 139
    if-ne v9, v0, :cond_17

    .line 140
    .line 141
    if-ne v13, v0, :cond_17

    .line 142
    .line 143
    const/16 v0, 0x20

    .line 144
    .line 145
    if-ne v15, v0, :cond_17

    .line 146
    .line 147
    const/16 v0, 0x3a

    .line 148
    .line 149
    if-ne v5, v0, :cond_17

    .line 150
    .line 151
    if-ne v3, v0, :cond_17

    .line 152
    .line 153
    const/16 v0, 0x30

    .line 154
    .line 155
    if-lt v1, v0, :cond_16

    .line 156
    .line 157
    const/16 v3, 0x39

    .line 158
    .line 159
    if-gt v1, v3, :cond_16

    .line 160
    .line 161
    if-lt v4, v0, :cond_16

    .line 162
    .line 163
    if-gt v4, v3, :cond_16

    .line 164
    .line 165
    if-lt v6, v0, :cond_16

    .line 166
    .line 167
    if-gt v6, v3, :cond_16

    .line 168
    .line 169
    if-lt v7, v0, :cond_16

    .line 170
    .line 171
    if-gt v7, v3, :cond_16

    .line 172
    sub-int/2addr v1, v0

    .line 173
    .line 174
    mul-int/lit16 v1, v1, 0x3e8

    .line 175
    sub-int/2addr v4, v0

    .line 176
    .line 177
    mul-int/lit8 v4, v4, 0x64

    .line 178
    add-int/2addr v1, v4

    .line 179
    sub-int/2addr v6, v0

    .line 180
    .line 181
    mul-int/lit8 v6, v6, 0xa

    .line 182
    add-int/2addr v1, v6

    .line 183
    sub-int/2addr v7, v0

    .line 184
    add-int/2addr v1, v7

    .line 185
    .line 186
    if-lt v10, v0, :cond_15

    .line 187
    .line 188
    if-gt v10, v3, :cond_15

    .line 189
    .line 190
    if-lt v12, v0, :cond_15

    .line 191
    .line 192
    if-gt v12, v3, :cond_15

    .line 193
    sub-int/2addr v10, v0

    .line 194
    .line 195
    mul-int/lit8 v10, v10, 0xa

    .line 196
    sub-int/2addr v12, v0

    .line 197
    add-int/2addr v10, v12

    .line 198
    .line 199
    if-nez v10, :cond_1

    .line 200
    .line 201
    if-nez v1, :cond_2

    .line 202
    .line 203
    :cond_1
    const/16 v4, 0xc

    .line 204
    goto :goto_0

    .line 205
    :cond_2
    const/4 v5, 0x0

    .line 206
    .line 207
    move-object/from16 v1, p0

    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :goto_0
    if-gt v10, v4, :cond_2

    .line 212
    .line 213
    if-lt v14, v0, :cond_14

    .line 214
    .line 215
    if-gt v14, v3, :cond_14

    .line 216
    .line 217
    if-lt v2, v0, :cond_14

    .line 218
    .line 219
    if-gt v2, v3, :cond_14

    .line 220
    sub-int/2addr v14, v0

    .line 221
    .line 222
    mul-int/lit8 v14, v14, 0xa

    .line 223
    sub-int/2addr v2, v0

    .line 224
    add-int/2addr v14, v2

    .line 225
    const/4 v2, 0x2

    .line 226
    .line 227
    if-eq v10, v2, :cond_4

    .line 228
    const/4 v2, 0x4

    .line 229
    .line 230
    if-eq v10, v2, :cond_3

    .line 231
    const/4 v2, 0x6

    .line 232
    .line 233
    if-eq v10, v2, :cond_3

    .line 234
    .line 235
    const/16 v2, 0x9

    .line 236
    .line 237
    if-eq v10, v2, :cond_3

    .line 238
    .line 239
    const/16 v2, 0xb

    .line 240
    .line 241
    if-eq v10, v2, :cond_3

    .line 242
    .line 243
    const/16 v2, 0x1f

    .line 244
    goto :goto_1

    .line 245
    .line 246
    :cond_3
    const/16 v2, 0x1e

    .line 247
    goto :goto_1

    .line 248
    .line 249
    :cond_4
    and-int/lit8 v2, v1, 0x3

    .line 250
    .line 251
    if-nez v2, :cond_6

    .line 252
    .line 253
    rem-int/lit8 v2, v1, 0x64

    .line 254
    .line 255
    if-nez v2, :cond_5

    .line 256
    .line 257
    rem-int/lit16 v2, v1, 0x190

    .line 258
    .line 259
    if-nez v2, :cond_6

    .line 260
    .line 261
    :cond_5
    const/16 v2, 0x1d

    .line 262
    goto :goto_1

    .line 263
    .line 264
    :cond_6
    const/16 v2, 0x1c

    .line 265
    .line 266
    :goto_1
    if-nez v14, :cond_8

    .line 267
    .line 268
    if-nez v1, :cond_7

    .line 269
    goto :goto_2

    .line 270
    :cond_7
    const/4 v5, 0x0

    .line 271
    .line 272
    move-object/from16 v1, p0

    .line 273
    .line 274
    goto/16 :goto_7

    .line 275
    .line 276
    :cond_8
    :goto_2
    if-gt v14, v2, :cond_7

    .line 277
    .line 278
    if-lt v11, v0, :cond_13

    .line 279
    .line 280
    if-gt v11, v3, :cond_13

    .line 281
    .line 282
    move/from16 v2, v21

    .line 283
    .line 284
    if-lt v2, v0, :cond_13

    .line 285
    .line 286
    if-gt v2, v3, :cond_13

    .line 287
    sub-int/2addr v11, v0

    .line 288
    .line 289
    mul-int/lit8 v11, v11, 0xa

    .line 290
    sub-int/2addr v2, v0

    .line 291
    add-int/2addr v11, v2

    .line 292
    .line 293
    move/from16 v2, v19

    .line 294
    .line 295
    if-lt v2, v0, :cond_12

    .line 296
    .line 297
    if-gt v2, v3, :cond_12

    .line 298
    .line 299
    move/from16 v4, v20

    .line 300
    .line 301
    if-lt v4, v0, :cond_12

    .line 302
    .line 303
    if-gt v4, v3, :cond_12

    .line 304
    sub-int/2addr v2, v0

    .line 305
    .line 306
    mul-int/lit8 v2, v2, 0xa

    .line 307
    sub-int/2addr v4, v0

    .line 308
    add-int/2addr v2, v4

    .line 309
    .line 310
    move/from16 v4, v22

    .line 311
    .line 312
    if-lt v4, v0, :cond_11

    .line 313
    .line 314
    if-gt v4, v3, :cond_11

    .line 315
    .line 316
    move/from16 v5, v23

    .line 317
    .line 318
    if-lt v5, v0, :cond_11

    .line 319
    .line 320
    if-gt v5, v3, :cond_11

    .line 321
    .line 322
    add-int/lit8 v8, v4, -0x30

    .line 323
    .line 324
    mul-int/lit8 v8, v8, 0xa

    .line 325
    .line 326
    add-int/lit8 v0, v5, -0x30

    .line 327
    add-int/2addr v8, v0

    .line 328
    .line 329
    if-nez v1, :cond_9

    .line 330
    .line 331
    if-nez v10, :cond_9

    .line 332
    .line 333
    if-nez v14, :cond_9

    .line 334
    .line 335
    const/16 v1, 0x7b2

    .line 336
    const/4 v10, 0x1

    .line 337
    const/4 v14, 0x1

    .line 338
    .line 339
    :cond_9
    mul-int/lit16 v0, v1, 0x16d

    .line 340
    .line 341
    add-int/lit8 v3, v1, 0x3

    .line 342
    .line 343
    const/16 v17, 0x4

    .line 344
    .line 345
    div-int/lit8 v3, v3, 0x4

    .line 346
    .line 347
    add-int/lit8 v4, v1, 0x63

    .line 348
    .line 349
    div-int/lit8 v4, v4, 0x64

    .line 350
    sub-int/2addr v3, v4

    .line 351
    .line 352
    add-int/lit16 v4, v1, 0x18f

    .line 353
    .line 354
    div-int/lit16 v4, v4, 0x190

    .line 355
    add-int/2addr v3, v4

    .line 356
    add-int/2addr v0, v3

    .line 357
    .line 358
    mul-int/lit16 v3, v10, 0x16f

    .line 359
    .line 360
    add-int/lit16 v3, v3, -0x16a

    .line 361
    .line 362
    const/16 v18, 0xc

    .line 363
    .line 364
    div-int/lit8 v3, v3, 0xc

    .line 365
    add-int/2addr v0, v3

    .line 366
    .line 367
    add-int/lit8 v3, v14, -0x1

    .line 368
    add-int/2addr v0, v3

    .line 369
    int-to-long v3, v0

    .line 370
    const/4 v0, 0x2

    .line 371
    .line 372
    if-le v10, v0, :cond_c

    .line 373
    .line 374
    const-wide/16 v5, 0x1

    .line 375
    .line 376
    sub-long v5, v3, v5

    .line 377
    .line 378
    and-int/lit8 v0, v1, 0x3

    .line 379
    .line 380
    if-nez v0, :cond_b

    .line 381
    .line 382
    rem-int/lit8 v0, v1, 0x64

    .line 383
    .line 384
    if-nez v0, :cond_a

    .line 385
    .line 386
    rem-int/lit16 v0, v1, 0x190

    .line 387
    .line 388
    if-nez v0, :cond_b

    .line 389
    :cond_a
    move-wide v3, v5

    .line 390
    goto :goto_3

    .line 391
    .line 392
    :cond_b
    const-wide/16 v5, 0x2

    .line 393
    sub-long/2addr v3, v5

    .line 394
    .line 395
    .line 396
    :cond_c
    :goto_3
    const-wide/32 v5, 0xafaa8

    .line 397
    sub-long/2addr v3, v5

    .line 398
    .line 399
    .line 400
    const-wide/32 v5, 0x15180

    .line 401
    mul-long/2addr v3, v5

    .line 402
    .line 403
    mul-int/lit16 v0, v11, 0xe10

    .line 404
    int-to-long v5, v0

    .line 405
    add-long/2addr v3, v5

    .line 406
    .line 407
    mul-int/lit8 v0, v2, 0x3c

    .line 408
    int-to-long v5, v0

    .line 409
    add-long/2addr v3, v5

    .line 410
    int-to-long v5, v8

    .line 411
    add-long/2addr v3, v5

    .line 412
    .line 413
    if-nez p1, :cond_d

    .line 414
    .line 415
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 416
    goto :goto_4

    .line 417
    .line 418
    :cond_d
    move-object/from16 v0, p1

    .line 419
    .line 420
    :goto_4
    sget-object v5, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 424
    move-result v5

    .line 425
    .line 426
    if-eqz v5, :cond_e

    .line 427
    .line 428
    .line 429
    const-wide/32 v5, 0x28d2bea0

    .line 430
    .line 431
    cmp-long v5, v3, v5

    .line 432
    .line 433
    if-ltz v5, :cond_e

    .line 434
    .line 435
    const/16 v0, 0x7080

    .line 436
    goto :goto_6

    .line 437
    .line 438
    :cond_e
    sget-object v5, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 439
    .line 440
    if-eq v0, v5, :cond_10

    .line 441
    .line 442
    const-string v5, "UTC"

    .line 443
    .line 444
    iget-object v6, v0, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    move-result v5

    .line 449
    .line 450
    if-eqz v5, :cond_f

    .line 451
    goto :goto_5

    .line 452
    .line 453
    .line 454
    :cond_f
    invoke-static {v1, v10, v14}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 455
    move-result-object v1

    .line 456
    const/4 v5, 0x0

    .line 457
    .line 458
    .line 459
    invoke-static {v11, v2, v8, v5}, Lcom/alibaba/fastjson2/time/LocalTime;->of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 460
    move-result-object v2

    .line 461
    .line 462
    .line 463
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 464
    move-result-object v1

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/LocalDateTime;)I

    .line 468
    move-result v0

    .line 469
    goto :goto_6

    .line 470
    :cond_10
    :goto_5
    const/4 v0, 0x0

    .line 471
    :goto_6
    int-to-long v0, v0

    .line 472
    sub-long/2addr v3, v0

    .line 473
    .line 474
    const-wide/16 v0, 0x3e8

    .line 475
    mul-long/2addr v3, v0

    .line 476
    return-wide v3

    .line 477
    .line 478
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 479
    const/4 v5, 0x0

    .line 480
    .line 481
    move-object/from16 v1, p0

    .line 482
    .line 483
    .line 484
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 485
    throw v0

    .line 486
    :cond_12
    const/4 v5, 0x0

    .line 487
    .line 488
    move-object/from16 v1, p0

    .line 489
    .line 490
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 491
    .line 492
    .line 493
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 494
    throw v0

    .line 495
    :cond_13
    const/4 v5, 0x0

    .line 496
    .line 497
    move-object/from16 v1, p0

    .line 498
    .line 499
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 500
    .line 501
    .line 502
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 503
    throw v0

    .line 504
    .line 505
    :goto_7
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 506
    .line 507
    .line 508
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 509
    throw v0

    .line 510
    :cond_14
    const/4 v5, 0x0

    .line 511
    .line 512
    move-object/from16 v1, p0

    .line 513
    .line 514
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 515
    .line 516
    .line 517
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 518
    throw v0

    .line 519
    .line 520
    :goto_8
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 521
    .line 522
    .line 523
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 524
    throw v0

    .line 525
    :cond_15
    const/4 v5, 0x0

    .line 526
    .line 527
    move-object/from16 v1, p0

    .line 528
    .line 529
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 530
    .line 531
    .line 532
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 533
    throw v0

    .line 534
    :cond_16
    const/4 v5, 0x0

    .line 535
    .line 536
    move-object/from16 v1, p0

    .line 537
    .line 538
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 539
    .line 540
    .line 541
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 542
    throw v0

    .line 543
    :cond_17
    const/4 v5, 0x0

    .line 544
    .line 545
    move-object/from16 v1, p0

    .line 546
    .line 547
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 548
    .line 549
    .line 550
    invoke-direct {v0, v8, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 551
    throw v0

    .line 552
    :cond_18
    move-object v1, v0

    .line 553
    move v5, v3

    .line 554
    .line 555
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 556
    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .line 562
    const-string v3, "illegal input "

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    move-result-object v2

    .line 573
    .line 574
    .line 575
    invoke-direct {v0, v2, v1, v5}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 576
    throw v0
.end method

.method public static parseZonedDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseZonedDateTime(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([CIILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object p1

    if-nez p1, :cond_5

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "0000-00-00"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance p1, Lcom/alibaba/fastjson2/time/DateTimeException;

    invoke-direct {p1, p0, p0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :pswitch_0
    return-object v0

    :cond_5
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_2
        0x33c587 -> :sswitch_1
        0x4f8288e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseZonedDateTime([BIILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 73

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    return-object v4

    :cond_1
    const/16 v5, 0x10

    if-ne v2, v5, :cond_2

    .line 7
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime16([BILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v5, 0x13

    if-ge v2, v5, :cond_3

    return-object v4

    .line 8
    :cond_3
    aget-byte v6, v0, v1

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x1

    .line 9
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x2

    .line 10
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x3

    .line 11
    aget-byte v9, v0, v9

    int-to-char v10, v9

    add-int/lit8 v11, v1, 0x4

    .line 12
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x5

    .line 13
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x6

    .line 14
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0x7

    .line 15
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0x8

    .line 16
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0x9

    move-object/from16 v17, v4

    .line 17
    aget-byte v4, v0, v16

    int-to-char v4, v4

    add-int/lit8 v16, v1, 0xa

    .line 18
    aget-byte v5, v0, v16

    int-to-char v5, v5

    add-int/lit8 v16, v1, 0xb

    move/from16 v19, v9

    .line 19
    aget-byte v9, v0, v16

    int-to-char v9, v9

    add-int/lit8 v16, v1, 0xc

    .line 20
    aget-byte v1, v0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0xd

    .line 21
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xe

    move/from16 v20, v4

    .line 22
    aget-byte v4, v0, v16

    int-to-char v4, v4

    add-int/lit8 v16, p1, 0xf

    move/from16 v21, v15

    .line 23
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x10

    .line 24
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x11

    move/from16 v22, v15

    .line 25
    aget-byte v15, p0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x12

    move/from16 v23, v1

    .line 26
    aget-byte v1, p0, v16

    int-to-char v1, v1

    move/from16 v16, v1

    const/16 v1, 0x13

    if-ne v2, v1, :cond_4

    const/16 v1, 0x20

    goto :goto_0

    :cond_4
    add-int/lit8 v18, p1, 0x13

    .line 27
    aget-byte v1, p0, v18

    int-to-char v1, v1

    :goto_0
    const/16 v18, 0x0

    const/16 v25, 0x30

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v26, p1, 0x14

    move/from16 v27, v6

    .line 28
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 29
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x16

    move/from16 v29, v6

    .line 30
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x17

    move/from16 v30, v6

    .line 31
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x18

    move/from16 v31, v6

    .line 32
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x19

    move/from16 v32, v6

    .line 33
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1a

    move/from16 v33, v6

    .line 34
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1b

    move/from16 v34, v6

    .line 35
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1c

    move/from16 v35, v6

    .line 36
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1d

    move/from16 v36, v6

    .line 37
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v44, v6

    move/from16 v26, v7

    move/from16 v37, v28

    move/from16 v6, v29

    move/from16 v28, v30

    move/from16 v38, v31

    move/from16 v39, v32

    move/from16 v40, v33

    move/from16 v41, v34

    move/from16 v42, v35

    move/from16 v43, v36

    goto/16 :goto_2

    :pswitch_0
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 38
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 39
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x16

    move/from16 v29, v6

    .line 40
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x17

    move/from16 v30, v6

    .line 41
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x18

    move/from16 v31, v6

    .line 42
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x19

    move/from16 v32, v6

    .line 43
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1a

    move/from16 v33, v6

    .line 44
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1b

    move/from16 v34, v6

    .line 45
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1c

    move/from16 v35, v6

    .line 46
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v43, v6

    move/from16 v26, v7

    move/from16 v44, v18

    move/from16 v37, v28

    move/from16 v6, v29

    move/from16 v28, v30

    move/from16 v38, v31

    move/from16 v39, v32

    move/from16 v40, v33

    move/from16 v41, v34

    move/from16 v42, v35

    goto/16 :goto_2

    :pswitch_1
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 47
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 48
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x16

    move/from16 v29, v6

    .line 49
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x17

    move/from16 v30, v6

    .line 50
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x18

    move/from16 v31, v6

    .line 51
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x19

    move/from16 v32, v6

    .line 52
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1a

    move/from16 v33, v6

    .line 53
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1b

    move/from16 v34, v6

    .line 54
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v42, v6

    move/from16 v26, v7

    move/from16 v44, v18

    move/from16 v43, v25

    move/from16 v37, v28

    move/from16 v6, v29

    move/from16 v28, v30

    move/from16 v38, v31

    move/from16 v39, v32

    move/from16 v40, v33

    move/from16 v41, v34

    goto/16 :goto_2

    :pswitch_2
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 55
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 56
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x16

    move/from16 v29, v6

    .line 57
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x17

    move/from16 v30, v6

    .line 58
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x18

    move/from16 v31, v6

    .line 59
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x19

    move/from16 v32, v6

    .line 60
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x1a

    move/from16 v33, v6

    .line 61
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v41, v6

    move/from16 v26, v7

    move/from16 v44, v18

    move/from16 v42, v25

    move/from16 v43, v42

    move/from16 v37, v28

    move/from16 v6, v29

    move/from16 v28, v30

    move/from16 v38, v31

    move/from16 v39, v32

    move/from16 v40, v33

    goto/16 :goto_2

    :pswitch_3
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 62
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 63
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x16

    move/from16 v29, v6

    .line 64
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x17

    move/from16 v30, v6

    .line 65
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x18

    move/from16 v31, v6

    .line 66
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x19

    move/from16 v32, v6

    .line 67
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v40, v6

    move/from16 v26, v7

    move/from16 v44, v18

    move/from16 v41, v25

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v37, v28

    move/from16 v6, v29

    move/from16 v28, v30

    move/from16 v38, v31

    move/from16 v39, v32

    goto/16 :goto_2

    :pswitch_4
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 68
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 69
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x16

    move/from16 v29, v6

    .line 70
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x17

    move/from16 v30, v6

    .line 71
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x18

    move/from16 v31, v6

    .line 72
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v39, v6

    move/from16 v26, v7

    move/from16 v44, v18

    move/from16 v40, v25

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v37, v28

    move/from16 v6, v29

    move/from16 v28, v30

    move/from16 v38, v31

    goto/16 :goto_2

    :pswitch_5
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 73
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 74
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x16

    move/from16 v29, v6

    .line 75
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x17

    move/from16 v30, v6

    .line 76
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v38, v6

    move/from16 v26, v7

    move/from16 v44, v18

    move/from16 v39, v25

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v37, v28

    move/from16 v6, v29

    move/from16 v28, v30

    goto/16 :goto_2

    :pswitch_6
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 77
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 78
    aget-byte v6, p0, v26

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x16

    move/from16 v29, v6

    .line 79
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v26, v7

    move/from16 v44, v18

    move/from16 v38, v25

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v37, v28

    move/from16 v28, v6

    move/from16 v6, v29

    goto :goto_2

    :pswitch_7
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 80
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v26, p1, 0x15

    move/from16 v28, v6

    .line 81
    aget-byte v6, p0, v26

    int-to-char v6, v6

    move/from16 v26, v7

    move/from16 v44, v18

    move/from16 v38, v25

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v37, v28

    move/from16 v28, v43

    goto :goto_2

    :pswitch_8
    move/from16 v27, v6

    add-int/lit8 v6, p1, 0x14

    .line 82
    aget-byte v6, p0, v6

    int-to-char v6, v6

    move/from16 v37, v6

    move/from16 v26, v7

    move/from16 v44, v18

    :goto_1
    move/from16 v6, v25

    move/from16 v28, v6

    move/from16 v38, v28

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    goto :goto_2

    :pswitch_9
    move/from16 v27, v6

    move/from16 v26, v7

    move/from16 v37, v18

    move/from16 v44, v37

    goto :goto_1

    :goto_2
    const/16 v32, 0x1

    const/16 v7, 0x2d

    move/from16 v34, v6

    const/16 v6, 0x3a

    if-ne v11, v7, :cond_7

    if-ne v14, v7, :cond_7

    const/16 v7, 0x20

    if-eq v5, v7, :cond_5

    const/16 v7, 0x54

    if-ne v5, v7, :cond_7

    :cond_5
    if-ne v3, v6, :cond_7

    if-ne v0, v6, :cond_7

    const/16 v7, 0x5b

    if-eq v1, v7, :cond_6

    const/16 v7, 0x5a

    if-eq v1, v7, :cond_6

    const/16 v7, 0x2b

    if-eq v1, v7, :cond_6

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_6

    const/16 v7, 0x20

    if-ne v1, v7, :cond_7

    :cond_6
    move/from16 v59, v4

    move/from16 v51, v8

    move/from16 v52, v10

    move/from16 v53, v12

    move/from16 v54, v13

    move/from16 v61, v15

    move/from16 v62, v16

    move-object/from16 v1, v17

    move/from16 v0, v18

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v60, v22

    move/from16 v4, v23

    move/from16 v63, v25

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v49, v27

    const/16 v5, 0x13

    :goto_3
    move-object/from16 v15, p0

    goto/16 :goto_5d

    :cond_7
    const/16 v7, 0x2d

    if-ne v11, v7, :cond_8

    if-ne v14, v7, :cond_8

    const/16 v7, 0x20

    if-ne v5, v7, :cond_8

    if-ne v9, v7, :cond_8

    if-ne v4, v6, :cond_8

    if-ne v15, v6, :cond_8

    const/16 v7, 0x14

    if-ne v2, v7, :cond_9

    move-object/from16 v15, p0

    move/from16 v60, v0

    move/from16 v62, v1

    move v4, v3

    move v5, v7

    move/from16 v51, v8

    move/from16 v52, v10

    move/from16 v53, v12

    move/from16 v54, v13

    move/from16 v61, v16

    move-object/from16 v1, v17

    move/from16 v0, v18

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v59, v22

    move/from16 v9, v23

    move/from16 v63, v25

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v49, v27

    goto/16 :goto_5d

    :cond_8
    const/16 v7, 0x14

    :cond_9
    if-ne v2, v7, :cond_b

    const/16 v7, 0x20

    if-ne v8, v7, :cond_b

    if-ne v13, v7, :cond_b

    if-ne v9, v7, :cond_b

    if-ne v4, v6, :cond_b

    if-ne v15, v6, :cond_b

    .line 83
    invoke-static {v10, v11, v12}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v4

    if-lez v4, :cond_a

    .line 84
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 85
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    goto :goto_4

    :cond_a
    move/from16 v4, v25

    move v6, v4

    :goto_4
    move-object/from16 v15, p0

    move/from16 v60, v0

    move/from16 v62, v1

    move/from16 v54, v4

    move/from16 v52, v5

    move/from16 v53, v6

    move/from16 v49, v14

    move/from16 v61, v16

    move-object/from16 v1, v17

    move/from16 v0, v18

    move/from16 v51, v20

    move/from16 v50, v21

    move/from16 v59, v22

    move/from16 v9, v23

    move/from16 v63, v25

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v56, v26

    move/from16 v55, v27

    const/16 v5, 0x14

    :goto_5
    move v4, v3

    goto/16 :goto_5d

    :cond_b
    const/16 v7, 0x2d

    if-ne v11, v7, :cond_c

    if-ne v14, v7, :cond_c

    const/16 v7, 0x20

    if-eq v5, v7, :cond_d

    const/16 v7, 0x54

    if-ne v5, v7, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v7, v34

    goto/16 :goto_a

    :cond_d
    :goto_6
    if-ne v3, v6, :cond_c

    if-ne v0, v6, :cond_c

    const/16 v7, 0x2e

    if-ne v1, v7, :cond_c

    const/16 v7, 0x15

    if-eq v2, v7, :cond_f

    move/from16 v7, v34

    const/16 v6, 0x5b

    if-eq v7, v6, :cond_e

    const/16 v6, 0x2b

    if-eq v7, v6, :cond_e

    const/16 v6, 0x2d

    if-eq v7, v6, :cond_e

    const/16 v6, 0x5a

    if-ne v7, v6, :cond_11

    :cond_e
    :goto_7
    const/16 v0, 0x7c

    goto :goto_8

    :cond_f
    move/from16 v7, v34

    goto :goto_7

    :goto_8
    if-ne v7, v0, :cond_10

    move/from16 v0, v32

    goto :goto_9

    :cond_10
    move/from16 v0, v18

    :goto_9
    move/from16 v59, v4

    move/from16 v51, v8

    move/from16 v52, v10

    move/from16 v53, v12

    move/from16 v54, v13

    move/from16 v61, v15

    move/from16 v62, v16

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v60, v22

    move/from16 v4, v23

    move/from16 v64, v25

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v49, v27

    move/from16 v63, v37

    const/16 v5, 0x15

    goto/16 :goto_3

    :cond_11
    :goto_a
    const/16 v6, 0x2d

    if-ne v11, v6, :cond_13

    if-ne v14, v6, :cond_13

    const/16 v6, 0x20

    if-eq v5, v6, :cond_12

    const/16 v6, 0x54

    if-ne v5, v6, :cond_13

    :cond_12
    const/16 v6, 0x3a

    goto :goto_b

    :cond_13
    move/from16 v6, v28

    move/from16 v28, v4

    goto/16 :goto_10

    :goto_b
    if-ne v3, v6, :cond_13

    if-ne v0, v6, :cond_13

    const/16 v6, 0x2e

    if-ne v1, v6, :cond_13

    const/16 v6, 0x16

    if-eq v2, v6, :cond_15

    move/from16 v6, v28

    move/from16 v28, v4

    const/16 v4, 0x5b

    if-eq v6, v4, :cond_14

    const/16 v4, 0x2b

    if-eq v6, v4, :cond_14

    const/16 v4, 0x2d

    if-eq v6, v4, :cond_14

    const/16 v4, 0x5a

    if-ne v6, v4, :cond_17

    :cond_14
    :goto_c
    const/16 v0, 0x7c

    goto :goto_d

    :cond_15
    move/from16 v6, v28

    move/from16 v28, v4

    goto :goto_c

    :goto_d
    if-ne v6, v0, :cond_16

    move/from16 v0, v32

    goto :goto_e

    :cond_16
    move/from16 v0, v18

    :goto_e
    move/from16 v64, v7

    move/from16 v51, v8

    move/from16 v52, v10

    move/from16 v53, v12

    move/from16 v54, v13

    move/from16 v61, v15

    move/from16 v62, v16

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v60, v22

    move/from16 v4, v23

    move/from16 v65, v25

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v49, v27

    move/from16 v59, v28

    move/from16 v63, v37

    :goto_f
    const/16 v5, 0x16

    goto/16 :goto_3

    :cond_17
    :goto_10
    const/16 v4, 0x2d

    if-ne v11, v4, :cond_19

    if-ne v14, v4, :cond_19

    const/16 v4, 0x20

    if-eq v5, v4, :cond_18

    const/16 v4, 0x54

    if-ne v5, v4, :cond_19

    :cond_18
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_19

    const/16 v4, 0x5a

    if-ne v0, v4, :cond_19

    const/16 v4, 0x5b

    if-ne v15, v4, :cond_19

    const/16 v4, 0x5d

    if-ne v7, v4, :cond_19

    const/16 v4, 0x16

    if-ne v2, v4, :cond_19

    move-object/from16 v15, p0

    move/from16 v51, v8

    move/from16 v52, v10

    move/from16 v53, v12

    move/from16 v54, v13

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v60, v22

    move/from16 v4, v23

    move/from16 v61, v25

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v49, v27

    move/from16 v59, v28

    move/from16 v0, v32

    const/16 v5, 0x11

    goto/16 :goto_5d

    :cond_19
    const/16 v4, 0x16

    if-ne v2, v4, :cond_20

    const/16 v4, 0x20

    if-ne v10, v4, :cond_20

    move/from16 v47, v11

    const/16 v11, 0x2c

    if-ne v12, v11, :cond_1f

    if-ne v13, v4, :cond_1f

    if-ne v9, v4, :cond_1f

    const/16 v11, 0x3a

    if-ne v3, v11, :cond_1f

    if-ne v0, v11, :cond_1f

    if-ne v1, v4, :cond_1f

    move/from16 v4, v37

    const/16 v11, 0x41

    if-eq v4, v11, :cond_1a

    const/16 v11, 0x50

    if-ne v4, v11, :cond_1b

    :cond_1a
    const/16 v11, 0x4d

    goto :goto_12

    :cond_1b
    move/from16 v11, v26

    move/from16 v26, v14

    move v14, v11

    :goto_11
    const/16 v11, 0x16

    goto/16 :goto_18

    :goto_12
    if-ne v7, v11, :cond_1e

    move/from16 v11, v26

    move/from16 v26, v14

    move v14, v11

    move/from16 v11, v27

    .line 86
    invoke-static {v11, v14, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_1c

    .line 87
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 88
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v7, v0

    move v6, v1

    :goto_13
    const/16 v11, 0x50

    goto :goto_14

    :cond_1c
    move/from16 v6, v25

    move v7, v6

    goto :goto_13

    :goto_14
    if-ne v4, v11, :cond_1d

    move/from16 v0, v32

    goto :goto_15

    :cond_1d
    move/from16 v0, v18

    :goto_15
    move/from16 v1, v18

    move/from16 v18, v0

    move v0, v1

    move/from16 v52, v5

    move/from16 v53, v6

    move/from16 v54, v7

    move/from16 v61, v15

    move/from16 v62, v16

    move-object/from16 v1, v17

    move/from16 v51, v20

    move/from16 v50, v21

    move/from16 v60, v22

    move/from16 v4, v23

    move/from16 v9, v25

    move/from16 v55, v9

    move/from16 v63, v55

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v49, v26

    :goto_16
    move/from16 v59, v28

    move/from16 v56, v47

    goto/16 :goto_f

    :cond_1e
    move/from16 v72, v26

    move/from16 v26, v14

    move/from16 v14, v72

    goto :goto_11

    :cond_1f
    move/from16 v4, v26

    move/from16 v26, v14

    move v14, v4

    :goto_17
    move/from16 v4, v37

    goto :goto_11

    :cond_20
    move/from16 v4, v26

    move/from16 v26, v14

    move v14, v4

    move/from16 v47, v11

    goto :goto_17

    :goto_18
    if-ne v2, v11, :cond_21

    const/16 v11, 0x2f

    if-ne v8, v11, :cond_21

    if-ne v12, v11, :cond_21

    const/16 v11, 0x20

    if-ne v5, v11, :cond_21

    const/16 v11, 0x3a

    if-ne v3, v11, :cond_21

    if-ne v0, v11, :cond_21

    const/16 v11, 0x20

    if-ne v1, v11, :cond_21

    const/16 v11, 0x41

    if-eq v4, v11, :cond_22

    const/16 v11, 0x50

    if-ne v4, v11, :cond_21

    :goto_19
    move/from16 v37, v1

    const/16 v1, 0x4d

    goto :goto_1a

    :cond_21
    move/from16 v37, v1

    goto :goto_1c

    :cond_22
    const/16 v11, 0x50

    goto :goto_19

    :goto_1a
    if-ne v7, v1, :cond_24

    if-ne v4, v11, :cond_23

    move/from16 v0, v32

    goto :goto_1b

    :cond_23
    move/from16 v0, v18

    :goto_1b
    move/from16 v1, v18

    move/from16 v18, v0

    move v0, v1

    move/from16 v55, v10

    move/from16 v49, v13

    move/from16 v54, v14

    move/from16 v61, v15

    move/from16 v62, v16

    move-object/from16 v1, v17

    move/from16 v52, v20

    move/from16 v51, v21

    move/from16 v60, v22

    move/from16 v4, v23

    move/from16 v63, v25

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v53, v27

    goto :goto_16

    :cond_24
    :goto_1c
    const/16 v1, 0x17

    if-ne v2, v1, :cond_29

    const/16 v11, 0x20

    if-ne v10, v11, :cond_29

    const/16 v1, 0x2c

    if-ne v12, v1, :cond_29

    if-ne v13, v11, :cond_29

    if-ne v9, v11, :cond_29

    move/from16 v1, v28

    const/16 v11, 0x3a

    if-ne v1, v11, :cond_26

    if-ne v15, v11, :cond_26

    const/16 v11, 0x20

    if-ne v4, v11, :cond_26

    const/16 v11, 0x41

    if-eq v7, v11, :cond_25

    const/16 v11, 0x50

    if-ne v7, v11, :cond_26

    :cond_25
    const/16 v11, 0x4d

    goto :goto_1e

    :cond_26
    move/from16 v11, v27

    :goto_1d
    move/from16 v27, v9

    const/16 v9, 0x17

    goto/16 :goto_22

    :goto_1e
    if-ne v6, v11, :cond_26

    move/from16 v11, v27

    .line 89
    invoke-static {v11, v14, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_27

    .line 90
    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 91
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v6, v4

    :goto_1f
    const/16 v11, 0x50

    goto :goto_20

    :cond_27
    move/from16 v1, v25

    move v6, v1

    goto :goto_1f

    :goto_20
    if-ne v7, v11, :cond_28

    move/from16 v4, v32

    goto :goto_21

    :cond_28
    move/from16 v4, v18

    :goto_21
    move-object/from16 v15, p0

    move/from16 v60, v0

    move/from16 v54, v1

    move/from16 v52, v5

    move/from16 v53, v6

    move/from16 v61, v16

    move-object/from16 v1, v17

    move/from16 v0, v18

    move/from16 v51, v20

    move/from16 v50, v21

    move/from16 v59, v22

    move/from16 v9, v23

    move/from16 v55, v25

    move/from16 v63, v55

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v49, v26

    move/from16 v62, v37

    move/from16 v56, v47

    const/16 v5, 0x17

    move/from16 v18, v4

    goto/16 :goto_5

    :cond_29
    move/from16 v11, v27

    move/from16 v1, v28

    goto :goto_1d

    :goto_22
    if-ne v2, v9, :cond_2e

    const/16 v9, 0x20

    if-ne v10, v9, :cond_2e

    move/from16 v28, v12

    const/16 v12, 0x2c

    if-ne v13, v12, :cond_2d

    move/from16 v12, v26

    move/from16 v26, v0

    move/from16 v0, v23

    if-ne v12, v9, :cond_2f

    if-ne v0, v9, :cond_2f

    const/16 v9, 0x3a

    if-ne v1, v9, :cond_2f

    if-ne v15, v9, :cond_2f

    const/16 v9, 0x20

    if-ne v4, v9, :cond_2f

    const/16 v9, 0x41

    if-eq v7, v9, :cond_2a

    const/16 v9, 0x50

    if-ne v7, v9, :cond_2f

    :cond_2a
    const/16 v9, 0x4d

    if-ne v6, v9, :cond_2f

    .line 92
    invoke-static {v11, v14, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_2b

    .line 93
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 94
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v1

    :goto_23
    const/16 v11, 0x50

    goto :goto_24

    :cond_2b
    move/from16 v0, v25

    move v6, v0

    goto :goto_23

    :goto_24
    if-ne v7, v11, :cond_2c

    move/from16 v1, v32

    goto :goto_25

    :cond_2c
    move/from16 v1, v18

    :goto_25
    move-object/from16 v15, p0

    move/from16 v54, v0

    move v4, v3

    move/from16 v51, v5

    move/from16 v53, v6

    move/from16 v61, v16

    move/from16 v0, v18

    move/from16 v50, v20

    move/from16 v49, v21

    move/from16 v59, v22

    move/from16 v9, v25

    move/from16 v63, v9

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v60, v26

    move/from16 v52, v27

    move/from16 v56, v28

    move/from16 v62, v37

    move/from16 v55, v47

    const/16 v5, 0x17

    move/from16 v18, v1

    move-object/from16 v1, v17

    goto/16 :goto_5d

    :cond_2d
    :goto_26
    move/from16 v12, v26

    move/from16 v26, v0

    move/from16 v0, v23

    goto :goto_27

    :cond_2e
    move/from16 v28, v12

    goto :goto_26

    :cond_2f
    :goto_27
    const/16 v9, 0x18

    if-ne v2, v9, :cond_38

    const/16 v9, 0x20

    if-ne v10, v9, :cond_38

    move/from16 v48, v4

    const/16 v4, 0x2c

    if-ne v13, v4, :cond_37

    if-ne v12, v9, :cond_37

    if-ne v0, v9, :cond_37

    move/from16 v4, v22

    const/16 v9, 0x3a

    move/from16 v22, v0

    move/from16 v0, v16

    if-ne v4, v9, :cond_36

    if-ne v0, v9, :cond_35

    const/16 v9, 0x20

    if-ne v7, v9, :cond_35

    const/16 v9, 0x41

    if-eq v6, v9, :cond_30

    const/16 v9, 0x50

    if-ne v6, v9, :cond_31

    :cond_30
    move/from16 v16, v1

    move/from16 v9, v38

    const/16 v1, 0x4d

    goto :goto_29

    :cond_31
    move/from16 v16, v1

    move/from16 v9, v38

    move/from16 v1, v47

    move/from16 v38, v8

    :goto_28
    const/16 v8, 0x2d

    goto/16 :goto_30

    :goto_29
    if-ne v9, v1, :cond_34

    .line 95
    invoke-static {v11, v14, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_32

    .line 96
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 97
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v7, v0

    :goto_2a
    const/16 v11, 0x50

    goto :goto_2b

    :cond_32
    move/from16 v1, v25

    move v7, v1

    goto :goto_2a

    :goto_2b
    if-ne v6, v11, :cond_33

    move/from16 v0, v32

    goto :goto_2c

    :cond_33
    move/from16 v0, v18

    :goto_2c
    move/from16 v4, v18

    move/from16 v18, v0

    move v0, v4

    move/from16 v53, v1

    move v9, v3

    move/from16 v51, v5

    move/from16 v54, v7

    move/from16 v60, v15

    move/from16 v4, v16

    move-object/from16 v1, v17

    move/from16 v50, v20

    move/from16 v49, v21

    move/from16 v63, v25

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v59, v26

    move/from16 v52, v27

    move/from16 v56, v28

    move/from16 v61, v37

    move/from16 v55, v47

    move/from16 v62, v48

    const/16 v5, 0x18

    goto/16 :goto_3

    :cond_34
    :goto_2d
    move/from16 v38, v8

    move/from16 v1, v47

    goto :goto_28

    :cond_35
    move/from16 v16, v1

    move/from16 v9, v38

    goto :goto_2d

    :cond_36
    move/from16 v9, v38

    :goto_2e
    move/from16 v16, v1

    goto :goto_2d

    :cond_37
    :goto_2f
    move/from16 v4, v22

    move/from16 v9, v38

    move/from16 v22, v0

    move/from16 v0, v16

    goto :goto_2e

    :cond_38
    move/from16 v48, v4

    goto :goto_2f

    :goto_30
    if-ne v1, v8, :cond_3a

    if-ne v12, v8, :cond_3a

    const/16 v8, 0x20

    if-eq v5, v8, :cond_39

    const/16 v8, 0x54

    if-ne v5, v8, :cond_3a

    :cond_39
    const/16 v8, 0x3a

    goto :goto_32

    :cond_3a
    move/from16 v45, v11

    move/from16 v11, v26

    move/from16 v8, v37

    move/from16 v26, v14

    :cond_3b
    :goto_31
    const/16 v14, 0x2d

    goto/16 :goto_34

    :goto_32
    if-ne v3, v8, :cond_3a

    move/from16 v45, v11

    move/from16 v11, v26

    move/from16 v26, v14

    if-ne v11, v8, :cond_3f

    move/from16 v8, v37

    const/16 v14, 0x2e

    if-ne v8, v14, :cond_3b

    const/16 v14, 0x17

    if-eq v2, v14, :cond_3c

    const/16 v14, 0x5b

    if-eq v9, v14, :cond_3c

    const/16 v14, 0x7c

    if-eq v9, v14, :cond_3d

    const/16 v14, 0x2b

    if-eq v9, v14, :cond_3c

    const/16 v14, 0x2d

    if-eq v9, v14, :cond_3c

    const/16 v14, 0x5a

    if-ne v9, v14, :cond_3b

    :cond_3c
    const/16 v14, 0x7c

    :cond_3d
    if-ne v9, v14, :cond_3e

    move/from16 v1, v32

    goto :goto_33

    :cond_3e
    move/from16 v1, v18

    :goto_33
    move/from16 v62, v0

    move v0, v1

    move/from16 v60, v4

    move/from16 v65, v6

    move/from16 v64, v7

    move/from16 v52, v10

    move/from16 v54, v13

    move/from16 v61, v15

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v4, v22

    move/from16 v66, v25

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v9, v27

    move/from16 v53, v28

    move/from16 v51, v38

    move/from16 v49, v45

    move/from16 v63, v48

    const/16 v5, 0x17

    goto/16 :goto_3

    :cond_3f
    move/from16 v8, v37

    goto :goto_31

    :goto_34
    if-ne v1, v14, :cond_41

    if-ne v12, v14, :cond_41

    const/16 v14, 0x20

    if-eq v5, v14, :cond_40

    const/16 v14, 0x54

    if-ne v5, v14, :cond_41

    :cond_40
    const/16 v14, 0x3a

    goto :goto_35

    :cond_41
    move/from16 v37, v15

    move/from16 v14, v39

    goto/16 :goto_3a

    :goto_35
    if-ne v3, v14, :cond_41

    if-ne v11, v14, :cond_41

    const/16 v14, 0x2e

    if-ne v8, v14, :cond_41

    const/16 v14, 0x18

    move/from16 v37, v15

    if-eq v2, v14, :cond_43

    move/from16 v14, v39

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_42

    const/16 v15, 0x7c

    if-eq v14, v15, :cond_44

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_42

    const/16 v15, 0x2d

    if-eq v14, v15, :cond_42

    const/16 v15, 0x5a

    if-ne v14, v15, :cond_46

    :cond_42
    :goto_36
    const/16 v15, 0x7c

    goto :goto_37

    :cond_43
    move/from16 v14, v39

    goto :goto_36

    :cond_44
    :goto_37
    if-ne v14, v15, :cond_45

    move/from16 v1, v32

    goto :goto_38

    :cond_45
    move/from16 v1, v18

    :goto_38
    move-object/from16 v15, p0

    move/from16 v62, v0

    move v0, v1

    move/from16 v60, v4

    move/from16 v65, v6

    move/from16 v64, v7

    move/from16 v66, v9

    move/from16 v52, v10

    move/from16 v54, v13

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v4, v22

    move/from16 v67, v25

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v9, v27

    move/from16 v53, v28

    move/from16 v61, v37

    move/from16 v51, v38

    move/from16 v49, v45

    move/from16 v63, v48

    :goto_39
    const/16 v5, 0x18

    goto/16 :goto_5d

    :cond_46
    :goto_3a
    const/16 v15, 0x2d

    if-ne v1, v15, :cond_48

    if-ne v12, v15, :cond_48

    const/16 v15, 0x20

    if-eq v5, v15, :cond_47

    const/16 v15, 0x54

    if-ne v5, v15, :cond_48

    :cond_47
    const/16 v15, 0x3a

    goto :goto_3b

    :cond_48
    move/from16 v15, v40

    move/from16 v40, v6

    :cond_49
    const/16 v6, 0x2d

    goto/16 :goto_40

    :goto_3b
    if-ne v3, v15, :cond_48

    if-ne v11, v15, :cond_48

    const/16 v15, 0x2e

    if-ne v8, v15, :cond_48

    const/16 v15, 0x19

    if-eq v2, v15, :cond_4b

    move/from16 v15, v40

    move/from16 v40, v6

    const/16 v6, 0x5b

    if-eq v15, v6, :cond_4a

    const/16 v6, 0x7c

    if-eq v15, v6, :cond_4c

    const/16 v6, 0x2b

    if-eq v15, v6, :cond_4a

    const/16 v6, 0x2d

    if-eq v15, v6, :cond_4a

    const/16 v6, 0x5a

    if-ne v15, v6, :cond_49

    :cond_4a
    :goto_3c
    const/16 v6, 0x7c

    goto :goto_3d

    :cond_4b
    move/from16 v15, v40

    move/from16 v40, v6

    goto :goto_3c

    :cond_4c
    :goto_3d
    if-ne v15, v6, :cond_4d

    move/from16 v1, v32

    goto :goto_3e

    :cond_4d
    move/from16 v1, v18

    :goto_3e
    move-object/from16 v15, p0

    move/from16 v62, v0

    move v0, v1

    move/from16 v60, v4

    move/from16 v64, v7

    move/from16 v66, v9

    move/from16 v52, v10

    move/from16 v54, v13

    move/from16 v67, v14

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v4, v22

    move/from16 v68, v25

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v9, v27

    move/from16 v53, v28

    move/from16 v61, v37

    move/from16 v51, v38

    move/from16 v65, v40

    move/from16 v49, v45

    move/from16 v63, v48

    :goto_3f
    const/16 v5, 0x19

    goto/16 :goto_5d

    :goto_40
    if-ne v1, v6, :cond_4f

    if-ne v12, v6, :cond_4f

    const/16 v6, 0x20

    if-eq v5, v6, :cond_4e

    const/16 v6, 0x54

    if-ne v5, v6, :cond_4f

    :cond_4e
    const/16 v6, 0x3a

    goto :goto_41

    :cond_4f
    move/from16 v6, v41

    move/from16 v41, v15

    :cond_50
    const/16 v15, 0x2d

    goto/16 :goto_45

    :goto_41
    if-ne v3, v6, :cond_4f

    if-ne v11, v6, :cond_4f

    const/16 v6, 0x2e

    if-ne v8, v6, :cond_4f

    const/16 v6, 0x1a

    if-eq v2, v6, :cond_52

    move/from16 v6, v41

    move/from16 v41, v15

    const/16 v15, 0x5b

    if-eq v6, v15, :cond_51

    const/16 v15, 0x7c

    if-eq v6, v15, :cond_53

    const/16 v15, 0x2b

    if-eq v6, v15, :cond_51

    const/16 v15, 0x2d

    if-eq v6, v15, :cond_51

    const/16 v15, 0x5a

    if-ne v6, v15, :cond_50

    :cond_51
    :goto_42
    const/16 v15, 0x7c

    goto :goto_43

    :cond_52
    move/from16 v6, v41

    move/from16 v41, v15

    goto :goto_42

    :cond_53
    :goto_43
    if-ne v6, v15, :cond_54

    move/from16 v1, v32

    goto :goto_44

    :cond_54
    move/from16 v1, v18

    :goto_44
    move-object/from16 v15, p0

    move/from16 v62, v0

    move v0, v1

    move/from16 v60, v4

    move/from16 v64, v7

    move/from16 v66, v9

    move/from16 v52, v10

    move/from16 v54, v13

    move/from16 v67, v14

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v4, v22

    move/from16 v69, v25

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v9, v27

    move/from16 v53, v28

    move/from16 v61, v37

    move/from16 v51, v38

    move/from16 v65, v40

    move/from16 v68, v41

    move/from16 v49, v45

    move/from16 v63, v48

    const/16 v5, 0x1a

    goto/16 :goto_5d

    :goto_45
    if-ne v1, v15, :cond_56

    if-ne v12, v15, :cond_56

    const/16 v15, 0x20

    if-eq v5, v15, :cond_55

    const/16 v15, 0x54

    if-ne v5, v15, :cond_56

    :cond_55
    const/16 v15, 0x3a

    goto :goto_46

    :cond_56
    move/from16 v15, v42

    move/from16 v42, v6

    goto/16 :goto_4a

    :goto_46
    if-ne v3, v15, :cond_56

    if-ne v11, v15, :cond_56

    const/16 v15, 0x2e

    if-ne v8, v15, :cond_56

    const/16 v15, 0x1b

    if-eq v2, v15, :cond_58

    move/from16 v15, v42

    move/from16 v42, v6

    const/16 v6, 0x5b

    if-eq v15, v6, :cond_57

    const/16 v6, 0x7c

    if-eq v15, v6, :cond_57

    const/16 v6, 0x2b

    if-eq v15, v6, :cond_57

    const/16 v6, 0x2d

    if-eq v15, v6, :cond_57

    const/16 v6, 0x5a

    if-ne v15, v6, :cond_5b

    :cond_57
    :goto_47
    const/16 v11, 0x20

    goto :goto_48

    :cond_58
    move/from16 v15, v42

    move/from16 v42, v6

    goto :goto_47

    :goto_48
    if-ne v9, v11, :cond_59

    move-object/from16 v15, p0

    move/from16 v62, v0

    move/from16 v60, v4

    move/from16 v64, v7

    move/from16 v52, v10

    move/from16 v54, v13

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v0, v18

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v4, v22

    move/from16 v66, v25

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v9, v27

    move/from16 v53, v28

    move/from16 v61, v37

    move/from16 v51, v38

    move/from16 v65, v40

    move/from16 v49, v45

    move/from16 v63, v48

    const/16 v5, 0x17

    goto/16 :goto_5d

    :cond_59
    const/16 v6, 0x7c

    if-ne v15, v6, :cond_5a

    move/from16 v1, v32

    goto :goto_49

    :cond_5a
    move/from16 v1, v18

    :goto_49
    move-object/from16 v15, p0

    move/from16 v62, v0

    move v0, v1

    move/from16 v60, v4

    move/from16 v64, v7

    move/from16 v66, v9

    move/from16 v52, v10

    move/from16 v54, v13

    move/from16 v67, v14

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v4, v22

    move/from16 v70, v25

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v9, v27

    move/from16 v53, v28

    move/from16 v61, v37

    move/from16 v51, v38

    move/from16 v65, v40

    move/from16 v68, v41

    move/from16 v69, v42

    move/from16 v49, v45

    move/from16 v63, v48

    const/16 v5, 0x1b

    goto/16 :goto_5d

    :cond_5b
    :goto_4a
    const/16 v6, 0x2d

    if-ne v1, v6, :cond_5d

    if-ne v12, v6, :cond_5d

    const/16 v6, 0x20

    if-eq v5, v6, :cond_5c

    const/16 v6, 0x54

    if-ne v5, v6, :cond_5d

    :cond_5c
    const/16 v6, 0x3a

    goto :goto_4b

    :cond_5d
    move/from16 v6, v43

    move/from16 v43, v15

    :cond_5e
    const/16 v15, 0x1c

    goto/16 :goto_4f

    :goto_4b
    if-ne v3, v6, :cond_5d

    if-ne v11, v6, :cond_5d

    const/16 v6, 0x2e

    if-ne v8, v6, :cond_5d

    const/16 v6, 0x1c

    if-eq v2, v6, :cond_60

    move/from16 v6, v43

    move/from16 v43, v15

    const/16 v15, 0x5b

    if-eq v6, v15, :cond_5f

    const/16 v15, 0x7c

    if-eq v6, v15, :cond_61

    const/16 v15, 0x2b

    if-eq v6, v15, :cond_5f

    const/16 v15, 0x2d

    if-eq v6, v15, :cond_5f

    const/16 v15, 0x5a

    if-ne v6, v15, :cond_5e

    :cond_5f
    :goto_4c
    const/16 v15, 0x7c

    goto :goto_4d

    :cond_60
    move/from16 v6, v43

    move/from16 v43, v15

    goto :goto_4c

    :cond_61
    :goto_4d
    if-ne v6, v15, :cond_62

    move/from16 v1, v32

    goto :goto_4e

    :cond_62
    move/from16 v1, v18

    :goto_4e
    move-object/from16 v15, p0

    move/from16 v62, v0

    move v0, v1

    move/from16 v60, v4

    move/from16 v64, v7

    move/from16 v66, v9

    move/from16 v52, v10

    move/from16 v54, v13

    move/from16 v67, v14

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v4, v22

    move/from16 v71, v25

    move/from16 v50, v26

    move/from16 v9, v27

    move/from16 v53, v28

    move/from16 v61, v37

    move/from16 v51, v38

    move/from16 v65, v40

    move/from16 v68, v41

    move/from16 v69, v42

    move/from16 v70, v43

    move/from16 v49, v45

    move/from16 v63, v48

    const/16 v5, 0x1c

    goto/16 :goto_5d

    :goto_4f
    if-ne v2, v15, :cond_64

    const/16 v15, 0x20

    if-ne v10, v15, :cond_64

    if-ne v12, v15, :cond_64

    if-ne v5, v15, :cond_64

    const/16 v15, 0x3a

    if-ne v3, v15, :cond_64

    if-ne v11, v15, :cond_64

    const/16 v15, 0x20

    if-ne v8, v15, :cond_64

    if-ne v9, v15, :cond_64

    move/from16 v15, v28

    .line 98
    invoke-static {v1, v15, v13}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_63

    .line 99
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 100
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v7, v1

    move v6, v3

    goto :goto_50

    :cond_63
    move/from16 v6, v25

    move v7, v6

    .line 101
    :goto_50
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x14

    const/4 v5, 0x3

    move-object/from16 v8, p0

    invoke-direct {v1, v8, v3, v5}, Ljava/lang/String;-><init>([BII)V

    move/from16 v62, v0

    move/from16 v60, v4

    move/from16 v53, v6

    move/from16 v54, v7

    move-object v15, v8

    move/from16 v49, v14

    move/from16 v59, v16

    move/from16 v0, v18

    move/from16 v56, v20

    move/from16 v55, v21

    move/from16 v4, v22

    move/from16 v63, v25

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v9, v27

    move/from16 v61, v37

    move/from16 v50, v41

    move/from16 v51, v42

    move/from16 v52, v43

    const/16 v5, 0x13

    goto/16 :goto_5d

    :cond_64
    move-object/from16 v15, p0

    move/from16 v24, v6

    const/16 v6, 0x1c

    if-ne v2, v6, :cond_66

    const/16 v6, 0x2c

    if-ne v10, v6, :cond_66

    const/16 v6, 0x20

    if-ne v1, v6, :cond_66

    if-ne v13, v6, :cond_66

    if-ne v5, v6, :cond_66

    if-ne v4, v6, :cond_66

    const/16 v6, 0x3a

    if-ne v0, v6, :cond_66

    if-ne v7, v6, :cond_66

    const/16 v6, 0x20

    if-ne v14, v6, :cond_66

    move/from16 v0, v20

    move/from16 v6, v21

    .line 102
    invoke-static {v12, v6, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_65

    .line 103
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 104
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v7, v0

    move v6, v1

    goto :goto_51

    :cond_65
    move/from16 v6, v25

    move v7, v6

    :goto_51
    move/from16 v51, v3

    move/from16 v53, v6

    move/from16 v54, v7

    move/from16 v59, v8

    move/from16 v62, v9

    move v9, v11

    move/from16 v52, v16

    move-object/from16 v1, v17

    move/from16 v50, v22

    move/from16 v55, v25

    move/from16 v63, v55

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v49, v27

    move/from16 v56, v28

    move/from16 v0, v32

    move/from16 v4, v37

    move/from16 v61, v40

    move/from16 v60, v48

    goto/16 :goto_39

    :cond_66
    move/from16 v6, v20

    move/from16 v20, v0

    move v0, v6

    move/from16 v6, v21

    move/from16 v21, v14

    const/16 v14, 0x1d

    if-ne v2, v14, :cond_6b

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_6b

    const/16 v14, 0x20

    if-ne v1, v14, :cond_6b

    if-ne v12, v14, :cond_6b

    move/from16 v46, v10

    move/from16 v10, v27

    if-ne v10, v14, :cond_6a

    if-ne v11, v14, :cond_6a

    const/16 v14, 0x3a

    if-ne v8, v14, :cond_6a

    move/from16 v27, v7

    move/from16 v7, v40

    move/from16 v40, v9

    if-ne v7, v14, :cond_69

    move/from16 v14, v41

    const/16 v9, 0x20

    if-ne v14, v9, :cond_68

    .line 105
    invoke-static {v6, v0, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_67

    .line 106
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 107
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v7, v0

    move v6, v1

    goto :goto_52

    :cond_67
    move/from16 v6, v25

    move v7, v6

    :goto_52
    move/from16 v50, v3

    move/from16 v52, v4

    move/from16 v53, v6

    move/from16 v54, v7

    move/from16 v56, v13

    move/from16 v51, v16

    move-object/from16 v1, v17

    move/from16 v4, v20

    move/from16 v62, v21

    move/from16 v49, v22

    move/from16 v63, v25

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v60, v27

    move/from16 v55, v28

    move/from16 v0, v32

    move/from16 v9, v37

    move/from16 v61, v40

    move/from16 v59, v48

    goto/16 :goto_3f

    :cond_68
    :goto_53
    const/16 v9, 0x2d

    goto :goto_55

    :cond_69
    move/from16 v14, v41

    goto :goto_53

    :cond_6a
    move/from16 v27, v7

    move/from16 v7, v40

    move/from16 v14, v41

    :goto_54
    move/from16 v40, v9

    goto :goto_53

    :cond_6b
    move/from16 v46, v10

    move/from16 v10, v27

    move/from16 v14, v41

    move/from16 v27, v7

    move/from16 v7, v40

    goto :goto_54

    :goto_55
    if-ne v1, v9, :cond_6d

    if-ne v12, v9, :cond_6d

    const/16 v9, 0x20

    if-eq v5, v9, :cond_6c

    const/16 v9, 0x54

    if-ne v5, v9, :cond_6d

    :cond_6c
    const/16 v9, 0x3a

    goto :goto_56

    :cond_6d
    move/from16 v47, v1

    :cond_6e
    const/16 v1, 0x16

    goto/16 :goto_5a

    :goto_56
    if-ne v3, v9, :cond_6d

    if-ne v11, v9, :cond_6d

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_6d

    const/16 v9, 0x1d

    if-eq v2, v9, :cond_70

    move/from16 v47, v1

    move/from16 v9, v44

    const/16 v1, 0x5b

    if-eq v9, v1, :cond_6f

    const/16 v1, 0x7c

    if-eq v9, v1, :cond_71

    const/16 v1, 0x2b

    if-eq v9, v1, :cond_6f

    const/16 v1, 0x2d

    if-eq v9, v1, :cond_6f

    const/16 v1, 0x5a

    if-ne v9, v1, :cond_6e

    :cond_6f
    :goto_57
    const/16 v1, 0x7c

    goto :goto_58

    :cond_70
    move/from16 v9, v44

    goto :goto_57

    :cond_71
    :goto_58
    if-ne v9, v1, :cond_72

    move/from16 v1, v32

    goto :goto_59

    :cond_72
    move/from16 v1, v18

    :goto_59
    move/from16 v56, v0

    move v0, v1

    move/from16 v60, v4

    move/from16 v55, v6

    move/from16 v65, v7

    move v9, v10

    move/from16 v54, v13

    move/from16 v68, v14

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v62, v20

    move/from16 v67, v21

    move/from16 v4, v22

    move/from16 v71, v24

    move/from16 v50, v26

    move/from16 v64, v27

    move/from16 v53, v28

    move/from16 v61, v37

    move/from16 v51, v38

    move/from16 v66, v40

    move/from16 v69, v42

    move/from16 v70, v43

    move/from16 v49, v45

    move/from16 v52, v46

    move/from16 v63, v48

    const/16 v5, 0x1d

    goto :goto_5d

    :goto_5a
    if-ne v2, v1, :cond_81

    move/from16 v1, v37

    const/16 v9, 0x2b

    if-eq v1, v9, :cond_74

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_73

    goto :goto_5c

    :cond_73
    :goto_5b
    const/16 v9, 0x20

    goto/16 :goto_64

    :cond_74
    :goto_5c
    move/from16 v62, v3

    move/from16 v64, v4

    move/from16 v59, v5

    move v9, v6

    move/from16 v60, v10

    move/from16 v65, v11

    move/from16 v56, v12

    move/from16 v55, v13

    move/from16 v63, v16

    move-object/from16 v1, v17

    move/from16 v61, v22

    move/from16 v66, v25

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v50, v26

    move/from16 v54, v28

    move/from16 v51, v38

    move/from16 v49, v45

    move/from16 v52, v46

    move/from16 v53, v47

    const/16 v5, 0x11

    move v4, v0

    move/from16 v0, v18

    :goto_5d
    if-eqz v18, :cond_75

    .line 108
    invoke-static {v9, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->hourAfterNoon(CC)I

    move-result v3

    shr-int/lit8 v4, v3, 0x10

    int-to-char v9, v4

    int-to-short v3, v3

    int-to-char v4, v3

    :cond_75
    move/from16 v58, v4

    move/from16 v57, v9

    .line 109
    invoke-static/range {v49 .. v71}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v3

    if-nez v3, :cond_76

    return-object v17

    :cond_76
    if-eqz v0, :cond_78

    .line 110
    new-instance v0, Ljava/lang/String;

    sub-int v1, v2, v5

    invoke-direct {v0, v15, v5, v1}, Ljava/lang/String;-><init>([BII)V

    .line 111
    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "[UTC]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 112
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/util/TimeZone;)Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v0

    goto :goto_5e

    .line 114
    :cond_77
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    :goto_5e
    move-object v1, v0

    move-object/from16 v0, p3

    goto :goto_62

    :cond_78
    if-ne v5, v2, :cond_79

    move-object/from16 v0, p3

    move-object v1, v0

    goto :goto_62

    :cond_79
    add-int v0, p1, v5

    .line 115
    aget-byte v4, v15, v0

    int-to-char v4, v4

    const/16 v6, 0x5a

    if-ne v4, v6, :cond_7a

    .line 116
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_5e

    :cond_7a
    if-nez v1, :cond_7c

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_7e

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_7b

    goto :goto_60

    :cond_7b
    const/16 v9, 0x20

    if-ne v4, v9, :cond_7d

    .line 117
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v15, v0, v2}, Ljava/lang/String;-><init>([BII)V

    :cond_7c
    :goto_5f
    move-object/from16 v0, p3

    goto :goto_61

    :cond_7d
    if-ge v5, v2, :cond_7c

    .line 118
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v1, v15, v0, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_5f

    .line 119
    :cond_7e
    :goto_60
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v2, v5

    invoke-direct {v1, v15, v0, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_5f

    .line 120
    :goto_61
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v1

    :goto_62
    if-nez v1, :cond_7f

    goto :goto_63

    :cond_7f
    move-object v0, v1

    :goto_63
    if-nez v0, :cond_80

    .line 121
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 122
    :cond_80
    invoke-static {v3, v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_81
    move/from16 v1, v37

    goto/16 :goto_5b

    :goto_64
    if-ne v2, v9, :cond_82

    const/16 v15, 0x2c

    if-ne v13, v15, :cond_82

    if-ne v12, v9, :cond_82

    const/16 v15, 0x2d

    if-ne v5, v15, :cond_82

    move/from16 v13, v16

    if-ne v13, v15, :cond_82

    if-ne v8, v9, :cond_82

    const/16 v15, 0x3a

    if-ne v7, v15, :cond_82

    if-ne v14, v15, :cond_82

    add-int/lit8 v8, p1, 0x1c

    .line 123
    aget-byte v8, p0, v8

    if-eq v8, v9, :cond_85

    :cond_82
    const/16 v8, 0x21

    if-ne v2, v8, :cond_83

    const/16 v15, 0x2c

    if-ne v12, v15, :cond_83

    const/16 v9, 0x20

    if-ne v6, v9, :cond_83

    const/16 v15, 0x2d

    if-ne v10, v15, :cond_83

    if-ne v4, v15, :cond_83

    move/from16 v4, v48

    if-ne v4, v9, :cond_83

    move/from16 v4, v40

    const/16 v15, 0x3a

    if-ne v4, v15, :cond_83

    move/from16 v4, v42

    if-ne v4, v15, :cond_83

    add-int/lit8 v4, p1, 0x1d

    aget-byte v4, p0, v4

    if-eq v4, v9, :cond_85

    :cond_83
    const/16 v4, 0x22

    if-ne v2, v4, :cond_84

    const/16 v15, 0x2c

    if-ne v6, v15, :cond_84

    const/16 v9, 0x20

    if-ne v0, v9, :cond_84

    move/from16 v6, v22

    const/16 v15, 0x2d

    if-ne v6, v15, :cond_84

    if-ne v11, v15, :cond_84

    move/from16 v6, v27

    if-ne v6, v9, :cond_84

    move/from16 v6, v21

    const/16 v15, 0x3a

    if-ne v6, v15, :cond_84

    move/from16 v6, v43

    if-ne v6, v15, :cond_84

    add-int/lit8 v6, p1, 0x1e

    aget-byte v6, p0, v6

    if-eq v6, v9, :cond_85

    :cond_84
    const/16 v6, 0x23

    if-ne v2, v6, :cond_86

    const/16 v15, 0x2c

    if-ne v0, v15, :cond_86

    const/16 v9, 0x20

    if-ne v5, v9, :cond_86

    const/16 v15, 0x2d

    if-ne v3, v15, :cond_86

    if-ne v1, v15, :cond_86

    if-ne v7, v9, :cond_86

    const/16 v15, 0x3a

    if-ne v14, v15, :cond_86

    move/from16 v6, v24

    if-ne v6, v15, :cond_86

    add-int/lit8 v0, p1, 0x1f

    aget-byte v0, p0, v0

    if-ne v0, v9, :cond_86

    .line 124
    :cond_85
    new-instance v0, Ljava/lang/String;

    move-object/from16 v15, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTimeCookie(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_86
    move-object/from16 v15, p0

    move/from16 v1, p1

    if-ne v2, v4, :cond_88

    .line 125
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_34:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    if-nez v0, :cond_87

    .line 126
    const-string v0, "EEE MMM dd HH:mm:ss O yyyy"

    invoke-static {v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_34:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 127
    :cond_87
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseZonedDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_88
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_8a

    move/from16 v0, v19

    const/16 v12, 0x2c

    if-ne v0, v12, :cond_8a

    .line 128
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_RFC_2822:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    if-nez v0, :cond_89

    .line 129
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-static {v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_RFC_2822:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 130
    :cond_89
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseZonedDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_8a
    return-object v17

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseZonedDateTime([CIILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 69

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    return-object v4

    :cond_1
    const/16 v5, 0x10

    if-ne v2, v5, :cond_2

    .line 131
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime16([CILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v5, 0x13

    if-lt v2, v5, :cond_88

    .line 132
    aget-char v7, v0, v1

    add-int/lit8 v8, v1, 0x1

    .line 133
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x2

    .line 134
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x3

    .line 135
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x4

    .line 136
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x5

    .line 137
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x6

    .line 138
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0x7

    .line 139
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0x8

    .line 140
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0x9

    move-object/from16 v17, v4

    .line 141
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xa

    .line 142
    aget-char v6, v0, v16

    add-int/lit8 v16, v1, 0xb

    .line 143
    aget-char v5, v0, v16

    add-int/lit8 v16, v1, 0xc

    .line 144
    aget-char v1, v0, v16

    add-int/lit8 v16, p1, 0xd

    .line 145
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0xe

    move/from16 v20, v4

    .line 146
    aget-char v4, v0, v16

    add-int/lit8 v16, p1, 0xf

    move/from16 v21, v15

    .line 147
    aget-char v15, v0, v16

    add-int/lit8 v16, p1, 0x10

    .line 148
    aget-char v0, p0, v16

    add-int/lit8 v16, p1, 0x11

    move/from16 v22, v15

    .line 149
    aget-char v15, p0, v16

    add-int/lit8 v16, p1, 0x12

    move/from16 v23, v1

    .line 150
    aget-char v1, p0, v16

    move/from16 v16, v1

    const/16 v1, 0x13

    if-ne v2, v1, :cond_3

    const/16 v1, 0x20

    goto :goto_0

    :cond_3
    add-int/lit8 v19, p1, 0x13

    .line 151
    aget-char v19, p0, v19

    move/from16 v1, v19

    :goto_0
    const/16 v19, 0x30

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v25, p1, 0x14

    .line 152
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 153
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x16

    .line 154
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x17

    .line 155
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x18

    .line 156
    aget-char v29, p0, v29

    add-int/lit8 v30, p1, 0x19

    .line 157
    aget-char v30, p0, v30

    add-int/lit8 v31, p1, 0x1a

    .line 158
    aget-char v31, p0, v31

    add-int/lit8 v32, p1, 0x1b

    .line 159
    aget-char v32, p0, v32

    add-int/lit8 v33, p1, 0x1c

    .line 160
    aget-char v33, p0, v33

    add-int/lit8 v34, p1, 0x1d

    .line 161
    aget-char v34, p0, v34

    move/from16 v35, v26

    move/from16 v26, v8

    move/from16 v8, v35

    move/from16 v35, v28

    move/from16 v36, v29

    move/from16 v37, v30

    move/from16 v38, v31

    move/from16 v39, v32

    move/from16 v40, v33

    move/from16 v41, v34

    :goto_1
    move/from16 v28, v27

    :goto_2
    move/from16 v27, v25

    :goto_3
    move/from16 v25, v7

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v25, p1, 0x14

    .line 162
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 163
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x16

    .line 164
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x17

    .line 165
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x18

    .line 166
    aget-char v29, p0, v29

    add-int/lit8 v30, p1, 0x19

    .line 167
    aget-char v30, p0, v30

    add-int/lit8 v31, p1, 0x1a

    .line 168
    aget-char v31, p0, v31

    add-int/lit8 v32, p1, 0x1b

    .line 169
    aget-char v32, p0, v32

    add-int/lit8 v33, p1, 0x1c

    .line 170
    aget-char v33, p0, v33

    move/from16 v35, v26

    move/from16 v26, v8

    move/from16 v8, v35

    move/from16 v35, v28

    move/from16 v36, v29

    move/from16 v37, v30

    move/from16 v38, v31

    move/from16 v39, v32

    move/from16 v40, v33

    :goto_4
    const/16 v41, 0x0

    goto :goto_1

    :pswitch_1
    add-int/lit8 v25, p1, 0x14

    .line 171
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 172
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x16

    .line 173
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x17

    .line 174
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x18

    .line 175
    aget-char v29, p0, v29

    add-int/lit8 v30, p1, 0x19

    .line 176
    aget-char v30, p0, v30

    add-int/lit8 v31, p1, 0x1a

    .line 177
    aget-char v31, p0, v31

    add-int/lit8 v32, p1, 0x1b

    .line 178
    aget-char v32, p0, v32

    move/from16 v35, v26

    move/from16 v26, v8

    move/from16 v8, v35

    move/from16 v40, v19

    move/from16 v35, v28

    move/from16 v36, v29

    move/from16 v37, v30

    move/from16 v38, v31

    move/from16 v39, v32

    goto :goto_4

    :pswitch_2
    add-int/lit8 v25, p1, 0x14

    .line 179
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 180
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x16

    .line 181
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x17

    .line 182
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x18

    .line 183
    aget-char v29, p0, v29

    add-int/lit8 v30, p1, 0x19

    .line 184
    aget-char v30, p0, v30

    add-int/lit8 v31, p1, 0x1a

    .line 185
    aget-char v31, p0, v31

    move/from16 v35, v26

    move/from16 v26, v8

    move/from16 v8, v35

    move/from16 v39, v19

    move/from16 v40, v39

    move/from16 v35, v28

    move/from16 v36, v29

    move/from16 v37, v30

    move/from16 v38, v31

    goto :goto_4

    :pswitch_3
    add-int/lit8 v25, p1, 0x14

    .line 186
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 187
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x16

    .line 188
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x17

    .line 189
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x18

    .line 190
    aget-char v29, p0, v29

    add-int/lit8 v30, p1, 0x19

    .line 191
    aget-char v30, p0, v30

    move/from16 v35, v26

    move/from16 v26, v8

    move/from16 v8, v35

    move/from16 v38, v19

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v35, v28

    move/from16 v36, v29

    move/from16 v37, v30

    goto/16 :goto_4

    :pswitch_4
    add-int/lit8 v25, p1, 0x14

    .line 192
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 193
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x16

    .line 194
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x17

    .line 195
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x18

    .line 196
    aget-char v29, p0, v29

    move/from16 v35, v26

    move/from16 v26, v8

    move/from16 v8, v35

    move/from16 v37, v19

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v35, v28

    move/from16 v36, v29

    goto/16 :goto_4

    :pswitch_5
    add-int/lit8 v25, p1, 0x14

    .line 197
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 198
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x16

    .line 199
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x17

    .line 200
    aget-char v28, p0, v28

    move/from16 v35, v26

    move/from16 v26, v8

    move/from16 v8, v35

    move/from16 v36, v19

    move/from16 v37, v36

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v35, v28

    goto/16 :goto_4

    :pswitch_6
    add-int/lit8 v25, p1, 0x14

    .line 201
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 202
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x16

    .line 203
    aget-char v27, p0, v27

    move/from16 v28, v26

    move/from16 v26, v8

    move/from16 v8, v28

    move/from16 v35, v19

    move/from16 v36, v35

    move/from16 v37, v36

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v28, v27

    const/16 v41, 0x0

    goto/16 :goto_2

    :pswitch_7
    add-int/lit8 v25, p1, 0x14

    .line 204
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x15

    .line 205
    aget-char v26, p0, v26

    move/from16 v27, v26

    move/from16 v26, v8

    move/from16 v8, v27

    move/from16 v28, v19

    :goto_5
    move/from16 v35, v28

    move/from16 v36, v35

    move/from16 v37, v36

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v27, v25

    const/16 v41, 0x0

    goto/16 :goto_3

    :pswitch_8
    add-int/lit8 v25, p1, 0x14

    .line 206
    aget-char v25, p0, v25

    move/from16 v26, v8

    move/from16 v8, v19

    move/from16 v28, v8

    goto :goto_5

    :pswitch_9
    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v8, v19

    move/from16 v28, v8

    move/from16 v35, v28

    move/from16 v36, v35

    move/from16 v37, v36

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    const/16 v27, 0x0

    const/16 v41, 0x0

    :goto_6
    const/16 v32, 0x1

    const/16 v7, 0x2d

    move/from16 v34, v8

    const/16 v8, 0x3a

    if-ne v11, v7, :cond_6

    if-ne v14, v7, :cond_6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_4

    const/16 v7, 0x54

    if-ne v6, v7, :cond_6

    :cond_4
    if-ne v3, v8, :cond_6

    if-ne v0, v8, :cond_6

    const/16 v7, 0x5b

    if-eq v1, v7, :cond_5

    const/16 v7, 0x5a

    if-eq v1, v7, :cond_5

    const/16 v7, 0x2b

    if-eq v1, v7, :cond_5

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_5

    const/16 v7, 0x20

    if-ne v1, v7, :cond_6

    :cond_5
    const/4 v6, 0x0

    move/from16 v56, v4

    move v3, v5

    move/from16 v48, v9

    move/from16 v49, v10

    move/from16 v50, v12

    move/from16 v51, v13

    move/from16 v58, v15

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v60, v19

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v57, v22

    move/from16 v4, v23

    move/from16 v46, v25

    move/from16 v47, v26

    const/16 v5, 0x13

    :goto_7
    const/16 v18, 0x0

    :goto_8
    move-object/from16 v15, p0

    goto/16 :goto_61

    :cond_6
    const/16 v7, 0x2d

    if-ne v11, v7, :cond_7

    if-ne v14, v7, :cond_7

    const/16 v7, 0x20

    if-ne v6, v7, :cond_7

    if-ne v5, v7, :cond_7

    if-ne v4, v8, :cond_7

    if-ne v15, v8, :cond_7

    const/16 v7, 0x14

    if-ne v2, v7, :cond_8

    const/4 v6, 0x0

    move-object/from16 v15, p0

    move/from16 v57, v0

    move/from16 v59, v1

    move v4, v3

    move v5, v7

    move/from16 v48, v9

    move/from16 v49, v10

    move/from16 v50, v12

    move/from16 v51, v13

    move/from16 v58, v16

    move-object/from16 v1, v17

    move/from16 v60, v19

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v56, v22

    move/from16 v3, v23

    move/from16 v46, v25

    move/from16 v47, v26

    :goto_9
    const/16 v18, 0x0

    goto/16 :goto_61

    :cond_7
    const/16 v7, 0x14

    :cond_8
    if-ne v2, v7, :cond_a

    const/16 v7, 0x20

    if-ne v9, v7, :cond_a

    if-ne v13, v7, :cond_a

    if-ne v5, v7, :cond_a

    if-ne v4, v8, :cond_a

    if-ne v15, v8, :cond_a

    .line 207
    invoke-static {v10, v11, v12}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v4

    if-lez v4, :cond_9

    .line 208
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 209
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    goto :goto_a

    :cond_9
    move/from16 v4, v19

    move v5, v4

    :goto_a
    move-object/from16 v15, p0

    move/from16 v57, v0

    move/from16 v59, v1

    move/from16 v51, v4

    move/from16 v50, v5

    move/from16 v49, v6

    move/from16 v46, v14

    move/from16 v58, v16

    move-object/from16 v1, v17

    move/from16 v60, v19

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v48, v20

    move/from16 v47, v21

    move/from16 v56, v22

    move/from16 v52, v25

    move/from16 v53, v26

    const/16 v5, 0x14

    const/16 v18, 0x0

    const/4 v6, 0x0

    move v4, v3

    :goto_b
    move/from16 v3, v23

    goto/16 :goto_61

    :cond_a
    const/16 v7, 0x2d

    if-ne v11, v7, :cond_b

    if-ne v14, v7, :cond_b

    const/16 v7, 0x20

    if-eq v6, v7, :cond_c

    const/16 v7, 0x54

    if-ne v6, v7, :cond_b

    goto :goto_c

    :cond_b
    move/from16 v7, v34

    goto/16 :goto_10

    :cond_c
    :goto_c
    if-ne v3, v8, :cond_b

    if-ne v0, v8, :cond_b

    const/16 v7, 0x2e

    if-ne v1, v7, :cond_b

    const/16 v7, 0x15

    if-eq v2, v7, :cond_e

    move/from16 v7, v34

    const/16 v8, 0x5b

    if-eq v7, v8, :cond_d

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_d

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_d

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_10

    :cond_d
    :goto_d
    const/16 v0, 0x7c

    goto :goto_e

    :cond_e
    move/from16 v7, v34

    goto :goto_d

    :goto_e
    if-ne v7, v0, :cond_f

    move/from16 v0, v32

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    const/4 v6, 0x0

    move/from16 v18, v0

    move/from16 v56, v4

    move v3, v5

    move/from16 v48, v9

    move/from16 v49, v10

    move/from16 v50, v12

    move/from16 v51, v13

    move/from16 v58, v15

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v61, v19

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v57, v22

    move/from16 v4, v23

    move/from16 v46, v25

    move/from16 v47, v26

    move/from16 v60, v27

    const/16 v5, 0x15

    goto/16 :goto_8

    :cond_10
    :goto_10
    const/16 v8, 0x2d

    if-ne v11, v8, :cond_12

    if-ne v14, v8, :cond_12

    const/16 v8, 0x20

    if-eq v6, v8, :cond_11

    const/16 v8, 0x54

    if-ne v6, v8, :cond_12

    :cond_11
    const/16 v8, 0x3a

    goto :goto_11

    :cond_12
    move/from16 v8, v28

    move/from16 v28, v4

    goto/16 :goto_15

    :goto_11
    if-ne v3, v8, :cond_12

    if-ne v0, v8, :cond_12

    const/16 v8, 0x2e

    if-ne v1, v8, :cond_12

    const/16 v8, 0x16

    if-eq v2, v8, :cond_14

    move/from16 v8, v28

    move/from16 v28, v4

    const/16 v4, 0x5b

    if-eq v8, v4, :cond_13

    const/16 v4, 0x2b

    if-eq v8, v4, :cond_13

    const/16 v4, 0x2d

    if-eq v8, v4, :cond_13

    const/16 v4, 0x5a

    if-ne v8, v4, :cond_16

    :cond_13
    :goto_12
    const/16 v0, 0x7c

    goto :goto_13

    :cond_14
    move/from16 v8, v28

    move/from16 v28, v4

    goto :goto_12

    :goto_13
    if-ne v8, v0, :cond_15

    move/from16 v0, v32

    goto :goto_14

    :cond_15
    const/4 v0, 0x0

    :goto_14
    const/4 v6, 0x0

    move/from16 v18, v0

    move v3, v5

    move/from16 v61, v7

    move/from16 v48, v9

    move/from16 v49, v10

    move/from16 v50, v12

    move/from16 v51, v13

    move/from16 v58, v15

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v62, v19

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v57, v22

    move/from16 v4, v23

    move/from16 v46, v25

    move/from16 v47, v26

    move/from16 v60, v27

    move/from16 v56, v28

    const/16 v5, 0x16

    goto/16 :goto_8

    :cond_16
    :goto_15
    const/16 v4, 0x2d

    if-ne v11, v4, :cond_18

    if-ne v14, v4, :cond_18

    const/16 v4, 0x20

    if-eq v6, v4, :cond_17

    const/16 v4, 0x54

    if-ne v6, v4, :cond_18

    :cond_17
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_18

    const/16 v4, 0x5a

    if-ne v0, v4, :cond_18

    const/16 v4, 0x5b

    if-ne v15, v4, :cond_18

    const/16 v4, 0x5d

    if-ne v7, v4, :cond_18

    const/16 v4, 0x16

    if-ne v2, v4, :cond_18

    const/4 v6, 0x0

    move-object/from16 v15, p0

    move v3, v5

    move/from16 v48, v9

    move/from16 v49, v10

    move/from16 v50, v12

    move/from16 v51, v13

    move-object/from16 v1, v17

    move/from16 v58, v19

    move/from16 v59, v58

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v57, v22

    move/from16 v4, v23

    move/from16 v46, v25

    move/from16 v47, v26

    move/from16 v56, v28

    move/from16 v18, v32

    const/16 v5, 0x11

    goto/16 :goto_61

    :cond_18
    const/16 v4, 0x16

    if-ne v2, v4, :cond_1e

    const/16 v4, 0x20

    if-ne v10, v4, :cond_1e

    move/from16 v44, v11

    const/16 v11, 0x2c

    if-ne v12, v11, :cond_1d

    if-ne v13, v4, :cond_1d

    if-ne v5, v4, :cond_1d

    const/16 v11, 0x3a

    if-ne v3, v11, :cond_1d

    if-ne v0, v11, :cond_1d

    if-ne v1, v4, :cond_1d

    move/from16 v4, v27

    const/16 v11, 0x41

    if-eq v4, v11, :cond_19

    const/16 v11, 0x50

    if-ne v4, v11, :cond_1a

    :cond_19
    const/16 v11, 0x4d

    goto :goto_17

    :cond_1a
    move/from16 v11, v25

    :goto_16
    move/from16 v25, v14

    move/from16 v14, v26

    move/from16 v26, v11

    const/16 v11, 0x16

    goto/16 :goto_1d

    :goto_17
    if-ne v7, v11, :cond_1a

    move/from16 v11, v25

    move/from16 v25, v14

    move/from16 v14, v26

    .line 210
    invoke-static {v11, v14, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_1b

    .line 211
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 212
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v8, v0

    move v7, v1

    :goto_18
    const/16 v11, 0x50

    goto :goto_19

    :cond_1b
    move/from16 v7, v19

    move v8, v7

    goto :goto_18

    :goto_19
    if-ne v4, v11, :cond_1c

    move/from16 v0, v32

    goto :goto_1a

    :cond_1c
    const/4 v0, 0x0

    :goto_1a
    move/from16 v49, v6

    move/from16 v50, v7

    move/from16 v51, v8

    move/from16 v58, v15

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v3, v19

    move/from16 v52, v3

    move/from16 v60, v52

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v48, v20

    move/from16 v47, v21

    move/from16 v57, v22

    move/from16 v4, v23

    move/from16 v46, v25

    move/from16 v56, v28

    move/from16 v53, v44

    const/16 v5, 0x16

    const/16 v18, 0x0

    move-object/from16 v15, p0

    :goto_1b
    move v6, v0

    goto/16 :goto_61

    :cond_1d
    :goto_1c
    move/from16 v11, v25

    move/from16 v4, v27

    goto :goto_16

    :cond_1e
    move/from16 v44, v11

    goto :goto_1c

    :goto_1d
    if-ne v2, v11, :cond_1f

    const/16 v11, 0x2f

    if-ne v9, v11, :cond_1f

    if-ne v12, v11, :cond_1f

    const/16 v11, 0x20

    if-ne v6, v11, :cond_1f

    const/16 v11, 0x3a

    if-ne v3, v11, :cond_1f

    if-ne v0, v11, :cond_1f

    const/16 v11, 0x20

    if-ne v1, v11, :cond_1f

    const/16 v11, 0x41

    if-eq v4, v11, :cond_20

    const/16 v11, 0x50

    if-ne v4, v11, :cond_1f

    :goto_1e
    move/from16 v27, v1

    const/16 v1, 0x4d

    goto :goto_1f

    :cond_1f
    move/from16 v27, v1

    goto :goto_21

    :cond_20
    const/16 v11, 0x50

    goto :goto_1e

    :goto_1f
    if-ne v7, v1, :cond_22

    if-ne v4, v11, :cond_21

    move/from16 v0, v32

    goto :goto_20

    :cond_21
    const/4 v0, 0x0

    :goto_20
    move v6, v0

    move v3, v5

    move/from16 v52, v10

    move/from16 v46, v13

    move/from16 v51, v14

    move/from16 v58, v15

    move/from16 v59, v16

    move-object/from16 v1, v17

    move/from16 v60, v19

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v49, v20

    move/from16 v48, v21

    move/from16 v57, v22

    move/from16 v4, v23

    move/from16 v47, v25

    move/from16 v50, v26

    move/from16 v56, v28

    move/from16 v53, v44

    const/16 v5, 0x16

    goto/16 :goto_7

    :cond_22
    :goto_21
    const/16 v1, 0x17

    if-ne v2, v1, :cond_27

    const/16 v11, 0x20

    if-ne v10, v11, :cond_27

    const/16 v1, 0x2c

    if-ne v12, v1, :cond_27

    if-ne v13, v11, :cond_27

    if-ne v5, v11, :cond_27

    move/from16 v1, v28

    const/16 v11, 0x3a

    if-ne v1, v11, :cond_24

    if-ne v15, v11, :cond_24

    const/16 v11, 0x20

    if-ne v4, v11, :cond_24

    const/16 v11, 0x41

    if-eq v7, v11, :cond_23

    const/16 v11, 0x50

    if-ne v7, v11, :cond_24

    :cond_23
    const/16 v11, 0x4d

    goto :goto_23

    :cond_24
    move/from16 v11, v26

    :goto_22
    move/from16 v26, v5

    const/16 v5, 0x17

    goto/16 :goto_27

    :goto_23
    if-ne v8, v11, :cond_24

    move/from16 v11, v26

    .line 213
    invoke-static {v11, v14, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_25

    .line 214
    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 215
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v8, v1

    :goto_24
    const/16 v11, 0x50

    goto :goto_25

    :cond_25
    move/from16 v4, v19

    move v8, v4

    goto :goto_24

    :goto_25
    if-ne v7, v11, :cond_26

    move/from16 v1, v32

    goto :goto_26

    :cond_26
    const/4 v1, 0x0

    :goto_26
    move-object/from16 v15, p0

    move/from16 v57, v0

    move/from16 v50, v4

    move/from16 v49, v6

    move/from16 v51, v8

    move/from16 v58, v16

    move/from16 v52, v19

    move/from16 v60, v52

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v48, v20

    move/from16 v47, v21

    move/from16 v56, v22

    move/from16 v46, v25

    move/from16 v59, v27

    move/from16 v53, v44

    const/16 v5, 0x17

    const/16 v18, 0x0

    move v6, v1

    move v4, v3

    move-object/from16 v1, v17

    goto/16 :goto_b

    :cond_27
    move/from16 v11, v26

    move/from16 v1, v28

    goto :goto_22

    :goto_27
    if-ne v2, v5, :cond_2c

    const/16 v5, 0x20

    if-ne v10, v5, :cond_2c

    move/from16 v28, v12

    const/16 v12, 0x2c

    if-ne v13, v12, :cond_2b

    move/from16 v12, v25

    move/from16 v25, v0

    move/from16 v0, v23

    if-ne v12, v5, :cond_2d

    if-ne v0, v5, :cond_2d

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_2d

    if-ne v15, v5, :cond_2d

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2d

    const/16 v5, 0x41

    if-eq v7, v5, :cond_28

    const/16 v5, 0x50

    if-ne v7, v5, :cond_2d

    :cond_28
    const/16 v5, 0x4d

    if-ne v8, v5, :cond_2d

    .line 216
    invoke-static {v11, v14, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_29

    .line 217
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 218
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v8, v0

    :goto_28
    const/16 v11, 0x50

    goto :goto_29

    :cond_29
    move/from16 v1, v19

    move v8, v1

    goto :goto_28

    :goto_29
    if-ne v7, v11, :cond_2a

    move/from16 v0, v32

    goto :goto_2a

    :cond_2a
    const/4 v0, 0x0

    :goto_2a
    move-object/from16 v15, p0

    move/from16 v50, v1

    move v4, v3

    move/from16 v48, v6

    move/from16 v51, v8

    move/from16 v58, v16

    move-object/from16 v1, v17

    move/from16 v3, v19

    move/from16 v60, v3

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v47, v20

    move/from16 v46, v21

    move/from16 v56, v22

    move/from16 v57, v25

    move/from16 v49, v26

    move/from16 v59, v27

    move/from16 v53, v28

    move/from16 v52, v44

    const/16 v5, 0x17

    const/16 v18, 0x0

    goto/16 :goto_1b

    :cond_2b
    :goto_2b
    move/from16 v12, v25

    move/from16 v25, v0

    move/from16 v0, v23

    goto :goto_2c

    :cond_2c
    move/from16 v28, v12

    goto :goto_2b

    :cond_2d
    :goto_2c
    const/16 v5, 0x18

    if-ne v2, v5, :cond_36

    const/16 v5, 0x20

    if-ne v10, v5, :cond_36

    move/from16 v45, v4

    const/16 v4, 0x2c

    if-ne v13, v4, :cond_35

    if-ne v12, v5, :cond_35

    if-ne v0, v5, :cond_35

    move/from16 v4, v22

    const/16 v5, 0x3a

    move/from16 v22, v0

    move/from16 v0, v16

    if-ne v4, v5, :cond_34

    if-ne v0, v5, :cond_33

    const/16 v5, 0x20

    if-ne v7, v5, :cond_33

    const/16 v5, 0x41

    if-eq v8, v5, :cond_2e

    const/16 v5, 0x50

    if-ne v8, v5, :cond_2f

    :cond_2e
    move/from16 v16, v1

    move/from16 v5, v35

    const/16 v1, 0x4d

    goto :goto_2e

    :cond_2f
    move/from16 v16, v1

    move/from16 v5, v35

    move/from16 v1, v44

    move/from16 v35, v9

    :goto_2d
    const/16 v9, 0x2d

    goto/16 :goto_35

    :goto_2e
    if-ne v5, v1, :cond_32

    .line 219
    invoke-static {v11, v14, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_30

    .line 220
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 221
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v7, v1

    :goto_2f
    const/16 v11, 0x50

    goto :goto_30

    :cond_30
    move/from16 v0, v19

    move v7, v0

    goto :goto_2f

    :goto_30
    if-ne v8, v11, :cond_31

    move/from16 v1, v32

    goto :goto_31

    :cond_31
    const/4 v1, 0x0

    :goto_31
    move/from16 v51, v0

    move/from16 v48, v6

    move/from16 v50, v7

    move/from16 v57, v15

    move/from16 v4, v16

    move/from16 v60, v19

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v47, v20

    move/from16 v46, v21

    move/from16 v56, v25

    move/from16 v49, v26

    move/from16 v58, v27

    move/from16 v53, v28

    move/from16 v52, v44

    move/from16 v59, v45

    const/16 v5, 0x18

    const/16 v18, 0x0

    move-object/from16 v15, p0

    move v6, v1

    move-object/from16 v1, v17

    goto/16 :goto_61

    :cond_32
    :goto_32
    move/from16 v35, v9

    move/from16 v1, v44

    goto :goto_2d

    :cond_33
    move/from16 v16, v1

    move/from16 v5, v35

    goto :goto_32

    :cond_34
    move/from16 v5, v35

    :goto_33
    move/from16 v16, v1

    goto :goto_32

    :cond_35
    :goto_34
    move/from16 v4, v22

    move/from16 v5, v35

    move/from16 v22, v0

    move/from16 v0, v16

    goto :goto_33

    :cond_36
    move/from16 v45, v4

    goto :goto_34

    :goto_35
    if-ne v1, v9, :cond_38

    if-ne v12, v9, :cond_38

    const/16 v9, 0x20

    if-eq v6, v9, :cond_37

    const/16 v9, 0x54

    if-ne v6, v9, :cond_38

    :cond_37
    const/16 v9, 0x3a

    goto :goto_37

    :cond_38
    move/from16 v42, v11

    move/from16 v11, v25

    move/from16 v9, v27

    move/from16 v25, v14

    :cond_39
    :goto_36
    const/16 v14, 0x2d

    goto/16 :goto_39

    :goto_37
    if-ne v3, v9, :cond_38

    move/from16 v42, v11

    move/from16 v11, v25

    move/from16 v25, v14

    if-ne v11, v9, :cond_3d

    move/from16 v9, v27

    const/16 v14, 0x2e

    if-ne v9, v14, :cond_39

    const/16 v14, 0x17

    if-eq v2, v14, :cond_3a

    const/16 v14, 0x5b

    if-eq v5, v14, :cond_3a

    const/16 v14, 0x7c

    if-eq v5, v14, :cond_3b

    const/16 v14, 0x2b

    if-eq v5, v14, :cond_3a

    const/16 v14, 0x2d

    if-eq v5, v14, :cond_3a

    const/16 v14, 0x5a

    if-ne v5, v14, :cond_39

    :cond_3a
    const/16 v14, 0x7c

    :cond_3b
    if-ne v5, v14, :cond_3c

    move/from16 v1, v32

    goto :goto_38

    :cond_3c
    const/4 v1, 0x0

    :goto_38
    const/4 v6, 0x0

    move/from16 v59, v0

    move/from16 v18, v1

    move/from16 v57, v4

    move/from16 v61, v7

    move/from16 v62, v8

    move/from16 v49, v10

    move/from16 v51, v13

    move/from16 v58, v15

    move/from16 v56, v16

    move-object/from16 v1, v17

    move/from16 v63, v19

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v4, v22

    move/from16 v47, v25

    move/from16 v3, v26

    move/from16 v50, v28

    move/from16 v48, v35

    move/from16 v46, v42

    move/from16 v60, v45

    const/16 v5, 0x17

    goto/16 :goto_8

    :cond_3d
    move/from16 v9, v27

    goto :goto_36

    :goto_39
    if-ne v1, v14, :cond_3f

    if-ne v12, v14, :cond_3f

    const/16 v14, 0x20

    if-eq v6, v14, :cond_3e

    const/16 v14, 0x54

    if-ne v6, v14, :cond_3f

    :cond_3e
    const/16 v14, 0x3a

    goto :goto_3a

    :cond_3f
    move/from16 v27, v15

    move/from16 v14, v36

    goto/16 :goto_3e

    :goto_3a
    if-ne v3, v14, :cond_3f

    if-ne v11, v14, :cond_3f

    const/16 v14, 0x2e

    if-ne v9, v14, :cond_3f

    const/16 v14, 0x18

    move/from16 v27, v15

    if-eq v2, v14, :cond_41

    move/from16 v14, v36

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_40

    const/16 v15, 0x7c

    if-eq v14, v15, :cond_42

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_40

    const/16 v15, 0x2d

    if-eq v14, v15, :cond_40

    const/16 v15, 0x5a

    if-ne v14, v15, :cond_44

    :cond_40
    :goto_3b
    const/16 v15, 0x7c

    goto :goto_3c

    :cond_41
    move/from16 v14, v36

    goto :goto_3b

    :cond_42
    :goto_3c
    if-ne v14, v15, :cond_43

    move/from16 v1, v32

    goto :goto_3d

    :cond_43
    const/4 v1, 0x0

    :goto_3d
    const/4 v6, 0x0

    move-object/from16 v15, p0

    move/from16 v59, v0

    move/from16 v18, v1

    move/from16 v57, v4

    move/from16 v63, v5

    move/from16 v61, v7

    move/from16 v62, v8

    move/from16 v49, v10

    move/from16 v51, v13

    move/from16 v56, v16

    move-object/from16 v1, v17

    move/from16 v64, v19

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v4, v22

    move/from16 v47, v25

    move/from16 v3, v26

    move/from16 v58, v27

    move/from16 v50, v28

    move/from16 v48, v35

    move/from16 v46, v42

    move/from16 v60, v45

    const/16 v5, 0x18

    goto/16 :goto_61

    :cond_44
    :goto_3e
    const/16 v15, 0x2d

    if-ne v1, v15, :cond_46

    if-ne v12, v15, :cond_46

    const/16 v15, 0x20

    if-eq v6, v15, :cond_45

    const/16 v15, 0x54

    if-ne v6, v15, :cond_46

    :cond_45
    const/16 v15, 0x3a

    goto :goto_3f

    :cond_46
    move/from16 v15, v37

    move/from16 v37, v8

    :cond_47
    const/16 v8, 0x2d

    goto/16 :goto_43

    :goto_3f
    if-ne v3, v15, :cond_46

    if-ne v11, v15, :cond_46

    const/16 v15, 0x2e

    if-ne v9, v15, :cond_46

    const/16 v15, 0x19

    if-eq v2, v15, :cond_49

    move/from16 v15, v37

    move/from16 v37, v8

    const/16 v8, 0x5b

    if-eq v15, v8, :cond_48

    const/16 v8, 0x7c

    if-eq v15, v8, :cond_4a

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_48

    const/16 v8, 0x2d

    if-eq v15, v8, :cond_48

    const/16 v8, 0x5a

    if-ne v15, v8, :cond_47

    :cond_48
    :goto_40
    const/16 v8, 0x7c

    goto :goto_41

    :cond_49
    move/from16 v15, v37

    move/from16 v37, v8

    goto :goto_40

    :cond_4a
    :goto_41
    if-ne v15, v8, :cond_4b

    move/from16 v1, v32

    goto :goto_42

    :cond_4b
    const/4 v1, 0x0

    :goto_42
    const/4 v6, 0x0

    move-object/from16 v15, p0

    move/from16 v59, v0

    move/from16 v18, v1

    move/from16 v57, v4

    move/from16 v63, v5

    move/from16 v61, v7

    move/from16 v49, v10

    move/from16 v51, v13

    move/from16 v64, v14

    move/from16 v56, v16

    move-object/from16 v1, v17

    move/from16 v65, v19

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v4, v22

    move/from16 v47, v25

    move/from16 v3, v26

    move/from16 v58, v27

    move/from16 v50, v28

    move/from16 v48, v35

    move/from16 v62, v37

    move/from16 v46, v42

    move/from16 v60, v45

    const/16 v5, 0x19

    goto/16 :goto_61

    :goto_43
    if-ne v1, v8, :cond_4d

    if-ne v12, v8, :cond_4d

    const/16 v8, 0x20

    if-eq v6, v8, :cond_4c

    const/16 v8, 0x54

    if-ne v6, v8, :cond_4d

    :cond_4c
    const/16 v8, 0x3a

    goto :goto_44

    :cond_4d
    move/from16 v8, v38

    move/from16 v38, v15

    :cond_4e
    const/16 v15, 0x2d

    goto/16 :goto_48

    :goto_44
    if-ne v3, v8, :cond_4d

    if-ne v11, v8, :cond_4d

    const/16 v8, 0x2e

    if-ne v9, v8, :cond_4d

    const/16 v8, 0x1a

    if-eq v2, v8, :cond_50

    move/from16 v8, v38

    move/from16 v38, v15

    const/16 v15, 0x5b

    if-eq v8, v15, :cond_4f

    const/16 v15, 0x7c

    if-eq v8, v15, :cond_51

    const/16 v15, 0x2b

    if-eq v8, v15, :cond_4f

    const/16 v15, 0x2d

    if-eq v8, v15, :cond_4f

    const/16 v15, 0x5a

    if-ne v8, v15, :cond_4e

    :cond_4f
    :goto_45
    const/16 v15, 0x7c

    goto :goto_46

    :cond_50
    move/from16 v8, v38

    move/from16 v38, v15

    goto :goto_45

    :cond_51
    :goto_46
    if-ne v8, v15, :cond_52

    move/from16 v1, v32

    goto :goto_47

    :cond_52
    const/4 v1, 0x0

    :goto_47
    const/4 v6, 0x0

    move-object/from16 v15, p0

    move/from16 v59, v0

    move/from16 v18, v1

    move/from16 v57, v4

    move/from16 v63, v5

    move/from16 v61, v7

    move/from16 v49, v10

    move/from16 v51, v13

    move/from16 v64, v14

    move/from16 v56, v16

    move-object/from16 v1, v17

    move/from16 v66, v19

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v4, v22

    move/from16 v47, v25

    move/from16 v3, v26

    move/from16 v58, v27

    move/from16 v50, v28

    move/from16 v48, v35

    move/from16 v62, v37

    move/from16 v65, v38

    move/from16 v46, v42

    move/from16 v60, v45

    const/16 v5, 0x1a

    goto/16 :goto_61

    :goto_48
    if-ne v1, v15, :cond_54

    if-ne v12, v15, :cond_54

    const/16 v15, 0x20

    if-eq v6, v15, :cond_53

    const/16 v15, 0x54

    if-ne v6, v15, :cond_54

    :cond_53
    const/16 v15, 0x3a

    goto :goto_49

    :cond_54
    move/from16 v15, v39

    move/from16 v39, v8

    goto/16 :goto_4d

    :goto_49
    if-ne v3, v15, :cond_54

    if-ne v11, v15, :cond_54

    const/16 v15, 0x2e

    if-ne v9, v15, :cond_54

    const/16 v15, 0x1b

    if-eq v2, v15, :cond_56

    move/from16 v15, v39

    move/from16 v39, v8

    const/16 v8, 0x5b

    if-eq v15, v8, :cond_55

    const/16 v8, 0x7c

    if-eq v15, v8, :cond_55

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_55

    const/16 v8, 0x2d

    if-eq v15, v8, :cond_55

    const/16 v8, 0x5a

    if-ne v15, v8, :cond_59

    :cond_55
    :goto_4a
    const/16 v11, 0x20

    goto :goto_4b

    :cond_56
    move/from16 v15, v39

    move/from16 v39, v8

    goto :goto_4a

    :goto_4b
    if-ne v5, v11, :cond_57

    const/4 v6, 0x0

    move-object/from16 v15, p0

    move/from16 v59, v0

    move/from16 v57, v4

    move/from16 v61, v7

    move/from16 v49, v10

    move/from16 v51, v13

    move/from16 v56, v16

    move-object/from16 v1, v17

    move/from16 v63, v19

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v4, v22

    move/from16 v47, v25

    move/from16 v3, v26

    move/from16 v58, v27

    move/from16 v50, v28

    move/from16 v48, v35

    move/from16 v62, v37

    move/from16 v46, v42

    move/from16 v60, v45

    const/16 v5, 0x17

    goto/16 :goto_9

    :cond_57
    const/16 v8, 0x7c

    if-ne v15, v8, :cond_58

    move/from16 v1, v32

    goto :goto_4c

    :cond_58
    const/4 v1, 0x0

    :goto_4c
    const/4 v6, 0x0

    move-object/from16 v15, p0

    move/from16 v59, v0

    move/from16 v18, v1

    move/from16 v57, v4

    move/from16 v63, v5

    move/from16 v61, v7

    move/from16 v49, v10

    move/from16 v51, v13

    move/from16 v64, v14

    move/from16 v56, v16

    move-object/from16 v1, v17

    move/from16 v67, v19

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v4, v22

    move/from16 v47, v25

    move/from16 v3, v26

    move/from16 v58, v27

    move/from16 v50, v28

    move/from16 v48, v35

    move/from16 v62, v37

    move/from16 v65, v38

    move/from16 v66, v39

    move/from16 v46, v42

    move/from16 v60, v45

    const/16 v5, 0x1b

    goto/16 :goto_61

    :cond_59
    :goto_4d
    const/16 v8, 0x2d

    if-ne v1, v8, :cond_5b

    if-ne v12, v8, :cond_5b

    const/16 v8, 0x20

    if-eq v6, v8, :cond_5a

    const/16 v8, 0x54

    if-ne v6, v8, :cond_5b

    :cond_5a
    const/16 v8, 0x3a

    goto :goto_4e

    :cond_5b
    move/from16 v8, v40

    move/from16 v40, v15

    :cond_5c
    const/16 v15, 0x1c

    goto/16 :goto_52

    :goto_4e
    if-ne v3, v8, :cond_5b

    if-ne v11, v8, :cond_5b

    const/16 v8, 0x2e

    if-ne v9, v8, :cond_5b

    const/16 v8, 0x1c

    if-eq v2, v8, :cond_5e

    move/from16 v8, v40

    move/from16 v40, v15

    const/16 v15, 0x5b

    if-eq v8, v15, :cond_5d

    const/16 v15, 0x7c

    if-eq v8, v15, :cond_5f

    const/16 v15, 0x2b

    if-eq v8, v15, :cond_5d

    const/16 v15, 0x2d

    if-eq v8, v15, :cond_5d

    const/16 v15, 0x5a

    if-ne v8, v15, :cond_5c

    :cond_5d
    :goto_4f
    const/16 v15, 0x7c

    goto :goto_50

    :cond_5e
    move/from16 v8, v40

    move/from16 v40, v15

    goto :goto_4f

    :cond_5f
    :goto_50
    if-ne v8, v15, :cond_60

    move/from16 v1, v32

    goto :goto_51

    :cond_60
    const/4 v1, 0x0

    :goto_51
    const/4 v6, 0x0

    move-object/from16 v15, p0

    move/from16 v59, v0

    move/from16 v18, v1

    move/from16 v57, v4

    move/from16 v63, v5

    move/from16 v61, v7

    move/from16 v49, v10

    move/from16 v51, v13

    move/from16 v64, v14

    move/from16 v56, v16

    move-object/from16 v1, v17

    move/from16 v68, v19

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v4, v22

    move/from16 v47, v25

    move/from16 v3, v26

    move/from16 v58, v27

    move/from16 v50, v28

    move/from16 v48, v35

    move/from16 v62, v37

    move/from16 v65, v38

    move/from16 v66, v39

    move/from16 v67, v40

    move/from16 v46, v42

    move/from16 v60, v45

    const/16 v5, 0x1c

    goto/16 :goto_61

    :goto_52
    if-ne v2, v15, :cond_62

    const/16 v15, 0x20

    if-ne v10, v15, :cond_62

    if-ne v12, v15, :cond_62

    if-ne v6, v15, :cond_62

    const/16 v15, 0x3a

    if-ne v3, v15, :cond_62

    if-ne v11, v15, :cond_62

    const/16 v15, 0x20

    if-ne v9, v15, :cond_62

    if-ne v5, v15, :cond_62

    move/from16 v15, v28

    .line 222
    invoke-static {v1, v15, v13}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_61

    .line 223
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 224
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v8, v1

    move v7, v3

    goto :goto_53

    :cond_61
    move/from16 v7, v19

    move v8, v7

    .line 225
    :goto_53
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x14

    const/4 v5, 0x3

    move-object/from16 v6, p0

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([CII)V

    move/from16 v59, v0

    move/from16 v57, v4

    move-object v15, v6

    move/from16 v50, v7

    move/from16 v51, v8

    move/from16 v46, v14

    move/from16 v56, v16

    move/from16 v60, v19

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v53, v20

    move/from16 v52, v21

    move/from16 v4, v22

    move/from16 v3, v26

    move/from16 v58, v27

    move/from16 v47, v38

    move/from16 v48, v39

    move/from16 v49, v40

    const/16 v5, 0x13

    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_62
    move-object/from16 v15, p0

    move/from16 v24, v8

    const/16 v8, 0x1c

    if-ne v2, v8, :cond_64

    const/16 v8, 0x2c

    if-ne v10, v8, :cond_64

    const/16 v8, 0x20

    if-ne v1, v8, :cond_64

    if-ne v13, v8, :cond_64

    if-ne v6, v8, :cond_64

    if-ne v4, v8, :cond_64

    const/16 v8, 0x3a

    if-ne v0, v8, :cond_64

    if-ne v7, v8, :cond_64

    const/16 v8, 0x20

    if-ne v14, v8, :cond_64

    move/from16 v0, v20

    move/from16 v8, v21

    .line 226
    invoke-static {v12, v8, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_63

    .line 227
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 228
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v8, v0

    move v7, v1

    goto :goto_54

    :cond_63
    move/from16 v7, v19

    move v8, v7

    :goto_54
    move/from16 v48, v3

    move/from16 v59, v5

    move/from16 v50, v7

    move/from16 v51, v8

    move/from16 v56, v9

    move v3, v11

    move/from16 v49, v16

    move-object/from16 v1, v17

    move/from16 v52, v19

    move/from16 v60, v52

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v47, v22

    move/from16 v46, v26

    move/from16 v4, v27

    move/from16 v53, v28

    move/from16 v18, v32

    move/from16 v58, v37

    move/from16 v57, v45

    const/16 v5, 0x18

    :goto_55
    const/4 v6, 0x0

    goto/16 :goto_61

    :cond_64
    move/from16 v8, v20

    move/from16 v20, v0

    move v0, v8

    move/from16 v8, v21

    move/from16 v21, v14

    const/16 v14, 0x1d

    if-ne v2, v14, :cond_69

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_69

    const/16 v14, 0x20

    if-ne v1, v14, :cond_69

    if-ne v12, v14, :cond_69

    move/from16 v43, v10

    move/from16 v10, v26

    if-ne v10, v14, :cond_68

    if-ne v11, v14, :cond_68

    const/16 v14, 0x3a

    if-ne v9, v14, :cond_68

    move/from16 v26, v7

    move/from16 v7, v37

    move/from16 v37, v5

    if-ne v7, v14, :cond_67

    move/from16 v14, v38

    const/16 v5, 0x20

    if-ne v14, v5, :cond_66

    .line 229
    invoke-static {v8, v0, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_65

    .line 230
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 231
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v8, v0

    move v7, v1

    goto :goto_56

    :cond_65
    move/from16 v7, v19

    move v8, v7

    :goto_56
    move/from16 v47, v3

    move/from16 v49, v4

    move/from16 v50, v7

    move/from16 v51, v8

    move/from16 v53, v13

    move/from16 v48, v16

    move-object/from16 v1, v17

    move/from16 v60, v19

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v4, v20

    move/from16 v59, v21

    move/from16 v46, v22

    move/from16 v57, v26

    move/from16 v3, v27

    move/from16 v52, v28

    move/from16 v18, v32

    move/from16 v58, v37

    move/from16 v56, v45

    const/16 v5, 0x19

    goto :goto_55

    :cond_66
    :goto_57
    const/16 v5, 0x2d

    goto :goto_59

    :cond_67
    move/from16 v14, v38

    goto :goto_57

    :cond_68
    move/from16 v26, v7

    move/from16 v7, v37

    move/from16 v14, v38

    :goto_58
    move/from16 v37, v5

    goto :goto_57

    :cond_69
    move/from16 v43, v10

    move/from16 v10, v26

    move/from16 v14, v38

    move/from16 v26, v7

    move/from16 v7, v37

    goto :goto_58

    :goto_59
    if-ne v1, v5, :cond_6b

    if-ne v12, v5, :cond_6b

    const/16 v5, 0x20

    if-eq v6, v5, :cond_6a

    const/16 v5, 0x54

    if-ne v6, v5, :cond_6b

    :cond_6a
    const/16 v5, 0x3a

    goto :goto_5a

    :cond_6b
    move/from16 v44, v1

    :cond_6c
    const/16 v1, 0x16

    goto/16 :goto_5e

    :goto_5a
    if-ne v3, v5, :cond_6b

    if-ne v11, v5, :cond_6b

    const/16 v5, 0x2e

    if-ne v9, v5, :cond_6b

    const/16 v5, 0x1d

    if-eq v2, v5, :cond_6e

    move/from16 v44, v1

    move/from16 v5, v41

    const/16 v1, 0x5b

    if-eq v5, v1, :cond_6d

    const/16 v1, 0x7c

    if-eq v5, v1, :cond_6f

    const/16 v1, 0x2b

    if-eq v5, v1, :cond_6d

    const/16 v1, 0x2d

    if-eq v5, v1, :cond_6d

    const/16 v1, 0x5a

    if-ne v5, v1, :cond_6c

    :cond_6d
    :goto_5b
    const/16 v1, 0x7c

    goto :goto_5c

    :cond_6e
    move/from16 v5, v41

    goto :goto_5b

    :cond_6f
    :goto_5c
    if-ne v5, v1, :cond_70

    move/from16 v1, v32

    goto :goto_5d

    :cond_70
    const/4 v1, 0x0

    :goto_5d
    move/from16 v53, v0

    move/from16 v18, v1

    move/from16 v57, v4

    move/from16 v62, v7

    move/from16 v52, v8

    move v3, v10

    move/from16 v51, v13

    move/from16 v65, v14

    move/from16 v56, v16

    move-object/from16 v1, v17

    move/from16 v59, v20

    move/from16 v64, v21

    move/from16 v4, v22

    move/from16 v68, v24

    move/from16 v47, v25

    move/from16 v61, v26

    move/from16 v58, v27

    move/from16 v50, v28

    move/from16 v48, v35

    move/from16 v63, v37

    move/from16 v66, v39

    move/from16 v67, v40

    move/from16 v46, v42

    move/from16 v49, v43

    move/from16 v60, v45

    const/16 v5, 0x1d

    goto/16 :goto_55

    :goto_5e
    if-ne v2, v1, :cond_7f

    move/from16 v1, v27

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_72

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_71

    goto :goto_60

    :cond_71
    :goto_5f
    const/16 v5, 0x20

    goto/16 :goto_67

    :cond_72
    :goto_60
    move/from16 v59, v3

    move/from16 v61, v4

    move/from16 v56, v6

    move v3, v8

    move/from16 v57, v10

    move/from16 v62, v11

    move/from16 v53, v12

    move/from16 v52, v13

    move/from16 v60, v16

    move-object/from16 v1, v17

    move/from16 v63, v19

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v58, v22

    move/from16 v47, v25

    move/from16 v51, v28

    move/from16 v48, v35

    move/from16 v46, v42

    move/from16 v49, v43

    move/from16 v50, v44

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/16 v18, 0x0

    move v4, v0

    :goto_61
    if-eqz v6, :cond_73

    .line 232
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->hourAfterNoon(CC)I

    move-result v0

    shr-int/lit8 v3, v0, 0x10

    int-to-char v3, v3

    int-to-short v0, v0

    int-to-char v4, v0

    :cond_73
    move/from16 v54, v3

    move/from16 v55, v4

    .line 233
    invoke-static/range {v46 .. v68}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_74

    return-object v17

    :cond_74
    if-eqz v18, :cond_76

    .line 234
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v2, v5

    invoke-direct {v1, v15, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 235
    const-string v2, "UTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, "[UTC]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 236
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 237
    invoke-static {v1}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/util/TimeZone;)Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v1

    goto :goto_62

    .line 238
    :cond_75
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    :goto_62
    move-object/from16 v3, p3

    goto :goto_66

    :cond_76
    if-ne v5, v2, :cond_77

    move-object/from16 v1, p3

    move-object v3, v1

    goto :goto_66

    :cond_77
    add-int v3, p1, v5

    .line 239
    aget-char v4, v15, v3

    const/16 v8, 0x5a

    if-ne v4, v8, :cond_78

    .line 240
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    goto :goto_62

    :cond_78
    if-nez v1, :cond_7a

    const/16 v8, 0x2b

    if-eq v4, v8, :cond_7c

    const/16 v8, 0x2d

    if-ne v4, v8, :cond_79

    goto :goto_64

    :cond_79
    const/16 v7, 0x20

    if-ne v4, v7, :cond_7b

    .line 241
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v15, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :cond_7a
    :goto_63
    move-object/from16 v3, p3

    goto :goto_65

    :cond_7b
    if-ge v5, v2, :cond_7a

    .line 242
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v1, v15, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_63

    .line 243
    :cond_7c
    :goto_64
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v2, v5

    invoke-direct {v1, v15, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_63

    .line 244
    :goto_65
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v1

    :goto_66
    if-nez v1, :cond_7d

    move-object v1, v3

    :cond_7d
    if-nez v1, :cond_7e

    .line 245
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 246
    :cond_7e
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_7f
    move/from16 v1, v27

    goto/16 :goto_5f

    :goto_67
    if-ne v2, v5, :cond_80

    const/16 v15, 0x2c

    if-ne v13, v15, :cond_80

    if-ne v12, v5, :cond_80

    const/16 v15, 0x2d

    if-ne v6, v15, :cond_80

    move/from16 v13, v16

    if-ne v13, v15, :cond_80

    if-ne v9, v5, :cond_80

    const/16 v15, 0x3a

    if-ne v7, v15, :cond_80

    if-ne v14, v15, :cond_80

    add-int/lit8 v9, p1, 0x1c

    .line 247
    aget-char v9, p0, v9

    if-eq v9, v5, :cond_83

    :cond_80
    const/16 v5, 0x21

    if-ne v2, v5, :cond_81

    const/16 v15, 0x2c

    if-ne v12, v15, :cond_81

    const/16 v5, 0x20

    if-ne v8, v5, :cond_81

    const/16 v15, 0x2d

    if-ne v10, v15, :cond_81

    if-ne v4, v15, :cond_81

    move/from16 v4, v45

    if-ne v4, v5, :cond_81

    move/from16 v4, v37

    const/16 v15, 0x3a

    if-ne v4, v15, :cond_81

    move/from16 v4, v39

    if-ne v4, v15, :cond_81

    add-int/lit8 v4, p1, 0x1d

    aget-char v4, p0, v4

    if-eq v4, v5, :cond_83

    :cond_81
    const/16 v4, 0x22

    if-ne v2, v4, :cond_82

    const/16 v15, 0x2c

    if-ne v8, v15, :cond_82

    const/16 v5, 0x20

    if-ne v0, v5, :cond_82

    move/from16 v8, v22

    const/16 v15, 0x2d

    if-ne v8, v15, :cond_82

    if-ne v11, v15, :cond_82

    move/from16 v8, v26

    if-ne v8, v5, :cond_82

    move/from16 v8, v21

    const/16 v15, 0x3a

    if-ne v8, v15, :cond_82

    move/from16 v8, v40

    if-ne v8, v15, :cond_82

    add-int/lit8 v8, p1, 0x1e

    aget-char v8, p0, v8

    if-eq v8, v5, :cond_83

    :cond_82
    const/16 v5, 0x23

    if-ne v2, v5, :cond_84

    const/16 v15, 0x2c

    if-ne v0, v15, :cond_84

    const/16 v5, 0x20

    if-ne v6, v5, :cond_84

    const/16 v15, 0x2d

    if-ne v3, v15, :cond_84

    if-ne v1, v15, :cond_84

    if-ne v7, v5, :cond_84

    const/16 v15, 0x3a

    if-ne v14, v15, :cond_84

    move/from16 v8, v24

    if-ne v8, v15, :cond_84

    add-int/lit8 v0, p1, 0x1f

    aget-char v0, p0, v0

    if-ne v0, v5, :cond_84

    .line 248
    :cond_83
    new-instance v0, Ljava/lang/String;

    move-object/from16 v15, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTimeCookie(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_84
    move-object/from16 v15, p0

    move/from16 v1, p1

    if-ne v2, v4, :cond_85

    .line 249
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v15, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 250
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 251
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/Instant;->of(Ljava/util/Date;)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 253
    :catch_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse error, format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", input "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_85
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_87

    move/from16 v0, v43

    const/16 v12, 0x2c

    if-ne v0, v12, :cond_87

    .line 254
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_RFC_2822:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    if-nez v0, :cond_86

    .line 255
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-static {v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_RFC_2822:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 256
    :cond_86
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseZonedDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_87
    return-object v17

    :cond_88
    move-object v15, v0

    .line 257
    new-instance v0, Ljava/lang/String;

    array-length v2, v15

    sub-int/2addr v2, v1

    invoke-direct {v0, v15, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 258
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseZonedDateTime16([BILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 17

    move-object/from16 v0, p0

    add-int/lit8 v2, p1, 0x10

    .line 28
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_5

    .line 29
    aget-byte v2, v0, p1

    int-to-char v2, v2

    add-int/lit8 v3, p1, 0x1

    .line 30
    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v6, p1, 0x2

    .line 31
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x3

    .line 32
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x4

    .line 33
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x5

    .line 34
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x6

    .line 35
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x7

    .line 36
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0x8

    .line 37
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0x9

    .line 38
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xa

    .line 39
    aget-byte v15, v0, v14

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xd

    .line 40
    aget-byte v4, v0, v16

    int-to-char v4, v4

    move-object/from16 v16, v5

    const/16 v5, 0x2d

    const/16 v1, 0x10

    if-ne v8, v5, :cond_0

    if-ne v11, v5, :cond_0

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_1

    if-ne v15, v5, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    move-object/from16 v4, v16

    goto/16 :goto_1

    :cond_1
    :goto_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    if-lt v2, v4, :cond_4

    const/16 v5, 0x39

    if-gt v2, v5, :cond_4

    if-lt v3, v4, :cond_4

    if-gt v3, v5, :cond_4

    if-lt v6, v4, :cond_4

    if-gt v6, v5, :cond_4

    if-lt v7, v4, :cond_4

    if-gt v7, v5, :cond_4

    sub-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v7, v4

    add-int/2addr v2, v7

    if-lt v9, v4, :cond_3

    if-gt v9, v5, :cond_3

    if-lt v10, v4, :cond_3

    if-gt v10, v5, :cond_3

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v4

    add-int/2addr v9, v10

    if-lt v12, v4, :cond_2

    if-gt v12, v5, :cond_2

    if-lt v13, v4, :cond_2

    if-gt v13, v5, :cond_2

    sub-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v4

    add-int/2addr v12, v13

    .line 41
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v14, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p2

    .line 42
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v0

    .line 43
    invoke-static {v2, v9, v12}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v1

    .line 44
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 45
    :cond_2
    new-instance v2, Ljava/lang/String;

    move/from16 v3, p1

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 46
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_3
    move/from16 v3, p1

    move-object/from16 v4, v16

    .line 47
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 48
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_4
    move/from16 v3, p1

    move-object/from16 v4, v16

    .line 49
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 50
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 51
    :goto_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 52
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_5
    move/from16 v3, p1

    move-object v4, v5

    .line 53
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 54
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public static parseZonedDateTime16([CILcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 17

    move-object/from16 v0, p0

    add-int/lit8 v2, p1, 0x10

    .line 1
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_5

    .line 2
    aget-char v2, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 3
    aget-char v3, v0, v3

    add-int/lit8 v6, p1, 0x2

    .line 4
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x3

    .line 5
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x4

    .line 6
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x5

    .line 7
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x6

    .line 8
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x7

    .line 9
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0x8

    .line 10
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0x9

    .line 11
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xa

    .line 12
    aget-char v15, v0, v14

    add-int/lit8 v16, p1, 0xd

    .line 13
    aget-char v4, v0, v16

    move-object/from16 v16, v5

    const/16 v5, 0x2d

    const/16 v1, 0x10

    if-ne v8, v5, :cond_0

    if-ne v11, v5, :cond_0

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_1

    if-ne v15, v5, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    move-object/from16 v4, v16

    goto/16 :goto_1

    :cond_1
    :goto_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    if-lt v2, v4, :cond_4

    const/16 v5, 0x39

    if-gt v2, v5, :cond_4

    if-lt v3, v4, :cond_4

    if-gt v3, v5, :cond_4

    if-lt v6, v4, :cond_4

    if-gt v6, v5, :cond_4

    if-lt v7, v4, :cond_4

    if-gt v7, v5, :cond_4

    sub-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v7, v4

    add-int/2addr v2, v7

    if-lt v9, v4, :cond_3

    if-gt v9, v5, :cond_3

    if-lt v10, v4, :cond_3

    if-gt v10, v5, :cond_3

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v4

    add-int/2addr v9, v10

    if-lt v12, v4, :cond_2

    if-gt v12, v5, :cond_2

    if-lt v13, v4, :cond_2

    if-gt v13, v5, :cond_2

    sub-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v4

    add-int/2addr v12, v13

    .line 14
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v14, v3}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p2

    .line 15
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v0

    .line 16
    invoke-static {v2, v9, v12}, Lcom/alibaba/fastjson2/time/LocalDate;->of(III)Lcom/alibaba/fastjson2/time/LocalDate;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    move-result-object v1

    .line 17
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 18
    :cond_2
    new-instance v2, Ljava/lang/String;

    move/from16 v3, p1

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 19
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_3
    move/from16 v3, p1

    move-object/from16 v4, v16

    .line 20
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 21
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_4
    move/from16 v3, p1

    move-object/from16 v4, v16

    .line 22
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 23
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 24
    :goto_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 25
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_5
    move/from16 v3, p1

    move-object v4, v5

    .line 26
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 27
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public static parseZonedDateTimeCookie(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 3

    .line 1
    .line 2
    const-string v0, " CST"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_COOKIE_LOCAL:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "EEEE, dd-MMM-yyyy HH:mm:ss"

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_COOKIE_LOCAL:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    move-result v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x4

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    .line 44
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_COOKIE:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const-string v0, "EEEE, dd-MMM-yyyy HH:mm:ss zzz"

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DATE_TIME_FORMATTER_COOKIE:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseZonedDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static toString(JZLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;
    .locals 29

    .line 1
    .line 2
    move-wide/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p3

    .line 5
    .line 6
    const-wide/16 v3, 0x3e8

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 10
    move-result-wide v5

    .line 11
    .line 12
    sget-object v7, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v7

    .line 17
    .line 18
    if-eqz v7, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    .line 22
    move-result v2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    .line 31
    move-result v2

    .line 32
    :goto_0
    int-to-long v7, v2

    .line 33
    add-long/2addr v5, v7

    .line 34
    .line 35
    .line 36
    const-wide/32 v7, 0x15180

    .line 37
    .line 38
    .line 39
    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 40
    move-result-wide v9

    .line 41
    .line 42
    .line 43
    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    .line 44
    move-result-wide v5

    .line 45
    long-to-int v5, v5

    .line 46
    .line 47
    .line 48
    const-wide/32 v6, 0xafa6c

    .line 49
    add-long/2addr v6, v9

    .line 50
    .line 51
    const-wide/16 v11, 0x0

    .line 52
    .line 53
    cmp-long v8, v6, v11

    .line 54
    .line 55
    const-wide/16 v13, 0x1

    .line 56
    .line 57
    .line 58
    const-wide/32 v15, 0x23ab1

    .line 59
    .line 60
    const-wide/16 v17, 0x190

    .line 61
    .line 62
    if-gez v8, :cond_1

    .line 63
    .line 64
    .line 65
    const-wide/32 v19, 0xafa6d

    .line 66
    .line 67
    add-long v9, v9, v19

    .line 68
    div-long/2addr v9, v15

    .line 69
    sub-long/2addr v9, v13

    .line 70
    .line 71
    mul-long v19, v9, v17

    .line 72
    neg-long v8, v9

    .line 73
    mul-long/2addr v8, v15

    .line 74
    add-long/2addr v6, v8

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_1
    move-wide/from16 v19, v11

    .line 78
    .line 79
    :goto_1
    mul-long v8, v6, v17

    .line 80
    .line 81
    const-wide/16 v21, 0x24f

    .line 82
    .line 83
    add-long v8, v8, v21

    .line 84
    div-long/2addr v8, v15

    .line 85
    .line 86
    const-wide/16 v15, 0x16d

    .line 87
    .line 88
    mul-long v21, v8, v15

    .line 89
    .line 90
    const-wide/16 v23, 0x4

    .line 91
    .line 92
    div-long v25, v8, v23

    .line 93
    .line 94
    add-long v21, v21, v25

    .line 95
    .line 96
    const-wide/16 v25, 0x64

    .line 97
    .line 98
    div-long v27, v8, v25

    .line 99
    .line 100
    sub-long v21, v21, v27

    .line 101
    .line 102
    div-long v27, v8, v17

    .line 103
    .line 104
    add-long v21, v21, v27

    .line 105
    .line 106
    sub-long v21, v6, v21

    .line 107
    .line 108
    cmp-long v10, v21, v11

    .line 109
    .line 110
    if-gez v10, :cond_2

    .line 111
    sub-long/2addr v8, v13

    .line 112
    mul-long/2addr v15, v8

    .line 113
    .line 114
    div-long v13, v8, v23

    .line 115
    add-long/2addr v15, v13

    .line 116
    .line 117
    div-long v13, v8, v25

    .line 118
    sub-long/2addr v15, v13

    .line 119
    .line 120
    div-long v13, v8, v17

    .line 121
    add-long/2addr v15, v13

    .line 122
    .line 123
    sub-long v21, v6, v15

    .line 124
    .line 125
    :cond_2
    move-wide/from16 v6, v21

    .line 126
    .line 127
    add-long v8, v8, v19

    .line 128
    long-to-int v6, v6

    .line 129
    .line 130
    mul-int/lit8 v7, v6, 0x5

    .line 131
    const/4 v10, 0x2

    .line 132
    add-int/2addr v7, v10

    .line 133
    .line 134
    div-int/lit16 v7, v7, 0x99

    .line 135
    .line 136
    add-int/lit8 v13, v7, 0x2

    .line 137
    .line 138
    const/16 v14, 0xc

    .line 139
    rem-int/2addr v13, v14

    .line 140
    const/4 v15, 0x1

    .line 141
    add-int/2addr v13, v15

    .line 142
    .line 143
    move/from16 p3, v10

    .line 144
    .line 145
    mul-int/lit16 v10, v7, 0x132

    .line 146
    .line 147
    const/16 v16, 0x5

    .line 148
    .line 149
    add-int/lit8 v10, v10, 0x5

    .line 150
    .line 151
    move-wide/from16 v17, v11

    .line 152
    .line 153
    const/16 v11, 0xa

    .line 154
    div-int/2addr v10, v11

    .line 155
    sub-int/2addr v6, v10

    .line 156
    add-int/2addr v6, v15

    .line 157
    div-int/2addr v7, v11

    .line 158
    move v10, v14

    .line 159
    move v12, v15

    .line 160
    int-to-long v14, v7

    .line 161
    add-long/2addr v8, v14

    .line 162
    .line 163
    .line 164
    const-wide/32 v14, -0x3b9ac9ff

    .line 165
    .line 166
    cmp-long v7, v8, v14

    .line 167
    .line 168
    if-ltz v7, :cond_15

    .line 169
    .line 170
    .line 171
    const-wide/32 v14, 0x3b9ac9ff

    .line 172
    .line 173
    cmp-long v7, v8, v14

    .line 174
    .line 175
    if-gtz v7, :cond_15

    .line 176
    long-to-int v7, v8

    .line 177
    int-to-long v8, v5

    .line 178
    .line 179
    cmp-long v5, v8, v17

    .line 180
    .line 181
    if-ltz v5, :cond_14

    .line 182
    .line 183
    .line 184
    const-wide/32 v14, 0x1517f

    .line 185
    .line 186
    cmp-long v5, v8, v14

    .line 187
    .line 188
    if-gtz v5, :cond_14

    .line 189
    .line 190
    const-wide/16 v14, 0xe10

    .line 191
    .line 192
    div-long v14, v8, v14

    .line 193
    long-to-int v5, v14

    .line 194
    .line 195
    mul-int/lit16 v14, v5, 0xe10

    .line 196
    int-to-long v14, v14

    .line 197
    sub-long/2addr v8, v14

    .line 198
    .line 199
    const-wide/16 v14, 0x3c

    .line 200
    .line 201
    div-long v14, v8, v14

    .line 202
    long-to-int v14, v14

    .line 203
    .line 204
    mul-int/lit8 v15, v14, 0x3c

    .line 205
    .line 206
    move/from16 v18, v12

    .line 207
    .line 208
    move/from16 v17, v13

    .line 209
    int-to-long v12, v15

    .line 210
    sub-long/2addr v8, v12

    .line 211
    long-to-int v8, v8

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    .line 215
    move-result-wide v0

    .line 216
    long-to-int v0, v0

    .line 217
    .line 218
    if-nez v0, :cond_3

    .line 219
    const/4 v4, 0x0

    .line 220
    goto :goto_2

    .line 221
    .line 222
    :cond_3
    if-ge v0, v11, :cond_5

    .line 223
    :cond_4
    const/4 v4, 0x4

    .line 224
    goto :goto_2

    .line 225
    .line 226
    :cond_5
    rem-int/lit8 v4, v0, 0x64

    .line 227
    .line 228
    if-nez v4, :cond_6

    .line 229
    .line 230
    move/from16 v4, p3

    .line 231
    goto :goto_2

    .line 232
    .line 233
    :cond_6
    rem-int/lit8 v4, v0, 0xa

    .line 234
    .line 235
    if-nez v4, :cond_4

    .line 236
    const/4 v4, 0x3

    .line 237
    .line 238
    :goto_2
    if-eqz p2, :cond_8

    .line 239
    .line 240
    if-nez v2, :cond_7

    .line 241
    .line 242
    move/from16 v9, v18

    .line 243
    goto :goto_3

    .line 244
    :cond_7
    const/4 v9, 0x6

    .line 245
    goto :goto_3

    .line 246
    :cond_8
    const/4 v9, 0x0

    .line 247
    .line 248
    :goto_3
    add-int/lit8 v12, v4, 0x13

    .line 249
    add-int/2addr v9, v12

    .line 250
    .line 251
    div-int/lit16 v13, v7, 0x3e8

    .line 252
    .line 253
    const/16 v15, 0x30

    .line 254
    add-int/2addr v13, v15

    .line 255
    .line 256
    div-int/lit8 v19, v7, 0x64

    .line 257
    .line 258
    rem-int/lit8 v19, v19, 0xa

    .line 259
    .line 260
    const/16 p0, 0x4

    .line 261
    .line 262
    add-int/lit8 v1, v19, 0x30

    .line 263
    .line 264
    div-int/lit8 v19, v7, 0xa

    .line 265
    .line 266
    rem-int/lit8 v19, v19, 0xa

    .line 267
    .line 268
    const/16 p1, 0x0

    .line 269
    .line 270
    add-int/lit8 v3, v19, 0x30

    .line 271
    rem-int/2addr v7, v11

    .line 272
    add-int/2addr v7, v15

    .line 273
    .line 274
    div-int/lit8 v19, v17, 0xa

    .line 275
    .line 276
    move/from16 v20, v10

    .line 277
    .line 278
    add-int/lit8 v10, v19, 0x30

    .line 279
    .line 280
    rem-int/lit8 v17, v17, 0xa

    .line 281
    .line 282
    move/from16 v19, v15

    .line 283
    .line 284
    add-int/lit8 v15, v17, 0x30

    .line 285
    .line 286
    div-int/lit8 v17, v6, 0xa

    .line 287
    .line 288
    move/from16 v21, v11

    .line 289
    .line 290
    add-int/lit8 v11, v17, 0x30

    .line 291
    .line 292
    rem-int/lit8 v6, v6, 0xa

    .line 293
    .line 294
    add-int/lit8 v6, v6, 0x30

    .line 295
    .line 296
    div-int/lit8 v17, v5, 0xa

    .line 297
    .line 298
    move/from16 v22, v4

    .line 299
    .line 300
    add-int/lit8 v4, v17, 0x30

    .line 301
    .line 302
    rem-int/lit8 v5, v5, 0xa

    .line 303
    .line 304
    add-int/lit8 v5, v5, 0x30

    .line 305
    .line 306
    div-int/lit8 v17, v14, 0xa

    .line 307
    .line 308
    move/from16 v23, v8

    .line 309
    .line 310
    add-int/lit8 v8, v17, 0x30

    .line 311
    .line 312
    rem-int/lit8 v14, v14, 0xa

    .line 313
    .line 314
    add-int/lit8 v14, v14, 0x30

    .line 315
    .line 316
    div-int/lit8 v17, v23, 0xa

    .line 317
    .line 318
    move/from16 v24, v12

    .line 319
    .line 320
    add-int/lit8 v12, v17, 0x30

    .line 321
    .line 322
    rem-int/lit8 v17, v23, 0xa

    .line 323
    .line 324
    move/from16 v23, v2

    .line 325
    .line 326
    add-int/lit8 v2, v17, 0x30

    .line 327
    .line 328
    move/from16 v17, v0

    .line 329
    .line 330
    new-array v0, v9, [C

    .line 331
    int-to-char v13, v13

    .line 332
    .line 333
    aput-char v13, v0, p1

    .line 334
    int-to-char v1, v1

    .line 335
    .line 336
    aput-char v1, v0, v18

    .line 337
    int-to-char v1, v3

    .line 338
    .line 339
    aput-char v1, v0, p3

    .line 340
    const/4 v1, 0x3

    .line 341
    int-to-char v3, v7

    .line 342
    .line 343
    aput-char v3, v0, v1

    .line 344
    .line 345
    const/16 v1, 0x2d

    .line 346
    .line 347
    aput-char v1, v0, p0

    .line 348
    int-to-char v3, v10

    .line 349
    .line 350
    aput-char v3, v0, v16

    .line 351
    const/4 v3, 0x6

    .line 352
    int-to-char v7, v15

    .line 353
    .line 354
    aput-char v7, v0, v3

    .line 355
    const/4 v3, 0x7

    .line 356
    .line 357
    aput-char v1, v0, v3

    .line 358
    .line 359
    const/16 v3, 0x8

    .line 360
    int-to-char v7, v11

    .line 361
    .line 362
    aput-char v7, v0, v3

    .line 363
    .line 364
    const/16 v3, 0x9

    .line 365
    int-to-char v6, v6

    .line 366
    .line 367
    aput-char v6, v0, v3

    .line 368
    .line 369
    const/16 v3, 0x20

    .line 370
    .line 371
    aput-char v3, v0, v21

    .line 372
    .line 373
    const/16 v3, 0xb

    .line 374
    int-to-char v4, v4

    .line 375
    .line 376
    aput-char v4, v0, v3

    .line 377
    int-to-char v3, v5

    .line 378
    .line 379
    aput-char v3, v0, v20

    .line 380
    .line 381
    const/16 v3, 0xd

    .line 382
    .line 383
    const/16 v4, 0x3a

    .line 384
    .line 385
    aput-char v4, v0, v3

    .line 386
    .line 387
    const/16 v3, 0xe

    .line 388
    int-to-char v5, v8

    .line 389
    .line 390
    aput-char v5, v0, v3

    .line 391
    .line 392
    const/16 v3, 0xf

    .line 393
    int-to-char v5, v14

    .line 394
    .line 395
    aput-char v5, v0, v3

    .line 396
    .line 397
    const/16 v3, 0x10

    .line 398
    .line 399
    aput-char v4, v0, v3

    .line 400
    .line 401
    const/16 v3, 0x11

    .line 402
    int-to-char v5, v12

    .line 403
    .line 404
    aput-char v5, v0, v3

    .line 405
    .line 406
    const/16 v3, 0x12

    .line 407
    int-to-char v2, v2

    .line 408
    .line 409
    aput-char v2, v0, v3

    .line 410
    .line 411
    if-lez v22, :cond_d

    .line 412
    .line 413
    const/16 v2, 0x13

    .line 414
    .line 415
    const/16 v3, 0x2e

    .line 416
    .line 417
    aput-char v3, v0, v2

    .line 418
    .line 419
    const/16 v2, 0x14

    .line 420
    move v3, v2

    .line 421
    .line 422
    :goto_4
    if-ge v3, v9, :cond_9

    .line 423
    .line 424
    aput-char v19, v0, v3

    .line 425
    .line 426
    add-int/lit8 v3, v3, 0x1

    .line 427
    goto :goto_4

    .line 428
    .line 429
    :cond_9
    move/from16 v3, v17

    .line 430
    .line 431
    move/from16 v5, v21

    .line 432
    .line 433
    if-ge v3, v5, :cond_a

    .line 434
    .line 435
    const/16 v2, 0x16

    .line 436
    .line 437
    .line 438
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 439
    goto :goto_5

    .line 440
    .line 441
    :cond_a
    rem-int/lit8 v5, v3, 0x64

    .line 442
    .line 443
    if-nez v5, :cond_b

    .line 444
    .line 445
    div-int/lit8 v3, v3, 0x64

    .line 446
    .line 447
    .line 448
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 449
    goto :goto_5

    .line 450
    .line 451
    :cond_b
    rem-int/lit8 v5, v3, 0xa

    .line 452
    .line 453
    if-nez v5, :cond_c

    .line 454
    .line 455
    const/16 v21, 0xa

    .line 456
    .line 457
    div-int/lit8 v3, v3, 0xa

    .line 458
    .line 459
    .line 460
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 461
    goto :goto_5

    .line 462
    .line 463
    .line 464
    :cond_c
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 465
    .line 466
    :cond_d
    :goto_5
    if-eqz p2, :cond_13

    .line 467
    .line 468
    move/from16 v2, v23

    .line 469
    .line 470
    div-int/lit16 v3, v2, 0xe10

    .line 471
    .line 472
    if-nez v2, :cond_e

    .line 473
    .line 474
    const/16 v1, 0x5a

    .line 475
    .line 476
    aput-char v1, v0, v24

    .line 477
    goto :goto_9

    .line 478
    .line 479
    .line 480
    :cond_e
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 481
    move-result v5

    .line 482
    .line 483
    if-ltz v3, :cond_f

    .line 484
    .line 485
    const/16 v1, 0x2b

    .line 486
    .line 487
    aput-char v1, v0, v24

    .line 488
    .line 489
    :goto_6
    const/16 v1, 0xa

    .line 490
    goto :goto_7

    .line 491
    .line 492
    :cond_f
    aput-char v1, v0, v24

    .line 493
    goto :goto_6

    .line 494
    .line 495
    :goto_7
    if-ge v5, v1, :cond_10

    .line 496
    .line 497
    add-int/lit8 v1, v22, 0x14

    .line 498
    .line 499
    aput-char v19, v0, v1

    .line 500
    .line 501
    add-int/lit8 v1, v22, 0x15

    .line 502
    .line 503
    add-int/lit8 v5, v5, 0x30

    .line 504
    int-to-char v5, v5

    .line 505
    .line 506
    aput-char v5, v0, v1

    .line 507
    goto :goto_8

    .line 508
    .line 509
    :cond_10
    add-int/lit8 v1, v22, 0x14

    .line 510
    .line 511
    div-int/lit8 v6, v5, 0xa

    .line 512
    .line 513
    add-int/lit8 v6, v6, 0x30

    .line 514
    int-to-char v6, v6

    .line 515
    .line 516
    aput-char v6, v0, v1

    .line 517
    .line 518
    add-int/lit8 v1, v22, 0x15

    .line 519
    .line 520
    const/16 v21, 0xa

    .line 521
    .line 522
    rem-int/lit8 v5, v5, 0xa

    .line 523
    .line 524
    add-int/lit8 v5, v5, 0x30

    .line 525
    int-to-char v5, v5

    .line 526
    .line 527
    aput-char v5, v0, v1

    .line 528
    .line 529
    :goto_8
    add-int/lit8 v1, v22, 0x16

    .line 530
    .line 531
    aput-char v4, v0, v1

    .line 532
    .line 533
    mul-int/lit16 v3, v3, 0xe10

    .line 534
    sub-int/2addr v2, v3

    .line 535
    .line 536
    div-int/lit8 v2, v2, 0x3c

    .line 537
    .line 538
    if-gez v2, :cond_11

    .line 539
    neg-int v2, v2

    .line 540
    .line 541
    :cond_11
    const/16 v1, 0xa

    .line 542
    .line 543
    if-ge v2, v1, :cond_12

    .line 544
    .line 545
    add-int/lit8 v4, v22, 0x17

    .line 546
    .line 547
    aput-char v19, v0, v4

    .line 548
    .line 549
    add-int/lit8 v4, v22, 0x18

    .line 550
    .line 551
    add-int/lit8 v2, v2, 0x30

    .line 552
    int-to-char v1, v2

    .line 553
    .line 554
    aput-char v1, v0, v4

    .line 555
    goto :goto_9

    .line 556
    .line 557
    :cond_12
    add-int/lit8 v4, v22, 0x17

    .line 558
    .line 559
    div-int/lit8 v1, v2, 0xa

    .line 560
    .line 561
    add-int/lit8 v1, v1, 0x30

    .line 562
    int-to-char v1, v1

    .line 563
    .line 564
    aput-char v1, v0, v4

    .line 565
    .line 566
    add-int/lit8 v4, v22, 0x18

    .line 567
    .line 568
    const/16 v21, 0xa

    .line 569
    .line 570
    rem-int/lit8 v2, v2, 0xa

    .line 571
    .line 572
    add-int/lit8 v2, v2, 0x30

    .line 573
    int-to-char v1, v2

    .line 574
    .line 575
    aput-char v1, v0, v4

    .line 576
    .line 577
    :cond_13
    :goto_9
    new-instance v1, Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 581
    return-object v1

    .line 582
    .line 583
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 584
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .line 590
    const-string v2, "Invalid secondOfDay "

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    move-result-object v1

    .line 601
    .line 602
    .line 603
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 604
    throw v0

    .line 605
    .line 606
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 607
    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .line 613
    const-string v2, "Invalid year "

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    move-result-object v1

    .line 624
    .line 625
    .line 626
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 627
    throw v0
.end method

.method public static utcSeconds(IIIIII)J
    .locals 3

    .line 1
    .line 2
    mul-int/lit16 v0, p0, 0x16d

    .line 3
    .line 4
    add-int/lit8 v1, p0, 0x3

    .line 5
    .line 6
    div-int/lit8 v1, v1, 0x4

    .line 7
    .line 8
    add-int/lit8 v2, p0, 0x63

    .line 9
    .line 10
    div-int/lit8 v2, v2, 0x64

    .line 11
    sub-int/2addr v1, v2

    .line 12
    .line 13
    add-int/lit16 v2, p0, 0x18f

    .line 14
    .line 15
    div-int/lit16 v2, v2, 0x190

    .line 16
    add-int/2addr v1, v2

    .line 17
    add-int/2addr v0, v1

    .line 18
    .line 19
    mul-int/lit16 v1, p1, 0x16f

    .line 20
    .line 21
    add-int/lit16 v1, v1, -0x16a

    .line 22
    .line 23
    div-int/lit8 v1, v1, 0xc

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    add-int/lit8 p2, p2, -0x1

    .line 27
    add-int/2addr v0, p2

    .line 28
    int-to-long v0, v0

    .line 29
    const/4 p2, 0x2

    .line 30
    .line 31
    if-le p1, p2, :cond_2

    .line 32
    .line 33
    const-wide/16 p1, 0x1

    .line 34
    .line 35
    sub-long p1, v0, p1

    .line 36
    .line 37
    and-int/lit8 v2, p0, 0x3

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    rem-int/lit8 v2, p0, 0x64

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    rem-int/lit16 p0, p0, 0x190

    .line 46
    .line 47
    if-nez p0, :cond_1

    .line 48
    :cond_0
    move-wide v0, p1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    const-wide/16 p0, 0x2

    .line 52
    sub-long/2addr v0, p0

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    const-wide/32 p0, 0xafaa8

    .line 56
    sub-long/2addr v0, p0

    .line 57
    .line 58
    .line 59
    const-wide/32 p0, 0x15180

    .line 60
    mul-long/2addr v0, p0

    .line 61
    .line 62
    mul-int/lit16 p3, p3, 0xe10

    .line 63
    int-to-long p0, p3

    .line 64
    add-long/2addr v0, p0

    .line 65
    .line 66
    mul-int/lit8 p4, p4, 0x3c

    .line 67
    int-to-long p0, p4

    .line 68
    add-long/2addr v0, p0

    .line 69
    int-to-long p0, p5

    .line 70
    add-long/2addr v0, p0

    .line 71
    return-wide v0
.end method
