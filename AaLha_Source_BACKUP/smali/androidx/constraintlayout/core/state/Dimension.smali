.class public Landroidx/constraintlayout/core/state/Dimension;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final RATIO_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatioString:Ljava/lang/String;

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->RATIO_DIMENSION:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_CONTENT:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    const v1, 0x7fffffff

    .line 4
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    .line 8
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_CONTENT:I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    const v1, 0x7fffffff

    .line 13
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    .line 15
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    return-void
.end method

.method public static Fixed(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->fixed(I)Landroidx/constraintlayout/core/state/Dimension;

    return-object v0
.end method

.method public static Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    .line 3
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    return-object v0
.end method

.method public static Parent()Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    .line 3
    .line 4
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public static Percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    .line 3
    .line 4
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/state/Dimension;->percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;

    .line 11
    return-object v0
.end method

.method public static Ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    .line 3
    .line 4
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->RATIO_DIMENSION:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    .line 11
    return-object v0
.end method

.method public static Spread()Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    .line 3
    .line 4
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public static Suggested(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(I)Landroidx/constraintlayout/core/state/Dimension;

    return-object v0
.end method

.method public static Suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    .line 3
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    return-object v0
.end method

.method public static Wrap()Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    .line 3
    .line 4
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const p1, 0x7fffffff

    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-nez p3, :cond_8

    .line 16
    .line 17
    iget-boolean p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 18
    .line 19
    if-eqz p3, :cond_3

    .line 20
    .line 21
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 27
    .line 28
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 29
    .line 30
    if-ne p1, p3, :cond_1

    .line 31
    move v0, v1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    .line 35
    .line 36
    if-ne p1, p3, :cond_2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v2

    .line 39
    .line 40
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    .line 41
    .line 42
    iget p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 43
    .line 44
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0, p1, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 48
    return-void

    .line 49
    .line 50
    :cond_3
    iget p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    .line 51
    .line 52
    if-lez p3, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 56
    .line 57
    :cond_4
    iget p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 58
    .line 59
    if-ge p3, p1, :cond_5

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMaxWidth(I)V

    .line 63
    .line 64
    :cond_5
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 65
    .line 66
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 67
    .line 68
    if-ne p1, p3, :cond_6

    .line 69
    .line 70
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 74
    return-void

    .line 75
    .line 76
    :cond_6
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 77
    .line 78
    if-ne p1, p3, :cond_7

    .line 79
    .line 80
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 84
    return-void

    .line 85
    .line 86
    :cond_7
    if-nez p1, :cond_10

    .line 87
    .line 88
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 92
    .line 93
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 97
    return-void

    .line 98
    .line 99
    :cond_8
    iget-boolean p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 100
    .line 101
    if-eqz p3, :cond_b

    .line 102
    .line 103
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 107
    .line 108
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 109
    .line 110
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 111
    .line 112
    if-ne p1, p3, :cond_9

    .line 113
    move v0, v1

    .line 114
    goto :goto_1

    .line 115
    .line 116
    :cond_9
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    .line 117
    .line 118
    if-ne p1, p3, :cond_a

    .line 119
    goto :goto_1

    .line 120
    :cond_a
    move v0, v2

    .line 121
    .line 122
    :goto_1
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    .line 123
    .line 124
    iget p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 125
    .line 126
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0, p1, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 130
    return-void

    .line 131
    .line 132
    :cond_b
    iget p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    .line 133
    .line 134
    if-lez p3, :cond_c

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 138
    .line 139
    :cond_c
    iget p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 140
    .line 141
    if-ge p3, p1, :cond_d

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMaxHeight(I)V

    .line 145
    .line 146
    :cond_d
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 147
    .line 148
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 149
    .line 150
    if-ne p1, p3, :cond_e

    .line 151
    .line 152
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 156
    return-void

    .line 157
    .line 158
    :cond_e
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 159
    .line 160
    if-ne p1, p3, :cond_f

    .line 161
    .line 162
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 166
    return-void

    .line 167
    .line 168
    :cond_f
    if-nez p1, :cond_10

    .line 169
    .line 170
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 174
    .line 175
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 179
    :cond_10
    return-void
.end method

.method public equalsFixedValue(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public fixed(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 6
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    return-object p0
.end method

.method public fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public getValue()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 3
    return v0
.end method

.method public max(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    if-ltz v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    :cond_0
    return-object p0
.end method

.method public max(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    .line 3
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    if-eqz p1, :cond_0

    .line 4
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    const p1, 0x7fffffff

    .line 5
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    :cond_0
    return-object p0
.end method

.method public min(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 0

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    :cond_0
    return-object p0
.end method

.method public min(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    .line 2
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 3
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    :cond_0
    return-object p0
.end method

.method public percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;
    .locals 0

    .line 1
    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    .line 3
    return-object p0
.end method

.method public ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setValue(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 7
    .line 8
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 9
    return-void
.end method

.method public suggested(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    if-ltz p1, :cond_0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    :cond_0
    return-object p0
.end method

.method public suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 0

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    return-object p0
.end method
