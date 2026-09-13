.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleOscillator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CycleOscillator"

.field static final UNSET:I = -0x1


# instance fields
.field private final OFFST:I

.field private final PHASE:I

.field private final VALUE:I

.field mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mOffset:[F

.field mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

.field mPathLength:F

.field mPeriod:[F

.field mPhase:[F

.field mPosition:[D

.field mScale:[F

.field mSplineSlopeCache:[D

.field mSplineValueCache:[D

.field mValues:[F

.field private final mVariesBy:I

.field mWaveShape:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Oscillator;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->OFFST:I

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->PHASE:I

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->VALUE:I

    .line 20
    .line 21
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mWaveShape:I

    .line 22
    .line 23
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mVariesBy:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->setType(ILjava/lang/String;)V

    .line 27
    .line 28
    new-array p1, p4, [F

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 31
    .line 32
    new-array p1, p4, [D

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 35
    .line 36
    new-array p1, p4, [F

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 39
    .line 40
    new-array p1, p4, [F

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 43
    .line 44
    new-array p1, p4, [F

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    .line 47
    .line 48
    new-array p1, p4, [F

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mScale:[F

    .line 51
    return-void
.end method


# virtual methods
.method public getLastPhase()D
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    aget-wide v1, v0, v1

    .line 6
    return-wide v1
.end method

.method public getSlope(F)D
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    float-to-double v4, p1

    .line 9
    .line 10
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 16
    .line 17
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    aput-wide v4, v0, v1

    .line 28
    .line 29
    aput-wide v4, v0, v3

    .line 30
    .line 31
    aput-wide v4, v0, v2

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 34
    float-to-double v5, p1

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 37
    .line 38
    aget-wide v7, p1, v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v5, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    .line 42
    move-result-wide v11

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 47
    .line 48
    aget-wide v7, p1, v3

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 51
    .line 52
    aget-wide v9, p1, v3

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getSlope(DDD)D

    .line 56
    move-result-wide v3

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 59
    .line 60
    aget-wide v0, p1, v1

    .line 61
    .line 62
    aget-wide v5, p1, v2

    .line 63
    mul-double/2addr v11, v5

    .line 64
    add-double/2addr v0, v11

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 67
    .line 68
    aget-wide v5, p1, v2

    .line 69
    mul-double/2addr v3, v5

    .line 70
    add-double/2addr v0, v3

    .line 71
    return-wide v0
.end method

.method public getValues(F)D
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    float-to-double v4, p1

    .line 9
    .line 10
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 19
    .line 20
    aget v4, v4, v3

    .line 21
    float-to-double v4, v4

    .line 22
    .line 23
    aput-wide v4, v0, v3

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    .line 26
    .line 27
    aget v4, v4, v3

    .line 28
    float-to-double v4, v4

    .line 29
    .line 30
    aput-wide v4, v0, v2

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 33
    .line 34
    aget v4, v4, v3

    .line 35
    float-to-double v4, v4

    .line 36
    .line 37
    aput-wide v4, v0, v1

    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 40
    .line 41
    aget-wide v3, v0, v3

    .line 42
    .line 43
    aget-wide v5, v0, v2

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 46
    float-to-double v7, p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v7, v8, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    .line 50
    move-result-wide v5

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 53
    .line 54
    aget-wide v0, p1, v1

    .line 55
    mul-double/2addr v5, v0

    .line 56
    add-double/2addr v3, v5

    .line 57
    return-wide v3
.end method

.method public setPoint(IIFFFF)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 3
    int-to-double v1, p2

    .line 4
    .line 5
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 6
    div-double/2addr v1, v3

    .line 7
    .line 8
    aput-wide v1, v0, p1

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 11
    .line 12
    aput p3, p2, p1

    .line 13
    .line 14
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 15
    .line 16
    aput p4, p2, p1

    .line 17
    .line 18
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    .line 19
    .line 20
    aput p5, p2, p1

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 23
    .line 24
    aput p6, p2, p1

    .line 25
    return-void
.end method

.method public setup(F)V
    .locals 9

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPathLength:F

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 5
    array-length p1, p1

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    new-array v1, v0, [I

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x3

    .line 11
    .line 12
    aput v3, v1, v2

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    aput p1, v1, v3

    .line 16
    .line 17
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, [[D

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 26
    array-length v4, v1

    .line 27
    add-int/2addr v4, v0

    .line 28
    .line 29
    new-array v4, v4, [D

    .line 30
    .line 31
    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 32
    array-length v1, v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    .line 35
    new-array v1, v1, [D

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 40
    .line 41
    aget-wide v4, v1, v3

    .line 42
    .line 43
    const-wide/16 v6, 0x0

    .line 44
    .line 45
    cmpl-double v1, v4, v6

    .line 46
    .line 47
    if-lez v1, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 50
    .line 51
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 52
    .line 53
    aget v4, v4, v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v6, v7, v4}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 57
    .line 58
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 59
    array-length v4, v1

    .line 60
    sub-int/2addr v4, v2

    .line 61
    .line 62
    aget-wide v5, v1, v4

    .line 63
    .line 64
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 65
    .line 66
    cmpg-double v1, v5, v7

    .line 67
    .line 68
    if-gez v1, :cond_1

    .line 69
    .line 70
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 73
    .line 74
    aget v4, v5, v4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v7, v8, v4}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 78
    :cond_1
    move v1, v3

    .line 79
    :goto_0
    array-length v4, p1

    .line 80
    .line 81
    if-ge v1, v4, :cond_2

    .line 82
    .line 83
    aget-object v4, p1, v1

    .line 84
    .line 85
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 86
    .line 87
    aget v5, v5, v1

    .line 88
    float-to-double v5, v5

    .line 89
    .line 90
    aput-wide v5, v4, v3

    .line 91
    .line 92
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    .line 93
    .line 94
    aget v5, v5, v1

    .line 95
    float-to-double v5, v5

    .line 96
    .line 97
    aput-wide v5, v4, v2

    .line 98
    .line 99
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 100
    .line 101
    aget v5, v5, v1

    .line 102
    float-to-double v5, v5

    .line 103
    .line 104
    aput-wide v5, v4, v0

    .line 105
    .line 106
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 107
    .line 108
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 109
    .line 110
    aget-wide v6, v5, v1

    .line 111
    .line 112
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 113
    .line 114
    aget v5, v5, v1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v6, v7, v5}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->normalize()V

    .line 126
    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 128
    array-length v1, v0

    .line 129
    .line 130
    if-le v1, v2, :cond_3

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v0, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 137
    return-void

    .line 138
    :cond_3
    const/4 p1, 0x0

    .line 139
    .line 140
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 141
    return-void
.end method
