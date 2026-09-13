.class Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewOscillator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewOscillator;
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
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    .line 7
    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "t"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    const-string v3, "setProgress"

    .line 28
    .line 29
    new-array v4, v1, [Ljava/lang/Class;

    .line 30
    .line 31
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    aput-object v5, v4, v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :catch_0
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    :goto_0
    if-eqz v2, :cond_2

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 47
    move-result p2

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object p2, v1, v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :catch_1
    :cond_2
    :goto_1
    return-void
.end method
