.class public final Lcom/alibaba/fastjson2/time/LocalTime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HOURS:[Lcom/alibaba/fastjson2/time/LocalTime;

.field public static final MIDNIGHT:Lcom/alibaba/fastjson2/time/LocalTime;

.field public static final MIN:Lcom/alibaba/fastjson2/time/LocalTime;


# instance fields
.field public final hour:B

.field public final minute:B

.field public final nano:I

.field public final second:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x18

    .line 3
    .line 4
    new-array v0, v0, [Lcom/alibaba/fastjson2/time/LocalTime;

    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->HOURS:[Lcom/alibaba/fastjson2/time/LocalTime;

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    .line 10
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->HOURS:[Lcom/alibaba/fastjson2/time/LocalTime;

    .line 11
    array-length v3, v2

    .line 12
    .line 13
    if-ge v1, v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Lcom/alibaba/fastjson2/time/LocalTime;

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v1, v0, v0, v0}, Lcom/alibaba/fastjson2/time/LocalTime;-><init>(IIII)V

    .line 19
    .line 20
    aput-object v3, v2, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    aget-object v0, v2, v0

    .line 26
    .line 27
    sput-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->MIDNIGHT:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 28
    .line 29
    sput-object v0, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 30
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    int-to-byte p1, p1

    .line 5
    .line 6
    iput-byte p1, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 7
    int-to-byte p1, p2

    .line 8
    .line 9
    iput-byte p1, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 10
    int-to-byte p1, p3

    .line 11
    .line 12
    iput-byte p1, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 13
    .line 14
    iput p4, p0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 15
    return-void
.end method

.method private static create(IIII)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 1

    .line 1
    .line 2
    or-int v0, p1, p2

    .line 3
    or-int/2addr v0, p3

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/alibaba/fastjson2/time/LocalTime;->HOURS:[Lcom/alibaba/fastjson2/time/LocalTime;

    .line 8
    .line 9
    aget-object p0, p1, p0

    .line 10
    return-object p0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/time/LocalTime;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/time/LocalTime;-><init>(IIII)V

    .line 16
    return-object v0
.end method

.method public static of(III)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/time/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alibaba/fastjson2/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(IIII)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/time/LocalTime;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static ofNanoOfDay(J)Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->checkSecondOfDay(J)V

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v0, 0x34630b8a000L

    .line 9
    .line 10
    div-long v2, p0, v0

    .line 11
    long-to-int v2, v2

    .line 12
    int-to-long v3, v2

    .line 13
    mul-long/2addr v3, v0

    .line 14
    sub-long/2addr p0, v3

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v0, 0xdf8475800L

    .line 20
    .line 21
    div-long v3, p0, v0

    .line 22
    long-to-int v3, v3

    .line 23
    int-to-long v4, v3

    .line 24
    mul-long/2addr v4, v0

    .line 25
    sub-long/2addr p0, v4

    .line 26
    .line 27
    .line 28
    const-wide/32 v0, 0x3b9aca00

    .line 29
    .line 30
    div-long v4, p0, v0

    .line 31
    long-to-int v4, v4

    .line 32
    int-to-long v5, v4

    .line 33
    mul-long/2addr v5, v0

    .line 34
    sub-long/2addr p0, v5

    .line 35
    long-to-int p0, p0

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3, v4, p0}, Lcom/alibaba/fastjson2/time/LocalTime;->create(IIII)Lcom/alibaba/fastjson2/time/LocalTime;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
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
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const-class v2, Lcom/alibaba/fastjson2/time/LocalTime;

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
    check-cast p1, Lcom/alibaba/fastjson2/time/LocalTime;

    .line 19
    .line 20
    iget-byte v2, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 21
    .line 22
    iget-byte v3, p1, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget-byte v2, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 27
    .line 28
    iget-byte v3, p1, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget-byte v2, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 33
    .line 34
    iget-byte v3, p1, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    iget v2, p0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 39
    .line 40
    iget p1, p1, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 41
    .line 42
    if-ne v2, p1, :cond_2

    .line 43
    return v0

    .line 44
    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-byte v1, p0, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-byte v2, p0, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iget v3, p0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x4

    .line 26
    .line 27
    new-array v4, v4, [Ljava/lang/Object;

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    aput-object v0, v4, v5

    .line 31
    const/4 v0, 0x1

    .line 32
    .line 33
    aput-object v1, v4, v0

    .line 34
    const/4 v0, 0x2

    .line 35
    .line 36
    aput-object v2, v4, v0

    .line 37
    const/4 v0, 0x3

    .line 38
    .line 39
    aput-object v3, v4, v0

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 43
    move-result v0

    .line 44
    return v0
.end method
