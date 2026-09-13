.class public Landroidx/constraintlayout/core/widgets/analyzer/Direct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APPLY_MATCH_PARENT:Z = false

.field private static final DEBUG:Z = false

.field private static final EARLY_TERMINATION:Z = true

.field private static hcount:I

.field private static measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private static vcount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    .line 11
    .line 12
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 39
    .line 40
    :cond_2
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x1

    .line 44
    .line 45
    if-eq p0, v1, :cond_5

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 49
    move-result v5

    .line 50
    .line 51
    if-nez v5, :cond_5

    .line 52
    .line 53
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 54
    .line 55
    if-eq p0, v5, :cond_5

    .line 56
    .line 57
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 58
    .line 59
    if-ne p0, v5, :cond_3

    .line 60
    .line 61
    iget v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 62
    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    iget v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 66
    .line 67
    cmpl-float v6, v6, v2

    .line 68
    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 73
    move-result v6

    .line 74
    .line 75
    if-nez v6, :cond_5

    .line 76
    .line 77
    :cond_3
    if-ne p0, v5, :cond_4

    .line 78
    .line 79
    iget p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 80
    .line 81
    if-ne p0, v4, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 85
    move-result p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasResolvedTargets(II)Z

    .line 89
    move-result p0

    .line 90
    .line 91
    if-eqz p0, :cond_4

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move p0, v3

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    :goto_1
    move p0, v4

    .line 96
    .line 97
    :goto_2
    if-eq v0, v1, :cond_8

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 101
    move-result v1

    .line 102
    .line 103
    if-nez v1, :cond_8

    .line 104
    .line 105
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 106
    .line 107
    if-eq v0, v1, :cond_8

    .line 108
    .line 109
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 110
    .line 111
    if-ne v0, v1, :cond_6

    .line 112
    .line 113
    iget v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 114
    .line 115
    if-nez v5, :cond_6

    .line 116
    .line 117
    iget v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 118
    .line 119
    cmpl-float v5, v5, v2

    .line 120
    .line 121
    if-nez v5, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 125
    move-result v5

    .line 126
    .line 127
    if-nez v5, :cond_8

    .line 128
    .line 129
    :cond_6
    if-ne v0, v1, :cond_7

    .line 130
    .line 131
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 132
    .line 133
    if-ne v0, v4, :cond_7

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 137
    move-result v0

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasResolvedTargets(II)Z

    .line 141
    move-result v0

    .line 142
    .line 143
    if-eqz v0, :cond_7

    .line 144
    goto :goto_3

    .line 145
    :cond_7
    move v0, v3

    .line 146
    goto :goto_4

    .line 147
    :cond_8
    :goto_3
    move v0, v4

    .line 148
    .line 149
    :goto_4
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 150
    .line 151
    cmpl-float p1, p1, v2

    .line 152
    .line 153
    if-lez p1, :cond_a

    .line 154
    .line 155
    if-nez p0, :cond_9

    .line 156
    .line 157
    if-eqz v0, :cond_a

    .line 158
    :cond_9
    return v4

    .line 159
    .line 160
    :cond_a
    if-eqz p0, :cond_b

    .line 161
    .line 162
    if-eqz v0, :cond_b

    .line 163
    return v4

    .line 164
    :cond_b
    return v3
.end method

.method private static horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move/from16 v2, p3

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isHorizontalSolvingPassDone()Z

    .line 10
    move-result v3

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    sget v3, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    .line 16
    const/4 v4, 0x1

    .line 17
    add-int/2addr v3, v4

    .line 18
    .line 19
    sput v3, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    .line 20
    .line 21
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    add-int/lit8 v3, p0, 0x1

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 40
    .line 41
    .line 42
    invoke-direct {v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 43
    .line 44
    sget v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v0, v1, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 48
    .line 49
    :cond_1
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 63
    move-result v6

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 67
    move-result v7

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 71
    move-result-object v8

    .line 72
    .line 73
    const/16 v10, 0x8

    .line 74
    const/4 v11, 0x0

    .line 75
    .line 76
    if-eqz v8, :cond_d

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 80
    move-result v8

    .line 81
    .line 82
    if-eqz v8, :cond_d

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v8

    .line 95
    .line 96
    if-eqz v8, :cond_d

    .line 97
    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v8

    .line 101
    .line 102
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 103
    .line 104
    iget-object v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 105
    .line 106
    add-int/lit8 v13, p0, 0x1

    .line 107
    .line 108
    .line 109
    invoke-static {v13, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 110
    move-result v14

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 114
    move-result v15

    .line 115
    .line 116
    if-eqz v15, :cond_2

    .line 117
    .line 118
    if-eqz v14, :cond_2

    .line 119
    .line 120
    new-instance v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 121
    .line 122
    .line 123
    invoke-direct {v15}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 124
    .line 125
    move/from16 v16, v4

    .line 126
    .line 127
    sget v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 128
    .line 129
    .line 130
    invoke-static {v13, v12, v1, v15, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :cond_2
    move/from16 v16, v4

    .line 134
    .line 135
    :goto_1
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 136
    .line 137
    if-ne v8, v4, :cond_3

    .line 138
    .line 139
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 140
    .line 141
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 142
    .line 143
    if-eqz v4, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 147
    move-result v4

    .line 148
    .line 149
    if-nez v4, :cond_4

    .line 150
    .line 151
    :cond_3
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 152
    .line 153
    if-ne v8, v4, :cond_5

    .line 154
    .line 155
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 156
    .line 157
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 158
    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 163
    move-result v4

    .line 164
    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    :cond_4
    move/from16 v4, v16

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    move v4, v11

    .line 170
    .line 171
    .line 172
    :goto_2
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 173
    move-result-object v15

    .line 174
    .line 175
    const/16 v17, 0x0

    .line 176
    .line 177
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 178
    .line 179
    if-ne v15, v9, :cond_8

    .line 180
    .line 181
    if-eqz v14, :cond_6

    .line 182
    goto :goto_3

    .line 183
    .line 184
    .line 185
    :cond_6
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 186
    move-result-object v8

    .line 187
    .line 188
    if-ne v8, v9, :cond_9

    .line 189
    .line 190
    iget v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 191
    .line 192
    if-ltz v8, :cond_9

    .line 193
    .line 194
    iget v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 195
    .line 196
    if-ltz v8, :cond_9

    .line 197
    .line 198
    .line 199
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 200
    move-result v8

    .line 201
    .line 202
    if-eq v8, v10, :cond_7

    .line 203
    .line 204
    iget v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 205
    .line 206
    if-nez v8, :cond_9

    .line 207
    .line 208
    .line 209
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 210
    move-result v8

    .line 211
    .line 212
    cmpl-float v8, v8, v17

    .line 213
    .line 214
    if-nez v8, :cond_9

    .line 215
    .line 216
    .line 217
    :cond_7
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 218
    move-result v8

    .line 219
    .line 220
    if-nez v8, :cond_9

    .line 221
    .line 222
    .line 223
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    .line 224
    move-result v8

    .line 225
    .line 226
    if-nez v8, :cond_9

    .line 227
    .line 228
    if-eqz v4, :cond_9

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 232
    move-result v4

    .line 233
    .line 234
    if-nez v4, :cond_9

    .line 235
    .line 236
    .line 237
    invoke-static {v13, v0, v1, v12, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 238
    goto :goto_4

    .line 239
    .line 240
    .line 241
    :cond_8
    :goto_3
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 242
    move-result v9

    .line 243
    .line 244
    if-eqz v9, :cond_a

    .line 245
    .line 246
    :cond_9
    :goto_4
    move/from16 v4, v16

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_a
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 251
    .line 252
    if-ne v8, v9, :cond_b

    .line 253
    .line 254
    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 255
    .line 256
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 257
    .line 258
    if-nez v14, :cond_b

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 262
    move-result v4

    .line 263
    add-int/2addr v4, v6

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 267
    move-result v8

    .line 268
    add-int/2addr v8, v4

    .line 269
    .line 270
    .line 271
    invoke-virtual {v12, v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 272
    .line 273
    .line 274
    invoke-static {v13, v12, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 275
    goto :goto_4

    .line 276
    .line 277
    :cond_b
    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 278
    .line 279
    if-ne v8, v14, :cond_c

    .line 280
    .line 281
    iget-object v8, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 282
    .line 283
    if-nez v8, :cond_c

    .line 284
    .line 285
    .line 286
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 287
    move-result v4

    .line 288
    .line 289
    sub-int v4, v6, v4

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 293
    move-result v8

    .line 294
    .line 295
    sub-int v8, v4, v8

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v8, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 299
    .line 300
    .line 301
    invoke-static {v13, v12, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 302
    goto :goto_4

    .line 303
    .line 304
    :cond_c
    if-eqz v4, :cond_9

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 308
    move-result v4

    .line 309
    .line 310
    if-nez v4, :cond_9

    .line 311
    .line 312
    .line 313
    invoke-static {v13, v1, v12, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 314
    goto :goto_4

    .line 315
    .line 316
    :cond_d
    move/from16 v16, v4

    .line 317
    .line 318
    const/16 v17, 0x0

    .line 319
    .line 320
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 321
    .line 322
    if-eqz v3, :cond_e

    .line 323
    return-void

    .line 324
    .line 325
    .line 326
    :cond_e
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 327
    move-result-object v3

    .line 328
    .line 329
    if-eqz v3, :cond_1a

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 333
    move-result v3

    .line 334
    .line 335
    if-eqz v3, :cond_1a

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 339
    move-result-object v3

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 343
    move-result-object v3

    .line 344
    .line 345
    .line 346
    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    move-result v4

    .line 348
    .line 349
    if-eqz v4, :cond_1a

    .line 350
    .line 351
    .line 352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    move-result-object v4

    .line 354
    .line 355
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 356
    .line 357
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 358
    .line 359
    add-int/lit8 v6, p0, 0x1

    .line 360
    .line 361
    .line 362
    invoke-static {v6, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 363
    move-result v8

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 367
    move-result v9

    .line 368
    .line 369
    if-eqz v9, :cond_10

    .line 370
    .line 371
    if-eqz v8, :cond_10

    .line 372
    .line 373
    new-instance v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 374
    .line 375
    .line 376
    invoke-direct {v9}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 377
    .line 378
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 379
    .line 380
    .line 381
    invoke-static {v6, v5, v1, v9, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 382
    .line 383
    :cond_10
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 384
    .line 385
    if-ne v4, v9, :cond_11

    .line 386
    .line 387
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 388
    .line 389
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 390
    .line 391
    if-eqz v9, :cond_11

    .line 392
    .line 393
    .line 394
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 395
    move-result v9

    .line 396
    .line 397
    if-nez v9, :cond_12

    .line 398
    .line 399
    :cond_11
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 400
    .line 401
    if-ne v4, v9, :cond_13

    .line 402
    .line 403
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 404
    .line 405
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 406
    .line 407
    if-eqz v9, :cond_13

    .line 408
    .line 409
    .line 410
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 411
    move-result v9

    .line 412
    .line 413
    if-eqz v9, :cond_13

    .line 414
    .line 415
    :cond_12
    move/from16 v9, v16

    .line 416
    goto :goto_6

    .line 417
    :cond_13
    move v9, v11

    .line 418
    .line 419
    .line 420
    :goto_6
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 421
    move-result-object v12

    .line 422
    .line 423
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 424
    .line 425
    if-ne v12, v13, :cond_16

    .line 426
    .line 427
    if-eqz v8, :cond_14

    .line 428
    goto :goto_7

    .line 429
    .line 430
    .line 431
    :cond_14
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 432
    move-result-object v4

    .line 433
    .line 434
    if-ne v4, v13, :cond_f

    .line 435
    .line 436
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 437
    .line 438
    if-ltz v4, :cond_f

    .line 439
    .line 440
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 441
    .line 442
    if-ltz v4, :cond_f

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 446
    move-result v4

    .line 447
    .line 448
    if-eq v4, v10, :cond_15

    .line 449
    .line 450
    iget v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 451
    .line 452
    if-nez v4, :cond_f

    .line 453
    .line 454
    .line 455
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 456
    move-result v4

    .line 457
    .line 458
    cmpl-float v4, v4, v17

    .line 459
    .line 460
    if-nez v4, :cond_f

    .line 461
    .line 462
    .line 463
    :cond_15
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 464
    move-result v4

    .line 465
    .line 466
    if-nez v4, :cond_f

    .line 467
    .line 468
    .line 469
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    .line 470
    move-result v4

    .line 471
    .line 472
    if-nez v4, :cond_f

    .line 473
    .line 474
    if-eqz v9, :cond_f

    .line 475
    .line 476
    .line 477
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 478
    move-result v4

    .line 479
    .line 480
    if-nez v4, :cond_f

    .line 481
    .line 482
    .line 483
    invoke-static {v6, v0, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 484
    .line 485
    goto/16 :goto_5

    .line 486
    .line 487
    .line 488
    :cond_16
    :goto_7
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 489
    move-result v8

    .line 490
    .line 491
    if-eqz v8, :cond_17

    .line 492
    .line 493
    goto/16 :goto_5

    .line 494
    .line 495
    :cond_17
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 496
    .line 497
    if-ne v4, v8, :cond_18

    .line 498
    .line 499
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 500
    .line 501
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 502
    .line 503
    if-nez v12, :cond_18

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 507
    move-result v4

    .line 508
    add-int/2addr v4, v7

    .line 509
    .line 510
    .line 511
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 512
    move-result v8

    .line 513
    add-int/2addr v8, v4

    .line 514
    .line 515
    .line 516
    invoke-virtual {v5, v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 517
    .line 518
    .line 519
    invoke-static {v6, v5, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 520
    .line 521
    goto/16 :goto_5

    .line 522
    .line 523
    :cond_18
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 524
    .line 525
    if-ne v4, v12, :cond_19

    .line 526
    .line 527
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 528
    .line 529
    if-nez v4, :cond_19

    .line 530
    .line 531
    .line 532
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 533
    move-result v4

    .line 534
    .line 535
    sub-int v4, v7, v4

    .line 536
    .line 537
    .line 538
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 539
    move-result v8

    .line 540
    .line 541
    sub-int v8, v4, v8

    .line 542
    .line 543
    .line 544
    invoke-virtual {v5, v8, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 545
    .line 546
    .line 547
    invoke-static {v6, v5, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 548
    .line 549
    goto/16 :goto_5

    .line 550
    .line 551
    :cond_19
    if-eqz v9, :cond_f

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 555
    move-result v4

    .line 556
    .line 557
    if-nez v4, :cond_f

    .line 558
    .line 559
    .line 560
    invoke-static {v6, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 561
    .line 562
    goto/16 :goto_5

    .line 563
    .line 564
    .line 565
    :cond_1a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->markHorizontalSolvingPassDone()V

    .line 566
    return-void
.end method

.method public static ls(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :goto_0
    if-ge v1, p0, :cond_0

    .line 9
    .line 10
    const-string v2, "  "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "+-("

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p0, ") "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private static solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    add-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, p2, p4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 20
    :cond_1
    return-void
.end method

.method public static solveChain(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;ZZZ)Z
    .locals 20

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    return v0

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getFirst()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getLast()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getHead()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    move-result-object v6

    .line 45
    .line 46
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 47
    .line 48
    aget-object v7, v7, p3

    .line 49
    .line 50
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 51
    .line 52
    add-int/lit8 v8, p3, 0x1

    .line 53
    .line 54
    aget-object v3, v3, v8

    .line 55
    .line 56
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 57
    .line 58
    if-eqz v9, :cond_3

    .line 59
    .line 60
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 61
    .line 62
    if-nez v10, :cond_4

    .line 63
    .line 64
    :cond_3
    move/from16 v16, v0

    .line 65
    .line 66
    goto/16 :goto_10

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 70
    move-result v9

    .line 71
    .line 72
    if-eqz v9, :cond_5

    .line 73
    .line 74
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 78
    move-result v9

    .line 79
    .line 80
    if-nez v9, :cond_6

    .line 81
    .line 82
    :cond_5
    move/from16 v16, v0

    .line 83
    .line 84
    goto/16 :goto_10

    .line 85
    .line 86
    :cond_6
    if-eqz v4, :cond_7

    .line 87
    .line 88
    if-nez v5, :cond_8

    .line 89
    .line 90
    :cond_7
    move/from16 v16, v0

    .line 91
    .line 92
    goto/16 :goto_10

    .line 93
    .line 94
    :cond_8
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 98
    move-result v7

    .line 99
    .line 100
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 101
    .line 102
    aget-object v9, v9, p3

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 106
    move-result v9

    .line 107
    add-int/2addr v7, v9

    .line 108
    .line 109
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 113
    move-result v3

    .line 114
    .line 115
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 116
    .line 117
    aget-object v9, v9, v8

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 121
    move-result v9

    .line 122
    sub-int/2addr v3, v9

    .line 123
    .line 124
    sub-int v9, v3, v7

    .line 125
    .line 126
    if-gtz v9, :cond_9

    .line 127
    return v0

    .line 128
    .line 129
    :cond_9
    new-instance v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 130
    .line 131
    .line 132
    invoke-direct {v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 133
    move v11, v0

    .line 134
    move v12, v11

    .line 135
    move v14, v12

    .line 136
    move v15, v14

    .line 137
    .line 138
    move/from16 v16, v15

    .line 139
    move-object v13, v2

    .line 140
    .line 141
    :goto_0
    const/16 v17, 0x0

    .line 142
    const/4 v0, 0x1

    .line 143
    .line 144
    if-nez v11, :cond_12

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v13}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 148
    move-result v18

    .line 149
    .line 150
    if-nez v18, :cond_a

    .line 151
    return v16

    .line 152
    .line 153
    :cond_a
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    .line 155
    aget-object v0, v0, p2

    .line 156
    .line 157
    move-object/from16 v18, v2

    .line 158
    .line 159
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 160
    .line 161
    if-ne v0, v2, :cond_b

    .line 162
    return v16

    .line 163
    .line 164
    .line 165
    :cond_b
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 166
    move-result v0

    .line 167
    .line 168
    if-eqz v0, :cond_c

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    sget v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 175
    .line 176
    move-object/from16 v19, v6

    .line 177
    const/4 v6, 0x1

    .line 178
    .line 179
    .line 180
    invoke-static {v6, v13, v0, v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 181
    goto :goto_1

    .line 182
    .line 183
    :cond_c
    move-object/from16 v19, v6

    .line 184
    .line 185
    :goto_1
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 186
    .line 187
    aget-object v0, v0, p3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 191
    move-result v0

    .line 192
    add-int/2addr v15, v0

    .line 193
    .line 194
    if-nez p2, :cond_d

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 198
    move-result v0

    .line 199
    :goto_2
    add-int/2addr v15, v0

    .line 200
    goto :goto_3

    .line 201
    .line 202
    .line 203
    :cond_d
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 204
    move-result v0

    .line 205
    goto :goto_2

    .line 206
    .line 207
    :goto_3
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 208
    .line 209
    aget-object v0, v0, v8

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 213
    move-result v0

    .line 214
    add-int/2addr v15, v0

    .line 215
    .line 216
    add-int/lit8 v14, v14, 0x1

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 220
    move-result v0

    .line 221
    .line 222
    const/16 v2, 0x8

    .line 223
    .line 224
    if-eq v0, v2, :cond_e

    .line 225
    .line 226
    add-int/lit8 v12, v12, 0x1

    .line 227
    .line 228
    :cond_e
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 229
    .line 230
    aget-object v0, v0, v8

    .line 231
    .line 232
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 233
    .line 234
    if-eqz v0, :cond_10

    .line 235
    .line 236
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 237
    .line 238
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 239
    .line 240
    aget-object v2, v2, p3

    .line 241
    .line 242
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 243
    .line 244
    if-eqz v2, :cond_10

    .line 245
    .line 246
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 247
    .line 248
    if-eq v2, v13, :cond_f

    .line 249
    goto :goto_4

    .line 250
    .line 251
    :cond_f
    move-object/from16 v17, v0

    .line 252
    .line 253
    :cond_10
    :goto_4
    if-eqz v17, :cond_11

    .line 254
    .line 255
    move-object/from16 v13, v17

    .line 256
    goto :goto_5

    .line 257
    :cond_11
    const/4 v11, 0x1

    .line 258
    .line 259
    :goto_5
    move-object/from16 v2, v18

    .line 260
    .line 261
    move-object/from16 v6, v19

    .line 262
    goto :goto_0

    .line 263
    .line 264
    :cond_12
    move-object/from16 v18, v2

    .line 265
    .line 266
    move-object/from16 v19, v6

    .line 267
    .line 268
    if-nez v12, :cond_13

    .line 269
    return v16

    .line 270
    .line 271
    :cond_13
    if-eq v12, v14, :cond_14

    .line 272
    return v16

    .line 273
    .line 274
    :cond_14
    if-ge v9, v15, :cond_15

    .line 275
    return v16

    .line 276
    :cond_15
    sub-int/2addr v9, v15

    .line 277
    const/4 v0, 0x2

    .line 278
    .line 279
    if-eqz p5, :cond_17

    .line 280
    .line 281
    add-int/lit8 v2, v12, 0x1

    .line 282
    div-int/2addr v9, v2

    .line 283
    :cond_16
    const/4 v6, 0x1

    .line 284
    goto :goto_6

    .line 285
    .line 286
    :cond_17
    if-eqz p6, :cond_16

    .line 287
    .line 288
    if-le v12, v0, :cond_16

    .line 289
    div-int/2addr v9, v12

    .line 290
    const/4 v6, 0x1

    .line 291
    sub-int/2addr v9, v6

    .line 292
    .line 293
    :goto_6
    if-ne v12, v6, :cond_1a

    .line 294
    .line 295
    if-nez p2, :cond_18

    .line 296
    .line 297
    .line 298
    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    .line 299
    move-result v0

    .line 300
    goto :goto_7

    .line 301
    .line 302
    .line 303
    :cond_18
    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    .line 304
    move-result v0

    .line 305
    .line 306
    :goto_7
    const/high16 v2, 0x3f000000    # 0.5f

    .line 307
    int-to-float v3, v7

    .line 308
    add-float/2addr v3, v2

    .line 309
    int-to-float v2, v9

    .line 310
    mul-float/2addr v2, v0

    .line 311
    add-float/2addr v3, v2

    .line 312
    float-to-int v0, v3

    .line 313
    .line 314
    if-nez p2, :cond_19

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 318
    move-result v2

    .line 319
    add-int/2addr v2, v0

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 323
    goto :goto_8

    .line 324
    .line 325
    .line 326
    :cond_19
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 327
    move-result v2

    .line 328
    add-int/2addr v2, v0

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 332
    .line 333
    .line 334
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 335
    move-result-object v0

    .line 336
    const/4 v6, 0x1

    .line 337
    .line 338
    .line 339
    invoke-static {v6, v4, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 340
    return v6

    .line 341
    .line 342
    :cond_1a
    if-eqz p5, :cond_21

    .line 343
    add-int/2addr v7, v9

    .line 344
    .line 345
    move/from16 v0, v16

    .line 346
    .line 347
    move-object/from16 v2, v18

    .line 348
    .line 349
    :goto_9
    if-nez v0, :cond_25

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 353
    move-result v3

    .line 354
    .line 355
    const/16 v4, 0x8

    .line 356
    .line 357
    if-ne v3, v4, :cond_1c

    .line 358
    .line 359
    if-nez p2, :cond_1b

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v7, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 366
    move-result-object v3

    .line 367
    .line 368
    .line 369
    invoke-static {v6, v2, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 370
    goto :goto_a

    .line 371
    .line 372
    .line 373
    :cond_1b
    invoke-virtual {v2, v7, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 377
    move-result-object v3

    .line 378
    .line 379
    .line 380
    invoke-static {v6, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 381
    .line 382
    :goto_a
    move-object/from16 v3, p1

    .line 383
    .line 384
    move/from16 v5, v16

    .line 385
    goto :goto_d

    .line 386
    .line 387
    :cond_1c
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 388
    .line 389
    aget-object v3, v3, p3

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 393
    move-result v3

    .line 394
    add-int/2addr v7, v3

    .line 395
    .line 396
    if-nez p2, :cond_1d

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 400
    move-result v3

    .line 401
    add-int/2addr v3, v7

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 408
    move-result-object v3

    .line 409
    const/4 v6, 0x1

    .line 410
    .line 411
    .line 412
    invoke-static {v6, v2, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 416
    move-result v3

    .line 417
    :goto_b
    add-int/2addr v7, v3

    .line 418
    goto :goto_c

    .line 419
    :cond_1d
    const/4 v6, 0x1

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 423
    move-result v3

    .line 424
    add-int/2addr v3, v7

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 428
    .line 429
    .line 430
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 431
    move-result-object v3

    .line 432
    .line 433
    .line 434
    invoke-static {v6, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 438
    move-result v3

    .line 439
    goto :goto_b

    .line 440
    .line 441
    :goto_c
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 442
    .line 443
    aget-object v3, v3, v8

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 447
    move-result v3

    .line 448
    add-int/2addr v7, v3

    .line 449
    add-int/2addr v7, v9

    .line 450
    goto :goto_a

    .line 451
    .line 452
    .line 453
    :goto_d
    invoke-virtual {v2, v3, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 454
    .line 455
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 456
    .line 457
    aget-object v5, v5, v8

    .line 458
    .line 459
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 460
    .line 461
    if-eqz v5, :cond_1e

    .line 462
    .line 463
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 464
    .line 465
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 466
    .line 467
    aget-object v6, v6, p3

    .line 468
    .line 469
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 470
    .line 471
    if-eqz v6, :cond_1e

    .line 472
    .line 473
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 474
    .line 475
    if-eq v6, v2, :cond_1f

    .line 476
    .line 477
    :cond_1e
    move-object/from16 v5, v17

    .line 478
    .line 479
    :cond_1f
    if-eqz v5, :cond_20

    .line 480
    move-object v2, v5

    .line 481
    goto :goto_e

    .line 482
    :cond_20
    const/4 v0, 0x1

    .line 483
    :goto_e
    const/4 v6, 0x1

    .line 484
    .line 485
    const/16 v16, 0x0

    .line 486
    .line 487
    goto/16 :goto_9

    .line 488
    .line 489
    :cond_21
    if-eqz p6, :cond_24

    .line 490
    .line 491
    if-ne v12, v0, :cond_23

    .line 492
    .line 493
    if-nez p2, :cond_22

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 497
    move-result v0

    .line 498
    add-int/2addr v0, v7

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4, v7, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 505
    move-result v0

    .line 506
    .line 507
    sub-int v0, v3, v0

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 511
    .line 512
    .line 513
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 514
    move-result-object v0

    .line 515
    const/4 v6, 0x1

    .line 516
    .line 517
    .line 518
    invoke-static {v6, v4, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 519
    .line 520
    .line 521
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 522
    move-result-object v0

    .line 523
    .line 524
    .line 525
    invoke-static {v6, v5, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 526
    goto :goto_f

    .line 527
    :cond_22
    const/4 v6, 0x1

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 531
    move-result v0

    .line 532
    add-int/2addr v0, v7

    .line 533
    .line 534
    .line 535
    invoke-virtual {v4, v7, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 539
    move-result v0

    .line 540
    .line 541
    sub-int v0, v3, v0

    .line 542
    .line 543
    .line 544
    invoke-virtual {v5, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 545
    .line 546
    .line 547
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 548
    move-result-object v0

    .line 549
    .line 550
    .line 551
    invoke-static {v6, v4, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 555
    move-result-object v0

    .line 556
    .line 557
    .line 558
    invoke-static {v6, v5, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 559
    :goto_f
    return v6

    .line 560
    .line 561
    :cond_23
    const/16 v16, 0x0

    .line 562
    return v16

    .line 563
    :cond_24
    const/4 v6, 0x1

    .line 564
    :cond_25
    return v6

    .line 565
    :goto_10
    return v16
.end method

.method private static solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    .line 16
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    .line 29
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 33
    move-result v4

    .line 34
    .line 35
    sub-int v4, v2, v4

    .line 36
    .line 37
    const/high16 v5, 0x3f000000    # 0.5f

    .line 38
    .line 39
    if-ne v1, v2, :cond_0

    .line 40
    move v0, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v1, v3

    .line 43
    move v2, v4

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 47
    move-result v3

    .line 48
    .line 49
    sub-int v4, v2, v1

    .line 50
    sub-int/2addr v4, v3

    .line 51
    .line 52
    if-le v1, v2, :cond_1

    .line 53
    .line 54
    sub-int v4, v1, v2

    .line 55
    sub-int/2addr v4, v3

    .line 56
    .line 57
    :cond_1
    if-lez v4, :cond_2

    .line 58
    int-to-float v4, v4

    .line 59
    mul-float/2addr v0, v4

    .line 60
    add-float/2addr v0, v5

    .line 61
    :goto_1
    float-to-int v0, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    int-to-float v4, v4

    .line 64
    mul-float/2addr v0, v4

    .line 65
    goto :goto_1

    .line 66
    :goto_2
    add-int/2addr v0, v1

    .line 67
    .line 68
    add-int v4, v0, v3

    .line 69
    .line 70
    if-le v1, v2, :cond_3

    .line 71
    .line 72
    sub-int v4, v0, v3

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p2, v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 76
    .line 77
    add-int/lit8 p0, p0, 0x1

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 81
    return-void
.end method

.method private static solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    .line 21
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 27
    move-result v2

    .line 28
    .line 29
    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 33
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    .line 36
    if-lt v2, v1, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 40
    move-result v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 44
    move-result v4

    .line 45
    .line 46
    const/16 v5, 0x8

    .line 47
    .line 48
    const/high16 v6, 0x3f000000    # 0.5f

    .line 49
    .line 50
    if-eq v4, v5, :cond_3

    .line 51
    .line 52
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 53
    const/4 v5, 0x2

    .line 54
    .line 55
    if-ne v4, v5, :cond_1

    .line 56
    .line 57
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 63
    move-result p1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    .line 76
    move-result v3

    .line 77
    mul-float/2addr v3, v6

    .line 78
    int-to-float p1, p1

    .line 79
    mul-float/2addr v3, p1

    .line 80
    float-to-int v3, v3

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_1
    if-nez v4, :cond_2

    .line 84
    .line 85
    sub-int v3, v2, v1

    .line 86
    .line 87
    :cond_2
    :goto_1
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result v3

    .line 92
    .line 93
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 94
    .line 95
    if-lez p1, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 99
    move-result v3

    .line 100
    :cond_3
    sub-int/2addr v2, v1

    .line 101
    sub-int/2addr v2, v3

    .line 102
    int-to-float p1, v2

    .line 103
    mul-float/2addr v0, p1

    .line 104
    add-float/2addr v0, v6

    .line 105
    float-to-int p1, v0

    .line 106
    add-int/2addr v1, p1

    .line 107
    add-int/2addr v3, v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 111
    .line 112
    add-int/lit8 p0, p0, 0x1

    .line 113
    .line 114
    .line 115
    invoke-static {p0, p3, p2, p4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 116
    :cond_4
    return-void
.end method

.method private static solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    .line 16
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    .line 29
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 33
    move-result v4

    .line 34
    .line 35
    sub-int v4, v2, v4

    .line 36
    .line 37
    const/high16 v5, 0x3f000000    # 0.5f

    .line 38
    .line 39
    if-ne v1, v2, :cond_0

    .line 40
    move v0, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v1, v3

    .line 43
    move v2, v4

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 47
    move-result v3

    .line 48
    .line 49
    sub-int v4, v2, v1

    .line 50
    sub-int/2addr v4, v3

    .line 51
    .line 52
    if-le v1, v2, :cond_1

    .line 53
    .line 54
    sub-int v4, v1, v2

    .line 55
    sub-int/2addr v4, v3

    .line 56
    .line 57
    :cond_1
    if-lez v4, :cond_2

    .line 58
    int-to-float v4, v4

    .line 59
    mul-float/2addr v0, v4

    .line 60
    add-float/2addr v0, v5

    .line 61
    :goto_1
    float-to-int v0, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    int-to-float v4, v4

    .line 64
    mul-float/2addr v0, v4

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :goto_2
    add-int v4, v1, v0

    .line 68
    .line 69
    add-int v5, v4, v3

    .line 70
    .line 71
    if-le v1, v2, :cond_3

    .line 72
    .line 73
    sub-int v4, v1, v0

    .line 74
    .line 75
    sub-int v5, v4, v3

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {p2, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 79
    .line 80
    add-int/lit8 p0, p0, 0x1

    .line 81
    .line 82
    .line 83
    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 84
    return-void
.end method

.method private static solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    .line 21
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 27
    move-result v2

    .line 28
    .line 29
    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 33
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    .line 36
    if-lt v2, v1, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 40
    move-result v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 44
    move-result v4

    .line 45
    .line 46
    const/16 v5, 0x8

    .line 47
    .line 48
    const/high16 v6, 0x3f000000    # 0.5f

    .line 49
    .line 50
    if-eq v4, v5, :cond_3

    .line 51
    .line 52
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 53
    const/4 v5, 0x2

    .line 54
    .line 55
    if-ne v4, v5, :cond_1

    .line 56
    .line 57
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 63
    move-result p1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 72
    move-result p1

    .line 73
    .line 74
    :goto_0
    mul-float v3, v0, v6

    .line 75
    int-to-float p1, p1

    .line 76
    mul-float/2addr v3, p1

    .line 77
    float-to-int v3, v3

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_1
    if-nez v4, :cond_2

    .line 81
    .line 82
    sub-int v3, v2, v1

    .line 83
    .line 84
    :cond_2
    :goto_1
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 88
    move-result v3

    .line 89
    .line 90
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 91
    .line 92
    if-lez p1, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 96
    move-result v3

    .line 97
    :cond_3
    sub-int/2addr v2, v1

    .line 98
    sub-int/2addr v2, v3

    .line 99
    int-to-float p1, v2

    .line 100
    mul-float/2addr v0, p1

    .line 101
    add-float/2addr v0, v6

    .line 102
    float-to-int p1, v0

    .line 103
    add-int/2addr v1, p1

    .line 104
    add-int/2addr v3, v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 108
    .line 109
    add-int/lit8 p0, p0, 0x1

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 113
    :cond_4
    return-void
.end method

.method public static solvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    sput v2, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    .line 12
    .line 13
    sput v2, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v4

    .line 25
    move v5, v2

    .line 26
    .line 27
    :goto_0
    if-ge v5, v4, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    .line 43
    move-result v5

    .line 44
    .line 45
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    .line 47
    if-ne v0, v6, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalLeft(I)V

    .line 59
    :goto_1
    move v0, v2

    .line 60
    move v6, v0

    .line 61
    move v7, v6

    .line 62
    .line 63
    :goto_2
    const/high16 v8, 0x3f000000    # 0.5f

    .line 64
    const/4 v9, -0x1

    .line 65
    const/4 v10, 0x1

    .line 66
    .line 67
    if-ge v0, v4, :cond_7

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v11

    .line 72
    .line 73
    check-cast v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 74
    .line 75
    instance-of v12, v11, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 76
    .line 77
    if-eqz v12, :cond_5

    .line 78
    .line 79
    check-cast v11, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    .line 83
    move-result v12

    .line 84
    .line 85
    if-ne v12, v10, :cond_6

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    .line 89
    move-result v6

    .line 90
    .line 91
    if-eq v6, v9, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    .line 95
    move-result v6

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 99
    goto :goto_3

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    .line 103
    move-result v6

    .line 104
    .line 105
    if-eq v6, v9, :cond_3

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 109
    move-result v6

    .line 110
    .line 111
    if-eqz v6, :cond_3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 115
    move-result v6

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    .line 119
    move-result v8

    .line 120
    sub-int/2addr v6, v8

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 124
    goto :goto_3

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 128
    move-result v6

    .line 129
    .line 130
    if-eqz v6, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    .line 134
    move-result v6

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 138
    move-result v9

    .line 139
    int-to-float v9, v9

    .line 140
    mul-float/2addr v6, v9

    .line 141
    add-float/2addr v6, v8

    .line 142
    float-to-int v6, v6

    .line 143
    .line 144
    .line 145
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 146
    :cond_4
    :goto_3
    move v6, v10

    .line 147
    goto :goto_4

    .line 148
    .line 149
    :cond_5
    instance-of v8, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 150
    .line 151
    if-eqz v8, :cond_6

    .line 152
    .line 153
    check-cast v11, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 157
    move-result v8

    .line 158
    .line 159
    if-nez v8, :cond_6

    .line 160
    move v7, v10

    .line 161
    .line 162
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 163
    goto :goto_2

    .line 164
    .line 165
    :cond_7
    if-eqz v6, :cond_9

    .line 166
    move v0, v2

    .line 167
    .line 168
    :goto_5
    if-ge v0, v4, :cond_9

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 175
    .line 176
    instance-of v11, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 177
    .line 178
    if-eqz v11, :cond_8

    .line 179
    .line 180
    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    .line 184
    move-result v11

    .line 185
    .line 186
    if-ne v11, v10, :cond_8

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v6, p1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 190
    .line 191
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 192
    goto :goto_5

    .line 193
    .line 194
    .line 195
    :cond_9
    invoke-static {v2, p0, p1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 196
    .line 197
    if-eqz v7, :cond_b

    .line 198
    move v0, v2

    .line 199
    .line 200
    :goto_6
    if-ge v0, v4, :cond_b

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    move-result-object v6

    .line 205
    .line 206
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 207
    .line 208
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 209
    .line 210
    if-eqz v7, :cond_a

    .line 211
    .line 212
    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 216
    move-result v7

    .line 217
    .line 218
    if-nez v7, :cond_a

    .line 219
    .line 220
    .line 221
    invoke-static {v2, v6, p1, v2, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    .line 222
    .line 223
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 224
    goto :goto_6

    .line 225
    .line 226
    :cond_b
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 227
    .line 228
    if-ne v1, v0, :cond_c

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 232
    move-result v0

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 236
    goto :goto_7

    .line 237
    .line 238
    .line 239
    :cond_c
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalTop(I)V

    .line 240
    :goto_7
    move v0, v2

    .line 241
    move v1, v0

    .line 242
    move v6, v1

    .line 243
    .line 244
    :goto_8
    if-ge v0, v4, :cond_12

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v7

    .line 249
    .line 250
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 251
    .line 252
    instance-of v11, v7, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 253
    .line 254
    if-eqz v11, :cond_10

    .line 255
    .line 256
    check-cast v7, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    .line 260
    move-result v11

    .line 261
    .line 262
    if-nez v11, :cond_11

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    .line 266
    move-result v1

    .line 267
    .line 268
    if-eq v1, v9, :cond_d

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    .line 272
    move-result v1

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 276
    goto :goto_9

    .line 277
    .line 278
    .line 279
    :cond_d
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    .line 280
    move-result v1

    .line 281
    .line 282
    if-eq v1, v9, :cond_e

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 286
    move-result v1

    .line 287
    .line 288
    if-eqz v1, :cond_e

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 292
    move-result v1

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    .line 296
    move-result v11

    .line 297
    sub-int/2addr v1, v11

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 301
    goto :goto_9

    .line 302
    .line 303
    .line 304
    :cond_e
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 305
    move-result v1

    .line 306
    .line 307
    if-eqz v1, :cond_f

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    .line 311
    move-result v1

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 315
    move-result v11

    .line 316
    int-to-float v11, v11

    .line 317
    mul-float/2addr v1, v11

    .line 318
    add-float/2addr v1, v8

    .line 319
    float-to-int v1, v1

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 323
    :cond_f
    :goto_9
    move v1, v10

    .line 324
    goto :goto_a

    .line 325
    .line 326
    :cond_10
    instance-of v11, v7, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 327
    .line 328
    if-eqz v11, :cond_11

    .line 329
    .line 330
    check-cast v7, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 334
    move-result v7

    .line 335
    .line 336
    if-ne v7, v10, :cond_11

    .line 337
    move v6, v10

    .line 338
    .line 339
    :cond_11
    :goto_a
    add-int/lit8 v0, v0, 0x1

    .line 340
    goto :goto_8

    .line 341
    .line 342
    :cond_12
    if-eqz v1, :cond_14

    .line 343
    move v0, v2

    .line 344
    .line 345
    :goto_b
    if-ge v0, v4, :cond_14

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    move-result-object v1

    .line 350
    .line 351
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 352
    .line 353
    instance-of v7, v1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 354
    .line 355
    if-eqz v7, :cond_13

    .line 356
    .line 357
    check-cast v1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    .line 361
    move-result v7

    .line 362
    .line 363
    if-nez v7, :cond_13

    .line 364
    .line 365
    .line 366
    invoke-static {v10, v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 367
    .line 368
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 369
    goto :goto_b

    .line 370
    .line 371
    .line 372
    :cond_14
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 373
    .line 374
    if-eqz v6, :cond_16

    .line 375
    move p0, v2

    .line 376
    .line 377
    :goto_c
    if-ge p0, v4, :cond_16

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    move-result-object v0

    .line 382
    .line 383
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 384
    .line 385
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 386
    .line 387
    if-eqz v1, :cond_15

    .line 388
    .line 389
    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 393
    move-result v1

    .line 394
    .line 395
    if-ne v1, v10, :cond_15

    .line 396
    .line 397
    .line 398
    invoke-static {v2, v0, p1, v10, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    .line 399
    .line 400
    :cond_15
    add-int/lit8 p0, p0, 0x1

    .line 401
    goto :goto_c

    .line 402
    :cond_16
    move p0, v2

    .line 403
    .line 404
    :goto_d
    if-ge p0, v4, :cond_1a

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 408
    move-result-object v0

    .line 409
    .line 410
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 414
    move-result v1

    .line 415
    .line 416
    if-eqz v1, :cond_19

    .line 417
    .line 418
    .line 419
    invoke-static {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 420
    move-result v1

    .line 421
    .line 422
    if-eqz v1, :cond_19

    .line 423
    .line 424
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 425
    .line 426
    sget v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 427
    .line 428
    .line 429
    invoke-static {v2, v0, p1, v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 430
    .line 431
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 432
    .line 433
    if-eqz v1, :cond_18

    .line 434
    move-object v1, v0

    .line 435
    .line 436
    check-cast v1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    .line 440
    move-result v1

    .line 441
    .line 442
    if-nez v1, :cond_17

    .line 443
    .line 444
    .line 445
    invoke-static {v2, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 446
    goto :goto_e

    .line 447
    .line 448
    .line 449
    :cond_17
    invoke-static {v2, v0, p1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 450
    goto :goto_e

    .line 451
    .line 452
    .line 453
    :cond_18
    invoke-static {v2, v0, p1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 454
    .line 455
    .line 456
    invoke-static {v2, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 457
    .line 458
    :cond_19
    :goto_e
    add-int/lit8 p0, p0, 0x1

    .line 459
    goto :goto_d

    .line 460
    :cond_1a
    return-void
.end method

.method private static verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isVerticalSolvingPassDone()Z

    .line 8
    move-result v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    sget v2, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    .line 14
    const/4 v3, 0x1

    .line 15
    add-int/2addr v2, v3

    .line 16
    .line 17
    sput v2, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    .line 18
    .line 19
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    add-int/lit8 v2, p0, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 38
    .line 39
    .line 40
    invoke-direct {v4}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 41
    .line 42
    sget v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v0, v1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 46
    .line 47
    :cond_1
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 61
    move-result v5

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 65
    move-result v6

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 69
    move-result-object v7

    .line 70
    const/4 v8, 0x0

    .line 71
    .line 72
    const/16 v9, 0x8

    .line 73
    const/4 v10, 0x0

    .line 74
    .line 75
    if-eqz v7, :cond_d

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 79
    move-result v7

    .line 80
    .line 81
    if-eqz v7, :cond_d

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v7

    .line 94
    .line 95
    if-eqz v7, :cond_d

    .line 96
    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v7

    .line 100
    .line 101
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 102
    .line 103
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 104
    .line 105
    add-int/lit8 v12, p0, 0x1

    .line 106
    .line 107
    .line 108
    invoke-static {v12, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 109
    move-result v13

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 113
    move-result v14

    .line 114
    .line 115
    if-eqz v14, :cond_2

    .line 116
    .line 117
    if-eqz v13, :cond_2

    .line 118
    .line 119
    new-instance v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 120
    .line 121
    .line 122
    invoke-direct {v14}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 123
    .line 124
    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 125
    .line 126
    .line 127
    invoke-static {v12, v11, v1, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 128
    .line 129
    :cond_2
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 130
    .line 131
    if-ne v7, v14, :cond_3

    .line 132
    .line 133
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 134
    .line 135
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 136
    .line 137
    if-eqz v14, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 141
    move-result v14

    .line 142
    .line 143
    if-nez v14, :cond_4

    .line 144
    .line 145
    :cond_3
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 146
    .line 147
    if-ne v7, v14, :cond_5

    .line 148
    .line 149
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 150
    .line 151
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 152
    .line 153
    if-eqz v14, :cond_5

    .line 154
    .line 155
    .line 156
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 157
    move-result v14

    .line 158
    .line 159
    if-eqz v14, :cond_5

    .line 160
    :cond_4
    move v14, v3

    .line 161
    goto :goto_1

    .line 162
    :cond_5
    move v14, v10

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 166
    move-result-object v15

    .line 167
    .line 168
    move/from16 v16, v3

    .line 169
    .line 170
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 171
    .line 172
    if-ne v15, v3, :cond_8

    .line 173
    .line 174
    if-eqz v13, :cond_6

    .line 175
    goto :goto_2

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 179
    move-result-object v7

    .line 180
    .line 181
    if-ne v7, v3, :cond_9

    .line 182
    .line 183
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 184
    .line 185
    if-ltz v3, :cond_9

    .line 186
    .line 187
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 188
    .line 189
    if-ltz v3, :cond_9

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 193
    move-result v3

    .line 194
    .line 195
    if-eq v3, v9, :cond_7

    .line 196
    .line 197
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 198
    .line 199
    if-nez v3, :cond_9

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 203
    move-result v3

    .line 204
    .line 205
    cmpl-float v3, v3, v8

    .line 206
    .line 207
    if-nez v3, :cond_9

    .line 208
    .line 209
    .line 210
    :cond_7
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 211
    move-result v3

    .line 212
    .line 213
    if-nez v3, :cond_9

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    .line 217
    move-result v3

    .line 218
    .line 219
    if-nez v3, :cond_9

    .line 220
    .line 221
    if-eqz v14, :cond_9

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 225
    move-result v3

    .line 226
    .line 227
    if-nez v3, :cond_9

    .line 228
    .line 229
    .line 230
    invoke-static {v12, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 231
    goto :goto_3

    .line 232
    .line 233
    .line 234
    :cond_8
    :goto_2
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 235
    move-result v3

    .line 236
    .line 237
    if-eqz v3, :cond_a

    .line 238
    .line 239
    :cond_9
    :goto_3
    move/from16 v3, v16

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_a
    iget-object v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 244
    .line 245
    if-ne v7, v3, :cond_b

    .line 246
    .line 247
    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 248
    .line 249
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 250
    .line 251
    if-nez v13, :cond_b

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 255
    move-result v3

    .line 256
    add-int/2addr v3, v5

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 260
    move-result v7

    .line 261
    add-int/2addr v7, v3

    .line 262
    .line 263
    .line 264
    invoke-virtual {v11, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 265
    .line 266
    .line 267
    invoke-static {v12, v11, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 268
    goto :goto_3

    .line 269
    .line 270
    :cond_b
    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 271
    .line 272
    if-ne v7, v13, :cond_c

    .line 273
    .line 274
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 275
    .line 276
    if-nez v3, :cond_c

    .line 277
    .line 278
    .line 279
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 280
    move-result v3

    .line 281
    .line 282
    sub-int v3, v5, v3

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 286
    move-result v7

    .line 287
    .line 288
    sub-int v7, v3, v7

    .line 289
    .line 290
    .line 291
    invoke-virtual {v11, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 292
    .line 293
    .line 294
    invoke-static {v12, v11, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 295
    goto :goto_3

    .line 296
    .line 297
    :cond_c
    if-eqz v14, :cond_9

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 301
    move-result v3

    .line 302
    .line 303
    if-nez v3, :cond_9

    .line 304
    .line 305
    .line 306
    invoke-static {v12, v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 307
    goto :goto_3

    .line 308
    .line 309
    :cond_d
    move/from16 v16, v3

    .line 310
    .line 311
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 312
    .line 313
    if-eqz v2, :cond_e

    .line 314
    return-void

    .line 315
    .line 316
    .line 317
    :cond_e
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 318
    move-result-object v2

    .line 319
    .line 320
    if-eqz v2, :cond_1a

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 324
    move-result v2

    .line 325
    .line 326
    if-eqz v2, :cond_1a

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 330
    move-result-object v2

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 334
    move-result-object v2

    .line 335
    .line 336
    .line 337
    :cond_f
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    move-result v3

    .line 339
    .line 340
    if-eqz v3, :cond_1a

    .line 341
    .line 342
    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    move-result-object v3

    .line 345
    .line 346
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 347
    .line 348
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 349
    .line 350
    add-int/lit8 v5, p0, 0x1

    .line 351
    .line 352
    .line 353
    invoke-static {v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 354
    move-result v7

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 358
    move-result v11

    .line 359
    .line 360
    if-eqz v11, :cond_10

    .line 361
    .line 362
    if-eqz v7, :cond_10

    .line 363
    .line 364
    new-instance v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 365
    .line 366
    .line 367
    invoke-direct {v11}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 368
    .line 369
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 370
    .line 371
    .line 372
    invoke-static {v5, v4, v1, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 373
    .line 374
    :cond_10
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 375
    .line 376
    if-ne v3, v11, :cond_11

    .line 377
    .line 378
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 379
    .line 380
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 381
    .line 382
    if-eqz v11, :cond_11

    .line 383
    .line 384
    .line 385
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 386
    move-result v11

    .line 387
    .line 388
    if-nez v11, :cond_12

    .line 389
    .line 390
    :cond_11
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 391
    .line 392
    if-ne v3, v11, :cond_13

    .line 393
    .line 394
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 395
    .line 396
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 397
    .line 398
    if-eqz v11, :cond_13

    .line 399
    .line 400
    .line 401
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 402
    move-result v11

    .line 403
    .line 404
    if-eqz v11, :cond_13

    .line 405
    .line 406
    :cond_12
    move/from16 v11, v16

    .line 407
    goto :goto_5

    .line 408
    :cond_13
    move v11, v10

    .line 409
    .line 410
    .line 411
    :goto_5
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 412
    move-result-object v12

    .line 413
    .line 414
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 415
    .line 416
    if-ne v12, v13, :cond_16

    .line 417
    .line 418
    if-eqz v7, :cond_14

    .line 419
    goto :goto_6

    .line 420
    .line 421
    .line 422
    :cond_14
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 423
    move-result-object v3

    .line 424
    .line 425
    if-ne v3, v13, :cond_f

    .line 426
    .line 427
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 428
    .line 429
    if-ltz v3, :cond_f

    .line 430
    .line 431
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 432
    .line 433
    if-ltz v3, :cond_f

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 437
    move-result v3

    .line 438
    .line 439
    if-eq v3, v9, :cond_15

    .line 440
    .line 441
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 442
    .line 443
    if-nez v3, :cond_f

    .line 444
    .line 445
    .line 446
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 447
    move-result v3

    .line 448
    .line 449
    cmpl-float v3, v3, v8

    .line 450
    .line 451
    if-nez v3, :cond_f

    .line 452
    .line 453
    .line 454
    :cond_15
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 455
    move-result v3

    .line 456
    .line 457
    if-nez v3, :cond_f

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    .line 461
    move-result v3

    .line 462
    .line 463
    if-nez v3, :cond_f

    .line 464
    .line 465
    if-eqz v11, :cond_f

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 469
    move-result v3

    .line 470
    .line 471
    if-nez v3, :cond_f

    .line 472
    .line 473
    .line 474
    invoke-static {v5, v0, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 475
    .line 476
    goto/16 :goto_4

    .line 477
    .line 478
    .line 479
    :cond_16
    :goto_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 480
    move-result v7

    .line 481
    .line 482
    if-eqz v7, :cond_17

    .line 483
    .line 484
    goto/16 :goto_4

    .line 485
    .line 486
    :cond_17
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 487
    .line 488
    if-ne v3, v7, :cond_18

    .line 489
    .line 490
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 491
    .line 492
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 493
    .line 494
    if-nez v12, :cond_18

    .line 495
    .line 496
    .line 497
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 498
    move-result v3

    .line 499
    add-int/2addr v3, v6

    .line 500
    .line 501
    .line 502
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 503
    move-result v7

    .line 504
    add-int/2addr v7, v3

    .line 505
    .line 506
    .line 507
    invoke-virtual {v4, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 508
    .line 509
    .line 510
    invoke-static {v5, v4, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 511
    .line 512
    goto/16 :goto_4

    .line 513
    .line 514
    :cond_18
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 515
    .line 516
    if-ne v3, v12, :cond_19

    .line 517
    .line 518
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 519
    .line 520
    if-nez v3, :cond_19

    .line 521
    .line 522
    .line 523
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 524
    move-result v3

    .line 525
    .line 526
    sub-int v3, v6, v3

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 530
    move-result v7

    .line 531
    .line 532
    sub-int v7, v3, v7

    .line 533
    .line 534
    .line 535
    invoke-virtual {v4, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 536
    .line 537
    .line 538
    invoke-static {v5, v4, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 539
    .line 540
    goto/16 :goto_4

    .line 541
    .line 542
    :cond_19
    if-eqz v11, :cond_f

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 546
    move-result v3

    .line 547
    .line 548
    if-nez v3, :cond_f

    .line 549
    .line 550
    .line 551
    invoke-static {v5, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 552
    .line 553
    goto/16 :goto_4

    .line 554
    .line 555
    :cond_1a
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 559
    move-result-object v2

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 563
    move-result-object v3

    .line 564
    .line 565
    if-eqz v3, :cond_1f

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 569
    move-result v3

    .line 570
    .line 571
    if-eqz v3, :cond_1f

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 575
    move-result v3

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    .line 579
    move-result-object v2

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 583
    move-result-object v2

    .line 584
    .line 585
    .line 586
    :cond_1b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 587
    move-result v4

    .line 588
    .line 589
    if-eqz v4, :cond_1f

    .line 590
    .line 591
    .line 592
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 593
    move-result-object v4

    .line 594
    .line 595
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 596
    .line 597
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 598
    .line 599
    add-int/lit8 v6, p0, 0x1

    .line 600
    .line 601
    .line 602
    invoke-static {v6, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 603
    move-result v7

    .line 604
    .line 605
    .line 606
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 607
    move-result v8

    .line 608
    .line 609
    if-eqz v8, :cond_1c

    .line 610
    .line 611
    if-eqz v7, :cond_1c

    .line 612
    .line 613
    new-instance v8, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 614
    .line 615
    .line 616
    invoke-direct {v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 617
    .line 618
    sget v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 619
    .line 620
    .line 621
    invoke-static {v6, v5, v1, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 622
    .line 623
    .line 624
    :cond_1c
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 625
    move-result-object v8

    .line 626
    .line 627
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 628
    .line 629
    if-ne v8, v9, :cond_1d

    .line 630
    .line 631
    if-eqz v7, :cond_1b

    .line 632
    .line 633
    .line 634
    :cond_1d
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 635
    move-result v7

    .line 636
    .line 637
    if-eqz v7, :cond_1e

    .line 638
    goto :goto_7

    .line 639
    .line 640
    :cond_1e
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 641
    .line 642
    if-ne v4, v7, :cond_1b

    .line 643
    .line 644
    .line 645
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 646
    move-result v4

    .line 647
    add-int/2addr v4, v3

    .line 648
    .line 649
    .line 650
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalBaseline(I)V

    .line 651
    .line 652
    .line 653
    :try_start_0
    invoke-static {v6, v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    goto :goto_7

    .line 655
    :catchall_0
    move-exception v0

    .line 656
    throw v0

    .line 657
    .line 658
    .line 659
    :cond_1f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->markVerticalSolvingPassDone()V

    .line 660
    return-void
.end method
