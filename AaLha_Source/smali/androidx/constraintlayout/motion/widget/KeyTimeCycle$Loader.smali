.class Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x1

.field private static final ANDROID_ELEVATION:I = 0x2

.field private static final ANDROID_ROTATION:I = 0x4

.field private static final ANDROID_ROTATION_X:I = 0x5

.field private static final ANDROID_ROTATION_Y:I = 0x6

.field private static final ANDROID_SCALE_X:I = 0x7

.field private static final ANDROID_SCALE_Y:I = 0xe

.field private static final ANDROID_TRANSLATION_X:I = 0xf

.field private static final ANDROID_TRANSLATION_Y:I = 0x10

.field private static final ANDROID_TRANSLATION_Z:I = 0x11

.field private static final CURVE_FIT:I = 0xd

.field private static final FRAME_POSITION:I = 0xc

.field private static final PROGRESS:I = 0x12

.field private static final TARGET_ID:I = 0xa

.field private static final TRANSITION_EASING:I = 0x9

.field private static final TRANSITION_PATH_ROTATE:I = 0x8

.field private static final WAVE_OFFSET:I = 0x15

.field private static final WAVE_PERIOD:I = 0x14

.field private static final WAVE_SHAPE:I = 0x13

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
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_alpha:I

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    .line 15
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_elevation:I

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    .line 23
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_rotation:I

    .line 26
    const/4 v2, 0x4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    .line 31
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_rotationX:I

    .line 34
    const/4 v2, 0x5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    .line 39
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 40
    .line 41
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_rotationY:I

    .line 42
    const/4 v2, 0x6

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    .line 47
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_scaleX:I

    .line 50
    const/4 v2, 0x7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    .line 55
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 56
    .line 57
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_transitionPathRotate:I

    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 63
    .line 64
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 65
    .line 66
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_transitionEasing:I

    .line 67
    .line 68
    const/16 v2, 0x9

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 72
    .line 73
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 74
    .line 75
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_motionTarget:I

    .line 76
    .line 77
    const/16 v2, 0xa

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    .line 82
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 83
    .line 84
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_framePosition:I

    .line 85
    .line 86
    const/16 v2, 0xc

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 90
    .line 91
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 92
    .line 93
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_curveFit:I

    .line 94
    .line 95
    const/16 v2, 0xd

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 99
    .line 100
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 101
    .line 102
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_scaleY:I

    .line 103
    .line 104
    const/16 v2, 0xe

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    .line 109
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 110
    .line 111
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_translationX:I

    .line 112
    .line 113
    const/16 v2, 0xf

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 117
    .line 118
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 119
    .line 120
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_translationY:I

    .line 121
    .line 122
    const/16 v2, 0x10

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 126
    .line 127
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 128
    .line 129
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_translationZ:I

    .line 130
    .line 131
    const/16 v2, 0x11

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 135
    .line 136
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 137
    .line 138
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_motionProgress:I

    .line 139
    .line 140
    const/16 v2, 0x12

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 144
    .line 145
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 146
    .line 147
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_wavePeriod:I

    .line 148
    .line 149
    const/16 v2, 0x14

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 153
    .line 154
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 155
    .line 156
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_waveOffset:I

    .line 157
    .line 158
    const/16 v2, 0x15

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 162
    .line 163
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 164
    .line 165
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_waveShape:I

    .line 166
    .line 167
    const/16 v2, 0x13

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 171
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

.method public static read(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Landroid/content/res/TypedArray;)V
    .locals 5
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
    .line 7
    :goto_0
    if-ge v1, v0, :cond_5

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 11
    move-result v2

    .line 12
    .line 13
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x3

    .line 19
    .line 20
    .line 21
    packed-switch v3, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 25
    .line 26
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    .line 34
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 38
    const/4 v4, 0x5

    .line 39
    .line 40
    if-ne v3, v4, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 61
    move-result v2

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    .line 69
    :pswitch_2
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 70
    move-result v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 74
    move-result v2

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    .line 82
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 86
    .line 87
    if-ne v3, v4, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    const/4 v2, 0x7

    .line 96
    .line 97
    .line 98
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I

    .line 104
    move-result v3

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    move-result v2

    .line 109
    .line 110
    .line 111
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    .line 116
    :pswitch_4
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 117
    move-result v3

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 121
    move-result v2

    .line 122
    .line 123
    .line 124
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    .line 129
    :pswitch_5
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 130
    move-result v3

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 134
    move-result v2

    .line 135
    .line 136
    .line 137
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    .line 142
    :pswitch_6
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 143
    move-result v3

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 147
    move-result v2

    .line 148
    .line 149
    .line 150
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    .line 155
    :pswitch_7
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1400(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 156
    move-result v3

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 160
    move-result v2

    .line 161
    .line 162
    .line 163
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    .line 168
    :pswitch_8
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 169
    move-result v3

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 173
    move-result v2

    .line 174
    .line 175
    .line 176
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    .line 181
    :pswitch_9
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I

    .line 182
    move-result v3

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 186
    move-result v2

    .line 187
    .line 188
    .line 189
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I

    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :pswitch_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 197
    move-result v2

    .line 198
    .line 199
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :pswitch_b
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 204
    .line 205
    if-eqz v3, :cond_2

    .line 206
    .line 207
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 211
    move-result v3

    .line 212
    .line 213
    iput v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 214
    const/4 v4, -0x1

    .line 215
    .line 216
    if-ne v3, v4, :cond_4

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    .line 227
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 228
    move-result-object v3

    .line 229
    .line 230
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 231
    .line 232
    if-ne v3, v4, :cond_3

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 236
    move-result-object v2

    .line 237
    .line 238
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 239
    goto :goto_1

    .line 240
    .line 241
    :cond_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 245
    move-result v2

    .line 246
    .line 247
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 248
    goto :goto_1

    .line 249
    .line 250
    .line 251
    :pswitch_c
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 252
    move-result-object v2

    .line 253
    .line 254
    .line 255
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    goto :goto_1

    .line 257
    .line 258
    .line 259
    :pswitch_d
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 260
    move-result v3

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 264
    move-result v2

    .line 265
    .line 266
    .line 267
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 268
    goto :goto_1

    .line 269
    .line 270
    .line 271
    :pswitch_e
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$800(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 272
    move-result v3

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 276
    move-result v2

    .line 277
    .line 278
    .line 279
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$802(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 280
    goto :goto_1

    .line 281
    .line 282
    .line 283
    :pswitch_f
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 284
    move-result v3

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 288
    move-result v2

    .line 289
    .line 290
    .line 291
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 292
    goto :goto_1

    .line 293
    .line 294
    .line 295
    :pswitch_10
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$900(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 296
    move-result v3

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 300
    move-result v2

    .line 301
    .line 302
    .line 303
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$902(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 304
    goto :goto_1

    .line 305
    .line 306
    .line 307
    :pswitch_11
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 308
    move-result v3

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 312
    move-result v2

    .line 313
    .line 314
    .line 315
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 316
    goto :goto_1

    .line 317
    .line 318
    .line 319
    :pswitch_12
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$100(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 320
    move-result v3

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 324
    move-result v2

    .line 325
    .line 326
    .line 327
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 328
    goto :goto_1

    .line 329
    .line 330
    .line 331
    :pswitch_13
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    .line 332
    move-result v3

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 336
    move-result v2

    .line 337
    .line 338
    .line 339
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    .line 340
    .line 341
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    :cond_5
    return-void

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method
