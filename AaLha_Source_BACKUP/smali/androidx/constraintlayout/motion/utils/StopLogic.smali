.class public Landroidx/constraintlayout/motion/utils/StopLogic;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "SourceFile"


# instance fields
.field private mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

.field private mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

.field private mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 13
    return-void
.end method


# virtual methods
.method public config(FFFFFF)V
    .locals 7
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
            "currentPos",
            "destination",
            "currentVelocity",
            "maxTime",
            "maxAcceleration",
            "maxVelocity"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move v6, p6

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->config(FFFFFF)V

    .line 14
    return-void
.end method

.method public debug(Ljava/lang/String;F)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desc",
            "time"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->debug(Ljava/lang/String;F)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getInterpolation(F)F
    .locals 1
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
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getInterpolation(F)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getVelocity()F
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {v0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getVelocity()F

    move-result v0

    return v0
.end method

.method public getVelocity(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getVelocity(F)F

    move-result p1

    return p1
.end method

.method public isStopped()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->isStopped()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public springConfig(FFFFFFFI)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPos",
            "destination",
            "currentVelocity",
            "mass",
            "stiffness",
            "damping",
            "stopThreshold",
            "boundaryMode"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 14
    .line 15
    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 16
    move v2, p1

    .line 17
    move v3, p2

    .line 18
    move v4, p3

    .line 19
    move v5, p4

    .line 20
    move v6, p5

    .line 21
    .line 22
    move/from16 v7, p6

    .line 23
    .line 24
    move/from16 v8, p7

    .line 25
    .line 26
    move/from16 v9, p8

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->springConfig(FFFFFFFI)V

    .line 30
    return-void
.end method
