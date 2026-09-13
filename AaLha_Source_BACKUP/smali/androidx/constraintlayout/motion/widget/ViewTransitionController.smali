.class public Landroidx/constraintlayout/motion/widget/ViewTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mRelatedViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field removeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;",
            ">;"
        }
    .end annotation
.end field

.field private viewTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/ViewTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layout"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string v0, "ViewTransitionController"

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    return-object p0
.end method

.method private listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransition",
            "isSet"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValueID()I

    .line 4
    move-result v3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValue()I

    .line 8
    move-result v5

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/SharedValues;

    .line 12
    move-result-object v6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValueID()I

    .line 16
    move-result v7

    .line 17
    .line 18
    new-instance v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move v4, p2

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/ViewTransition;IZI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v7, v0}, Landroidx/constraintlayout/widget/SharedValues;->addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    .line 28
    return-void
.end method

.method private varargs viewTransition(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vt",
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v4

    .line 2
    iget v0, p1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v2, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    return-void

    :cond_2
    move-object v2, p0

    move-object v1, p1

    move-object v6, p2

    .line 7
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/motion/widget/ViewTransition;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewTransition"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getStateTransition()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x4

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getStateTransition()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x5

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V

    .line 32
    :cond_1
    return-void
.end method

.method public addAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public animate()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    const/4 v0, 0x0

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 49
    :cond_2
    :goto_1
    return-void
.end method

.method public applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransitionId",
            "motionController"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    iget-object p1, v1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addAllFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public enableViewTransition(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "enable"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->setEnabled(Z)V

    .line 28
    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public isViewTransitionEnabled(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->isEnabled()Z

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public remove(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-ne v3, p1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v1, v2

    .line 28
    .line 29
    :goto_0
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    :cond_2
    return-void
.end method

.method public removeAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 6
    move-result v4

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    if-ne v4, v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 14
    const/4 v7, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    move-result v2

    .line 48
    move v3, v7

    .line 49
    .line 50
    :goto_0
    if-ge v3, v2, :cond_1

    .line 51
    .line 52
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    .line 60
    move-result v6

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 66
    .line 67
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 77
    move-result v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 81
    move-result v8

    .line 82
    .line 83
    new-instance v9, Landroid/graphics/Rect;

    .line 84
    .line 85
    .line 86
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 90
    move-result p1

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 98
    move-result v1

    .line 99
    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v2

    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    check-cast v2, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p1, v0, v8}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reactTo(IFF)V

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    const/4 v10, 0x1

    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    if-eq p1, v10, :cond_5

    .line 128
    goto :goto_3

    .line 129
    .line 130
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    move-result-object v11

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result v1

    .line 145
    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    .line 149
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->supports(I)Z

    .line 156
    move-result v2

    .line 157
    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object v12

    .line 165
    .line 166
    .line 167
    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v2

    .line 169
    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    .line 173
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    check-cast v2, Landroid/view/View;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    .line 180
    move-result v3

    .line 181
    .line 182
    if-nez v3, :cond_8

    .line 183
    goto :goto_2

    .line 184
    .line 185
    .line 186
    :cond_8
    invoke-virtual {v2, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 187
    float-to-int v3, v0

    .line 188
    float-to-int v6, v8

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, v3, v6}, Landroid/graphics/Rect;->contains(II)Z

    .line 192
    move-result v3

    .line 193
    .line 194
    if-eqz v3, :cond_7

    .line 195
    .line 196
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 197
    .line 198
    new-array v6, v10, [Landroid/view/View;

    .line 199
    .line 200
    aput-object v2, v6, v7

    .line 201
    move-object v2, p0

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 205
    goto :goto_2

    .line 206
    :cond_9
    :goto_3
    return-void
.end method

.method public varargs viewTransition(I[Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "views"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 10
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 11
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, p2, v5

    .line 12
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 13
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    new-array v3, v4, [Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/View;

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransition(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method
