.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "SourceFile"


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
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
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
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mForceMeasure:Z

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mTempRect:Landroid/graphics/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroid/view/View;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 14
    const/4 v1, -0x1

    .line 15
    .line 16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 17
    .line 18
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    .line 22
    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 24
    .line 25
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 31
    .line 32
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 38
    .line 39
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    .line 43
    .line 44
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 45
    .line 46
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 47
    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 52
    .line 53
    const/high16 v2, 0x3f800000    # 1.0f

    .line 54
    .line 55
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 56
    const/4 v2, 0x4

    .line 57
    .line 58
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->MAX_DIMENSION:I

    .line 59
    .line 60
    new-array v2, v2, [F

    .line 61
    .line 62
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 63
    .line 64
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 70
    const/4 v2, 0x1

    .line 71
    .line 72
    new-array v2, v2, [F

    .line 73
    .line 74
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 75
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 82
    .line 83
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 84
    .line 85
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 86
    .line 87
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 88
    const/4 v3, 0x0

    .line 89
    .line 90
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 91
    .line 92
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 93
    .line 94
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 95
    .line 96
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    .line 98
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "velocity"
        }
    .end annotation

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
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

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
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

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
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 43
    .line 44
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 65
    .line 66
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 67
    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    iget v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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

.method private static getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "interpolatorString",
            "id"
        }
    .end annotation

    .line 1
    const/4 v0, -0x2

    .line 2
    .line 3
    if-eq p1, v0, :cond_6

    .line 4
    const/4 p0, -0x1

    .line 5
    .line 6
    if-eq p1, p0, :cond_5

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    const/4 p0, 0x1

    .line 10
    .line 11
    if-eq p1, p0, :cond_3

    .line 12
    const/4 p0, 0x2

    .line 13
    .line 14
    if-eq p1, p0, :cond_2

    .line 15
    const/4 p0, 0x4

    .line 16
    .line 17
    if-eq p1, p0, :cond_1

    .line 18
    const/4 p0, 0x5

    .line 19
    .line 20
    if-eq p1, p0, :cond_0

    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    .line 24
    :cond_0
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 28
    return-object p0

    .line 29
    .line 30
    :cond_1
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 34
    return-object p0

    .line 35
    .line 36
    :cond_2
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 40
    return-object p0

    .line 41
    .line 42
    :cond_3
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 46
    return-object p0

    .line 47
    .line 48
    :cond_4
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 52
    return-object p0

    .line 53
    .line 54
    .line 55
    :cond_5
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionController$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionController$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    .line 62
    return-object p1

    .line 63
    .line 64
    .line 65
    :cond_6
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 66
    move-result-object p0

    .line 67
    return-object p0
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
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 28
    .line 29
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 30
    .line 31
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 54
    .line 55
    const/16 v18, 0x0

    .line 56
    .line 57
    iget-object v11, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 58
    .line 59
    move/from16 v19, v1

    .line 60
    .line 61
    if-eqz v11, :cond_1

    .line 62
    .line 63
    iget v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    iget v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 118
    .line 119
    aget-object v1, v1, v18

    .line 120
    .line 121
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v5, v6, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 125
    move v11, v2

    .line 126
    .line 127
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 128
    move v10, v3

    .line 129
    move-wide v3, v5

    .line 130
    .line 131
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 132
    .line 133
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 134
    const/4 v8, 0x0

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

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

.method private insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 13
    neg-int v0, v0

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 19
    return-void
.end method

.method private readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionPaths"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    int-to-float v0, v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    int-to-float v1, v1

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 34
    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addKeys(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    return-void
.end method

.method public buildBounds([FI)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bounds",
            "pointCount"
        }
    .end annotation

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
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 49
    .line 50
    :goto_2
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

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
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

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
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

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
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 100
    .line 101
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 102
    .line 103
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 122
    .line 123
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 124
    .line 125
    if-eqz v14, :cond_6

    .line 126
    .line 127
    iget v15, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    iget v12, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 167
    .line 168
    aget-object v6, v6, v4

    .line 169
    .line 170
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 174
    .line 175
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 176
    .line 177
    if-eqz v6, :cond_b

    .line 178
    .line 179
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 188
    .line 189
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 190
    .line 191
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 192
    .line 193
    mul-int/lit8 v9, v5, 0x2

    .line 194
    .line 195
    move-object/from16 v10, p1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6, v7, v8, v10, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBounds",
            "mode"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

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
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 48
    .line 49
    aget-object v3, v3, v0

    .line 50
    .line 51
    aget-wide v4, v1, p2

    .line 52
    .line 53
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 61
    .line 62
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

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

.method public buildKeyFrames([F[I)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFrames",
            "mode"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

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
    move v8, p2

    .line 43
    :goto_1
    array-length v2, v1

    .line 44
    .line 45
    if-ge p2, v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 48
    .line 49
    aget-object v2, v2, v0

    .line 50
    .line 51
    aget-wide v3, v1, p2

    .line 52
    .line 53
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 59
    .line 60
    aget-wide v3, v1, p2

    .line 61
    .line 62
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 63
    .line 64
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 65
    move-object v7, p1

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 69
    .line 70
    add-int/lit8 v8, v8, 0x2

    .line 71
    .line 72
    add-int/lit8 p2, p2, 0x1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_1
    div-int/lit8 v8, v8, 0x2

    .line 76
    return v8

    .line 77
    :cond_2
    return v0
.end method

.method public buildPath([FI)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "points",
            "pointCount"
        }
    .end annotation

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
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 53
    .line 54
    :goto_2
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

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
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

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
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

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
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 103
    .line 104
    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 105
    .line 106
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 131
    .line 132
    if-eqz v8, :cond_7

    .line 133
    .line 134
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 187
    .line 188
    aget-object v1, v1, v17

    .line 189
    .line 190
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v11, v12, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 194
    .line 195
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 196
    .line 197
    if-eqz v1, :cond_b

    .line 198
    .line 199
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 208
    .line 209
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 210
    .line 211
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    invoke-virtual/range {v18 .. v24}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "path",
            "offset"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 5
    move-result p1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    aget-object v0, v0, v1

    .line 11
    float-to-double v1, p1

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    .line 26
    return-void
.end method

.method public buildRectangles([FI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "pointCount"
        }
    .end annotation

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
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 17
    move-result v3

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 20
    .line 21
    aget-object v4, v4, v0

    .line 22
    float-to-double v5, v3

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 32
    .line 33
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 34
    .line 35
    mul-int/lit8 v6, v2, 0x8

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "button"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 22
    array-length v2, v1

    .line 23
    .line 24
    if-ge v0, v2, :cond_1

    .line 25
    .line 26
    aget-object v1, v1, v0

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/high16 v2, -0x3d380000    # -100.0f

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    .line 34
    .line 35
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public getAnimateRelativeTo()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 5
    return v0
.end method

.method public getAttributeValues(Ljava/lang/String;[FI)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attributeType",
            "points",
            "pointCount"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "pos",
            "vel"
        }
    .end annotation

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 29
    move-wide v2, p1

    .line 30
    move-object v6, p3

    .line 31
    move-object v8, p4

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[F[D[F)V

    .line 35
    return-void
.end method

.method public getCenterX()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterX:F

    .line 3
    return v0
.end method

.method public getCenterY()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterY:F

    .line 3
    return v0
.end method

.method public getDpDt(FFF[F)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "locationX",
            "locationY",
            "mAnchorDpDt"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 22
    .line 23
    aget-object p1, p1, v1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 31
    .line 32
    aget p1, p1, v1

    .line 33
    .line 34
    :goto_0
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

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
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 66
    .line 67
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 68
    .line 69
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 70
    .line 71
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 72
    .line 73
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 74
    move v5, p2

    .line 75
    move v6, p3

    .line 76
    move-object v7, p4

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 86
    .line 87
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 88
    .line 89
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 99
    .line 100
    iget p2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 101
    .line 102
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 103
    .line 104
    iget p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 105
    sub-float/2addr p2, p4

    .line 106
    .line 107
    iget p4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 108
    .line 109
    iget v0, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 110
    sub-float/2addr p4, v0

    .line 111
    .line 112
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 113
    .line 114
    iget v2, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 115
    sub-float/2addr v0, v2

    .line 116
    .line 117
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 118
    .line 119
    iget p3, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 23
    .line 24
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

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
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 32
    .line 33
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 5
    return v0
.end method

.method public getFinalWidth()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 5
    return v0
.end method

.method public getFinalX()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 5
    return v0
.end method

.method public getFinalY()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 5
    return v0
.end method

.method public getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 9
    return-object p1
.end method

.method public getKeyFrameInfo(I[I)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "info"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v6, v0, [F

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v11, Landroidx/constraintlayout/motion/widget/Key;

    .line 26
    .line 27
    iget v1, v11, Landroidx/constraintlayout/motion/widget/Key;->mType:I

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
    iget v2, v11, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

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
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 52
    .line 53
    aget-object v2, v2, v8

    .line 54
    float-to-double v3, v1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 62
    move-wide v2, v3

    .line 63
    .line 64
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 65
    .line 66
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 67
    const/4 v7, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

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
    instance-of v3, v11, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 94
    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    check-cast v11, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 98
    .line 99
    add-int/lit8 v1, v10, 0x5

    .line 100
    .line 101
    iget v3, v11, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 102
    .line 103
    aput v3, p2, v1

    .line 104
    .line 105
    add-int/lit8 v1, v10, 0x6

    .line 106
    .line 107
    iget v3, v11, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

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
    iget v3, v11, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "x",
            "y"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 7
    .line 8
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 9
    sub-float/2addr v1, v3

    .line 10
    .line 11
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 12
    .line 13
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 14
    sub-float/2addr v0, v4

    .line 15
    .line 16
    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 17
    .line 18
    const/high16 v6, 0x40000000    # 2.0f

    .line 19
    div-float/2addr v5, v6

    .line 20
    add-float/2addr v3, v5

    .line 21
    .line 22
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "pos"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    .line 22
    .line 23
    add-int/lit8 v10, v2, 0x1

    .line 24
    .line 25
    iget v4, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 26
    .line 27
    iget v3, v3, Landroidx/constraintlayout/motion/widget/Key;->mType:I

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
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 39
    .line 40
    aget-object v3, v3, v1

    .line 41
    float-to-double v4, v2

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 47
    .line 48
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 51
    .line 52
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 53
    move-object v8, p2

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 25
    return-object p1
.end method

.method public getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutWidth",
            "layoutHeight",
            "x",
            "y"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v3, Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 8
    .line 9
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 10
    .line 11
    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 12
    .line 13
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 14
    .line 15
    iput v2, v3, Landroid/graphics/RectF;->top:F

    .line 16
    .line 17
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 18
    add-float/2addr v1, v4

    .line 19
    .line 20
    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 21
    .line 22
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 23
    add-float/2addr v2, v0

    .line 24
    .line 25
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 26
    .line 27
    new-instance v4, Landroid/graphics/RectF;

    .line 28
    .line 29
    .line 30
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 33
    .line 34
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 35
    .line 36
    iput v1, v4, Landroid/graphics/RectF;->left:F

    .line 37
    .line 38
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 39
    .line 40
    iput v2, v4, Landroid/graphics/RectF;->top:F

    .line 41
    .line 42
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 43
    add-float/2addr v1, v5

    .line 44
    .line 45
    iput v1, v4, Landroid/graphics/RectF;->right:F

    .line 46
    .line 47
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 48
    add-float/2addr v2, v0

    .line 49
    .line 50
    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v0, Landroidx/constraintlayout/motion/widget/Key;

    .line 69
    .line 70
    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

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
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "width",
            "height",
            "locationX",
            "locationY",
            "mAnchorDpDt"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 5
    .line 6
    move/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 10
    move-result v1

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 42
    .line 43
    const-string v8, "rotation"

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
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 94
    .line 95
    :goto_5
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 106
    .line 107
    :goto_6
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 118
    .line 119
    :goto_7
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v10, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 130
    .line 131
    :goto_8
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

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
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 169
    .line 170
    if-eqz v13, :cond_b

    .line 171
    .line 172
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 182
    .line 183
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 187
    .line 188
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 189
    .line 190
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 191
    .line 192
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 193
    .line 194
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 220
    const/4 v14, 0x0

    .line 221
    .line 222
    if-eqz v13, :cond_d

    .line 223
    .line 224
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 228
    move-result v1

    .line 229
    .line 230
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 231
    .line 232
    aget-object v2, v2, v14

    .line 233
    float-to-double v3, v1

    .line 234
    .line 235
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 239
    .line 240
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 241
    .line 242
    aget-object v1, v1, v14

    .line 243
    .line 244
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 248
    .line 249
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 250
    .line 251
    aget v1, v1, v14

    .line 252
    .line 253
    :goto_a
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

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
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 268
    .line 269
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 270
    .line 271
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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
    invoke-virtual/range {v13 .. v19}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 301
    .line 302
    iget v15, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 303
    .line 304
    move/from16 p1, v14

    .line 305
    .line 306
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 307
    .line 308
    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 309
    sub-float/2addr v15, v0

    .line 310
    .line 311
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 312
    .line 313
    move/from16 v16, v0

    .line 314
    .line 315
    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 316
    .line 317
    sub-float v0, v16, v0

    .line 318
    .line 319
    move/from16 v16, v0

    .line 320
    .line 321
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 322
    .line 323
    move/from16 v17, v0

    .line 324
    .line 325
    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 326
    .line 327
    sub-float v0, v17, v0

    .line 328
    .line 329
    iget v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 330
    .line 331
    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 5
    return v0
.end method

.method public getStartWidth()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 5
    return v0
.end method

.method public getStartX()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 5
    return v0
.end method

.method public getStartY()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 5
    return v0
.end method

.method public getTransformPivotTarget()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 3
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "global_position",
            "time",
            "keyCache"
        }
    .end annotation

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
    invoke-direct {v0, v3, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 11
    move-result v3

    .line 12
    .line 13
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 14
    .line 15
    sget v5, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 16
    .line 17
    const/high16 v12, 0x3f800000    # 1.0f

    .line 18
    .line 19
    if-eq v4, v5, :cond_3

    .line 20
    int-to-float v4, v4

    .line 21
    .line 22
    div-float v4, v12, v4

    .line 23
    .line 24
    div-float v5, v3, v4

    .line 25
    float-to-double v5, v5

    .line 26
    .line 27
    .line 28
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 29
    move-result-wide v5

    .line 30
    double-to-float v5, v5

    .line 31
    mul-float/2addr v5, v4

    .line 32
    rem-float/2addr v3, v4

    .line 33
    div-float/2addr v3, v4

    .line 34
    .line 35
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 36
    .line 37
    .line 38
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 44
    add-float/2addr v3, v6

    .line 45
    rem-float/2addr v3, v12

    .line 46
    .line 47
    :cond_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 48
    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-interface {v6, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 53
    move-result v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    float-to-double v6, v3

    .line 56
    .line 57
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 58
    .line 59
    cmpl-double v3, v6, v8

    .line 60
    .line 61
    if-lez v3, :cond_2

    .line 62
    move v3, v12

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v3, 0x0

    .line 65
    :goto_0
    mul-float/2addr v3, v4

    .line 66
    add-float/2addr v3, v5

    .line 67
    .line 68
    :cond_3
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v4

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v5

    .line 83
    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v5

    .line 89
    .line 90
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(Landroid/view/View;F)V

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 97
    const/4 v13, 0x0

    .line 98
    .line 99
    if-eqz v4, :cond_7

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    .line 106
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v7

    .line 108
    move-object v8, v1

    .line 109
    move v9, v13

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v1

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 122
    .line 123
    instance-of v4, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    .line 124
    .line 125
    if-eqz v4, :cond_5

    .line 126
    move-object v8, v1

    .line 127
    .line 128
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :cond_5
    move-wide/from16 v4, p3

    .line 132
    .line 133
    move-object/from16 v6, p5

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 137
    move-result v1

    .line 138
    or-int/2addr v9, v1

    .line 139
    .line 140
    move-object/from16 v2, p1

    .line 141
    goto :goto_2

    .line 142
    :cond_6
    move v14, v9

    .line 143
    move-object v9, v8

    .line 144
    goto :goto_3

    .line 145
    :cond_7
    move-object v9, v1

    .line 146
    move v14, v13

    .line 147
    .line 148
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 149
    const/4 v15, 0x1

    .line 150
    .line 151
    if-eqz v1, :cond_13

    .line 152
    .line 153
    aget-object v1, v1, v13

    .line 154
    float-to-double v4, v3

    .line 155
    .line 156
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 160
    .line 161
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 162
    .line 163
    aget-object v1, v1, v13

    .line 164
    .line 165
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 169
    .line 170
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 171
    .line 172
    if-eqz v1, :cond_8

    .line 173
    .line 174
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 175
    array-length v6, v2

    .line 176
    .line 177
    if-lez v6, :cond_8

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 181
    .line 182
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 183
    .line 184
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 188
    .line 189
    :cond_8
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 190
    .line 191
    if-nez v1, :cond_9

    .line 192
    .line 193
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 194
    move-wide v5, v4

    .line 195
    .line 196
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 197
    move-wide v6, v5

    .line 198
    .line 199
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 200
    move-wide v7, v6

    .line 201
    .line 202
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 203
    .line 204
    move-wide/from16 v16, v7

    .line 205
    const/4 v7, 0x0

    .line 206
    .line 207
    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 208
    move v2, v3

    .line 209
    .line 210
    move/from16 v18, v12

    .line 211
    .line 212
    move-wide/from16 v11, v16

    .line 213
    .line 214
    const/16 p2, 0x0

    .line 215
    .line 216
    move-object/from16 v3, p1

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setView(FLandroid/view/View;[I[D[D[DZ)V

    .line 220
    .line 221
    move-object/from16 v19, v3

    .line 222
    move v3, v2

    .line 223
    .line 224
    move-object/from16 v2, v19

    .line 225
    .line 226
    iput-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 227
    goto :goto_4

    .line 228
    .line 229
    :cond_9
    move-object/from16 v2, p1

    .line 230
    .line 231
    move/from16 v18, v12

    .line 232
    .line 233
    const/16 p2, 0x0

    .line 234
    move-wide v11, v4

    .line 235
    .line 236
    :goto_4
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 237
    .line 238
    sget v4, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 239
    .line 240
    if-eq v1, v4, :cond_b

    .line 241
    .line 242
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 243
    .line 244
    if-nez v1, :cond_a

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 248
    move-result-object v1

    .line 249
    .line 250
    check-cast v1, Landroid/view/View;

    .line 251
    .line 252
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 259
    .line 260
    :cond_a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 261
    .line 262
    if-eqz v1, :cond_b

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 266
    move-result v1

    .line 267
    .line 268
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 272
    move-result v4

    .line 273
    add-int/2addr v1, v4

    .line 274
    int-to-float v1, v1

    .line 275
    .line 276
    const/high16 v4, 0x40000000    # 2.0f

    .line 277
    div-float/2addr v1, v4

    .line 278
    .line 279
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 283
    move-result v5

    .line 284
    .line 285
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 289
    move-result v6

    .line 290
    add-int/2addr v5, v6

    .line 291
    int-to-float v5, v5

    .line 292
    div-float/2addr v5, v4

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 296
    move-result v4

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 300
    move-result v6

    .line 301
    sub-int/2addr v4, v6

    .line 302
    .line 303
    if-lez v4, :cond_b

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 307
    move-result v4

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 311
    move-result v6

    .line 312
    sub-int/2addr v4, v6

    .line 313
    .line 314
    if-lez v4, :cond_b

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 318
    move-result v4

    .line 319
    int-to-float v4, v4

    .line 320
    sub-float/2addr v5, v4

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 324
    move-result v4

    .line 325
    int-to-float v4, v4

    .line 326
    sub-float/2addr v1, v4

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v5}, Landroid/view/View;->setPivotX(F)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotY(F)V

    .line 333
    .line 334
    :cond_b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 335
    .line 336
    if-eqz v1, :cond_d

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 340
    move-result-object v1

    .line 341
    .line 342
    .line 343
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 344
    move-result-object v8

    .line 345
    .line 346
    .line 347
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    move-result v1

    .line 349
    .line 350
    if-eqz v1, :cond_d

    .line 351
    .line 352
    .line 353
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    move-result-object v1

    .line 355
    .line 356
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 357
    .line 358
    instance-of v4, v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    .line 359
    .line 360
    if-eqz v4, :cond_c

    .line 361
    .line 362
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 363
    array-length v5, v4

    .line 364
    .line 365
    if-le v5, v15, :cond_c

    .line 366
    .line 367
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    .line 368
    .line 369
    aget-wide v5, v4, v13

    .line 370
    .line 371
    aget-wide v16, v4, v15

    .line 372
    move-wide v4, v5

    .line 373
    .line 374
    move-wide/from16 v6, v16

    .line 375
    .line 376
    .line 377
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;->setPathRotate(Landroid/view/View;FDD)V

    .line 378
    .line 379
    :cond_c
    move-object/from16 v2, p1

    .line 380
    goto :goto_5

    .line 381
    .line 382
    :cond_d
    if-eqz v9, :cond_e

    .line 383
    .line 384
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 385
    .line 386
    aget-wide v7, v1, v13

    .line 387
    .line 388
    aget-wide v4, v1, v15

    .line 389
    .line 390
    move-object/from16 v2, p1

    .line 391
    move-object v1, v9

    .line 392
    move-wide v9, v4

    .line 393
    .line 394
    move-wide/from16 v5, p3

    .line 395
    move v4, v3

    .line 396
    .line 397
    move-object/from16 v3, p5

    .line 398
    .line 399
    .line 400
    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;FJDD)Z

    .line 401
    move-result v1

    .line 402
    move v3, v4

    .line 403
    or-int/2addr v14, v1

    .line 404
    goto :goto_6

    .line 405
    .line 406
    :cond_e
    move-object/from16 v2, p1

    .line 407
    :goto_6
    move v1, v15

    .line 408
    .line 409
    :goto_7
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 410
    array-length v5, v4

    .line 411
    .line 412
    if-ge v1, v5, :cond_f

    .line 413
    .line 414
    aget-object v4, v4, v1

    .line 415
    .line 416
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v11, v12, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 420
    .line 421
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 422
    .line 423
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 424
    .line 425
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 426
    .line 427
    add-int/lit8 v6, v1, -0x1

    .line 428
    .line 429
    aget-object v5, v5, v6

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move-result-object v4

    .line 434
    .line 435
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 436
    .line 437
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 438
    .line 439
    .line 440
    invoke-static {v4, v2, v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 441
    .line 442
    add-int/lit8 v1, v1, 0x1

    .line 443
    goto :goto_7

    .line 444
    .line 445
    :cond_f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 446
    .line 447
    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    .line 448
    .line 449
    if-nez v4, :cond_12

    .line 450
    .line 451
    cmpg-float v4, v3, p2

    .line 452
    .line 453
    if-gtz v4, :cond_10

    .line 454
    .line 455
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    goto :goto_8

    .line 460
    .line 461
    :cond_10
    cmpl-float v4, v3, v18

    .line 462
    .line 463
    if-ltz v4, :cond_11

    .line 464
    .line 465
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 466
    .line 467
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    goto :goto_8

    .line 472
    .line 473
    :cond_11
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 474
    .line 475
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 476
    .line 477
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 478
    .line 479
    if-eq v4, v1, :cond_12

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 483
    .line 484
    :cond_12
    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 485
    .line 486
    if-eqz v1, :cond_16

    .line 487
    move v1, v13

    .line 488
    .line 489
    :goto_9
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 490
    array-length v5, v4

    .line 491
    .line 492
    if-ge v1, v5, :cond_16

    .line 493
    .line 494
    aget-object v4, v4, v1

    .line 495
    .line 496
    .line 497
    invoke-virtual {v4, v3, v2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    .line 498
    .line 499
    add-int/lit8 v1, v1, 0x1

    .line 500
    goto :goto_9

    .line 501
    .line 502
    :cond_13
    move-object/from16 v2, p1

    .line 503
    .line 504
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 505
    .line 506
    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 507
    .line 508
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 509
    .line 510
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 511
    sub-float/2addr v6, v4

    .line 512
    mul-float/2addr v6, v3

    .line 513
    add-float/2addr v4, v6

    .line 514
    .line 515
    iget v6, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 516
    .line 517
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 518
    sub-float/2addr v7, v6

    .line 519
    mul-float/2addr v7, v3

    .line 520
    add-float/2addr v6, v7

    .line 521
    .line 522
    iget v7, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 523
    .line 524
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 525
    .line 526
    sub-float v9, v8, v7

    .line 527
    mul-float/2addr v9, v3

    .line 528
    add-float/2addr v9, v7

    .line 529
    .line 530
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 531
    .line 532
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 533
    .line 534
    sub-float v10, v5, v1

    .line 535
    mul-float/2addr v10, v3

    .line 536
    add-float/2addr v10, v1

    .line 537
    .line 538
    const/high16 v11, 0x3f000000    # 0.5f

    .line 539
    add-float/2addr v4, v11

    .line 540
    float-to-int v12, v4

    .line 541
    add-float/2addr v6, v11

    .line 542
    float-to-int v11, v6

    .line 543
    add-float/2addr v4, v9

    .line 544
    float-to-int v4, v4

    .line 545
    add-float/2addr v6, v10

    .line 546
    float-to-int v6, v6

    .line 547
    .line 548
    sub-int v9, v4, v12

    .line 549
    .line 550
    sub-int v10, v6, v11

    .line 551
    .line 552
    cmpl-float v7, v8, v7

    .line 553
    .line 554
    if-nez v7, :cond_14

    .line 555
    .line 556
    cmpl-float v1, v5, v1

    .line 557
    .line 558
    if-nez v1, :cond_14

    .line 559
    .line 560
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 561
    .line 562
    if-eqz v1, :cond_15

    .line 563
    .line 564
    :cond_14
    const/high16 v1, 0x40000000    # 2.0f

    .line 565
    .line 566
    .line 567
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 568
    move-result v5

    .line 569
    .line 570
    .line 571
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 572
    move-result v1

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v5, v1}, Landroid/view/View;->measure(II)V

    .line 576
    .line 577
    iput-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 578
    .line 579
    .line 580
    :cond_15
    invoke-virtual {v2, v12, v11, v4, v6}, Landroid/view/View;->layout(IIII)V

    .line 581
    .line 582
    :cond_16
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 583
    .line 584
    if-eqz v1, :cond_18

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 588
    move-result-object v1

    .line 589
    .line 590
    .line 591
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 592
    move-result-object v8

    .line 593
    .line 594
    .line 595
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 596
    move-result v1

    .line 597
    .line 598
    if-eqz v1, :cond_18

    .line 599
    .line 600
    .line 601
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 602
    move-result-object v1

    .line 603
    .line 604
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 605
    .line 606
    instance-of v4, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    .line 607
    .line 608
    if-eqz v4, :cond_17

    .line 609
    .line 610
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    .line 611
    .line 612
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 613
    .line 614
    aget-wide v5, v4, v13

    .line 615
    .line 616
    aget-wide v9, v4, v15

    .line 617
    move-wide v4, v5

    .line 618
    move-wide v6, v9

    .line 619
    .line 620
    .line 621
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;->setPathRotate(Landroid/view/View;FDD)V

    .line 622
    goto :goto_a

    .line 623
    .line 624
    .line 625
    :cond_17
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(Landroid/view/View;F)V

    .line 626
    goto :goto_a

    .line 627
    :cond_18
    return v14
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "key",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v2, Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 8
    .line 9
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 10
    .line 11
    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 12
    .line 13
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 14
    .line 15
    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 16
    .line 17
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 18
    add-float/2addr v1, v4

    .line 19
    .line 20
    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 21
    .line 22
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 23
    add-float/2addr v3, v0

    .line 24
    .line 25
    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 26
    .line 27
    new-instance v3, Landroid/graphics/RectF;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 33
    .line 34
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 35
    .line 36
    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 37
    .line 38
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 39
    .line 40
    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 41
    .line 42
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 43
    add-float/2addr v1, v5

    .line 44
    .line 45
    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 46
    .line 47
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 48
    add-float/2addr v4, v0

    .line 49
    .line 50
    iput v4, v3, Landroid/graphics/RectF;->bottom:F

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
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 60
    return-void
.end method

.method public remeasure()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 4
    return-void
.end method

.method public rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
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
            "rect",
            "out",
            "rotation",
            "preHeight",
            "preWidth"
        }
    .end annotation

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
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget p5, p1, Landroid/graphics/Rect;->right:I

    .line 18
    add-int/2addr p3, p5

    .line 19
    .line 20
    iget p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 23
    add-int/2addr p5, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

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
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 36
    move-result p4

    .line 37
    sub-int/2addr p3, p4

    .line 38
    div-int/2addr p3, v1

    .line 39
    .line 40
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 46
    move-result p4

    .line 47
    add-int/2addr p3, p4

    .line 48
    .line 49
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 55
    move-result p1

    .line 56
    add-int/2addr p3, p1

    .line 57
    .line 58
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 59
    return-void

    .line 60
    .line 61
    :cond_1
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 64
    add-int/2addr p3, p4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 68
    move-result p4

    .line 69
    div-int/2addr p4, v1

    .line 70
    .line 71
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 72
    add-int/2addr p4, v0

    .line 73
    .line 74
    div-int/lit8 v0, p3, 0x2

    .line 75
    sub-int/2addr p4, v0

    .line 76
    .line 77
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

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
    iput p5, p2, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 92
    move-result p4

    .line 93
    add-int/2addr p3, p4

    .line 94
    .line 95
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 101
    move-result p1

    .line 102
    add-int/2addr p3, p1

    .line 103
    .line 104
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 105
    return-void

    .line 106
    .line 107
    :cond_2
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 108
    .line 109
    iget p5, p1, Landroid/graphics/Rect;->right:I

    .line 110
    add-int/2addr p3, p5

    .line 111
    .line 112
    iget p5, p1, Landroid/graphics/Rect;->top:I

    .line 113
    .line 114
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 115
    add-int/2addr p5, v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

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
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 128
    move-result p4

    .line 129
    sub-int/2addr p3, p4

    .line 130
    div-int/2addr p3, v1

    .line 131
    .line 132
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 133
    .line 134
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 138
    move-result p4

    .line 139
    add-int/2addr p3, p4

    .line 140
    .line 141
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 147
    move-result p1

    .line 148
    add-int/2addr p3, p1

    .line 149
    .line 150
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 151
    return-void

    .line 152
    .line 153
    :cond_3
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 154
    .line 155
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 156
    add-int/2addr p3, p4

    .line 157
    .line 158
    iget p4, p1, Landroid/graphics/Rect;->top:I

    .line 159
    .line 160
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 161
    add-int/2addr p4, v0

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 165
    move-result v0

    .line 166
    sub-int/2addr p4, v0

    .line 167
    div-int/2addr p4, v1

    .line 168
    .line 169
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

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
    iput p5, p2, Landroid/graphics/Rect;->top:I

    .line 179
    .line 180
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 184
    move-result p4

    .line 185
    add-int/2addr p3, p4

    .line 186
    .line 187
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 188
    .line 189
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 193
    move-result p1

    .line 194
    add-int/2addr p3, p1

    .line 195
    .line 196
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 197
    return-void
.end method

.method public setBothStates(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 6
    .line 7
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v3

    .line 23
    int-to-float v3, v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v4

    .line 28
    int-to-float v4, v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 41
    move-result v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v4

    .line 51
    int-to-float v4, v4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public setDrawPath(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugMode"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 5
    return-void
.end method

.method public setEndState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cw",
            "constraintSet",
            "parentWidth",
            "parentHeight"
        }
    .end annotation

    .line 1
    .line 2
    iget v3, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 3
    .line 4
    if-eqz v3, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 14
    .line 15
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    .line 20
    :goto_0
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 21
    .line 22
    const/high16 p4, 0x3f800000    # 1.0f

    .line 23
    .line 24
    iput p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 25
    .line 26
    iput p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 30
    .line 31
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 32
    .line 33
    iget p4, p1, Landroid/graphics/Rect;->left:I

    .line 34
    int-to-float p4, p4

    .line 35
    .line 36
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 37
    int-to-float v1, v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 46
    move-result v4

    .line 47
    int-to-float v4, v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p4, v1, v2, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 51
    .line 52
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 53
    .line 54
    iget p4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 58
    move-result-object p4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 62
    .line 63
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 64
    .line 65
    iget p4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p1, p2, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 69
    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arc"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 3
    return-void
.end method

.method public setStartCurrentState(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 6
    .line 7
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v3

    .line 20
    int-to-float v3, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method public setStartState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cw",
            "constraintSet",
            "parentWidth",
            "parentHeight"
        }
    .end annotation

    .line 18
    iget v3, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    if-eqz v3, :cond_0

    .line 19
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 20
    :goto_0
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 p3, 0x0

    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 21
    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 23
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget p3, v1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, v1, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p3, p4, v2, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 24
    iget p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p1

    .line 25
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 26
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 27
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget p4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p3, v1, p2, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 28
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 29
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    iput p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 30
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 31
    iget-object p2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    iget-object p4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    invoke-static {p2, p3, p4, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/motion/utils/ViewState;Landroid/view/View;III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "v",
            "rotation",
            "preWidth",
            "preHeight"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 2
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p3, v1, :cond_1

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget p4, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    add-int/2addr p4, v1

    .line 5
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    add-int/2addr v1, v3

    .line 6
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v3

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    sub-int/2addr p5, v1

    iput p5, v0, Landroid/graphics/Rect;->left:I

    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/2addr p4, v2

    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 8
    iget p4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result p5

    add-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 9
    iget p4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result p5

    add-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 10
    :cond_1
    iget p5, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    add-int/2addr p5, v1

    .line 11
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    add-int/2addr v1, v3

    .line 12
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v1

    add-int/2addr p5, v1

    div-int/2addr p5, v2

    sub-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 14
    iget p4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result p5

    add-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 15
    iget p4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result p5

    add-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    :goto_0
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget p5, v0, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p4, p5, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 17
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget p1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->rotation:F

    invoke-virtual {p4, v0, p2, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroid/view/View;IF)V

    return-void
.end method

.method public setTransformPivotTarget(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformPivotTarget"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 6
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mConstraintTag:Ljava/lang/String;

    .line 25
    :cond_0
    return-void
.end method

.method public setup(IIFJ)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "transitionDuration",
            "currentTime"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    new-instance v2, Ljava/util/HashSet;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    new-instance v3, Ljava/util/HashSet;

    .line 20
    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    new-instance v4, Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 30
    .line 31
    sget v6, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 32
    .line 33
    if-eq v5, v6, :cond_0

    .line 34
    .line 35
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 36
    .line 37
    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 38
    .line 39
    :cond_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 40
    .line 41
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v6, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 45
    .line 46
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-eqz v5, :cond_7

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v5

    .line 53
    const/4 v7, 0x0

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v8

    .line 58
    .line 59
    if-eqz v8, :cond_8

    .line 60
    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    check-cast v8, Landroidx/constraintlayout/motion/widget/Key;

    .line 66
    .line 67
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 68
    .line 69
    if-eqz v9, :cond_2

    .line 70
    move-object v13, v8

    .line 71
    .line 72
    check-cast v13, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 73
    .line 74
    new-instance v10, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 75
    .line 76
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 77
    .line 78
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 79
    .line 80
    move/from16 v11, p1

    .line 81
    .line 82
    move/from16 v12, p2

    .line 83
    .line 84
    .line 85
    invoke-direct/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 89
    .line 90
    iget v8, v13, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->mCurveFit:I

    .line 91
    .line 92
    sget v9, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 93
    .line 94
    if-eq v8, v9, :cond_1

    .line 95
    .line 96
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_2
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyCycle;

    .line 100
    .line 101
    if-eqz v9, :cond_3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_3
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 108
    .line 109
    if-eqz v9, :cond_4

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_4
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 116
    .line 117
    if-eqz v9, :cond_6

    .line 118
    .line 119
    if-nez v7, :cond_5

    .line 120
    .line 121
    new-instance v7, Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    :cond_5
    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    goto :goto_0

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    .line 137
    goto :goto_0

    .line 138
    :cond_7
    const/4 v7, 0x0

    .line 139
    :cond_8
    const/4 v5, 0x0

    .line 140
    .line 141
    if-eqz v7, :cond_9

    .line 142
    .line 143
    new-array v8, v5, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    move-result-object v7

    .line 148
    .line 149
    check-cast v7, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 150
    .line 151
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 152
    .line 153
    .line 154
    :cond_9
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 155
    move-result v7

    .line 156
    .line 157
    const-string v8, ","

    .line 158
    .line 159
    const-string v9, "CUSTOM,"

    .line 160
    const/4 v10, 0x1

    .line 161
    .line 162
    if-nez v7, :cond_14

    .line 163
    .line 164
    new-instance v7, Ljava/util/HashMap;

    .line 165
    .line 166
    .line 167
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 168
    .line 169
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object v7

    .line 174
    .line 175
    .line 176
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v11

    .line 178
    .line 179
    if-eqz v11, :cond_f

    .line 180
    .line 181
    .line 182
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v11

    .line 184
    .line 185
    check-cast v11, Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 189
    move-result v12

    .line 190
    .line 191
    if-eqz v12, :cond_d

    .line 192
    .line 193
    new-instance v12, Landroid/util/SparseArray;

    .line 194
    .line 195
    .line 196
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 200
    move-result-object v13

    .line 201
    .line 202
    aget-object v13, v13, v10

    .line 203
    .line 204
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    move-result-object v14

    .line 209
    .line 210
    .line 211
    :cond_a
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    move-result v15

    .line 213
    .line 214
    if-eqz v15, :cond_c

    .line 215
    .line 216
    .line 217
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    move-result-object v15

    .line 219
    .line 220
    check-cast v15, Landroidx/constraintlayout/motion/widget/Key;

    .line 221
    .line 222
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 223
    .line 224
    if-nez v6, :cond_b

    .line 225
    goto :goto_2

    .line 226
    .line 227
    .line 228
    :cond_b
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-result-object v6

    .line 230
    .line 231
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 232
    .line 233
    if-eqz v6, :cond_a

    .line 234
    .line 235
    iget v15, v15, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12, v15, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 239
    goto :goto_2

    .line 240
    .line 241
    .line 242
    :cond_c
    invoke-static {v11, v12}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 243
    move-result-object v6

    .line 244
    goto :goto_3

    .line 245
    .line 246
    .line 247
    :cond_d
    invoke-static {v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 248
    move-result-object v6

    .line 249
    .line 250
    :goto_3
    if-nez v6, :cond_e

    .line 251
    goto :goto_1

    .line 252
    .line 253
    .line 254
    :cond_e
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 255
    .line 256
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    goto :goto_1

    .line 261
    .line 262
    :cond_f
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 263
    .line 264
    if-eqz v6, :cond_11

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 268
    move-result-object v6

    .line 269
    .line 270
    .line 271
    :cond_10
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    move-result v7

    .line 273
    .line 274
    if-eqz v7, :cond_11

    .line 275
    .line 276
    .line 277
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    move-result-object v7

    .line 279
    .line 280
    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 281
    .line 282
    instance-of v11, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 283
    .line 284
    if-eqz v11, :cond_10

    .line 285
    .line 286
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    .line 290
    goto :goto_4

    .line 291
    .line 292
    :cond_11
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 293
    .line 294
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v7, v5}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 298
    .line 299
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 300
    .line 301
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 302
    .line 303
    const/16 v11, 0x64

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v7, v11}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 307
    .line 308
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 312
    move-result-object v6

    .line 313
    .line 314
    .line 315
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 316
    move-result-object v6

    .line 317
    .line 318
    .line 319
    :cond_12
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    move-result v7

    .line 321
    .line 322
    if-eqz v7, :cond_14

    .line 323
    .line 324
    .line 325
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    move-result-object v7

    .line 327
    .line 328
    check-cast v7, Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 332
    move-result v11

    .line 333
    .line 334
    if-eqz v11, :cond_13

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    move-result-object v11

    .line 339
    .line 340
    check-cast v11, Ljava/lang/Integer;

    .line 341
    .line 342
    if-eqz v11, :cond_13

    .line 343
    .line 344
    .line 345
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 346
    move-result v11

    .line 347
    goto :goto_6

    .line 348
    :cond_13
    move v11, v5

    .line 349
    .line 350
    :goto_6
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-result-object v7

    .line 355
    .line 356
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 357
    .line 358
    if-eqz v7, :cond_12

    .line 359
    .line 360
    .line 361
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    .line 362
    goto :goto_5

    .line 363
    .line 364
    .line 365
    :cond_14
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 366
    move-result v6

    .line 367
    .line 368
    if-nez v6, :cond_20

    .line 369
    .line 370
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 371
    .line 372
    if-nez v6, :cond_15

    .line 373
    .line 374
    new-instance v6, Ljava/util/HashMap;

    .line 375
    .line 376
    .line 377
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 378
    .line 379
    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 380
    .line 381
    .line 382
    :cond_15
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 383
    move-result-object v1

    .line 384
    .line 385
    .line 386
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    move-result v6

    .line 388
    .line 389
    if-eqz v6, :cond_1c

    .line 390
    .line 391
    .line 392
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    move-result-object v6

    .line 394
    .line 395
    check-cast v6, Ljava/lang/String;

    .line 396
    .line 397
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 401
    move-result v7

    .line 402
    .line 403
    if-eqz v7, :cond_16

    .line 404
    goto :goto_7

    .line 405
    .line 406
    .line 407
    :cond_16
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 408
    move-result v7

    .line 409
    .line 410
    if-eqz v7, :cond_1a

    .line 411
    .line 412
    new-instance v7, Landroid/util/SparseArray;

    .line 413
    .line 414
    .line 415
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 419
    move-result-object v11

    .line 420
    .line 421
    aget-object v11, v11, v10

    .line 422
    .line 423
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 427
    move-result-object v12

    .line 428
    .line 429
    .line 430
    :cond_17
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    move-result v13

    .line 432
    .line 433
    if-eqz v13, :cond_19

    .line 434
    .line 435
    .line 436
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    move-result-object v13

    .line 438
    .line 439
    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    .line 440
    .line 441
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 442
    .line 443
    if-nez v14, :cond_18

    .line 444
    goto :goto_8

    .line 445
    .line 446
    .line 447
    :cond_18
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    move-result-object v14

    .line 449
    .line 450
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 451
    .line 452
    if-eqz v14, :cond_17

    .line 453
    .line 454
    iget v13, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 455
    .line 456
    .line 457
    invoke-virtual {v7, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 458
    goto :goto_8

    .line 459
    .line 460
    .line 461
    :cond_19
    invoke-static {v6, v7}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 462
    move-result-object v7

    .line 463
    .line 464
    move-wide/from16 v11, p4

    .line 465
    goto :goto_9

    .line 466
    .line 467
    :cond_1a
    move-wide/from16 v11, p4

    .line 468
    .line 469
    .line 470
    invoke-static {v6, v11, v12}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 471
    move-result-object v7

    .line 472
    .line 473
    :goto_9
    if-nez v7, :cond_1b

    .line 474
    goto :goto_7

    .line 475
    .line 476
    .line 477
    :cond_1b
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setType(Ljava/lang/String;)V

    .line 478
    .line 479
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v13, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    goto :goto_7

    .line 484
    .line 485
    :cond_1c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 486
    .line 487
    if-eqz v1, :cond_1e

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 491
    move-result-object v1

    .line 492
    .line 493
    .line 494
    :cond_1d
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    move-result v6

    .line 496
    .line 497
    if-eqz v6, :cond_1e

    .line 498
    .line 499
    .line 500
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    move-result-object v6

    .line 502
    .line 503
    check-cast v6, Landroidx/constraintlayout/motion/widget/Key;

    .line 504
    .line 505
    instance-of v7, v6, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 506
    .line 507
    if-eqz v7, :cond_1d

    .line 508
    .line 509
    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 510
    .line 511
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    .line 515
    goto :goto_a

    .line 516
    .line 517
    :cond_1e
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 521
    move-result-object v1

    .line 522
    .line 523
    .line 524
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 525
    move-result-object v1

    .line 526
    .line 527
    .line 528
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 529
    move-result v6

    .line 530
    .line 531
    if-eqz v6, :cond_20

    .line 532
    .line 533
    .line 534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 535
    move-result-object v6

    .line 536
    .line 537
    check-cast v6, Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 541
    move-result v7

    .line 542
    .line 543
    if-eqz v7, :cond_1f

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    move-result-object v7

    .line 548
    .line 549
    check-cast v7, Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 553
    move-result v7

    .line 554
    goto :goto_c

    .line 555
    :cond_1f
    move v7, v5

    .line 556
    .line 557
    :goto_c
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    move-result-object v6

    .line 562
    .line 563
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    .line 567
    goto :goto_b

    .line 568
    .line 569
    :cond_20
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 573
    move-result v1

    .line 574
    .line 575
    add-int/lit8 v4, v1, 0x2

    .line 576
    .line 577
    new-array v6, v4, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 578
    .line 579
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 580
    .line 581
    aput-object v7, v6, v5

    .line 582
    add-int/2addr v1, v10

    .line 583
    .line 584
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 585
    .line 586
    aput-object v7, v6, v1

    .line 587
    .line 588
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 592
    move-result v1

    .line 593
    .line 594
    if-lez v1, :cond_21

    .line 595
    .line 596
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 597
    const/4 v7, -0x1

    .line 598
    .line 599
    if-ne v1, v7, :cond_21

    .line 600
    .line 601
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 602
    .line 603
    :cond_21
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 607
    move-result-object v1

    .line 608
    move v7, v10

    .line 609
    .line 610
    .line 611
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    move-result v8

    .line 613
    .line 614
    if-eqz v8, :cond_22

    .line 615
    .line 616
    .line 617
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    move-result-object v8

    .line 619
    .line 620
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 621
    .line 622
    add-int/lit8 v11, v7, 0x1

    .line 623
    .line 624
    aput-object v8, v6, v7

    .line 625
    move v7, v11

    .line 626
    goto :goto_d

    .line 627
    .line 628
    :cond_22
    new-instance v1, Ljava/util/HashSet;

    .line 629
    .line 630
    .line 631
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 632
    .line 633
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 634
    .line 635
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 639
    move-result-object v7

    .line 640
    .line 641
    .line 642
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 643
    move-result-object v7

    .line 644
    .line 645
    .line 646
    :cond_23
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    move-result v8

    .line 648
    .line 649
    if-eqz v8, :cond_24

    .line 650
    .line 651
    .line 652
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    move-result-object v8

    .line 654
    .line 655
    check-cast v8, Ljava/lang/String;

    .line 656
    .line 657
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 658
    .line 659
    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v11, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 663
    move-result v11

    .line 664
    .line 665
    if-eqz v11, :cond_23

    .line 666
    .line 667
    new-instance v11, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    move-result-object v11

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 684
    move-result v11

    .line 685
    .line 686
    if-nez v11, :cond_23

    .line 687
    .line 688
    .line 689
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 690
    goto :goto_e

    .line 691
    .line 692
    :cond_24
    new-array v2, v5, [Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 696
    move-result-object v1

    .line 697
    .line 698
    check-cast v1, [Ljava/lang/String;

    .line 699
    .line 700
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 701
    array-length v1, v1

    .line 702
    .line 703
    new-array v1, v1, [I

    .line 704
    .line 705
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    .line 706
    move v1, v5

    .line 707
    .line 708
    :goto_f
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 709
    array-length v7, v2

    .line 710
    .line 711
    if-ge v1, v7, :cond_27

    .line 712
    .line 713
    aget-object v2, v2, v1

    .line 714
    .line 715
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    .line 716
    .line 717
    aput v5, v7, v1

    .line 718
    move v7, v5

    .line 719
    .line 720
    :goto_10
    if-ge v7, v4, :cond_26

    .line 721
    .line 722
    aget-object v8, v6, v7

    .line 723
    .line 724
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v8, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 728
    move-result v8

    .line 729
    .line 730
    if-eqz v8, :cond_25

    .line 731
    .line 732
    aget-object v8, v6, v7

    .line 733
    .line 734
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    move-result-object v8

    .line 739
    .line 740
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 741
    .line 742
    if-eqz v8, :cond_25

    .line 743
    .line 744
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    .line 745
    .line 746
    aget v7, v2, v1

    .line 747
    .line 748
    .line 749
    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    .line 750
    move-result v8

    .line 751
    add-int/2addr v7, v8

    .line 752
    .line 753
    aput v7, v2, v1

    .line 754
    goto :goto_11

    .line 755
    .line 756
    :cond_25
    add-int/lit8 v7, v7, 0x1

    .line 757
    goto :goto_10

    .line 758
    .line 759
    :cond_26
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 760
    goto :goto_f

    .line 761
    .line 762
    :cond_27
    aget-object v1, v6, v5

    .line 763
    .line 764
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 765
    .line 766
    sget v7, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 767
    .line 768
    if-eq v1, v7, :cond_28

    .line 769
    move v1, v10

    .line 770
    goto :goto_12

    .line 771
    :cond_28
    move v1, v5

    .line 772
    :goto_12
    array-length v2, v2

    .line 773
    .line 774
    const/16 v7, 0x12

    .line 775
    add-int/2addr v7, v2

    .line 776
    .line 777
    new-array v2, v7, [Z

    .line 778
    move v8, v10

    .line 779
    .line 780
    :goto_13
    if-ge v8, v4, :cond_29

    .line 781
    .line 782
    aget-object v9, v6, v8

    .line 783
    .line 784
    add-int/lit8 v11, v8, -0x1

    .line 785
    .line 786
    aget-object v11, v6, v11

    .line 787
    .line 788
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v9, v11, v2, v12, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V

    .line 792
    .line 793
    add-int/lit8 v8, v8, 0x1

    .line 794
    goto :goto_13

    .line 795
    :cond_29
    move v8, v5

    .line 796
    move v1, v10

    .line 797
    .line 798
    :goto_14
    if-ge v1, v7, :cond_2b

    .line 799
    .line 800
    aget-boolean v9, v2, v1

    .line 801
    .line 802
    if-eqz v9, :cond_2a

    .line 803
    .line 804
    add-int/lit8 v8, v8, 0x1

    .line 805
    .line 806
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 807
    goto :goto_14

    .line 808
    .line 809
    :cond_2b
    new-array v1, v8, [I

    .line 810
    .line 811
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 812
    const/4 v1, 0x2

    .line 813
    .line 814
    .line 815
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    .line 816
    move-result v8

    .line 817
    .line 818
    new-array v9, v8, [D

    .line 819
    .line 820
    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 821
    .line 822
    new-array v8, v8, [D

    .line 823
    .line 824
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 825
    move v9, v5

    .line 826
    move v8, v10

    .line 827
    .line 828
    :goto_15
    if-ge v8, v7, :cond_2d

    .line 829
    .line 830
    aget-boolean v11, v2, v8

    .line 831
    .line 832
    if-eqz v11, :cond_2c

    .line 833
    .line 834
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 835
    .line 836
    add-int/lit8 v12, v9, 0x1

    .line 837
    .line 838
    aput v8, v11, v9

    .line 839
    move v9, v12

    .line 840
    .line 841
    :cond_2c
    add-int/lit8 v8, v8, 0x1

    .line 842
    goto :goto_15

    .line 843
    .line 844
    :cond_2d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 845
    array-length v2, v2

    .line 846
    .line 847
    new-array v7, v1, [I

    .line 848
    .line 849
    aput v2, v7, v10

    .line 850
    .line 851
    aput v4, v7, v5

    .line 852
    .line 853
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 854
    .line 855
    .line 856
    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 857
    move-result-object v7

    .line 858
    .line 859
    check-cast v7, [[D

    .line 860
    .line 861
    new-array v8, v4, [D

    .line 862
    move v9, v5

    .line 863
    .line 864
    :goto_16
    if-ge v9, v4, :cond_2e

    .line 865
    .line 866
    aget-object v11, v6, v9

    .line 867
    .line 868
    aget-object v12, v7, v9

    .line 869
    .line 870
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 871
    .line 872
    .line 873
    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    .line 874
    .line 875
    aget-object v11, v6, v9

    .line 876
    .line 877
    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 878
    float-to-double v11, v11

    .line 879
    .line 880
    aput-wide v11, v8, v9

    .line 881
    .line 882
    add-int/lit8 v9, v9, 0x1

    .line 883
    goto :goto_16

    .line 884
    :cond_2e
    move v9, v5

    .line 885
    .line 886
    :goto_17
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 887
    array-length v12, v11

    .line 888
    .line 889
    if-ge v9, v12, :cond_30

    .line 890
    .line 891
    aget v11, v11, v9

    .line 892
    .line 893
    sget-object v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    .line 894
    array-length v12, v12

    .line 895
    .line 896
    if-ge v11, v12, :cond_2f

    .line 897
    .line 898
    new-instance v11, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .line 903
    sget-object v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    .line 904
    .line 905
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 906
    .line 907
    aget v13, v13, v9

    .line 908
    .line 909
    aget-object v12, v12, v13

    .line 910
    .line 911
    .line 912
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    const-string v12, " ["

    .line 915
    .line 916
    .line 917
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    move-result-object v11

    .line 922
    move v12, v5

    .line 923
    .line 924
    :goto_18
    if-ge v12, v4, :cond_2f

    .line 925
    .line 926
    new-instance v13, Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    aget-object v11, v7, v12

    .line 935
    .line 936
    aget-wide v14, v11, v9

    .line 937
    .line 938
    .line 939
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    move-result-object v11

    .line 944
    .line 945
    add-int/lit8 v12, v12, 0x1

    .line 946
    goto :goto_18

    .line 947
    .line 948
    :cond_2f
    add-int/lit8 v9, v9, 0x1

    .line 949
    goto :goto_17

    .line 950
    .line 951
    :cond_30
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 952
    array-length v9, v9

    .line 953
    add-int/2addr v9, v10

    .line 954
    .line 955
    new-array v9, v9, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 956
    .line 957
    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 958
    move v9, v5

    .line 959
    .line 960
    :goto_19
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 961
    array-length v12, v11

    .line 962
    .line 963
    if-ge v9, v12, :cond_34

    .line 964
    .line 965
    aget-object v11, v11, v9

    .line 966
    move v12, v5

    .line 967
    move v14, v12

    .line 968
    const/4 v13, 0x0

    .line 969
    const/4 v15, 0x0

    .line 970
    .line 971
    :goto_1a
    if-ge v12, v4, :cond_33

    .line 972
    .line 973
    move/from16 p1, v10

    .line 974
    .line 975
    aget-object v10, v6, v12

    .line 976
    .line 977
    .line 978
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    .line 979
    move-result v10

    .line 980
    .line 981
    if-eqz v10, :cond_32

    .line 982
    .line 983
    if-nez v15, :cond_31

    .line 984
    .line 985
    new-array v13, v4, [D

    .line 986
    .line 987
    aget-object v10, v6, v12

    .line 988
    .line 989
    .line 990
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    .line 991
    move-result v10

    .line 992
    .line 993
    new-array v15, v1, [I

    .line 994
    .line 995
    aput v10, v15, p1

    .line 996
    .line 997
    aput v4, v15, v5

    .line 998
    .line 999
    .line 1000
    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1001
    move-result-object v10

    .line 1002
    move-object v15, v10

    .line 1003
    .line 1004
    check-cast v15, [[D

    .line 1005
    .line 1006
    :cond_31
    aget-object v10, v6, v12

    .line 1007
    .line 1008
    iget v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 1009
    .line 1010
    move-object/from16 p4, v6

    .line 1011
    float-to-double v5, v1

    .line 1012
    .line 1013
    aput-wide v5, v13, v14

    .line 1014
    .line 1015
    aget-object v1, v15, v14

    .line 1016
    const/4 v5, 0x0

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v10, v11, v1, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    .line 1020
    .line 1021
    add-int/lit8 v14, v14, 0x1

    .line 1022
    goto :goto_1b

    .line 1023
    .line 1024
    :cond_32
    move-object/from16 p4, v6

    .line 1025
    .line 1026
    :goto_1b
    add-int/lit8 v12, v12, 0x1

    .line 1027
    .line 1028
    move/from16 v10, p1

    .line 1029
    .line 1030
    move-object/from16 v6, p4

    .line 1031
    const/4 v1, 0x2

    .line 1032
    const/4 v5, 0x0

    .line 1033
    goto :goto_1a

    .line 1034
    .line 1035
    :cond_33
    move-object/from16 p4, v6

    .line 1036
    .line 1037
    move/from16 p1, v10

    .line 1038
    .line 1039
    .line 1040
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 1041
    move-result-object v1

    .line 1042
    .line 1043
    .line 1044
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1045
    move-result-object v5

    .line 1046
    .line 1047
    check-cast v5, [[D

    .line 1048
    .line 1049
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1050
    .line 1051
    add-int/lit8 v9, v9, 0x1

    .line 1052
    .line 1053
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 1054
    .line 1055
    .line 1056
    invoke-static {v10, v1, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1057
    move-result-object v1

    .line 1058
    .line 1059
    aput-object v1, v6, v9

    .line 1060
    .line 1061
    move/from16 v10, p1

    .line 1062
    .line 1063
    move-object/from16 v6, p4

    .line 1064
    const/4 v1, 0x2

    .line 1065
    const/4 v5, 0x0

    .line 1066
    goto :goto_19

    .line 1067
    .line 1068
    :cond_34
    move-object/from16 p4, v6

    .line 1069
    .line 1070
    move/from16 p1, v10

    .line 1071
    .line 1072
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1073
    .line 1074
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 1075
    .line 1076
    .line 1077
    invoke-static {v5, v8, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1078
    move-result-object v5

    .line 1079
    .line 1080
    const/16 v16, 0x0

    .line 1081
    .line 1082
    aput-object v5, v1, v16

    .line 1083
    .line 1084
    aget-object v1, p4, v16

    .line 1085
    .line 1086
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 1087
    .line 1088
    sget v5, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 1089
    .line 1090
    if-eq v1, v5, :cond_36

    .line 1091
    .line 1092
    new-array v1, v4, [I

    .line 1093
    .line 1094
    new-array v5, v4, [D

    .line 1095
    const/4 v6, 0x2

    .line 1096
    .line 1097
    new-array v7, v6, [I

    .line 1098
    .line 1099
    aput v6, v7, p1

    .line 1100
    .line 1101
    aput v4, v7, v16

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1105
    move-result-object v2

    .line 1106
    .line 1107
    check-cast v2, [[D

    .line 1108
    const/4 v6, 0x0

    .line 1109
    .line 1110
    :goto_1c
    if-ge v6, v4, :cond_35

    .line 1111
    .line 1112
    aget-object v7, p4, v6

    .line 1113
    .line 1114
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 1115
    .line 1116
    aput v8, v1, v6

    .line 1117
    .line 1118
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 1119
    float-to-double v8, v8

    .line 1120
    .line 1121
    aput-wide v8, v5, v6

    .line 1122
    .line 1123
    aget-object v8, v2, v6

    .line 1124
    .line 1125
    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 1126
    float-to-double v9, v9

    .line 1127
    .line 1128
    const/16 v16, 0x0

    .line 1129
    .line 1130
    aput-wide v9, v8, v16

    .line 1131
    .line 1132
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 1133
    float-to-double v9, v7

    .line 1134
    .line 1135
    aput-wide v9, v8, p1

    .line 1136
    .line 1137
    add-int/lit8 v6, v6, 0x1

    .line 1138
    goto :goto_1c

    .line 1139
    .line 1140
    .line 1141
    :cond_35
    invoke-static {v1, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1142
    move-result-object v1

    .line 1143
    .line 1144
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1145
    .line 1146
    :cond_36
    new-instance v1, Ljava/util/HashMap;

    .line 1147
    .line 1148
    .line 1149
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1150
    .line 1151
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1152
    .line 1153
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 1154
    .line 1155
    if-eqz v1, :cond_3c

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1159
    move-result-object v1

    .line 1160
    .line 1161
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1162
    .line 1163
    .line 1164
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1165
    move-result v3

    .line 1166
    .line 1167
    if-eqz v3, :cond_39

    .line 1168
    .line 1169
    .line 1170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1171
    move-result-object v3

    .line 1172
    .line 1173
    check-cast v3, Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    invoke-static {v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 1177
    move-result-object v4

    .line 1178
    .line 1179
    if-nez v4, :cond_37

    .line 1180
    goto :goto_1d

    .line 1181
    .line 1182
    .line 1183
    :cond_37
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->variesByPath()Z

    .line 1184
    move-result v5

    .line 1185
    .line 1186
    if-eqz v5, :cond_38

    .line 1187
    .line 1188
    .line 1189
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1190
    move-result v5

    .line 1191
    .line 1192
    if-eqz v5, :cond_38

    .line 1193
    .line 1194
    .line 1195
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getPreCycleDistance()F

    .line 1196
    move-result v2

    .line 1197
    .line 1198
    .line 1199
    :cond_38
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 1200
    .line 1201
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    goto :goto_1d

    .line 1206
    .line 1207
    :cond_39
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1211
    move-result-object v1

    .line 1212
    .line 1213
    .line 1214
    :cond_3a
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1215
    move-result v3

    .line 1216
    .line 1217
    if-eqz v3, :cond_3b

    .line 1218
    .line 1219
    .line 1220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1221
    move-result-object v3

    .line 1222
    .line 1223
    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    .line 1224
    .line 1225
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/KeyCycle;

    .line 1226
    .line 1227
    if-eqz v4, :cond_3a

    .line 1228
    .line 1229
    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycle;

    .line 1230
    .line 1231
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    .line 1235
    goto :goto_1e

    .line 1236
    .line 1237
    :cond_3b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1241
    move-result-object v1

    .line 1242
    .line 1243
    .line 1244
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1245
    move-result-object v1

    .line 1246
    .line 1247
    .line 1248
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1249
    move-result v3

    .line 1250
    .line 1251
    if-eqz v3, :cond_3c

    .line 1252
    .line 1253
    .line 1254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1255
    move-result-object v3

    .line 1256
    .line 1257
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V

    .line 1261
    goto :goto_1f

    .line 1262
    :cond_3c
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionController"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 10
    .line 11
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

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
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 13
    .line 14
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 25
    .line 26
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 37
    .line 38
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 47
    .line 48
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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
