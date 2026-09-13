.class Landroidx/constraintlayout/motion/widget/MotionLayout$Model;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Model"
.end annotation


# instance fields
.field mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

.field mEndId:I

.field mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field mStart:Landroidx/constraintlayout/widget/ConstraintSet;

.field mStartId:I

.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 13
    .line 14
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 25
    return-void
.end method

.method private computeStartEndSize(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 9
    .line 10
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ne v2, v1, :cond_7

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v4, p2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move v4, p1

    .line 33
    .line 34
    :goto_1
    if-eqz v3, :cond_3

    .line 35
    .line 36
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v3, p1

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    :goto_2
    move v3, p2

    .line 43
    .line 44
    .line 45
    :goto_3
    invoke-static {v1, v2, v0, v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1600(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 54
    .line 55
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    move v4, p1

    .line 59
    goto :goto_4

    .line 60
    :cond_4
    move v4, p2

    .line 61
    .line 62
    :goto_4
    if-nez v1, :cond_5

    .line 63
    move p1, p2

    .line 64
    .line 65
    .line 66
    :cond_5
    invoke-static {v2, v3, v0, v4, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1700(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 67
    :cond_6
    return-void

    .line 68
    .line 69
    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 70
    .line 71
    if-eqz v1, :cond_a

    .line 72
    .line 73
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 74
    .line 75
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 76
    .line 77
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 78
    .line 79
    if-nez v1, :cond_8

    .line 80
    move v4, p1

    .line 81
    goto :goto_5

    .line 82
    :cond_8
    move v4, p2

    .line 83
    .line 84
    :goto_5
    if-nez v1, :cond_9

    .line 85
    move v1, p2

    .line 86
    goto :goto_6

    .line 87
    :cond_9
    move v1, p1

    .line 88
    .line 89
    .line 90
    :goto_6
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1800(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 91
    .line 92
    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 93
    .line 94
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 95
    .line 96
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 97
    .line 98
    if-eqz v3, :cond_c

    .line 99
    .line 100
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 101
    .line 102
    if-nez v4, :cond_b

    .line 103
    goto :goto_7

    .line 104
    :cond_b
    move v4, p2

    .line 105
    goto :goto_8

    .line 106
    :cond_c
    :goto_7
    move v4, p1

    .line 107
    .line 108
    :goto_8
    if-eqz v3, :cond_d

    .line 109
    .line 110
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 111
    .line 112
    if-nez v3, :cond_e

    .line 113
    :cond_d
    move p1, p2

    .line 114
    .line 115
    .line 116
    :cond_e
    invoke-static {v1, v2, v0, v4, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1900(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 117
    return-void
.end method

.method private debugLayout(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogConditional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "c"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroid/view/View;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p1, " "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    :goto_0
    if-ge v1, v0, :cond_5

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "["

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "] "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    const-string v4, ""

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 88
    .line 89
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 90
    .line 91
    const-string v5, "_"

    .line 92
    .line 93
    if-eqz v4, :cond_0

    .line 94
    .line 95
    const-string v4, "T"

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    move-object v4, v5

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 115
    .line 116
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 117
    .line 118
    if-eqz v3, :cond_1

    .line 119
    .line 120
    const-string v3, "B"

    .line 121
    goto :goto_2

    .line 122
    :cond_1
    move-object v3, v5

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 140
    .line 141
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 142
    .line 143
    if-eqz v3, :cond_2

    .line 144
    .line 145
    const-string v3, "L"

    .line 146
    goto :goto_3

    .line 147
    :cond_2
    move-object v3, v5

    .line 148
    .line 149
    .line 150
    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 165
    .line 166
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 167
    .line 168
    if-eqz v3, :cond_3

    .line 169
    .line 170
    const-string v5, "R"

    .line 171
    .line 172
    .line 173
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    check-cast v3, Landroid/view/View;

    .line 180
    .line 181
    .line 182
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    instance-of v5, v3, Landroid/widget/TextView;

    .line 186
    .line 187
    if-eqz v5, :cond_4

    .line 188
    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v4, "("

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    check-cast v3, Landroid/widget/TextView;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 206
    move-result-object v3

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v3, ")"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    add-int/lit8 v1, v1, 0x1

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    :cond_5
    return-void
.end method

.method private debugLayoutParam(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogConditional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "params"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, " "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const-string v0, "SS"

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const-string v0, "__"

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 38
    .line 39
    const-string v2, "|__"

    .line 40
    .line 41
    if-eq p1, v1, :cond_1

    .line 42
    .line 43
    const-string p1, "|SE"

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object p1, v2

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 63
    .line 64
    if-eq p1, v1, :cond_2

    .line 65
    .line 66
    const-string p1, "|ES"

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move-object p1, v2

    .line 69
    .line 70
    .line 71
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 86
    .line 87
    if-eq p1, v1, :cond_3

    .line 88
    .line 89
    const-string p1, "|EE"

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    move-object p1, v2

    .line 92
    .line 93
    .line 94
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 109
    .line 110
    if-eq p1, v1, :cond_4

    .line 111
    .line 112
    const-string p1, "|LL"

    .line 113
    goto :goto_4

    .line 114
    :cond_4
    move-object p1, v2

    .line 115
    .line 116
    .line 117
    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 132
    .line 133
    if-eq p1, v1, :cond_5

    .line 134
    .line 135
    const-string p1, "|LR"

    .line 136
    goto :goto_5

    .line 137
    :cond_5
    move-object p1, v2

    .line 138
    .line 139
    .line 140
    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 155
    .line 156
    if-eq p1, v1, :cond_6

    .line 157
    .line 158
    const-string p1, "|RL"

    .line 159
    goto :goto_6

    .line 160
    :cond_6
    move-object p1, v2

    .line 161
    .line 162
    .line 163
    :goto_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 178
    .line 179
    if-eq p1, v1, :cond_7

    .line 180
    .line 181
    const-string p1, "|RR"

    .line 182
    goto :goto_7

    .line 183
    :cond_7
    move-object p1, v2

    .line 184
    .line 185
    .line 186
    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 201
    .line 202
    if-eq p1, v1, :cond_8

    .line 203
    .line 204
    const-string p1, "|TT"

    .line 205
    goto :goto_8

    .line 206
    :cond_8
    move-object p1, v2

    .line 207
    .line 208
    .line 209
    :goto_8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 224
    .line 225
    if-eq p1, v1, :cond_9

    .line 226
    .line 227
    const-string p1, "|TB"

    .line 228
    goto :goto_9

    .line 229
    :cond_9
    move-object p1, v2

    .line 230
    .line 231
    .line 232
    :goto_9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object p1

    .line 237
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 247
    .line 248
    if-eq p1, v1, :cond_a

    .line 249
    .line 250
    const-string p1, "|BT"

    .line 251
    goto :goto_a

    .line 252
    :cond_a
    move-object p1, v2

    .line 253
    .line 254
    .line 255
    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object p1

    .line 260
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 270
    .line 271
    if-eq p1, v1, :cond_b

    .line 272
    .line 273
    const-string v2, "|BB"

    .line 274
    .line 275
    .line 276
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    return-void
.end method

.method private debugWidget(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogConditional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "child"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, " "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    .line 16
    const-string v1, "B"

    .line 17
    .line 18
    const-string v2, "T"

    .line 19
    .line 20
    const-string v3, "__"

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 33
    .line 34
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 35
    .line 36
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 37
    .line 38
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 39
    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    move-object v4, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v4, v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v0, v3

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 70
    .line 71
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 84
    .line 85
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 86
    .line 87
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 88
    .line 89
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 90
    .line 91
    if-ne v4, v5, :cond_2

    .line 92
    move-object v1, v2

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    move-object p1, v3

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 119
    .line 120
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 121
    .line 122
    const-string v1, "R"

    .line 123
    .line 124
    const-string v2, "L"

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 137
    .line 138
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 139
    .line 140
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 141
    .line 142
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 143
    .line 144
    if-ne v4, v5, :cond_4

    .line 145
    move-object v4, v2

    .line 146
    goto :goto_3

    .line 147
    :cond_4
    move-object v4, v1

    .line 148
    .line 149
    .line 150
    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    goto :goto_4

    .line 156
    :cond_5
    move-object p1, v3

    .line 157
    .line 158
    .line 159
    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 174
    .line 175
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 176
    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 188
    .line 189
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 190
    .line 191
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 192
    .line 193
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 194
    .line 195
    if-ne v3, v4, :cond_6

    .line 196
    move-object v1, v2

    .line 197
    .line 198
    .line 199
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v3

    .line 204
    .line 205
    .line 206
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    return-void
.end method

.method private setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "cSet"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v5, Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 6
    .line 7
    new-instance v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 8
    const/4 v0, -0x2

    .line 9
    .line 10
    .line 11
    invoke-direct {v4, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    .line 41
    move-result v2

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 47
    move-result v3

    .line 48
    .line 49
    const/high16 v6, 0x40000000    # 2.0f

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    move-result v3

    .line 54
    .line 55
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 59
    move-result v7

    .line 60
    .line 61
    .line 62
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 63
    move-result v6

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1, v2, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v1

    .line 79
    const/4 v6, 0x1

    .line 80
    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setAnimated(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    check-cast v2, Landroid/view/View;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 100
    move-result v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v7

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v0

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    .line 121
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    move-object v3, v0

    .line 124
    .line 125
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 130
    move-object v2, v0

    .line 131
    .line 132
    check-cast v2, Landroid/view/View;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 136
    move-result v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToLayoutParams(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 143
    move-result v0

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    .line 147
    move-result v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 154
    move-result v0

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    .line 158
    move-result v0

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 162
    .line 163
    instance-of v0, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 164
    .line 165
    if-eqz v0, :cond_2

    .line 166
    move-object v0, v2

    .line 167
    .line 168
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v0, v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToHelper(Landroidx/constraintlayout/widget/ConstraintHelper;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 172
    .line 173
    instance-of v0, v2, Landroidx/constraintlayout/widget/Barrier;

    .line 174
    .line 175
    if-eqz v0, :cond_2

    .line 176
    move-object v0, v2

    .line 177
    .line 178
    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 182
    .line 183
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 187
    move-result v0

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 191
    .line 192
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 193
    const/4 v1, 0x0

    .line 194
    .line 195
    .line 196
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1100(Landroidx/constraintlayout/motion/widget/MotionLayout;ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 200
    move-result v0

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getVisibilityMode(I)I

    .line 204
    move-result v0

    .line 205
    .line 206
    if-ne v0, v6, :cond_3

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 210
    move-result v0

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    .line 214
    goto :goto_1

    .line 215
    .line 216
    .line 217
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 218
    move-result v0

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getVisibility(I)I

    .line 222
    move-result v0

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    .line 226
    goto :goto_1

    .line 227
    .line 228
    .line 229
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 230
    move-result-object p2

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object p2

    .line 235
    .line 236
    .line 237
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result v0

    .line 239
    .line 240
    if-eqz v0, :cond_6

    .line 241
    .line 242
    .line 243
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 247
    .line 248
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 249
    .line 250
    if-eqz v1, :cond_5

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 254
    move-result-object v1

    .line 255
    .line 256
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 257
    .line 258
    check-cast v0, Landroidx/constraintlayout/core/widgets/Helper;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, p1, v0, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/Helper;Landroid/util/SparseArray;)V

    .line 262
    .line 263
    check-cast v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->captureWidgets()V

    .line 267
    goto :goto_2

    .line 268
    :cond_6
    return-void
.end method


# virtual methods
.method public build()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 14
    .line 15
    new-instance v1, Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    new-array v2, v0, [I

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    .line 24
    :goto_0
    if-ge v4, v0, :cond_0

    .line 25
    .line 26
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    new-instance v6, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 33
    .line 34
    .line 35
    invoke-direct {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 39
    move-result v7

    .line 40
    .line 41
    aput v7, v2, v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    .line 46
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 47
    .line 48
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v4, v3

    .line 56
    .line 57
    :goto_1
    if-ge v4, v0, :cond_7

    .line 58
    .line 59
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 66
    .line 67
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 72
    move-object v6, v5

    .line 73
    .line 74
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 75
    .line 76
    if-nez v6, :cond_1

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_1
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 81
    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v5, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 88
    move-result-object v5

    .line 89
    .line 90
    if-eqz v5, :cond_2

    .line 91
    .line 92
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 93
    .line 94
    .line 95
    invoke-static {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    .line 96
    move-result-object v5

    .line 97
    .line 98
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 99
    .line 100
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 104
    move-result v9

    .line 105
    .line 106
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 110
    move-result v10

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v5, v7, v9, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 117
    .line 118
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 119
    .line 120
    if-eqz v5, :cond_4

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    goto :goto_2

    .line 131
    .line 132
    :cond_3
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 133
    .line 134
    .line 135
    invoke-static {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$300(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 136
    move-result v5

    .line 137
    .line 138
    if-eqz v5, :cond_4

    .line 139
    .line 140
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 141
    .line 142
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v5

    .line 147
    move-object v7, v5

    .line 148
    .line 149
    check-cast v7, Landroidx/constraintlayout/motion/utils/ViewState;

    .line 150
    .line 151
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 152
    .line 153
    iget v9, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    .line 154
    .line 155
    .line 156
    invoke-static {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    .line 157
    move-result v10

    .line 158
    .line 159
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 160
    .line 161
    .line 162
    invoke-static {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    .line 163
    move-result v11

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartState(Landroidx/constraintlayout/motion/utils/ViewState;Landroid/view/View;III)V

    .line 167
    .line 168
    :cond_4
    :goto_2
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 169
    .line 170
    if-eqz v5, :cond_6

    .line 171
    .line 172
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v5, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 176
    move-result-object v5

    .line 177
    .line 178
    if-eqz v5, :cond_5

    .line 179
    .line 180
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 181
    .line 182
    .line 183
    invoke-static {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    .line 184
    move-result-object v5

    .line 185
    .line 186
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 187
    .line 188
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 192
    move-result v8

    .line 193
    .line 194
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 198
    move-result v9

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v5, v7, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->setEndState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 202
    goto :goto_3

    .line 203
    .line 204
    :cond_5
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 205
    .line 206
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 207
    .line 208
    if-eqz v5, :cond_6

    .line 209
    .line 210
    .line 211
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_7
    :goto_4
    if-ge v3, v0, :cond_9

    .line 224
    .line 225
    aget v4, v2, v3

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v4

    .line 230
    .line 231
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    .line 235
    move-result v5

    .line 236
    const/4 v6, -0x1

    .line 237
    .line 238
    if-eq v5, v6, :cond_8

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 242
    move-result-object v5

    .line 243
    .line 244
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 248
    .line 249
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 250
    goto :goto_4

    .line 251
    :cond_9
    return-void
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dest"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_5

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 39
    .line 40
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    new-instance v3, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 45
    .line 46
    .line 47
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_0
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    new-instance v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 55
    .line 56
    .line 57
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Flow;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    new-instance v3, Landroidx/constraintlayout/core/widgets/Flow;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Flow;-><init>()V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_2
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Placeholder;

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    new-instance v3, Landroidx/constraintlayout/core/widgets/Placeholder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Placeholder;-><init>()V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_3
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Helper;

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    new-instance v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_4
    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 91
    .line 92
    .line 93
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result p2

    .line 109
    .line 110
    if-eqz p2, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    check-cast p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    return-void
.end method

.method public getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "view"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v1, v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    if-ne v3, p2, :cond_1

    .line 31
    return-object v2

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseLayout",
            "start",
            "end"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 3
    .line 4
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 5
    .line 6
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 12
    .line 13
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$400(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$500(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->removeAllChildren()V

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->removeAllChildren()V

    .line 59
    .line 60
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$600(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$700(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 81
    .line 82
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 83
    .line 84
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 85
    float-to-double v0, p1

    .line 86
    .line 87
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 88
    .line 89
    cmpl-double p1, v0, v2

    .line 90
    .line 91
    if-lez p1, :cond_1

    .line 92
    .line 93
    if-eqz p2, :cond_0

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 99
    .line 100
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 110
    .line 111
    if-eqz p2, :cond_2

    .line 112
    .line 113
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 117
    .line 118
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 119
    .line 120
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 121
    .line 122
    .line 123
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$800(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 124
    move-result p2

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 128
    .line 129
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 133
    .line 134
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 135
    .line 136
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 137
    .line 138
    .line 139
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$900(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 140
    move-result p2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 144
    .line 145
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 149
    .line 150
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    const/4 p3, -0x2

    .line 160
    .line 161
    if-ne p2, p3, :cond_3

    .line 162
    .line 163
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 164
    .line 165
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 169
    .line 170
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 174
    .line 175
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    .line 177
    if-ne p1, p3, :cond_4

    .line 178
    .line 179
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 180
    .line 181
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 185
    .line 186
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 190
    :cond_4
    return-void
.end method

.method public isNotConfiguredWith(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startId",
            "endId"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 7
    .line 8
    if-eq p2, p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public measure(II)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 11
    .line 12
    iput v0, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 13
    .line 14
    iput v1, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    .line 18
    .line 19
    .line 20
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->computeStartEndSize(II)V

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    instance-of v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const/high16 v2, 0x40000000    # 2.0f

    .line 35
    .line 36
    if-ne v0, v2, :cond_0

    .line 37
    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    goto :goto_2

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->computeStartEndSize(II)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 50
    move-result v1

    .line 51
    .line 52
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 60
    move-result v1

    .line 61
    .line 62
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 70
    move-result v1

    .line 71
    .line 72
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 80
    move-result v1

    .line 81
    .line 82
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 85
    .line 86
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 87
    .line 88
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 89
    .line 90
    if-ne v1, v2, :cond_2

    .line 91
    .line 92
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 93
    .line 94
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 95
    .line 96
    if-eq v1, v2, :cond_1

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    move v1, v4

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    :goto_0
    move v1, v3

    .line 101
    .line 102
    :goto_1
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 103
    .line 104
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 105
    .line 106
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 107
    .line 108
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 109
    .line 110
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 111
    .line 112
    const/high16 v6, -0x80000000

    .line 113
    .line 114
    if-eq v5, v6, :cond_4

    .line 115
    .line 116
    if-nez v5, :cond_3

    .line 117
    goto :goto_4

    .line 118
    :cond_3
    :goto_3
    move v10, v1

    .line 119
    goto :goto_5

    .line 120
    :cond_4
    :goto_4
    int-to-float v5, v1

    .line 121
    .line 122
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 123
    .line 124
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 125
    sub-int/2addr v8, v1

    .line 126
    int-to-float v1, v8

    .line 127
    mul-float/2addr v7, v1

    .line 128
    add-float/2addr v5, v7

    .line 129
    float-to-int v1, v5

    .line 130
    goto :goto_3

    .line 131
    .line 132
    :goto_5
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 133
    .line 134
    if-eq v1, v6, :cond_6

    .line 135
    .line 136
    if-nez v1, :cond_5

    .line 137
    goto :goto_7

    .line 138
    :cond_5
    :goto_6
    move v11, v2

    .line 139
    goto :goto_8

    .line 140
    :cond_6
    :goto_7
    int-to-float v1, v2

    .line 141
    .line 142
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 143
    .line 144
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 145
    sub-int/2addr v0, v2

    .line 146
    int-to-float v0, v0

    .line 147
    mul-float/2addr v5, v0

    .line 148
    add-float/2addr v1, v5

    .line 149
    float-to-int v2, v1

    .line 150
    goto :goto_6

    .line 151
    .line 152
    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    .line 156
    move-result v0

    .line 157
    .line 158
    if-nez v0, :cond_8

    .line 159
    .line 160
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    .line 164
    move-result v0

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    goto :goto_9

    .line 168
    :cond_7
    move v12, v4

    .line 169
    goto :goto_a

    .line 170
    :cond_8
    :goto_9
    move v12, v3

    .line 171
    .line 172
    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    .line 176
    move-result v0

    .line 177
    .line 178
    if-nez v0, :cond_a

    .line 179
    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    .line 184
    move-result v0

    .line 185
    .line 186
    if-eqz v0, :cond_9

    .line 187
    goto :goto_b

    .line 188
    :cond_9
    move v13, v4

    .line 189
    goto :goto_c

    .line 190
    :cond_a
    :goto_b
    move v13, v3

    .line 191
    .line 192
    :goto_c
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 193
    move v8, p1

    .line 194
    .line 195
    move/from16 v9, p2

    .line 196
    .line 197
    .line 198
    invoke-static/range {v7 .. v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1500(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V

    .line 199
    return-void
.end method

.method public reEvaluateState()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1300(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->measure(II)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1400(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 21
    return-void
.end method

.method public setMeasuredId(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startId",
            "endId"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 3
    .line 4
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 5
    return-void
.end method
