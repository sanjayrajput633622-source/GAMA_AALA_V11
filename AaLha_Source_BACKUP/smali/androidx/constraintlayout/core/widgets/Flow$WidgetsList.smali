.class Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetsList"
.end annotation


# instance fields
.field private biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field biggestDimension:I

.field private mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mCount:I

.field private mHeight:I

.field private mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mMax:I

.field private mNbMatchConstraintsWidgets:I

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mStartIndex:I

.field private mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/core/widgets/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 16
    .line 17
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 18
    .line 19
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 20
    .line 21
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 22
    .line 23
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 24
    .line 25
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 26
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 28
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 30
    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 32
    .line 33
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 34
    .line 35
    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 36
    .line 37
    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    .line 39
    iput-object p5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 40
    .line 41
    iput-object p6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 45
    move-result p2

    .line 46
    .line 47
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 51
    move-result p2

    .line 52
    .line 53
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 57
    move-result p2

    .line 58
    .line 59
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 63
    move-result p1

    .line 64
    .line 65
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 66
    .line 67
    iput p7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 68
    return-void
.end method

.method public static synthetic access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    return-object p0
.end method

.method private recomputeDimensions()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 4
    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 11
    .line 12
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 13
    move v2, v0

    .line 14
    .line 15
    :goto_0
    if-ge v2, v1, :cond_7

    .line 16
    .line 17
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 18
    add-int/2addr v3, v2

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 21
    .line 22
    .line 23
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/Flow;->access$400(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 24
    move-result v4

    .line 25
    .line 26
    if-lt v3, v4, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 37
    add-int/2addr v4, v2

    .line 38
    .line 39
    aget-object v3, v3, v4

    .line 40
    .line 41
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 42
    .line 43
    const/16 v5, 0x8

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 49
    move-result v4

    .line 50
    .line 51
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 52
    .line 53
    .line 54
    invoke-static {v6}, Landroidx/constraintlayout/core/widgets/Flow;->access$000(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 55
    move-result v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 59
    move-result v7

    .line 60
    .line 61
    if-ne v7, v5, :cond_1

    .line 62
    move v6, v0

    .line 63
    .line 64
    :cond_1
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 65
    add-int/2addr v4, v6

    .line 66
    add-int/2addr v5, v4

    .line 67
    .line 68
    iput v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 69
    .line 70
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 71
    .line 72
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v3, v5}, Landroidx/constraintlayout/core/widgets/Flow;->access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 76
    move-result v4

    .line 77
    .line 78
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 79
    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 83
    .line 84
    if-ge v5, v4, :cond_6

    .line 85
    .line 86
    :cond_2
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 87
    .line 88
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 89
    .line 90
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 94
    .line 95
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v3, v6}, Landroidx/constraintlayout/core/widgets/Flow;->access$200(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 99
    move-result v4

    .line 100
    .line 101
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 102
    .line 103
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 104
    .line 105
    .line 106
    invoke-static {v6, v3, v7}, Landroidx/constraintlayout/core/widgets/Flow;->access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 107
    move-result v6

    .line 108
    .line 109
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 110
    .line 111
    .line 112
    invoke-static {v7}, Landroidx/constraintlayout/core/widgets/Flow;->access$100(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 113
    move-result v7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 117
    move-result v8

    .line 118
    .line 119
    if-ne v8, v5, :cond_4

    .line 120
    move v7, v0

    .line 121
    .line 122
    :cond_4
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 123
    add-int/2addr v6, v7

    .line 124
    add-int/2addr v5, v6

    .line 125
    .line 126
    iput v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 127
    .line 128
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 129
    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 133
    .line 134
    if-ge v5, v4, :cond_6

    .line 135
    .line 136
    :cond_5
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 137
    .line 138
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 139
    .line 140
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 141
    .line 142
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 10
    .line 11
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$200(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 30
    move v0, v2

    .line 31
    .line 32
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$000(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 40
    move-result v4

    .line 41
    .line 42
    if-ne v4, v1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v2, v3

    .line 45
    .line 46
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 47
    add-int/2addr v0, v2

    .line 48
    add-int/2addr v1, v0

    .line 49
    .line 50
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 53
    .line 54
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1, v1}, Landroidx/constraintlayout/core/widgets/Flow;->access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 58
    move-result v0

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 65
    .line 66
    if-ge v1, v0, :cond_7

    .line 67
    .line 68
    :cond_2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    .line 70
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 71
    .line 72
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 76
    .line 77
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p1, v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$200(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 81
    move-result v0

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 84
    .line 85
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 86
    .line 87
    .line 88
    invoke-static {v3, p1, v4}, Landroidx/constraintlayout/core/widgets/Flow;->access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 96
    .line 97
    if-ne v4, v5, :cond_4

    .line 98
    .line 99
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 104
    move v3, v2

    .line 105
    .line 106
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/Flow;->access$100(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 110
    move-result v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 114
    move-result v5

    .line 115
    .line 116
    if-ne v5, v1, :cond_5

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move v2, v4

    .line 119
    .line 120
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 121
    add-int/2addr v3, v2

    .line 122
    add-int/2addr v1, v3

    .line 123
    .line 124
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 125
    .line 126
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 127
    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 131
    .line 132
    if-ge v1, v0, :cond_7

    .line 133
    .line 134
    :cond_6
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 135
    .line 136
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 137
    .line 138
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 139
    .line 140
    :cond_7
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 141
    .line 142
    add-int/lit8 p1, p1, 0x1

    .line 143
    .line 144
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 145
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 17
    return-void
.end method

.method public createConstraints(ZIZ)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    .line 8
    :goto_0
    if-ge v3, v1, :cond_2

    .line 9
    .line 10
    iget v4, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 11
    add-int/2addr v4, v3

    .line 12
    .line 13
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 14
    .line 15
    .line 16
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow;->access$400(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 17
    move-result v5

    .line 18
    .line 19
    if-lt v4, v5, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 23
    .line 24
    .line 25
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/Flow;->access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    iget v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 29
    add-int/2addr v5, v3

    .line 30
    .line 31
    aget-object v4, v4, v5

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    :goto_1
    if-eqz v1, :cond_3a

    .line 42
    .line 43
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    goto/16 :goto_17

    .line 48
    .line 49
    :cond_3
    if-eqz p3, :cond_4

    .line 50
    .line 51
    if-nez p2, :cond_4

    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move v4, v2

    .line 55
    :goto_2
    const/4 v5, -0x1

    .line 56
    move v6, v2

    .line 57
    move v7, v5

    .line 58
    move v8, v7

    .line 59
    .line 60
    :goto_3
    if-ge v6, v1, :cond_9

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    add-int/lit8 v9, v1, -0x1

    .line 65
    sub-int/2addr v9, v6

    .line 66
    goto :goto_4

    .line 67
    :cond_5
    move v9, v6

    .line 68
    .line 69
    :goto_4
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 70
    add-int/2addr v10, v9

    .line 71
    .line 72
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 73
    .line 74
    .line 75
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$400(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 76
    move-result v11

    .line 77
    .line 78
    if-lt v10, v11, :cond_6

    .line 79
    goto :goto_5

    .line 80
    .line 81
    :cond_6
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 82
    .line 83
    .line 84
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 85
    move-result-object v10

    .line 86
    .line 87
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 88
    add-int/2addr v11, v9

    .line 89
    .line 90
    aget-object v9, v10, v11

    .line 91
    .line 92
    if-eqz v9, :cond_8

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 96
    move-result v9

    .line 97
    .line 98
    if-nez v9, :cond_8

    .line 99
    .line 100
    if-ne v7, v5, :cond_7

    .line 101
    move v7, v6

    .line 102
    :cond_7
    move v8, v6

    .line 103
    .line 104
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 105
    goto :goto_3

    .line 106
    .line 107
    :cond_9
    :goto_5
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 108
    const/4 v9, 0x0

    .line 109
    .line 110
    if-nez v6, :cond_23

    .line 111
    .line 112
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 113
    .line 114
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 115
    .line 116
    .line 117
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->access$600(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 118
    move-result v10

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 122
    .line 123
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 124
    .line 125
    if-lez p2, :cond_a

    .line 126
    .line 127
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 128
    .line 129
    .line 130
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$100(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 131
    move-result v11

    .line 132
    add-int/2addr v10, v11

    .line 133
    .line 134
    :cond_a
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 135
    .line 136
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v12, v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 140
    .line 141
    if-eqz p3, :cond_b

    .line 142
    .line 143
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 144
    .line 145
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 146
    .line 147
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 151
    .line 152
    :cond_b
    if-lez p2, :cond_c

    .line 153
    .line 154
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 155
    .line 156
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 157
    .line 158
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 159
    .line 160
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 164
    .line 165
    :cond_c
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 166
    .line 167
    .line 168
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->access$700(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 169
    move-result v10

    .line 170
    const/4 v11, 0x3

    .line 171
    .line 172
    if-ne v10, v11, :cond_10

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    .line 176
    move-result v10

    .line 177
    .line 178
    if-nez v10, :cond_10

    .line 179
    move v10, v2

    .line 180
    .line 181
    :goto_6
    if-ge v10, v1, :cond_10

    .line 182
    .line 183
    if-eqz p1, :cond_d

    .line 184
    .line 185
    add-int/lit8 v12, v1, -0x1

    .line 186
    sub-int/2addr v12, v10

    .line 187
    goto :goto_7

    .line 188
    :cond_d
    move v12, v10

    .line 189
    .line 190
    :goto_7
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 191
    add-int/2addr v13, v12

    .line 192
    .line 193
    iget-object v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 194
    .line 195
    .line 196
    invoke-static {v14}, Landroidx/constraintlayout/core/widgets/Flow;->access$400(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 197
    move-result v14

    .line 198
    .line 199
    if-lt v13, v14, :cond_e

    .line 200
    goto :goto_8

    .line 201
    .line 202
    :cond_e
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 203
    .line 204
    .line 205
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 206
    move-result-object v13

    .line 207
    .line 208
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 209
    add-int/2addr v14, v12

    .line 210
    .line 211
    aget-object v12, v13, v14

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    .line 215
    move-result v13

    .line 216
    .line 217
    if-eqz v13, :cond_f

    .line 218
    goto :goto_9

    .line 219
    .line 220
    :cond_f
    add-int/lit8 v10, v10, 0x1

    .line 221
    goto :goto_6

    .line 222
    :cond_10
    :goto_8
    move-object v12, v6

    .line 223
    :goto_9
    move v10, v2

    .line 224
    .line 225
    :goto_a
    if-ge v10, v1, :cond_3a

    .line 226
    .line 227
    if-eqz p1, :cond_11

    .line 228
    .line 229
    add-int/lit8 v13, v1, -0x1

    .line 230
    sub-int/2addr v13, v10

    .line 231
    goto :goto_b

    .line 232
    :cond_11
    move v13, v10

    .line 233
    .line 234
    :goto_b
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 235
    add-int/2addr v14, v13

    .line 236
    .line 237
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 238
    .line 239
    .line 240
    invoke-static {v15}, Landroidx/constraintlayout/core/widgets/Flow;->access$400(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 241
    move-result v15

    .line 242
    .line 243
    if-lt v14, v15, :cond_12

    .line 244
    .line 245
    goto/16 :goto_17

    .line 246
    .line 247
    :cond_12
    iget-object v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 248
    .line 249
    .line 250
    invoke-static {v14}, Landroidx/constraintlayout/core/widgets/Flow;->access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 251
    move-result-object v14

    .line 252
    .line 253
    iget v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 254
    add-int/2addr v15, v13

    .line 255
    .line 256
    aget-object v14, v14, v15

    .line 257
    .line 258
    if-nez v14, :cond_13

    .line 259
    move-object v14, v9

    .line 260
    move v9, v11

    .line 261
    .line 262
    goto/16 :goto_10

    .line 263
    .line 264
    :cond_13
    if-nez v10, :cond_14

    .line 265
    .line 266
    iget-object v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 267
    .line 268
    const/16 v16, 0x1

    .line 269
    .line 270
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 271
    .line 272
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v14, v15, v3, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 276
    goto :goto_c

    .line 277
    .line 278
    :cond_14
    const/16 v16, 0x1

    .line 279
    .line 280
    :goto_c
    if-nez v13, :cond_1a

    .line 281
    .line 282
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 283
    .line 284
    .line 285
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$800(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 286
    move-result v3

    .line 287
    .line 288
    const/high16 v11, 0x3f800000    # 1.0f

    .line 289
    .line 290
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 291
    .line 292
    .line 293
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->access$900(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 294
    move-result v13

    .line 295
    .line 296
    if-eqz p1, :cond_15

    .line 297
    .line 298
    sub-float v13, v11, v13

    .line 299
    .line 300
    :cond_15
    iget v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 301
    .line 302
    if-nez v15, :cond_17

    .line 303
    .line 304
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 305
    .line 306
    .line 307
    invoke-static {v15}, Landroidx/constraintlayout/core/widgets/Flow;->access$1000(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 308
    move-result v15

    .line 309
    .line 310
    if-eq v15, v5, :cond_17

    .line 311
    .line 312
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 313
    .line 314
    .line 315
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$1000(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 316
    move-result v3

    .line 317
    .line 318
    if-eqz p1, :cond_16

    .line 319
    .line 320
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 321
    .line 322
    .line 323
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->access$1100(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 324
    move-result v13

    .line 325
    :goto_d
    sub-float/2addr v11, v13

    .line 326
    :goto_e
    move v13, v11

    .line 327
    goto :goto_f

    .line 328
    .line 329
    :cond_16
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 330
    .line 331
    .line 332
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$1100(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 333
    move-result v11

    .line 334
    goto :goto_e

    .line 335
    .line 336
    :cond_17
    if-eqz p3, :cond_19

    .line 337
    .line 338
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 339
    .line 340
    .line 341
    invoke-static {v15}, Landroidx/constraintlayout/core/widgets/Flow;->access$1200(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 342
    move-result v15

    .line 343
    .line 344
    if-eq v15, v5, :cond_19

    .line 345
    .line 346
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 347
    .line 348
    .line 349
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$1200(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 350
    move-result v3

    .line 351
    .line 352
    if-eqz p1, :cond_18

    .line 353
    .line 354
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 355
    .line 356
    .line 357
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->access$1300(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 358
    move-result v13

    .line 359
    goto :goto_d

    .line 360
    .line 361
    :cond_18
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 362
    .line 363
    .line 364
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$1300(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 365
    move-result v11

    .line 366
    goto :goto_e

    .line 367
    .line 368
    .line 369
    :cond_19
    :goto_f
    invoke-virtual {v14, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v14, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 373
    .line 374
    :cond_1a
    add-int/lit8 v3, v1, -0x1

    .line 375
    .line 376
    if-ne v10, v3, :cond_1b

    .line 377
    .line 378
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 379
    .line 380
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 381
    .line 382
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 383
    .line 384
    .line 385
    invoke-virtual {v14, v3, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 386
    .line 387
    :cond_1b
    if-eqz v9, :cond_1d

    .line 388
    .line 389
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 390
    .line 391
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 392
    .line 393
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 394
    .line 395
    .line 396
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->access$000(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 397
    move-result v13

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 401
    .line 402
    if-ne v10, v7, :cond_1c

    .line 403
    .line 404
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 405
    .line 406
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 410
    .line 411
    :cond_1c
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 412
    .line 413
    iget-object v11, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 417
    .line 418
    add-int/lit8 v3, v8, 0x1

    .line 419
    .line 420
    if-ne v10, v3, :cond_1d

    .line 421
    .line 422
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 423
    .line 424
    iget v9, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 428
    .line 429
    :cond_1d
    if-eq v14, v6, :cond_22

    .line 430
    .line 431
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 432
    .line 433
    .line 434
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$700(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 435
    move-result v3

    .line 436
    const/4 v9, 0x3

    .line 437
    .line 438
    if-ne v3, v9, :cond_1e

    .line 439
    .line 440
    .line 441
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    .line 442
    move-result v3

    .line 443
    .line 444
    if-eqz v3, :cond_1e

    .line 445
    .line 446
    if-eq v14, v12, :cond_1e

    .line 447
    .line 448
    .line 449
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    .line 450
    move-result v3

    .line 451
    .line 452
    if-eqz v3, :cond_1e

    .line 453
    .line 454
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 455
    .line 456
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 460
    goto :goto_10

    .line 461
    .line 462
    :cond_1e
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 463
    .line 464
    .line 465
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->access$700(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 466
    move-result v3

    .line 467
    .line 468
    if-eqz v3, :cond_21

    .line 469
    .line 470
    move/from16 v11, v16

    .line 471
    .line 472
    if-eq v3, v11, :cond_20

    .line 473
    .line 474
    if-eqz v4, :cond_1f

    .line 475
    .line 476
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 477
    .line 478
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 479
    .line 480
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 484
    .line 485
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 486
    .line 487
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 488
    .line 489
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 493
    goto :goto_10

    .line 494
    .line 495
    :cond_1f
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 496
    .line 497
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 501
    .line 502
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 503
    .line 504
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 508
    goto :goto_10

    .line 509
    .line 510
    :cond_20
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 511
    .line 512
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 516
    goto :goto_10

    .line 517
    .line 518
    :cond_21
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 519
    .line 520
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 524
    goto :goto_10

    .line 525
    :cond_22
    const/4 v9, 0x3

    .line 526
    .line 527
    :goto_10
    add-int/lit8 v10, v10, 0x1

    .line 528
    move v11, v9

    .line 529
    move-object v9, v14

    .line 530
    .line 531
    goto/16 :goto_a

    .line 532
    .line 533
    :cond_23
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 534
    .line 535
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 536
    .line 537
    .line 538
    invoke-static {v6}, Landroidx/constraintlayout/core/widgets/Flow;->access$800(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 539
    move-result v6

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 543
    .line 544
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 545
    .line 546
    if-lez p2, :cond_24

    .line 547
    .line 548
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 549
    .line 550
    .line 551
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->access$000(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 552
    move-result v10

    .line 553
    add-int/2addr v6, v10

    .line 554
    .line 555
    :cond_24
    if-eqz p1, :cond_26

    .line 556
    .line 557
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 558
    .line 559
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v10, v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 563
    .line 564
    if-eqz p3, :cond_25

    .line 565
    .line 566
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 567
    .line 568
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 569
    .line 570
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 571
    .line 572
    .line 573
    invoke-virtual {v6, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 574
    .line 575
    :cond_25
    if-lez p2, :cond_28

    .line 576
    .line 577
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 578
    .line 579
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 580
    .line 581
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 582
    .line 583
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v6, v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 587
    goto :goto_11

    .line 588
    .line 589
    :cond_26
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 590
    .line 591
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v10, v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 595
    .line 596
    if-eqz p3, :cond_27

    .line 597
    .line 598
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 599
    .line 600
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 601
    .line 602
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 603
    .line 604
    .line 605
    invoke-virtual {v6, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 606
    .line 607
    :cond_27
    if-lez p2, :cond_28

    .line 608
    .line 609
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 610
    .line 611
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 612
    .line 613
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 614
    .line 615
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v6, v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 619
    :cond_28
    :goto_11
    move v6, v2

    .line 620
    .line 621
    :goto_12
    if-ge v6, v1, :cond_3a

    .line 622
    .line 623
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 624
    add-int/2addr v10, v6

    .line 625
    .line 626
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 627
    .line 628
    .line 629
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$400(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 630
    move-result v11

    .line 631
    .line 632
    if-lt v10, v11, :cond_29

    .line 633
    .line 634
    goto/16 :goto_17

    .line 635
    .line 636
    :cond_29
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 637
    .line 638
    .line 639
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 640
    move-result-object v10

    .line 641
    .line 642
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 643
    add-int/2addr v11, v6

    .line 644
    .line 645
    aget-object v10, v10, v11

    .line 646
    .line 647
    if-nez v10, :cond_2a

    .line 648
    const/4 v12, 0x1

    .line 649
    .line 650
    goto/16 :goto_16

    .line 651
    .line 652
    :cond_2a
    if-nez v6, :cond_2d

    .line 653
    .line 654
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 655
    .line 656
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 657
    .line 658
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 659
    .line 660
    .line 661
    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 662
    .line 663
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 664
    .line 665
    .line 666
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$600(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 667
    move-result v11

    .line 668
    .line 669
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 670
    .line 671
    .line 672
    invoke-static {v12}, Landroidx/constraintlayout/core/widgets/Flow;->access$1400(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 673
    move-result v12

    .line 674
    .line 675
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 676
    .line 677
    if-nez v13, :cond_2b

    .line 678
    .line 679
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 680
    .line 681
    .line 682
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->access$1500(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 683
    move-result v13

    .line 684
    .line 685
    if-eq v13, v5, :cond_2b

    .line 686
    .line 687
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 688
    .line 689
    .line 690
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$1500(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 691
    move-result v11

    .line 692
    .line 693
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 694
    .line 695
    .line 696
    invoke-static {v12}, Landroidx/constraintlayout/core/widgets/Flow;->access$1600(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 697
    move-result v12

    .line 698
    goto :goto_13

    .line 699
    .line 700
    :cond_2b
    if-eqz p3, :cond_2c

    .line 701
    .line 702
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 703
    .line 704
    .line 705
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->access$1700(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 706
    move-result v13

    .line 707
    .line 708
    if-eq v13, v5, :cond_2c

    .line 709
    .line 710
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 711
    .line 712
    .line 713
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$1700(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 714
    move-result v11

    .line 715
    .line 716
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 717
    .line 718
    .line 719
    invoke-static {v12}, Landroidx/constraintlayout/core/widgets/Flow;->access$1800(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 720
    move-result v12

    .line 721
    .line 722
    .line 723
    :cond_2c
    :goto_13
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 727
    .line 728
    :cond_2d
    add-int/lit8 v11, v1, -0x1

    .line 729
    .line 730
    if-ne v6, v11, :cond_2e

    .line 731
    .line 732
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 733
    .line 734
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 735
    .line 736
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 737
    .line 738
    .line 739
    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 740
    .line 741
    :cond_2e
    if-eqz v9, :cond_30

    .line 742
    .line 743
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 744
    .line 745
    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 746
    .line 747
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 748
    .line 749
    .line 750
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->access$100(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 751
    move-result v13

    .line 752
    .line 753
    .line 754
    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 755
    .line 756
    if-ne v6, v7, :cond_2f

    .line 757
    .line 758
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 759
    .line 760
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 761
    .line 762
    .line 763
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 764
    .line 765
    :cond_2f
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 766
    .line 767
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v11, v12, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 771
    .line 772
    const/16 v16, 0x1

    .line 773
    .line 774
    add-int/lit8 v11, v8, 0x1

    .line 775
    .line 776
    if-ne v6, v11, :cond_30

    .line 777
    .line 778
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 779
    .line 780
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 781
    .line 782
    .line 783
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 784
    .line 785
    :cond_30
    if-eq v10, v3, :cond_34

    .line 786
    const/4 v9, 0x2

    .line 787
    .line 788
    if-eqz p1, :cond_35

    .line 789
    .line 790
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 791
    .line 792
    .line 793
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$1900(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 794
    move-result v11

    .line 795
    .line 796
    if-eqz v11, :cond_33

    .line 797
    const/4 v12, 0x1

    .line 798
    .line 799
    if-eq v11, v12, :cond_32

    .line 800
    .line 801
    if-eq v11, v9, :cond_31

    .line 802
    goto :goto_14

    .line 803
    .line 804
    :cond_31
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 805
    .line 806
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 810
    .line 811
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 812
    .line 813
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 817
    goto :goto_14

    .line 818
    .line 819
    :cond_32
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 820
    .line 821
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 825
    goto :goto_14

    .line 826
    .line 827
    :cond_33
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 828
    .line 829
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 833
    :cond_34
    :goto_14
    const/4 v12, 0x1

    .line 834
    goto :goto_15

    .line 835
    .line 836
    :cond_35
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 837
    .line 838
    .line 839
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->access$1900(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 840
    move-result v11

    .line 841
    .line 842
    if-eqz v11, :cond_39

    .line 843
    const/4 v12, 0x1

    .line 844
    .line 845
    if-eq v11, v12, :cond_38

    .line 846
    .line 847
    if-eq v11, v9, :cond_36

    .line 848
    goto :goto_15

    .line 849
    .line 850
    :cond_36
    if-eqz v4, :cond_37

    .line 851
    .line 852
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 853
    .line 854
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 855
    .line 856
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 857
    .line 858
    .line 859
    invoke-virtual {v9, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 860
    .line 861
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 862
    .line 863
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 864
    .line 865
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 866
    .line 867
    .line 868
    invoke-virtual {v9, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 869
    goto :goto_15

    .line 870
    .line 871
    :cond_37
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 872
    .line 873
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 877
    .line 878
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 879
    .line 880
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 884
    goto :goto_15

    .line 885
    .line 886
    :cond_38
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 887
    .line 888
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 892
    goto :goto_15

    .line 893
    :cond_39
    const/4 v12, 0x1

    .line 894
    .line 895
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 896
    .line 897
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 901
    :goto_15
    move-object v9, v10

    .line 902
    .line 903
    :goto_16
    add-int/lit8 v6, v6, 0x1

    .line 904
    .line 905
    goto/16 :goto_12

    .line 906
    :cond_3a
    :goto_17
    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/Flow;->access$100(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 18
    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/Flow;->access$000(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 17
    return v0
.end method

.method public measureMatchConstraints(I)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 8
    .line 9
    div-int v5, p1, v0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge p1, v1, :cond_4

    .line 13
    .line 14
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 15
    add-int/2addr v0, p1

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/Flow;->access$400(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-lt v0, v2, :cond_1

    .line 24
    goto :goto_2

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow;->access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 33
    add-int/2addr v2, p1

    .line 34
    .line 35
    aget-object v3, v0, v2

    .line 36
    .line 37
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 48
    .line 49
    if-ne v0, v2, :cond_3

    .line 50
    .line 51
    iget v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 56
    .line 57
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 61
    move-result-object v6

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 65
    move-result v7

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    if-eqz v3, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 78
    .line 79
    if-ne v0, v2, :cond_3

    .line 80
    .line 81
    iget v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 89
    move-result-object v4

    .line 90
    move v7, v5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 94
    move-result v5

    .line 95
    .line 96
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 100
    move v5, v7

    .line 101
    .line 102
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->recomputeDimensions()V

    .line 107
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 3
    return-void
.end method

.method public setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 11
    .line 12
    iput p6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 13
    .line 14
    iput p7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 15
    .line 16
    iput p8, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 17
    .line 18
    iput p9, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 19
    .line 20
    iput p10, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 21
    return-void
.end method
