.class public Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionOnClick"
.end annotation


# static fields
.field public static final ANIM_TOGGLE:I = 0x11

.field public static final ANIM_TO_END:I = 0x1

.field public static final ANIM_TO_START:I = 0x10

.field public static final JUMP_TO_END:I = 0x100

.field public static final JUMP_TO_START:I = 0x1000


# instance fields
.field mMode:I

.field mTargetId:I

.field private final mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "transition",
            "parser"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/16 v0, 0x11

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 4
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 5
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/widget/R$styleable;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 8
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick_targetId:I

    if-ne v0, v1, :cond_0

    .line 9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    goto :goto_1

    .line 10
    :cond_0
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick_clickAction:I

    if-ne v0, v1, :cond_1

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transition",
            "id",
            "action"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 15
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    .line 16
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    return-void
.end method


# virtual methods
.method public addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentState",
            "transition"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    .line 21
    move-result p3

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void

    .line 28
    .line 29
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 30
    .line 31
    and-int/lit8 v2, v1, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-ne p2, v0, :cond_3

    .line 38
    move v2, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move v2, v3

    .line 41
    .line 42
    :goto_1
    and-int/lit16 v5, v1, 0x100

    .line 43
    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    if-ne p2, v0, :cond_4

    .line 47
    move v5, v4

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    move v5, v3

    .line 50
    :goto_2
    or-int/2addr v2, v5

    .line 51
    .line 52
    and-int/lit8 v5, v1, 0x1

    .line 53
    .line 54
    if-eqz v5, :cond_5

    .line 55
    .line 56
    if-ne p2, v0, :cond_5

    .line 57
    move v0, v4

    .line 58
    goto :goto_3

    .line 59
    :cond_5
    move v0, v3

    .line 60
    :goto_3
    or-int/2addr v0, v2

    .line 61
    .line 62
    and-int/lit8 v2, v1, 0x10

    .line 63
    .line 64
    if-eqz v2, :cond_6

    .line 65
    .line 66
    if-ne p2, p3, :cond_6

    .line 67
    move v2, v4

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move v2, v3

    .line 70
    :goto_4
    or-int/2addr v0, v2

    .line 71
    .line 72
    and-int/lit16 v1, v1, 0x1000

    .line 73
    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    if-ne p2, p3, :cond_7

    .line 77
    move v3, v4

    .line 78
    .line 79
    :cond_7
    or-int p2, v0, v3

    .line 80
    .line 81
    if-eqz p2, :cond_8

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_8
    return-void
.end method

.method public isTransitionViable(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "tl"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    .line 16
    move-result v0

    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    if-ne v0, v2, :cond_2

    .line 21
    .line 22
    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 23
    .line 24
    if-eq p2, p1, :cond_1

    .line 25
    return v1

    .line 26
    :cond_1
    return v3

    .line 27
    .line 28
    :cond_2
    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 29
    .line 30
    if-eq p2, v0, :cond_4

    .line 31
    .line 32
    if-ne p2, p1, :cond_3

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    return v3

    .line 35
    :cond_4
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
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
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$700(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInteractionEnabled()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$102(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$002(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    .line 75
    return-void

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 84
    .line 85
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 86
    .line 87
    and-int/lit8 v2, v1, 0x1

    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v4, 0x1

    .line 90
    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    and-int/lit16 v2, v1, 0x100

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    move v2, v3

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    :goto_0
    move v2, v4

    .line 100
    .line 101
    :goto_1
    and-int/lit8 v5, v1, 0x10

    .line 102
    .line 103
    if-nez v5, :cond_6

    .line 104
    .line 105
    and-int/lit16 v1, v1, 0x1000

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    move v1, v3

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    :goto_2
    move v1, v4

    .line 112
    .line 113
    :goto_3
    if-eqz v2, :cond_9

    .line 114
    .line 115
    if-eqz v1, :cond_9

    .line 116
    .line 117
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 118
    .line 119
    .line 120
    invoke-static {v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 121
    move-result-object v5

    .line 122
    .line 123
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 124
    .line 125
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 126
    .line 127
    if-eq v5, v6, :cond_7

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 134
    move-result v5

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    .line 138
    move-result v6

    .line 139
    .line 140
    if-eq v5, v6, :cond_a

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 144
    move-result v5

    .line 145
    .line 146
    const/high16 v6, 0x3f000000    # 0.5f

    .line 147
    .line 148
    cmpl-float v5, v5, v6

    .line 149
    .line 150
    if-lez v5, :cond_8

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    move v1, v3

    .line 153
    :cond_9
    move v3, v2

    .line 154
    .line 155
    .line 156
    :cond_a
    :goto_4
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->isTransitionViable(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_e

    .line 160
    .line 161
    if-eqz v3, :cond_b

    .line 162
    .line 163
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 164
    and-int/2addr v0, v4

    .line 165
    .line 166
    if-eqz v0, :cond_b

    .line 167
    .line 168
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    .line 175
    return-void

    .line 176
    .line 177
    :cond_b
    if-eqz v1, :cond_c

    .line 178
    .line 179
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 180
    .line 181
    and-int/lit8 v0, v0, 0x10

    .line 182
    .line 183
    if-eqz v0, :cond_c

    .line 184
    .line 185
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    .line 192
    return-void

    .line 193
    .line 194
    :cond_c
    if-eqz v3, :cond_d

    .line 195
    .line 196
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 197
    .line 198
    and-int/lit16 v0, v0, 0x100

    .line 199
    .line 200
    if-eqz v0, :cond_d

    .line 201
    .line 202
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 206
    .line 207
    const/high16 v0, 0x3f800000    # 1.0f

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 211
    return-void

    .line 212
    .line 213
    :cond_d
    if-eqz v1, :cond_e

    .line 214
    .line 215
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 216
    .line 217
    and-int/lit16 v0, v0, 0x1000

    .line 218
    .line 219
    if-eqz v0, :cond_e

    .line 220
    .line 221
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 225
    const/4 v0, 0x0

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 229
    :cond_e
    :goto_5
    return-void
.end method

.method public removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionLayout"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void
.end method
