.class public Landroidx/constraintlayout/core/motion/utils/HyperSpline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field mCtl:[[D

.field mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

.field mCurveLength:[D

.field mDimensionality:I

.field mPoints:I

.field mTotalLength:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->setup([[D)V

    return-void
.end method

.method public static calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    .locals 23

    .line 1
    .line 2
    move/from16 v0, p0

    .line 3
    .line 4
    new-array v1, v0, [D

    .line 5
    .line 6
    new-array v2, v0, [D

    .line 7
    .line 8
    new-array v3, v0, [D

    .line 9
    .line 10
    add-int/lit8 v4, v0, -0x1

    .line 11
    .line 12
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 13
    const/4 v7, 0x0

    .line 14
    .line 15
    aput-wide v5, v1, v7

    .line 16
    const/4 v5, 0x1

    .line 17
    move v6, v5

    .line 18
    .line 19
    :goto_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    if-ge v6, v4, :cond_0

    .line 22
    .line 23
    add-int/lit8 v10, v6, -0x1

    .line 24
    .line 25
    aget-wide v10, v1, v10

    .line 26
    .line 27
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    .line 28
    sub-double/2addr v12, v10

    .line 29
    div-double/2addr v8, v12

    .line 30
    .line 31
    aput-wide v8, v1, v6

    .line 32
    .line 33
    add-int/lit8 v6, v6, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x2

    .line 37
    .line 38
    aget-wide v10, v1, v0

    .line 39
    .line 40
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 41
    .line 42
    sub-double v10, v12, v10

    .line 43
    div-double/2addr v8, v10

    .line 44
    .line 45
    aput-wide v8, v1, v4

    .line 46
    .line 47
    aget-wide v8, p1, v5

    .line 48
    .line 49
    aget-wide v10, p1, v7

    .line 50
    sub-double/2addr v8, v10

    .line 51
    .line 52
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 53
    mul-double/2addr v8, v10

    .line 54
    .line 55
    aget-wide v14, v1, v7

    .line 56
    mul-double/2addr v8, v14

    .line 57
    .line 58
    aput-wide v8, v2, v7

    .line 59
    .line 60
    :goto_1
    if-ge v5, v4, :cond_1

    .line 61
    .line 62
    add-int/lit8 v6, v5, 0x1

    .line 63
    .line 64
    aget-wide v8, p1, v6

    .line 65
    .line 66
    add-int/lit8 v14, v5, -0x1

    .line 67
    .line 68
    aget-wide v15, p1, v14

    .line 69
    sub-double/2addr v8, v15

    .line 70
    mul-double/2addr v8, v10

    .line 71
    .line 72
    aget-wide v14, v2, v14

    .line 73
    sub-double/2addr v8, v14

    .line 74
    .line 75
    aget-wide v14, v1, v5

    .line 76
    mul-double/2addr v8, v14

    .line 77
    .line 78
    aput-wide v8, v2, v5

    .line 79
    move v5, v6

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_1
    aget-wide v5, p1, v4

    .line 83
    .line 84
    aget-wide v8, p1, v0

    .line 85
    sub-double/2addr v5, v8

    .line 86
    mul-double/2addr v5, v10

    .line 87
    .line 88
    aget-wide v8, v2, v0

    .line 89
    sub-double/2addr v5, v8

    .line 90
    .line 91
    aget-wide v8, v1, v4

    .line 92
    mul-double/2addr v5, v8

    .line 93
    .line 94
    aput-wide v5, v2, v4

    .line 95
    .line 96
    aput-wide v5, v3, v4

    .line 97
    .line 98
    :goto_2
    if-ltz v0, :cond_2

    .line 99
    .line 100
    aget-wide v5, v2, v0

    .line 101
    .line 102
    aget-wide v8, v1, v0

    .line 103
    .line 104
    add-int/lit8 v14, v0, 0x1

    .line 105
    .line 106
    aget-wide v14, v3, v14

    .line 107
    mul-double/2addr v8, v14

    .line 108
    sub-double/2addr v5, v8

    .line 109
    .line 110
    aput-wide v5, v3, v0

    .line 111
    .line 112
    add-int/lit8 v0, v0, -0x1

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_2
    new-array v0, v4, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 116
    .line 117
    :goto_3
    if-ge v7, v4, :cond_3

    .line 118
    .line 119
    new-instance v14, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 120
    .line 121
    aget-wide v1, p1, v7

    .line 122
    double-to-float v5, v1

    .line 123
    float-to-double v5, v5

    .line 124
    .line 125
    aget-wide v17, v3, v7

    .line 126
    .line 127
    add-int/lit8 v8, v7, 0x1

    .line 128
    .line 129
    aget-wide v15, p1, v8

    .line 130
    .line 131
    sub-double v19, v15, v1

    .line 132
    .line 133
    mul-double v19, v19, v10

    .line 134
    .line 135
    mul-double v21, v17, v12

    .line 136
    .line 137
    sub-double v19, v19, v21

    .line 138
    .line 139
    aget-wide v21, v3, v8

    .line 140
    .line 141
    sub-double v19, v19, v21

    .line 142
    sub-double/2addr v1, v15

    .line 143
    mul-double/2addr v1, v12

    .line 144
    .line 145
    add-double v1, v1, v17

    .line 146
    .line 147
    add-double v21, v1, v21

    .line 148
    move-wide v15, v5

    .line 149
    .line 150
    .line 151
    invoke-direct/range {v14 .. v22}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    .line 152
    .line 153
    aput-object v14, v0, v7

    .line 154
    move v7, v8

    .line 155
    goto :goto_3

    .line 156
    :cond_3
    return-object v0
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    array-length v1, v0

    .line 4
    array-length v1, v0

    .line 5
    .line 6
    new-array v1, v1, [D

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    move-wide v4, v2

    .line 10
    move-wide v6, v4

    .line 11
    .line 12
    :goto_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    cmpg-double v10, v4, v8

    .line 15
    const/4 v11, 0x0

    .line 16
    .line 17
    if-gez v10, :cond_2

    .line 18
    move-wide v8, v2

    .line 19
    :goto_1
    array-length v10, v0

    .line 20
    .line 21
    if-ge v11, v10, :cond_0

    .line 22
    .line 23
    aget-wide v12, v1, v11

    .line 24
    .line 25
    aget-object v10, v0, v11

    .line 26
    .line 27
    .line 28
    invoke-virtual {v10, v4, v5}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    .line 29
    move-result-wide v14

    .line 30
    .line 31
    aput-wide v14, v1, v11

    .line 32
    sub-double/2addr v12, v14

    .line 33
    mul-double/2addr v12, v12

    .line 34
    add-double/2addr v8, v12

    .line 35
    .line 36
    add-int/lit8 v11, v11, 0x1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    cmpl-double v10, v4, v2

    .line 40
    .line 41
    if-lez v10, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 45
    move-result-wide v8

    .line 46
    add-double/2addr v6, v8

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :cond_1
    const-wide v8, 0x3fb999999999999aL    # 0.1

    .line 52
    add-double/2addr v4, v8

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_2
    array-length v4, v0

    .line 55
    .line 56
    if-ge v11, v4, :cond_3

    .line 57
    .line 58
    aget-wide v4, v1, v11

    .line 59
    .line 60
    aget-object v10, v0, v11

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10, v8, v9}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    .line 64
    move-result-wide v12

    .line 65
    .line 66
    aput-wide v12, v1, v11

    .line 67
    sub-double/2addr v4, v12

    .line 68
    mul-double/2addr v4, v4

    .line 69
    add-double/2addr v2, v4

    .line 70
    .line 71
    add-int/lit8 v11, v11, 0x1

    .line 72
    goto :goto_2

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 76
    move-result-wide v0

    .line 77
    add-double/2addr v6, v0

    .line 78
    return-wide v6
.end method

.method public getPos(DI)D
    .locals 5

    .line 9
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_0

    sub-double/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object p3, v2, p3

    aget-object p3, p3, v0

    aget-wide v0, v1, v0

    div-double/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getPos(D[D)V
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_0

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getPos(D[F)V
    .locals 6

    .line 5
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_0

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 8
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getVelocity(D[D)V
    .locals 6

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 3
    mul-double/2addr p1, v0

    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    .line 7
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 8
    array-length v3, v2

    .line 9
    .line 10
    add-int/lit8 v3, v3, -0x1

    .line 11
    .line 12
    if-ge v1, v3, :cond_0

    .line 13
    .line 14
    aget-wide v3, v2, v1

    .line 15
    .line 16
    cmpg-double v2, v3, p1

    .line 17
    .line 18
    if-gez v2, :cond_0

    .line 19
    sub-double/2addr p1, v3

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :goto_1
    array-length v2, p3

    .line 24
    .line 25
    if-ge v0, v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 28
    .line 29
    aget-object v2, v2, v0

    .line 30
    .line 31
    aget-object v2, v2, v1

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 34
    .line 35
    aget-wide v4, v3, v1

    .line 36
    .line 37
    div-double v3, p1, v4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->vel(D)D

    .line 41
    move-result-wide v2

    .line 42
    .line 43
    aput-wide v2, p3, v0

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method

.method public setup([[D)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget-object v1, p1, v0

    .line 4
    array-length v1, v1

    .line 5
    .line 6
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 7
    array-length v2, p1

    .line 8
    .line 9
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    .line 10
    const/4 v3, 0x2

    .line 11
    .line 12
    new-array v3, v3, [I

    .line 13
    const/4 v4, 0x1

    .line 14
    .line 15
    aput v2, v3, v4

    .line 16
    .line 17
    aput v1, v3, v0

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, [[D

    .line 26
    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    .line 28
    .line 29
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 30
    .line 31
    new-array v1, v1, [[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 32
    .line 33
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 34
    move v1, v0

    .line 35
    .line 36
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 37
    .line 38
    if-ge v1, v2, :cond_1

    .line 39
    move v2, v0

    .line 40
    .line 41
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    .line 42
    .line 43
    if-ge v2, v3, :cond_0

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    .line 46
    .line 47
    aget-object v3, v3, v1

    .line 48
    .line 49
    aget-object v5, p1, v2

    .line 50
    .line 51
    aget-wide v6, v5, v1

    .line 52
    .line 53
    aput-wide v6, v3, v2

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move p1, v0

    .line 61
    .line 62
    :goto_2
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 63
    .line 64
    if-ge p1, v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 67
    .line 68
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    .line 69
    .line 70
    aget-object v2, v2, p1

    .line 71
    array-length v3, v2

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    aput-object v2, v1, p1

    .line 78
    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_2
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    .line 83
    sub-int/2addr p1, v4

    .line 84
    .line 85
    new-array p1, p1, [D

    .line 86
    .line 87
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 88
    .line 89
    const-wide/16 v2, 0x0

    .line 90
    .line 91
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 92
    .line 93
    new-array p1, v1, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 94
    move v1, v0

    .line 95
    .line 96
    :goto_3
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 97
    array-length v2, v2

    .line 98
    .line 99
    if-ge v1, v2, :cond_4

    .line 100
    move v2, v0

    .line 101
    .line 102
    :goto_4
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 103
    .line 104
    if-ge v2, v3, :cond_3

    .line 105
    .line 106
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 107
    .line 108
    aget-object v3, v3, v2

    .line 109
    .line 110
    aget-object v3, v3, v1

    .line 111
    .line 112
    aput-object v3, p1, v2

    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_4

    .line 116
    .line 117
    :cond_3
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 118
    .line 119
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D

    .line 123
    move-result-wide v5

    .line 124
    .line 125
    aput-wide v5, v4, v1

    .line 126
    add-double/2addr v2, v5

    .line 127
    .line 128
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    return-void
.end method
