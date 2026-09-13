.class public Landroidx/constraintlayout/core/widgets/Guideline;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field protected guidelineUseRtl:Z

.field private mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 4
    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 23
    .line 24
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 39
    array-length v1, v1

    .line 40
    .line 41
    :goto_0
    if-ge v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 46
    .line 47
    aput-object v3, v2, v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    .line 32
    aget-object v2, v2, v4

    .line 33
    .line 34
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    move v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v4

    .line 40
    .line 41
    :goto_0
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 62
    .line 63
    aget-object p2, p2, v3

    .line 64
    .line 65
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 66
    .line 67
    if-ne p2, v2, :cond_2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v3, v4

    .line 70
    :goto_1
    move v2, v3

    .line 71
    .line 72
    :cond_3
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    .line 73
    const/4 v3, -0x1

    .line 74
    const/4 v5, 0x5

    .line 75
    .line 76
    if-eqz p2, :cond_6

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    .line 82
    move-result p2

    .line 83
    .line 84
    if-eqz p2, :cond_6

    .line 85
    .line 86
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 96
    move-result v6

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 100
    .line 101
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 102
    .line 103
    if-eq v6, v3, :cond_4

    .line 104
    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_4
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 116
    .line 117
    if-eq v6, v3, :cond_5

    .line 118
    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 134
    .line 135
    :cond_5
    :goto_2
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    .line 136
    return-void

    .line 137
    .line 138
    :cond_6
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 139
    .line 140
    const/16 v6, 0x8

    .line 141
    .line 142
    if-eq p2, v3, :cond_7

    .line 143
    .line 144
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2, v0, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 158
    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 167
    return-void

    .line 168
    .line 169
    :cond_7
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 170
    .line 171
    if-eq p2, v3, :cond_8

    .line 172
    .line 173
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 177
    move-result-object p2

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 181
    move-result-object v1

    .line 182
    .line 183
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 184
    neg-int v3, v3

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p2, v1, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 188
    .line 189
    if-eqz v2, :cond_9

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 200
    return-void

    .line 201
    .line 202
    :cond_8
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 203
    .line 204
    const/high16 v0, -0x40800000    # -1.0f

    .line 205
    .line 206
    cmpl-float p2, p2, v0

    .line 207
    .line 208
    if-eqz p2, :cond_9

    .line 209
    .line 210
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 214
    move-result-object p2

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 221
    .line 222
    .line 223
    invoke-static {p1, p2, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 224
    move-result-object p2

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 228
    :cond_9
    :goto_3
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 6
    .line 7
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 8
    .line 9
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 10
    .line 11
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 12
    .line 13
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 14
    .line 15
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 16
    .line 17
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 18
    .line 19
    iget-boolean p2, p1, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    .line 20
    .line 21
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    .line 22
    .line 23
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    .line 27
    return-void
.end method

.method public cyclePosition()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativePercentPosition()V

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 12
    .line 13
    const/high16 v2, -0x40800000    # -1.0f

    .line 14
    .line 15
    cmpl-float v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativeEndPosition()V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativeBeginPosition()V

    .line 29
    :cond_2
    return-void
.end method

.method public getAnchor()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .locals 2

    .line 2
    sget-object v0, Landroidx/constraintlayout/core/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 5
    :cond_1
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 3
    return v0
.end method

.method public getRelativeBegin()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 3
    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    .line 19
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    const/4 v0, 0x2

    .line 23
    return v0

    .line 24
    :cond_2
    return v1
.end method

.method public getRelativeEnd()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 3
    return v0
.end method

.method public getRelativePercent()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 3
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "Guideline"

    .line 3
    return-object v0
.end method

.method public inferRelativeBeginPosition()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideBegin(I)V

    .line 16
    return-void
.end method

.method public inferRelativeEndPosition()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    .line 15
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 29
    move-result v1

    .line 30
    sub-int/2addr v0, v1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideEnd(I)V

    .line 34
    return-void
.end method

.method public inferRelativePercentPosition()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v0, v1

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    div-float/2addr v0, v1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    .line 38
    return-void
.end method

.method public isPercent()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public isResolvedHorizontally()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    .line 3
    return v0
.end method

.method public isResolvedVertically()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    .line 3
    return v0
.end method

.method public setFinalValue(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    .line 9
    return-void
.end method

.method public setGuideBegin(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    .line 7
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 8
    .line 9
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 12
    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    .line 7
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 10
    .line 11
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 12
    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 4
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    goto :goto_2

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 36
    array-length p1, p1

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    :goto_1
    if-ge v0, p1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 44
    .line 45
    aput-object v2, v1, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_2
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    .line 13
    move-result p1

    .line 14
    .line 15
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 33
    move-result p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 40
    return-void

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 54
    move-result p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 61
    return-void
.end method
