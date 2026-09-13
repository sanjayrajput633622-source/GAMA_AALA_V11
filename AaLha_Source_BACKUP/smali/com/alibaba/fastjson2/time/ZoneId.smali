.class public final Lcom/alibaba/fastjson2/time/ZoneId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT_TIME_ZONE:Ljava/util/TimeZone; = null

.field public static DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId; = null

.field public static final OFFSET_8_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

.field public static final OFFSET_8_ZONE_ID_NAME:Ljava/lang/String; = "+08:00"

.field public static final SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

.field public static final SHANGHAI_ZONE_ID_NAME:Ljava/lang/String; = "Asia/Shanghai"

.field public static UTC:Lcom/alibaba/fastjson2/time/ZoneId;


# instance fields
.field public final id:Ljava/lang/String;

.field public final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "+08:00"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->OFFSET_8_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_TIME_ZONE:Ljava/util/TimeZone;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/util/TimeZone;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "Asia/Shanghai"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/time/ZoneId;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/time/ZoneId;-><init>(Ljava/util/TimeZone;)V

    .line 43
    .line 44
    :goto_0
    sput-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 45
    .line 46
    const-string v0, "Z"

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    sput-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZoneId;
    .locals 2

    .line 2
    const-string v0, "Asia/Shanghai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 6
    const-string p0, "UTC"

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_3
    :goto_1
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/util/TimeZone;)Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/TimeZone;)Lcom/alibaba/fastjson2/time/ZoneId;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/time/ZoneId;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static systemDefault()Lcom/alibaba/fastjson2/time/ZoneId;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 3
    return-object v0
.end method


# virtual methods
.method public getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I
    .locals 5

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    if-eq p0, v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    iget-wide v1, p1, Lcom/alibaba/fastjson2/time/Instant;->epochSecond:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    return p1

    .line 3
    :cond_1
    :goto_0
    iget-wide v0, p1, Lcom/alibaba/fastjson2/time/Instant;->epochSecond:J

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result p1

    return p1
.end method

.method public getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/LocalDateTime;)I
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/time/ZoneId;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    iget v2, v1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    iget-short v3, v1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    add-int/lit8 v3, v3, -0x1

    iget-short v4, v1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    iget-object p1, p1, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    iget-byte p1, p1, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    mul-int/lit16 v6, p1, 0x2710

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    .line 5
    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method
