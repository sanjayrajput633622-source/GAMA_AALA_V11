.class public Landroidx/constraintlayout/core/motion/Motion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# static fields
.field static final BOUNCE:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field static final LINEAR:I = 0x3

.field static final OVERSHOOT:I = 0x5

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field public static final ROTATION_LEFT:I = 0x2

.field public static final ROTATION_RIGHT:I = 0x1

.field private static final SPLINE_STRING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field attributeTable:[Ljava/lang/String;

.field private mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mAttributeInterpolatorCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field mCurrentCenterX:F

.field mCurrentCenterY:F

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroidx/constraintlayout/core/motion/MotionWidget;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 14
    .line 15
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    .line 19
    .line 20
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 21
    .line 22
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    .line 26
    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 28
    .line 29
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 35
    .line 36
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 42
    .line 43
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 44
    .line 45
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionStagger:F

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    .line 49
    .line 50
    const/high16 v2, 0x3f800000    # 1.0f

    .line 51
    .line 52
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    .line 53
    const/4 v2, 0x4

    .line 54
    .line 55
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->MAX_DIMENSION:I

    .line 56
    .line 57
    new-array v2, v2, [F

    .line 58
    .line 59
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 67
    const/4 v2, 0x1

    .line 68
    .line 69
    new-array v2, v2, [F

    .line 70
    .line 71
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 72
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 79
    .line 80
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 81
    .line 82
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 83
    const/4 v2, 0x0

    .line 84
    .line 85
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 86
    .line 87
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    .line 88
    .line 89
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    .line 90
    .line 91
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    .line 92
    const/4 v0, 0x0

    .line 93
    .line 94
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/Motion;->setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 98
    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    aput v2, p2, v1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    .line 12
    float-to-double v4, v3

    .line 13
    .line 14
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 15
    .line 16
    cmpl-double v4, v4, v6

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    iget v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    .line 21
    .line 22
    cmpg-float v5, p1, v4

    .line 23
    .line 24
    if-gez v5, :cond_1

    .line 25
    move p1, v0

    .line 26
    .line 27
    :cond_1
    cmpl-float v5, p1, v4

    .line 28
    .line 29
    if-lez v5, :cond_2

    .line 30
    float-to-double v8, p1

    .line 31
    .line 32
    cmpg-double v5, v8, v6

    .line 33
    .line 34
    if-gez v5, :cond_2

    .line 35
    sub-float/2addr p1, v4

    .line 36
    mul-float/2addr p1, v3

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 40
    move-result p1

    .line 41
    .line 42
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 43
    .line 44
    iget-object v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v6

    .line 57
    .line 58
    if-eqz v6, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 65
    .line 66
    iget-object v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 67
    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    iget v8, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 71
    .line 72
    cmpg-float v9, v8, p1

    .line 73
    .line 74
    if-gez v9, :cond_4

    .line 75
    move-object v3, v7

    .line 76
    move v0, v8

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 81
    move-result v7

    .line 82
    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    iget v5, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_5
    if-eqz v3, :cond_7

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 92
    move-result v4

    .line 93
    .line 94
    if-eqz v4, :cond_6

    .line 95
    goto :goto_2

    .line 96
    :cond_6
    move v2, v5

    .line 97
    :goto_2
    sub-float/2addr p1, v0

    .line 98
    sub-float/2addr v2, v0

    .line 99
    div-float/2addr p1, v2

    .line 100
    float-to-double v4, p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 104
    move-result-wide v6

    .line 105
    double-to-float p1, v6

    .line 106
    mul-float/2addr p1, v2

    .line 107
    add-float/2addr p1, v0

    .line 108
    .line 109
    if-eqz p2, :cond_7

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    .line 113
    move-result-wide v2

    .line 114
    double-to-float v0, v2

    .line 115
    .line 116
    aput v0, p2, v1

    .line 117
    :cond_7
    return p1
.end method

.method private static getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;
    .locals 0

    .line 1
    const/4 p2, -0x1

    .line 2
    .line 3
    if-eq p0, p2, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    new-instance p1, Landroidx/constraintlayout/core/motion/Motion$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/motion/Motion$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    .line 15
    return-object p1
.end method

.method private getPreCycleDistance()F
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    new-array v7, v1, [F

    .line 6
    .line 7
    const/16 v1, 0x63

    .line 8
    int-to-float v1, v1

    .line 9
    .line 10
    const/high16 v9, 0x3f800000    # 1.0f

    .line 11
    .line 12
    div-float v1, v9, v1

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    move-wide v12, v2

    .line 16
    move-wide v14, v12

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    :goto_0
    const/16 v4, 0x64

    .line 21
    .line 22
    if-ge v2, v4, :cond_6

    .line 23
    int-to-float v4, v2

    .line 24
    mul-float/2addr v4, v1

    .line 25
    float-to-double v5, v4

    .line 26
    .line 27
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 28
    .line 29
    iget-object v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 30
    .line 31
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v9

    .line 36
    .line 37
    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 38
    .line 39
    const/16 v17, 0x0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v18

    .line 44
    .line 45
    if-eqz v18, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v18

    .line 50
    .line 51
    move-object/from16 v10, v18

    .line 52
    .line 53
    check-cast v10, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 54
    .line 55
    const/16 v18, 0x0

    .line 56
    .line 57
    iget-object v11, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 58
    .line 59
    move/from16 v19, v1

    .line 60
    .line 61
    if-eqz v11, :cond_1

    .line 62
    .line 63
    iget v1, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 64
    .line 65
    cmpg-float v20, v1, v4

    .line 66
    .line 67
    if-gez v20, :cond_0

    .line 68
    .line 69
    move/from16 v17, v1

    .line 70
    move-object v8, v11

    .line 71
    goto :goto_2

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    iget v1, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 80
    .line 81
    move/from16 v16, v1

    .line 82
    .line 83
    :cond_1
    :goto_2
    move/from16 v1, v19

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    move/from16 v19, v1

    .line 87
    .line 88
    const/16 v18, 0x0

    .line 89
    .line 90
    if-eqz v8, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    const/high16 v16, 0x3f800000    # 1.0f

    .line 99
    .line 100
    :cond_3
    sub-float v4, v4, v17

    .line 101
    .line 102
    sub-float v16, v16, v17

    .line 103
    .line 104
    div-float v4, v4, v16

    .line 105
    float-to-double v4, v4

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 109
    move-result-wide v4

    .line 110
    double-to-float v1, v4

    .line 111
    .line 112
    mul-float v1, v1, v16

    .line 113
    .line 114
    add-float v1, v1, v17

    .line 115
    float-to-double v5, v1

    .line 116
    .line 117
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 118
    .line 119
    aget-object v1, v1, v18

    .line 120
    .line 121
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v5, v6, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 125
    move v11, v2

    .line 126
    .line 127
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 128
    move v10, v3

    .line 129
    move-wide v3, v5

    .line 130
    .line 131
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 132
    .line 133
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 134
    const/4 v8, 0x0

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 138
    const/4 v1, 0x1

    .line 139
    .line 140
    if-lez v11, :cond_5

    .line 141
    float-to-double v2, v10

    .line 142
    .line 143
    aget v4, v7, v1

    .line 144
    float-to-double v4, v4

    .line 145
    sub-double/2addr v14, v4

    .line 146
    .line 147
    aget v4, v7, v18

    .line 148
    float-to-double v4, v4

    .line 149
    sub-double/2addr v12, v4

    .line 150
    .line 151
    .line 152
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    .line 153
    move-result-wide v4

    .line 154
    add-double/2addr v2, v4

    .line 155
    double-to-float v3, v2

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    move v3, v10

    .line 158
    .line 159
    :goto_3
    aget v2, v7, v18

    .line 160
    float-to-double v12, v2

    .line 161
    .line 162
    aget v1, v7, v1

    .line 163
    float-to-double v14, v1

    .line 164
    .line 165
    add-int/lit8 v2, v11, 0x1

    .line 166
    .line 167
    move/from16 v1, v19

    .line 168
    .line 169
    const/high16 v9, 0x3f800000    # 1.0f

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    :cond_6
    move v10, v3

    .line 173
    return v10
.end method

.method private insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 20
    .line 21
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 22
    .line 23
    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 24
    .line 25
    cmpl-float v3, v3, v4

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    move-object v1, v2

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 42
    move-result v0

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v2, " KeyPath position \""

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "\" outside of range"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "MotionController"

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 76
    neg-int v0, v0

    .line 77
    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method private readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 32
    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addKeys(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    return-void
.end method

.method public buildBounds([FI)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    int-to-float v2, v2

    .line 8
    .line 9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    .line 11
    div-float v2, v3, v2

    .line 12
    .line 13
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 14
    .line 15
    const-string v5, "translationX"

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 25
    .line 26
    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 27
    .line 28
    const-string v6, "translationY"

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 38
    .line 39
    :goto_1
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 49
    .line 50
    :goto_2
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 51
    .line 52
    if-nez v4, :cond_3

    .line 53
    goto :goto_3

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 60
    :goto_3
    const/4 v4, 0x0

    .line 61
    move v5, v4

    .line 62
    .line 63
    :goto_4
    if-ge v5, v1, :cond_c

    .line 64
    int-to-float v6, v5

    .line 65
    mul-float/2addr v6, v2

    .line 66
    .line 67
    iget v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    .line 68
    .line 69
    cmpl-float v8, v7, v3

    .line 70
    const/4 v9, 0x0

    .line 71
    .line 72
    if-eqz v8, :cond_5

    .line 73
    .line 74
    iget v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    .line 75
    .line 76
    cmpg-float v10, v6, v8

    .line 77
    .line 78
    if-gez v10, :cond_4

    .line 79
    move v6, v9

    .line 80
    .line 81
    :cond_4
    cmpl-float v10, v6, v8

    .line 82
    .line 83
    if-lez v10, :cond_5

    .line 84
    float-to-double v10, v6

    .line 85
    .line 86
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 87
    .line 88
    cmpg-double v10, v10, v12

    .line 89
    .line 90
    if-gez v10, :cond_5

    .line 91
    sub-float/2addr v6, v8

    .line 92
    mul-float/2addr v6, v7

    .line 93
    .line 94
    .line 95
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    .line 96
    move-result v6

    .line 97
    :cond_5
    float-to-double v7, v6

    .line 98
    .line 99
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 100
    .line 101
    iget-object v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 102
    .line 103
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v11

    .line 108
    .line 109
    const/high16 v12, 0x7fc00000    # Float.NaN

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v13

    .line 114
    .line 115
    if-eqz v13, :cond_8

    .line 116
    .line 117
    .line 118
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v13

    .line 120
    .line 121
    check-cast v13, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 122
    .line 123
    iget-object v14, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 124
    .line 125
    if-eqz v14, :cond_6

    .line 126
    .line 127
    iget v15, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 128
    .line 129
    cmpg-float v16, v15, v6

    .line 130
    .line 131
    if-gez v16, :cond_7

    .line 132
    move-object v10, v14

    .line 133
    move v9, v15

    .line 134
    goto :goto_5

    .line 135
    .line 136
    .line 137
    :cond_7
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    .line 138
    move-result v14

    .line 139
    .line 140
    if-eqz v14, :cond_6

    .line 141
    .line 142
    iget v12, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 143
    goto :goto_5

    .line 144
    .line 145
    :cond_8
    if-eqz v10, :cond_a

    .line 146
    .line 147
    .line 148
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    .line 149
    move-result v7

    .line 150
    .line 151
    if-eqz v7, :cond_9

    .line 152
    move v12, v3

    .line 153
    :cond_9
    sub-float/2addr v6, v9

    .line 154
    sub-float/2addr v12, v9

    .line 155
    div-float/2addr v6, v12

    .line 156
    float-to-double v6, v6

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 160
    move-result-wide v6

    .line 161
    double-to-float v6, v6

    .line 162
    mul-float/2addr v6, v12

    .line 163
    add-float/2addr v6, v9

    .line 164
    float-to-double v7, v6

    .line 165
    .line 166
    :cond_a
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 167
    .line 168
    aget-object v6, v6, v4

    .line 169
    .line 170
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 174
    .line 175
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 176
    .line 177
    if-eqz v6, :cond_b

    .line 178
    .line 179
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 180
    array-length v10, v9

    .line 181
    .line 182
    if-lez v10, :cond_b

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 186
    .line 187
    :cond_b
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 188
    .line 189
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 190
    .line 191
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 192
    .line 193
    mul-int/lit8 v9, v5, 0x2

    .line 194
    .line 195
    move-object/from16 v10, p1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6, v7, v8, v10, v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

    .line 199
    .line 200
    add-int/lit8 v5, v5, 0x1

    .line 201
    .line 202
    goto/16 :goto_4

    .line 203
    :cond_c
    return-void
.end method

.method public buildKeyBounds([F[I)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v2

    .line 20
    move v3, v0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 37
    .line 38
    aput v4, p2, v3

    .line 39
    move v3, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p2, v0

    .line 42
    move v2, p2

    .line 43
    :goto_1
    array-length v3, v1

    .line 44
    .line 45
    if-ge p2, v3, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 48
    .line 49
    aget-object v3, v3, v0

    .line 50
    .line 51
    aget-wide v4, v1, p2

    .line 52
    .line 53
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 61
    .line 62
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x2

    .line 68
    .line 69
    add-int/lit8 p2, p2, 0x1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_1
    div-int/lit8 v2, v2, 0x2

    .line 73
    return v2

    .line 74
    :cond_2
    return v0
.end method

.method public buildKeyFrames([F[I[I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v2

    .line 20
    move v3, v0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 37
    .line 38
    aput v4, p2, v3

    .line 39
    move v3, v5

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    if-eqz p3, :cond_1

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p2

    .line 49
    move v2, v0

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    check-cast v3, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 62
    .line 63
    add-int/lit8 v4, v2, 0x1

    .line 64
    .line 65
    const/high16 v5, 0x42c80000    # 100.0f

    .line 66
    .line 67
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 68
    mul-float/2addr v3, v5

    .line 69
    float-to-int v3, v3

    .line 70
    .line 71
    aput v3, p3, v2

    .line 72
    move v2, v4

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move p2, v0

    .line 75
    move v8, p2

    .line 76
    :goto_2
    array-length p3, v1

    .line 77
    .line 78
    if-ge p2, p3, :cond_2

    .line 79
    .line 80
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 81
    .line 82
    aget-object p3, p3, v0

    .line 83
    .line 84
    aget-wide v2, v1, p2

    .line 85
    .line 86
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 90
    .line 91
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 92
    .line 93
    aget-wide v3, v1, p2

    .line 94
    .line 95
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 96
    .line 97
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 98
    move-object v7, p1

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 102
    .line 103
    add-int/lit8 v8, v8, 0x2

    .line 104
    .line 105
    add-int/lit8 p2, p2, 0x1

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_2
    div-int/lit8 v8, v8, 0x2

    .line 109
    return v8

    .line 110
    :cond_3
    return v0
.end method

.method public buildPath([FI)V
    .locals 25

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    int-to-float v2, v2

    .line 8
    .line 9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    .line 11
    div-float v2, v3, v2

    .line 12
    .line 13
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 14
    .line 15
    const-string v5, "translationX"

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    move-object v4, v6

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 27
    .line 28
    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 29
    .line 30
    const-string v8, "translationY"

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    move-object v7, v6

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v7

    .line 39
    .line 40
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 41
    .line 42
    :goto_1
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 43
    .line 44
    if-nez v9, :cond_2

    .line 45
    move-object v5, v6

    .line 46
    goto :goto_2

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 53
    .line 54
    :goto_2
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    goto :goto_3

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v6

    .line 62
    .line 63
    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 64
    :goto_3
    const/4 v9, 0x0

    .line 65
    .line 66
    :goto_4
    if-ge v9, v1, :cond_10

    .line 67
    int-to-float v10, v9

    .line 68
    mul-float/2addr v10, v2

    .line 69
    .line 70
    iget v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    .line 71
    .line 72
    cmpl-float v12, v11, v3

    .line 73
    const/4 v13, 0x0

    .line 74
    .line 75
    if-eqz v12, :cond_5

    .line 76
    .line 77
    iget v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    .line 78
    .line 79
    cmpg-float v14, v10, v12

    .line 80
    .line 81
    if-gez v14, :cond_4

    .line 82
    move v10, v13

    .line 83
    .line 84
    :cond_4
    cmpl-float v14, v10, v12

    .line 85
    .line 86
    if-lez v14, :cond_5

    .line 87
    float-to-double v14, v10

    .line 88
    .line 89
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 90
    .line 91
    cmpg-double v14, v14, v16

    .line 92
    .line 93
    if-gez v14, :cond_5

    .line 94
    sub-float/2addr v10, v12

    .line 95
    mul-float/2addr v10, v11

    .line 96
    .line 97
    .line 98
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    .line 99
    move-result v10

    .line 100
    :cond_5
    float-to-double v11, v10

    .line 101
    .line 102
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 103
    .line 104
    iget-object v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 105
    .line 106
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object v15

    .line 111
    .line 112
    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 113
    .line 114
    .line 115
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v17

    .line 117
    .line 118
    if-eqz v17, :cond_8

    .line 119
    .line 120
    .line 121
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v17

    .line 123
    .line 124
    move-object/from16 v3, v17

    .line 125
    .line 126
    check-cast v3, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    iget-object v8, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 131
    .line 132
    if-eqz v8, :cond_7

    .line 133
    .line 134
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 135
    .line 136
    cmpg-float v18, v1, v10

    .line 137
    .line 138
    if-gez v18, :cond_6

    .line 139
    move v13, v1

    .line 140
    move-object v14, v8

    .line 141
    goto :goto_6

    .line 142
    .line 143
    .line 144
    :cond_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 145
    move-result v1

    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 150
    .line 151
    move/from16 v16, v1

    .line 152
    .line 153
    :cond_7
    :goto_6
    move/from16 v1, p2

    .line 154
    .line 155
    const/high16 v3, 0x3f800000    # 1.0f

    .line 156
    goto :goto_5

    .line 157
    .line 158
    :cond_8
    const/16 v17, 0x0

    .line 159
    .line 160
    if-eqz v14, :cond_a

    .line 161
    .line 162
    .line 163
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 164
    move-result v1

    .line 165
    .line 166
    if-eqz v1, :cond_9

    .line 167
    .line 168
    const/high16 v16, 0x3f800000    # 1.0f

    .line 169
    .line 170
    :cond_9
    sub-float v1, v10, v13

    .line 171
    .line 172
    sub-float v16, v16, v13

    .line 173
    .line 174
    div-float v1, v1, v16

    .line 175
    float-to-double v11, v1

    .line 176
    .line 177
    .line 178
    invoke-virtual {v14, v11, v12}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 179
    move-result-wide v11

    .line 180
    double-to-float v1, v11

    .line 181
    .line 182
    mul-float v1, v1, v16

    .line 183
    add-float/2addr v1, v13

    .line 184
    float-to-double v11, v1

    .line 185
    .line 186
    :cond_a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 187
    .line 188
    aget-object v1, v1, v17

    .line 189
    .line 190
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v11, v12, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 194
    .line 195
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 196
    .line 197
    if-eqz v1, :cond_b

    .line 198
    .line 199
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 200
    array-length v8, v3

    .line 201
    .line 202
    if-lez v8, :cond_b

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v11, v12, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 206
    .line 207
    :cond_b
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 208
    .line 209
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 210
    .line 211
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 212
    .line 213
    mul-int/lit8 v24, v9, 0x2

    .line 214
    .line 215
    move-object/from16 v23, p1

    .line 216
    .line 217
    move-object/from16 v18, v1

    .line 218
    .line 219
    move-object/from16 v21, v3

    .line 220
    .line 221
    move-object/from16 v22, v8

    .line 222
    .line 223
    move-wide/from16 v19, v11

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {v18 .. v24}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 227
    .line 228
    if-eqz v5, :cond_c

    .line 229
    .line 230
    aget v1, p1, v24

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v10}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 234
    move-result v3

    .line 235
    add-float/2addr v1, v3

    .line 236
    .line 237
    aput v1, p1, v24

    .line 238
    goto :goto_7

    .line 239
    .line 240
    :cond_c
    if-eqz v4, :cond_d

    .line 241
    .line 242
    aget v1, p1, v24

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 246
    move-result v3

    .line 247
    add-float/2addr v1, v3

    .line 248
    .line 249
    aput v1, p1, v24

    .line 250
    .line 251
    :cond_d
    :goto_7
    if-eqz v6, :cond_e

    .line 252
    .line 253
    add-int/lit8 v24, v24, 0x1

    .line 254
    .line 255
    aget v1, p1, v24

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 259
    move-result v3

    .line 260
    add-float/2addr v1, v3

    .line 261
    .line 262
    aput v1, p1, v24

    .line 263
    goto :goto_8

    .line 264
    .line 265
    :cond_e
    if-eqz v7, :cond_f

    .line 266
    .line 267
    add-int/lit8 v24, v24, 0x1

    .line 268
    .line 269
    aget v1, p1, v24

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 273
    move-result v3

    .line 274
    add-float/2addr v1, v3

    .line 275
    .line 276
    aput v1, p1, v24

    .line 277
    .line 278
    :cond_f
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 279
    .line 280
    move/from16 v1, p2

    .line 281
    .line 282
    const/high16 v3, 0x3f800000    # 1.0f

    .line 283
    .line 284
    goto/16 :goto_4

    .line 285
    :cond_10
    return-void
.end method

.method public buildRect(F[FI)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 5
    move-result p1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    aget-object v0, v0, v1

    .line 11
    float-to-double v1, p1

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

    .line 26
    return-void
.end method

.method public buildRectangles([FI)V
    .locals 7

    .line 1
    .line 2
    add-int/lit8 v0, p2, -0x1

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    div-float/2addr v1, v0

    .line 7
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    .line 10
    :goto_0
    if-ge v2, p2, :cond_0

    .line 11
    int-to-float v3, v2

    .line 12
    mul-float/2addr v3, v1

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 17
    move-result v3

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 20
    .line 21
    aget-object v4, v4, v0

    .line 22
    float-to-double v5, v3

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 32
    .line 33
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 34
    .line 35
    mul-int/lit8 v6, v2, 0x8

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public endTrigger(Z)V
    .locals 0

    return-void
.end method

.method public getAnimateRelativeTo()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    .line 5
    return v0
.end method

.method public getAttributeValues(Ljava/lang/String;[FI)I
    .locals 1

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p3, 0x0

    .line 14
    :goto_0
    array-length v0, p2

    .line 15
    .line 16
    if-ge p3, v0, :cond_1

    .line 17
    array-length v0, p2

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    div-int v0, p3, v0

    .line 22
    int-to-float v0, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 26
    move-result v0

    .line 27
    .line 28
    aput v0, p2, p3

    .line 29
    .line 30
    add-int/lit8 p3, p3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    array-length p1, p2

    .line 33
    return p1
.end method

.method public getCenter(D[F[F)V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v5, v0, [D

    .line 4
    .line 5
    new-array v7, v0, [D

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 16
    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 29
    move-wide v2, p1

    .line 30
    move-object v6, p3

    .line 31
    move-object v8, p4

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[F[D[F)V

    .line 35
    return-void
.end method

.method public getCenterX()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterX:F

    .line 3
    return v0
.end method

.method public getCenterY()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterY:F

    .line 3
    return v0
.end method

.method public getDpDt(FFF[F)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    float-to-double v2, p1

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 22
    .line 23
    aget-object p1, p1, v1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 31
    .line 32
    aget p1, p1, v1

    .line 33
    .line 34
    :goto_0
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 35
    array-length v0, v9

    .line 36
    .line 37
    if-ge v1, v0, :cond_0

    .line 38
    .line 39
    aget-wide v4, v9, v1

    .line 40
    float-to-double v6, p1

    .line 41
    mul-double/2addr v4, v6

    .line 42
    .line 43
    aput-wide v4, v9, v1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 53
    array-length v1, v0

    .line 54
    .line 55
    if-lez v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 59
    .line 60
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 66
    .line 67
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 68
    .line 69
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 70
    .line 71
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 72
    .line 73
    iget-object v10, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 74
    move v5, p2

    .line 75
    move v6, p3

    .line 76
    move-object v7, p4

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 80
    :cond_1
    return-void

    .line 81
    :cond_2
    move v5, p2

    .line 82
    move v6, p3

    .line 83
    move-object v7, p4

    .line 84
    .line 85
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 86
    .line 87
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 88
    .line 89
    iget-object v10, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 93
    return-void

    .line 94
    :cond_3
    move v5, p2

    .line 95
    move v6, p3

    .line 96
    move-object v7, p4

    .line 97
    .line 98
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 99
    .line 100
    iget p2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 101
    .line 102
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 103
    .line 104
    iget p4, p3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 105
    sub-float/2addr p2, p4

    .line 106
    .line 107
    iget p4, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 108
    .line 109
    iget v0, p3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 110
    sub-float/2addr p4, v0

    .line 111
    .line 112
    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 113
    .line 114
    iget v2, p3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 115
    sub-float/2addr v0, v2

    .line 116
    .line 117
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 118
    .line 119
    iget p3, p3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 120
    sub-float/2addr p1, p3

    .line 121
    add-float/2addr v0, p2

    .line 122
    add-float/2addr p1, p4

    .line 123
    .line 124
    const/high16 p3, 0x3f800000    # 1.0f

    .line 125
    .line 126
    sub-float v2, p3, v5

    .line 127
    mul-float/2addr p2, v2

    .line 128
    mul-float/2addr v0, v5

    .line 129
    add-float/2addr p2, v0

    .line 130
    .line 131
    aput p2, v7, v1

    .line 132
    sub-float/2addr p3, v6

    .line 133
    mul-float/2addr p4, p3

    .line 134
    mul-float/2addr p1, v6

    .line 135
    add-float/2addr p4, p1

    .line 136
    const/4 p1, 0x1

    .line 137
    .line 138
    aput p4, v7, p1

    .line 139
    return-void
.end method

.method public getDrawPath()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 23
    .line 24
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 32
    .line 33
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method public getFinalHeight()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 5
    return v0
.end method

.method public getFinalWidth()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 5
    return v0
.end method

.method public getFinalX()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 5
    return v0
.end method

.method public getFinalY()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 5
    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getKeyFrame(I)Landroidx/constraintlayout/core/motion/MotionPaths;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 9
    return-object p1
.end method

.method public getKeyFrameInfo(I[I)I
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v6, v0, [F

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    const/4 v8, 0x0

    .line 11
    move v9, v8

    .line 12
    move v10, v9

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    move-object v11, v1

    .line 24
    .line 25
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 26
    .line 27
    iget v1, v11, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    .line 28
    .line 29
    if-eq v1, p1, :cond_0

    .line 30
    const/4 v2, -0x1

    .line 31
    .line 32
    if-ne p1, v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    aput v8, p2, v10

    .line 36
    .line 37
    add-int/lit8 v2, v10, 0x1

    .line 38
    .line 39
    aput v1, p2, v2

    .line 40
    .line 41
    add-int/lit8 v1, v10, 0x2

    .line 42
    .line 43
    iget v2, v11, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 44
    .line 45
    aput v2, p2, v1

    .line 46
    int-to-float v1, v2

    .line 47
    .line 48
    const/high16 v2, 0x42c80000    # 100.0f

    .line 49
    div-float/2addr v1, v2

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 52
    .line 53
    aget-object v2, v2, v8

    .line 54
    float-to-double v3, v1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 62
    move-wide v2, v3

    .line 63
    .line 64
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 65
    .line 66
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 67
    const/4 v7, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 71
    .line 72
    add-int/lit8 v1, v10, 0x3

    .line 73
    .line 74
    aget v2, v6, v8

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 78
    move-result v2

    .line 79
    .line 80
    aput v2, p2, v1

    .line 81
    .line 82
    add-int/lit8 v1, v10, 0x4

    .line 83
    const/4 v2, 0x1

    .line 84
    .line 85
    aget v3, v6, v2

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 89
    move-result v3

    .line 90
    .line 91
    aput v3, p2, v1

    .line 92
    .line 93
    instance-of v3, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 94
    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 98
    .line 99
    add-int/lit8 v1, v10, 0x5

    .line 100
    .line 101
    iget v3, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    .line 102
    .line 103
    aput v3, p2, v1

    .line 104
    .line 105
    add-int/lit8 v1, v10, 0x6

    .line 106
    .line 107
    iget v3, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 111
    move-result v3

    .line 112
    .line 113
    aput v3, p2, v1

    .line 114
    .line 115
    add-int/lit8 v1, v10, 0x7

    .line 116
    .line 117
    iget v3, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 121
    move-result v3

    .line 122
    .line 123
    aput v3, p2, v1

    .line 124
    :cond_1
    add-int/2addr v1, v2

    .line 125
    .line 126
    sub-int v2, v1, v10

    .line 127
    .line 128
    aput v2, p2, v10

    .line 129
    .line 130
    add-int/lit8 v9, v9, 0x1

    .line 131
    move v10, v1

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    return v9
.end method

.method public getKeyFrameParameter(IFF)F
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 7
    .line 8
    iget v3, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 9
    sub-float/2addr v1, v3

    .line 10
    .line 11
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 12
    .line 13
    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 14
    sub-float/2addr v0, v4

    .line 15
    .line 16
    iget v5, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 17
    .line 18
    const/high16 v6, 0x40000000    # 2.0f

    .line 19
    div-float/2addr v5, v6

    .line 20
    add-float/2addr v3, v5

    .line 21
    .line 22
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 23
    div-float/2addr v2, v6

    .line 24
    add-float/2addr v4, v2

    .line 25
    float-to-double v5, v1

    .line 26
    float-to-double v7, v0

    .line 27
    .line 28
    .line 29
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 30
    move-result-wide v5

    .line 31
    double-to-float v2, v5

    .line 32
    float-to-double v5, v2

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 38
    .line 39
    cmpg-double v5, v5, v7

    .line 40
    .line 41
    if-gez v5, :cond_0

    .line 42
    .line 43
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 44
    return p1

    .line 45
    :cond_0
    sub-float/2addr p2, v3

    .line 46
    sub-float/2addr p3, v4

    .line 47
    float-to-double v3, p2

    .line 48
    float-to-double v5, p3

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 52
    move-result-wide v3

    .line 53
    double-to-float v3, v3

    .line 54
    const/4 v4, 0x0

    .line 55
    .line 56
    cmpl-float v3, v3, v4

    .line 57
    .line 58
    if-nez v3, :cond_1

    .line 59
    return v4

    .line 60
    .line 61
    :cond_1
    mul-float v3, p2, v1

    .line 62
    .line 63
    mul-float v5, p3, v0

    .line 64
    add-float/2addr v3, v5

    .line 65
    .line 66
    if-eqz p1, :cond_7

    .line 67
    const/4 v5, 0x1

    .line 68
    .line 69
    if-eq p1, v5, :cond_6

    .line 70
    const/4 v2, 0x2

    .line 71
    .line 72
    if-eq p1, v2, :cond_5

    .line 73
    const/4 v2, 0x3

    .line 74
    .line 75
    if-eq p1, v2, :cond_4

    .line 76
    const/4 v1, 0x4

    .line 77
    .line 78
    if-eq p1, v1, :cond_3

    .line 79
    const/4 p2, 0x5

    .line 80
    .line 81
    if-eq p1, p2, :cond_2

    .line 82
    return v4

    .line 83
    :cond_2
    div-float/2addr p3, v0

    .line 84
    return p3

    .line 85
    :cond_3
    div-float/2addr p2, v0

    .line 86
    return p2

    .line 87
    :cond_4
    div-float/2addr p3, v1

    .line 88
    return p3

    .line 89
    :cond_5
    div-float/2addr p2, v1

    .line 90
    return p2

    .line 91
    :cond_6
    mul-float/2addr v2, v2

    .line 92
    mul-float/2addr v3, v3

    .line 93
    sub-float/2addr v2, v3

    .line 94
    float-to-double p1, v2

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 98
    move-result-wide p1

    .line 99
    double-to-float p1, p1

    .line 100
    return p1

    .line 101
    :cond_7
    div-float/2addr v3, v2

    .line 102
    return v3
.end method

.method public getKeyFramePositions([I[F)I
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v9, v2

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v3

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 22
    .line 23
    add-int/lit8 v10, v2, 0x1

    .line 24
    .line 25
    iget v4, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 26
    .line 27
    iget v3, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    .line 28
    .line 29
    mul-int/lit16 v3, v3, 0x3e8

    .line 30
    add-int/2addr v3, v4

    .line 31
    .line 32
    aput v3, p1, v2

    .line 33
    int-to-float v2, v4

    .line 34
    .line 35
    const/high16 v3, 0x42c80000    # 100.0f

    .line 36
    div-float/2addr v2, v3

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 39
    .line 40
    aget-object v3, v3, v1

    .line 41
    float-to-double v4, v2

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 47
    .line 48
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 51
    .line 52
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 53
    move-object v8, p2

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 57
    .line 58
    add-int/lit8 v9, v9, 0x2

    .line 59
    move v2, v10

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return v2
.end method

.method public getPos(D)[D
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 17
    array-length v2, v1

    .line 18
    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 25
    return-object p1
.end method

.method public getPositionKeyframe(IIFF)Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    .locals 8

    .line 1
    .line 2
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 3
    .line 4
    .line 5
    invoke-direct {v3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 8
    .line 9
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 10
    .line 11
    iput v1, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 12
    .line 13
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 14
    .line 15
    iput v2, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 16
    .line 17
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 18
    add-float/2addr v1, v4

    .line 19
    .line 20
    iput v1, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 21
    .line 22
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 23
    add-float/2addr v2, v0

    .line 24
    .line 25
    iput v2, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 26
    .line 27
    new-instance v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 28
    .line 29
    .line 30
    invoke-direct {v4}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 33
    .line 34
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 35
    .line 36
    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 37
    .line 38
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 39
    .line 40
    iput v2, v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 41
    .line 42
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 43
    add-float/2addr v1, v5

    .line 44
    .line 45
    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 46
    .line 47
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 48
    add-float/2addr v2, v0

    .line 49
    .line 50
    iput v2, v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 69
    .line 70
    instance-of v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    check-cast v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 75
    move v1, p1

    .line 76
    move v2, p2

    .line 77
    move v5, p3

    .line 78
    move v6, p4

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->intersects(IILandroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF)Z

    .line 82
    move-result p1

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    return-object v0

    .line 86
    :cond_0
    move v1, p1

    .line 87
    move v2, p2

    .line 88
    move v5, p3

    .line 89
    move v6, p4

    .line 90
    :cond_1
    move p1, v1

    .line 91
    move p2, v2

    .line 92
    move p3, v5

    .line 93
    move p4, v6

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 p1, 0x0

    .line 96
    return-object p1
.end method

.method public getPostLayoutDvDp(FIIFF[F)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 5
    .line 6
    move/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 10
    move-result v1

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 13
    .line 14
    const-string v3, "translationX"

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    move-object v2, v4

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 26
    .line 27
    :goto_0
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 28
    .line 29
    const-string v6, "translationY"

    .line 30
    .line 31
    if-nez v5, :cond_1

    .line 32
    move-object v5, v4

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 40
    .line 41
    :goto_1
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 42
    .line 43
    const-string v8, "rotationZ"

    .line 44
    .line 45
    if-nez v7, :cond_2

    .line 46
    move-object v7, v4

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 54
    .line 55
    :goto_2
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 56
    .line 57
    const-string v10, "scaleX"

    .line 58
    .line 59
    if-nez v9, :cond_3

    .line 60
    move-object v9, v4

    .line 61
    goto :goto_3

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v9

    .line 66
    .line 67
    check-cast v9, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 68
    .line 69
    :goto_3
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 70
    .line 71
    const-string v12, "scaleY"

    .line 72
    .line 73
    if-nez v11, :cond_4

    .line 74
    move-object v11, v4

    .line 75
    goto :goto_4

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v11

    .line 80
    .line 81
    check-cast v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 82
    .line 83
    :goto_4
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 84
    .line 85
    if-nez v13, :cond_5

    .line 86
    move-object v3, v4

    .line 87
    goto :goto_5

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 94
    .line 95
    :goto_5
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 96
    .line 97
    if-nez v13, :cond_6

    .line 98
    move-object v6, v4

    .line 99
    goto :goto_6

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v6

    .line 104
    .line 105
    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 106
    .line 107
    :goto_6
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 108
    .line 109
    if-nez v13, :cond_7

    .line 110
    move-object v8, v4

    .line 111
    goto :goto_7

    .line 112
    .line 113
    .line 114
    :cond_7
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v8

    .line 116
    .line 117
    check-cast v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 118
    .line 119
    :goto_7
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 120
    .line 121
    if-nez v13, :cond_8

    .line 122
    move-object v10, v4

    .line 123
    goto :goto_8

    .line 124
    .line 125
    .line 126
    :cond_8
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v10

    .line 128
    .line 129
    check-cast v10, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 130
    .line 131
    :goto_8
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 132
    .line 133
    if-nez v13, :cond_9

    .line 134
    goto :goto_9

    .line 135
    .line 136
    .line 137
    :cond_9
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object v4

    .line 139
    .line 140
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 141
    .line 142
    :goto_9
    new-instance v12, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    .line 143
    .line 144
    .line 145
    invoke-direct {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 167
    .line 168
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 169
    .line 170
    if-eqz v13, :cond_b

    .line 171
    .line 172
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 173
    array-length v3, v2

    .line 174
    .line 175
    if-lez v3, :cond_a

    .line 176
    float-to-double v3, v1

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 180
    .line 181
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 182
    .line 183
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 187
    .line 188
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 189
    .line 190
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 191
    .line 192
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 193
    .line 194
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 195
    .line 196
    move/from16 v6, p4

    .line 197
    .line 198
    move/from16 v7, p5

    .line 199
    .line 200
    move-object/from16 v8, p6

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 204
    .line 205
    :cond_a
    move/from16 v15, p2

    .line 206
    .line 207
    move/from16 v16, p3

    .line 208
    .line 209
    move/from16 v13, p4

    .line 210
    .line 211
    move/from16 v14, p5

    .line 212
    .line 213
    move-object/from16 v17, p6

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 217
    return-void

    .line 218
    .line 219
    :cond_b
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 220
    const/4 v14, 0x0

    .line 221
    .line 222
    if-eqz v13, :cond_d

    .line 223
    .line 224
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 228
    move-result v1

    .line 229
    .line 230
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 231
    .line 232
    aget-object v2, v2, v14

    .line 233
    float-to-double v3, v1

    .line 234
    .line 235
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 239
    .line 240
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 241
    .line 242
    aget-object v1, v1, v14

    .line 243
    .line 244
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 248
    .line 249
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 250
    .line 251
    aget v1, v1, v14

    .line 252
    .line 253
    :goto_a
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 254
    array-length v3, v2

    .line 255
    .line 256
    if-ge v14, v3, :cond_c

    .line 257
    .line 258
    aget-wide v3, v2, v14

    .line 259
    float-to-double v5, v1

    .line 260
    mul-double/2addr v3, v5

    .line 261
    .line 262
    aput-wide v3, v2, v14

    .line 263
    .line 264
    add-int/lit8 v14, v14, 0x1

    .line 265
    goto :goto_a

    .line 266
    .line 267
    :cond_c
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 268
    .line 269
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 270
    .line 271
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 272
    .line 273
    move/from16 v14, p4

    .line 274
    .line 275
    move/from16 v15, p5

    .line 276
    .line 277
    move-object/from16 v16, p6

    .line 278
    .line 279
    move-object/from16 v17, v1

    .line 280
    .line 281
    move-object/from16 v18, v2

    .line 282
    .line 283
    move-object/from16 v19, v3

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {v13 .. v19}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 287
    move v13, v14

    .line 288
    move v14, v15

    .line 289
    .line 290
    move-object/from16 v17, v16

    .line 291
    .line 292
    move/from16 v15, p2

    .line 293
    .line 294
    move/from16 v16, p3

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 298
    return-void

    .line 299
    .line 300
    :cond_d
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 301
    .line 302
    iget v15, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 303
    .line 304
    move/from16 p1, v14

    .line 305
    .line 306
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 307
    .line 308
    iget v0, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 309
    sub-float/2addr v15, v0

    .line 310
    .line 311
    iget v0, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 312
    .line 313
    move/from16 v16, v0

    .line 314
    .line 315
    iget v0, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 316
    .line 317
    sub-float v0, v16, v0

    .line 318
    .line 319
    move/from16 v16, v0

    .line 320
    .line 321
    iget v0, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 322
    .line 323
    move/from16 v17, v0

    .line 324
    .line 325
    iget v0, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 326
    .line 327
    sub-float v0, v17, v0

    .line 328
    .line 329
    iget v13, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 330
    .line 331
    iget v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 332
    sub-float/2addr v13, v14

    .line 333
    add-float/2addr v0, v15

    .line 334
    .line 335
    add-float v13, v16, v13

    .line 336
    .line 337
    const/high16 v14, 0x3f800000    # 1.0f

    .line 338
    .line 339
    sub-float v17, v14, p4

    .line 340
    .line 341
    mul-float v15, v15, v17

    .line 342
    .line 343
    mul-float v0, v0, p4

    .line 344
    add-float/2addr v15, v0

    .line 345
    .line 346
    aput v15, p6, p1

    .line 347
    .line 348
    sub-float v14, v14, p5

    .line 349
    .line 350
    mul-float v0, v16, v14

    .line 351
    .line 352
    mul-float v13, v13, p5

    .line 353
    add-float/2addr v0, v13

    .line 354
    const/4 v13, 0x1

    .line 355
    .line 356
    aput v0, p6, v13

    .line 357
    .line 358
    .line 359
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 378
    .line 379
    move/from16 v15, p2

    .line 380
    .line 381
    move/from16 v16, p3

    .line 382
    .line 383
    move/from16 v13, p4

    .line 384
    .line 385
    move/from16 v14, p5

    .line 386
    .line 387
    move-object/from16 v17, p6

    .line 388
    .line 389
    .line 390
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 391
    return-void
.end method

.method public getStartHeight()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 5
    return v0
.end method

.method public getStartWidth()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 5
    return v0
.end method

.method public getStartX()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 5
    return v0
.end method

.method public getStartY()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 5
    return v0
.end method

.method public getTransformPivotTarget()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 3
    return v0
.end method

.method public getView()Landroidx/constraintlayout/core/motion/MotionWidget;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 3
    return-object v0
.end method

.method public interpolate(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v3, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 11
    move-result v1

    .line 12
    .line 13
    iget v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    .line 14
    const/4 v8, 0x0

    .line 15
    .line 16
    const/high16 v9, 0x3f800000    # 1.0f

    .line 17
    const/4 v10, -0x1

    .line 18
    .line 19
    if-eq v3, v10, :cond_3

    .line 20
    int-to-float v3, v3

    .line 21
    .line 22
    div-float v3, v9, v3

    .line 23
    .line 24
    div-float v4, v1, v3

    .line 25
    float-to-double v4, v4

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 29
    move-result-wide v4

    .line 30
    double-to-float v4, v4

    .line 31
    mul-float/2addr v4, v3

    .line 32
    rem-float/2addr v1, v3

    .line 33
    div-float/2addr v1, v3

    .line 34
    .line 35
    iget v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    .line 36
    .line 37
    .line 38
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 39
    move-result v5

    .line 40
    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    iget v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    .line 44
    add-float/2addr v1, v5

    .line 45
    rem-float/2addr v1, v9

    .line 46
    .line 47
    :cond_0
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-interface {v5, v1}, Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;->getInterpolation(F)F

    .line 53
    move-result v1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    float-to-double v5, v1

    .line 56
    .line 57
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 58
    .line 59
    cmpl-double v1, v5, v11

    .line 60
    .line 61
    if-lez v1, :cond_2

    .line 62
    move v1, v9

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v1, v8

    .line 65
    :goto_0
    mul-float/2addr v1, v3

    .line 66
    add-float/2addr v1, v4

    .line 67
    :cond_3
    move v3, v1

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v4

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 98
    const/4 v11, 0x1

    .line 99
    const/4 v12, 0x0

    .line 100
    .line 101
    if-eqz v1, :cond_d

    .line 102
    .line 103
    aget-object v1, v1, v12

    .line 104
    float-to-double v13, v3

    .line 105
    .line 106
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 110
    .line 111
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 112
    .line 113
    aget-object v1, v1, v12

    .line 114
    .line 115
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 119
    .line 120
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 121
    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 125
    array-length v5, v4

    .line 126
    .line 127
    if-lez v5, :cond_5

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 131
    .line 132
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 133
    .line 134
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 138
    .line 139
    :cond_5
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 140
    .line 141
    if-nez v1, :cond_6

    .line 142
    .line 143
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 144
    .line 145
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 146
    .line 147
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 148
    .line 149
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 150
    const/4 v7, 0x0

    .line 151
    move v15, v3

    .line 152
    move-object v3, v2

    .line 153
    move v2, v15

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setView(FLandroidx/constraintlayout/core/motion/MotionWidget;[I[D[D[D)V

    .line 157
    move-object v15, v3

    .line 158
    move v3, v2

    .line 159
    move-object v2, v15

    .line 160
    .line 161
    :cond_6
    iget v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 162
    .line 163
    if-eq v1, v10, :cond_8

    .line 164
    .line 165
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 166
    .line 167
    if-nez v1, :cond_7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    iget v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 180
    .line 181
    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    .line 187
    move-result v1

    .line 188
    .line 189
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    .line 193
    move-result v4

    .line 194
    add-int/2addr v1, v4

    .line 195
    int-to-float v1, v1

    .line 196
    .line 197
    const/high16 v4, 0x40000000    # 2.0f

    .line 198
    div-float/2addr v1, v4

    .line 199
    .line 200
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    .line 204
    move-result v5

    .line 205
    .line 206
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    .line 210
    move-result v6

    .line 211
    add-int/2addr v5, v6

    .line 212
    int-to-float v5, v5

    .line 213
    div-float/2addr v5, v4

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    .line 217
    move-result v4

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    .line 221
    move-result v6

    .line 222
    sub-int/2addr v4, v6

    .line 223
    .line 224
    if-lez v4, :cond_8

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    .line 228
    move-result v4

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    .line 232
    move-result v6

    .line 233
    sub-int/2addr v4, v6

    .line 234
    .line 235
    if-lez v4, :cond_8

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    .line 239
    move-result v4

    .line 240
    int-to-float v4, v4

    .line 241
    sub-float/2addr v5, v4

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    .line 245
    move-result v4

    .line 246
    int-to-float v4, v4

    .line 247
    sub-float/2addr v1, v4

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotX(F)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotY(F)V

    .line 254
    :cond_8
    move v1, v11

    .line 255
    .line 256
    :goto_2
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 257
    array-length v5, v4

    .line 258
    .line 259
    if-ge v1, v5, :cond_9

    .line 260
    .line 261
    aget-object v4, v4, v1

    .line 262
    .line 263
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v13, v14, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 267
    .line 268
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 269
    .line 270
    iget-object v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    .line 271
    .line 272
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 273
    .line 274
    add-int/lit8 v6, v1, -0x1

    .line 275
    .line 276
    aget-object v5, v5, v6

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-result-object v4

    .line 281
    .line 282
    check-cast v4, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 283
    .line 284
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v2, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    .line 288
    .line 289
    add-int/lit8 v1, v1, 0x1

    .line 290
    goto :goto_2

    .line 291
    .line 292
    :cond_9
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 293
    .line 294
    iget v4, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    .line 295
    .line 296
    if-nez v4, :cond_c

    .line 297
    .line 298
    cmpg-float v4, v3, v8

    .line 299
    .line 300
    if-gtz v4, :cond_a

    .line 301
    .line 302
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    .line 306
    goto :goto_3

    .line 307
    .line 308
    :cond_a
    cmpl-float v4, v3, v9

    .line 309
    .line 310
    if-ltz v4, :cond_b

    .line 311
    .line 312
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 313
    .line 314
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    .line 318
    goto :goto_3

    .line 319
    .line 320
    :cond_b
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 321
    .line 322
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    .line 323
    .line 324
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    .line 325
    .line 326
    if-eq v4, v1, :cond_c

    .line 327
    const/4 v1, 0x4

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    .line 331
    .line 332
    :cond_c
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 333
    .line 334
    if-eqz v1, :cond_e

    .line 335
    move v1, v12

    .line 336
    .line 337
    :goto_4
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 338
    array-length v5, v4

    .line 339
    .line 340
    if-ge v1, v5, :cond_e

    .line 341
    .line 342
    aget-object v4, v4, v1

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v3, v2}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 346
    .line 347
    add-int/lit8 v1, v1, 0x1

    .line 348
    goto :goto_4

    .line 349
    .line 350
    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 351
    .line 352
    iget v4, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 353
    .line 354
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 355
    .line 356
    iget v6, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 357
    sub-float/2addr v6, v4

    .line 358
    mul-float/2addr v6, v3

    .line 359
    add-float/2addr v4, v6

    .line 360
    .line 361
    iget v6, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 362
    .line 363
    iget v7, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 364
    sub-float/2addr v7, v6

    .line 365
    mul-float/2addr v7, v3

    .line 366
    add-float/2addr v6, v7

    .line 367
    .line 368
    iget v7, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 369
    .line 370
    iget v8, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 371
    sub-float/2addr v8, v7

    .line 372
    mul-float/2addr v8, v3

    .line 373
    add-float/2addr v7, v8

    .line 374
    .line 375
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 376
    .line 377
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 378
    sub-float/2addr v5, v1

    .line 379
    mul-float/2addr v5, v3

    .line 380
    add-float/2addr v1, v5

    .line 381
    .line 382
    const/high16 v5, 0x3f000000    # 0.5f

    .line 383
    add-float/2addr v4, v5

    .line 384
    float-to-int v8, v4

    .line 385
    add-float/2addr v6, v5

    .line 386
    float-to-int v5, v6

    .line 387
    add-float/2addr v4, v7

    .line 388
    float-to-int v4, v4

    .line 389
    add-float/2addr v6, v1

    .line 390
    float-to-int v1, v6

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v8, v5, v4, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    .line 394
    .line 395
    :cond_e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 396
    .line 397
    if-eqz v1, :cond_10

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 401
    move-result-object v1

    .line 402
    .line 403
    .line 404
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 405
    move-result-object v8

    .line 406
    .line 407
    .line 408
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    move-result v1

    .line 410
    .line 411
    if-eqz v1, :cond_10

    .line 412
    .line 413
    .line 414
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    move-result-object v1

    .line 416
    .line 417
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 418
    .line 419
    instance-of v4, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    .line 420
    .line 421
    if-eqz v4, :cond_f

    .line 422
    .line 423
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    .line 424
    .line 425
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 426
    .line 427
    aget-wide v5, v4, v12

    .line 428
    .line 429
    aget-wide v9, v4, v11

    .line 430
    move-wide v4, v5

    .line 431
    move-wide v6, v9

    .line 432
    .line 433
    .line 434
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroidx/constraintlayout/core/motion/MotionWidget;FDD)V

    .line 435
    goto :goto_5

    .line 436
    .line 437
    .line 438
    :cond_f
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V

    .line 439
    goto :goto_5

    .line 440
    :cond_10
    return v12
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public positionKeyframe(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;FF[Ljava/lang/String;[F)V
    .locals 8

    .line 1
    .line 2
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 3
    .line 4
    .line 5
    invoke-direct {v2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 8
    .line 9
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 10
    .line 11
    iput v1, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 12
    .line 13
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 14
    .line 15
    iput v3, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 16
    .line 17
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 18
    add-float/2addr v1, v4

    .line 19
    .line 20
    iput v1, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 21
    .line 22
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 23
    add-float/2addr v3, v0

    .line 24
    .line 25
    iput v3, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 26
    .line 27
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 33
    .line 34
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 35
    .line 36
    iput v1, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 37
    .line 38
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 39
    .line 40
    iput v4, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 41
    .line 42
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 43
    add-float/2addr v1, v5

    .line 44
    .line 45
    iput v1, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 46
    .line 47
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 48
    add-float/2addr v4, v0

    .line 49
    .line 50
    iput v4, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 51
    move-object v1, p1

    .line 52
    move-object v0, p2

    .line 53
    move v4, p3

    .line 54
    move v5, p4

    .line 55
    move-object v6, p5

    .line 56
    move-object v7, p6

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    .line 60
    return-void
.end method

.method public rotate(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/utils/Rect;III)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    .line 4
    if-eq p3, v0, :cond_3

    .line 5
    .line 6
    if-eq p3, v1, :cond_2

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-eq p3, v0, :cond_1

    .line 10
    const/4 p5, 0x4

    .line 11
    .line 12
    if-eq p3, p5, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 16
    .line 17
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 18
    add-int/2addr p3, p5

    .line 19
    .line 20
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 21
    .line 22
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 23
    add-int/2addr p5, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 27
    move-result v0

    .line 28
    add-int/2addr p5, v0

    .line 29
    div-int/2addr p5, v1

    .line 30
    sub-int/2addr p4, p5

    .line 31
    .line 32
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 36
    move-result p4

    .line 37
    sub-int/2addr p3, p4

    .line 38
    div-int/2addr p3, v1

    .line 39
    .line 40
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 41
    .line 42
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 46
    move-result p4

    .line 47
    add-int/2addr p3, p4

    .line 48
    .line 49
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 50
    .line 51
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 55
    move-result p1

    .line 56
    add-int/2addr p3, p1

    .line 57
    .line 58
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 59
    return-void

    .line 60
    .line 61
    :cond_1
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 62
    .line 63
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 64
    add-int/2addr p3, p4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 68
    move-result p4

    .line 69
    div-int/2addr p4, v1

    .line 70
    .line 71
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 72
    add-int/2addr p4, v0

    .line 73
    .line 74
    div-int/lit8 v0, p3, 0x2

    .line 75
    sub-int/2addr p4, v0

    .line 76
    .line 77
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 81
    move-result p4

    .line 82
    add-int/2addr p3, p4

    .line 83
    div-int/2addr p3, v1

    .line 84
    sub-int/2addr p5, p3

    .line 85
    .line 86
    iput p5, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 87
    .line 88
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 92
    move-result p4

    .line 93
    add-int/2addr p3, p4

    .line 94
    .line 95
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 96
    .line 97
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 101
    move-result p1

    .line 102
    add-int/2addr p3, p1

    .line 103
    .line 104
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 105
    return-void

    .line 106
    .line 107
    :cond_2
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 108
    .line 109
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 110
    add-int/2addr p3, p5

    .line 111
    .line 112
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 113
    .line 114
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 115
    add-int/2addr p5, v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 119
    move-result v0

    .line 120
    add-int/2addr p5, v0

    .line 121
    div-int/2addr p5, v1

    .line 122
    sub-int/2addr p4, p5

    .line 123
    .line 124
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 128
    move-result p4

    .line 129
    sub-int/2addr p3, p4

    .line 130
    div-int/2addr p3, v1

    .line 131
    .line 132
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 133
    .line 134
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 138
    move-result p4

    .line 139
    add-int/2addr p3, p4

    .line 140
    .line 141
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 142
    .line 143
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 147
    move-result p1

    .line 148
    add-int/2addr p3, p1

    .line 149
    .line 150
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 151
    return-void

    .line 152
    .line 153
    :cond_3
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 154
    .line 155
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 156
    add-int/2addr p3, p4

    .line 157
    .line 158
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 159
    .line 160
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 161
    add-int/2addr p4, v0

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 165
    move-result v0

    .line 166
    sub-int/2addr p4, v0

    .line 167
    div-int/2addr p4, v1

    .line 168
    .line 169
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 173
    move-result p4

    .line 174
    add-int/2addr p3, p4

    .line 175
    div-int/2addr p3, v1

    .line 176
    sub-int/2addr p5, p3

    .line 177
    .line 178
    iput p5, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 179
    .line 180
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 184
    move-result p4

    .line 185
    add-int/2addr p3, p4

    .line 186
    .line 187
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 188
    .line 189
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 193
    move-result p1

    .line 194
    add-int/2addr p3, p1

    .line 195
    .line 196
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 197
    return-void
.end method

.method public setBothStates(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 6
    .line 7
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 24
    move-result v3

    .line 25
    int-to-float v3, v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 29
    move-result v4

    .line 30
    int-to-float v4, v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 54
    move-result v4

    .line 55
    int-to-float v4, v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 69
    return-void
.end method

.method public setDrawPath(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 5
    return-void
.end method

.method public setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 7
    .line 8
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/Motion;->readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 32
    move-result v4

    .line 33
    int-to-float v4, v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 47
    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 3
    return-void
.end method

.method public setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 6
    .line 7
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 21
    move-result v3

    .line 22
    int-to-float v3, v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 41
    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/core/motion/utils/ViewState;Landroidx/constraintlayout/core/motion/MotionWidget;III)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 6
    .line 7
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 8
    .line 9
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    if-eq p3, v1, :cond_1

    .line 17
    .line 18
    if-eq p3, v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    .line 22
    .line 23
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    .line 24
    add-int/2addr p4, v1

    .line 25
    .line 26
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    .line 27
    .line 28
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    .line 29
    add-int/2addr v1, v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    .line 33
    move-result v3

    .line 34
    add-int/2addr v1, v3

    .line 35
    div-int/2addr v1, v2

    .line 36
    sub-int/2addr p5, v1

    .line 37
    .line 38
    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    .line 42
    move-result p5

    .line 43
    sub-int/2addr p4, p5

    .line 44
    div-int/2addr p4, v2

    .line 45
    .line 46
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 47
    .line 48
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    .line 52
    move-result p5

    .line 53
    add-int/2addr p4, p5

    .line 54
    .line 55
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 56
    .line 57
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    .line 61
    move-result p5

    .line 62
    add-int/2addr p4, p5

    .line 63
    .line 64
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    .line 68
    .line 69
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    .line 70
    add-int/2addr p5, v1

    .line 71
    .line 72
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    .line 73
    .line 74
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    .line 75
    add-int/2addr v1, v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    .line 79
    move-result v3

    .line 80
    sub-int/2addr v1, v3

    .line 81
    div-int/2addr v1, v2

    .line 82
    .line 83
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    .line 87
    move-result v1

    .line 88
    add-int/2addr p5, v1

    .line 89
    div-int/2addr p5, v2

    .line 90
    sub-int/2addr p4, p5

    .line 91
    .line 92
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 93
    .line 94
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    .line 98
    move-result p5

    .line 99
    add-int/2addr p4, p5

    .line 100
    .line 101
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 102
    .line 103
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    .line 107
    move-result p5

    .line 108
    add-int/2addr p4, p5

    .line 109
    .line 110
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 111
    .line 112
    :goto_0
    iget-object p4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 113
    .line 114
    iget p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 115
    int-to-float p5, p5

    .line 116
    .line 117
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 118
    int-to-float v1, v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 122
    move-result v2

    .line 123
    int-to-float v2, v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 127
    move-result v3

    .line 128
    int-to-float v3, v3

    .line 129
    .line 130
    .line 131
    invoke-virtual {p4, p5, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 132
    .line 133
    iget-object p4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 134
    .line 135
    iget p1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->rotation:F

    .line 136
    .line 137
    .line 138
    invoke-virtual {p4, v0, p2, p3, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V

    .line 139
    return-void
.end method

.method public setTransformPivotTarget(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 6
    return-void
.end method

.method public setValue(IF)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public setValue(II)Z
    .locals 2

    const/16 v0, 0x1fd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 p2, 0x2c0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/Motion;->setPathMotionArc(I)V

    return v1
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 3

    const/16 v0, 0x2c1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_INTERPOLATOR  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 5
    invoke-static {p1, p2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    :cond_0
    return v1
.end method

.method public setValue(IZ)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 3
    return-void
.end method

.method public setup(IIFJ)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-wide/from16 v1, p4

    .line 5
    .line 6
    new-instance v3, Ljava/util/HashSet;

    .line 7
    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    new-instance v3, Ljava/util/HashSet;

    .line 12
    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    new-instance v4, Ljava/util/HashSet;

    .line 17
    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    new-instance v5, Ljava/util/HashSet;

    .line 22
    .line 23
    .line 24
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    new-instance v6, Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    iget v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 32
    const/4 v8, -0x1

    .line 33
    .line 34
    if-eq v7, v8, :cond_0

    .line 35
    .line 36
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 37
    .line 38
    iput v7, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 39
    .line 40
    :cond_0
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 41
    .line 42
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v9, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 46
    .line 47
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v7, :cond_7

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v7

    .line 54
    const/4 v10, 0x0

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v11

    .line 59
    .line 60
    if-eqz v11, :cond_8

    .line 61
    .line 62
    .line 63
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v11

    .line 65
    .line 66
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 67
    .line 68
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 69
    .line 70
    if-eqz v12, :cond_2

    .line 71
    .line 72
    move-object/from16 v16, v11

    .line 73
    .line 74
    check-cast v16, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 75
    .line 76
    new-instance v13, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 77
    .line 78
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 79
    .line 80
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 81
    .line 82
    move/from16 v14, p1

    .line 83
    .line 84
    move/from16 v15, p2

    .line 85
    .line 86
    move-object/from16 v17, v11

    .line 87
    .line 88
    move-object/from16 v18, v12

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v13 .. v18}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 92
    .line 93
    move-object/from16 v11, v16

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v13}, Landroidx/constraintlayout/core/motion/Motion;->insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 97
    .line 98
    iget v11, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    .line 99
    .line 100
    if-eq v11, v8, :cond_1

    .line 101
    .line 102
    iput v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_2
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    .line 106
    .line 107
    if-eqz v12, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11, v5}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_3
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    .line 114
    .line 115
    if-eqz v12, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v3}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    .line 119
    goto :goto_0

    .line 120
    .line 121
    :cond_4
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 122
    .line 123
    if-eqz v12, :cond_6

    .line 124
    .line 125
    if-nez v10, :cond_5

    .line 126
    .line 127
    new-instance v10, Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    :cond_5
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_0

    .line 137
    .line 138
    .line 139
    :cond_6
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setInterpolation(Ljava/util/HashMap;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    .line 143
    goto :goto_0

    .line 144
    :cond_7
    const/4 v10, 0x0

    .line 145
    :cond_8
    const/4 v7, 0x0

    .line 146
    .line 147
    if-eqz v10, :cond_9

    .line 148
    .line 149
    new-array v11, v7, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    move-result-object v10

    .line 154
    .line 155
    check-cast v10, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 156
    .line 157
    iput-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 158
    .line 159
    .line 160
    :cond_9
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 161
    move-result v10

    .line 162
    .line 163
    const-string v11, ","

    .line 164
    .line 165
    const-string v12, "CUSTOM,"

    .line 166
    const/4 v13, 0x1

    .line 167
    .line 168
    if-nez v10, :cond_14

    .line 169
    .line 170
    new-instance v10, Ljava/util/HashMap;

    .line 171
    .line 172
    .line 173
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 174
    .line 175
    iput-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object v10

    .line 180
    .line 181
    .line 182
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v14

    .line 184
    .line 185
    if-eqz v14, :cond_f

    .line 186
    .line 187
    .line 188
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v14

    .line 190
    .line 191
    check-cast v14, Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 195
    move-result v15

    .line 196
    .line 197
    if-eqz v15, :cond_d

    .line 198
    .line 199
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    .line 200
    .line 201
    .line 202
    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 206
    move-result-object v16

    .line 207
    .line 208
    aget-object v9, v16, v13

    .line 209
    .line 210
    move/from16 p1, v13

    .line 211
    .line 212
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    move-result-object v13

    .line 217
    .line 218
    .line 219
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    move-result v16

    .line 221
    .line 222
    if-eqz v16, :cond_c

    .line 223
    .line 224
    .line 225
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    move-result-object v16

    .line 227
    .line 228
    move-object/from16 v8, v16

    .line 229
    .line 230
    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 231
    .line 232
    iget-object v7, v8, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    .line 233
    .line 234
    if-nez v7, :cond_b

    .line 235
    :cond_a
    :goto_3
    const/4 v7, 0x0

    .line 236
    const/4 v8, -0x1

    .line 237
    goto :goto_2

    .line 238
    .line 239
    .line 240
    :cond_b
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-result-object v7

    .line 242
    .line 243
    check-cast v7, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 244
    .line 245
    if-eqz v7, :cond_a

    .line 246
    .line 247
    iget v8, v8, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 248
    .line 249
    .line 250
    invoke-virtual {v15, v8, v7}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    .line 251
    goto :goto_3

    .line 252
    .line 253
    .line 254
    :cond_c
    invoke-static {v14, v15}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 255
    move-result-object v7

    .line 256
    goto :goto_4

    .line 257
    .line 258
    :cond_d
    move/from16 p1, v13

    .line 259
    .line 260
    .line 261
    invoke-static {v14, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 262
    move-result-object v7

    .line 263
    .line 264
    :goto_4
    if-nez v7, :cond_e

    .line 265
    .line 266
    :goto_5
    move/from16 v13, p1

    .line 267
    const/4 v7, 0x0

    .line 268
    const/4 v8, -0x1

    .line 269
    goto :goto_1

    .line 270
    .line 271
    .line 272
    :cond_e
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 273
    .line 274
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    goto :goto_5

    .line 279
    .line 280
    :cond_f
    move/from16 p1, v13

    .line 281
    .line 282
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 283
    .line 284
    if-eqz v7, :cond_11

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 288
    move-result-object v7

    .line 289
    .line 290
    .line 291
    :cond_10
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    move-result v8

    .line 293
    .line 294
    if-eqz v8, :cond_11

    .line 295
    .line 296
    .line 297
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    move-result-object v8

    .line 299
    .line 300
    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 301
    .line 302
    instance-of v9, v8, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;

    .line 303
    .line 304
    if-eqz v9, :cond_10

    .line 305
    .line 306
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKey;->addValues(Ljava/util/HashMap;)V

    .line 310
    goto :goto_6

    .line 311
    .line 312
    :cond_11
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 313
    .line 314
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 315
    const/4 v9, 0x0

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 319
    .line 320
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 321
    .line 322
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 323
    .line 324
    const/16 v9, 0x64

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 328
    .line 329
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 333
    move-result-object v7

    .line 334
    .line 335
    .line 336
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 337
    move-result-object v7

    .line 338
    .line 339
    .line 340
    :cond_12
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    move-result v8

    .line 342
    .line 343
    if-eqz v8, :cond_15

    .line 344
    .line 345
    .line 346
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    move-result-object v8

    .line 348
    .line 349
    check-cast v8, Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 353
    move-result v9

    .line 354
    .line 355
    if-eqz v9, :cond_13

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    move-result-object v9

    .line 360
    .line 361
    check-cast v9, Ljava/lang/Integer;

    .line 362
    .line 363
    if-eqz v9, :cond_13

    .line 364
    .line 365
    .line 366
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 367
    move-result v9

    .line 368
    goto :goto_8

    .line 369
    :cond_13
    const/4 v9, 0x0

    .line 370
    .line 371
    :goto_8
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move-result-object v8

    .line 376
    .line 377
    check-cast v8, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 378
    .line 379
    if-eqz v8, :cond_12

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    .line 383
    goto :goto_7

    .line 384
    .line 385
    :cond_14
    move/from16 p1, v13

    .line 386
    .line 387
    .line 388
    :cond_15
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 389
    move-result v7

    .line 390
    .line 391
    if-nez v7, :cond_21

    .line 392
    .line 393
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 394
    .line 395
    if-nez v7, :cond_16

    .line 396
    .line 397
    new-instance v7, Ljava/util/HashMap;

    .line 398
    .line 399
    .line 400
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 401
    .line 402
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 403
    .line 404
    .line 405
    :cond_16
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 406
    move-result-object v3

    .line 407
    .line 408
    .line 409
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    move-result v7

    .line 411
    .line 412
    if-eqz v7, :cond_1d

    .line 413
    .line 414
    .line 415
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    move-result-object v7

    .line 417
    .line 418
    check-cast v7, Ljava/lang/String;

    .line 419
    .line 420
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 424
    move-result v8

    .line 425
    .line 426
    if-eqz v8, :cond_17

    .line 427
    goto :goto_9

    .line 428
    .line 429
    .line 430
    :cond_17
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 431
    move-result v8

    .line 432
    .line 433
    if-eqz v8, :cond_1b

    .line 434
    .line 435
    new-instance v8, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    .line 436
    .line 437
    .line 438
    invoke-direct {v8}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 442
    move-result-object v9

    .line 443
    .line 444
    aget-object v9, v9, p1

    .line 445
    .line 446
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 450
    move-result-object v10

    .line 451
    .line 452
    .line 453
    :cond_18
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 454
    move-result v13

    .line 455
    .line 456
    if-eqz v13, :cond_1a

    .line 457
    .line 458
    .line 459
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 460
    move-result-object v13

    .line 461
    .line 462
    check-cast v13, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 463
    .line 464
    iget-object v14, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    .line 465
    .line 466
    if-nez v14, :cond_19

    .line 467
    goto :goto_a

    .line 468
    .line 469
    .line 470
    :cond_19
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    move-result-object v14

    .line 472
    .line 473
    check-cast v14, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 474
    .line 475
    if-eqz v14, :cond_18

    .line 476
    .line 477
    iget v13, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 478
    .line 479
    .line 480
    invoke-virtual {v8, v13, v14}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    .line 481
    goto :goto_a

    .line 482
    .line 483
    .line 484
    :cond_1a
    invoke-static {v7, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 485
    move-result-object v8

    .line 486
    goto :goto_b

    .line 487
    .line 488
    .line 489
    :cond_1b
    invoke-static {v7, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 490
    move-result-object v8

    .line 491
    .line 492
    :goto_b
    if-nez v8, :cond_1c

    .line 493
    goto :goto_9

    .line 494
    .line 495
    .line 496
    :cond_1c
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 497
    goto :goto_9

    .line 498
    .line 499
    :cond_1d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 500
    .line 501
    if-eqz v1, :cond_1f

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 505
    move-result-object v1

    .line 506
    .line 507
    .line 508
    :cond_1e
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    move-result v2

    .line 510
    .line 511
    if-eqz v2, :cond_1f

    .line 512
    .line 513
    .line 514
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    move-result-object v2

    .line 516
    .line 517
    check-cast v2, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 518
    .line 519
    instance-of v3, v2, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    .line 520
    .line 521
    if-eqz v3, :cond_1e

    .line 522
    .line 523
    check-cast v2, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    .line 524
    .line 525
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    .line 529
    goto :goto_c

    .line 530
    .line 531
    :cond_1f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 535
    move-result-object v1

    .line 536
    .line 537
    .line 538
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 539
    move-result-object v1

    .line 540
    .line 541
    .line 542
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    move-result v2

    .line 544
    .line 545
    if-eqz v2, :cond_21

    .line 546
    .line 547
    .line 548
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    move-result-object v2

    .line 550
    .line 551
    check-cast v2, Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 555
    move-result v3

    .line 556
    .line 557
    if-eqz v3, :cond_20

    .line 558
    .line 559
    .line 560
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    move-result-object v3

    .line 562
    .line 563
    check-cast v3, Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 567
    move-result v3

    .line 568
    goto :goto_e

    .line 569
    :cond_20
    const/4 v3, 0x0

    .line 570
    .line 571
    :goto_e
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    move-result-object v2

    .line 576
    .line 577
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    .line 581
    goto :goto_d

    .line 582
    .line 583
    :cond_21
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 587
    move-result v1

    .line 588
    .line 589
    add-int/lit8 v2, v1, 0x2

    .line 590
    .line 591
    new-array v3, v2, [Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 592
    .line 593
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 594
    const/4 v9, 0x0

    .line 595
    .line 596
    aput-object v6, v3, v9

    .line 597
    .line 598
    add-int/lit8 v1, v1, 0x1

    .line 599
    .line 600
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 601
    .line 602
    aput-object v6, v3, v1

    .line 603
    .line 604
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 608
    move-result v1

    .line 609
    .line 610
    if-lez v1, :cond_22

    .line 611
    .line 612
    iget v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 613
    .line 614
    sget v6, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    .line 615
    .line 616
    if-ne v1, v6, :cond_22

    .line 617
    .line 618
    iput v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 619
    .line 620
    :cond_22
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 624
    move-result-object v1

    .line 625
    .line 626
    move/from16 v6, p1

    .line 627
    .line 628
    .line 629
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 630
    move-result v7

    .line 631
    .line 632
    if-eqz v7, :cond_23

    .line 633
    .line 634
    .line 635
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 636
    move-result-object v7

    .line 637
    .line 638
    check-cast v7, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 639
    .line 640
    add-int/lit8 v8, v6, 0x1

    .line 641
    .line 642
    aput-object v7, v3, v6

    .line 643
    move v6, v8

    .line 644
    goto :goto_f

    .line 645
    .line 646
    :cond_23
    new-instance v1, Ljava/util/HashSet;

    .line 647
    .line 648
    .line 649
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 650
    .line 651
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 652
    .line 653
    iget-object v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 657
    move-result-object v6

    .line 658
    .line 659
    .line 660
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 661
    move-result-object v6

    .line 662
    .line 663
    .line 664
    :cond_24
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 665
    move-result v7

    .line 666
    .line 667
    if-eqz v7, :cond_25

    .line 668
    .line 669
    .line 670
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 671
    move-result-object v7

    .line 672
    .line 673
    check-cast v7, Ljava/lang/String;

    .line 674
    .line 675
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 676
    .line 677
    iget-object v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 681
    move-result v8

    .line 682
    .line 683
    if-eqz v8, :cond_24

    .line 684
    .line 685
    new-instance v8, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    move-result-object v8

    .line 699
    .line 700
    .line 701
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 702
    move-result v8

    .line 703
    .line 704
    if-nez v8, :cond_24

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 708
    goto :goto_10

    .line 709
    :cond_25
    const/4 v9, 0x0

    .line 710
    .line 711
    new-array v4, v9, [Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 715
    move-result-object v1

    .line 716
    .line 717
    check-cast v1, [Ljava/lang/String;

    .line 718
    .line 719
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 720
    array-length v1, v1

    .line 721
    .line 722
    new-array v1, v1, [I

    .line 723
    .line 724
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    .line 725
    const/4 v1, 0x0

    .line 726
    .line 727
    :goto_11
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 728
    array-length v6, v4

    .line 729
    .line 730
    if-ge v1, v6, :cond_28

    .line 731
    .line 732
    aget-object v4, v4, v1

    .line 733
    .line 734
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    .line 735
    const/4 v9, 0x0

    .line 736
    .line 737
    aput v9, v6, v1

    .line 738
    const/4 v6, 0x0

    .line 739
    .line 740
    :goto_12
    if-ge v6, v2, :cond_27

    .line 741
    .line 742
    aget-object v7, v3, v6

    .line 743
    .line 744
    iget-object v7, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 748
    move-result v7

    .line 749
    .line 750
    if-eqz v7, :cond_26

    .line 751
    .line 752
    aget-object v7, v3, v6

    .line 753
    .line 754
    iget-object v7, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    move-result-object v7

    .line 759
    .line 760
    check-cast v7, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 761
    .line 762
    if-eqz v7, :cond_26

    .line 763
    .line 764
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    .line 765
    .line 766
    aget v6, v4, v1

    .line 767
    .line 768
    .line 769
    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    .line 770
    move-result v7

    .line 771
    add-int/2addr v6, v7

    .line 772
    .line 773
    aput v6, v4, v1

    .line 774
    goto :goto_13

    .line 775
    .line 776
    :cond_26
    add-int/lit8 v6, v6, 0x1

    .line 777
    goto :goto_12

    .line 778
    .line 779
    :cond_27
    :goto_13
    add-int/lit8 v1, v1, 0x1

    .line 780
    goto :goto_11

    .line 781
    :cond_28
    const/4 v9, 0x0

    .line 782
    .line 783
    aget-object v1, v3, v9

    .line 784
    .line 785
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 786
    const/4 v6, -0x1

    .line 787
    .line 788
    if-eq v1, v6, :cond_29

    .line 789
    .line 790
    move/from16 v1, p1

    .line 791
    goto :goto_14

    .line 792
    :cond_29
    const/4 v1, 0x0

    .line 793
    :goto_14
    array-length v4, v4

    .line 794
    .line 795
    const/16 v6, 0x12

    .line 796
    add-int/2addr v6, v4

    .line 797
    .line 798
    new-array v4, v6, [Z

    .line 799
    .line 800
    move/from16 v7, p1

    .line 801
    .line 802
    :goto_15
    if-ge v7, v2, :cond_2a

    .line 803
    .line 804
    aget-object v8, v3, v7

    .line 805
    .line 806
    add-int/lit8 v9, v7, -0x1

    .line 807
    .line 808
    aget-object v9, v3, v9

    .line 809
    .line 810
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v8, v9, v4, v10, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->different(Landroidx/constraintlayout/core/motion/MotionPaths;[Z[Ljava/lang/String;Z)V

    .line 814
    .line 815
    add-int/lit8 v7, v7, 0x1

    .line 816
    goto :goto_15

    .line 817
    .line 818
    :cond_2a
    move/from16 v7, p1

    .line 819
    const/4 v1, 0x0

    .line 820
    .line 821
    :goto_16
    if-ge v7, v6, :cond_2c

    .line 822
    .line 823
    aget-boolean v8, v4, v7

    .line 824
    .line 825
    if-eqz v8, :cond_2b

    .line 826
    .line 827
    add-int/lit8 v1, v1, 0x1

    .line 828
    .line 829
    :cond_2b
    add-int/lit8 v7, v7, 0x1

    .line 830
    goto :goto_16

    .line 831
    .line 832
    :cond_2c
    new-array v7, v1, [I

    .line 833
    .line 834
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 835
    const/4 v7, 0x2

    .line 836
    .line 837
    .line 838
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 839
    move-result v1

    .line 840
    .line 841
    new-array v8, v1, [D

    .line 842
    .line 843
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 844
    .line 845
    new-array v1, v1, [D

    .line 846
    .line 847
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 848
    .line 849
    move/from16 v8, p1

    .line 850
    const/4 v1, 0x0

    .line 851
    .line 852
    :goto_17
    if-ge v8, v6, :cond_2e

    .line 853
    .line 854
    aget-boolean v9, v4, v8

    .line 855
    .line 856
    if-eqz v9, :cond_2d

    .line 857
    .line 858
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 859
    .line 860
    add-int/lit8 v10, v1, 0x1

    .line 861
    .line 862
    aput v8, v9, v1

    .line 863
    move v1, v10

    .line 864
    .line 865
    :cond_2d
    add-int/lit8 v8, v8, 0x1

    .line 866
    goto :goto_17

    .line 867
    .line 868
    :cond_2e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 869
    array-length v1, v1

    .line 870
    .line 871
    new-array v4, v7, [I

    .line 872
    .line 873
    aput v1, v4, p1

    .line 874
    const/4 v9, 0x0

    .line 875
    .line 876
    aput v2, v4, v9

    .line 877
    .line 878
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 882
    move-result-object v4

    .line 883
    .line 884
    check-cast v4, [[D

    .line 885
    .line 886
    new-array v6, v2, [D

    .line 887
    const/4 v8, 0x0

    .line 888
    .line 889
    :goto_18
    if-ge v8, v2, :cond_2f

    .line 890
    .line 891
    aget-object v9, v3, v8

    .line 892
    .line 893
    aget-object v10, v4, v8

    .line 894
    .line 895
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 896
    .line 897
    .line 898
    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->fillStandard([D[I)V

    .line 899
    .line 900
    aget-object v9, v3, v8

    .line 901
    .line 902
    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 903
    float-to-double v9, v9

    .line 904
    .line 905
    aput-wide v9, v6, v8

    .line 906
    .line 907
    add-int/lit8 v8, v8, 0x1

    .line 908
    goto :goto_18

    .line 909
    :cond_2f
    const/4 v8, 0x0

    .line 910
    .line 911
    :goto_19
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 912
    array-length v10, v9

    .line 913
    .line 914
    if-ge v8, v10, :cond_31

    .line 915
    .line 916
    aget v9, v9, v8

    .line 917
    .line 918
    sget-object v10, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    .line 919
    array-length v10, v10

    .line 920
    .line 921
    if-ge v9, v10, :cond_30

    .line 922
    .line 923
    new-instance v9, Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .line 928
    sget-object v10, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    .line 929
    .line 930
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 931
    .line 932
    aget v11, v11, v8

    .line 933
    .line 934
    aget-object v10, v10, v11

    .line 935
    .line 936
    .line 937
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    const-string v10, " ["

    .line 940
    .line 941
    .line 942
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 946
    move-result-object v9

    .line 947
    move-object v10, v9

    .line 948
    const/4 v9, 0x0

    .line 949
    .line 950
    :goto_1a
    if-ge v9, v2, :cond_30

    .line 951
    .line 952
    new-instance v11, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    aget-object v10, v4, v9

    .line 961
    .line 962
    aget-wide v12, v10, v8

    .line 963
    .line 964
    .line 965
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 969
    move-result-object v10

    .line 970
    .line 971
    add-int/lit8 v9, v9, 0x1

    .line 972
    goto :goto_1a

    .line 973
    .line 974
    :cond_30
    add-int/lit8 v8, v8, 0x1

    .line 975
    goto :goto_19

    .line 976
    .line 977
    :cond_31
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 978
    array-length v8, v8

    .line 979
    .line 980
    add-int/lit8 v8, v8, 0x1

    .line 981
    .line 982
    new-array v8, v8, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 983
    .line 984
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 985
    const/4 v8, 0x0

    .line 986
    .line 987
    :goto_1b
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 988
    array-length v10, v9

    .line 989
    .line 990
    if-ge v8, v10, :cond_35

    .line 991
    .line 992
    aget-object v9, v9, v8

    .line 993
    const/4 v10, 0x0

    .line 994
    const/4 v11, 0x0

    .line 995
    const/4 v12, 0x0

    .line 996
    const/4 v13, 0x0

    .line 997
    .line 998
    :goto_1c
    if-ge v10, v2, :cond_34

    .line 999
    .line 1000
    aget-object v14, v3, v10

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v14, v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    .line 1004
    move-result v14

    .line 1005
    .line 1006
    if-eqz v14, :cond_33

    .line 1007
    .line 1008
    if-nez v13, :cond_32

    .line 1009
    .line 1010
    new-array v12, v2, [D

    .line 1011
    .line 1012
    aget-object v13, v3, v10

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v13, v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    .line 1016
    move-result v13

    .line 1017
    .line 1018
    new-array v14, v7, [I

    .line 1019
    .line 1020
    aput v13, v14, p1

    .line 1021
    const/4 v15, 0x0

    .line 1022
    .line 1023
    aput v2, v14, v15

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v1, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1027
    move-result-object v13

    .line 1028
    .line 1029
    check-cast v13, [[D

    .line 1030
    goto :goto_1d

    .line 1031
    :cond_32
    const/4 v15, 0x0

    .line 1032
    .line 1033
    :goto_1d
    aget-object v14, v3, v10

    .line 1034
    .line 1035
    iget v7, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 1036
    .line 1037
    move/from16 v16, v8

    .line 1038
    float-to-double v7, v7

    .line 1039
    .line 1040
    aput-wide v7, v12, v11

    .line 1041
    .line 1042
    aget-object v7, v13, v11

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v14, v9, v7, v15}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    .line 1046
    .line 1047
    add-int/lit8 v11, v11, 0x1

    .line 1048
    goto :goto_1e

    .line 1049
    .line 1050
    :cond_33
    move/from16 v16, v8

    .line 1051
    .line 1052
    :goto_1e
    add-int/lit8 v10, v10, 0x1

    .line 1053
    .line 1054
    move/from16 v8, v16

    .line 1055
    const/4 v7, 0x2

    .line 1056
    goto :goto_1c

    .line 1057
    .line 1058
    :cond_34
    move/from16 v16, v8

    .line 1059
    .line 1060
    .line 1061
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 1062
    move-result-object v7

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1066
    move-result-object v8

    .line 1067
    .line 1068
    check-cast v8, [[D

    .line 1069
    .line 1070
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1071
    .line 1072
    add-int/lit8 v10, v16, 0x1

    .line 1073
    .line 1074
    iget v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 1075
    .line 1076
    .line 1077
    invoke-static {v11, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1078
    move-result-object v7

    .line 1079
    .line 1080
    aput-object v7, v9, v10

    .line 1081
    move v8, v10

    .line 1082
    const/4 v7, 0x2

    .line 1083
    goto :goto_1b

    .line 1084
    .line 1085
    :cond_35
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1086
    .line 1087
    iget v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 1088
    .line 1089
    .line 1090
    invoke-static {v8, v6, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1091
    move-result-object v4

    .line 1092
    const/4 v9, 0x0

    .line 1093
    .line 1094
    aput-object v4, v7, v9

    .line 1095
    .line 1096
    aget-object v4, v3, v9

    .line 1097
    .line 1098
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 1099
    const/4 v6, -0x1

    .line 1100
    .line 1101
    if-eq v4, v6, :cond_37

    .line 1102
    .line 1103
    new-array v4, v2, [I

    .line 1104
    .line 1105
    new-array v6, v2, [D

    .line 1106
    const/4 v7, 0x2

    .line 1107
    .line 1108
    new-array v8, v7, [I

    .line 1109
    .line 1110
    aput v7, v8, p1

    .line 1111
    .line 1112
    aput v2, v8, v9

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1116
    move-result-object v1

    .line 1117
    .line 1118
    check-cast v1, [[D

    .line 1119
    const/4 v9, 0x0

    .line 1120
    .line 1121
    :goto_1f
    if-ge v9, v2, :cond_36

    .line 1122
    .line 1123
    aget-object v7, v3, v9

    .line 1124
    .line 1125
    iget v8, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 1126
    .line 1127
    aput v8, v4, v9

    .line 1128
    .line 1129
    iget v8, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 1130
    float-to-double v10, v8

    .line 1131
    .line 1132
    aput-wide v10, v6, v9

    .line 1133
    .line 1134
    aget-object v8, v1, v9

    .line 1135
    .line 1136
    iget v10, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 1137
    float-to-double v10, v10

    .line 1138
    const/4 v15, 0x0

    .line 1139
    .line 1140
    aput-wide v10, v8, v15

    .line 1141
    .line 1142
    iget v7, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 1143
    float-to-double v10, v7

    .line 1144
    .line 1145
    aput-wide v10, v8, p1

    .line 1146
    .line 1147
    add-int/lit8 v9, v9, 0x1

    .line 1148
    goto :goto_1f

    .line 1149
    .line 1150
    .line 1151
    :cond_36
    invoke-static {v4, v6, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1152
    move-result-object v1

    .line 1153
    .line 1154
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1155
    .line 1156
    :cond_37
    new-instance v1, Ljava/util/HashMap;

    .line 1157
    .line 1158
    .line 1159
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1160
    .line 1161
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 1162
    .line 1163
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 1164
    .line 1165
    if-eqz v1, :cond_3d

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1169
    move-result-object v1

    .line 1170
    .line 1171
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1172
    .line 1173
    .line 1174
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1175
    move-result v3

    .line 1176
    .line 1177
    if-eqz v3, :cond_3a

    .line 1178
    .line 1179
    .line 1180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1181
    move-result-object v3

    .line 1182
    .line 1183
    check-cast v3, Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1187
    move-result-object v4

    .line 1188
    .line 1189
    if-nez v4, :cond_38

    .line 1190
    goto :goto_20

    .line 1191
    .line 1192
    .line 1193
    :cond_38
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->variesByPath()Z

    .line 1194
    move-result v5

    .line 1195
    .line 1196
    if-eqz v5, :cond_39

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1200
    move-result v5

    .line 1201
    .line 1202
    if-eqz v5, :cond_39

    .line 1203
    .line 1204
    .line 1205
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/Motion;->getPreCycleDistance()F

    .line 1206
    move-result v2

    .line 1207
    .line 1208
    .line 1209
    :cond_39
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 1210
    .line 1211
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    goto :goto_20

    .line 1216
    .line 1217
    :cond_3a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1221
    move-result-object v1

    .line 1222
    .line 1223
    .line 1224
    :cond_3b
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1225
    move-result v3

    .line 1226
    .line 1227
    if-eqz v3, :cond_3c

    .line 1228
    .line 1229
    .line 1230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1231
    move-result-object v3

    .line 1232
    .line 1233
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 1234
    .line 1235
    instance-of v4, v3, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    .line 1236
    .line 1237
    if-eqz v4, :cond_3b

    .line 1238
    .line 1239
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    .line 1240
    .line 1241
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    .line 1245
    goto :goto_21

    .line 1246
    .line 1247
    :cond_3c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1251
    move-result-object v1

    .line 1252
    .line 1253
    .line 1254
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1255
    move-result-object v1

    .line 1256
    .line 1257
    .line 1258
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1259
    move-result v3

    .line 1260
    .line 1261
    if-eqz v3, :cond_3d

    .line 1262
    .line 1263
    .line 1264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1265
    move-result-object v3

    .line 1266
    .line 1267
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V

    .line 1271
    goto :goto_22

    .line 1272
    :cond_3d
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 10
    .line 11
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 15
    return-void
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
    const-string v1, " start: x: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 13
    .line 14
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, " y: "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 25
    .line 26
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, " end: x: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 37
    .line 38
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 47
    .line 48
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
