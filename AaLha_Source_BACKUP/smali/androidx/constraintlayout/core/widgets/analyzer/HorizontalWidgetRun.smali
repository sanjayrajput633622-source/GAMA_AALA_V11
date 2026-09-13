.class public Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "SourceFile"


# static fields
.field private static tempDimensions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    .line 7
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 8
    .line 9
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 12
    .line 13
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 14
    .line 15
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 19
    return-void
.end method

.method private computeInsetRatio([IIIIIFI)V
    .locals 2

    .line 1
    sub-int/2addr p3, p2

    .line 2
    sub-int/2addr p5, p4

    .line 3
    const/4 p2, -0x1

    .line 4
    const/4 p4, 0x0

    .line 5
    .line 6
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq p7, p2, :cond_2

    .line 10
    .line 11
    if-eqz p7, :cond_1

    .line 12
    .line 13
    if-eq p7, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    int-to-float p2, p3

    .line 16
    mul-float/2addr p2, p6

    .line 17
    add-float/2addr p2, v0

    .line 18
    float-to-int p2, p2

    .line 19
    .line 20
    aput p3, p1, p4

    .line 21
    .line 22
    aput p2, p1, v1

    .line 23
    return-void

    .line 24
    :cond_1
    int-to-float p2, p5

    .line 25
    mul-float/2addr p2, p6

    .line 26
    add-float/2addr p2, v0

    .line 27
    float-to-int p2, p2

    .line 28
    .line 29
    aput p2, p1, p4

    .line 30
    .line 31
    aput p5, p1, v1

    .line 32
    return-void

    .line 33
    :cond_2
    int-to-float p2, p5

    .line 34
    mul-float/2addr p2, p6

    .line 35
    add-float/2addr p2, v0

    .line 36
    float-to-int p2, p2

    .line 37
    int-to-float p7, p3

    .line 38
    div-float/2addr p7, p6

    .line 39
    add-float/2addr p7, v0

    .line 40
    float-to-int p6, p7

    .line 41
    .line 42
    if-gt p2, p3, :cond_3

    .line 43
    .line 44
    aput p2, p1, p4

    .line 45
    .line 46
    aput p5, p1, v1

    .line 47
    return-void

    .line 48
    .line 49
    :cond_3
    if-gt p6, p5, :cond_4

    .line 50
    .line 51
    aput p3, p1, p4

    .line 52
    .line 53
    aput p6, p1, v1

    .line 54
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_5

    .line 6
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_1

    .line 9
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    if-ne v2, v1, :cond_2

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    sub-int/2addr v1, v2

    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_5

    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_5

    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_4

    .line 19
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    if-ne v2, v1, :cond_5

    .line 20
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 21
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    return-void

    .line 22
    :cond_5
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    if-eqz v4, :cond_c

    .line 23
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v0, v2

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_9

    aget-object v6, v0, v3

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_9

    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 26
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    return-void

    .line 27
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 28
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 29
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 30
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 31
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    return-void

    :cond_9
    if-eqz v5, :cond_a

    .line 33
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 34
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    return-void

    .line 36
    :cond_a
    aget-object v0, v0, v3

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_b

    .line 37
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 38
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    return-void

    .line 40
    :cond_b
    instance-of v0, v1, Landroidx/constraintlayout/core/widgets/Helper;

    if-nez v0, :cond_1a

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 41
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_1a

    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 43
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    return-void

    .line 45
    :cond_c
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v4, :cond_13

    .line 46
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_11

    const/4 v5, 0x3

    if-eq v4, v5, :cond_d

    goto/16 :goto_1

    .line 47
    :cond_d
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v5, :cond_10

    .line 48
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iput-object p0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 49
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iput-object p0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 50
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iput-object p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 51
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iput-object p0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 52
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 53
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-object p0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 57
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 61
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 64
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 65
    :cond_10
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 66
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 71
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_1

    .line 76
    :cond_12
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 77
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 80
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_13
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v1, v2

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_17

    aget-object v6, v1, v3

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_17

    .line 83
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    return-void

    .line 86
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 87
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v1

    if-eqz v0, :cond_15

    .line 88
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    :cond_15
    if-eqz v1, :cond_16

    .line 89
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    .line 90
    :cond_16
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunType:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    return-void

    :cond_17
    if-eqz v5, :cond_18

    .line 91
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 92
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    return-void

    .line 94
    :cond_18
    aget-object v1, v1, v3

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_19

    .line 95
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 96
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v2, -0x1

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    return-void

    .line 98
    :cond_19
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Helper;

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 99
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 100
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    :cond_1a
    return-void
.end method

.method public applyToWidget()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    .line 4
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    .line 10
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 14
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 22
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    .line 12
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 20
    .line 21
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 24
    .line 25
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 26
    return-void
.end method

.method public supportsWrapComputation()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3
    .line 4
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    .line 11
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "HorizontalRun "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 13

    .line 1
    .line 2
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType:[I

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunType:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v2

    .line 9
    .line 10
    aget v1, v1, v2

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x1

    .line 15
    .line 16
    if-eq v1, v9, :cond_2

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    if-eq v1, v3, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 24
    .line 25
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v2, v1, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->updateRunCenter(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 31
    return-void

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->updateRunEnd(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->updateRunStart(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    .line 39
    .line 40
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 41
    .line 42
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 43
    .line 44
    const/high16 v10, 0x3f000000    # 0.5f

    .line 45
    .line 46
    if-nez v1, :cond_1f

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 49
    .line 50
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 51
    .line 52
    if-ne v1, v4, :cond_1f

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 55
    .line 56
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 57
    .line 58
    if-eq v4, v2, :cond_1e

    .line 59
    .line 60
    if-eq v4, v3, :cond_3

    .line 61
    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :cond_3
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 65
    const/4 v4, -0x1

    .line 66
    .line 67
    if-eqz v2, :cond_8

    .line 68
    .line 69
    if-ne v2, v3, :cond_4

    .line 70
    goto :goto_4

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatioSide()I

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eq v1, v4, :cond_7

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    if-eq v1, v9, :cond_5

    .line 81
    move v1, v8

    .line 82
    goto :goto_3

    .line 83
    .line 84
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 85
    .line 86
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 87
    .line 88
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 89
    .line 90
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 91
    int-to-float v2, v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 95
    move-result v1

    .line 96
    :goto_1
    mul-float/2addr v2, v1

    .line 97
    :goto_2
    add-float/2addr v2, v10

    .line 98
    float-to-int v1, v2

    .line 99
    goto :goto_3

    .line 100
    .line 101
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 102
    .line 103
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 104
    .line 105
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 106
    .line 107
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 108
    int-to-float v2, v2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 112
    move-result v1

    .line 113
    div-float/2addr v2, v1

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 117
    .line 118
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 119
    .line 120
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 121
    .line 122
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 123
    int-to-float v2, v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 127
    move-result v1

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :goto_3
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 134
    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_8
    :goto_4
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 138
    .line 139
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 140
    .line 141
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 142
    .line 143
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 144
    .line 145
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 146
    .line 147
    if-eqz v2, :cond_9

    .line 148
    move v2, v9

    .line 149
    goto :goto_5

    .line 150
    :cond_9
    move v2, v8

    .line 151
    .line 152
    :goto_5
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 153
    .line 154
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 155
    .line 156
    if-eqz v3, :cond_a

    .line 157
    move v3, v9

    .line 158
    goto :goto_6

    .line 159
    :cond_a
    move v3, v8

    .line 160
    .line 161
    :goto_6
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 162
    .line 163
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 164
    .line 165
    if-eqz v5, :cond_b

    .line 166
    move v5, v9

    .line 167
    goto :goto_7

    .line 168
    :cond_b
    move v5, v8

    .line 169
    .line 170
    :goto_7
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 171
    .line 172
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 173
    .line 174
    if-eqz v6, :cond_c

    .line 175
    move v6, v9

    .line 176
    goto :goto_8

    .line 177
    :cond_c
    move v6, v8

    .line 178
    .line 179
    .line 180
    :goto_8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatioSide()I

    .line 181
    move-result v7

    .line 182
    .line 183
    if-eqz v2, :cond_12

    .line 184
    .line 185
    if-eqz v3, :cond_12

    .line 186
    .line 187
    if-eqz v5, :cond_12

    .line 188
    .line 189
    if-eqz v6, :cond_12

    .line 190
    .line 191
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 195
    move-result v6

    .line 196
    .line 197
    iget-boolean v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 198
    .line 199
    if-eqz v1, :cond_e

    .line 200
    .line 201
    iget-boolean v1, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 202
    .line 203
    if-eqz v1, :cond_e

    .line 204
    .line 205
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 206
    .line 207
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 208
    .line 209
    if-eqz v2, :cond_27

    .line 210
    .line 211
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 212
    .line 213
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 214
    .line 215
    if-nez v2, :cond_d

    .line 216
    .line 217
    goto/16 :goto_a

    .line 218
    .line 219
    :cond_d
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 220
    .line 221
    .line 222
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 226
    .line 227
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 228
    .line 229
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 230
    .line 231
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 232
    add-int/2addr v2, v1

    .line 233
    .line 234
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 235
    .line 236
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 237
    .line 238
    .line 239
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    move-result-object v1

    .line 241
    .line 242
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 243
    .line 244
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 245
    .line 246
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 247
    .line 248
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 249
    .line 250
    sub-int v3, v1, v3

    .line 251
    .line 252
    iget v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 253
    .line 254
    iget v4, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 255
    add-int/2addr v4, v1

    .line 256
    .line 257
    iget v1, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 258
    .line 259
    iget v5, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 260
    .line 261
    sub-int v5, v1, v5

    .line 262
    .line 263
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 264
    move-object v0, p0

    .line 265
    .line 266
    .line 267
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 268
    .line 269
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 270
    .line 271
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 272
    .line 273
    aget v2, v2, v8

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 277
    .line 278
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 279
    .line 280
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 281
    .line 282
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 283
    .line 284
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 285
    .line 286
    aget v2, v2, v9

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 290
    return-void

    .line 291
    .line 292
    :cond_e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 293
    .line 294
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 295
    .line 296
    if-eqz v2, :cond_10

    .line 297
    .line 298
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 299
    .line 300
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 301
    .line 302
    if-eqz v3, :cond_10

    .line 303
    .line 304
    iget-boolean v3, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 305
    .line 306
    if-eqz v3, :cond_27

    .line 307
    .line 308
    iget-boolean v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 309
    .line 310
    if-nez v3, :cond_f

    .line 311
    .line 312
    goto/16 :goto_a

    .line 313
    .line 314
    :cond_f
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 315
    .line 316
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 317
    add-int/2addr v3, v1

    .line 318
    .line 319
    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 320
    .line 321
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 322
    sub-int/2addr v1, v2

    .line 323
    .line 324
    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 325
    .line 326
    .line 327
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    move-result-object v2

    .line 329
    .line 330
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 331
    .line 332
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 333
    .line 334
    iget v4, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 335
    add-int/2addr v4, v2

    .line 336
    .line 337
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 338
    .line 339
    .line 340
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    move-result-object v2

    .line 342
    .line 343
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 344
    .line 345
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 346
    .line 347
    iget v5, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 348
    .line 349
    sub-int v5, v2, v5

    .line 350
    move v2, v3

    .line 351
    move v3, v1

    .line 352
    .line 353
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 354
    move-object v0, p0

    .line 355
    .line 356
    .line 357
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 358
    .line 359
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 360
    .line 361
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 362
    .line 363
    aget v2, v2, v8

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 367
    .line 368
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 369
    .line 370
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 371
    .line 372
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 373
    .line 374
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 375
    .line 376
    aget v2, v2, v9

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 380
    .line 381
    :cond_10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 382
    .line 383
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 384
    .line 385
    if-eqz v2, :cond_27

    .line 386
    .line 387
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 388
    .line 389
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 390
    .line 391
    if-eqz v2, :cond_27

    .line 392
    .line 393
    iget-boolean v2, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 394
    .line 395
    if-eqz v2, :cond_27

    .line 396
    .line 397
    iget-boolean v2, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 398
    .line 399
    if-nez v2, :cond_11

    .line 400
    .line 401
    goto/16 :goto_a

    .line 402
    .line 403
    :cond_11
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 404
    .line 405
    .line 406
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    move-result-object v1

    .line 408
    .line 409
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 410
    .line 411
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 412
    .line 413
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 414
    .line 415
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 416
    add-int/2addr v2, v1

    .line 417
    .line 418
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 419
    .line 420
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 421
    .line 422
    .line 423
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 424
    move-result-object v1

    .line 425
    .line 426
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 427
    .line 428
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 429
    .line 430
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 431
    .line 432
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 433
    .line 434
    sub-int v3, v1, v3

    .line 435
    .line 436
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 437
    .line 438
    .line 439
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 440
    move-result-object v1

    .line 441
    .line 442
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 443
    .line 444
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 445
    .line 446
    iget v4, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 447
    add-int/2addr v4, v1

    .line 448
    .line 449
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 450
    .line 451
    .line 452
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 453
    move-result-object v1

    .line 454
    .line 455
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 456
    .line 457
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 458
    .line 459
    iget v5, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 460
    .line 461
    sub-int v5, v1, v5

    .line 462
    .line 463
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 464
    move-object v0, p0

    .line 465
    .line 466
    .line 467
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 468
    .line 469
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 470
    .line 471
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 472
    .line 473
    aget v2, v2, v8

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 477
    .line 478
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 479
    .line 480
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 481
    .line 482
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 483
    .line 484
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    .line 485
    .line 486
    aget v2, v2, v9

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 490
    .line 491
    goto/16 :goto_9

    .line 492
    .line 493
    :cond_12
    if-eqz v2, :cond_18

    .line 494
    .line 495
    if-eqz v5, :cond_18

    .line 496
    .line 497
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 498
    .line 499
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 500
    .line 501
    if-eqz v1, :cond_27

    .line 502
    .line 503
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 504
    .line 505
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 506
    .line 507
    if-nez v1, :cond_13

    .line 508
    .line 509
    goto/16 :goto_a

    .line 510
    .line 511
    :cond_13
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 515
    move-result v1

    .line 516
    .line 517
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 518
    .line 519
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 520
    .line 521
    .line 522
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 523
    move-result-object v2

    .line 524
    .line 525
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 526
    .line 527
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 528
    .line 529
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 530
    .line 531
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 532
    add-int/2addr v2, v3

    .line 533
    .line 534
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 535
    .line 536
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 537
    .line 538
    .line 539
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 540
    move-result-object v3

    .line 541
    .line 542
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 543
    .line 544
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 545
    .line 546
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 547
    .line 548
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 549
    sub-int/2addr v3, v5

    .line 550
    .line 551
    if-eq v7, v4, :cond_16

    .line 552
    .line 553
    if-eqz v7, :cond_16

    .line 554
    .line 555
    if-eq v7, v9, :cond_14

    .line 556
    .line 557
    goto/16 :goto_9

    .line 558
    :cond_14
    sub-int/2addr v3, v2

    .line 559
    .line 560
    .line 561
    invoke-virtual {p0, v3, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 562
    move-result v2

    .line 563
    int-to-float v3, v2

    .line 564
    div-float/2addr v3, v1

    .line 565
    add-float/2addr v3, v10

    .line 566
    float-to-int v3, v3

    .line 567
    .line 568
    .line 569
    invoke-virtual {p0, v3, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 570
    move-result v4

    .line 571
    .line 572
    if-eq v3, v4, :cond_15

    .line 573
    int-to-float v2, v4

    .line 574
    mul-float/2addr v2, v1

    .line 575
    add-float/2addr v2, v10

    .line 576
    float-to-int v2, v2

    .line 577
    .line 578
    :cond_15
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 582
    .line 583
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 584
    .line 585
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 586
    .line 587
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 591
    .line 592
    goto/16 :goto_9

    .line 593
    :cond_16
    sub-int/2addr v3, v2

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0, v3, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 597
    move-result v2

    .line 598
    int-to-float v3, v2

    .line 599
    mul-float/2addr v3, v1

    .line 600
    add-float/2addr v3, v10

    .line 601
    float-to-int v3, v3

    .line 602
    .line 603
    .line 604
    invoke-virtual {p0, v3, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 605
    move-result v4

    .line 606
    .line 607
    if-eq v3, v4, :cond_17

    .line 608
    int-to-float v2, v4

    .line 609
    div-float/2addr v2, v1

    .line 610
    add-float/2addr v2, v10

    .line 611
    float-to-int v2, v2

    .line 612
    .line 613
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 617
    .line 618
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 619
    .line 620
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 621
    .line 622
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 626
    .line 627
    goto/16 :goto_9

    .line 628
    .line 629
    :cond_18
    if-eqz v3, :cond_1f

    .line 630
    .line 631
    if-eqz v6, :cond_1f

    .line 632
    .line 633
    iget-boolean v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 634
    .line 635
    if-eqz v1, :cond_27

    .line 636
    .line 637
    iget-boolean v1, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 638
    .line 639
    if-nez v1, :cond_19

    .line 640
    .line 641
    goto/16 :goto_a

    .line 642
    .line 643
    :cond_19
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 647
    move-result v1

    .line 648
    .line 649
    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 650
    .line 651
    .line 652
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 653
    move-result-object v2

    .line 654
    .line 655
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 656
    .line 657
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 658
    .line 659
    iget v3, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 660
    add-int/2addr v2, v3

    .line 661
    .line 662
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 663
    .line 664
    .line 665
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 666
    move-result-object v3

    .line 667
    .line 668
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 669
    .line 670
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 671
    .line 672
    iget v5, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 673
    sub-int/2addr v3, v5

    .line 674
    .line 675
    if-eq v7, v4, :cond_1c

    .line 676
    .line 677
    if-eqz v7, :cond_1a

    .line 678
    .line 679
    if-eq v7, v9, :cond_1c

    .line 680
    goto :goto_9

    .line 681
    :cond_1a
    sub-int/2addr v3, v2

    .line 682
    .line 683
    .line 684
    invoke-virtual {p0, v3, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 685
    move-result v2

    .line 686
    int-to-float v3, v2

    .line 687
    mul-float/2addr v3, v1

    .line 688
    add-float/2addr v3, v10

    .line 689
    float-to-int v3, v3

    .line 690
    .line 691
    .line 692
    invoke-virtual {p0, v3, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 693
    move-result v4

    .line 694
    .line 695
    if-eq v3, v4, :cond_1b

    .line 696
    int-to-float v2, v4

    .line 697
    div-float/2addr v2, v1

    .line 698
    add-float/2addr v2, v10

    .line 699
    float-to-int v2, v2

    .line 700
    .line 701
    :cond_1b
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 705
    .line 706
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 707
    .line 708
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 709
    .line 710
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 714
    goto :goto_9

    .line 715
    :cond_1c
    sub-int/2addr v3, v2

    .line 716
    .line 717
    .line 718
    invoke-virtual {p0, v3, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 719
    move-result v2

    .line 720
    int-to-float v3, v2

    .line 721
    div-float/2addr v3, v1

    .line 722
    add-float/2addr v3, v10

    .line 723
    float-to-int v3, v3

    .line 724
    .line 725
    .line 726
    invoke-virtual {p0, v3, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 727
    move-result v4

    .line 728
    .line 729
    if-eq v3, v4, :cond_1d

    .line 730
    int-to-float v2, v4

    .line 731
    mul-float/2addr v2, v1

    .line 732
    add-float/2addr v2, v10

    .line 733
    float-to-int v2, v2

    .line 734
    .line 735
    :cond_1d
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 739
    .line 740
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 741
    .line 742
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 743
    .line 744
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 748
    goto :goto_9

    .line 749
    .line 750
    .line 751
    :cond_1e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 752
    move-result-object v1

    .line 753
    .line 754
    if-eqz v1, :cond_1f

    .line 755
    .line 756
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 757
    .line 758
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 759
    .line 760
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 761
    .line 762
    if-eqz v2, :cond_1f

    .line 763
    .line 764
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 765
    .line 766
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 767
    .line 768
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 769
    int-to-float v1, v1

    .line 770
    mul-float/2addr v1, v2

    .line 771
    add-float/2addr v1, v10

    .line 772
    float-to-int v1, v1

    .line 773
    .line 774
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 778
    .line 779
    :cond_1f
    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 780
    .line 781
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 782
    .line 783
    if-eqz v2, :cond_27

    .line 784
    .line 785
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 786
    .line 787
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 788
    .line 789
    if-nez v3, :cond_20

    .line 790
    .line 791
    goto/16 :goto_a

    .line 792
    .line 793
    :cond_20
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 794
    .line 795
    if-eqz v1, :cond_21

    .line 796
    .line 797
    iget-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 798
    .line 799
    if-eqz v1, :cond_21

    .line 800
    .line 801
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 802
    .line 803
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 804
    .line 805
    if-eqz v1, :cond_21

    .line 806
    .line 807
    goto/16 :goto_a

    .line 808
    .line 809
    :cond_21
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 810
    .line 811
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 812
    .line 813
    if-nez v1, :cond_22

    .line 814
    .line 815
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 816
    .line 817
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 818
    .line 819
    if-ne v1, v2, :cond_22

    .line 820
    .line 821
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 822
    .line 823
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 824
    .line 825
    if-nez v2, :cond_22

    .line 826
    .line 827
    .line 828
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 829
    move-result v1

    .line 830
    .line 831
    if-nez v1, :cond_22

    .line 832
    .line 833
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 834
    .line 835
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 836
    .line 837
    .line 838
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 839
    move-result-object v1

    .line 840
    .line 841
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 842
    .line 843
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 844
    .line 845
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 846
    .line 847
    .line 848
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 849
    move-result-object v2

    .line 850
    .line 851
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 852
    .line 853
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 854
    .line 855
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 856
    .line 857
    iget v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 858
    add-int/2addr v1, v4

    .line 859
    .line 860
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 861
    .line 862
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 863
    .line 864
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 865
    add-int/2addr v2, v4

    .line 866
    .line 867
    sub-int v4, v2, v1

    .line 868
    .line 869
    .line 870
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 871
    .line 872
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 876
    .line 877
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 881
    return-void

    .line 882
    .line 883
    :cond_22
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 884
    .line 885
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 886
    .line 887
    if-nez v1, :cond_24

    .line 888
    .line 889
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 890
    .line 891
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 892
    .line 893
    if-ne v1, v2, :cond_24

    .line 894
    .line 895
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 896
    .line 897
    if-ne v1, v9, :cond_24

    .line 898
    .line 899
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 900
    .line 901
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 902
    .line 903
    .line 904
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 905
    move-result v1

    .line 906
    .line 907
    if-lez v1, :cond_24

    .line 908
    .line 909
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 910
    .line 911
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 912
    .line 913
    .line 914
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 915
    move-result v1

    .line 916
    .line 917
    if-lez v1, :cond_24

    .line 918
    .line 919
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 920
    .line 921
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 922
    .line 923
    .line 924
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 925
    move-result-object v1

    .line 926
    .line 927
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 928
    .line 929
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 930
    .line 931
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 932
    .line 933
    .line 934
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 935
    move-result-object v2

    .line 936
    .line 937
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 938
    .line 939
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 940
    .line 941
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 942
    .line 943
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 944
    add-int/2addr v1, v3

    .line 945
    .line 946
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 947
    .line 948
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 949
    .line 950
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 951
    add-int/2addr v2, v3

    .line 952
    sub-int/2addr v2, v1

    .line 953
    .line 954
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 955
    .line 956
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 957
    .line 958
    .line 959
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 960
    move-result v1

    .line 961
    .line 962
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 963
    .line 964
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 965
    .line 966
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 967
    .line 968
    .line 969
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 970
    move-result v1

    .line 971
    .line 972
    if-lez v3, :cond_23

    .line 973
    .line 974
    .line 975
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 976
    move-result v1

    .line 977
    .line 978
    :cond_23
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 982
    .line 983
    :cond_24
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 984
    .line 985
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 986
    .line 987
    if-nez v1, :cond_25

    .line 988
    goto :goto_a

    .line 989
    .line 990
    :cond_25
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 991
    .line 992
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 993
    .line 994
    .line 995
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 996
    move-result-object v1

    .line 997
    .line 998
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 999
    .line 1000
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1001
    .line 1002
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 1003
    .line 1004
    .line 1005
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1006
    move-result-object v2

    .line 1007
    .line 1008
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1009
    .line 1010
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 1011
    .line 1012
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1013
    .line 1014
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 1015
    add-int/2addr v3, v4

    .line 1016
    .line 1017
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 1018
    .line 1019
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1020
    .line 1021
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 1022
    add-int/2addr v4, v5

    .line 1023
    .line 1024
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    .line 1028
    move-result v5

    .line 1029
    .line 1030
    if-ne v1, v2, :cond_26

    .line 1031
    .line 1032
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 1033
    .line 1034
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 1035
    move v5, v10

    .line 1036
    :cond_26
    sub-int/2addr v4, v3

    .line 1037
    .line 1038
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1039
    .line 1040
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 1041
    sub-int/2addr v4, v1

    .line 1042
    .line 1043
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1044
    int-to-float v2, v3

    .line 1045
    add-float/2addr v2, v10

    .line 1046
    int-to-float v3, v4

    .line 1047
    mul-float/2addr v3, v5

    .line 1048
    add-float/2addr v2, v3

    .line 1049
    float-to-int v2, v2

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 1053
    .line 1054
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1055
    .line 1056
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1057
    .line 1058
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 1059
    .line 1060
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1061
    .line 1062
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 1063
    add-int/2addr v2, v3

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 1067
    :cond_27
    :goto_a
    return-void
.end method
