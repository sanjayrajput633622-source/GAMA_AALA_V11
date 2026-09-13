.class public final Lcom/google/zxing/j;
.super Lcom/google/zxing/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(II[I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/zxing/j;->k(II[I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/d;-><init>(II[B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static k(II[I)[B
    .locals 4

    .line 1
    mul-int/2addr p0, p1

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    array-length p1, p2

    .line 5
    if-lt p1, p0, :cond_1

    .line 6
    .line 7
    new-array p1, p0, [B

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p0, :cond_0

    .line 11
    .line 12
    aget v1, p2, v0

    .line 13
    .line 14
    shr-int/lit8 v2, v1, 0x10

    .line 15
    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 17
    .line 18
    shr-int/lit8 v3, v1, 0x7

    .line 19
    .line 20
    and-int/lit16 v3, v3, 0x1fe

    .line 21
    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 23
    .line 24
    add-int/2addr v2, v3

    .line 25
    add-int/2addr v2, v1

    .line 26
    div-int/lit8 v2, v2, 0x4

    .line 27
    .line 28
    int-to-byte v1, v2

    .line 29
    aput-byte v1, p1, v0

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object p1

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "Pixel array length is less than width * height"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method
