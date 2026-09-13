.class public Landroidx/constraintlayout/helper/widget/MotionEffect;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "SourceFile"


# static fields
.field public static final AUTO:I = -0x1

.field public static final EAST:I = 0x2

.field public static final NORTH:I = 0x0

.field public static final SOUTH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FadeMove"

.field private static final UNSET:I = -0x1

.field public static final WEST:I = 0x3


# instance fields
.field private fadeMove:I

.field private motionEffectAlpha:F

.field private motionEffectEnd:I

.field private motionEffectStart:I

.field private motionEffectStrictMove:Z

.field private motionEffectTranslationX:I

.field private motionEffectTranslationY:I

.field private viewTransitionId:I


# direct methods
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
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    const p1, 0x3dcccccd    # 0.1f

    .line 2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 p1, 0x31

    .line 3
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 p1, 0x32

    .line 4
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 9
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3dcccccd    # 0.1f

    .line 11
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 v0, 0x31

    .line 12
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 v0, 0x32

    .line 13
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 15
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3dcccccd    # 0.1f

    .line 21
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 p3, 0x31

    .line 22
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 p3, 0x32

    .line 23
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 25
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 p3, 0x1

    .line 26
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    const/4 p3, -0x1

    .line 27
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 28
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    .line 1
    .line 2
    if-eqz p2, :cond_b

    .line 3
    .line 4
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect:[I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    .line 16
    :goto_0
    if-ge v1, p2, :cond_8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 20
    move-result v2

    .line 21
    .line 22
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_start:I

    .line 23
    .line 24
    const/16 v4, 0x63

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 32
    move-result v2

    .line 33
    .line 34
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result v2

    .line 43
    .line 44
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_end:I

    .line 48
    .line 49
    if-ne v2, v3, :cond_1

    .line 50
    .line 51
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 55
    move-result v2

    .line 56
    .line 57
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 61
    move-result v2

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result v2

    .line 66
    .line 67
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationX:I

    .line 71
    .line 72
    if-ne v2, v3, :cond_2

    .line 73
    .line 74
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 78
    move-result v2

    .line 79
    .line 80
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationY:I

    .line 84
    .line 85
    if-ne v2, v3, :cond_3

    .line 86
    .line 87
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 91
    move-result v2

    .line 92
    .line 93
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_alpha:I

    .line 97
    .line 98
    if-ne v2, v3, :cond_4

    .line 99
    .line 100
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 104
    move-result v2

    .line 105
    .line 106
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_move:I

    .line 110
    .line 111
    if-ne v2, v3, :cond_5

    .line 112
    .line 113
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 117
    move-result v2

    .line 118
    .line 119
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_strict:I

    .line 123
    .line 124
    if-ne v2, v3, :cond_6

    .line 125
    .line 126
    iget-boolean v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 130
    move-result v2

    .line 131
    .line 132
    iput-boolean v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_6
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_viewTransition:I

    .line 136
    .line 137
    if-ne v2, v3, :cond_7

    .line 138
    .line 139
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 143
    move-result v2

    .line 144
    .line 145
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 146
    .line 147
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_8
    iget p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 152
    .line 153
    iget v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 154
    .line 155
    if-ne p2, v0, :cond_a

    .line 156
    .line 157
    if-lez p2, :cond_9

    .line 158
    .line 159
    add-int/lit8 p2, p2, -0x1

    .line 160
    .line 161
    iput p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 162
    goto :goto_2

    .line 163
    .line 164
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 165
    .line 166
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 167
    .line 168
    .line 169
    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    :cond_b
    return-void
.end method


# virtual methods
.method public isDecorator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "controllerMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionLayout;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v5

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v6

    .line 19
    .line 20
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    .line 24
    move-result-object v6

    .line 25
    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    .line 30
    return-void

    .line 31
    .line 32
    :cond_0
    new-instance v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 33
    .line 34
    .line 35
    invoke-direct {v7}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 36
    .line 37
    new-instance v8, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    .line 39
    .line 40
    invoke-direct {v8}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 41
    .line 42
    iget v9, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 43
    .line 44
    .line 45
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    move-result-object v9

    .line 47
    .line 48
    const-string v10, "alpha"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v10, v9}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    iget v9, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 54
    .line 55
    .line 56
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    move-result-object v9

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v10, v9}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    iget v9, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/motion/widget/Key;->setFramePosition(I)V

    .line 66
    .line 67
    iget v9, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/motion/widget/Key;->setFramePosition(I)V

    .line 71
    .line 72
    new-instance v9, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 73
    .line 74
    .line 75
    invoke-direct {v9}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 76
    .line 77
    iget v10, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/motion/widget/Key;->setFramePosition(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    .line 84
    .line 85
    const-string v10, "percentX"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v10, v3}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    const-string v11, "percentY"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v11, v3}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .line 95
    new-instance v12, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 96
    .line 97
    .line 98
    invoke-direct {v12}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 99
    .line 100
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v12, v13}, Landroidx/constraintlayout/motion/widget/Key;->setFramePosition(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12, v2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v10, v5}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v11, v5}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 115
    const/4 v10, 0x0

    .line 116
    .line 117
    if-lez v5, :cond_1

    .line 118
    .line 119
    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 120
    .line 121
    .line 122
    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 123
    .line 124
    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 125
    .line 126
    .line 127
    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 128
    .line 129
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 130
    .line 131
    .line 132
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v13

    .line 134
    .line 135
    const-string v14, "translationX"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v14, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/motion/widget/Key;->setFramePosition(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v14, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .line 148
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 149
    sub-int/2addr v13, v4

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/motion/widget/Key;->setFramePosition(I)V

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    move-object v5, v10

    .line 155
    move-object v11, v5

    .line 156
    .line 157
    :goto_0
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 158
    .line 159
    if-lez v13, :cond_2

    .line 160
    .line 161
    new-instance v10, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 162
    .line 163
    .line 164
    invoke-direct {v10}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 165
    .line 166
    new-instance v13, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 167
    .line 168
    .line 169
    invoke-direct {v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 170
    .line 171
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 172
    .line 173
    .line 174
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v14

    .line 176
    .line 177
    const-string v15, "translationY"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10, v15, v14}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    .line 182
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/motion/widget/Key;->setFramePosition(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v13, v15, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    .line 190
    iget v3, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 191
    sub-int/2addr v3, v4

    .line 192
    .line 193
    .line 194
    invoke-virtual {v13, v3}, Landroidx/constraintlayout/motion/widget/Key;->setFramePosition(I)V

    .line 195
    goto :goto_1

    .line 196
    :cond_2
    move-object v13, v10

    .line 197
    .line 198
    :goto_1
    iget v3, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 199
    .line 200
    move/from16 v16, v2

    .line 201
    const/4 v2, -0x1

    .line 202
    .line 203
    const/16 v17, 0x0

    .line 204
    .line 205
    if-ne v3, v2, :cond_b

    .line 206
    const/4 v3, 0x4

    .line 207
    .line 208
    new-array v2, v3, [I

    .line 209
    .line 210
    move/from16 v15, v16

    .line 211
    .line 212
    const/16 v18, 0x3

    .line 213
    .line 214
    const/16 v19, 0x2

    .line 215
    :goto_2
    array-length v14, v6

    .line 216
    .line 217
    if-ge v15, v14, :cond_8

    .line 218
    .line 219
    aget-object v14, v6, v15

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-result-object v14

    .line 224
    .line 225
    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 226
    .line 227
    if-nez v14, :cond_3

    .line 228
    goto :goto_3

    .line 229
    .line 230
    .line 231
    :cond_3
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    .line 232
    move-result v20

    .line 233
    .line 234
    .line 235
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    .line 236
    move-result v21

    .line 237
    .line 238
    sub-float v20, v20, v21

    .line 239
    .line 240
    .line 241
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    .line 242
    move-result v21

    .line 243
    .line 244
    .line 245
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    .line 246
    move-result v14

    .line 247
    .line 248
    sub-float v21, v21, v14

    .line 249
    .line 250
    cmpg-float v14, v21, v17

    .line 251
    .line 252
    if-gez v14, :cond_4

    .line 253
    .line 254
    aget v14, v2, v4

    .line 255
    add-int/2addr v14, v4

    .line 256
    .line 257
    aput v14, v2, v4

    .line 258
    .line 259
    :cond_4
    cmpl-float v14, v21, v17

    .line 260
    .line 261
    if-lez v14, :cond_5

    .line 262
    .line 263
    aget v14, v2, v16

    .line 264
    add-int/2addr v14, v4

    .line 265
    .line 266
    aput v14, v2, v16

    .line 267
    .line 268
    :cond_5
    cmpl-float v14, v20, v17

    .line 269
    .line 270
    if-lez v14, :cond_6

    .line 271
    .line 272
    aget v14, v2, v18

    .line 273
    add-int/2addr v14, v4

    .line 274
    .line 275
    aput v14, v2, v18

    .line 276
    .line 277
    :cond_6
    cmpg-float v14, v20, v17

    .line 278
    .line 279
    if-gez v14, :cond_7

    .line 280
    .line 281
    aget v14, v2, v19

    .line 282
    add-int/2addr v14, v4

    .line 283
    .line 284
    aput v14, v2, v19

    .line 285
    .line 286
    :cond_7
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 287
    goto :goto_2

    .line 288
    .line 289
    :cond_8
    aget v14, v2, v16

    .line 290
    move v15, v14

    .line 291
    .line 292
    move/from16 v14, v16

    .line 293
    .line 294
    :goto_4
    if-ge v4, v3, :cond_a

    .line 295
    .line 296
    aget v3, v2, v4

    .line 297
    .line 298
    if-ge v15, v3, :cond_9

    .line 299
    move v15, v3

    .line 300
    move v14, v4

    .line 301
    .line 302
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 303
    const/4 v3, 0x4

    .line 304
    goto :goto_4

    .line 305
    :cond_a
    move v3, v14

    .line 306
    goto :goto_5

    .line 307
    .line 308
    :cond_b
    const/16 v18, 0x3

    .line 309
    .line 310
    const/16 v19, 0x2

    .line 311
    .line 312
    :goto_5
    move/from16 v2, v16

    .line 313
    :goto_6
    array-length v4, v6

    .line 314
    .line 315
    if-ge v2, v4, :cond_17

    .line 316
    .line 317
    aget-object v4, v6, v2

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-result-object v4

    .line 322
    .line 323
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 324
    .line 325
    if-nez v4, :cond_d

    .line 326
    .line 327
    :cond_c
    :goto_7
    move-object/from16 v1, p1

    .line 328
    const/4 v15, -0x1

    .line 329
    .line 330
    goto/16 :goto_b

    .line 331
    .line 332
    .line 333
    :cond_d
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    .line 334
    move-result v14

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    .line 338
    move-result v15

    .line 339
    sub-float/2addr v14, v15

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    .line 343
    move-result v15

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    .line 347
    move-result v16

    .line 348
    .line 349
    sub-float v15, v15, v16

    .line 350
    .line 351
    if-nez v3, :cond_10

    .line 352
    .line 353
    cmpl-float v15, v15, v17

    .line 354
    .line 355
    if-lez v15, :cond_e

    .line 356
    .line 357
    iget-boolean v15, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 358
    .line 359
    if-eqz v15, :cond_f

    .line 360
    .line 361
    cmpl-float v14, v14, v17

    .line 362
    .line 363
    if-nez v14, :cond_e

    .line 364
    goto :goto_8

    .line 365
    .line 366
    :cond_e
    move/from16 v1, v18

    .line 367
    goto :goto_a

    .line 368
    .line 369
    :cond_f
    :goto_8
    move/from16 v1, v18

    .line 370
    goto :goto_9

    .line 371
    :cond_10
    const/4 v1, 0x1

    .line 372
    .line 373
    if-ne v3, v1, :cond_11

    .line 374
    .line 375
    cmpg-float v15, v15, v17

    .line 376
    .line 377
    if-gez v15, :cond_e

    .line 378
    .line 379
    iget-boolean v15, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 380
    .line 381
    if-eqz v15, :cond_f

    .line 382
    .line 383
    cmpl-float v14, v14, v17

    .line 384
    .line 385
    if-nez v14, :cond_e

    .line 386
    goto :goto_8

    .line 387
    .line 388
    :cond_11
    move/from16 v1, v19

    .line 389
    .line 390
    if-ne v3, v1, :cond_12

    .line 391
    .line 392
    cmpg-float v14, v14, v17

    .line 393
    .line 394
    if-gez v14, :cond_e

    .line 395
    .line 396
    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 397
    .line 398
    if-eqz v14, :cond_f

    .line 399
    .line 400
    cmpl-float v14, v15, v17

    .line 401
    .line 402
    if-nez v14, :cond_e

    .line 403
    goto :goto_8

    .line 404
    .line 405
    :cond_12
    move/from16 v1, v18

    .line 406
    .line 407
    if-ne v3, v1, :cond_13

    .line 408
    .line 409
    cmpl-float v14, v14, v17

    .line 410
    .line 411
    if-lez v14, :cond_13

    .line 412
    .line 413
    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 414
    .line 415
    if-eqz v14, :cond_c

    .line 416
    .line 417
    cmpl-float v14, v15, v17

    .line 418
    .line 419
    if-nez v14, :cond_13

    .line 420
    :goto_9
    goto :goto_7

    .line 421
    .line 422
    :cond_13
    :goto_a
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 423
    const/4 v15, -0x1

    .line 424
    .line 425
    if-ne v14, v15, :cond_16

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 438
    .line 439
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 440
    .line 441
    if-lez v14, :cond_14

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 448
    .line 449
    :cond_14
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 450
    .line 451
    if-lez v14, :cond_15

    .line 452
    .line 453
    .line 454
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v13}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 458
    .line 459
    :cond_15
    move-object/from16 v1, p1

    .line 460
    goto :goto_b

    .line 461
    .line 462
    :cond_16
    move-object/from16 v1, p1

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v14, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    .line 466
    .line 467
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 468
    .line 469
    move-object/from16 v1, p2

    .line 470
    .line 471
    const/16 v18, 0x3

    .line 472
    .line 473
    const/16 v19, 0x2

    .line 474
    .line 475
    goto/16 :goto_6

    .line 476
    :cond_17
    return-void
.end method
