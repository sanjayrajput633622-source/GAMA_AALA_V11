.class Landroidx/constraintlayout/core/widgets/analyzer/BaselineDimensionDependency;
.super Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 4
    return-void
.end method


# virtual methods
.method public update(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 3
    move-object v0, p1

    .line 4
    .line 5
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    .line 13
    move-result p1

    .line 14
    .line 15
    iput p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 19
    return-void
.end method
