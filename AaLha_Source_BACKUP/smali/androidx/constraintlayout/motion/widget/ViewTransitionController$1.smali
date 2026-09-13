.class Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/ViewTransitionController;->listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

.field final synthetic val$isSet:Z

.field final synthetic val$listen_for_id:I

.field final synthetic val$listen_for_value:I

.field final synthetic val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/ViewTransition;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewTransition",
            "val$listen_for_id",
            "val$isSet",
            "val$listen_for_value"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 5
    .line 6
    iput p3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_id:I

    .line 7
    .line 8
    iput-boolean p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$isSet:Z

    .line 9
    .line 10
    iput p5, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onNewValue(III)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "value",
            "oldValue"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValueCurrent()I

    .line 6
    move-result p3

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->setSharedValueCurrent(I)V

    .line 12
    .line 13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_id:I

    .line 14
    .line 15
    if-ne v0, p1, :cond_3

    .line 16
    .line 17
    if-eq p3, p2, :cond_3

    .line 18
    .line 19
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$isSet:Z

    .line 20
    const/4 p3, 0x1

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    .line 26
    .line 27
    if-ne p1, p2, :cond_3

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    move-result p1

    .line 38
    move p2, v0

    .line 39
    .line 40
    :goto_0
    if-ge p2, p1, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 68
    move-result v6

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 78
    move-result-object v7

    .line 79
    .line 80
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 81
    .line 82
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 86
    move-result-object v5

    .line 87
    .line 88
    new-array v8, p3, [Landroid/view/View;

    .line 89
    .line 90
    aput-object v1, v8, v0

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 94
    .line 95
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    .line 99
    .line 100
    if-eq p1, p2, :cond_3

    .line 101
    .line 102
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    move-result p1

    .line 111
    move p2, v0

    .line 112
    .line 113
    :goto_1
    if-ge p2, p1, :cond_3

    .line 114
    .line 115
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_2

    .line 132
    .line 133
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 141
    move-result v6

    .line 142
    .line 143
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 144
    .line 145
    .line 146
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 151
    move-result-object v7

    .line 152
    .line 153
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 154
    .line 155
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 159
    move-result-object v5

    .line 160
    .line 161
    new-array v8, p3, [Landroid/view/View;

    .line 162
    .line 163
    aput-object v1, v8, v0

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 167
    .line 168
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 169
    goto :goto_1

    .line 170
    :cond_3
    return-void
.end method
