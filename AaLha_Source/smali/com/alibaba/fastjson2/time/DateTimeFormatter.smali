.class public final Lcom/alibaba/fastjson2/time/DateTimeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;
    }
.end annotation


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final pattern:Ljava/lang/String;

.field private final type:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;Lcom/alibaba/fastjson2/time/ZoneId;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Lcom/alibaba/fastjson2/time/ZoneId;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, -0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "HHmmss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p3, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string p2, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p3, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string p2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p3, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string p2, "d-M-yyyy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 p3, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string p2, "yyyyMMddHHmm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 p3, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string p2, "dd.MM.yyyy HH:mm:ss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 p3, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string p2, "yyyyMMddHHmmss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 p3, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string p2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 p3, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string p2, "yyyy/MM/dd HH:mm:ss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 p3, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string p2, "yyyy-MM-d"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 p3, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string p2, "yyyy-M-dd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 p3, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string p2, "yyyy/MM/dd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 p3, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string p2, "yyyy-MM-dd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 p3, 0x7

    goto :goto_0

    :sswitch_d
    const-string p2, "yyyyMMdd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 p3, 0x6

    goto :goto_0

    :sswitch_e
    const-string p2, "yyyy/M/d"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 p3, 0x5

    goto :goto_0

    :sswitch_f
    const-string p2, "yyyy-M-d"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 p3, 0x4

    goto :goto_0

    :sswitch_10
    const-string p2, "yyyy-MMM-dd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 p3, 0x3

    goto :goto_0

    :sswitch_11
    const-string p2, "yyyy-MM-dd HH:mm:ss.SSSSSSSSS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 p3, 0x2

    goto :goto_0

    :sswitch_12
    const-string p2, "d.M.yyyy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 p3, 0x1

    goto :goto_0

    :sswitch_13
    const-string p2, "HH:mm:ss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 p3, 0x0

    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 6
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->OTHER:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 7
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P6:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 8
    :pswitch_1
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P19_2:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 9
    :pswitch_2
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_3:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P12:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 11
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P19_3:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 12
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P14:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 13
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P19:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 14
    :pswitch_7
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P19_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 15
    :pswitch_8
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P9_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 16
    :pswitch_9
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P9:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 17
    :pswitch_a
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P10_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 18
    :pswitch_b
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P10:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 19
    :pswitch_c
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 20
    :pswitch_d
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_5:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 21
    :pswitch_e
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_1:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 22
    :pswitch_f
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P11:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 23
    :pswitch_10
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P29:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 24
    :pswitch_11
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_4:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    goto :goto_1

    .line 25
    :pswitch_12
    sget-object p1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;->P8_2:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 26
    :goto_1
    iput-object p1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->type:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    return-void

    .line 27
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pattern is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ebf2c80 -> :sswitch_13
        -0x64859bf5 -> :sswitch_12
        -0x526eabfb -> :sswitch_11
        -0x272c0433 -> :sswitch_10
        -0x1086ae29 -> :sswitch_f
        -0x1085c52d -> :sswitch_e
        -0x10781ba0 -> :sswitch_d
        -0x985fe00 -> :sswitch_c
        -0x61c4540 -> :sswitch_b
        -0x4f1693 -> :sswitch_a
        -0x4ea51c -> :sswitch_9
        0x129110e0 -> :sswitch_8
        0x4f76f1a0 -> :sswitch_7
        0x5069d960 -> :sswitch_6
        0x534c3940 -> :sswitch_5
        0x66608b00 -> :sswitch_4
        0x66861149 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7f06bd00 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

.method private getFormat(Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 22
    .line 23
    :goto_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 27
    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;Lcom/alibaba/fastjson2/time/ZoneId;)V

    return-object v0
.end method


# virtual methods
.method public format(Lcom/alibaba/fastjson2/time/LocalDate;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$1;->$SwitchMap$com$alibaba$fastjson2$time$DateTimeFormatter$PatternType:[I

    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->type:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMDHMS19(Lcom/alibaba/fastjson2/time/LocalDate;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD10(Lcom/alibaba/fastjson2/time/LocalDate;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    iget v0, p1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    iget-short v1, p1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    iget-short p1, p1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD9(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    iget v0, p1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    iget-short v1, p1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    iget-short p1, p1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD8(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/alibaba/fastjson2/time/LocalDateTime;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(Lcom/alibaba/fastjson2/time/ZonedDateTime;)Ljava/lang/String;
    .locals 3

    .line 8
    sget-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$1;->$SwitchMap$com$alibaba$fastjson2$time$DateTimeFormatter$PatternType:[I

    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->type:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 9
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    sget-object p1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->getFormat(Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMDHMS29(Lcom/alibaba/fastjson2/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_1
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatHMS8(Lcom/alibaba/fastjson2/time/LocalTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatHMS6(Lcom/alibaba/fastjson2/time/LocalTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_3
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMDHMS19(Lcom/alibaba/fastjson2/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_4
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD10(Lcom/alibaba/fastjson2/time/LocalDate;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    iget-object p1, p1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v0, p1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    iget-short v1, p1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    iget-short p1, p1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD9(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 18
    sget-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$1;->$SwitchMap$com$alibaba$fastjson2$time$DateTimeFormatter$PatternType:[I

    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->type:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMDHMS19(Ljava/util/Date;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD10(JLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseDate(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->getFormat(Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/text/SimpleDateFormat;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    .line 12
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v1, "parse error, format "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    throw p2
.end method

.method public parseLocalDate(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$1;->$SwitchMap$com$alibaba$fastjson2$time$DateTimeFormatter$PatternType:[I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->type:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    .line 14
    aget v0, v0, v1

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    const/16 v3, 0x9

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    const/4 v1, 0x2

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    const/4 v1, 0x3

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    .line 31
    packed-switch v0, :pswitch_data_0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    :pswitch_0
    invoke-static {p1, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    :pswitch_1
    array-length v0, p1

    .line 39
    .line 40
    if-ne v0, v3, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    array-length v0, p1

    .line 47
    .line 48
    if-ne v0, v2, :cond_6

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_3
    :pswitch_2
    array-length v0, p1

    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-ne v0, v1, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_4
    array-length v0, p1

    .line 65
    .line 66
    if-ne v0, v3, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_5
    array-length v0, p1

    .line 73
    .line 74
    if-ne v0, v2, :cond_6

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    .line 81
    :cond_6
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string v1, "TODO : "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p1

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseLocalDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/time/DateTimeFormatter$1;->$SwitchMap$com$alibaba$fastjson2$time$DateTimeFormatter$PatternType:[I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->type:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v2

    .line 13
    .line 14
    aget v1, v1, v2

    .line 15
    const/4 v2, 0x4

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :pswitch_1
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    :pswitch_2
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([BI)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    :goto_0
    if-nez v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->getFormat(Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/text/SimpleDateFormat;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/Instant;->of(Ljava/util/Date;)Lcom/alibaba/fastjson2/time/Instant;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iget-object p1, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p1

    .line 63
    .line 64
    :catch_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    const-string v2, "parse error, format "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, ", input "

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0

    .line 96
    :cond_1
    return-object v0

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public parseLocalTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/time/DateTimeFormatter$1;->$SwitchMap$com$alibaba$fastjson2$time$DateTimeFormatter$PatternType:[I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->type:Lcom/alibaba/fastjson2/time/DateTimeFormatter$PatternType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    const/4 v1, 0x5

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    const/4 v1, 0x6

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v1, "TODO "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {p1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime6(Ljava/lang/String;I)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public parseZonedDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->getFormat(Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/text/SimpleDateFormat;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/Instant;->of(Ljava/util/Date;)Lcom/alibaba/fastjson2/time/Instant;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p1

    .line 22
    .line 23
    :catch_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "parse error, format "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->pattern:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, ", input "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0
.end method
