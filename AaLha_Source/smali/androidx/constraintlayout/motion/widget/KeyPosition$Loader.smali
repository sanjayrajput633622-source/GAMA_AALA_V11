.class Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# static fields
.field private static final CURVE_FIT:I = 0x4

.field private static final DRAW_PATH:I = 0x5

.field private static final FRAME_POSITION:I = 0x2

.field private static final PATH_MOTION_ARC:I = 0xa

.field private static final PERCENT_HEIGHT:I = 0xc

.field private static final PERCENT_WIDTH:I = 0xb

.field private static final PERCENT_X:I = 0x6

.field private static final PERCENT_Y:I = 0x7

.field private static final SIZE_PERCENT:I = 0x8

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TYPE:I = 0x9

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_motionTarget:I

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    .line 15
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_framePosition:I

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    .line 23
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_transitionEasing:I

    .line 26
    const/4 v2, 0x3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    .line 31
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_curveFit:I

    .line 34
    const/4 v2, 0x4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    .line 39
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 40
    .line 41
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_drawPath:I

    .line 42
    const/4 v2, 0x5

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    .line 47
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentX:I

    .line 50
    const/4 v2, 0x6

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    .line 55
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 56
    .line 57
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentY:I

    .line 58
    const/4 v2, 0x7

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    .line 63
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 64
    .line 65
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_keyPositionType:I

    .line 66
    .line 67
    const/16 v2, 0x9

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 71
    .line 72
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_sizePercent:I

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    .line 81
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 82
    .line 83
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentWidth:I

    .line 84
    .line 85
    const/16 v2, 0xb

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 89
    .line 90
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 91
    .line 92
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentHeight:I

    .line 93
    .line 94
    const/16 v2, 0xc

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    .line 99
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 100
    .line 101
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_pathMotionArc:I

    .line 102
    .line 103
    const/16 v2, 0xa

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 107
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    .line 4
    return-void
.end method

.method private static read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "a"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v2, v0, :cond_4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 12
    move-result v3

    .line 13
    .line 14
    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x3

    .line 20
    .line 21
    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    .line 27
    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :pswitch_0
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 38
    move-result v3

    .line 39
    .line 40
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :pswitch_1
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 48
    move-result v3

    .line 49
    .line 50
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :pswitch_2
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 58
    move-result v3

    .line 59
    .line 60
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :pswitch_3
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 68
    move-result v3

    .line 69
    .line 70
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :pswitch_4
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 78
    move-result v3

    .line 79
    .line 80
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 81
    .line 82
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :pswitch_5
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 90
    move-result v3

    .line 91
    .line 92
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :pswitch_6
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 100
    move-result v3

    .line 101
    .line 102
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :pswitch_7
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 109
    move-result v3

    .line 110
    .line 111
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :pswitch_8
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->mCurveFit:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 118
    move-result v3

    .line 119
    .line 120
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->mCurveFit:I

    .line 121
    goto :goto_1

    .line 122
    .line 123
    .line 124
    :pswitch_9
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 128
    .line 129
    if-ne v4, v5, :cond_0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_0
    sget-object v4, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 142
    move-result v3

    .line 143
    .line 144
    aget-object v3, v4, v3

    .line 145
    .line 146
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :pswitch_a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 153
    move-result v3

    .line 154
    .line 155
    iput v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 156
    goto :goto_1

    .line 157
    .line 158
    :pswitch_b
    sget-boolean v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 159
    .line 160
    if-eqz v4, :cond_1

    .line 161
    .line 162
    iget v4, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 166
    move-result v4

    .line 167
    .line 168
    iput v4, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 169
    const/4 v5, -0x1

    .line 170
    .line 171
    if-ne v4, v5, :cond_3

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 178
    goto :goto_1

    .line 179
    .line 180
    .line 181
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 182
    move-result-object v4

    .line 183
    .line 184
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 185
    .line 186
    if-ne v4, v5, :cond_2

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 193
    goto :goto_1

    .line 194
    .line 195
    :cond_2
    iget v4, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 199
    move-result v3

    .line 200
    .line 201
    iput v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 202
    .line 203
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_4
    iget p0, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 208
    return-void

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
