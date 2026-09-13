.class public final Lcom/alibaba/fastjson2/time/Instant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EPOCH:Lcom/alibaba/fastjson2/time/Instant;


# instance fields
.field public final epochSecond:J

.field public final nanos:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/time/Instant;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/Instant;-><init>(JI)V

    .line 9
    .line 10
    sput-object v0, Lcom/alibaba/fastjson2/time/Instant;->EPOCH:Lcom/alibaba/fastjson2/time/Instant;

    .line 11
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/alibaba/fastjson2/time/Instant;->epochSecond:J

    .line 6
    .line 7
    iput p3, p0, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 8
    return-void
.end method

.method private static create(JI)Lcom/alibaba/fastjson2/time/Instant;
    .locals 4

    .line 1
    int-to-long v0, p2

    .line 2
    or-long/2addr v0, p0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/alibaba/fastjson2/time/Instant;->EPOCH:Lcom/alibaba/fastjson2/time/Instant;

    .line 11
    return-object p0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    .line 17
    .line 18
    cmp-long v0, p0, v0

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide v0, 0x701cd2fa9578ffL

    .line 26
    .line 27
    cmp-long v0, p0, v0

    .line 28
    .line 29
    if-gtz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lcom/alibaba/fastjson2/time/Instant;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/time/Instant;-><init>(JI)V

    .line 35
    return-object v0

    .line 36
    .line 37
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 38
    .line 39
    const-string p1, "Instant exceeds minimum or maximum instant"

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
.end method

.method public static of(Ljava/sql/Timestamp;)Lcom/alibaba/fastjson2/time/Instant;
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 3
    div-long/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/Date;)Lcom/alibaba/fastjson2/time/Instant;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 6
    move-result-wide v2

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    .line 10
    move-result-wide p0

    .line 11
    long-to-int p0, p0

    .line 12
    .line 13
    .line 14
    const p1, 0xf4240

    .line 15
    mul-int/2addr p0, p1

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3, p0}, Lcom/alibaba/fastjson2/time/Instant;->create(JI)Lcom/alibaba/fastjson2/time/Instant;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;
    .locals 4

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x3b9aca00

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 7
    move-result-wide v2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->addExact(JJ)J

    .line 11
    move-result-wide p0

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p3, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    .line 15
    move-result-wide p2

    .line 16
    long-to-int p2, p2

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/time/Instant;->create(JI)Lcom/alibaba/fastjson2/time/Instant;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public toDate()Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/Instant;->toEpochMilli()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    return-object v0
.end method

.method public toEpochMilli()J
    .locals 8

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/time/Instant;->epochSecond:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    .line 9
    const v3, 0xf4240

    .line 10
    .line 11
    const-wide/16 v4, 0x3e8

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    iget v2, p0, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 16
    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    const-wide/16 v6, 0x1

    .line 20
    add-long/2addr v0, v6

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->multiplyExact(JJ)J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    iget v2, p0, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 27
    div-int/2addr v2, v3

    .line 28
    .line 29
    add-int/lit16 v2, v2, -0x3e8

    .line 30
    int-to-long v2, v2

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->addExact(JJ)J

    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {v0, v1, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->multiplyExact(JJ)J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    iget v2, p0, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 42
    div-int/2addr v2, v3

    .line 43
    int-to-long v2, v2

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->addExact(JJ)J

    .line 47
    move-result-wide v0

    .line 48
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Instant("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Lcom/alibaba/fastjson2/time/Instant;->epochSecond:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ")"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public toTimestamp()Ljava/sql/Timestamp;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/sql/Timestamp;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/time/Instant;->toEpochMilli()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 10
    .line 11
    iget v1, p0, Lcom/alibaba/fastjson2/time/Instant;->nanos:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 15
    return-object v0
.end method
