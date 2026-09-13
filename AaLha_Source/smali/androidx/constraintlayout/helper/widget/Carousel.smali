.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Carousel"

.field public static final TOUCH_UP_CARRY_ON:I = 0x2

.field public static final TOUCH_UP_IMMEDIATE_STOP:I = 0x1


# instance fields
.field private backwardTransition:I

.field private dampening:F

.field private emptyViewBehavior:I

.field private firstViewReference:I

.field private forwardTransition:I

.field private infiniteCarousel:Z

.field private mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

.field private mAnimateTargetDelay:I

.field private mIndex:I

.field mLastStartId:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPreviousIndex:I

.field private mTargetIndex:I

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private nextState:I

.field private previousState:I

.field private startIndex:I

.field private touchUpMode:I

.field private velocityThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 5
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 10
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    const v1, 0x3f666666    # 0.9f

    .line 12
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 13
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    const/4 p1, 0x4

    .line 14
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 16
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    const/16 p1, 0xc8

    .line 18
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 19
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    .line 20
    new-instance p1, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 25
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 27
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 28
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 29
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 30
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 31
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    const v2, 0x3f666666    # 0.9f

    .line 32
    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 33
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    const/4 v0, 0x4

    .line 34
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 36
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 37
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    const/16 v0, 0xc8

    .line 38
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 39
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    .line 40
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 43
    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 44
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 45
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 46
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 48
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 49
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    const v1, 0x3f666666    # 0.9f

    .line 53
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 54
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    const/4 p3, 0x4

    .line 55
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    const/4 p3, 0x1

    .line 56
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 57
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 58
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    const/16 p3, 0xc8

    .line 59
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 60
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    .line 61
    new-instance p3, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    .line 8
    .line 9
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 10
    .line 11
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 18
    .line 19
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    .line 27
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    .line 28
    .line 29
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    .line 33
    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$500(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 3
    return p0
.end method

.method public static synthetic access$600(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 3
    return p0
.end method

.method public static synthetic access$700(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 3
    return p0
.end method

.method private enableAllTransitions(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDefinedTransitions()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private enableTransition(IZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transitionID",
            "enable"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return v1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    return v1

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ne p2, v0, :cond_3

    .line 24
    return v1

    .line 25
    .line 26
    .line 27
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_b

    .line 3
    .line 4
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v0, p2, :cond_a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    move-result v1

    .line 20
    .line 21
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_firstView:I

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 29
    move-result v1

    .line 30
    .line 31
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_backwardTransition:I

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    move-result v1

    .line 44
    .line 45
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_1
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_forwardTransition:I

    .line 50
    .line 51
    if-ne v1, v2, :cond_2

    .line 52
    .line 53
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 57
    move-result v1

    .line 58
    .line 59
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_emptyViewsBehavior:I

    .line 63
    .line 64
    if-ne v1, v2, :cond_3

    .line 65
    .line 66
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 70
    move-result v1

    .line 71
    .line 72
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_3
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_previousState:I

    .line 76
    .line 77
    if-ne v1, v2, :cond_4

    .line 78
    .line 79
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 83
    move-result v1

    .line 84
    .line 85
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_4
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_nextState:I

    .line 89
    .line 90
    if-ne v1, v2, :cond_5

    .line 91
    .line 92
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 96
    move-result v1

    .line 97
    .line 98
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_5
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_dampeningFactor:I

    .line 102
    .line 103
    if-ne v1, v2, :cond_6

    .line 104
    .line 105
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 109
    move-result v1

    .line 110
    .line 111
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_6
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUpMode:I

    .line 115
    .line 116
    if-ne v1, v2, :cond_7

    .line 117
    .line 118
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 122
    move-result v1

    .line 123
    .line 124
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_7
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_velocityThreshold:I

    .line 128
    .line 129
    if-ne v1, v2, :cond_8

    .line 130
    .line 131
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 135
    move-result v1

    .line 136
    .line 137
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 138
    goto :goto_1

    .line 139
    .line 140
    :cond_8
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_infinite:I

    .line 141
    .line 142
    if-ne v1, v2, :cond_9

    .line 143
    .line 144
    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 148
    move-result v1

    .line 149
    .line 150
    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 151
    .line 152
    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    .line 157
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    :cond_b
    return-void
.end method

.method private updateItems()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_6

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    move v2, v1

    .line 29
    .line 30
    :goto_0
    if-ge v2, v0, :cond_d

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Landroid/view/View;

    .line 39
    .line 40
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 41
    add-int/2addr v4, v2

    .line 42
    .line 43
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    .line 44
    sub-int/2addr v4, v5

    .line 45
    .line 46
    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 47
    .line 48
    if-eqz v5, :cond_a

    .line 49
    const/4 v5, 0x4

    .line 50
    .line 51
    if-gez v4, :cond_5

    .line 52
    .line 53
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 54
    .line 55
    if-eq v6, v5, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 63
    .line 64
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 65
    .line 66
    .line 67
    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 68
    move-result v5

    .line 69
    .line 70
    rem-int v5, v4, v5

    .line 71
    .line 72
    if-nez v5, :cond_4

    .line 73
    .line 74
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 75
    .line 76
    .line 77
    invoke-interface {v4, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_4
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 82
    .line 83
    .line 84
    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 85
    move-result v6

    .line 86
    .line 87
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 88
    .line 89
    .line 90
    invoke-interface {v7}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 91
    move-result v7

    .line 92
    rem-int/2addr v4, v7

    .line 93
    add-int/2addr v6, v4

    .line 94
    .line 95
    .line 96
    invoke-interface {v5, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    .line 97
    goto :goto_4

    .line 98
    .line 99
    :cond_5
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 100
    .line 101
    .line 102
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 103
    move-result v6

    .line 104
    .line 105
    if-lt v4, v6, :cond_9

    .line 106
    .line 107
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 108
    .line 109
    .line 110
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 111
    move-result v6

    .line 112
    .line 113
    if-ne v4, v6, :cond_6

    .line 114
    move v4, v1

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_6
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 118
    .line 119
    .line 120
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 121
    move-result v6

    .line 122
    .line 123
    if-le v4, v6, :cond_7

    .line 124
    .line 125
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 126
    .line 127
    .line 128
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 129
    move-result v6

    .line 130
    rem-int/2addr v4, v6

    .line 131
    .line 132
    :cond_7
    :goto_2
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 133
    .line 134
    if-eq v6, v5, :cond_8

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 138
    goto :goto_3

    .line 139
    .line 140
    .line 141
    :cond_8
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 142
    .line 143
    :goto_3
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 144
    .line 145
    .line 146
    invoke-interface {v5, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    .line 147
    goto :goto_4

    .line 148
    .line 149
    .line 150
    :cond_9
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 151
    .line 152
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 153
    .line 154
    .line 155
    invoke-interface {v5, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    .line 156
    goto :goto_4

    .line 157
    .line 158
    :cond_a
    if-gez v4, :cond_b

    .line 159
    .line 160
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 164
    goto :goto_4

    .line 165
    .line 166
    :cond_b
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 167
    .line 168
    .line 169
    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 170
    move-result v5

    .line 171
    .line 172
    if-lt v4, v5, :cond_c

    .line 173
    .line 174
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 178
    goto :goto_4

    .line 179
    .line 180
    .line 181
    :cond_c
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 182
    .line 183
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 184
    .line 185
    .line 186
    invoke-interface {v5, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    .line 187
    .line 188
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 193
    const/4 v2, -0x1

    .line 194
    .line 195
    if-eq v0, v2, :cond_e

    .line 196
    .line 197
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 198
    .line 199
    if-eq v0, v3, :cond_e

    .line 200
    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 202
    .line 203
    new-instance v3, Landroidx/constraintlayout/helper/widget/a;

    .line 204
    .line 205
    .line 206
    invoke-direct {v3, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 210
    goto :goto_5

    .line 211
    .line 212
    :cond_e
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 213
    .line 214
    if-ne v0, v3, :cond_f

    .line 215
    .line 216
    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 217
    .line 218
    :cond_f
    :goto_5
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 219
    .line 220
    if-eq v0, v2, :cond_14

    .line 221
    .line 222
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 223
    .line 224
    if-ne v0, v2, :cond_10

    .line 225
    goto :goto_8

    .line 226
    .line 227
    :cond_10
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 228
    .line 229
    if-eqz v0, :cond_11

    .line 230
    :goto_6
    return-void

    .line 231
    .line 232
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 233
    .line 234
    .line 235
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 236
    move-result v0

    .line 237
    .line 238
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 239
    const/4 v3, 0x1

    .line 240
    .line 241
    if-nez v2, :cond_12

    .line 242
    .line 243
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 244
    .line 245
    .line 246
    invoke-direct {p0, v2, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    .line 247
    goto :goto_7

    .line 248
    .line 249
    :cond_12
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 250
    .line 251
    .line 252
    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    .line 253
    .line 254
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 255
    .line 256
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    .line 260
    .line 261
    :goto_7
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 262
    sub-int/2addr v0, v3

    .line 263
    .line 264
    if-ne v2, v0, :cond_13

    .line 265
    .line 266
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 267
    .line 268
    .line 269
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    .line 270
    return-void

    .line 271
    .line 272
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 273
    .line 274
    .line 275
    invoke-direct {p0, v0, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    .line 276
    .line 277
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 278
    .line 279
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    .line 283
    :cond_14
    :goto_8
    return-void
.end method

.method private updateViewVisibility(ILandroid/view/View;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "constraintSetId",
            "view",
            "visibility"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 7
    :cond_1
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    const/4 v0, 0x1

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    return v0
.end method

.method private updateViewVisibility(Landroid/view/View;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 4
    aget v3, v0, v1

    invoke-direct {p0, v3, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(ILandroid/view/View;I)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 3
    return v0
.end method

.method public jumpToIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p1

    .line 16
    .line 17
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->refresh()V

    .line 21
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 21
    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 25
    .line 26
    aget v2, v2, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 33
    .line 34
    if-ne v4, v2, :cond_0

    .line 35
    .line 36
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    .line 37
    .line 38
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 47
    .line 48
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    .line 49
    const/4 v2, 0x2

    .line 50
    .line 51
    if-ne v1, v2, :cond_3

    .line 52
    .line 53
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x5

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 66
    .line 67
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    .line 80
    :cond_4
    return-void
.end method

.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "startId",
            "endId",
            "progress"
        }
    .end annotation

    .line 1
    .line 2
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    .line 3
    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentId"
        }
    .end annotation

    .line 1
    .line 2
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 3
    .line 4
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 24
    const/4 p2, 0x0

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-lt p1, v0, :cond_2

    .line 37
    .line 38
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 39
    .line 40
    :cond_2
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 41
    .line 42
    if-gez p1, :cond_5

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 48
    move-result p1

    .line 49
    .line 50
    add-int/lit8 p1, p1, -0x1

    .line 51
    .line 52
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_3
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 61
    move-result v0

    .line 62
    .line 63
    if-lt p1, v0, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 69
    move-result p1

    .line 70
    .line 71
    add-int/lit8 p1, p1, -0x1

    .line 72
    .line 73
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 74
    .line 75
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 76
    .line 77
    if-gez p1, :cond_5

    .line 78
    .line 79
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 80
    .line 81
    :cond_5
    :goto_1
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 82
    .line 83
    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 84
    .line 85
    if-eq p1, p2, :cond_6

    .line 86
    .line 87
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 88
    .line 89
    iget-object p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 93
    :cond_6
    return-void
.end method

.method public refresh()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Landroid/view/View;

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 21
    .line 22
    .line 23
    invoke-interface {v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    .line 24
    move-result v4

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 36
    .line 37
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    .line 47
    return-void
.end method

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 3
    return-void
.end method

.method public transitionToIndex(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "delay"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result p2

    .line 22
    .line 23
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    .line 29
    .line 30
    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 31
    .line 32
    if-ge p1, p2, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 35
    .line 36
    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 37
    .line 38
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    .line 42
    return-void

    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 45
    .line 46
    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    .line 47
    .line 48
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    .line 52
    return-void
.end method
