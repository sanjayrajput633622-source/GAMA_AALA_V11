.class Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arc"
.end annotation


# static fields
.field private static final EPSILON:D = 0.001

.field private static final TAG:Ljava/lang/String; = "Arc"

.field private static ourPercent:[D


# instance fields
.field linear:Z

.field mArcDistance:D

.field mArcVelocity:D

.field mEllipseA:D

.field mEllipseB:D

.field mEllipseCenterX:D

.field mEllipseCenterY:D

.field mLut:[D

.field mOneOverDeltaTime:D

.field mTime1:D

.field mTime2:D

.field mTmpCosAngle:D

.field mTmpSinAngle:D

.field mVertical:Z

.field mX1:D

.field mX2:D

.field mY1:D

.field mY2:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x5b

    .line 3
    .line 4
    new-array v0, v0, [D

    .line 5
    .line 6
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 7
    return-void
.end method

.method public constructor <init>(IDDDDDD)V
    .locals 14

    .line 1
    .line 2
    move-wide/from16 v0, p2

    .line 3
    .line 4
    move-wide/from16 v2, p4

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v4, 0x0

    .line 9
    .line 10
    iput-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 11
    const/4 v5, 0x1

    .line 12
    .line 13
    if-ne p1, v5, :cond_0

    .line 14
    move v4, v5

    .line 15
    .line 16
    :cond_0
    iput-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 19
    .line 20
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 21
    .line 22
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    sub-double v0, v2, v0

    .line 25
    div-double/2addr v6, v0

    .line 26
    .line 27
    iput-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 28
    const/4 v0, 0x3

    .line 29
    .line 30
    if-ne v0, p1, :cond_1

    .line 31
    .line 32
    iput-boolean v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 33
    .line 34
    :cond_1
    sub-double v0, p10, p6

    .line 35
    .line 36
    sub-double v2, p12, p8

    .line 37
    .line 38
    iget-boolean p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 44
    move-result-wide v6

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    .line 50
    .line 51
    cmpg-double p1, v6, v8

    .line 52
    .line 53
    if-ltz p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 57
    move-result-wide v6

    .line 58
    .line 59
    cmpg-double p1, v6, v8

    .line 60
    .line 61
    if-gez p1, :cond_3

    .line 62
    .line 63
    :cond_2
    move-wide/from16 v6, p6

    .line 64
    .line 65
    move-wide/from16 v8, p8

    .line 66
    .line 67
    move-wide/from16 v10, p10

    .line 68
    .line 69
    move-wide/from16 v12, p12

    .line 70
    goto :goto_4

    .line 71
    .line 72
    :cond_3
    const/16 p1, 0x65

    .line 73
    .line 74
    new-array p1, p1, [D

    .line 75
    .line 76
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 77
    .line 78
    iget-boolean p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 79
    const/4 v4, -0x1

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    move v6, v4

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    move v6, v5

    .line 85
    :goto_0
    int-to-double v6, v6

    .line 86
    mul-double/2addr v0, v6

    .line 87
    .line 88
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move v5, v4

    .line 93
    :goto_1
    int-to-double v0, v5

    .line 94
    mul-double/2addr v2, v0

    .line 95
    .line 96
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    move-wide/from16 v0, p10

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_6
    move-wide/from16 v0, p6

    .line 104
    .line 105
    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    move-wide/from16 v0, p8

    .line 110
    goto :goto_3

    .line 111
    .line 112
    :cond_7
    move-wide/from16 v0, p12

    .line 113
    .line 114
    :goto_3
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 115
    move-object v0, p0

    .line 116
    .line 117
    move-wide/from16 v1, p6

    .line 118
    .line 119
    move-wide/from16 v3, p8

    .line 120
    .line 121
    move-wide/from16 v5, p10

    .line 122
    .line 123
    move-wide/from16 v7, p12

    .line 124
    .line 125
    .line 126
    invoke-direct/range {v0 .. v8}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->buildTable(DDDD)V

    .line 127
    .line 128
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 129
    .line 130
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 131
    mul-double/2addr v0, v2

    .line 132
    .line 133
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 134
    return-void

    .line 135
    .line 136
    :goto_4
    iput-boolean v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 137
    .line 138
    iput-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    .line 139
    .line 140
    iput-wide v10, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    .line 141
    .line 142
    iput-wide v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    .line 143
    .line 144
    iput-wide v12, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 148
    move-result-wide v4

    .line 149
    .line 150
    iput-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 151
    .line 152
    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 153
    mul-double/2addr v4, v6

    .line 154
    .line 155
    iput-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 156
    .line 157
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 158
    .line 159
    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 160
    .line 161
    sub-double v8, v4, v6

    .line 162
    div-double/2addr v0, v8

    .line 163
    .line 164
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 165
    sub-double/2addr v4, v6

    .line 166
    div-double/2addr v2, v4

    .line 167
    .line 168
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 169
    return-void
.end method

.method private buildTable(DDDD)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    sub-double v1, p5, p1

    .line 5
    .line 6
    sub-double v3, p3, p7

    .line 7
    const/4 v8, 0x0

    .line 8
    .line 9
    const-wide/16 v9, 0x0

    .line 10
    .line 11
    const-wide/16 v11, 0x0

    .line 12
    .line 13
    const-wide/16 v13, 0x0

    .line 14
    .line 15
    :goto_0
    sget-object v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 16
    .line 17
    const-wide/16 p1, 0x0

    .line 18
    array-length v5, v15

    .line 19
    .line 20
    if-ge v8, v5, :cond_1

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide p3, 0x4056800000000000L    # 90.0

    .line 26
    int-to-double v5, v8

    .line 27
    .line 28
    mul-double v5, v5, p3

    .line 29
    array-length v15, v15

    .line 30
    .line 31
    add-int/lit8 v15, v15, -0x1

    .line 32
    .line 33
    move/from16 p4, v8

    .line 34
    int-to-double v7, v15

    .line 35
    div-double/2addr v5, v7

    .line 36
    .line 37
    .line 38
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 39
    move-result-wide v5

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 43
    move-result-wide v7

    .line 44
    .line 45
    .line 46
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 47
    move-result-wide v5

    .line 48
    mul-double/2addr v7, v1

    .line 49
    mul-double/2addr v5, v3

    .line 50
    .line 51
    if-lez p4, :cond_0

    .line 52
    .line 53
    sub-double v11, v7, v11

    .line 54
    .line 55
    sub-double v13, v5, v13

    .line 56
    .line 57
    .line 58
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 59
    move-result-wide v11

    .line 60
    add-double/2addr v9, v11

    .line 61
    .line 62
    sget-object v11, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 63
    .line 64
    aput-wide v9, v11, p4

    .line 65
    .line 66
    :cond_0
    add-int/lit8 v11, p4, 0x1

    .line 67
    move-wide v13, v7

    .line 68
    move v8, v11

    .line 69
    move-wide v11, v13

    .line 70
    move-wide v13, v5

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    iput-wide v9, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 74
    const/4 v1, 0x0

    .line 75
    .line 76
    :goto_1
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 77
    array-length v3, v2

    .line 78
    .line 79
    if-ge v1, v3, :cond_2

    .line 80
    .line 81
    aget-wide v3, v2, v1

    .line 82
    div-double/2addr v3, v9

    .line 83
    .line 84
    aput-wide v3, v2, v1

    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v7, 0x0

    .line 89
    .line 90
    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 91
    array-length v2, v1

    .line 92
    .line 93
    if-ge v7, v2, :cond_5

    .line 94
    int-to-double v2, v7

    .line 95
    array-length v1, v1

    .line 96
    .line 97
    add-int/lit8 v1, v1, -0x1

    .line 98
    int-to-double v4, v1

    .line 99
    div-double/2addr v2, v4

    .line 100
    .line 101
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 105
    move-result v1

    .line 106
    .line 107
    if-ltz v1, :cond_3

    .line 108
    .line 109
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 110
    int-to-double v3, v1

    .line 111
    .line 112
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 113
    array-length v1, v1

    .line 114
    .line 115
    add-int/lit8 v1, v1, -0x1

    .line 116
    int-to-double v5, v1

    .line 117
    div-double/2addr v3, v5

    .line 118
    .line 119
    aput-wide v3, v2, v7

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    const/4 v4, -0x1

    .line 122
    .line 123
    if-ne v1, v4, :cond_4

    .line 124
    .line 125
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 126
    .line 127
    aput-wide p1, v1, v7

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    neg-int v1, v1

    .line 130
    .line 131
    add-int/lit8 v4, v1, -0x2

    .line 132
    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 134
    int-to-double v5, v4

    .line 135
    .line 136
    sget-object v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 137
    .line 138
    aget-wide v9, v8, v4

    .line 139
    sub-double/2addr v2, v9

    .line 140
    .line 141
    aget-wide v11, v8, v1

    .line 142
    sub-double/2addr v11, v9

    .line 143
    div-double/2addr v2, v11

    .line 144
    add-double/2addr v5, v2

    .line 145
    array-length v1, v8

    .line 146
    .line 147
    add-int/lit8 v1, v1, -0x1

    .line 148
    int-to-double v1, v1

    .line 149
    div-double/2addr v5, v1

    .line 150
    .line 151
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 152
    .line 153
    aput-wide v5, v1, v7

    .line 154
    .line 155
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 156
    goto :goto_2

    .line 157
    :cond_5
    return-void
.end method


# virtual methods
.method public getDX()D
    .locals 6

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 3
    .line 4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 5
    mul-double/2addr v0, v2

    .line 6
    .line 7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 8
    neg-double v2, v2

    .line 9
    .line 10
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 11
    mul-double/2addr v2, v4

    .line 12
    .line 13
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 17
    move-result-wide v2

    .line 18
    div-double/2addr v4, v2

    .line 19
    .line 20
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    neg-double v0, v0

    .line 24
    mul-double/2addr v0, v4

    .line 25
    return-wide v0

    .line 26
    :cond_0
    mul-double/2addr v0, v4

    .line 27
    return-wide v0
.end method

.method public getDY()D
    .locals 6

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 3
    .line 4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 5
    mul-double/2addr v0, v2

    .line 6
    .line 7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 8
    neg-double v2, v2

    .line 9
    .line 10
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 11
    mul-double/2addr v2, v4

    .line 12
    .line 13
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 17
    move-result-wide v0

    .line 18
    div-double/2addr v4, v0

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    neg-double v0, v2

    .line 24
    mul-double/2addr v0, v4

    .line 25
    return-wide v0

    .line 26
    :cond_0
    mul-double/2addr v2, v4

    .line 27
    return-wide v2
.end method

.method public getLinearDX(D)D
    .locals 0

    .line 1
    .line 2
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 3
    return-wide p1
.end method

.method public getLinearDY(D)D
    .locals 0

    .line 1
    .line 2
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 3
    return-wide p1
.end method

.method public getLinearX(D)D
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 3
    sub-double/2addr p1, v0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 6
    mul-double/2addr p1, v0

    .line 7
    .line 8
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    .line 9
    .line 10
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    .line 11
    sub-double/2addr v2, v0

    .line 12
    mul-double/2addr p1, v2

    .line 13
    add-double/2addr v0, p1

    .line 14
    return-wide v0
.end method

.method public getLinearY(D)D
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 3
    sub-double/2addr p1, v0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 6
    mul-double/2addr p1, v0

    .line 7
    .line 8
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    .line 9
    .line 10
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    .line 11
    sub-double/2addr v2, v0

    .line 12
    mul-double/2addr p1, v2

    .line 13
    add-double/2addr v0, p1

    .line 14
    return-wide v0
.end method

.method public getX()D
    .locals 6

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 3
    .line 4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 5
    .line 6
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 7
    mul-double/2addr v2, v4

    .line 8
    add-double/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public getY()D
    .locals 6

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 3
    .line 4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 5
    .line 6
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 7
    mul-double/2addr v2, v4

    .line 8
    add-double/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public lookup(D)D
    .locals 6

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmpg-double v2, p1, v0

    .line 5
    .line 6
    if-gtz v2, :cond_0

    .line 7
    return-wide v0

    .line 8
    .line 9
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    cmpl-double v2, p1, v0

    .line 12
    .line 13
    if-ltz v2, :cond_1

    .line 14
    return-wide v0

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 17
    array-length v1, v0

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    int-to-double v1, v1

    .line 21
    mul-double/2addr p1, v1

    .line 22
    double-to-int v1, p1

    .line 23
    int-to-double v2, v1

    .line 24
    sub-double/2addr p1, v2

    .line 25
    .line 26
    aget-wide v2, v0, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    aget-wide v4, v0, v1

    .line 31
    sub-double/2addr v4, v2

    .line 32
    mul-double/2addr p1, v4

    .line 33
    add-double/2addr v2, p1

    .line 34
    return-wide v2
.end method

.method public setPoint(D)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 7
    sub-double/2addr v0, p1

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 11
    .line 12
    sub-double v0, p1, v0

    .line 13
    .line 14
    :goto_0
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 15
    mul-double/2addr v0, p1

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide p1, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->lookup(D)D

    .line 24
    move-result-wide v0

    .line 25
    mul-double/2addr v0, p1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 29
    move-result-wide p1

    .line 30
    .line 31
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 35
    move-result-wide p1

    .line 36
    .line 37
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 38
    return-void
.end method
