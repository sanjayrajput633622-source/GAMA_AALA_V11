.class public Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "SourceFile"


# instance fields
.field private chainStyle:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->build()V

    .line 16
    return-void
.end method

.method private build()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    .line 4
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 8
    move-result-object v1

    .line 9
    :goto_0
    move-object v4, v1

    .line 10
    move-object v1, v0

    .line 11
    move-object v0, v4

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    :goto_1
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 70
    const/4 v2, 0x1

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 79
    .line 80
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 81
    .line 82
    if-nez v3, :cond_3

    .line 83
    .line 84
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 85
    .line 86
    iput-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_3
    if-ne v3, v2, :cond_2

    .line 90
    .line 91
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 92
    .line 93
    iput-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    .line 110
    move-result v0

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v0

    .line 119
    .line 120
    if-le v0, v2, :cond_5

    .line 121
    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result v1

    .line 127
    sub-int/2addr v1, v2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 134
    .line 135
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 136
    .line 137
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 138
    .line 139
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 140
    .line 141
    if-nez v0, :cond_6

    .line 142
    .line 143
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalChainStyle()I

    .line 147
    move-result v0

    .line 148
    goto :goto_3

    .line 149
    .line 150
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalChainStyle()I

    .line 154
    move-result v0

    .line 155
    .line 156
    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 157
    return-void
.end method

.method private getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 23
    move-result v2

    .line 24
    .line 25
    const/16 v3, 0x8

    .line 26
    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method

.method private getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 24
    move-result v2

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    return-void

    .line 33
    .line 34
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 42
    .line 43
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 46
    sub-int/2addr v0, v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 55
    .line 56
    iget v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 61
    .line 62
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 70
    move-result v1

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 82
    move-result v1

    .line 83
    .line 84
    :cond_2
    if-eqz v2, :cond_3

    .line 85
    .line 86
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v4, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 97
    move-result v0

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 109
    move-result v0

    .line 110
    .line 111
    :cond_4
    if-eqz v1, :cond_9

    .line 112
    .line 113
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 114
    neg-int v0, v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_5
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 121
    .line 122
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 130
    move-result v2

    .line 131
    .line 132
    .line 133
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 142
    move-result v2

    .line 143
    .line 144
    :cond_6
    if-eqz v3, :cond_7

    .line 145
    .line 146
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v4, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 157
    move-result v0

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    if-eqz v2, :cond_8

    .line 164
    .line 165
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 169
    move-result v0

    .line 170
    .line 171
    :cond_8
    if-eqz v1, :cond_9

    .line 172
    .line 173
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 174
    neg-int v0, v0

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v2, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 178
    .line 179
    :cond_9
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 180
    .line 181
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 182
    .line 183
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 184
    .line 185
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 186
    return-void
.end method

.method public applyToWidget()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
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
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public getWrapDimension()J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v3, v0, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 20
    .line 21
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 22
    .line 23
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 24
    int-to-long v5, v5

    .line 25
    add-long/2addr v1, v5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    .line 29
    move-result-wide v5

    .line 30
    add-long/2addr v1, v5

    .line 31
    .line 32
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 33
    .line 34
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 35
    int-to-long v4, v4

    .line 36
    add-long/2addr v1, v4

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-wide v1
.end method

.method public reset()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 8
    .line 9
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 10
    return-void
.end method

.method public supportsWrapComputation()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

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
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    return v1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "ChainRun "

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "horizontal : "

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string v1, "vertical : "

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 38
    .line 39
    const-string v3, "<"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "> "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 26

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 7
    .line 8
    if-eqz v1, :cond_55

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    .line 12
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_34

    .line 17
    .line 18
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    .line 36
    :goto_0
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 37
    .line 38
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 39
    .line 40
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 41
    .line 42
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 43
    sub-int/2addr v2, v4

    .line 44
    .line 45
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_1
    const/4 v6, -0x1

    .line 52
    .line 53
    const/16 v7, 0x8

    .line 54
    .line 55
    if-ge v5, v4, :cond_2

    .line 56
    .line 57
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v8

    .line 62
    .line 63
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 64
    .line 65
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 69
    move-result v8

    .line 70
    .line 71
    if-ne v8, v7, :cond_3

    .line 72
    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move v5, v6

    .line 76
    .line 77
    :cond_3
    add-int/lit8 v8, v4, -0x1

    .line 78
    move v9, v8

    .line 79
    .line 80
    :goto_2
    if-ltz v9, :cond_5

    .line 81
    .line 82
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v10

    .line 87
    .line 88
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 89
    .line 90
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 94
    move-result v10

    .line 95
    .line 96
    if-ne v10, v7, :cond_4

    .line 97
    .line 98
    add-int/lit8 v9, v9, -0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    move v6, v9

    .line 101
    :cond_5
    const/4 v9, 0x0

    .line 102
    :goto_3
    const/4 v11, 0x2

    .line 103
    .line 104
    if-ge v9, v11, :cond_14

    .line 105
    const/4 v13, 0x0

    .line 106
    const/4 v14, 0x0

    .line 107
    const/4 v15, 0x0

    .line 108
    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    const/16 v17, 0x0

    .line 112
    .line 113
    :goto_4
    if-ge v13, v4, :cond_11

    .line 114
    .line 115
    const/16 p1, 0x0

    .line 116
    .line 117
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v10

    .line 122
    .line 123
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 124
    .line 125
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 129
    move-result v3

    .line 130
    .line 131
    if-ne v3, v7, :cond_6

    .line 132
    .line 133
    move/from16 v20, v1

    .line 134
    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_6
    add-int/lit8 v16, v16, 0x1

    .line 138
    .line 139
    if-lez v13, :cond_7

    .line 140
    .line 141
    if-lt v13, v5, :cond_7

    .line 142
    .line 143
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 144
    .line 145
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 146
    add-int/2addr v14, v3

    .line 147
    .line 148
    :cond_7
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 149
    .line 150
    iget v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 151
    .line 152
    iget-object v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 153
    .line 154
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 155
    .line 156
    if-eq v7, v12, :cond_8

    .line 157
    const/4 v7, 0x1

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    const/4 v7, 0x0

    .line 160
    .line 161
    :goto_5
    if-eqz v7, :cond_b

    .line 162
    .line 163
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 164
    .line 165
    if-nez v3, :cond_9

    .line 166
    .line 167
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 168
    .line 169
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 170
    .line 171
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 172
    .line 173
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 174
    .line 175
    if-nez v12, :cond_9

    .line 176
    .line 177
    goto/16 :goto_34

    .line 178
    :cond_9
    const/4 v12, 0x1

    .line 179
    .line 180
    if-ne v3, v12, :cond_a

    .line 181
    .line 182
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 183
    .line 184
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 185
    .line 186
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 187
    .line 188
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 189
    .line 190
    if-nez v3, :cond_a

    .line 191
    .line 192
    goto/16 :goto_34

    .line 193
    .line 194
    :cond_a
    move/from16 v20, v1

    .line 195
    goto :goto_7

    .line 196
    .line 197
    :cond_b
    move/from16 v20, v1

    .line 198
    const/4 v12, 0x1

    .line 199
    .line 200
    iget v1, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 201
    .line 202
    if-ne v1, v12, :cond_c

    .line 203
    .line 204
    if-nez v9, :cond_c

    .line 205
    .line 206
    iget v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 207
    .line 208
    add-int/lit8 v15, v15, 0x1

    .line 209
    :goto_6
    const/4 v7, 0x1

    .line 210
    goto :goto_7

    .line 211
    .line 212
    :cond_c
    iget-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 213
    .line 214
    if-eqz v1, :cond_d

    .line 215
    goto :goto_6

    .line 216
    .line 217
    :cond_d
    :goto_7
    if-nez v7, :cond_e

    .line 218
    .line 219
    add-int/lit8 v15, v15, 0x1

    .line 220
    .line 221
    iget-object v1, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 222
    .line 223
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 224
    .line 225
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 226
    .line 227
    aget v1, v1, v3

    .line 228
    .line 229
    cmpl-float v3, v1, p1

    .line 230
    .line 231
    if-ltz v3, :cond_f

    .line 232
    .line 233
    add-float v17, v17, v1

    .line 234
    goto :goto_8

    .line 235
    :cond_e
    add-int/2addr v14, v11

    .line 236
    .line 237
    :cond_f
    :goto_8
    if-ge v13, v8, :cond_10

    .line 238
    .line 239
    if-ge v13, v6, :cond_10

    .line 240
    .line 241
    iget-object v1, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 242
    .line 243
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 244
    neg-int v1, v1

    .line 245
    add-int/2addr v14, v1

    .line 246
    .line 247
    :cond_10
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 248
    .line 249
    move/from16 v1, v20

    .line 250
    .line 251
    const/16 v7, 0x8

    .line 252
    const/4 v11, 0x2

    .line 253
    .line 254
    goto/16 :goto_4

    .line 255
    .line 256
    :cond_11
    move/from16 v20, v1

    .line 257
    .line 258
    const/16 p1, 0x0

    .line 259
    .line 260
    if-lt v14, v2, :cond_13

    .line 261
    .line 262
    if-nez v15, :cond_12

    .line 263
    goto :goto_a

    .line 264
    .line 265
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 266
    .line 267
    move/from16 v1, v20

    .line 268
    .line 269
    const/16 v7, 0x8

    .line 270
    .line 271
    goto/16 :goto_3

    .line 272
    .line 273
    :cond_13
    :goto_a
    move/from16 v1, v16

    .line 274
    goto :goto_b

    .line 275
    .line 276
    :cond_14
    move/from16 v20, v1

    .line 277
    .line 278
    const/16 p1, 0x0

    .line 279
    .line 280
    move/from16 v17, p1

    .line 281
    const/4 v1, 0x0

    .line 282
    const/4 v14, 0x0

    .line 283
    const/4 v15, 0x0

    .line 284
    .line 285
    :goto_b
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 286
    .line 287
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 288
    .line 289
    if-eqz v20, :cond_15

    .line 290
    .line 291
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 292
    .line 293
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 294
    .line 295
    :cond_15
    const/high16 v7, 0x3f000000    # 0.5f

    .line 296
    .line 297
    if-le v14, v2, :cond_17

    .line 298
    .line 299
    const/high16 v9, 0x40000000    # 2.0f

    .line 300
    .line 301
    if-eqz v20, :cond_16

    .line 302
    .line 303
    sub-int v10, v14, v2

    .line 304
    int-to-float v10, v10

    .line 305
    div-float/2addr v10, v9

    .line 306
    add-float/2addr v10, v7

    .line 307
    float-to-int v9, v10

    .line 308
    add-int/2addr v3, v9

    .line 309
    goto :goto_c

    .line 310
    .line 311
    :cond_16
    sub-int v10, v14, v2

    .line 312
    int-to-float v10, v10

    .line 313
    div-float/2addr v10, v9

    .line 314
    add-float/2addr v10, v7

    .line 315
    float-to-int v9, v10

    .line 316
    sub-int/2addr v3, v9

    .line 317
    .line 318
    :cond_17
    :goto_c
    if-lez v15, :cond_25

    .line 319
    .line 320
    sub-int v9, v2, v14

    .line 321
    int-to-float v9, v9

    .line 322
    int-to-float v10, v15

    .line 323
    .line 324
    div-float v10, v9, v10

    .line 325
    add-float/2addr v10, v7

    .line 326
    float-to-int v10, v10

    .line 327
    const/4 v11, 0x0

    .line 328
    const/4 v12, 0x0

    .line 329
    .line 330
    :goto_d
    if-ge v11, v4, :cond_1f

    .line 331
    .line 332
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    move-result-object v13

    .line 337
    .line 338
    check-cast v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 339
    .line 340
    move/from16 v16, v7

    .line 341
    .line 342
    iget-object v7, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 346
    move-result v7

    .line 347
    .line 348
    move/from16 v21, v3

    .line 349
    .line 350
    const/16 v3, 0x8

    .line 351
    .line 352
    if-ne v7, v3, :cond_19

    .line 353
    .line 354
    :cond_18
    move/from16 v22, v9

    .line 355
    .line 356
    move/from16 v23, v10

    .line 357
    .line 358
    move/from16 v24, v11

    .line 359
    .line 360
    move/from16 v25, v12

    .line 361
    .line 362
    goto/16 :goto_14

    .line 363
    .line 364
    :cond_19
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 365
    .line 366
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 367
    .line 368
    if-ne v3, v7, :cond_18

    .line 369
    .line 370
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 371
    .line 372
    iget-boolean v7, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 373
    .line 374
    if-nez v7, :cond_18

    .line 375
    .line 376
    cmpl-float v7, v17, p1

    .line 377
    .line 378
    if-lez v7, :cond_1a

    .line 379
    .line 380
    iget-object v7, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 381
    .line 382
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 383
    .line 384
    move-object/from16 v22, v7

    .line 385
    .line 386
    iget v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 387
    .line 388
    aget v7, v22, v7

    .line 389
    mul-float/2addr v7, v9

    .line 390
    .line 391
    div-float v7, v7, v17

    .line 392
    .line 393
    add-float v7, v7, v16

    .line 394
    float-to-int v7, v7

    .line 395
    .line 396
    :goto_e
    move/from16 v22, v9

    .line 397
    goto :goto_f

    .line 398
    :cond_1a
    move v7, v10

    .line 399
    goto :goto_e

    .line 400
    .line 401
    :goto_f
    iget v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 402
    .line 403
    if-nez v9, :cond_1b

    .line 404
    .line 405
    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 406
    .line 407
    move/from16 v23, v10

    .line 408
    .line 409
    iget v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 410
    .line 411
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 412
    .line 413
    :goto_10
    move/from16 v24, v11

    .line 414
    goto :goto_11

    .line 415
    .line 416
    :cond_1b
    move/from16 v23, v10

    .line 417
    .line 418
    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 419
    .line 420
    iget v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 421
    .line 422
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 423
    goto :goto_10

    .line 424
    .line 425
    :goto_11
    iget v11, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 426
    .line 427
    move/from16 v25, v12

    .line 428
    const/4 v12, 0x1

    .line 429
    .line 430
    if-ne v11, v12, :cond_1c

    .line 431
    .line 432
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 433
    .line 434
    .line 435
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    .line 436
    move-result v3

    .line 437
    goto :goto_12

    .line 438
    :cond_1c
    move v3, v7

    .line 439
    .line 440
    .line 441
    :goto_12
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 442
    move-result v3

    .line 443
    .line 444
    if-lez v10, :cond_1d

    .line 445
    .line 446
    .line 447
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    .line 448
    move-result v3

    .line 449
    .line 450
    :cond_1d
    if-eq v3, v7, :cond_1e

    .line 451
    .line 452
    add-int/lit8 v12, v25, 0x1

    .line 453
    move v7, v3

    .line 454
    goto :goto_13

    .line 455
    .line 456
    :cond_1e
    move/from16 v12, v25

    .line 457
    .line 458
    :goto_13
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 462
    goto :goto_15

    .line 463
    .line 464
    :goto_14
    move/from16 v12, v25

    .line 465
    .line 466
    :goto_15
    add-int/lit8 v11, v24, 0x1

    .line 467
    .line 468
    move/from16 v7, v16

    .line 469
    .line 470
    move/from16 v3, v21

    .line 471
    .line 472
    move/from16 v9, v22

    .line 473
    .line 474
    move/from16 v10, v23

    .line 475
    .line 476
    goto/16 :goto_d

    .line 477
    .line 478
    :cond_1f
    move/from16 v21, v3

    .line 479
    .line 480
    move/from16 v16, v7

    .line 481
    .line 482
    move/from16 v25, v12

    .line 483
    .line 484
    if-lez v25, :cond_23

    .line 485
    .line 486
    sub-int v15, v15, v25

    .line 487
    const/4 v3, 0x0

    .line 488
    const/4 v14, 0x0

    .line 489
    .line 490
    :goto_16
    if-ge v3, v4, :cond_23

    .line 491
    .line 492
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    move-result-object v7

    .line 497
    .line 498
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 499
    .line 500
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 504
    move-result v9

    .line 505
    .line 506
    const/16 v10, 0x8

    .line 507
    .line 508
    if-ne v9, v10, :cond_20

    .line 509
    goto :goto_17

    .line 510
    .line 511
    :cond_20
    if-lez v3, :cond_21

    .line 512
    .line 513
    if-lt v3, v5, :cond_21

    .line 514
    .line 515
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 516
    .line 517
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 518
    add-int/2addr v14, v9

    .line 519
    .line 520
    :cond_21
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 521
    .line 522
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 523
    add-int/2addr v14, v9

    .line 524
    .line 525
    if-ge v3, v8, :cond_22

    .line 526
    .line 527
    if-ge v3, v6, :cond_22

    .line 528
    .line 529
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 530
    .line 531
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 532
    neg-int v7, v7

    .line 533
    add-int/2addr v14, v7

    .line 534
    .line 535
    :cond_22
    :goto_17
    add-int/lit8 v3, v3, 0x1

    .line 536
    goto :goto_16

    .line 537
    .line 538
    :cond_23
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 539
    const/4 v7, 0x2

    .line 540
    .line 541
    if-ne v3, v7, :cond_24

    .line 542
    .line 543
    if-nez v25, :cond_24

    .line 544
    const/4 v3, 0x0

    .line 545
    .line 546
    iput v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 547
    goto :goto_18

    .line 548
    :cond_24
    const/4 v3, 0x0

    .line 549
    goto :goto_18

    .line 550
    .line 551
    :cond_25
    move/from16 v21, v3

    .line 552
    .line 553
    move/from16 v16, v7

    .line 554
    const/4 v3, 0x0

    .line 555
    const/4 v7, 0x2

    .line 556
    .line 557
    :goto_18
    if-le v14, v2, :cond_26

    .line 558
    .line 559
    iput v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 560
    .line 561
    :cond_26
    if-lez v1, :cond_27

    .line 562
    .line 563
    if-nez v15, :cond_27

    .line 564
    .line 565
    if-ne v5, v6, :cond_27

    .line 566
    .line 567
    iput v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 568
    .line 569
    :cond_27
    iget v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 570
    const/4 v12, 0x1

    .line 571
    .line 572
    if-ne v7, v12, :cond_37

    .line 573
    .line 574
    if-le v1, v12, :cond_28

    .line 575
    sub-int/2addr v2, v14

    .line 576
    sub-int/2addr v1, v12

    .line 577
    div-int/2addr v2, v1

    .line 578
    goto :goto_19

    .line 579
    .line 580
    :cond_28
    if-ne v1, v12, :cond_29

    .line 581
    sub-int/2addr v2, v14

    .line 582
    .line 583
    const/16 v18, 0x2

    .line 584
    .line 585
    div-int/lit8 v2, v2, 0x2

    .line 586
    goto :goto_19

    .line 587
    :cond_29
    move v2, v3

    .line 588
    .line 589
    :goto_19
    if-lez v15, :cond_2a

    .line 590
    move v2, v3

    .line 591
    .line 592
    :cond_2a
    move/from16 v1, v21

    .line 593
    .line 594
    :goto_1a
    if-ge v3, v4, :cond_55

    .line 595
    .line 596
    if-eqz v20, :cond_2b

    .line 597
    .line 598
    add-int/lit8 v7, v3, 0x1

    .line 599
    .line 600
    sub-int v7, v4, v7

    .line 601
    goto :goto_1b

    .line 602
    :cond_2b
    move v7, v3

    .line 603
    .line 604
    :goto_1b
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 608
    move-result-object v7

    .line 609
    .line 610
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 611
    .line 612
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 616
    move-result v9

    .line 617
    .line 618
    const/16 v10, 0x8

    .line 619
    .line 620
    if-ne v9, v10, :cond_2c

    .line 621
    .line 622
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 626
    .line 627
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 631
    goto :goto_22

    .line 632
    .line 633
    :cond_2c
    if-lez v3, :cond_2e

    .line 634
    .line 635
    if-eqz v20, :cond_2d

    .line 636
    sub-int/2addr v1, v2

    .line 637
    goto :goto_1c

    .line 638
    :cond_2d
    add-int/2addr v1, v2

    .line 639
    .line 640
    :cond_2e
    :goto_1c
    if-lez v3, :cond_30

    .line 641
    .line 642
    if-lt v3, v5, :cond_30

    .line 643
    .line 644
    if-eqz v20, :cond_2f

    .line 645
    .line 646
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 647
    .line 648
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 649
    sub-int/2addr v1, v9

    .line 650
    goto :goto_1d

    .line 651
    .line 652
    :cond_2f
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 653
    .line 654
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 655
    add-int/2addr v1, v9

    .line 656
    .line 657
    :cond_30
    :goto_1d
    if-eqz v20, :cond_31

    .line 658
    .line 659
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 663
    goto :goto_1e

    .line 664
    .line 665
    :cond_31
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 669
    .line 670
    :goto_1e
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 671
    .line 672
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 673
    .line 674
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 675
    .line 676
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 677
    .line 678
    if-ne v11, v12, :cond_32

    .line 679
    .line 680
    iget v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 681
    const/4 v12, 0x1

    .line 682
    .line 683
    if-ne v11, v12, :cond_32

    .line 684
    .line 685
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 686
    .line 687
    :cond_32
    if-eqz v20, :cond_33

    .line 688
    sub-int/2addr v1, v10

    .line 689
    goto :goto_1f

    .line 690
    :cond_33
    add-int/2addr v1, v10

    .line 691
    .line 692
    :goto_1f
    if-eqz v20, :cond_34

    .line 693
    .line 694
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 698
    :goto_20
    const/4 v12, 0x1

    .line 699
    goto :goto_21

    .line 700
    .line 701
    :cond_34
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 705
    goto :goto_20

    .line 706
    .line 707
    :goto_21
    iput-boolean v12, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 708
    .line 709
    if-ge v3, v8, :cond_36

    .line 710
    .line 711
    if-ge v3, v6, :cond_36

    .line 712
    .line 713
    if-eqz v20, :cond_35

    .line 714
    .line 715
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 716
    .line 717
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 718
    neg-int v7, v7

    .line 719
    sub-int/2addr v1, v7

    .line 720
    goto :goto_22

    .line 721
    .line 722
    :cond_35
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 723
    .line 724
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 725
    neg-int v7, v7

    .line 726
    add-int/2addr v1, v7

    .line 727
    .line 728
    :cond_36
    :goto_22
    add-int/lit8 v3, v3, 0x1

    .line 729
    .line 730
    goto/16 :goto_1a

    .line 731
    .line 732
    :cond_37
    if-nez v7, :cond_44

    .line 733
    sub-int/2addr v2, v14

    .line 734
    .line 735
    const/16 v19, 0x1

    .line 736
    .line 737
    add-int/lit8 v1, v1, 0x1

    .line 738
    div-int/2addr v2, v1

    .line 739
    .line 740
    if-lez v15, :cond_38

    .line 741
    move v2, v3

    .line 742
    .line 743
    :cond_38
    move/from16 v1, v21

    .line 744
    .line 745
    :goto_23
    if-ge v3, v4, :cond_55

    .line 746
    .line 747
    if-eqz v20, :cond_39

    .line 748
    .line 749
    add-int/lit8 v7, v3, 0x1

    .line 750
    .line 751
    sub-int v7, v4, v7

    .line 752
    goto :goto_24

    .line 753
    :cond_39
    move v7, v3

    .line 754
    .line 755
    :goto_24
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 759
    move-result-object v7

    .line 760
    .line 761
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 762
    .line 763
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 767
    move-result v9

    .line 768
    .line 769
    const/16 v10, 0x8

    .line 770
    .line 771
    if-ne v9, v10, :cond_3a

    .line 772
    .line 773
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 777
    .line 778
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 782
    goto :goto_2a

    .line 783
    .line 784
    :cond_3a
    if-eqz v20, :cond_3b

    .line 785
    sub-int/2addr v1, v2

    .line 786
    goto :goto_25

    .line 787
    :cond_3b
    add-int/2addr v1, v2

    .line 788
    .line 789
    :goto_25
    if-lez v3, :cond_3d

    .line 790
    .line 791
    if-lt v3, v5, :cond_3d

    .line 792
    .line 793
    if-eqz v20, :cond_3c

    .line 794
    .line 795
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 796
    .line 797
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 798
    sub-int/2addr v1, v9

    .line 799
    goto :goto_26

    .line 800
    .line 801
    :cond_3c
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 802
    .line 803
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 804
    add-int/2addr v1, v9

    .line 805
    .line 806
    :cond_3d
    :goto_26
    if-eqz v20, :cond_3e

    .line 807
    .line 808
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 812
    goto :goto_27

    .line 813
    .line 814
    :cond_3e
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 818
    .line 819
    :goto_27
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 820
    .line 821
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 822
    .line 823
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 824
    .line 825
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 826
    .line 827
    if-ne v11, v12, :cond_3f

    .line 828
    .line 829
    iget v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 830
    const/4 v12, 0x1

    .line 831
    .line 832
    if-ne v11, v12, :cond_3f

    .line 833
    .line 834
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 835
    .line 836
    .line 837
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 838
    move-result v10

    .line 839
    .line 840
    :cond_3f
    if-eqz v20, :cond_40

    .line 841
    sub-int/2addr v1, v10

    .line 842
    goto :goto_28

    .line 843
    :cond_40
    add-int/2addr v1, v10

    .line 844
    .line 845
    :goto_28
    if-eqz v20, :cond_41

    .line 846
    .line 847
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 851
    goto :goto_29

    .line 852
    .line 853
    :cond_41
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 857
    .line 858
    :goto_29
    if-ge v3, v8, :cond_43

    .line 859
    .line 860
    if-ge v3, v6, :cond_43

    .line 861
    .line 862
    if-eqz v20, :cond_42

    .line 863
    .line 864
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 865
    .line 866
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 867
    neg-int v7, v7

    .line 868
    sub-int/2addr v1, v7

    .line 869
    goto :goto_2a

    .line 870
    .line 871
    :cond_42
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 872
    .line 873
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 874
    neg-int v7, v7

    .line 875
    add-int/2addr v1, v7

    .line 876
    .line 877
    :cond_43
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    .line 878
    .line 879
    goto/16 :goto_23

    .line 880
    :cond_44
    const/4 v1, 0x2

    .line 881
    .line 882
    if-ne v7, v1, :cond_55

    .line 883
    .line 884
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 885
    .line 886
    if-nez v1, :cond_45

    .line 887
    .line 888
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    .line 892
    move-result v1

    .line 893
    goto :goto_2b

    .line 894
    .line 895
    :cond_45
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    .line 899
    move-result v1

    .line 900
    .line 901
    :goto_2b
    if-eqz v20, :cond_46

    .line 902
    .line 903
    const/high16 v7, 0x3f800000    # 1.0f

    .line 904
    .line 905
    sub-float v1, v7, v1

    .line 906
    :cond_46
    sub-int/2addr v2, v14

    .line 907
    int-to-float v2, v2

    .line 908
    mul-float/2addr v2, v1

    .line 909
    .line 910
    add-float v2, v2, v16

    .line 911
    float-to-int v1, v2

    .line 912
    .line 913
    if-ltz v1, :cond_47

    .line 914
    .line 915
    if-lez v15, :cond_48

    .line 916
    :cond_47
    move v1, v3

    .line 917
    .line 918
    :cond_48
    if-eqz v20, :cond_49

    .line 919
    .line 920
    sub-int v1, v21, v1

    .line 921
    goto :goto_2c

    .line 922
    .line 923
    :cond_49
    add-int v1, v21, v1

    .line 924
    .line 925
    :goto_2c
    if-ge v3, v4, :cond_55

    .line 926
    .line 927
    if-eqz v20, :cond_4a

    .line 928
    .line 929
    add-int/lit8 v2, v3, 0x1

    .line 930
    .line 931
    sub-int v2, v4, v2

    .line 932
    goto :goto_2d

    .line 933
    :cond_4a
    move v2, v3

    .line 934
    .line 935
    :goto_2d
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 939
    move-result-object v2

    .line 940
    .line 941
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 942
    .line 943
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 947
    move-result v7

    .line 948
    .line 949
    const/16 v10, 0x8

    .line 950
    .line 951
    if-ne v7, v10, :cond_4b

    .line 952
    .line 953
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 957
    .line 958
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 962
    const/4 v12, 0x1

    .line 963
    goto :goto_33

    .line 964
    .line 965
    :cond_4b
    if-lez v3, :cond_4d

    .line 966
    .line 967
    if-lt v3, v5, :cond_4d

    .line 968
    .line 969
    if-eqz v20, :cond_4c

    .line 970
    .line 971
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 972
    .line 973
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 974
    sub-int/2addr v1, v7

    .line 975
    goto :goto_2e

    .line 976
    .line 977
    :cond_4c
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 978
    .line 979
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 980
    add-int/2addr v1, v7

    .line 981
    .line 982
    :cond_4d
    :goto_2e
    if-eqz v20, :cond_4e

    .line 983
    .line 984
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 988
    goto :goto_2f

    .line 989
    .line 990
    :cond_4e
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 991
    .line 992
    .line 993
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 994
    .line 995
    :goto_2f
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 996
    .line 997
    iget v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 998
    .line 999
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1000
    .line 1001
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1002
    .line 1003
    if-ne v11, v12, :cond_4f

    .line 1004
    .line 1005
    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 1006
    const/4 v12, 0x1

    .line 1007
    .line 1008
    if-ne v11, v12, :cond_50

    .line 1009
    .line 1010
    iget v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 1011
    goto :goto_30

    .line 1012
    :cond_4f
    const/4 v12, 0x1

    .line 1013
    .line 1014
    :cond_50
    :goto_30
    if-eqz v20, :cond_51

    .line 1015
    sub-int/2addr v1, v9

    .line 1016
    goto :goto_31

    .line 1017
    :cond_51
    add-int/2addr v1, v9

    .line 1018
    .line 1019
    :goto_31
    if-eqz v20, :cond_52

    .line 1020
    .line 1021
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 1025
    goto :goto_32

    .line 1026
    .line 1027
    :cond_52
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 1031
    .line 1032
    :goto_32
    if-ge v3, v8, :cond_54

    .line 1033
    .line 1034
    if-ge v3, v6, :cond_54

    .line 1035
    .line 1036
    if-eqz v20, :cond_53

    .line 1037
    .line 1038
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1039
    .line 1040
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 1041
    neg-int v2, v2

    .line 1042
    sub-int/2addr v1, v2

    .line 1043
    goto :goto_33

    .line 1044
    .line 1045
    :cond_53
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1046
    .line 1047
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 1048
    neg-int v2, v2

    .line 1049
    add-int/2addr v1, v2

    .line 1050
    .line 1051
    :cond_54
    :goto_33
    add-int/lit8 v3, v3, 0x1

    .line 1052
    .line 1053
    goto/16 :goto_2c

    .line 1054
    :cond_55
    :goto_34
    return-void
.end method
