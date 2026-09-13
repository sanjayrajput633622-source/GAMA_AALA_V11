.class public Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_CHAIN_NEW:I = 0x3

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 17
    .line 18
    const/high16 v1, 0x3f000000    # 0.5f

    .line 19
    .line 20
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 21
    .line 22
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 23
    .line 24
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 25
    .line 26
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 27
    .line 28
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 29
    .line 30
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 34
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 36
    const/4 v2, 0x2

    .line 37
    .line 38
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 39
    .line 40
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 41
    .line 42
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 43
    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 45
    .line 46
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 57
    .line 58
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 61
    .line 62
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 63
    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 3
    return p0
.end method

.method public static synthetic access$100(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 3
    return p0
.end method

.method public static synthetic access$1000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 3
    return p0
.end method

.method public static synthetic access$1100(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 3
    return p0
.end method

.method public static synthetic access$1200(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 3
    return p0
.end method

.method public static synthetic access$1300(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 3
    return p0
.end method

.method public static synthetic access$1400(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 3
    return p0
.end method

.method public static synthetic access$1500(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 3
    return p0
.end method

.method public static synthetic access$1600(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 3
    return p0
.end method

.method public static synthetic access$1700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 3
    return p0
.end method

.method public static synthetic access$1800(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 3
    return p0
.end method

.method public static synthetic access$1900(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 3
    return p0
.end method

.method public static synthetic access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 3
    return p0
.end method

.method public static synthetic access$800(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 3
    return p0
.end method

.method public static synthetic access$900(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 3
    return p0
.end method

.method private createAlignedConstraints(Z)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 3
    .line 4
    if-eqz v0, :cond_15

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 7
    .line 8
    if-eqz v0, :cond_15

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_9

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    .line 18
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 19
    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    .line 24
    aget-object v2, v2, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 33
    .line 34
    aget v2, v1, v0

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    aget v1, v1, v3

    .line 38
    .line 39
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 40
    const/4 v5, 0x0

    .line 41
    move v6, v0

    .line 42
    .line 43
    :goto_1
    const/16 v7, 0x8

    .line 44
    .line 45
    if-ge v6, v2, :cond_8

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    sub-int v4, v2, v6

    .line 50
    sub-int/2addr v4, v3

    .line 51
    .line 52
    const/high16 v8, 0x3f800000    # 1.0f

    .line 53
    .line 54
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 55
    sub-float/2addr v8, v9

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v8, v4

    .line 58
    move v4, v6

    .line 59
    .line 60
    :goto_2
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 61
    .line 62
    aget-object v4, v9, v4

    .line 63
    .line 64
    if-eqz v4, :cond_7

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 68
    move-result v9

    .line 69
    .line 70
    if-ne v9, v7, :cond_3

    .line 71
    goto :goto_3

    .line 72
    .line 73
    :cond_3
    if-nez v6, :cond_4

    .line 74
    .line 75
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 76
    .line 77
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 81
    move-result v10

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 85
    .line 86
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 93
    .line 94
    :cond_4
    add-int/lit8 v7, v2, -0x1

    .line 95
    .line 96
    if-ne v6, v7, :cond_5

    .line 97
    .line 98
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 99
    .line 100
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 104
    move-result v10

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 108
    .line 109
    :cond_5
    if-lez v6, :cond_6

    .line 110
    .line 111
    if-eqz v5, :cond_6

    .line 112
    .line 113
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 114
    .line 115
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 116
    .line 117
    iget v10, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 121
    .line 122
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 123
    .line 124
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v7, v9, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 128
    :cond_6
    move-object v5, v4

    .line 129
    .line 130
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 131
    move v4, v8

    .line 132
    goto :goto_1

    .line 133
    :cond_8
    move p1, v0

    .line 134
    .line 135
    :goto_4
    if-ge p1, v1, :cond_e

    .line 136
    .line 137
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 138
    .line 139
    aget-object v4, v4, p1

    .line 140
    .line 141
    if-eqz v4, :cond_d

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 145
    move-result v6

    .line 146
    .line 147
    if-ne v6, v7, :cond_9

    .line 148
    goto :goto_5

    .line 149
    .line 150
    :cond_9
    if-nez p1, :cond_a

    .line 151
    .line 152
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 153
    .line 154
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 158
    move-result v9

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 162
    .line 163
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 167
    .line 168
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 172
    .line 173
    :cond_a
    add-int/lit8 v6, v1, -0x1

    .line 174
    .line 175
    if-ne p1, v6, :cond_b

    .line 176
    .line 177
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 178
    .line 179
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 183
    move-result v9

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 187
    .line 188
    :cond_b
    if-lez p1, :cond_c

    .line 189
    .line 190
    if-eqz v5, :cond_c

    .line 191
    .line 192
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 193
    .line 194
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 195
    .line 196
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 200
    .line 201
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 202
    .line 203
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v6, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 207
    :cond_c
    move-object v5, v4

    .line 208
    .line 209
    :cond_d
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 210
    goto :goto_4

    .line 211
    :cond_e
    move p1, v0

    .line 212
    .line 213
    :goto_6
    if-ge p1, v2, :cond_15

    .line 214
    move v4, v0

    .line 215
    .line 216
    :goto_7
    if-ge v4, v1, :cond_14

    .line 217
    .line 218
    mul-int v5, v4, v2

    .line 219
    add-int/2addr v5, p1

    .line 220
    .line 221
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 222
    .line 223
    if-ne v6, v3, :cond_f

    .line 224
    .line 225
    mul-int v5, p1, v1

    .line 226
    add-int/2addr v5, v4

    .line 227
    .line 228
    :cond_f
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 229
    array-length v8, v6

    .line 230
    .line 231
    if-lt v5, v8, :cond_10

    .line 232
    goto :goto_8

    .line 233
    .line 234
    :cond_10
    aget-object v5, v6, v5

    .line 235
    .line 236
    if-eqz v5, :cond_13

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 240
    move-result v6

    .line 241
    .line 242
    if-ne v6, v7, :cond_11

    .line 243
    goto :goto_8

    .line 244
    .line 245
    :cond_11
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 246
    .line 247
    aget-object v6, v6, p1

    .line 248
    .line 249
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 250
    .line 251
    aget-object v8, v8, v4

    .line 252
    .line 253
    if-eq v5, v6, :cond_12

    .line 254
    .line 255
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 256
    .line 257
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v9, v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 261
    .line 262
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 263
    .line 264
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v9, v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 268
    .line 269
    :cond_12
    if-eq v5, v8, :cond_13

    .line 270
    .line 271
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 272
    .line 273
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v6, v9, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 277
    .line 278
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 279
    .line 280
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v6, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 284
    .line 285
    :cond_13
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 286
    goto :goto_7

    .line 287
    .line 288
    :cond_14
    add-int/lit8 p1, p1, 0x1

    .line 289
    goto :goto_6

    .line 290
    :cond_15
    :goto_9
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    .line 12
    if-ne v1, v2, :cond_5

    .line 13
    .line 14
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-ne v1, v0, :cond_3

    .line 22
    .line 23
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v0, p2

    .line 26
    float-to-int v8, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 30
    move-result p2

    .line 31
    .line 32
    if-eq v8, p2, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 43
    move-result v6

    .line 44
    .line 45
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    move-object v3, p0

    .line 47
    move-object v4, p1

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 51
    :cond_2
    return v8

    .line 52
    :cond_3
    move-object v4, p1

    .line 53
    .line 54
    if-ne v1, v2, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_4
    const/4 p1, 0x3

    .line 61
    .line 62
    if-ne v1, p1, :cond_6

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    .line 69
    iget p2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 70
    mul-float/2addr p1, p2

    .line 71
    .line 72
    const/high16 p2, 0x3f000000    # 0.5f

    .line 73
    add-float/2addr p1, p2

    .line 74
    float-to-int p1, p1

    .line 75
    return p1

    .line 76
    :cond_5
    move-object v4, p1

    .line 77
    .line 78
    .line 79
    :cond_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    .line 12
    if-ne v1, v2, :cond_5

    .line 13
    .line 14
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-ne v1, v0, :cond_3

    .line 22
    .line 23
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v0, p2

    .line 26
    float-to-int v6, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 30
    move-result p2

    .line 31
    .line 32
    if-eq v6, p2, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 36
    .line 37
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 41
    move-result-object v7

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 45
    move-result v8

    .line 46
    move-object v3, p0

    .line 47
    move-object v4, p1

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 51
    :cond_2
    return v6

    .line 52
    :cond_3
    move-object v4, p1

    .line 53
    .line 54
    if-ne v1, v2, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_4
    const/4 p1, 0x3

    .line 61
    .line 62
    if-ne v1, p1, :cond_6

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    .line 69
    iget p2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 70
    mul-float/2addr p1, p2

    .line 71
    .line 72
    const/high16 p2, 0x3f000000    # 0.5f

    .line 73
    add-float/2addr p1, p2

    .line 74
    float-to-int p1, p1

    .line 75
    return p1

    .line 76
    :cond_5
    move-object v4, p1

    .line 77
    .line 78
    .line 79
    :cond_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method private measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p3, :cond_4

    .line 4
    .line 5
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 6
    .line 7
    if-gtz v1, :cond_3

    .line 8
    move v1, v0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    .line 12
    :goto_0
    if-ge v2, p2, :cond_3

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 17
    add-int/2addr v3, v4

    .line 18
    .line 19
    :cond_0
    aget-object v4, p1, v2

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0, v4, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 26
    move-result v4

    .line 27
    add-int/2addr v3, v4

    .line 28
    .line 29
    if-le v3, p4, :cond_2

    .line 30
    goto :goto_2

    .line 31
    .line 32
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    :goto_2
    move v2, v1

    .line 37
    move v1, v0

    .line 38
    goto :goto_6

    .line 39
    .line 40
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 41
    .line 42
    if-gtz v1, :cond_8

    .line 43
    move v1, v0

    .line 44
    move v2, v1

    .line 45
    move v3, v2

    .line 46
    .line 47
    :goto_3
    if-ge v2, p2, :cond_8

    .line 48
    .line 49
    if-lez v2, :cond_5

    .line 50
    .line 51
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 52
    add-int/2addr v3, v4

    .line 53
    .line 54
    :cond_5
    aget-object v4, p1, v2

    .line 55
    .line 56
    if-nez v4, :cond_6

    .line 57
    goto :goto_4

    .line 58
    .line 59
    .line 60
    :cond_6
    invoke-direct {p0, v4, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 61
    move-result v4

    .line 62
    add-int/2addr v3, v4

    .line 63
    .line 64
    if-le v3, p4, :cond_7

    .line 65
    goto :goto_5

    .line 66
    .line 67
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_8
    :goto_5
    move v2, v0

    .line 72
    .line 73
    :goto_6
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 74
    .line 75
    if-nez v3, :cond_9

    .line 76
    const/4 v3, 0x2

    .line 77
    .line 78
    new-array v3, v3, [I

    .line 79
    .line 80
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 81
    :cond_9
    const/4 v3, 0x1

    .line 82
    .line 83
    if-nez v1, :cond_a

    .line 84
    .line 85
    if-eq p3, v3, :cond_b

    .line 86
    .line 87
    :cond_a
    if-nez v2, :cond_c

    .line 88
    .line 89
    if-nez p3, :cond_c

    .line 90
    :cond_b
    move v4, v3

    .line 91
    goto :goto_7

    .line 92
    :cond_c
    move v4, v0

    .line 93
    .line 94
    :goto_7
    if-nez v4, :cond_22

    .line 95
    .line 96
    if-nez p3, :cond_d

    .line 97
    int-to-float v1, p2

    .line 98
    int-to-float v5, v2

    .line 99
    div-float/2addr v1, v5

    .line 100
    float-to-double v5, v1

    .line 101
    .line 102
    .line 103
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 104
    move-result-wide v5

    .line 105
    double-to-int v1, v5

    .line 106
    goto :goto_8

    .line 107
    :cond_d
    int-to-float v2, p2

    .line 108
    int-to-float v5, v1

    .line 109
    div-float/2addr v2, v5

    .line 110
    float-to-double v5, v2

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 114
    move-result-wide v5

    .line 115
    double-to-int v2, v5

    .line 116
    .line 117
    :goto_8
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 118
    const/4 v6, 0x0

    .line 119
    .line 120
    if-eqz v5, :cond_f

    .line 121
    array-length v7, v5

    .line 122
    .line 123
    if-ge v7, v2, :cond_e

    .line 124
    goto :goto_9

    .line 125
    .line 126
    .line 127
    :cond_e
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    goto :goto_a

    .line 129
    .line 130
    :cond_f
    :goto_9
    new-array v5, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 131
    .line 132
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 133
    .line 134
    :goto_a
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 135
    .line 136
    if-eqz v5, :cond_11

    .line 137
    array-length v7, v5

    .line 138
    .line 139
    if-ge v7, v1, :cond_10

    .line 140
    goto :goto_b

    .line 141
    .line 142
    .line 143
    :cond_10
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    goto :goto_c

    .line 145
    .line 146
    :cond_11
    :goto_b
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 147
    .line 148
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 149
    :goto_c
    move v5, v0

    .line 150
    .line 151
    :goto_d
    if-ge v5, v2, :cond_1a

    .line 152
    move v6, v0

    .line 153
    .line 154
    :goto_e
    if-ge v6, v1, :cond_19

    .line 155
    .line 156
    mul-int v7, v6, v2

    .line 157
    add-int/2addr v7, v5

    .line 158
    .line 159
    if-ne p3, v3, :cond_12

    .line 160
    .line 161
    mul-int v7, v5, v1

    .line 162
    add-int/2addr v7, v6

    .line 163
    :cond_12
    array-length v8, p1

    .line 164
    .line 165
    if-lt v7, v8, :cond_13

    .line 166
    goto :goto_f

    .line 167
    .line 168
    :cond_13
    aget-object v7, p1, v7

    .line 169
    .line 170
    if-nez v7, :cond_14

    .line 171
    goto :goto_f

    .line 172
    .line 173
    .line 174
    :cond_14
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 175
    move-result v8

    .line 176
    .line 177
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 178
    .line 179
    aget-object v9, v9, v5

    .line 180
    .line 181
    if-eqz v9, :cond_15

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 185
    move-result v9

    .line 186
    .line 187
    if-ge v9, v8, :cond_16

    .line 188
    .line 189
    :cond_15
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 190
    .line 191
    aput-object v7, v8, v5

    .line 192
    .line 193
    .line 194
    :cond_16
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 195
    move-result v8

    .line 196
    .line 197
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 198
    .line 199
    aget-object v9, v9, v6

    .line 200
    .line 201
    if-eqz v9, :cond_17

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 205
    move-result v9

    .line 206
    .line 207
    if-ge v9, v8, :cond_18

    .line 208
    .line 209
    :cond_17
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 210
    .line 211
    aput-object v7, v8, v6

    .line 212
    .line 213
    :cond_18
    :goto_f
    add-int/lit8 v6, v6, 0x1

    .line 214
    goto :goto_e

    .line 215
    .line 216
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 217
    goto :goto_d

    .line 218
    :cond_1a
    move v5, v0

    .line 219
    move v6, v5

    .line 220
    .line 221
    :goto_10
    if-ge v5, v2, :cond_1d

    .line 222
    .line 223
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 224
    .line 225
    aget-object v7, v7, v5

    .line 226
    .line 227
    if-eqz v7, :cond_1c

    .line 228
    .line 229
    if-lez v5, :cond_1b

    .line 230
    .line 231
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 232
    add-int/2addr v6, v8

    .line 233
    .line 234
    .line 235
    :cond_1b
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 236
    move-result v7

    .line 237
    add-int/2addr v6, v7

    .line 238
    .line 239
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    .line 240
    goto :goto_10

    .line 241
    :cond_1d
    move v5, v0

    .line 242
    move v7, v5

    .line 243
    .line 244
    :goto_11
    if-ge v5, v1, :cond_20

    .line 245
    .line 246
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 247
    .line 248
    aget-object v8, v8, v5

    .line 249
    .line 250
    if-eqz v8, :cond_1f

    .line 251
    .line 252
    if-lez v5, :cond_1e

    .line 253
    .line 254
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 255
    add-int/2addr v7, v9

    .line 256
    .line 257
    .line 258
    :cond_1e
    invoke-direct {p0, v8, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 259
    move-result v8

    .line 260
    add-int/2addr v7, v8

    .line 261
    .line 262
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    .line 263
    goto :goto_11

    .line 264
    .line 265
    :cond_20
    aput v6, p5, v0

    .line 266
    .line 267
    aput v7, p5, v3

    .line 268
    .line 269
    if-nez p3, :cond_21

    .line 270
    .line 271
    if-le v6, p4, :cond_b

    .line 272
    .line 273
    if-le v2, v3, :cond_b

    .line 274
    .line 275
    add-int/lit8 v2, v2, -0x1

    .line 276
    .line 277
    goto/16 :goto_7

    .line 278
    .line 279
    :cond_21
    if-le v7, p4, :cond_b

    .line 280
    .line 281
    if-le v1, v3, :cond_b

    .line 282
    .line 283
    add-int/lit8 v1, v1, -0x1

    .line 284
    .line 285
    goto/16 :goto_7

    .line 286
    .line 287
    :cond_22
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 288
    .line 289
    aput v2, p1, v0

    .line 290
    .line 291
    aput v1, p1, v3

    .line 292
    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v8, p2

    .line 5
    .line 6
    if-nez v8, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 15
    .line 16
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    .line 20
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    .line 22
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    move/from16 v2, p3

    .line 25
    .line 26
    move/from16 v7, p4

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 30
    .line 31
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    if-nez p3, :cond_8

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    .line 41
    :goto_0
    if-ge v9, v8, :cond_7

    .line 42
    .line 43
    aget-object v10, p1, v9

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v10, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 47
    move-result v13

    .line 48
    .line 49
    .line 50
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 54
    .line 55
    if-ne v4, v5, :cond_1

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    :cond_1
    move v14, v2

    .line 59
    .line 60
    if-eq v3, v7, :cond_2

    .line 61
    .line 62
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 63
    add-int/2addr v2, v3

    .line 64
    add-int/2addr v2, v13

    .line 65
    .line 66
    if-le v2, v7, :cond_3

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    const/4 v2, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 v2, 0x0

    .line 76
    .line 77
    :goto_1
    if-nez v2, :cond_4

    .line 78
    .line 79
    if-lez v9, :cond_4

    .line 80
    .line 81
    iget v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 82
    .line 83
    if-lez v4, :cond_4

    .line 84
    .line 85
    rem-int v4, v9, v4

    .line 86
    .line 87
    if-nez v4, :cond_4

    .line 88
    const/4 v2, 0x1

    .line 89
    .line 90
    :cond_4
    if-eqz v2, :cond_6

    .line 91
    .line 92
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 93
    .line 94
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    .line 96
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 97
    .line 98
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 99
    .line 100
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 101
    .line 102
    move/from16 v2, p3

    .line 103
    .line 104
    .line 105
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 109
    .line 110
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_5
    move v3, v13

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_6
    if-lez v9, :cond_5

    .line 118
    .line 119
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 120
    add-int/2addr v2, v13

    .line 121
    add-int/2addr v3, v2

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 125
    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 127
    move v2, v14

    .line 128
    goto :goto_0

    .line 129
    :cond_7
    move-object v15, v1

    .line 130
    .line 131
    goto/16 :goto_6

    .line 132
    :cond_8
    const/4 v2, 0x0

    .line 133
    const/4 v3, 0x0

    .line 134
    const/4 v9, 0x0

    .line 135
    .line 136
    :goto_3
    if-ge v9, v8, :cond_7

    .line 137
    .line 138
    aget-object v10, p1, v9

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v10, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 142
    move-result v13

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    move-result-object v4

    .line 147
    .line 148
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 149
    .line 150
    if-ne v4, v5, :cond_9

    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    :cond_9
    move v14, v2

    .line 154
    .line 155
    if-eq v3, v7, :cond_a

    .line 156
    .line 157
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 158
    add-int/2addr v2, v3

    .line 159
    add-int/2addr v2, v13

    .line 160
    .line 161
    if-le v2, v7, :cond_b

    .line 162
    .line 163
    .line 164
    :cond_a
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 165
    move-result-object v2

    .line 166
    .line 167
    if-eqz v2, :cond_b

    .line 168
    const/4 v2, 0x1

    .line 169
    goto :goto_4

    .line 170
    :cond_b
    const/4 v2, 0x0

    .line 171
    .line 172
    :goto_4
    if-nez v2, :cond_c

    .line 173
    .line 174
    if-lez v9, :cond_c

    .line 175
    .line 176
    iget v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 177
    .line 178
    if-lez v4, :cond_c

    .line 179
    .line 180
    rem-int v4, v9, v4

    .line 181
    .line 182
    if-nez v4, :cond_c

    .line 183
    const/4 v2, 0x1

    .line 184
    .line 185
    :cond_c
    if-eqz v2, :cond_e

    .line 186
    .line 187
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 188
    .line 189
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 190
    .line 191
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    .line 193
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 194
    .line 195
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 196
    .line 197
    move/from16 v2, p3

    .line 198
    .line 199
    .line 200
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 201
    move-object v15, v1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 205
    .line 206
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_d
    move v3, v13

    .line 211
    goto :goto_5

    .line 212
    :cond_e
    move-object v15, v1

    .line 213
    .line 214
    if-lez v9, :cond_d

    .line 215
    .line 216
    iget v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 217
    add-int/2addr v1, v13

    .line 218
    add-int/2addr v3, v1

    .line 219
    .line 220
    .line 221
    :goto_5
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 222
    .line 223
    add-int/lit8 v9, v9, 0x1

    .line 224
    .line 225
    move/from16 v7, p4

    .line 226
    move v2, v14

    .line 227
    move-object v1, v15

    .line 228
    goto :goto_3

    .line 229
    .line 230
    :goto_6
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 234
    move-result v13

    .line 235
    .line 236
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 237
    .line 238
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 239
    .line 240
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 241
    .line 242
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 246
    move-result v5

    .line 247
    .line 248
    .line 249
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 250
    move-result v6

    .line 251
    .line 252
    .line 253
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 254
    move-result v7

    .line 255
    .line 256
    .line 257
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 258
    move-result v8

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 262
    move-result-object v9

    .line 263
    .line 264
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 265
    .line 266
    if-eq v9, v10, :cond_10

    .line 267
    .line 268
    .line 269
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 270
    move-result-object v9

    .line 271
    .line 272
    if-ne v9, v10, :cond_f

    .line 273
    goto :goto_7

    .line 274
    :cond_f
    const/4 v9, 0x0

    .line 275
    goto :goto_8

    .line 276
    :cond_10
    :goto_7
    const/4 v9, 0x1

    .line 277
    .line 278
    :goto_8
    if-lez v2, :cond_12

    .line 279
    .line 280
    if-eqz v9, :cond_12

    .line 281
    const/4 v2, 0x0

    .line 282
    .line 283
    :goto_9
    if-ge v2, v13, :cond_12

    .line 284
    .line 285
    iget-object v9, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v9

    .line 290
    .line 291
    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 292
    .line 293
    if-nez p3, :cond_11

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 297
    move-result v10

    .line 298
    .line 299
    sub-int v10, p4, v10

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 303
    goto :goto_a

    .line 304
    .line 305
    .line 306
    :cond_11
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 307
    move-result v10

    .line 308
    .line 309
    sub-int v10, p4, v10

    .line 310
    .line 311
    .line 312
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 313
    .line 314
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 315
    goto :goto_9

    .line 316
    :cond_12
    move-object v2, v0

    .line 317
    move v9, v8

    .line 318
    const/4 v0, 0x0

    .line 319
    const/4 v14, 0x0

    .line 320
    move v8, v7

    .line 321
    move v7, v6

    .line 322
    move v6, v5

    .line 323
    move-object v5, v4

    .line 324
    move-object v4, v3

    .line 325
    move-object v3, v1

    .line 326
    const/4 v1, 0x0

    .line 327
    .line 328
    :goto_b
    if-ge v14, v13, :cond_18

    .line 329
    .line 330
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 334
    move-result-object v10

    .line 335
    .line 336
    check-cast v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 337
    .line 338
    if-nez p3, :cond_15

    .line 339
    .line 340
    add-int/lit8 v5, v13, -0x1

    .line 341
    .line 342
    if-ge v14, v5, :cond_13

    .line 343
    .line 344
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 345
    .line 346
    add-int/lit8 v9, v14, 0x1

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    move-result-object v5

    .line 351
    .line 352
    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 353
    .line 354
    .line 355
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 356
    move-result-object v5

    .line 357
    .line 358
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 359
    const/4 v9, 0x0

    .line 360
    .line 361
    :goto_c
    const/16 v16, 0x1

    .line 362
    goto :goto_d

    .line 363
    .line 364
    :cond_13
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 368
    move-result v9

    .line 369
    goto :goto_c

    .line 370
    .line 371
    .line 372
    :goto_d
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 373
    move-result-object v11

    .line 374
    .line 375
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 376
    move v12, v0

    .line 377
    move-object v0, v10

    .line 378
    .line 379
    move-object/from16 p1, v11

    .line 380
    .line 381
    const/16 v17, 0x0

    .line 382
    .line 383
    move/from16 v10, p4

    .line 384
    move v11, v1

    .line 385
    .line 386
    move/from16 v1, p3

    .line 387
    .line 388
    .line 389
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 393
    move-result v1

    .line 394
    .line 395
    .line 396
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 397
    move-result v1

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 401
    move-result v0

    .line 402
    add-int/2addr v0, v11

    .line 403
    .line 404
    if-lez v14, :cond_14

    .line 405
    .line 406
    iget v3, v15, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 407
    add-int/2addr v0, v3

    .line 408
    :cond_14
    move v3, v1

    .line 409
    move v1, v0

    .line 410
    move v0, v3

    .line 411
    .line 412
    move-object/from16 v3, p1

    .line 413
    .line 414
    move/from16 v7, v17

    .line 415
    goto :goto_10

    .line 416
    :cond_15
    move v12, v0

    .line 417
    move v11, v1

    .line 418
    move-object v0, v10

    .line 419
    .line 420
    const/16 v16, 0x1

    .line 421
    .line 422
    const/16 v17, 0x0

    .line 423
    .line 424
    add-int/lit8 v1, v13, -0x1

    .line 425
    .line 426
    if-ge v14, v1, :cond_16

    .line 427
    .line 428
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 429
    .line 430
    add-int/lit8 v4, v14, 0x1

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 434
    move-result-object v1

    .line 435
    .line 436
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 437
    .line 438
    .line 439
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 440
    move-result-object v1

    .line 441
    .line 442
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 443
    .line 444
    move/from16 v8, v17

    .line 445
    :goto_e
    move-object v4, v1

    .line 446
    goto :goto_f

    .line 447
    .line 448
    :cond_16
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 452
    move-result v4

    .line 453
    move v8, v4

    .line 454
    goto :goto_e

    .line 455
    .line 456
    .line 457
    :goto_f
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 458
    move-result-object v1

    .line 459
    .line 460
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 461
    .line 462
    move/from16 v10, p4

    .line 463
    .line 464
    move-object/from16 v18, v1

    .line 465
    .line 466
    move/from16 v1, p3

    .line 467
    .line 468
    .line 469
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 473
    move-result v1

    .line 474
    add-int/2addr v1, v12

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 478
    move-result v0

    .line 479
    .line 480
    .line 481
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 482
    move-result v0

    .line 483
    .line 484
    if-lez v14, :cond_17

    .line 485
    .line 486
    iget v2, v15, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 487
    add-int/2addr v1, v2

    .line 488
    :cond_17
    move v2, v1

    .line 489
    move v1, v0

    .line 490
    move v0, v2

    .line 491
    .line 492
    move/from16 v6, v17

    .line 493
    .line 494
    move-object/from16 v2, v18

    .line 495
    .line 496
    :goto_10
    add-int/lit8 v14, v14, 0x1

    .line 497
    .line 498
    goto/16 :goto_b

    .line 499
    :cond_18
    move v12, v0

    .line 500
    move v11, v1

    .line 501
    .line 502
    const/16 v16, 0x1

    .line 503
    .line 504
    const/16 v17, 0x0

    .line 505
    .line 506
    aput v12, p5, v17

    .line 507
    .line 508
    aput v11, p5, v16

    .line 509
    return-void
.end method

.method private measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v8, p2

    .line 5
    .line 6
    if-nez v8, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 15
    .line 16
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    .line 20
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    .line 22
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    move/from16 v2, p3

    .line 25
    .line 26
    move/from16 v7, p4

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 30
    .line 31
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const/4 v11, 0x1

    .line 36
    .line 37
    if-nez p3, :cond_8

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    .line 43
    :goto_0
    if-ge v9, v8, :cond_7

    .line 44
    .line 45
    add-int/lit8 v10, v2, 0x1

    .line 46
    .line 47
    aget-object v13, p1, v9

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v13, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 51
    move-result v14

    .line 52
    .line 53
    .line 54
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 58
    .line 59
    if-ne v2, v5, :cond_1

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    :cond_1
    move v15, v3

    .line 63
    .line 64
    if-eq v4, v7, :cond_2

    .line 65
    .line 66
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 67
    add-int/2addr v2, v4

    .line 68
    add-int/2addr v2, v14

    .line 69
    .line 70
    if-le v2, v7, :cond_3

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    move v2, v11

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v2, 0x0

    .line 80
    .line 81
    :goto_1
    if-nez v2, :cond_4

    .line 82
    .line 83
    if-lez v9, :cond_4

    .line 84
    .line 85
    iget v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 86
    .line 87
    if-lez v3, :cond_4

    .line 88
    .line 89
    if-le v10, v3, :cond_4

    .line 90
    move v2, v11

    .line 91
    .line 92
    :cond_4
    if-eqz v2, :cond_5

    .line 93
    .line 94
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 95
    .line 96
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 97
    .line 98
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 99
    .line 100
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 101
    .line 102
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 103
    .line 104
    move/from16 v2, p3

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 111
    .line 112
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    move v2, v10

    .line 117
    move v4, v14

    .line 118
    goto :goto_3

    .line 119
    .line 120
    :cond_5
    if-lez v9, :cond_6

    .line 121
    .line 122
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 123
    add-int/2addr v2, v14

    .line 124
    add-int/2addr v4, v2

    .line 125
    :goto_2
    const/4 v2, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    move v4, v14

    .line 128
    goto :goto_2

    .line 129
    .line 130
    .line 131
    :goto_3
    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 132
    .line 133
    add-int/lit8 v9, v9, 0x1

    .line 134
    move v3, v15

    .line 135
    goto :goto_0

    .line 136
    :cond_7
    move-object v15, v1

    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    :cond_8
    const/4 v2, 0x0

    .line 140
    const/4 v3, 0x0

    .line 141
    const/4 v9, 0x0

    .line 142
    .line 143
    :goto_4
    if-ge v9, v8, :cond_7

    .line 144
    .line 145
    aget-object v10, p1, v9

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v10, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 149
    move-result v13

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 153
    move-result-object v4

    .line 154
    .line 155
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 156
    .line 157
    if-ne v4, v5, :cond_9

    .line 158
    .line 159
    add-int/lit8 v3, v3, 0x1

    .line 160
    :cond_9
    move v14, v3

    .line 161
    .line 162
    if-eq v2, v7, :cond_a

    .line 163
    .line 164
    iget v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 165
    add-int/2addr v3, v2

    .line 166
    add-int/2addr v3, v13

    .line 167
    .line 168
    if-le v3, v7, :cond_b

    .line 169
    .line 170
    .line 171
    :cond_a
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 172
    move-result-object v3

    .line 173
    .line 174
    if-eqz v3, :cond_b

    .line 175
    move v3, v11

    .line 176
    goto :goto_5

    .line 177
    :cond_b
    const/4 v3, 0x0

    .line 178
    .line 179
    :goto_5
    if-nez v3, :cond_c

    .line 180
    .line 181
    if-lez v9, :cond_c

    .line 182
    .line 183
    iget v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 184
    .line 185
    if-lez v4, :cond_c

    .line 186
    .line 187
    if-gez v4, :cond_c

    .line 188
    move v3, v11

    .line 189
    .line 190
    :cond_c
    if-eqz v3, :cond_e

    .line 191
    .line 192
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 193
    .line 194
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 195
    .line 196
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 197
    .line 198
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 199
    .line 200
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 201
    .line 202
    move/from16 v2, p3

    .line 203
    .line 204
    .line 205
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 206
    move-object v15, v1

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 210
    .line 211
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_d
    move v2, v13

    .line 216
    goto :goto_6

    .line 217
    :cond_e
    move-object v15, v1

    .line 218
    .line 219
    if-lez v9, :cond_d

    .line 220
    .line 221
    iget v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 222
    add-int/2addr v1, v13

    .line 223
    add-int/2addr v2, v1

    .line 224
    .line 225
    .line 226
    :goto_6
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 227
    .line 228
    add-int/lit8 v9, v9, 0x1

    .line 229
    .line 230
    move/from16 v7, p4

    .line 231
    move v3, v14

    .line 232
    move-object v1, v15

    .line 233
    goto :goto_4

    .line 234
    .line 235
    :goto_7
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 239
    move-result v13

    .line 240
    .line 241
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 242
    .line 243
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 244
    .line 245
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 246
    .line 247
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 251
    move-result v5

    .line 252
    .line 253
    .line 254
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 255
    move-result v6

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 259
    move-result v7

    .line 260
    .line 261
    .line 262
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 263
    move-result v8

    .line 264
    .line 265
    .line 266
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 267
    move-result-object v9

    .line 268
    .line 269
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 270
    .line 271
    if-eq v9, v10, :cond_10

    .line 272
    .line 273
    .line 274
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 275
    move-result-object v9

    .line 276
    .line 277
    if-ne v9, v10, :cond_f

    .line 278
    goto :goto_8

    .line 279
    :cond_f
    const/4 v9, 0x0

    .line 280
    goto :goto_9

    .line 281
    :cond_10
    :goto_8
    move v9, v11

    .line 282
    .line 283
    :goto_9
    if-lez v3, :cond_12

    .line 284
    .line 285
    if-eqz v9, :cond_12

    .line 286
    const/4 v3, 0x0

    .line 287
    .line 288
    :goto_a
    if-ge v3, v13, :cond_12

    .line 289
    .line 290
    iget-object v9, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    move-result-object v9

    .line 295
    .line 296
    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 297
    .line 298
    if-nez p3, :cond_11

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 302
    move-result v10

    .line 303
    .line 304
    sub-int v10, p4, v10

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 308
    goto :goto_b

    .line 309
    .line 310
    .line 311
    :cond_11
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 312
    move-result v10

    .line 313
    .line 314
    sub-int v10, p4, v10

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 318
    .line 319
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 320
    goto :goto_a

    .line 321
    :cond_12
    move-object v3, v1

    .line 322
    move v9, v8

    .line 323
    const/4 v1, 0x0

    .line 324
    const/4 v14, 0x0

    .line 325
    move v8, v7

    .line 326
    move v7, v6

    .line 327
    move v6, v5

    .line 328
    move-object v5, v4

    .line 329
    move-object v4, v2

    .line 330
    move-object v2, v0

    .line 331
    const/4 v0, 0x0

    .line 332
    .line 333
    :goto_c
    if-ge v14, v13, :cond_18

    .line 334
    .line 335
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    move-result-object v10

    .line 340
    .line 341
    check-cast v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 342
    .line 343
    if-nez p3, :cond_15

    .line 344
    .line 345
    add-int/lit8 v5, v13, -0x1

    .line 346
    .line 347
    if-ge v14, v5, :cond_13

    .line 348
    .line 349
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 350
    .line 351
    add-int/lit8 v9, v14, 0x1

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    move-result-object v5

    .line 356
    .line 357
    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 358
    .line 359
    .line 360
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 361
    move-result-object v5

    .line 362
    .line 363
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 364
    const/4 v9, 0x0

    .line 365
    .line 366
    :goto_d
    move/from16 v16, v11

    .line 367
    goto :goto_e

    .line 368
    .line 369
    :cond_13
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 373
    move-result v9

    .line 374
    goto :goto_d

    .line 375
    .line 376
    .line 377
    :goto_e
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 378
    move-result-object v11

    .line 379
    .line 380
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 381
    move v12, v0

    .line 382
    move-object v0, v10

    .line 383
    .line 384
    move-object/from16 p1, v11

    .line 385
    .line 386
    const/16 v17, 0x0

    .line 387
    .line 388
    move/from16 v10, p4

    .line 389
    move v11, v1

    .line 390
    .line 391
    move/from16 v1, p3

    .line 392
    .line 393
    .line 394
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 398
    move-result v1

    .line 399
    .line 400
    .line 401
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 402
    move-result v1

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 406
    move-result v0

    .line 407
    add-int/2addr v0, v11

    .line 408
    .line 409
    if-lez v14, :cond_14

    .line 410
    .line 411
    iget v3, v15, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 412
    add-int/2addr v0, v3

    .line 413
    :cond_14
    move v3, v1

    .line 414
    move v1, v0

    .line 415
    move v0, v3

    .line 416
    .line 417
    move-object/from16 v3, p1

    .line 418
    .line 419
    move/from16 v7, v17

    .line 420
    goto :goto_11

    .line 421
    :cond_15
    move v12, v0

    .line 422
    move-object v0, v10

    .line 423
    .line 424
    move/from16 v16, v11

    .line 425
    .line 426
    const/16 v17, 0x0

    .line 427
    move v11, v1

    .line 428
    .line 429
    add-int/lit8 v1, v13, -0x1

    .line 430
    .line 431
    if-ge v14, v1, :cond_16

    .line 432
    .line 433
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 434
    .line 435
    add-int/lit8 v4, v14, 0x1

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 439
    move-result-object v1

    .line 440
    .line 441
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 442
    .line 443
    .line 444
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 445
    move-result-object v1

    .line 446
    .line 447
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 448
    .line 449
    move/from16 v8, v17

    .line 450
    :goto_f
    move-object v4, v1

    .line 451
    goto :goto_10

    .line 452
    .line 453
    :cond_16
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 457
    move-result v4

    .line 458
    move v8, v4

    .line 459
    goto :goto_f

    .line 460
    .line 461
    .line 462
    :goto_10
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 463
    move-result-object v1

    .line 464
    .line 465
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 466
    .line 467
    move/from16 v10, p4

    .line 468
    .line 469
    move-object/from16 v18, v1

    .line 470
    .line 471
    move/from16 v1, p3

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 478
    move-result v1

    .line 479
    add-int/2addr v1, v12

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 483
    move-result v0

    .line 484
    .line 485
    .line 486
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 487
    move-result v0

    .line 488
    .line 489
    if-lez v14, :cond_17

    .line 490
    .line 491
    iget v2, v15, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 492
    add-int/2addr v1, v2

    .line 493
    :cond_17
    move v2, v1

    .line 494
    move v1, v0

    .line 495
    move v0, v2

    .line 496
    .line 497
    move/from16 v6, v17

    .line 498
    .line 499
    move-object/from16 v2, v18

    .line 500
    .line 501
    :goto_11
    add-int/lit8 v14, v14, 0x1

    .line 502
    .line 503
    move/from16 v11, v16

    .line 504
    .line 505
    goto/16 :goto_c

    .line 506
    :cond_18
    move v12, v0

    .line 507
    .line 508
    move/from16 v16, v11

    .line 509
    .line 510
    const/16 v17, 0x0

    .line 511
    move v11, v1

    .line 512
    .line 513
    aput v12, p5, v17

    .line 514
    .line 515
    aput v11, p5, v16

    .line 516
    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .locals 21

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v8, p2

    .line 5
    .line 6
    if-nez v8, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v9, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 19
    .line 20
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    .line 22
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    .line 26
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    .line 28
    move/from16 v2, p3

    .line 29
    .line 30
    move/from16 v7, p4

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 34
    .line 35
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    move-object v10, v0

    .line 47
    .line 48
    check-cast v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->clear()V

    .line 52
    .line 53
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 54
    .line 55
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 56
    .line 57
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 58
    .line 59
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 63
    move-result v16

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 67
    move-result v17

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 71
    move-result v18

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 75
    move-result v19

    .line 76
    .line 77
    move/from16 v11, p3

    .line 78
    .line 79
    move/from16 v20, p4

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {v10 .. v20}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 83
    move-object v0, v10

    .line 84
    :goto_0
    move v2, v9

    .line 85
    .line 86
    :goto_1
    if-ge v2, v8, :cond_2

    .line 87
    .line 88
    aget-object v3, p1, v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 98
    move-result v2

    .line 99
    .line 100
    aput v2, p5, v9

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 104
    move-result v0

    .line 105
    const/4 v2, 0x1

    .line 106
    .line 107
    aput v0, p5, v2

    .line 108
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    move p1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, p2

    .line 27
    .line 28
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 29
    .line 30
    if-eqz v1, :cond_6

    .line 31
    .line 32
    if-eq v1, v0, :cond_4

    .line 33
    const/4 v2, 0x2

    .line 34
    .line 35
    if-eq v1, v2, :cond_3

    .line 36
    const/4 v2, 0x3

    .line 37
    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    goto :goto_5

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v1

    .line 46
    move v2, p2

    .line 47
    .line 48
    :goto_1
    if-ge v2, v1, :cond_7

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 57
    .line 58
    add-int/lit8 v4, v1, -0x1

    .line 59
    .line 60
    if-ne v2, v4, :cond_2

    .line 61
    move v4, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v4, p2

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->createAlignedConstraints(Z)V

    .line 73
    goto :goto_5

    .line 74
    .line 75
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v1

    .line 80
    move v2, p2

    .line 81
    .line 82
    :goto_3
    if-ge v2, v1, :cond_7

    .line 83
    .line 84
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 91
    .line 92
    add-int/lit8 v4, v1, -0x1

    .line 93
    .line 94
    if-ne v2, v4, :cond_5

    .line 95
    move v4, v0

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    move v4, p2

    .line 98
    .line 99
    .line 100
    :goto_4
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 101
    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_3

    .line 104
    .line 105
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result v1

    .line 110
    .line 111
    if-lez v1, :cond_7

    .line 112
    .line 113
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 123
    .line 124
    .line 125
    :cond_7
    :goto_5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    .line 126
    return-void
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
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/core/widgets/Flow;

    .line 6
    .line 7
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 8
    .line 9
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 10
    .line 11
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 12
    .line 13
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 14
    .line 15
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 16
    .line 17
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 18
    .line 19
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 20
    .line 21
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 22
    .line 23
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 24
    .line 25
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 26
    .line 27
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 28
    .line 29
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 30
    .line 31
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 32
    .line 33
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 34
    .line 35
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 36
    .line 37
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 38
    .line 39
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 40
    .line 41
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 42
    .line 43
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 44
    .line 45
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 46
    .line 47
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 48
    .line 49
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 50
    .line 51
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 52
    .line 53
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 54
    .line 55
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 56
    .line 57
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 58
    .line 59
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 60
    .line 61
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 62
    .line 63
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 64
    .line 65
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 66
    .line 67
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 68
    .line 69
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 70
    .line 71
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 72
    .line 73
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 74
    .line 75
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 76
    .line 77
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 78
    .line 79
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 80
    .line 81
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 82
    return-void
.end method

.method public getMaxElementsWrap()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 3
    int-to-float v0, v0

    .line 4
    return v0
.end method

.method public measure(IIII)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v6, p1

    .line 5
    .line 6
    move/from16 v7, p2

    .line 7
    .line 8
    move/from16 v8, p3

    .line 9
    .line 10
    move/from16 v9, p4

    .line 11
    .line 12
    iget v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 13
    const/4 v10, 0x0

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measureChildren()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v10, v10}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->setMeasure(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    .line 28
    return-void

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 32
    move-result v11

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 36
    move-result v12

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 40
    move-result v13

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 44
    move-result v14

    .line 45
    const/4 v1, 0x2

    .line 46
    .line 47
    new-array v5, v1, [I

    .line 48
    .line 49
    sub-int v2, v7, v11

    .line 50
    sub-int/2addr v2, v12

    .line 51
    .line 52
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 53
    const/4 v15, 0x1

    .line 54
    .line 55
    if-ne v3, v15, :cond_1

    .line 56
    .line 57
    sub-int v2, v9, v13

    .line 58
    sub-int/2addr v2, v14

    .line 59
    :cond_1
    move v4, v2

    .line 60
    const/4 v2, -0x1

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 65
    .line 66
    if-ne v3, v2, :cond_2

    .line 67
    .line 68
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 69
    .line 70
    :cond_2
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 71
    .line 72
    if-ne v3, v2, :cond_5

    .line 73
    .line 74
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_3
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 78
    .line 79
    if-ne v3, v2, :cond_4

    .line 80
    .line 81
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 82
    .line 83
    :cond_4
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 84
    .line 85
    if-ne v3, v2, :cond_5

    .line 86
    .line 87
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 88
    .line 89
    :cond_5
    :goto_0
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 90
    move v3, v10

    .line 91
    .line 92
    move/from16 v16, v3

    .line 93
    .line 94
    move/from16 v17, v16

    .line 95
    .line 96
    :goto_1
    iget v10, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 97
    .line 98
    const/16 v1, 0x8

    .line 99
    .line 100
    if-ge v3, v10, :cond_7

    .line 101
    .line 102
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 103
    .line 104
    aget-object v10, v10, v3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 108
    move-result v10

    .line 109
    .line 110
    if-ne v10, v1, :cond_6

    .line 111
    .line 112
    add-int/lit8 v16, v16, 0x1

    .line 113
    .line 114
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 115
    const/4 v1, 0x2

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :cond_7
    if-lez v16, :cond_a

    .line 119
    .line 120
    sub-int v10, v10, v16

    .line 121
    .line 122
    new-array v2, v10, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 123
    .line 124
    move/from16 v3, v17

    .line 125
    move v10, v3

    .line 126
    .line 127
    :goto_2
    iget v15, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 128
    .line 129
    if-ge v3, v15, :cond_9

    .line 130
    .line 131
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 132
    .line 133
    aget-object v15, v15, v3

    .line 134
    .line 135
    move-object/from16 v18, v2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 139
    move-result v2

    .line 140
    .line 141
    if-eq v2, v1, :cond_8

    .line 142
    .line 143
    aput-object v15, v18, v10

    .line 144
    .line 145
    add-int/lit8 v10, v10, 0x1

    .line 146
    .line 147
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 148
    .line 149
    move-object/from16 v2, v18

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_9
    move-object/from16 v18, v2

    .line 153
    .line 154
    move-object/from16 v1, v18

    .line 155
    :goto_3
    move v2, v10

    .line 156
    goto :goto_4

    .line 157
    :cond_a
    move-object v1, v2

    .line 158
    goto :goto_3

    .line 159
    .line 160
    :goto_4
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 161
    .line 162
    iput v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 163
    .line 164
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 165
    .line 166
    if-eqz v3, :cond_e

    .line 167
    const/4 v10, 0x1

    .line 168
    .line 169
    if-eq v3, v10, :cond_d

    .line 170
    const/4 v10, 0x2

    .line 171
    .line 172
    if-eq v3, v10, :cond_c

    .line 173
    const/4 v10, 0x3

    .line 174
    .line 175
    if-eq v3, v10, :cond_b

    .line 176
    goto :goto_5

    .line 177
    .line 178
    :cond_b
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 179
    .line 180
    .line 181
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 182
    goto :goto_5

    .line 183
    .line 184
    :cond_c
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 185
    .line 186
    .line 187
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 188
    goto :goto_5

    .line 189
    .line 190
    :cond_d
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 191
    .line 192
    .line 193
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 194
    goto :goto_5

    .line 195
    .line 196
    :cond_e
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 197
    .line 198
    .line 199
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 200
    .line 201
    :goto_5
    aget v1, v5, v17

    .line 202
    add-int/2addr v1, v11

    .line 203
    add-int/2addr v1, v12

    .line 204
    .line 205
    const/16 v16, 0x1

    .line 206
    .line 207
    aget v2, v5, v16

    .line 208
    add-int/2addr v2, v13

    .line 209
    add-int/2addr v2, v14

    .line 210
    .line 211
    const/high16 v3, -0x80000000

    .line 212
    .line 213
    const/high16 v4, 0x40000000    # 2.0f

    .line 214
    .line 215
    if-ne v6, v4, :cond_f

    .line 216
    move v1, v7

    .line 217
    goto :goto_6

    .line 218
    .line 219
    :cond_f
    if-ne v6, v3, :cond_10

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 223
    move-result v1

    .line 224
    goto :goto_6

    .line 225
    .line 226
    :cond_10
    if-nez v6, :cond_11

    .line 227
    goto :goto_6

    .line 228
    .line 229
    :cond_11
    move/from16 v1, v17

    .line 230
    .line 231
    :goto_6
    if-ne v8, v4, :cond_12

    .line 232
    move v2, v9

    .line 233
    goto :goto_7

    .line 234
    .line 235
    :cond_12
    if-ne v8, v3, :cond_13

    .line 236
    .line 237
    .line 238
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 239
    move-result v2

    .line 240
    goto :goto_7

    .line 241
    .line 242
    :cond_13
    if-nez v8, :cond_14

    .line 243
    goto :goto_7

    .line 244
    .line 245
    :cond_14
    move/from16 v2, v17

    .line 246
    .line 247
    .line 248
    :goto_7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->setMeasure(II)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 255
    .line 256
    iget v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 257
    .line 258
    if-lez v1, :cond_15

    .line 259
    .line 260
    move/from16 v10, v16

    .line 261
    goto :goto_8

    .line 262
    .line 263
    :cond_15
    move/from16 v10, v17

    .line 264
    .line 265
    .line 266
    :goto_8
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    .line 267
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 3
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 3
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 3
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 3
    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 3
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 3
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 3
    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 3
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 3
    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 3
    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 3
    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 3
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 3
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 3
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 3
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 3
    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 3
    return-void
.end method

.method public setWrapMode(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 3
    return-void
.end method
