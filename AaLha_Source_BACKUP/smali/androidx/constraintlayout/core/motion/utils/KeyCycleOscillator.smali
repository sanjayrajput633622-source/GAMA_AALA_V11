.class public abstract Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntDoubleSort;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyCycleOscillator"


# instance fields
.field private mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

.field private mType:Ljava/lang/String;

.field public mVariesBy:I

.field mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveShape:I

.field private mWaveString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public static makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .locals 1

    .line 1
    .line 2
    const-string v0, "pathRotate"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;-><init>(Ljava/lang/String;)V

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;-><init>(Ljava/lang/String;)V

    .line 20
    return-object v0
.end method


# virtual methods
.method public get(F)F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->getValues(F)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float p1, v0

    .line 8
    return p1
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 3
    return-object v0
.end method

.method public getSlope(F)F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->getSlope(F)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float p1, v0

    .line 8
    return p1
.end method

.method public setCustom(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setPoint(IILjava/lang/String;IFFFF)V
    .locals 7

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move v2, p1

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p4, p1, :cond_0

    .line 7
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 8
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 9
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    return-void
.end method

.method public setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move v2, p1

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p4, p1, :cond_0

    .line 2
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 3
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    move-object/from16 p1, p9

    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setCustom(Ljava/lang/Object;)V

    .line 5
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V
    .locals 0

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setup(F)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;-><init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 22
    .line 23
    new-array v2, v1, [D

    .line 24
    const/4 v3, 0x2

    .line 25
    .line 26
    new-array v4, v3, [I

    .line 27
    const/4 v5, 0x1

    .line 28
    const/4 v6, 0x3

    .line 29
    .line 30
    aput v6, v4, v5

    .line 31
    const/4 v6, 0x0

    .line 32
    .line 33
    aput v1, v4, v6

    .line 34
    .line 35
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    check-cast v4, [[D

    .line 42
    .line 43
    new-instance v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 44
    .line 45
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 46
    .line 47
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    .line 48
    .line 49
    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 50
    .line 51
    .line 52
    invoke-direct {v7, v8, v9, v10, v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;-><init>(ILjava/lang/String;II)V

    .line 53
    .line 54
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 55
    .line 56
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v1

    .line 61
    move v8, v6

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v7

    .line 66
    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v7

    .line 72
    .line 73
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 74
    .line 75
    iget v10, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    .line 76
    float-to-double v11, v10

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    .line 82
    mul-double/2addr v11, v13

    .line 83
    .line 84
    aput-wide v11, v2, v8

    .line 85
    .line 86
    aget-object v9, v4, v8

    .line 87
    .line 88
    iget v13, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    .line 89
    float-to-double v11, v13

    .line 90
    .line 91
    aput-wide v11, v9, v6

    .line 92
    .line 93
    iget v11, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    .line 94
    float-to-double v14, v11

    .line 95
    .line 96
    aput-wide v14, v9, v5

    .line 97
    .line 98
    iget v12, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    .line 99
    float-to-double v14, v12

    .line 100
    .line 101
    aput-wide v14, v9, v3

    .line 102
    .line 103
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 104
    .line 105
    iget v7, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 106
    .line 107
    move-object/from16 v16, v9

    .line 108
    move v9, v7

    .line 109
    .line 110
    move-object/from16 v7, v16

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {v7 .. v13}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->setPoint(IIFFFF)V

    .line 114
    add-int/2addr v8, v5

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 118
    .line 119
    move/from16 v3, p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->setup(F)V

    .line 123
    .line 124
    .line 125
    invoke-static {v6, v2, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

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
    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "["

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget v0, v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, " , "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget v0, v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    .line 53
    float-to-double v5, v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v0, "] "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-object v0
.end method

.method public variesByPath()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
