.class public Lcom/google/zxing/d;
.super Lcom/google/zxing/f;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/f;-><init>(II)V

    .line 2
    iput-object p3, p0, Lcom/google/zxing/d;->c:[B

    .line 3
    iput p1, p0, Lcom/google/zxing/d;->d:I

    .line 4
    iput p2, p0, Lcom/google/zxing/d;->e:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/zxing/d;->f:I

    .line 6
    iput p1, p0, Lcom/google/zxing/d;->g:I

    return-void
.end method

.method public constructor <init>([BIIIIII)V
    .locals 0

    .line 7
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/f;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    .line 8
    iput-object p1, p0, Lcom/google/zxing/d;->c:[B

    .line 9
    iput p2, p0, Lcom/google/zxing/d;->d:I

    .line 10
    iput p3, p0, Lcom/google/zxing/d;->e:I

    .line 11
    iput p4, p0, Lcom/google/zxing/d;->f:I

    .line 12
    iput p5, p0, Lcom/google/zxing/d;->g:I

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(IIII)Lcom/google/zxing/f;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/zxing/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/d;->c:[B

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/d;->d:I

    .line 6
    .line 7
    iget v3, p0, Lcom/google/zxing/d;->e:I

    .line 8
    .line 9
    iget v4, p0, Lcom/google/zxing/d;->f:I

    .line 10
    .line 11
    add-int/2addr v4, p1

    .line 12
    iget p1, p0, Lcom/google/zxing/d;->g:I

    .line 13
    .line 14
    add-int v5, p1, p2

    .line 15
    .line 16
    move v6, p3

    .line 17
    move v7, p4

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/d;-><init>([BIIIIII)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public c()[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/f;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/f;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/google/zxing/d;->d:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget v3, p0, Lcom/google/zxing/d;->e:I

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/zxing/d;->c:[B

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    mul-int v3, v0, v1

    .line 21
    .line 22
    new-array v4, v3, [B

    .line 23
    .line 24
    iget v5, p0, Lcom/google/zxing/d;->g:I

    .line 25
    .line 26
    mul-int/2addr v5, v2

    .line 27
    iget v6, p0, Lcom/google/zxing/d;->f:I

    .line 28
    .line 29
    add-int/2addr v5, v6

    .line 30
    const/4 v6, 0x0

    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/zxing/d;->c:[B

    .line 34
    .line 35
    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    return-object v4

    .line 39
    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    .line 40
    .line 41
    mul-int v2, v6, v0

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/zxing/d;->c:[B

    .line 44
    .line 45
    invoke-static {v3, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    iget v2, p0, Lcom/google/zxing/d;->d:I

    .line 49
    .line 50
    add-int/2addr v5, v2

    .line 51
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-object v4
.end method

.method public d(I[B)[B
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/f;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/zxing/f;->e()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    array-length v1, p2

    .line 16
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    :cond_0
    new-array p2, v0, [B

    .line 19
    .line 20
    :cond_1
    iget v1, p0, Lcom/google/zxing/d;->g:I

    .line 21
    .line 22
    add-int/2addr p1, v1

    .line 23
    iget v1, p0, Lcom/google/zxing/d;->d:I

    .line 24
    .line 25
    mul-int/2addr p1, v1

    .line 26
    iget v1, p0, Lcom/google/zxing/d;->f:I

    .line 27
    .line 28
    add-int/2addr p1, v1

    .line 29
    iget-object v1, p0, Lcom/google/zxing/d;->c:[B

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "Requested row is outside the image: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method public g()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public i()Lcom/google/zxing/f;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/zxing/d;->c:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v2, v0, [B

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget v3, p0, Lcom/google/zxing/d;->e:I

    .line 9
    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    move v3, v0

    .line 13
    :goto_1
    iget v4, p0, Lcom/google/zxing/d;->d:I

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    mul-int v5, v1, v4

    .line 18
    .line 19
    add-int/2addr v5, v3

    .line 20
    add-int/lit8 v4, v4, -0x1

    .line 21
    .line 22
    sub-int/2addr v4, v3

    .line 23
    iget v6, p0, Lcom/google/zxing/d;->e:I

    .line 24
    .line 25
    mul-int/2addr v4, v6

    .line 26
    add-int/2addr v4, v1

    .line 27
    iget-object v6, p0, Lcom/google/zxing/d;->c:[B

    .line 28
    .line 29
    aget-byte v5, v6, v5

    .line 30
    .line 31
    aput-byte v5, v2, v4

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/f;->b()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {p0}, Lcom/google/zxing/f;->e()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    iget v5, p0, Lcom/google/zxing/d;->g:I

    .line 48
    .line 49
    iget v0, p0, Lcom/google/zxing/d;->d:I

    .line 50
    .line 51
    iget v1, p0, Lcom/google/zxing/d;->f:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/f;->e()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    add-int/2addr v1, v3

    .line 58
    sub-int v6, v0, v1

    .line 59
    .line 60
    new-instance v1, Lcom/google/zxing/d;

    .line 61
    .line 62
    iget v3, p0, Lcom/google/zxing/d;->e:I

    .line 63
    .line 64
    iget v4, p0, Lcom/google/zxing/d;->d:I

    .line 65
    .line 66
    invoke-direct/range {v1 .. v8}, Lcom/google/zxing/d;-><init>([BIIIIII)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method
