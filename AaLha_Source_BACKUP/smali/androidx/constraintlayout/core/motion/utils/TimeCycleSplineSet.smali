.class public abstract Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;
    }
.end annotation


# static fields
.field protected static final CURVE_OFFSET:I = 0x2

.field protected static final CURVE_PERIOD:I = 0x1

.field protected static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field protected static VAL_2PI:F = 6.2831855f


# instance fields
.field protected count:I

.field protected last_cycle:F

.field protected last_time:J

.field protected mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field protected mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    new-array v2, v1, [I

    .line 11
    .line 12
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 13
    const/4 v2, 0x2

    .line 14
    .line 15
    new-array v2, v2, [I

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x3

    .line 18
    .line 19
    aput v4, v2, v3

    .line 20
    .line 21
    aput v1, v2, v0

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, [[F

    .line 30
    .line 31
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 32
    .line 33
    new-array v1, v4, [F

    .line 34
    .line 35
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCache:[F

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 38
    .line 39
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 40
    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    .line 42
    return-void
.end method


# virtual methods
.method public calcWave(F)F
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 3
    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    .line 12
    mul-float/2addr p1, v0

    .line 13
    float-to-double v0, p1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float p1, v0

    .line 19
    return p1

    .line 20
    .line 21
    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    .line 22
    mul-float/2addr p1, v0

    .line 23
    rem-float/2addr p1, v0

    .line 24
    sub-float/2addr p1, v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 28
    move-result p1

    .line 29
    .line 30
    sub-float p1, v2, p1

    .line 31
    mul-float/2addr p1, p1

    .line 32
    :goto_0
    sub-float/2addr v2, p1

    .line 33
    return v2

    .line 34
    .line 35
    :pswitch_1
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    .line 36
    mul-float/2addr p1, v0

    .line 37
    float-to-double v0, p1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 41
    move-result-wide v0

    .line 42
    double-to-float p1, v0

    .line 43
    return p1

    .line 44
    :pswitch_2
    mul-float/2addr p1, v1

    .line 45
    add-float/2addr p1, v2

    .line 46
    rem-float/2addr p1, v1

    .line 47
    goto :goto_0

    .line 48
    :pswitch_3
    mul-float/2addr p1, v1

    .line 49
    add-float/2addr p1, v2

    .line 50
    rem-float/2addr p1, v1

    .line 51
    sub-float/2addr p1, v2

    .line 52
    return p1

    .line 53
    .line 54
    .line 55
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :pswitch_5
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    .line 60
    mul-float/2addr p1, v0

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    nop

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 3
    return-object v0
.end method

.method public setPoint(IFFIF)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    .line 5
    .line 6
    aput p1, v0, v1

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 9
    .line 10
    aget-object p1, p1, v1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    aput p2, p1, v0

    .line 14
    const/4 p2, 0x1

    .line 15
    .line 16
    aput p3, p1, p2

    .line 17
    const/4 p3, 0x2

    .line 18
    .line 19
    aput p5, p1, p3

    .line 20
    .line 21
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result p1

    .line 26
    .line 27
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 28
    .line 29
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    .line 30
    add-int/2addr p1, p2

    .line 31
    .line 32
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    .line 33
    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_time:J

    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setup(I)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "Error no points added to "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 34
    const/4 v3, 0x1

    .line 35
    sub-int/2addr v0, v3

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    .line 40
    move v0, v3

    .line 41
    move v1, v4

    .line 42
    .line 43
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 44
    array-length v5, v2

    .line 45
    .line 46
    if-ge v0, v5, :cond_2

    .line 47
    .line 48
    aget v5, v2, v0

    .line 49
    .line 50
    add-int/lit8 v6, v0, -0x1

    .line 51
    .line 52
    aget v2, v2, v6

    .line 53
    .line 54
    if-eq v5, v2, :cond_1

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    if-nez v1, :cond_3

    .line 62
    move v1, v3

    .line 63
    .line 64
    :cond_3
    new-array v0, v1, [D

    .line 65
    const/4 v2, 0x2

    .line 66
    .line 67
    new-array v5, v2, [I

    .line 68
    const/4 v6, 0x3

    .line 69
    .line 70
    aput v6, v5, v3

    .line 71
    .line 72
    aput v1, v5, v4

    .line 73
    .line 74
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    check-cast v1, [[D

    .line 81
    move v5, v4

    .line 82
    move v6, v5

    .line 83
    .line 84
    :goto_1
    iget v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    .line 85
    .line 86
    if-ge v5, v7, :cond_5

    .line 87
    .line 88
    if-lez v5, :cond_4

    .line 89
    .line 90
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 91
    .line 92
    aget v8, v7, v5

    .line 93
    .line 94
    add-int/lit8 v9, v5, -0x1

    .line 95
    .line 96
    aget v7, v7, v9

    .line 97
    .line 98
    if-ne v8, v7, :cond_4

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_4
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 102
    .line 103
    aget v7, v7, v5

    .line 104
    int-to-double v7, v7

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 110
    mul-double/2addr v7, v9

    .line 111
    .line 112
    aput-wide v7, v0, v6

    .line 113
    .line 114
    aget-object v7, v1, v6

    .line 115
    .line 116
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 117
    .line 118
    aget-object v8, v8, v5

    .line 119
    .line 120
    aget v9, v8, v4

    .line 121
    float-to-double v9, v9

    .line 122
    .line 123
    aput-wide v9, v7, v4

    .line 124
    .line 125
    aget v9, v8, v3

    .line 126
    float-to-double v9, v9

    .line 127
    .line 128
    aput-wide v9, v7, v3

    .line 129
    .line 130
    aget v8, v8, v2

    .line 131
    float-to-double v8, v8

    .line 132
    .line 133
    aput-wide v8, v7, v2

    .line 134
    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    .line 137
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 138
    goto :goto_1

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/text/DecimalFormat;

    .line 5
    .line 6
    const-string v2, "##.##"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    .line 13
    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "["

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 30
    .line 31
    aget v0, v0, v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, " , "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 42
    .line 43
    aget-object v0, v0, v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, "] "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-object v0
.end method
