.class public Landroidx/constraintlayout/helper/widget/CircularFlow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "SourceFile"


# static fields
.field private static DEFAULT_ANGLE:F = 0.0f

.field private static DEFAULT_RADIUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CircularFlow"


# instance fields
.field private mAngles:[F

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCountAngle:I

.field private mCountRadius:I

.field private mRadius:[I

.field private mReferenceAngles:Ljava/lang/String;

.field private mReferenceDefaultAngle:Ljava/lang/Float;

.field private mReferenceDefaultRadius:Ljava/lang/Integer;

.field private mReferenceRadius:Ljava/lang/String;

.field mViewCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private addAngle(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleString"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    array-length v2, v0

    .line 25
    .line 26
    if-le v1, v2, :cond_3

    .line 27
    array-length v1, v0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 38
    .line 39
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    move-result p1

    .line 44
    int-to-float p1, p1

    .line 45
    .line 46
    aput p1, v0, v1

    .line 47
    .line 48
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 53
    :cond_4
    :goto_0
    return-void
.end method

.method private addRadius(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radiusString"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    array-length v2, v0

    .line 25
    .line 26
    if-le v1, v2, :cond_3

    .line 27
    array-length v1, v0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 38
    .line 39
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    move-result p1

    .line 44
    int-to-float p1, p1

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 57
    mul-float/2addr p1, v2

    .line 58
    float-to-int p1, p1

    .line 59
    .line 60
    aput p1, v0, v1

    .line 61
    .line 62
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 67
    :cond_4
    :goto_0
    return-void
.end method

.method private anchorReferences()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_7

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 18
    .line 19
    aget v2, v2, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    sget v2, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    .line 30
    .line 31
    sget v3, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 34
    const/4 v5, 0x1

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    array-length v6, v4

    .line 38
    .line 39
    if-ge v0, v6, :cond_1

    .line 40
    .line 41
    aget v2, v4, v0

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v4

    .line 51
    const/4 v6, -0x1

    .line 52
    .line 53
    if-eq v4, v6, :cond_3

    .line 54
    .line 55
    iget v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 56
    add-int/2addr v4, v5

    .line 57
    .line 58
    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 61
    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    new-array v4, v5, [I

    .line 65
    .line 66
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    .line 70
    move-result-object v4

    .line 71
    .line 72
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 73
    .line 74
    iget v6, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 75
    sub-int/2addr v6, v5

    .line 76
    .line 77
    aput v2, v4, v6

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_3
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 84
    move-result v6

    .line 85
    .line 86
    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v6

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    check-cast v4, Ljava/lang/String;

    .line 95
    .line 96
    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 97
    .line 98
    if-eqz v4, :cond_4

    .line 99
    array-length v6, v4

    .line 100
    .line 101
    if-ge v0, v6, :cond_4

    .line 102
    .line 103
    aget v3, v4, v0

    .line 104
    goto :goto_2

    .line 105
    .line 106
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    .line 107
    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 112
    move-result v4

    .line 113
    .line 114
    const/high16 v6, -0x40800000    # -1.0f

    .line 115
    .line 116
    cmpl-float v4, v4, v6

    .line 117
    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    iget v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 121
    add-int/2addr v4, v5

    .line 122
    .line 123
    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 124
    .line 125
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 126
    .line 127
    if-nez v4, :cond_5

    .line 128
    .line 129
    new-array v4, v5, [F

    .line 130
    .line 131
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    .line 135
    move-result-object v4

    .line 136
    .line 137
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 138
    .line 139
    iget v6, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 140
    sub-int/2addr v6, v5

    .line 141
    .line 142
    aput v3, v4, v6

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :cond_6
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 149
    move-result v5

    .line 150
    .line 151
    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v5

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-result-object v4

    .line 158
    .line 159
    check-cast v4, Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    move-result-object v4

    .line 164
    .line 165
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 166
    .line 167
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 168
    .line 169
    iget v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mViewCenter:I

    .line 170
    .line 171
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 172
    .line 173
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    .line 183
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeatures()V

    .line 184
    return-void
.end method

.method private removeAngle([FI)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "angles",
            "index"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ltz p2, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 7
    .line 8
    if-lt p2, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeElementFromArray([FI)[F

    .line 13
    move-result-object p1

    .line 14
    :cond_1
    :goto_0
    return-object p1
.end method

.method public static removeElementFromArray([FI)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "index"
        }
    .end annotation

    .line 4
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 6
    aget v4, p0, v1

    aput v4, v0, v2

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static removeElementFromArray([II)[I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "index"
        }
    .end annotation

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 3
    aget v4, p0, v1

    aput v4, v0, v2

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeRadius([II)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radius",
            "index"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ltz p2, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 7
    .line 8
    if-lt p2, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeElementFromArray([II)[I

    .line 13
    move-result-object p1

    .line 14
    :cond_1
    :goto_0
    return-object p1
.end method

.method private setAngles(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 7
    .line 8
    :goto_0
    const/16 v1, 0x2c

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addAngle(Ljava/lang/String;)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addAngle(Ljava/lang/String;)V

    .line 39
    .line 40
    add-int/lit8 v0, v1, 0x1

    .line 41
    goto :goto_0
.end method

.method private setRadius(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 7
    .line 8
    :goto_0
    const/16 v1, 0x2c

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addRadius(Ljava/lang/String;)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addRadius(Ljava/lang/String;)V

    .line 39
    .line 40
    add-int/lit8 v0, v1, 0x1

    .line 41
    goto :goto_0
.end method


# virtual methods
.method public addViewToCircularFlow(Landroid/view/View;IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "radius",
            "angle"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->containsId(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addView(Landroid/view/View;)V

    .line 15
    .line 16
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 27
    .line 28
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    aput p3, p1, v0

    .line 33
    .line 34
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 45
    .line 46
    iget p3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 47
    .line 48
    add-int/lit8 p3, p3, -0x1

    .line 49
    int-to-float p2, p2

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 62
    mul-float/2addr p2, v0

    .line 63
    float-to-int p2, p2

    .line 64
    .line 65
    aput p2, p1, p3

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 69
    return-void
.end method

.method public getAngles()[F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 3
    .line 4
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getRadius()[I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public init(Landroid/util/AttributeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    .line 23
    :goto_0
    if-ge v2, v0, :cond_5

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 27
    move-result v3

    .line 28
    .line 29
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_viewCenter:I

    .line 30
    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 35
    move-result v3

    .line 36
    .line 37
    iput v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mViewCenter:I

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_angles:I

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setAngles(Ljava/lang/String;)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_radiusInDP:I

    .line 55
    .line 56
    if-ne v3, v4, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setRadius(Ljava/lang/String;)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_defaultAngle:I

    .line 69
    .line 70
    if-ne v3, v4, :cond_3

    .line 71
    .line 72
    sget v4, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 76
    move-result v3

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 86
    move-result v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultAngle(F)V

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_defaultRadius:I

    .line 93
    .line 94
    if-ne v3, v4, :cond_4

    .line 95
    .line 96
    sget v4, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 100
    move-result v3

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 110
    move-result v3

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultRadius(I)V

    .line 114
    .line 115
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    :cond_6
    return-void
.end method

.method public isUpdatable(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->containsId(I)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->indexFromId(I)I

    .line 20
    move-result p1

    .line 21
    const/4 v0, -0x1

    .line 22
    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_1
    return v1
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-array v2, v1, [F

    .line 11
    .line 12
    iput-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setAngles(Ljava/lang/String;)V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-array v1, v1, [I

    .line 22
    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setRadius(Ljava/lang/String;)V

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultAngle(F)V

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultRadius(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 52
    return-void
.end method

.method public removeView(Landroid/view/View;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->removeView(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    move-result p1

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 35
    array-length v1, p1

    .line 36
    .line 37
    if-ge v0, v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeAngle([FI)[F

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 44
    .line 45
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 46
    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 48
    .line 49
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 52
    array-length v1, p1

    .line 53
    .line 54
    if-ge v0, v1, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeRadius([II)[I

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 61
    .line 62
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 63
    .line 64
    add-int/lit8 p1, p1, -0x1

    .line 65
    .line 66
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 70
    return v0
.end method

.method public setDefaultAngle(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 1
    .line 2
    sput p1, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    .line 3
    return-void
.end method

.method public setDefaultRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 1
    .line 2
    sput p1, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    .line 3
    return-void
.end method

.method public updateAngle(Landroid/view/View;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "angle"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->indexFromId(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 21
    array-length v0, v0

    .line 22
    .line 23
    if-le p1, v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 31
    .line 32
    aput p2, v0, p1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 36
    return-void
.end method

.method public updateRadius(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "radius"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->indexFromId(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 21
    array-length v0, v0

    .line 22
    .line 23
    if-le p1, v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 31
    int-to-float p2, p2

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 44
    mul-float/2addr p2, v1

    .line 45
    float-to-int p2, p2

    .line 46
    .line 47
    aput p2, v0, p1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 51
    return-void
.end method

.method public updateReference(Landroid/view/View;IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "radius",
            "angle"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->indexFromId(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    .line 22
    move-result-object v0

    .line 23
    array-length v0, v0

    .line 24
    .line 25
    if-le v0, p1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 32
    .line 33
    aput p3, v0, p1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    .line 37
    move-result-object p3

    .line 38
    array-length p3, p3

    .line 39
    .line 40
    if-le p3, p1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    .line 44
    move-result-object p3

    .line 45
    .line 46
    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 47
    int-to-float p2, p2

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 60
    mul-float/2addr p2, v0

    .line 61
    float-to-int p2, p2

    .line 62
    .line 63
    aput p2, p3, p1

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 67
    return-void
.end method
