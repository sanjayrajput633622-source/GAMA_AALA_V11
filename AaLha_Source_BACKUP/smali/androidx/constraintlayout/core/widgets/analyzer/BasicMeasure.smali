.class public Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 1

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
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 20
    return-void
.end method

.method private measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 22
    move-result v1

    .line 23
    .line 24
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 30
    move-result v1

    .line 31
    .line 32
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 38
    .line 39
    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 40
    .line 41
    iget-object p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    .line 43
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    const/4 v3, 0x1

    .line 45
    .line 46
    if-ne p3, v2, :cond_0

    .line 47
    move p3, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p3, v1

    .line 50
    .line 51
    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 52
    .line 53
    if-ne v4, v2, :cond_1

    .line 54
    move v2, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v2, v1

    .line 57
    :goto_1
    const/4 v4, 0x0

    .line 58
    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    iget p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 62
    .line 63
    cmpl-float p3, p3, v4

    .line 64
    .line 65
    if-lez p3, :cond_2

    .line 66
    move p3, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move p3, v1

    .line 69
    .line 70
    :goto_2
    if-eqz v2, :cond_3

    .line 71
    .line 72
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 73
    .line 74
    cmpl-float v2, v2, v4

    .line 75
    .line 76
    if-lez v2, :cond_3

    .line 77
    move v2, v3

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    move v2, v1

    .line 80
    :goto_3
    const/4 v4, 0x4

    .line 81
    .line 82
    if-eqz p3, :cond_4

    .line 83
    .line 84
    iget-object p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 85
    .line 86
    aget p3, p3, v1

    .line 87
    .line 88
    if-ne p3, v4, :cond_4

    .line 89
    .line 90
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 91
    .line 92
    iput-object p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 93
    .line 94
    :cond_4
    if-eqz v2, :cond_5

    .line 95
    .line 96
    iget-object p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 97
    .line 98
    aget p3, p3, v3

    .line 99
    .line 100
    if-ne p3, v4, :cond_5

    .line 101
    .line 102
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 103
    .line 104
    iput-object p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 108
    .line 109
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 110
    .line 111
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 115
    .line 116
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 117
    .line 118
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 122
    .line 123
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 124
    .line 125
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 129
    .line 130
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 131
    .line 132
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 136
    .line 137
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 138
    .line 139
    sget p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 140
    .line 141
    iput p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 142
    .line 143
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 144
    return p1
.end method

.method private measureChildren(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x40

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    .line 20
    :goto_0
    if-ge v4, v0, :cond_b

    .line 21
    .line 22
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    .line 30
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    .line 44
    move-result v6

    .line 45
    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_2
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 53
    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 57
    .line 58
    if-eqz v7, :cond_3

    .line 59
    .line 60
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 61
    .line 62
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 63
    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 67
    .line 68
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 76
    move-result-object v6

    .line 77
    const/4 v7, 0x1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 81
    move-result-object v8

    .line 82
    .line 83
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 84
    .line 85
    if-ne v6, v9, :cond_4

    .line 86
    .line 87
    iget v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 88
    .line 89
    if-eq v10, v7, :cond_4

    .line 90
    .line 91
    if-ne v8, v9, :cond_4

    .line 92
    .line 93
    iget v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 94
    .line 95
    if-eq v10, v7, :cond_4

    .line 96
    move v10, v7

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move v10, v3

    .line 99
    .line 100
    :goto_1
    if-nez v10, :cond_8

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 104
    move-result v11

    .line 105
    .line 106
    if-eqz v11, :cond_8

    .line 107
    .line 108
    instance-of v11, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 109
    .line 110
    if-nez v11, :cond_8

    .line 111
    .line 112
    if-ne v6, v9, :cond_5

    .line 113
    .line 114
    iget v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 115
    .line 116
    if-nez v11, :cond_5

    .line 117
    .line 118
    if-eq v8, v9, :cond_5

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 122
    move-result v11

    .line 123
    .line 124
    if-nez v11, :cond_5

    .line 125
    move v10, v7

    .line 126
    .line 127
    :cond_5
    if-ne v8, v9, :cond_6

    .line 128
    .line 129
    iget v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 130
    .line 131
    if-nez v11, :cond_6

    .line 132
    .line 133
    if-eq v6, v9, :cond_6

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 137
    move-result v11

    .line 138
    .line 139
    if-nez v11, :cond_6

    .line 140
    move v10, v7

    .line 141
    .line 142
    :cond_6
    if-eq v6, v9, :cond_7

    .line 143
    .line 144
    if-ne v8, v9, :cond_8

    .line 145
    .line 146
    :cond_7
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 147
    const/4 v8, 0x0

    .line 148
    .line 149
    cmpl-float v6, v6, v8

    .line 150
    .line 151
    if-lez v6, :cond_8

    .line 152
    goto :goto_2

    .line 153
    :cond_8
    move v7, v10

    .line 154
    .line 155
    :goto_2
    if-eqz v7, :cond_9

    .line 156
    goto :goto_3

    .line 157
    .line 158
    :cond_9
    sget v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, v2, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    .line 162
    .line 163
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 164
    .line 165
    if-eqz v5, :cond_a

    .line 166
    .line 167
    iget-wide v6, v5, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    .line 168
    .line 169
    const-wide/16 v8, 0x1

    .line 170
    add-long/2addr v6, v8

    .line 171
    .line 172
    iput-wide v6, v5, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    .line 173
    .line 174
    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    .line 179
    :cond_b
    invoke-interface {v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 180
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getMinWidth()I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getMinHeight()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setPass(I)V

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->layout()V

    .line 38
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    .line 1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 2
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    .line 4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    const/16 v9, 0x80

    .line 5
    invoke-static {v2, v9}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v9

    const/4 v11, 0x0

    if-nez v9, :cond_1

    const/16 v12, 0x40

    .line 6
    invoke-static {v2, v12}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v11

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_a

    move v12, v11

    :goto_2
    if-ge v12, v6, :cond_a

    .line 7
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 8
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    move v14, v11

    .line 9
    :goto_3
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    if-ne v10, v15, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    move v10, v11

    :goto_4
    if-eqz v14, :cond_4

    if-eqz v10, :cond_4

    .line 10
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v10

    const/4 v14, 0x0

    cmpl-float v10, v10, v14

    if-lez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_5

    :cond_4
    move v10, v11

    .line 11
    :goto_5
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v10, :cond_6

    :cond_5
    :goto_6
    move v2, v11

    goto :goto_7

    .line 12
    :cond_6
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v10, :cond_7

    goto :goto_6

    .line 13
    :cond_7
    instance-of v10, v13, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v10, :cond_8

    goto :goto_6

    .line 14
    :cond_8
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_5

    .line 15
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_a
    :goto_7
    const-wide/16 v12, 0x1

    if-eqz v2, :cond_b

    .line 16
    sget-object v10, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v10, :cond_b

    .line 17
    iget-wide v14, v10, Landroidx/constraintlayout/core/Metrics;->measures:J

    add-long/2addr v14, v12

    iput-wide v14, v10, Landroidx/constraintlayout/core/Metrics;->measures:J

    :cond_b
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_c

    if-eq v4, v10, :cond_d

    :cond_c
    if-eqz v9, :cond_e

    :cond_d
    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    move v14, v11

    :goto_8
    and-int/2addr v2, v14

    const/4 v14, 0x2

    if-eqz v2, :cond_16

    .line 18
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getMaxWidth()I

    move-result v15

    move-wide/from16 v16, v12

    move/from16 v12, p6

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 19
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getMaxHeight()I

    move-result v13

    move/from16 v15, p8

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ne v3, v10, :cond_f

    .line 20
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-eq v15, v12, :cond_f

    .line 21
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 22
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_f
    if-ne v4, v10, :cond_10

    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    if-eq v12, v13, :cond_10

    .line 24
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 25
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_10
    if-ne v3, v10, :cond_11

    if-ne v4, v10, :cond_11

    .line 26
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v9

    move v13, v14

    goto :goto_a

    .line 27
    :cond_11
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v12

    if-ne v3, v10, :cond_12

    .line 28
    invoke-virtual {v1, v9, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v13

    and-int/2addr v12, v13

    const/4 v13, 0x1

    goto :goto_9

    :cond_12
    move v13, v11

    :goto_9
    if-ne v4, v10, :cond_13

    const/4 v15, 0x1

    .line 29
    invoke-virtual {v1, v9, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v9

    and-int/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_13
    move v9, v12

    :goto_a
    if-eqz v9, :cond_17

    if-ne v3, v10, :cond_14

    const/4 v15, 0x1

    goto :goto_b

    :cond_14
    move v15, v11

    :goto_b
    if-ne v4, v10, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    move v3, v11

    .line 30
    :goto_c
    invoke-virtual {v1, v15, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    goto :goto_d

    :cond_16
    move-wide/from16 v16, v12

    move v9, v11

    move v13, v9

    :cond_17
    :goto_d
    const-wide/16 v3, 0x0

    if-eqz v9, :cond_19

    if-eq v13, v14, :cond_18

    goto :goto_e

    :cond_18
    return-wide v3

    .line 31
    :cond_19
    :goto_e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v9

    if-lez v6, :cond_1a

    .line 32
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 33
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 34
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v6, :cond_1b

    .line 35
    const-string v6, "First pass"

    const/4 v12, 0x0

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p5, v12

    invoke-direct/range {p2 .. p7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    move/from16 v6, p6

    move/from16 v7, p7

    goto :goto_f

    :cond_1b
    move v6, v7

    move v7, v8

    :goto_f
    if-lez v10, :cond_34

    .line 36
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v12, :cond_1c

    const/4 v15, 0x1

    goto :goto_10

    :cond_1c
    move v15, v11

    .line 37
    :goto_10
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    if-ne v8, v12, :cond_1d

    const/4 v8, 0x1

    goto :goto_11

    :cond_1d
    move v8, v11

    .line 38
    :goto_11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getMinWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 39
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    move-wide/from16 v18, v3

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getMinHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v11

    move v13, v4

    :goto_12
    if-ge v4, v10, :cond_24

    .line 40
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 41
    instance-of v14, v11, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v14, :cond_1e

    move/from16 v20, v2

    move/from16 p2, v4

    move/from16 p6, v6

    move/from16 p7, v7

    goto/16 :goto_13

    .line 42
    :cond_1e
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    move/from16 v20, v2

    .line 43
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    move/from16 p2, v4

    .line 44
    sget v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    invoke-direct {v0, v5, v11, v4}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v4

    or-int/2addr v4, v13

    .line 45
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    move/from16 p6, v6

    move/from16 p7, v7

    if-eqz v13, :cond_1f

    .line 46
    iget-wide v6, v13, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    add-long v6, v6, v16

    iput-wide v6, v13, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    .line 47
    :cond_1f
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    .line 48
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    if-eq v6, v14, :cond_21

    .line 49
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v15, :cond_20

    .line 50
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v4

    if-le v4, v12, :cond_20

    .line 51
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v4

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 52
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v4, v6

    .line 53
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_20
    const/4 v4, 0x1

    :cond_21
    if-eq v7, v2, :cond_23

    .line 54
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v8, :cond_22

    .line 55
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v3, :cond_22

    .line 56
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 57
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v2, v4

    .line 58
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_22
    const/4 v4, 0x1

    .line 59
    :cond_23
    check-cast v11, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 60
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needSolverPass()Z

    move-result v2

    or-int v13, v4, v2

    :goto_13
    add-int/lit8 v4, p2, 0x1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v2, v20

    const/4 v11, 0x0

    const/4 v14, 0x2

    goto/16 :goto_12

    :cond_24
    move/from16 v20, v2

    move/from16 p6, v6

    move/from16 p7, v7

    move v4, v14

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v4, :cond_35

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v10, :cond_32

    .line 61
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 62
    instance-of v11, v7, Landroidx/constraintlayout/core/widgets/Helper;

    if-eqz v11, :cond_25

    instance-of v11, v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v11, :cond_29

    :cond_25
    instance-of v11, v7, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v11, :cond_26

    goto :goto_16

    .line 63
    :cond_26
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v14, 0x8

    if-ne v11, v14, :cond_27

    goto :goto_16

    :cond_27
    if-eqz v20, :cond_28

    .line 64
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v11, :cond_28

    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v11, :cond_28

    goto :goto_16

    .line 65
    :cond_28
    instance-of v11, v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v11, :cond_2a

    :cond_29
    :goto_16
    move/from16 p2, v6

    goto/16 :goto_17

    .line 66
    :cond_2a
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    .line 67
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 68
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v4

    .line 69
    sget v21, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    move/from16 p2, v6

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2b

    .line 70
    sget v21, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    :cond_2b
    move/from16 v6, v21

    .line 71
    invoke-direct {v0, v5, v7, v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v6

    or-int/2addr v6, v13

    .line 72
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v13, :cond_2c

    .line 73
    iget-wide v0, v13, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    add-long v0, v0, v16

    iput-wide v0, v13, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    .line 74
    :cond_2c
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    .line 75
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    if-eq v0, v11, :cond_2e

    .line 76
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v15, :cond_2d

    .line 77
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v0

    if-le v0, v12, :cond_2d

    .line 78
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 79
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v0, v6

    .line 80
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_2d
    const/4 v6, 0x1

    :cond_2e
    if-eq v1, v14, :cond_30

    .line 81
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v8, :cond_2f

    .line 82
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    if-le v0, v3, :cond_2f

    .line 83
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 84
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_2f
    const/4 v6, 0x1

    .line 86
    :cond_30
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    if-eq v4, v0, :cond_31

    const/4 v13, 0x1

    goto :goto_17

    :cond_31
    move v13, v6

    :goto_17
    add-int/lit8 v6, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v4, 0x2

    goto/16 :goto_15

    :cond_32
    if-eqz v13, :cond_33

    add-int/lit8 v2, v2, 0x1

    .line 87
    const-string v0, "intermediate pass"

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v0

    move/from16 p5, v2

    invoke-direct/range {p2 .. p7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v4, 0x2

    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_33
    move-object/from16 v1, p1

    goto :goto_18

    :cond_34
    move-wide/from16 v18, v3

    .line 88
    :cond_35
    :goto_18
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-wide v18
.end method

.method public updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 29
    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 48
    return-void
.end method
