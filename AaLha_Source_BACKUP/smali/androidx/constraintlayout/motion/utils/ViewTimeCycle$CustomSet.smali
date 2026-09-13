.class public Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attribute",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    .line 11
    .line 12
    const-string v0, ","

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    aget-object p1, p1, v0

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 24
    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "period",
            "shape",
            "offset"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "period",
            "shape",
            "offset"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3
    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p5, v0, p3

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-wide/from16 v2, p3

    .line 7
    .line 8
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 9
    .line 10
    move/from16 v5, p2

    .line 11
    float-to-double v5, v5

    .line 12
    .line 13
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 17
    .line 18
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    .line 19
    array-length v5, v4

    .line 20
    .line 21
    add-int/lit8 v5, v5, -0x2

    .line 22
    .line 23
    aget v5, v4, v5

    .line 24
    array-length v6, v4

    .line 25
    const/4 v7, 0x1

    .line 26
    sub-int/2addr v6, v7

    .line 27
    .line 28
    aget v4, v4, v6

    .line 29
    .line 30
    iget-wide v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_time:J

    .line 31
    .line 32
    sub-long v8, v2, v8

    .line 33
    .line 34
    iget v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    .line 35
    .line 36
    .line 37
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    move-result v6

    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 45
    .line 46
    move-object/from16 v12, p5

    .line 47
    .line 48
    .line 49
    invoke-virtual {v12, v1, v6, v11}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    .line 50
    move-result v6

    .line 51
    .line 52
    iput v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    .line 53
    .line 54
    .line 55
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 56
    move-result v6

    .line 57
    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    .line 61
    .line 62
    :cond_0
    iget v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    .line 63
    float-to-double v12, v6

    .line 64
    long-to-double v8, v8

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    .line 70
    mul-double/2addr v8, v14

    .line 71
    float-to-double v14, v5

    .line 72
    mul-double/2addr v8, v14

    .line 73
    add-double/2addr v12, v8

    .line 74
    .line 75
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 76
    rem-double/2addr v12, v8

    .line 77
    double-to-float v6, v12

    .line 78
    .line 79
    iput v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    .line 80
    .line 81
    iput-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_time:J

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->calcWave(F)F

    .line 85
    move-result v2

    .line 86
    .line 87
    iput-boolean v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 88
    move v3, v11

    .line 89
    .line 90
    :goto_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    .line 91
    array-length v8, v6

    .line 92
    .line 93
    if-ge v3, v8, :cond_2

    .line 94
    .line 95
    iget-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 96
    .line 97
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    .line 98
    .line 99
    aget v9, v9, v3

    .line 100
    float-to-double v12, v9

    .line 101
    .line 102
    const-wide/16 v14, 0x0

    .line 103
    .line 104
    cmpl-double v12, v12, v14

    .line 105
    .line 106
    if-eqz v12, :cond_1

    .line 107
    move v12, v7

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    move v12, v11

    .line 110
    :goto_1
    or-int/2addr v8, v12

    .line 111
    .line 112
    iput-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 113
    mul-float/2addr v9, v2

    .line 114
    add-float/2addr v9, v4

    .line 115
    .line 116
    aput v9, v6, v3

    .line 117
    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto :goto_0

    .line 120
    .line 121
    :cond_2
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 128
    .line 129
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v1, v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 133
    .line 134
    cmpl-float v1, v5, v10

    .line 135
    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    iput-boolean v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 139
    .line 140
    :cond_3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 141
    return v1
.end method

.method public setup(I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    .line 19
    move-result v1

    .line 20
    .line 21
    new-array v3, v0, [D

    .line 22
    .line 23
    add-int/lit8 v4, v1, 0x2

    .line 24
    .line 25
    new-array v5, v4, [F

    .line 26
    .line 27
    iput-object v5, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    .line 28
    .line 29
    new-array v5, v1, [F

    .line 30
    .line 31
    iput-object v5, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    .line 32
    const/4 v5, 0x2

    .line 33
    .line 34
    new-array v5, v5, [I

    .line 35
    const/4 v6, 0x1

    .line 36
    .line 37
    aput v4, v5, v6

    .line 38
    .line 39
    aput v0, v5, v2

    .line 40
    .line 41
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    check-cast v4, [[D

    .line 48
    move v5, v2

    .line 49
    .line 50
    :goto_0
    if-ge v5, v0, :cond_1

    .line 51
    .line 52
    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 56
    move-result v7

    .line 57
    .line 58
    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    move-result-object v8

    .line 63
    .line 64
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 65
    .line 66
    iget-object v9, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    move-result-object v9

    .line 71
    .line 72
    check-cast v9, [F

    .line 73
    int-to-double v10, v7

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    .line 79
    mul-double/2addr v10, v12

    .line 80
    .line 81
    aput-wide v10, v3, v5

    .line 82
    .line 83
    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 87
    move v7, v2

    .line 88
    .line 89
    :goto_1
    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    .line 90
    array-length v10, v8

    .line 91
    .line 92
    if-ge v7, v10, :cond_0

    .line 93
    .line 94
    aget-object v10, v4, v5

    .line 95
    .line 96
    aget v8, v8, v7

    .line 97
    float-to-double v11, v8

    .line 98
    .line 99
    aput-wide v11, v10, v7

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_0
    aget-object v7, v4, v5

    .line 105
    .line 106
    aget v8, v9, v2

    .line 107
    float-to-double v10, v8

    .line 108
    .line 109
    aput-wide v10, v7, v1

    .line 110
    .line 111
    add-int/lit8 v8, v1, 0x1

    .line 112
    .line 113
    aget v9, v9, v6

    .line 114
    float-to-double v9, v9

    .line 115
    .line 116
    aput-wide v9, v7, v8

    .line 117
    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    goto :goto_0

    .line 120
    .line 121
    .line 122
    :cond_1
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 126
    return-void
.end method
