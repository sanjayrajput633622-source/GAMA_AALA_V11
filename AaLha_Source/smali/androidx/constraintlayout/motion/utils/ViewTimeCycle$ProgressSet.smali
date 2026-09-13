.class Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    .line 7
    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 7
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
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 8
    move-object v1, p0

    .line 9
    move-object v5, p1

    .line 10
    move v2, p2

    .line 11
    move-wide v3, p3

    .line 12
    move-object v6, p5

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v1, p0

    .line 22
    move-object v5, p1

    .line 23
    move v2, p2

    .line 24
    move-wide v3, p3

    .line 25
    move-object v6, p5

    .line 26
    .line 27
    iget-boolean p1, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    return p2

    .line 32
    :cond_1
    const/4 p1, 0x1

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    const-string p4, "setProgress"

    .line 39
    .line 40
    new-array p5, p1, [Ljava/lang/Class;

    .line 41
    .line 42
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    aput-object v0, p5, p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p4, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :catch_0
    iput-boolean p1, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    .line 52
    const/4 p3, 0x0

    .line 53
    .line 54
    :goto_0
    if-eqz p3, :cond_2

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 58
    move-result p4

    .line 59
    .line 60
    .line 61
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    move-result-object p4

    .line 63
    .line 64
    new-array p1, p1, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object p4, p1, p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v5, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    :catch_1
    :cond_2
    :goto_1
    iget-boolean p1, v1, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 72
    return p1
.end method
